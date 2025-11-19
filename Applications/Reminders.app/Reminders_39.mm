void sub_10043F68C(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v3 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 32))(v9, v13, v6);
    TTRAccountsListsViewModel.SmartList.type.getter();
    sub_10001F128(&qword_10077B010, &type metadata accessor for TTRListType.PredefinedSmartListType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v20 != v18 || v21 != v19)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    (*(v17 + 8))(v5, v3);
    (*(v7 + 8))(v9, v6);
  }

  else if (v14 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
  {
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003E30(v15, qword_100782E90);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown list type", 17, 2);
    __break(1u);
  }
}

void sub_10043FA6C()
{
  static TTRLocalizableStrings.AccountsList.cantPinListAlertTitle.getter();
  static TTRLocalizableStrings.AccountsList.cantPinListAlertMessage.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  static TTRLocalizableStrings.Common.alertOKButton.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() actionWithTitle:v3 style:1 handler:0];

  [v7 addAction:v4];
  sub_10000C36C((v0 + 112), *(v0 + 136));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong presentViewController:v7 animated:1 completion:0];
  }
}

void sub_10043FBD4(uint64_t a1)
{
  v2 = type metadata accessor for TTRPermissionConfiguration.TTRUpgradeType();
  v73 = *(v2 - 8);
  v74 = v2;
  v3 = __chkstk_darwin(v2);
  v68 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v71 = &v66 - v6;
  v7 = __chkstk_darwin(v5);
  v72 = &v66 - v8;
  __chkstk_darwin(v7);
  v70 = &v66 - v9;
  v10 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v10 - 8);
  v76 = &v66 - v11;
  v12 = sub_100058000(&qword_100783140);
  v13 = __chkstk_darwin(v12 - 8);
  v69 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v66 - v15;
  v17 = type metadata accessor for REMAccountsListDataView.Model();
  v77 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v67 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v75 = &v66 - v20;
  v21 = type metadata accessor for TTRPrivacyType();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v66 - v26;
  v28 = type metadata accessor for TTRPermissionConfiguration.Action();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v31, a1, v28);
  v32 = (*(v29 + 88))(v31, v28);
  if (v32 == enum case for TTRPermissionConfiguration.Action.dismiss(_:))
  {
    (*(v29 + 96))(v31, v28);
    (*(v22 + 32))(v27, v31, v21);
    v33 = v78;
    v81 = *(v78 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_privacyChecker);
    type metadata accessor for TTRIPrivacyChecker();
    TTRPrivacyChecker.dismissInlineRequest(for:)();
    v34 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel;
    swift_beginAccess();
    sub_10000794C(v33 + v34, v16, &qword_100783140);
    v35 = v77;
    if ((*(v77 + 48))(v16, 1, v17) == 1)
    {
      (*(v22 + 8))(v27, v21);
      v36 = v16;
LABEL_4:
      sub_1000079B4(v36, &qword_100783140);
      return;
    }

    v44 = v75;
    (*(v35 + 32))(v75, v16, v17);
    sub_10001AFE0(v44, 0, 2, 1);
    (*(v35 + 8))(v44, v17);
    (*(v22 + 8))(v27, v21);
    return;
  }

  v37 = v21;
  v39 = v77;
  v38 = v78;
  if (v32 == enum case for TTRPermissionConfiguration.Action.requestAccess(_:))
  {
    v40 = type metadata accessor for TaskPriority();
    v41 = v76;
    (*(*(v40 - 8) + 56))(v76, 1, 1, v40);
    v42 = *(v38 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_privacyChecker);
    v43 = swift_allocObject();
    v43[2] = 0;
    v43[3] = 0;
    v43[4] = v42;

    sub_10009E31C(0, 0, v41, &unk_10063F210, v43);

    (*(v29 + 8))(v31, v28);
    return;
  }

  if (v32 == enum case for TTRPermissionConfiguration.Action.openSettings(_:))
  {
    (*(v29 + 96))(v31, v28);
    (*(v22 + 32))(v25, v31, v37);
    TTRIPrivacyChecker.openSettingsApp(for:)();
    (*(v22 + 8))(v25, v37);
    return;
  }

  if (v32 == enum case for TTRPermissionConfiguration.Action.requestUpgrade(_:))
  {
    (*(v29 + 96))(v31, v28);
    v45 = *&v31[*(sub_100058000(&qword_100783190) + 48)];
    v47 = v73;
    v46 = v74;
    v48 = v70;
    (*(v73 + 32))(v70, v31, v74);
    (*(v47 + 104))(v72, enum case for TTRPermissionConfiguration.TTRUpgradeType.iCloudSync(_:), v46);
    sub_10001F128(&qword_100783198, &type metadata accessor for TTRPermissionConfiguration.TTRUpgradeType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v81 == v79 && v82 == v80)
    {
      v49 = 1;
    }

    else
    {
      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v58 = *(v47 + 8);
    v58(v72, v46);

    sub_100426100(v45, v49 & 1);

    v58(v48, v46);
    return;
  }

  v50 = v73;
  if (v32 != enum case for TTRPermissionConfiguration.Action.dismissUpgradeRequest(_:))
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_100003E30(v62, qword_100782E90);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    v63 = "Unknown action";
    v64 = 14;
    goto LABEL_31;
  }

  (*(v29 + 96))(v31, v28);
  v51 = v71;
  v52 = v74;
  (*(v50 + 32))(v71, v31, v74);
  v53 = v68;
  (*(v50 + 16))(v68, v51, v52);
  v54 = (*(v50 + 88))(v53, v52);
  if (v54 != enum case for TTRPermissionConfiguration.TTRUpgradeType.calDAV(_:))
  {
    if (v54 == enum case for TTRPermissionConfiguration.TTRUpgradeType.iCloudSync(_:))
    {
      v56 = v38;
      v57 = v39;
      type metadata accessor for TTRUserDefaults();
      v55 = static TTRUserDefaults.appUserDefaults.getter();
      TTRUserDefaults.iCloudSyncTipDismissed.setter();
      goto LABEL_22;
    }

    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_100003E30(v65, qword_100782E90);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    v63 = "Unknown upgrade type";
    v64 = 20;
LABEL_31:
    sub_1003F9818(v63, v64, 2);
    __break(1u);
    return;
  }

  type metadata accessor for TTRUserDefaults();
  v55 = static TTRUserDefaults.appUserDefaults.getter();
  TTRUserDefaults.migrationTipDismissed.setter();
  v56 = v38;
  v57 = v39;
LABEL_22:

  v59 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel;
  swift_beginAccess();
  v60 = v69;
  sub_10000794C(v56 + v59, v69, &qword_100783140);
  if ((*(v57 + 48))(v60, 1, v17) == 1)
  {
    (*(v50 + 8))(v51, v52);
    v36 = v60;
    goto LABEL_4;
  }

  v61 = v67;
  (*(v57 + 32))(v67, v60, v17);
  sub_10001AFE0(v61, 0, 2, 1);
  (*(v57 + 8))(v61, v17);
  (*(v50 + 8))(v51, v52);
}

uint64_t sub_100440708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  *(v4 + 16) = a4;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1004407D8;

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v5, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_1004407D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1004408CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a1;
  v6 = type metadata accessor for TTRIPopoverAnchor();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  TTRWithUnsafeMainActor<A>(operation:)();
  result = 0;
  if ((aBlock & 1) == 0)
  {
    sub_100058000(&qword_10076B780);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_10062D410;
    v39 = static TTRLocalizableStrings.Hashtags.renameTagMenuItem.getter();
    v45 = v3;
    v10 = sub_100003540(0, &qword_10076FCB0);
    v43 = a3;
    v46 = v10;
    v35 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = *(v7 + 16);
    v42 = v7 + 16;
    v44 = v12;
    v12(&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
    v41 = *(v7 + 80);
    v13 = (v41 + 40) & ~v41;
    v38 = v13;
    v14 = swift_allocObject();
    v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = v7;
    v16 = v14;
    v17 = v48;
    *(v14 + 2) = v11;
    *(v14 + 3) = v17;
    *(v14 + 4) = a2;
    v40 = *(v15 + 32);
    v40(&v14[v13], &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v18 = objc_allocWithZone(UIAccessibilityCustomAction);
    v36 = a2;
    v19 = v18;

    v20 = String._bridgeToObjectiveC()();

    v53 = sub_100453E90;
    v54 = v16;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v39 = &v51;
    v51 = sub_10044E9F0;
    v52 = &unk_100728298;
    v21 = _Block_copy(&aBlock);
    v22 = v35;
    v23 = [v19 initWithName:v20 image:v35 actionHandler:v21];

    _Block_release(v21);

    *(v47 + 32) = v23;
    static TTRLocalizableStrings.Hashtags.deleteTagMenuItem(tagCount:)();
    v24 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v37;
    v27 = v6;
    v44(v37, v43, v6);
    v28 = v38;
    v29 = swift_allocObject();
    v30 = v48;
    *(v29 + 2) = v25;
    *(v29 + 3) = v30;
    *(v29 + 4) = v36;
    v40(&v29[v28], v26, v27);
    v31 = objc_allocWithZone(UIAccessibilityCustomAction);

    v32 = String._bridgeToObjectiveC()();

    v53 = sub_100453EA8;
    v54 = v29;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_10044E9F0;
    v52 = &unk_1007282E8;
    v33 = _Block_copy(&aBlock);
    v34 = [v31 initWithName:v32 image:v24 actionHandler:v33];

    _Block_release(v33);

    result = v47;
    *(v47 + 40) = v34;
  }

  return result;
}

BOOL sub_100440DAC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v41 = a3;
  v6 = type metadata accessor for TTRIPopoverAnchor();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v42 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v9 - 8);
  v43 = v37 - v10;
  v11 = type metadata accessor for TTRHashtagAssociationOperation();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v40 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = (v37 - v15);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v39 = a5;
    v18 = v11;
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003E30(v19, qword_100782E90);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44();

    v20 = sub_10000C36C((Strong + 112), *(Strong + 136));
    v21 = v44;
    *v16 = v41;
    v16[1] = v21;
    (*(v12 + 104))(v16, enum case for TTRHashtagAssociationOperation.renameHashtagLabel(_:), v11);
    v22 = *v20;
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v41 = v23;
      v24 = type metadata accessor for TaskPriority();
      (*(*(v24 - 8) + 56))(v43, 1, 1, v24);
      v25 = v40;
      (*(v12 + 16))(v40, v16, v18);
      v26 = *(v7 + 16);
      v37[1] = v22;
      v26(v42, v39, v6);
      v27 = *(v12 + 80);
      v38 = v18;
      v39 = v6;
      v28 = (v27 + 40) & ~v27;
      v29 = (v13 + *(v7 + 80) + v28) & ~*(v7 + 80);
      v30 = swift_allocObject();
      *(v30 + 2) = 0;
      *(v30 + 3) = 0;
      *(v30 + 4) = v22;
      v31 = v25;
      v32 = v38;
      (*(v12 + 32))(&v30[v28], v31, v38);
      (*(v7 + 32))(&v30[v29], v42, v39);
      v33 = v41;
      *&v30[(v8 + v29 + 7) & 0xFFFFFFFFFFFFFFF8] = v41;

      v34 = v33;
      sub_10009E31C(0, 0, v43, &unk_10063F1D8, v30);

      (*(v12 + 8))(v16, v32);
    }

    else
    {
      v35 = *(v12 + 8);

      v35(v16, v11);
    }
  }

  return Strong != 0;
}

BOOL sub_100441220(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v45 = a3;
  v7 = type metadata accessor for TTRIPopoverAnchor();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v9 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v9 - 8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for TTRHashtagAssociationOperation();
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  v16 = (&v40 - v15);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v18 = Strong;
  if (Strong)
  {
    v46 = v12;
    v47 = Strong;
    v42 = a5;
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003E30(v19, qword_100782E90);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44();

    v20 = sub_10000C36C((v47 + 112), *(v47 + 136));
    sub_100058000(&unk_100771E10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = v45;
    *(inited + 40) = a4;

    v22 = sub_10000FBDC(inited);
    swift_setDeallocating();
    sub_100007E80(inited + 32);
    *v16 = v22;
    v23 = v48;
    v24 = v46;
    (*(v48 + 104))(v16, enum case for TTRHashtagAssociationOperation.deleteHashtagLabels(_:), v46);
    v25 = *v20;
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v45 = v26;
      v27 = type metadata accessor for TaskPriority();
      v28 = *(*(v27 - 8) + 56);
      v41 = v11;
      v28(v11, 1, 1, v27);
      v29 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v29, v16, v24);
      v30 = v43;
      v31 = v44;
      (*(v43 + 16))(&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v42, v44);
      v32 = (*(v23 + 80) + 40) & ~*(v23 + 80);
      v33 = (v13 + *(v30 + 80) + v32) & ~*(v30 + 80);
      v34 = swift_allocObject();
      *(v34 + 2) = 0;
      *(v34 + 3) = 0;
      *(v34 + 4) = v25;
      v35 = &v34[v32];
      v24 = v46;
      (*(v48 + 32))(v35, v29, v46);
      (*(v30 + 32))(&v34[v33], &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
      v36 = v45;
      *&v34[(v8 + v33 + 7) & 0xFFFFFFFFFFFFFFF8] = v45;

      v37 = v36;
      v38 = v34;
      v23 = v48;
      sub_10009E31C(0, 0, v41, &unk_10063F1D0, v38);
    }

    (*(v23 + 8))(v16, v24);
    v18 = v47;
  }

  return v18 != 0;
}

id sub_1004416C8(uint64_t a1)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = *(v4 + 16);
  v10(&v23 - v8, a1, v3);
  v11 = (*(v4 + 88))(v9, v3);
  if (v11 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v4 + 96))(v9, v3);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v9, v12);
LABEL_8:
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
LABEL_7:
    (*(v4 + 8))(v9, v3);
    goto LABEL_8;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    (*(v4 + 8))(v9, v3);
    sub_100058000(&qword_10076B780);
    v13 = swift_allocObject();
    v13[1] = xmmword_10062D410;
    *(v13 + 4) = sub_100441BD0(v1, a1);
    *(v13 + 5) = sub_10044252C(v1, a1);
  }

  else
  {
    if (v11 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
      goto LABEL_7;
    }

    v13 = &_swiftEmptyArrayStorage;
    if (v11 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v11 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100003E30(v21, qword_100782E90);
      sub_100008E04(&_swiftEmptyArrayStorage);
      sub_100008E04(&_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown list type", 17, 2);
      __break(1u);
LABEL_33:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_11;
      }

LABEL_34:

      return 0;
    }
  }

LABEL_9:
  v10(v7, a1, v3);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  (*(v4 + 32))(v15 + v14, v7, v3);
  v16 = static TTRDebugMenuUtilities.objectIDContextualActions(provideObjectID:)();

  v24 = v13;
  sub_100081654(v16);
  if (v24 >> 62)
  {
    goto LABEL_33;
  }

  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_11:
  sub_100003540(0, &qword_10076BC40);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18 = [objc_opt_self() configurationWithActions:isa];

  return v18;
}

id sub_100441BD0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_100458D78;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100422764;
  aBlock[3] = &unk_100728FE0;
  v9 = _Block_copy(aBlock);
  v10 = objc_opt_self();

  v11 = [v10 contextualActionWithStyle:1 title:0 handler:v9];
  _Block_release(v9);

  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() _systemImageNamed:v12];

  if (v13)
  {
    v14 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:3];
    v15 = [v13 imageWithConfiguration:v14];

    if (v15)
    {
      v16 = objc_opt_self();
      v13 = v15;
      v17 = [v16 mainBundle];
      v23._object = 0x80000001006718B0;
      v18._countAndFlagsBits = 0x6574656C6544;
      v18._object = 0xE600000000000000;
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      v23._countAndFlagsBits = 0xD00000000000002CLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v23);

      v20 = String._bridgeToObjectiveC()();

      [v13 setAccessibilityLabel:v20];
    }

    else
    {
      v13 = 0;
    }
  }

  [v11 setImage:v13];

  return v11;
}

uint64_t sub_100441F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a3;
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v12 - 8);
  v14 = &v23 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v9 + 16))(v11, a6, v8);
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = v17;
  *(v20 + 3) = &protocol witness table for MainActor;
  *(v20 + 4) = v16;
  (*(v9 + 32))(&v20[v18], v11, v8);
  v21 = &v20[v19];
  *v21 = v23;
  *(v21 + 1) = a4;

  sub_10009E31C(0, 0, v14, &unk_10063F390, v20);
}

uint64_t sub_1004421EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[10] = v9;
  v7[11] = v8;

  return _swift_task_switch(sub_100442288, v9, v8);
}

uint64_t sub_100442288()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_100442380;
    v3 = v0[6];

    return sub_10042A5AC(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100442380(char a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_1004424A8, v4, v3);
}

uint64_t sub_1004424A8()
{
  v1 = *(v0 + 112);

  if ((v1 & 1) == 0)
  {
    (*(v0 + 56))(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

id sub_10044252C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_100458CC8;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100422764;
  aBlock[3] = &unk_100728F90;
  v9 = _Block_copy(aBlock);
  v10 = objc_opt_self();

  v11 = [v10 contextualActionWithStyle:0 title:0 handler:v9];
  _Block_release(v9);

  sub_1004428D0(a2);
  static REMFeatureFlags.isSolariumEnabled.getter();
  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() _systemImageNamed:v12];

  if (v13)
  {
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 configurationWithTextStyle:UIFontTextStyleBody scale:3];
    v17 = [v15 imageWithConfiguration:v16];

    if (v17)
    {
      v17 = v17;
      v18 = String._bridgeToObjectiveC()();

      [v17 setAccessibilityLabel:v18];
    }

    else
    {
    }
  }

  else
  {

    v17 = 0;
  }

  [v11 setImage:v17];
  v19 = [objc_opt_self() tertiaryLabelColor];
  [v11 setBackgroundColor:v19];

  return v11;
}

void sub_1004428D0(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 8))(v5, v7);
    return;
  }

  if (v6 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_7;
  }

  if (v6 == enum case for TTRAccountsListsViewModel.Item.list(_:))
  {
    static TTRAccesibility.AccountsList.Action.ListInfo.getter();
LABEL_15:
    (*(v3 + 8))(v5, v2);
    return;
  }

  if (v6 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {
    static TTRAccesibility.AccountsList.Action.SmartListInfo.getter();
    goto LABEL_15;
  }

  if (v6 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    static TTRAccesibility.AccountsList.Action.GroupInfo.getter();
    goto LABEL_15;
  }

  if (v6 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
LABEL_7:
    (*(v3 + 8))(v5, v2);
    return;
  }

  if (v6 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v6 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003E30(v8, qword_100782E90);
    sub_100008E04(&_swiftEmptyArrayStorage);
    sub_100008E04(&_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2);
    __break(1u);
  }
}

void sub_100442C54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v36 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRAccountsListsViewModel.List();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  v18 = (*(v11 + 88))(v13, v10);
  if (v18 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v11 + 96))(v13, v10);
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 8))(v13, v19);
LABEL_7:
    v20 = v37;
    *(v37 + 32) = 0;
    *v20 = 0u;
    v20[1] = 0u;
    return;
  }

  if (v18 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
LABEL_6:
    (*(v11 + 8))(v13, v10);
    goto LABEL_7;
  }

  if (v18 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    (*(v11 + 96))(v13, v10);
    v21 = v36;
    (*(v36 + 32))(v9, v13, v7);
    v22 = TTRAccountsListsViewModel.Account.objectID.getter();
    v23 = sub_100003540(0, &qword_10076BA50);
    v24 = v37;
    *(v37 + 24) = v23;
    v24[4] = &protocol witness table for REMObjectID;
    *v24 = v22;
    (*(v21 + 8))(v9, v7);
  }

  else
  {
    if (v18 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
    {
      (*(v11 + 96))(v13, v10);
      (*(v15 + 32))(v17, v13, v14);
      v30 = TTRAccountsListsViewModel.List.objectID.getter();
      (*(v15 + 8))(v17, v14);
      v31 = sub_100003540(0, &qword_10076BA50);
      v32 = v37;
      *(v37 + 24) = v31;
      v32[4] = &protocol witness table for REMObjectID;
      *v32 = v30;
      return;
    }

    if (v18 == enum case for TTRAccountsListsViewModel.Item.group(_:))
    {
      (*(v11 + 96))(v13, v10);
      v26 = v34;
      v25 = v35;
      (*(v35 + 32))(v6, v13, v34);
      v27 = TTRAccountsListsViewModel.Group.objectID.getter();
      v28 = sub_100003540(0, &qword_10076BA50);
      v29 = v37;
      *(v37 + 24) = v28;
      v29[4] = &protocol witness table for REMObjectID;
      *v29 = v27;
      (*(v25 + 8))(v6, v26);
      return;
    }

    if (v18 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
      goto LABEL_6;
    }

    if (v18 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      goto LABEL_7;
    }

    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100003E30(v33, qword_100782E90);
    sub_100008E04(&_swiftEmptyArrayStorage);
    sub_100008E04(&_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2);
    __break(1u);
  }
}

void sub_1004432A8(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v44 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for TTRAccountsListsViewModel.List();
  v48 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v6 + 16);
  v45 = a1;
  v14(v10, a1, v5);
  v15 = (*(v6 + 88))(v10, v5);
  if (v15 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v6 + 96))(v10, v5);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 8))(v10, v16);
    return;
  }

  if (v15 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_7;
  }

  if (v15 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {
    (*(v6 + 96))(v10, v5);
    (*(v48 + 32))(v13, v10, v11);
    TTRAccountsListsViewModel.List.pinState.getter();
    v19 = v46;
    v18 = v47;
    v20 = (*(v46 + 88))(v4, v47);
    if (v20 != enum case for TTRAccountsListsViewModel.List.PinState.supported(_:))
    {
      if (v20 == enum case for TTRAccountsListsViewModel.List.PinState.notSupported(_:))
      {
        (*(v48 + 8))(v13, v11);
        return;
      }

      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_100003E30(v43, qword_100782E90);
      sub_100008E04(&_swiftEmptyArrayStorage);
      sub_100008E04(&_swiftEmptyArrayStorage);
      v42 = "Unknown pin state";
      goto LABEL_40;
    }

    (*(v48 + 8))(v13, v11);
    (*(v19 + 96))(v4, v18);
    if ((*v4 & 1) == 0)
    {
      v21 = swift_allocObject();
      swift_weakInit();
      v22 = v44;
      v14(v44, v45, v5);
      v23 = (*(v6 + 80) + 24) & ~*(v6 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = v21;
      (*(v6 + 32))(v24 + v23, v22, v5);
      aBlock[4] = sub_100458B98;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100422764;
      aBlock[3] = &unk_100728EF0;
      v25 = _Block_copy(aBlock);
      v26 = objc_opt_self();

      v27 = [v26 contextualActionWithStyle:0 title:0 handler:v25];
      _Block_release(v25);

      v28 = String._bridgeToObjectiveC()();
      v29 = [objc_opt_self() _systemImageNamed:v28];

      if (v29)
      {
        v30 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:3];
        v31 = [v29 imageWithConfiguration:v30];

        if (v31)
        {
          v32 = objc_opt_self();
          v29 = v31;
          v33 = [v32 mainBundle];
          v50._object = 0x80000001006718E0;
          v34._countAndFlagsBits = 7235920;
          v34._object = 0xE300000000000000;
          v35._countAndFlagsBits = 0;
          v35._object = 0xE000000000000000;
          v50._countAndFlagsBits = 0xD00000000000002BLL;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v50);

          v36 = String._bridgeToObjectiveC()();

          [v29 setAccessibilityLabel:v36];
        }

        else
        {
          v29 = 0;
        }
      }

      [v27 setImage:v29];
      v37 = [objc_opt_self() ttr_systemYellowColor];
      [v27 setBackgroundColor:v37];

      sub_100058000(&qword_10076B780);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_10062D420;
      *(v38 + 32) = v27;
      sub_100003540(0, &qword_10076BC40);
      v39 = v27;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [objc_opt_self() configurationWithActions:isa];
    }
  }

  else
  {
    if (v15 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
LABEL_7:
      (*(v6 + 8))(v10, v5);
      return;
    }

    if (v15 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v15 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_100003E30(v41, qword_100782E90);
      sub_100008E04(&_swiftEmptyArrayStorage);
      sub_100008E04(&_swiftEmptyArrayStorage);
      v42 = "Unknown list type";
LABEL_40:
      sub_1003F9818(v42, 17, 2);
      __break(1u);
    }
  }
}

uint64_t sub_100443C0C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  a3(0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a7(a6);
  }

  return result;
}

uint64_t sub_100443C8C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = TTRICollectionViewCollapsedStateChangeContext.shouldUpdateView.getter();

    if (v1)
    {
      TTRICollectionViewCollapsedStateChangeContext.prefersAnimated.getter();
      dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.scheduleUpdateForCollapsedStatesChange(animated:)();
    }

    else
    {
      dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.invalidateCachedCollapsedStates()();
    }
  }

  return result;
}

uint64_t sub_100443D34@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100058000(&qword_100783168);
  __chkstk_darwin(v3 - 8);
  v35 = &v34 - v4;
  v5 = type metadata accessor for TTRAccountsListsViewModel.FallbackSelection();
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v34 - v9;
  v11 = sub_100058000(&unk_100775640);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - v12;
  v14 = type metadata accessor for TTRListType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_externalSelectionSyncState;
  if (*(v1 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_externalSelectionSyncState) == 1 && (sub_1004442A0() & 1) != 0)
  {
    *(v1 + v18) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      (*(v15 + 56))(v13, 1, 1, v14);
LABEL_12:
      v27 = &unk_100775640;
      v28 = v13;
LABEL_13:
      sub_1000079B4(v28, v27);
      v29 = type metadata accessor for TTRIAccountsListsSelection(0);
      return (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
    }

    v34 = a1;
    v20 = *sub_10000C36C((Strong + 48), *(Strong + 72));
    swift_beginAccess();
    sub_100010540(v20 + 96, v38);
    sub_10000E224(v39);
    sub_100015124(v38);
    v21 = v40;
    if (v40)
    {
      v22 = v41;
      sub_10000C36C(v39, v40);
      (*(v22 + 16))(v21, v22);
      sub_100004758(v39);
    }

    else
    {
      sub_1000079B4(v39, &unk_100792FE0);
      (*(v15 + 56))(v13, 1, 1, v14);
    }

    swift_unknownObjectRelease();
    v26 = (*(v15 + 48))(v13, 1, v14);
    a1 = v34;
    if (v26 == 1)
    {
      goto LABEL_12;
    }

    (*(v15 + 32))(v17, v13, v14);

    v30 = v35;
    TTRAccountsListsViewModel.selection(forExternallyDisplayed:)();

    v32 = v36;
    v31 = v37;
    if ((*(v36 + 48))(v30, 1, v37) == 1)
    {
      (*(v15 + 8))(v17, v14);
      v27 = &qword_100783168;
      v28 = v30;
      goto LABEL_13;
    }

    (*(v32 + 32))(v10, v30, v31);
    (*(v32 + 16))(v8, v10, v31);
    sub_100423BDC(v8, a1);
    (*(v32 + 8))(v10, v31);
    (*(v15 + 8))(v17, v14);
    v33 = type metadata accessor for TTRIAccountsListsSelection(0);
    return (*(*(v33 - 8) + 56))(a1, 0, 1, v33);
  }

  else
  {
    v23 = type metadata accessor for TTRIAccountsListsSelection(0);
    v24 = *(*(v23 - 8) + 56);

    return v24(a1, 1, 1, v23);
  }
}

uint64_t sub_1004442A0()
{

  v0 = TTRModuleState.modelReceived.getter();

  if ((v0 & 1) == 0)
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10000C36C((result + 48), *(result + 72));
    v2 = sub_10001D354();
    swift_unknownObjectRelease();
    return v2 == 2;
  }

  return result;
}

BOOL sub_100444328(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = sub_100015600(Strong);
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100782E90);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v14 = v8;
    if (v3)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v3)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    v11 = v10;
    String.append(_:)(*&v9);

    v12 = sub_100004060(0, 0xE000000000000000, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Accounts Lists: set initial value of isRootViewCollapsedSnapshot { value: %s }", v7, 0xCu);
    sub_100004758(v8);
  }

  result = v3;
  *(a1 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot) = v3;
  return result;
}

uint64_t sub_1004444EC(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();
  sub_100058000(&unk_10076DF20);
  v2[38] = swift_task_alloc();
  sub_100058000(&qword_1007831D8);
  v2[39] = swift_task_alloc();
  v4 = type metadata accessor for TTRAccountsListsInteractorDeleteArguments();
  v2[40] = v4;
  v5 = *(v4 - 8);
  v2[41] = v5;
  v2[42] = *(v5 + 64);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[45] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[46] = v7;
  v2[47] = v6;

  return _swift_task_switch(sub_1004446C0, v7, v6);
}

uint64_t sub_1004446C0()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 264);
  sub_100058000(&unk_10076BAA0);
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10062D400;
  v8 = *(v2 + 16);
  v8(v7 + v6, v3, v1);
  (*(v5 + 104))(v7 + v6, enum case for TTRAccountsListsViewModel.Item.group(_:), v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *sub_10000C36C((Strong + 48), *(Strong + 72));

    v11 = sub_10001D354();
    v12 = *(v0 + 304);
    if (v11)
    {
      swift_beginAccess();
      sub_100010540(v10 + 96, v0 + 192);
      sub_100396F88(v12);
      sub_100015124(v0 + 192);
    }

    else
    {
      v15 = type metadata accessor for TTRListOrCustomSmartList();
      (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = *(v0 + 304);
    v14 = type metadata accessor for TTRListOrCustomSmartList();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  v16 = *(v0 + 320);
  v17 = *(v0 + 328);
  v18 = *(v0 + 312);
  TTRAccountsListsInteractorDeleteArguments.init(items:viewModel:currentList:)();
  v19 = (*(v17 + 48))(v18, 1, v16);
  if (v19 == 1)
  {
    v42 = *(v0 + 312);

    sub_1000079B4(v42, &qword_1007831D8);
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 296);
    v44 = *(v0 + 280);
    v45 = *(v0 + 264);
    v46 = type metadata accessor for Logger();
    sub_100003E30(v46, qword_100782E90);
    v8(v43, v45, v44);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    v49 = os_log_type_enabled(v47, v48);
    v51 = *(v0 + 288);
    v50 = *(v0 + 296);
    v52 = *(v0 + 280);
    if (v49)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      v55 = TTRAccountsListsViewModel.Group.objectID.getter();
      (*(v51 + 8))(v50, v52);
      *(v53 + 4) = v55;
      *v54 = v55;
      _os_log_impl(&_mh_execute_header, v47, v48, "Failed to construct delete arguments for deleting group {group.objectID: %@}", v53, 0xCu);
      sub_1000079B4(v54, &unk_10076DF80);
    }

    else
    {

      (*(v51 + 8))(v50, v52);
    }
  }

  else
  {
    v20 = *(v0 + 352);
    v21 = *(v0 + 320);
    v22 = *(v0 + 328);
    v23 = *(v0 + 312);
    v24 = *(v22 + 32);
    *(v0 + 384) = v24;
    *(v0 + 392) = (v22 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v24(v20, v23, v21);
    if (TTRAccountsListsInteractorDeleteArguments.shouldShowConfirmation.getter() & 1) != 0 || (static UIAccessibility.ttriIsAccessibilityRunning.getter())
    {
      v25 = *(v0 + 272);
      v26 = TTRAccountsListsViewModel.Group.name.getter();
      v28 = v27;

      v29._object = 0x8000000100686F00;
      v30._countAndFlagsBits = 0xD000000000000031;
      v30._object = 0x8000000100686F20;
      v29._countAndFlagsBits = 0x100000000000001ALL;
      TTRLocalizedString(_:comment:)(v29, v30);
      sub_100058000(&unk_100786CB0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_10062D400;
      *(v31 + 56) = &type metadata for String;
      *(v31 + 64) = sub_10005C390();
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      static String.localizedStringWithFormat(_:_:)();

      sub_10001F128(&qword_1007831E0, &type metadata accessor for TTRAccountsListsInteractorDeleteArguments);
      TTRAccountsListsDeleteArgumentsType.allListsToDelete()();
      sub_1002E9D98();

      v32 = String._bridgeToObjectiveC()();

      v33 = String._bridgeToObjectiveC()();

      v34 = [objc_opt_self() alertControllerWithTitle:v32 message:v33 preferredStyle:1];
      *(v0 + 400) = v34;

      sub_10000C36C((v25 + 112), *(v25 + 136));
      sub_100058000(&qword_100783268);
      sub_100058000(&qword_100783270);
      v35 = swift_allocObject();
      *(v0 + 408) = v35;
      *(v35 + 16) = xmmword_10062F800;
      static TTRLocalizableStrings.Common.alertCancelButton.getter();
      *(v0 + 233) = 0;
      TTRIValueBasedAlertAction.init(title:style:value:)();
      v36._object = 0x8000000100686F60;
      v37._countAndFlagsBits = 0xD00000000000001ELL;
      v37._object = 0x8000000100686F80;
      v36._countAndFlagsBits = 0xD000000000000011;
      TTRLocalizedString(_:comment:)(v36, v37);
      *(v0 + 234) = 1;
      TTRIValueBasedAlertAction.init(title:style:value:)();
      v38._countAndFlagsBits = 0xD000000000000016;
      v38._object = 0x8000000100686FA0;
      v39._countAndFlagsBits = 0xD000000000000023;
      v39._object = 0x8000000100686FC0;
      TTRLocalizedString(_:comment:)(v38, v39);
      *(v0 + 235) = 2;
      TTRIValueBasedAlertAction.init(title:style:value:)();
      v40 = swift_task_alloc();
      *(v0 + 416) = v40;
      *v40 = v0;
      v40[1] = sub_10044523C;

      return sub_100423728(v34, v35);
    }

    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v72 = *(v0 + 384);
    v57 = *(v0 + 344);
    v56 = *(v0 + 352);
    v58 = *(v0 + 328);
    v69 = *(v0 + 320);
    v70 = *(v0 + 336);
    v71 = *(v0 + 272);
    v59 = type metadata accessor for Logger();
    sub_100003E30(v59, qword_100782E90);
    sub_100058000(&unk_100775610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D3F0;
    *(inited + 32) = 0x746E656D75677261;
    *(inited + 40) = 0xE900000000000073;
    *(inited + 48) = TTRAccountsListsInteractorDeleteArguments.description.getter();
    *(inited + 56) = v61;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 0x7473694C7065656BLL;
    *(inited + 88) = 0xE900000000000073;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = 0;
    sub_100008E04(inited);
    swift_setDeallocating();
    sub_100058000(&unk_10076BA70);
    swift_arrayDestroy();
    sub_10000FD44();

    static TTRLocalizableStrings.UndoAction.deleteGroup.getter();
    v68 = objc_opt_self();
    v62 = String._bridgeToObjectiveC()();

    (*(v58 + 16))(v57, v56, v69);
    v63 = (*(v58 + 80) + 24) & ~*(v58 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = v71;
    v72(v64 + v63, v57, v69);
    *(v64 + v63 + v70) = 0;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_100459020;
    *(v65 + 24) = v64;
    *(v0 + 176) = sub_100068444;
    *(v0 + 184) = v65;
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_100026440;
    *(v0 + 168) = &unk_100729080;
    v66 = _Block_copy((v0 + 144));

    [v68 withActionName:v62 block:v66];

    _Block_release(v66);
    (*(v58 + 8))(v56, v69);
    LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

    if (v58)
    {
      __break(1u);
      return result;
    }
  }

  v67 = *(v0 + 8);

  return v67(v19 != 1);
}

uint64_t sub_10044523C(char a1)
{
  v2 = *v1;
  *(*v1 + 236) = a1;

  v3 = *(v2 + 376);
  v4 = *(v2 + 368);

  return _swift_task_switch(sub_100445388, v4, v3);
}

uint64_t sub_100445388()
{
  v1 = *(v0 + 236);

  if (v1 <= 1)
  {
    if (v1)
    {
      v2 = 1;
      goto LABEL_6;
    }

LABEL_10:
    (*(*(v0 + 328) + 8))(*(v0 + 352), *(v0 + 320));
    v14 = 0;
    goto LABEL_11;
  }

  if (v1 != 2)
  {
    goto LABEL_10;
  }

  v2 = 0;
LABEL_6:
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 384);
  v3 = *(v0 + 352);
  v4 = *(v0 + 328);
  v18 = *(v0 + 344);
  v19 = *(v0 + 336);
  v5 = *(v0 + 320);
  v20 = *(v0 + 272);
  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_100782E90);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x746E656D75677261;
  *(inited + 40) = 0xE900000000000073;
  *(inited + 48) = TTRAccountsListsInteractorDeleteArguments.description.getter();
  *(inited + 56) = v8;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x7473694C7065656BLL;
  *(inited + 88) = 0xE900000000000073;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = v2;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  static TTRLocalizableStrings.UndoAction.deleteGroup.getter();
  v17 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();

  (*(v4 + 16))(v18, v3, v5);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v20;
  v21(v11 + v10, v18, v5);
  *(v11 + v10 + v19) = v2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100459020;
  *(v12 + 24) = v11;
  *(v0 + 176) = sub_100068444;
  *(v0 + 184) = v12;
  *(v0 + 144) = _NSConcreteStackBlock;
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_100026440;
  *(v0 + 168) = &unk_100729080;
  v13 = _Block_copy((v0 + 144));

  [v17 withActionName:v9 block:v13];

  _Block_release(v13);
  (*(v4 + 8))(v3, v5);
  v14 = 1;
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_11:

  v15 = *(v0 + 8);

  return v15(v14);
}

uint64_t sub_1004457B0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v3 = type metadata accessor for TTRAccountsListsInteractorDeleteArguments();
  v6[3] = v3;
  v6[4] = sub_10001F128(&qword_1007831E0, &type metadata accessor for TTRAccountsListsInteractorDeleteArguments);
  v4 = sub_1000317B8(v6);
  (*(*(v3 - 8) + 16))(v4, a2, v3);
  dispatch thunk of TTRAccountsListsInteractorType.delete(_:keepSublists:)();
  sub_100004758(v6);
  return sub_1004458A4();
}

uint64_t sub_1004458A4()
{
  result = TTRAccountsListsInteractorDeleteArguments.reminderCount.getter();
  if (result >= 1)
  {
    if (TTRAccountsListsInteractorDeleteArguments.deletingCurrentList.getter())
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v1 = result;
        sub_10000C36C((result + 48), *(result + 72));
        if ((sub_10001D354() - 1) < 2u)
        {
          *(v1 + 161) = 1;
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {

      v2 = TTRAccountsListsInteractorDeleteArguments.accounts.getter();
      type metadata accessor for TTRIPrivacyChecker();
      TTRPrivacyChecker.showReminderDeletePrivacyWarningIfNeeded(for:)(v2);
    }
  }

  return result;
}

uint64_t sub_1004459A0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v3 = type metadata accessor for TTRAccountsListsInteractorDeleteArguments();
  v6[3] = v3;
  v6[4] = sub_10001F128(&qword_1007831E0, &type metadata accessor for TTRAccountsListsInteractorDeleteArguments);
  v4 = sub_1000317B8(v6);
  (*(*(v3 - 8) + 16))(v4, a2, v3);
  dispatch thunk of TTRAccountsListsInteractorType.delete(_:keepSublists:)();
  sub_100004758(v6);
  return sub_1004458A4();
}

void sub_100445AA4(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = sub_100058000(&unk_10076DF20);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - v4;
  v6 = type metadata accessor for TTRListOrCustomSmartList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v52 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRAccountEditor.UndoPolicyForPinnedListOrderingChange();
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v35 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject();
  v12 = __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v17 = &v35 - v16;
  v18 = *(a1 + 16);
  if (!v18)
  {
LABEL_15:
    swift_getObjectType();
    dispatch thunk of TTRAccountsListsInteractorType.pin(lists:)();

    TTRAccountsListsViewModel.activePinnedListsDisplayOrder()();

    v32 = v35;
    v31 = v36;
    v33 = v37;
    (*(v36 + 104))(v35, enum case for TTRAccountEditor.UndoPolicyForPinnedListOrderingChange.disabled(_:), v37);
    dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.setPinnedListOrdering(_:undoPolicy:)();

    (*(v31 + 8))(v32, v33);
    return;
  }

  v20 = *(v15 + 16);
  v19 = v15 + 16;
  v21 = (a1 + ((*(v19 + 64) + 32) & ~*(v19 + 64)));
  v50 = *(v19 + 56);
  v51 = v20;
  v49 = (v19 + 72);
  v48 = enum case for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject.pinnedList(_:);
  v40 = enum case for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject.listToPin(_:);
  v39 = (v19 + 80);
  v53 = (v7 + 32);
  v46 = (v7 + 56);
  v47 = (v19 - 8);
  v42 = v7;
  v45 = (v7 + 48);
  v22 = _swiftEmptyArrayStorage;
  v43 = v5;
  v41 = v19;
  while (1)
  {
    v23 = v51;
    v51(v17, v21, v11);
    v23(v14, v17, v11);
    v24 = (*v49)(v14, v11);
    if (v24 != v48)
    {
      break;
    }

    v44 = v22;
    v25 = *v47;
    (*v47)(v17, v11);
    (*v46)(v5, 1, 1, v6);
    v25(v14, v11);
    v22 = v44;
LABEL_9:
    if ((*v45)(v5, 1, v6) == 1)
    {
      sub_1000079B4(v5, &unk_10076DF20);
    }

    else
    {
      v26 = v6;
      v27 = *v53;
      v28 = v26;
      (*v53)(v52, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_100548454(0, v22[2] + 1, 1, v22);
      }

      v30 = v22[2];
      v29 = v22[3];
      if (v30 >= v29 >> 1)
      {
        v22 = sub_100548454(v29 > 1, v30 + 1, 1, v22);
      }

      v22[2] = v30 + 1;
      v27(v22 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v30, v52, v28);
      v6 = v28;
      v5 = v43;
    }

    v21 += v50;
    if (!--v18)
    {
      goto LABEL_15;
    }
  }

  if (v24 == v40)
  {
    (*v47)(v17, v11);
    (*v39)(v14, v11);
    (*v53)(v5, v14, v6);
    (*v46)(v5, 0, 1, v6);
    goto LABEL_9;
  }

  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100003E30(v34, qword_100782E90);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown move subject", 20, 2);
  __break(1u);
}

void sub_1004460F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v38 = a4;
  v39 = a5;
  v37 = a3;
  v35 = a2;
  v6 = type metadata accessor for TTRListOrCustomSmartList();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v49 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = (&v35 - v11);
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v15 = *(a1 + 16);
  v36 = a1;
  if (v15)
  {
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v42 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v18 = (a1 + v42);
    v19 = *(v16 + 56);
    v47 = (v16 + 72);
    v48 = v17;
    v46 = enum case for TTRListOrCustomSmartList.list(_:);
    v41 = enum case for TTRListOrCustomSmartList.customSmartList(_:);
    v40 = (v16 - 8);
    v44 = (v16 + 16);
    v45 = (v16 + 80);
    v20 = _swiftEmptyArrayStorage;
    v43 = v16;
    while (1)
    {
      v21 = v48;
      v48(v14, v18, v6);
      v21(v12, v14, v6);
      v22 = (*v47)(v12, v6);
      if (v22 == v46)
      {
        (*v45)(v12, v6);
        v23 = *v12;
        v24 = [*v12 isPinned];

        if (v24)
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (v22 != v41)
        {
          if (qword_1007672D8 != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          sub_100003E30(v34, qword_100782E90);
          sub_100008E04(_swiftEmptyArrayStorage);
          sub_100008E04(_swiftEmptyArrayStorage);
          sub_1003F9818("Unknown list type", 17, 2);
          __break(1u);
          return;
        }

        (*v45)(v12, v6);
        v25 = *v12;
        v26 = [*v12 isPinned];

        if (v26)
        {
LABEL_10:
          v27 = *v44;
          (*v44)(v49, v14, v6);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v50 = v20;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1004A25B0(0, v20[2] + 1, 1);
            v20 = v50;
          }

          v30 = v20[2];
          v29 = v20[3];
          if (v30 >= v29 >> 1)
          {
            sub_1004A25B0(v29 > 1, v30 + 1, 1);
            v20 = v50;
          }

          v20[2] = v30 + 1;
          v27(v20 + v42 + v30 * v19, v49, v6);
          goto LABEL_4;
        }
      }

      (*v40)(v14, v6);
LABEL_4:
      v18 += v19;
      if (!--v15)
      {
        goto LABEL_16;
      }
    }
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_16:
  v31 = *(v35 + 72);
  ObjectType = swift_getObjectType();
  v33 = sub_1004B654C(v20);

  v39(v36, v37, v38, v33, ObjectType, v31);
}

id sub_10044650C(id *a1)
{
  v1 = sub_1004B1D24(*a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder];

  return v3;
}

void sub_100446564(id *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_1004B1D24(*a1);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = *&v3[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder];

  v6 = [v5 hashtagContext];
  if (!v6)
  {

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

LABEL_6:
  *a2 = v5;
}

uint64_t sub_1004465F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_10001EFA4;

  return sub_1004466B0(a5);
}

uint64_t sub_1004466B0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = type metadata accessor for REMAnalyticsEvent();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100446798, 0, 0);
}

uint64_t sub_100446798()
{
  REMList.ttrGroceryContext.getter();
  v1 = v0[5];
  if (v1)
  {
    sub_10000C36C(v0 + 2, v0[5]);
    LOBYTE(v1) = dispatch thunk of TTRListGroceryContextProtocol.ttrShouldCategorizeGroceryItems.getter();
    sub_100004758((v0 + 2));
  }

  else
  {
    sub_1000079B4((v0 + 2), &qword_1007757E0);
  }

  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_100446894;

  return sub_100446B7C(v1 & 1);
}

uint64_t sub_100446894(char a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_100446994, 0, 0);
}

uint64_t sub_100446994()
{
  if (*(v0 + 112) - 2 >= 2)
  {
    v2 = *(v0 + 88);
    v1 = *(v0 + 96);
    v3 = *(v0 + 80);
    swift_getObjectType();
    dispatch thunk of TTRAccountsListsInteractorType.updateAutoCategorization(for:shouldAutoCategorizeItems:deleteExistingSections:)();
    type metadata accessor for TTRUserDefaults();
    v4 = static TTRUserDefaults.appUserDefaults.getter();
    type metadata accessor for REMAnalyticsManager();
    static REMAnalyticsManager.shared.getter();
    v5 = sub_100058000(&qword_1007757E8);
    v6 = (v1 + *(v5 + 48));
    v7 = (v1 + *(v5 + 80));
    v8 = enum case for REMUserOperation.autoCategorizeDisable(_:);
    v9 = type metadata accessor for REMUserOperation();
    (*(*(v9 - 8) + 104))(v1, v8, v9);
    *v6 = TTRUserDefaults.activitySessionId.getter();
    v6[1] = v10;
    TTRUserDefaults.activitySessionBeginTime.getter();
    *v7 = _typeName(_:qualified:)();
    v7[1] = v11;
    (*(v2 + 104))(v1, enum case for REMAnalyticsEvent.userOperation(_:), v3);
    REMAnalyticsManager.post(event:)();

    (*(v2 + 8))(v1, v3);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100446B7C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 115) = a1;
  v3 = type metadata accessor for TTRRemindersListLayout();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 64) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 72) = v5;
  *(v2 + 80) = v4;

  return _swift_task_switch(sub_100446C8C, v5, v4);
}

uint64_t sub_100446C8C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = enum case for TTRRemindersListLayout.list(_:);
  v6 = *(v4 + 104);
  v6(v1, enum case for TTRRemindersListLayout.list(_:), v3);
  (*(v4 + 16))(v2, v1, v3);
  v7 = (*(v4 + 88))(v2, v3);
  if (v7 == v5)
  {
    v30 = v6;
    v8 = 0xD000000000000097;
    v9 = "List Detail Done {objectID: %@}";
    v10 = 0x636553207065654BLL;
    v11 = 0xEE003F736E6F6974;
LABEL_5:
    v12 = *(v0 + 56);
    v14 = *(v0 + 32);
    v13 = *(v0 + 40);
    v15 = *(v0 + 24);
    v29 = *(v0 + 16);
    v28 = *(v0 + 115);
    v16 = v9 | 0x8000000000000000;
    TTRLocalizedString(_:comment:)(*&v10, *&v8);
    v17 = *(v14 + 8);
    v17(v12, v15);
    v30(v13, v5, v15);
    _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO031ConvertGroceryOrAutoCategorizede9ToRegularE5AlertO38keepExistingSectionConfirmationMessage10listLayout20shouldUseItemWordingSSAA012TTRReminderseU0O_SbtFZ_0(v13, v28);
    v17(v13, v15);
    v18 = String._bridgeToObjectiveC()();

    v19 = String._bridgeToObjectiveC()();

    v20 = [objc_opt_self() alertControllerWithTitle:v18 message:v19 preferredStyle:1];
    *(v0 + 88) = v20;

    sub_10000C36C((v29 + 112), *(v29 + 136));
    sub_100058000(&qword_100783278);
    sub_100058000(&qword_100783280);
    v21 = swift_allocObject();
    *(v0 + 96) = v21;
    *(v21 + 16) = xmmword_10062F800;
    v22._object = 0x8000000100672C50;
    v23._countAndFlagsBits = 1885693259;
    v23._object = 0xE400000000000000;
    v22._countAndFlagsBits = 0xD000000000000084;
    TTRLocalizedString(_:comment:)(v23, v22);
    *(v0 + 112) = 0;
    TTRIValueBasedAlertAction.init(title:style:value:)();
    v24._countAndFlagsBits = 0x65766F6D6552;
    v25._object = 0x8000000100672C50;
    v24._object = 0xE600000000000000;
    v25._countAndFlagsBits = 0xD000000000000084;
    TTRLocalizedString(_:comment:)(v24, v25);
    *(v0 + 113) = 1;
    TTRIValueBasedAlertAction.init(title:style:value:)();
    static TTRLocalizableStrings.Common.alertCancelButton.getter();
    *(v0 + 114) = 2;
    TTRIValueBasedAlertAction.init(title:style:value:)();
    v26 = swift_task_alloc();
    *(v0 + 104) = v26;
    *v26 = v0;
    v26[1] = sub_100207280;

    return sub_100423A0C(v20, v21);
  }

  if (v7 == enum case for TTRRemindersListLayout.columns(_:))
  {
    v30 = v6;
    v9 = "st to a regular list";
    v8 = 0xD000000000000096;
    v10 = 0x6C6F43207065654BLL;
    v11 = 0xED00003F736E6D75;
    goto LABEL_5;
  }

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

uint64_t sub_1004470E0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_100429650(a4);
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_100429C6C(a4);
  }
}

uint64_t sub_100447170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_100447208, v7, v6);
}

uint64_t sub_100447208()
{
  v0[2] = *(v0[3] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_privacyChecker);
  v1 = swift_task_alloc();
  v0[8] = v1;
  v2 = type metadata accessor for TTRIPrivacyChecker();
  *v1 = v0;
  v1[1] = sub_1004472CC;

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v2, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_1004472CC()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1004473EC, v3, v2);
}

uint64_t sub_1004473EC()
{
  v1 = *(v0 + 32);

  sub_10042F924(v1, 1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10044745C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for TTRAccountsListsViewModel.List();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    (*(v8 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
    type metadata accessor for MainActor();

    v16 = static MainActor.shared.getter();
    v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = v16;
    *(v18 + 3) = &protocol witness table for MainActor;
    *(v18 + 4) = v14;
    (*(v8 + 32))(&v18[v17], &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    sub_10009E31C(0, 0, v12, a5, v18);
  }

  return result;
}

uint64_t sub_100447684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_10044771C, v7, v6);
}

uint64_t sub_10044771C()
{
  v0[2] = *(v0[3] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_privacyChecker);
  v1 = swift_task_alloc();
  v0[8] = v1;
  v2 = type metadata accessor for TTRIPrivacyChecker();
  *v1 = v0;
  v1[1] = sub_1004477E0;

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v2, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_1004477E0()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_100447900, v3, v2);
}

uint64_t sub_100447900()
{
  v1 = *(v0 + 32);

  sub_10042F924(v1, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100447970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_100447A08, v7, v6);
}

uint64_t sub_100447A08()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = TTRAccountsListsViewModel.List.isCustomSmartList.getter();
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_100447B14;
    v4 = v0[6];

    return sub_100436358(v4, v2 & 1);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100447B14()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_100447C58, v3, v2);
}

uint64_t sub_100447C58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100447CB8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4(a3);
  }

  return result;
}

uint64_t sub_100447D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v8 = a4(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v12 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v9 + 16))(v11, a3, v8);
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v17;
  *(v19 + 3) = &protocol witness table for MainActor;
  *(v19 + 4) = v16;
  (*(v9 + 32))(&v19[v18], v11, v8);

  sub_10009E31C(0, 0, v14, a6, v19);
}

uint64_t sub_100447F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_100448018, v7, v6);
}

uint64_t sub_100448018()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_10042A468;
    v3 = v0[6];

    return sub_1004444EC(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

void sub_100448110()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v0 = TTRAccountsListsViewModel.RecentlyDeletedList.accountID.getter();
    TTRAccountsListsViewModel.RecentlyDeletedList.count.getter();
    sub_100431434(v0);
  }
}

uint64_t sub_100448190(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t))
{
  v37 = a3;
  v38 = a5;
  v43 = a2;
  v44 = a4;
  v6 = type metadata accessor for TTRAccountEditor.UndoPolicyForPinnedListOrderingChange();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v39 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100058000(&qword_100783140);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for REMAccountsListDataView.Model();
  v42 = *(v11 - 8);
  __chkstk_darwin(v11);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 64);
  v13 = *(a1 + 72);
  ObjectType = swift_getObjectType();
  sub_100058000(&qword_1007831E8);
  v16 = type metadata accessor for TTRListOrCustomSmartList();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v34 = xmmword_10062D400;
  *(v19 + 16) = xmmword_10062D400;
  (*(v17 + 16))(v19 + v18, v43, v16);
  v35 = v14;
  v43 = ObjectType;
  v20 = ObjectType;
  v21 = v11;
  v22 = v42;
  v44(v19, v20, v13);

  v23 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel;
  swift_beginAccess();
  sub_10000794C(a1 + v23, v10, &qword_100783140);
  if ((*(v22 + 48))(v10, 1, v21) == 1)
  {
    return sub_1000079B4(v10, &qword_100783140);
  }

  v25 = v36;
  (*(v22 + 32))(v36, v10, v21);
  REMAccountsListDataView.Model.orderedPinnedLists.getter();
  v26 = Array<A>.init(pinnedLists:)();
  sub_100058000(&qword_1007831F0);
  v27 = type metadata accessor for TTRAccountsListsViewModel.List();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v34;
  (*(v28 + 16))(v30 + v29, v37, v27);
  v38(v30, v26);

  v32 = v39;
  v31 = v40;
  *v39 = v26;
  v33 = v41;
  (*(v31 + 104))(v32, enum case for TTRAccountEditor.UndoPolicyForPinnedListOrderingChange.enabled(_:), v41);
  dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.setPinnedListOrdering(_:undoPolicy:)();

  (*(v31 + 8))(v32, v33);
  return (*(v22 + 8))(v25, v21);
}

void sub_10044861C(uint64_t a1)
{
  static TTRLocalizableStrings.AccountsList.addingRemindersToSmartListAlertTitle.getter();
  static TTRLocalizableStrings.AccountsList.addingRemindersToSmartListAlertMessage.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  static TTRLocalizableStrings.Common.alertOKButton.getter();
  v5 = String._bridgeToObjectiveC()();

  v8 = [objc_opt_self() actionWithTitle:v5 style:1 handler:0];

  [v4 addAction:v8];
  sub_10000C36C((a1 + 112), *(a1 + 136));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong presentViewController:v4 animated:1 completion:0];
  }
}

uint64_t sub_100448788()
{
  v0 = type metadata accessor for TTRListOrCustomSmartList();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  sub_100058000(&qword_100783210);
  TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoCustomSmartList.reminderIDs.getter();
  *v3 = TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoCustomSmartList.target.getter();
  (*(v1 + 104))(v3, enum case for TTRListOrCustomSmartList.customSmartList(_:), v0);
  dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.move(remindersWithIDs:to:)();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004488E4()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100004758(v0 + 112);

  v1 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_viewModelCreationOption;
  v2 = type metadata accessor for TTRAccountsListsViewModel.ModelCreationOption();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel, &qword_100783140);
  sub_100452B0C(*(v0 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction), *(v0 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction + 8));

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_permissionRequest, &qword_100783148);

  return v0;
}

uint64_t sub_100448A44()
{
  sub_1004488E4();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListNavigationBarViewModel.UndoRedoItemsStates(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for TTRIRemindersListNavigationBarViewModel.UndoRedoItemsStates(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t assignWithCopy for TTRIAccountsListsPresenter.PostModelUpdateAction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = v3;

  return a1;
}

uint64_t assignWithTake for TTRIAccountsListsPresenter.PostModelUpdateAction(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t *sub_100448C94(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v8 = type metadata accessor for REMHashtagLabelSpecifier();
        (*(*(v8 - 8) + 16))(a1, a2, v8);
      }

      else
      {
        *a1 = *a2;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v9 = type metadata accessor for TTRAccountsListsPinnedListSelection();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_100448E04(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      v3 = type metadata accessor for REMHashtagLabelSpecifier();
LABEL_15:
      v4 = *(*(v3 - 8) + 8);

      return v4(a1, v3);
    }

    if (result == 3)
    {
    }
  }

  else
  {
    if (result)
    {
      if (result != 1)
      {
        return result;
      }

      v3 = type metadata accessor for TTRAccountsListsPinnedListSelection();
      goto LABEL_15;
    }
  }

  return result;
}

void *sub_100448EE8(void *a1, void *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v5 = type metadata accessor for REMHashtagLabelSpecifier();
      (*(*(v5 - 8) + 16))(a1, a2, v5);
    }

    else
    {
      *a1 = *a2;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void *sub_10044900C(void *a1, void *a2)
{
  if (a1 != a2)
  {
    sub_10045164C(a1, type metadata accessor for TTRIAccountsListsSelection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v5 = type metadata accessor for REMHashtagLabelSpecifier();
        (*(*(v5 - 8) + 16))(a1, a2, v5);
      }

      else
      {
        *a1 = *a2;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v6 = type metadata accessor for TTRAccountsListsPinnedListSelection();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *sub_100449154(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for REMHashtagLabelSpecifier();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_100449278(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_10045164C(a1, type metadata accessor for TTRIAccountsListsSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for REMHashtagLabelSpecifier();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_1004493C0(unint64_t a1)
{
  if (sub_1004B1A10(a1))
  {
    return 0;
  }

  sub_100058000(&qword_10077CFC8);
  sub_100003540(0, &qword_10076BB00);
  sub_10000E188(&qword_10077CFD8, &qword_10077CFC8);
  result = Sequence.completeCompactMap<A>(_:)();
  if (result)
  {

    return 1;
  }

  return result;
}

uint64_t sub_1004494B4(uint64_t a1, uint64_t a2)
{
  v3 = TTRICollectionViewCollapsedStatesPresenterCapability.collapsedItemIDs.getter();

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1004494F4()
{
  v1 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v1 - 8);
  v23 = &v21 - v2;
  v3 = sub_100058000(&qword_100783140);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for REMAccountsListDataView.Model();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel;
  swift_beginAccess();
  sub_10000794C(v0 + v13, v5, &qword_100783140);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1000079B4(v5, &qword_100783140);
  }

  v22 = *(v7 + 32);
  v22(v12, v5, v6);
  v15 = type metadata accessor for TaskPriority();
  v16 = v23;
  (*(*(v15 - 8) + 56))(v23, 1, 1, v15);
  (*(v7 + 16))(v10, v12, v6);
  type metadata accessor for MainActor();

  v17 = v0;
  v18 = static MainActor.shared.getter();
  v19 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v18;
  *(v20 + 3) = &protocol witness table for MainActor;
  *(v20 + 4) = v17;
  v22(&v20[v19], v10, v6);
  sub_10009E31C(0, 0, v16, &unk_10063F188, v20);

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_100449828(unsigned int (**a1)(char *, uint64_t, uint64_t))
{
  v129 = a1;
  v133 = type metadata accessor for TTRAccountsListsViewModel.List();
  v124 = *(v133 - 8);
  v2 = __chkstk_darwin(v133);
  v113 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v115 = &v112 - v4;
  v5 = sub_100058000(&unk_10078D450);
  v6 = __chkstk_darwin(v5 - 8);
  v114 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v118 = &v112 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v112 - v11;
  __chkstk_darwin(v10);
  v14 = &v112 - v13;
  v15 = sub_100058000(&qword_10076B9A0);
  v130 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v127 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v119 = &v112 - v18;
  v19 = sub_100058000(&qword_10076B998);
  v125 = *(v19 - 8);
  v126 = v19;
  v20 = __chkstk_darwin(v19);
  v121 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v120 = &v112 - v22;
  v23 = sub_100058000(&unk_100771B40);
  v24 = __chkstk_darwin(v23 - 8);
  v26 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v117 = &v112 - v28;
  v29 = __chkstk_darwin(v27);
  v123 = (&v112 - v30);
  v31 = __chkstk_darwin(v29);
  v33 = &v112 - v32;
  v34 = __chkstk_darwin(v31);
  v116 = &v112 - v35;
  __chkstk_darwin(v34);
  v122 = (&v112 - v36);
  v134 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v37 = __chkstk_darwin(v134);
  v39 = &v112 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v37);
  v41 = __chkstk_darwin(v40);
  v43 = &v112 - v42;
  result = __chkstk_darwin(v41);
  v48 = v1 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction;
  v132 = *(v1 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction);
  v49 = *(v1 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction + 8);
  *v48 = 0;
  *(v48 + 8) = -1;
  if (v49 == 255)
  {
    return result;
  }

  v50 = v1;
  v128 = v46;
  v51 = *(v130 + 2);
  v52 = (v130 + 88);
  v131 = v49;
  if ((v49 & 1) == 0)
  {
    v121 = &v112 - v45;
    v70 = v119;
    v51(v119, v129, v15);
    if ((*v52)(v70, v15) == enum case for TTRTreeViewUpdates.incremental<A>(_:))
    {
      v112 = v50;
      (*(v130 + 12))(v70, v15);
      v71 = *(sub_100058000(&qword_10076B9A8) + 48);
      (*(v125 + 32))(v120, v70, v126);
      v72 = type metadata accessor for TTRTreeViewAnimationByType();
      (*(*(v72 - 8) + 8))(&v70[v71], v72);
      v119 = TTRTreeDiffResult.insertedElements.getter();
      dispatch thunk of _AnySequenceBox._makeIterator()();
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v73 = v128 + 48;
      v74 = *(v128 + 48);
      if (v74(v33, 1, v134) != 1)
      {
        v96 = *(v128 + 32);
        v129 = (v124 + 48);
        v130 = v96;
        v123 = (v128 + 32);
        v124 += 8;
        v127 = (v128 + 8);
        (v96)(v43, v33, v134);
        while (1)
        {
          TTRAccountsListsViewModel.Item.listOrCustomSmartList.getter();
          v98 = v133;
          if ((*v129)(v14, 1, v133) == 1)
          {
            sub_1000079B4(v14, &unk_10078D450);
          }

          else
          {
            v99 = v74;
            v100 = v73;
            v101 = TTRAccountsListsViewModel.List.objectID.getter();
            (*v124)(v14, v98);
            sub_100003540(0, &qword_10076BA50);
            v102 = v132;
            v103 = v132;
            v104 = static NSObject.== infix(_:_:)();

            v73 = v100;
            v74 = v99;
            sub_100452B0C(v102, v131);
            if (v104)
            {

              (*(v125 + 8))(v120, v126);
              v76 = v116;
              (v130)(v116, v43, v134);
              v75 = 0;
              goto LABEL_13;
            }
          }

          v97 = v134;
          (*v127)(v43, v134);
          dispatch thunk of _AnyIteratorBoxBase.next()();
          if (v74(v33, 1, v97) == 1)
          {
            break;
          }

          (v130)(v43, v33, v134);
        }
      }

      (*(v125 + 8))(v120, v126);
      v75 = 1;
      v76 = v116;
LABEL_13:
      v77 = v128;
      v78 = v134;
      (*(v128 + 56))(v76, v75, 1, v134);
      v63 = v122;
      sub_100016588(v76, v122, &unk_100771B40);
      v79 = v74(v63, 1, v78);
      v80 = v112;
      if (v79 != 1)
      {
        v81 = v121;
        (*(v77 + 32))(v121, v63, v134);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v82 = *(v80 + 24);
          ObjectType = swift_getObjectType();
          (*(v82 + 88))(v81, 3, 1, ObjectType, v82);
          swift_unknownObjectRelease();
        }

        sub_100452B0C(v132, v131);
        return (*(v128 + 8))(v81, v134);
      }
    }

    else
    {
      (*(v130 + 1))(v70, v15);
      v63 = v122;
      (*(v128 + 56))(v122, 1, 1, v134);
    }

LABEL_19:
    sub_100452B0C(v132, v131);
    return sub_1000079B4(v63, &unk_100771B40);
  }

  v120 = v47;
  v53 = v127;
  v51(v127, v129, v15);
  if ((*v52)(v53, v15) != enum case for TTRTreeViewUpdates.incremental<A>(_:))
  {
    (*(v130 + 1))(v53, v15);
    v63 = v123;
    (*(v128 + 56))(v123, 1, 1, v134);
    goto LABEL_19;
  }

  v112 = v50;
  (*(v130 + 12))(v53, v15);
  v54 = *(sub_100058000(&qword_10076B9A8) + 48);
  (*(v125 + 32))(v121, v53, v126);
  v55 = type metadata accessor for TTRTreeViewAnimationByType();
  (*(*(v55 - 8) + 8))(&v53[v54], v55);
  v119 = TTRTreeDiffResult.insertedElements.getter();
  v56 = dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v129 = *(v128 + 48);
  v130 = (v128 + 48);
  v57 = (v129)(v26, 1, v134);
  v58 = v133;
  if (v57 == 1)
  {
LABEL_5:

    (*(v125 + 8))(v121, v126);
    v59 = 1;
    v60 = v117;
    goto LABEL_6;
  }

  v84 = v128 + 32;
  v127 = *(v128 + 32);
  v85 = (v124 + 48);
  v122 = (v124 + 8);
  v86 = (v128 + 8);
  (v127)(v39, v26, v134);
  while (1)
  {
    TTRAccountsListsViewModel.Item.listOrCustomSmartList.getter();
    if ((*v85)(v12, 1, v58) == 1)
    {
      sub_1000079B4(v12, &unk_10078D450);
      goto LABEL_22;
    }

    v88 = TTRAccountsListsViewModel.List.objectID.getter();
    (*v122)(v12, v133);
    sub_100003540(0, &qword_10076BA50);
    v89 = v12;
    v90 = v84;
    v91 = v56;
    v92 = v132;
    v93 = v132;
    v94 = static NSObject.== infix(_:_:)();

    v58 = v133;
    v95 = v92;
    v56 = v91;
    v84 = v90;
    v12 = v89;
    sub_100452B0C(v95, v131);
    if (v94)
    {
      break;
    }

LABEL_22:
    v87 = v134;
    (*v86)(v39, v134);
    dispatch thunk of _AnyIteratorBoxBase.next()();
    if ((v129)(v26, 1, v87) == 1)
    {
      goto LABEL_5;
    }

    (v127)(v39, v26, v134);
  }

  (*(v125 + 8))(v121, v126);
  v60 = v117;
  (v127)(v117, v39, v134);
  v59 = 0;
LABEL_6:
  v61 = v128;
  v62 = v134;
  (*(v128 + 56))(v60, v59, 1, v134);
  v63 = v123;
  sub_100016588(v60, v123, &unk_100771B40);
  v64 = (v129)(v63, 1, v62);
  v65 = v118;
  if (v64 == 1)
  {
    goto LABEL_19;
  }

  v66 = v120;
  (*(v61 + 32))(v120, v63, v134);
  TTRAccountsListsViewModel.Item.list.getter();
  v67 = v124;
  v68 = *(v124 + 48);
  if (v68(v65, 1, v58) == 1)
  {
    sub_1000079B4(v65, &unk_10078D450);
    v69 = v114;
    TTRAccountsListsViewModel.Item.customSmartList.getter();
    if (v68(v69, 1, v58) == 1)
    {
      sub_100452B0C(v132, v131);
      (*(v128 + 8))(v66, v134);
      return sub_1000079B4(v69, &unk_10078D450);
    }

    v105 = v113;
    (*(v124 + 32))(v113, v69, v58);
    v109 = v112;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v110 = *(v109 + 24);
      v111 = swift_getObjectType();
      (*(v110 + 40))(v105, v111, v110);
LABEL_38:
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v105 = v115;
    (*(v67 + 32))(v115, v65, v58);
    v106 = v112;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v107 = *(v106 + 24);
      v108 = swift_getObjectType();
      (*(v107 + 24))(v105, 0, v108, v107);
      goto LABEL_38;
    }
  }

  sub_100452B0C(v132, v131);
  (*(v124 + 8))(v105, v58);
  return (*(v128 + 8))(v120, v134);
}

uint64_t sub_10044A778(void *a1, char a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a2 & 1) == 0)
    {
      v8 = a4 & 1;
      v9 = result + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction;
      v10 = *(result + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction);
      *v9 = a1;
      v11 = *(v9 + 8);
      *(v9 + 8) = v8;
      v12 = a1;
      sub_100452B0C(v10, v11);
    }
  }

  return result;
}

uint64_t sub_10044A820()
{
  v1 = sub_100058000(&qword_100783140);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for REMAccountsListDataView.Model();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel;
  swift_beginAccess();
  sub_10000794C(v0 + v8, v3, &qword_100783140);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1000079B4(v3, &qword_100783140);
  }

  (*(v5 + 32))(v7, v3, v4);
  sub_10001AFE0(v7, 0, 2, 1);
  return (*(v5 + 8))(v7, v4);
}

id sub_10044A9F4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + 128);
  swift_unknownObjectRelease();
  return v1;
}

void sub_10044AA40(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4, char a5)
{
  v6 = v5;
  static TTRLocalizableStrings.UndoAction.changeList.getter();
  v11 = objc_opt_self();
  v12 = String._bridgeToObjectiveC()();

  v13 = swift_allocObject();
  v13[2] = v5;
  v13[3] = a1;
  v13[4] = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100458268;
  *(v14 + 24) = v13;
  aBlock[4] = sub_100068444;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100728DB0;
  v15 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  [v11 withActionName:v12 block:v15];

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  if ((a5 & 1) == 0)
  {
LABEL_5:

    return;
  }

  if (a4 < 2u)
  {
    v17 = v6 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction;
    v18 = *(v6 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction);
    *v17 = a3;
    v19 = *(v17 + 8);
    *(v17 + 8) = 1;
    v20 = a3;
    sub_100452B0C(v18, v19);
    goto LABEL_5;
  }

  if (qword_1007672D8 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v21 = type metadata accessor for Logger();
  sub_100003E30(v21, qword_100782E90);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "TTRIAccountsListsPresenter: unexpect objectType from listDetailDidComplete", v24, 2u);
  }
}

void sub_10044AD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  ObjectType = swift_getObjectType();
  v5 = (*(a3 + 16))(ObjectType, a3);
  dispatch thunk of TTRAccountsListsInteractorType.registerUndoFor(listDetailUndoManager:)();
}

uint64_t sub_10044ADA0()
{
  swift_getObjectType();
  v0 = swift_allocObject();
  swift_weakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = 0;

  dispatch thunk of TTRListToCustomSmartListConverterType.convert(listID:reminders:completionHandler:)();
}

uint64_t sub_10044AE84(void *a1, void *a2, int a3)
{
  v4 = v3;
  v30 = a3;
  v29 = a1;
  v6 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v28 = *(v9 - 8);
  __chkstk_darwin(v9);
  v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTRLocalizableStrings.UndoAction.addList.getter();
  v11 = objc_opt_self();
  v12 = String._bridgeToObjectiveC()();

  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10045778C;
  *(v14 + 24) = v13;
  aBlock[4] = sub_100068444;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100728CE8;
  v15 = _Block_copy(aBlock);

  v16 = a2;

  [v11 withActionName:v12 block:v15];

  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    if (v30)
    {

      v18 = v29;
      TTRAccountsListsViewModel.item(with:)();

      v19 = v28;
      if ((*(v28 + 48))(v8, 1, v9) == 1)
      {
        sub_1000079B4(v8, &unk_100771B40);
        v20 = v4 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction;
        v21 = *(v4 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction);
        *v20 = v18;
        v22 = *(v20 + 8);
        *(v20 + 8) = 0;
        sub_100452B0C(v21, v22);
        v23 = v18;
      }

      else
      {
        v24 = v27;
        (*(v19 + 32))(v27, v8, v9);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v25 = *(v4 + 24);
          ObjectType = swift_getObjectType();
          (*(v25 + 88))(v24, 3, 1, ObjectType, v25);
          swift_unknownObjectRelease();
        }

        (*(v19 + 8))(v24, v9);
      }
    }
  }

  return result;
}

uint64_t sub_10044B278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v7;
  v4[11] = v6;

  return _swift_task_switch(sub_10044B36C, v7, v6);
}

uint64_t sub_10044B36C()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_10044B448;

  return sub_100482668(v1, v3, 0, 0, 1);
}

uint64_t sub_10044B448()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  v3 = v2[11];
  v4 = v2[10];
  if (v0)
  {
    v5 = sub_10044B720;
  }

  else
  {
    v5 = sub_10044B5D0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10044B5D0()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getObjectType();
    v1 = dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.store.getter();
    type metadata accessor for TTRUserDefaults();
    v2 = static TTRUserDefaults.appUserDefaults.getter();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    type metadata accessor for TTRStoreReviewController();
    v4 = swift_allocObject();
    sub_100079270(v1, v2, sub_100079600, v3, v4);
    if (sub_1004666BC())
    {
      sub_1004672E0(0);
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10044B720()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10044B828(uint64_t a1, int a2)
{
  v4 = sub_100058000(&qword_100783218);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for TTRAccountsListsPresenterCapability.CustomSmartListCreationParams();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_100003E30(v11, qword_100782E90);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  TTRAccountsListsPresenterCapability.customSmartListCreationParams(forHashtagLabels:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &qword_100783218);
  }

  else
  {
    v25 = a2;
    (*(v8 + 32))(v10, v6, v7);
    v26 = *(v2 + 72);
    swift_getObjectType();
    v13 = TTRAccountsListsPresenterCapability.CustomSmartListCreationParams.account.getter();
    v27 = v12;
    v14 = v13;
    TTRAccountsListsPresenterCapability.CustomSmartListCreationParams.name.getter();
    v24 = v2;
    v15 = TTRAccountsListsPresenterCapability.CustomSmartListCreationParams.filter.getter();
    v16 = dispatch thunk of TTRAccountsListsInteractorType.createNewCustomSmartListAllowingUndo(in:name:filter:)();

    (*(v8 + 8))(v10, v7);
    if (v16)
    {
      v17 = v25 & 1;
      v18 = v24 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction;
      v19 = *(v24 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction);
      *v18 = v16;
      v20 = *(v18 + 8);
      *(v18 + 8) = v17;
      sub_100452B0C(v19, v20);
      return;
    }
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Failed to create custom smart list for hashtag labels", v23, 2u);
  }
}

uint64_t sub_10044BBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(result + 72);
    v11 = result;
    ObjectType = swift_getObjectType();
    v13 = a4(a2, ObjectType, v10);
    v14 = *sub_10000C36C((v11 + 112), *(v11 + 136));

    a5(v13, v11, a3, v14);
  }

  return result;
}

uint64_t sub_10044BC94@<X0>(void *a1@<X2>, int a2@<W3>, char *a3@<X8>)
{
  v65 = a2;
  v72 = type metadata accessor for TTRAccountsListsViewModel.List();
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v64 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10078D450);
  v8 = __chkstk_darwin(v7 - 8);
  v71 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v62 - v11;
  __chkstk_darwin(v10);
  v14 = &v62 - v13;
  v15 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v69 = *(v15 - 8);
  v70 = v15;
  __chkstk_darwin(v15);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100058000(&unk_10076B7F0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v62 - v22;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    v37 = 0;
    goto LABEL_31;
  }

  v25 = result;
  v62 = v14;
  v67 = a3;
  v68 = v3;
  v26 = [a1 isGroup];
  v66 = v25;

  v63 = a1;
  v27 = [a1 objectID];
  if (v26)
  {
    TTRAccountsListsViewModel.group(with:)();

    sub_10000794C(v23, v21, &unk_10076B7F0);
    v29 = v69;
    v28 = v70;
    if ((*(v69 + 48))(v21, 1, v70) == 1)
    {
      sub_1000079B4(v21, &unk_10076B7F0);
      a3 = v67;
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100003E30(v30, qword_100782E90);
      v31 = v63;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = [v31 objectID];
        *(v34 + 4) = v36;
        *v35 = v36;
        _os_log_impl(&_mh_execute_header, v32, v33, "Couldn't find the group to select {list.objectID: %@}", v34, 0xCu);
        sub_1000079B4(v35, &unk_10076DF80);
      }

      else
      {
      }

      result = sub_1000079B4(v23, &unk_10076B7F0);
      v37 = 0;
      goto LABEL_31;
    }

    (*(v29 + 32))(v17, v21, v28);
    v46 = v66;
    Strong = swift_unknownObjectWeakLoadStrong();
    a3 = v67;
    if (Strong)
    {
      v48 = *(v46 + 24);
      ObjectType = swift_getObjectType();
      (*(v48 + 32))(v17, v65 & 1, ObjectType, v48);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    (*(v29 + 8))(v17, v28);
    v60 = &unk_10076B7F0;
    v61 = v23;
LABEL_30:
    result = sub_1000079B4(v61, v60);
    v37 = 1;
    goto LABEL_31;
  }

  TTRAccountsListsViewModel.pinnedListInnerList(with:)();

  v38 = v73;
  v39 = *(v73 + 48);
  v40 = v72;
  if (v39(v12, 1, v72) == 1)
  {
    v41 = v66;

    v42 = [v63 objectID];
    v43 = v62;
    TTRAccountsListsViewModel.list(with:)();

    v38 = v73;
    v44 = v39(v12, 1, v40);
    a3 = v67;
    v45 = v71;
    if (v44 != 1)
    {
      sub_1000079B4(v12, &unk_10078D450);
    }
  }

  else
  {
    v43 = v62;
    (*(v38 + 32))(v62, v12, v40);
    (*(v38 + 56))(v43, 0, 1, v40);
    v41 = v66;
    a3 = v67;
    v45 = v71;
  }

  sub_10000794C(v43, v45, &unk_10078D450);
  if (v39(v45, 1, v40) != 1)
  {
    v57 = v64;
    (*(v38 + 32))(v64, v45, v40);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v58 = *(v41 + 24);
      v59 = swift_getObjectType();
      (*(v58 + 24))(v57, v65 & 1, v59, v58);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    (*(v73 + 8))(v57, v40);
    v60 = &unk_10078D450;
    v61 = v43;
    goto LABEL_30;
  }

  sub_1000079B4(v45, &unk_10078D450);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_100003E30(v50, qword_100782E90);
  v51 = v63;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138412290;
    v56 = [v51 objectID];
    *(v54 + 4) = v56;
    *v55 = v56;
    _os_log_impl(&_mh_execute_header, v52, v53, "Couldn't find the list to select {list.objectID: %@}", v54, 0xCu);
    sub_1000079B4(v55, &unk_10076DF80);
  }

  else
  {
  }

  result = sub_1000079B4(v43, &unk_10078D450);
  v37 = 0;
LABEL_31:
  *a3 = v37;
  return result;
}

uint64_t sub_10044C598@<X0>(void *a1@<X2>, char *a2@<X8>)
{
  v29 = a2;
  v4 = type metadata accessor for TTRAccountsListsViewModel.List();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_10078D450);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v30 = v28 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v28[1] = v2;
    v15 = [a1 isPinned];

    v16 = [a1 objectID];
    if (v15)
    {
      v17 = v30;
      TTRAccountsListsViewModel.pinnedListInnerList(with:)();
    }

    else
    {
      v17 = v30;
      TTRAccountsListsViewModel.customSmartList(with:)();
    }

    sub_10000794C(v17, v11, &unk_10078D450);
    if ((*(v5 + 48))(v11, 1, v4) == 1)
    {
      sub_1000079B4(v11, &unk_10078D450);
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_100782E90);
      v20 = a1;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        v25 = [v20 objectID];
        *(v23 + 4) = v25;
        *v24 = v25;
        _os_log_impl(&_mh_execute_header, v21, v22, "Couldn't find the list to select {list.objectID: %@}", v23, 0xCu);
        sub_1000079B4(v24, &unk_10076DF80);
      }

      else
      {
      }

      v18 = 0;
    }

    else
    {
      (*(v5 + 32))(v7, v11, v4);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v26 = *(v14 + 24);
        ObjectType = swift_getObjectType();
        (*(v26 + 40))(v7, ObjectType, v26);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      (*(v5 + 8))(v7, v4);
      v18 = 1;
    }

    result = sub_1000079B4(v30, &unk_10078D450);
  }

  else
  {
    v18 = 0;
  }

  *v29 = v18;
  return result;
}

uint64_t sub_10044C9D8@<X0>(uint64_t a1@<X2>, char a2@<W3>, char *a3@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_7;
  }

  v7 = result;

  v8 = TTRAccountsListsViewModel.canDisplay(_:)();

  if ((v8 & 1) == 0)
  {

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v7 + 24);
    ObjectType = swift_getObjectType();
    (*(v9 + 48))(a1, a2 & 1, ObjectType, v9);

    result = swift_unknownObjectRelease();
  }

  else
  {
  }

  v11 = 1;
LABEL_8:
  *a3 = v11;
  return result;
}

uint64_t sub_10044CAF0@<X0>(uint64_t a1@<X2>, char *a2@<X8>)
{
  v4 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_4;
  }

  v8 = result;

  TTRAccountsListsViewModel.hashtagsItem.getter();

  v9 = type metadata accessor for TTRAccountsListsViewModel.Item();
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {

    result = sub_1000079B4(v6, &unk_100771B40);
LABEL_4:
    v10 = 0;
    goto LABEL_9;
  }

  sub_1000079B4(v6, &unk_100771B40);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v8 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 56))(a1, ObjectType, v11);

    result = swift_unknownObjectRelease();
  }

  else
  {
  }

  v10 = 1;
LABEL_9:
  *a2 = v10;
  return result;
}

uint64_t sub_10044CCAC(uint64_t a1)
{
  v3 = type metadata accessor for TTRListType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 64))(a1, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  swift_getObjectType();
  v9 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v9 - 8) + 16))(v6, a1, v9);
  (*(v4 + 104))(v6, enum case for TTRListType.tagged(_:), v3);
  dispatch thunk of TTRAccountsListsInteractorType.saveLastSelectedListType(_:)();
  return (*(v4 + 8))(v6, v3);
}

void *sub_10044CE40()
{
  v81 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v1 = *(v81 - 8);
  __chkstk_darwin(v81);
  v64 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v77 = &v59 - v4;
  v93 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v5 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for TTRAccountsListsViewModel.List();
  v7 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10078D510);
  __chkstk_darwin(v9 - 8);
  v11 = (&v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = &v59 - v13;
  v15 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem(0);
  v78 = *(v15 - 8);
  __chkstk_darwin(v15);
  v91 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v74 = &v59 - v18;
  v19 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v95 = *(v19 - 8);
  __chkstk_darwin(v19);
  v94 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  if (*(v0 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isEditing))
  {
    return _swiftEmptyArrayStorage;
  }

  v25 = TTRAccountsListsViewModel.visiblePinnedLists.getter();

  v90 = *(v25 + 16);
  if (v90)
  {
    v26 = v5;
    v27 = 0;
    v87 = v95 + 88;
    v88 = v95 + 16;
    v86 = enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:);
    v73 = enum case for TTRAccountsListsViewModel.PinnedList.list(_:);
    v85 = (v95 + 96);
    v72 = (v7 + 32);
    v71 = (v7 + 8);
    v84 = (v78 + 56);
    v70 = (v26 + 32);
    v69 = (v1 + 88);
    v68 = enum case for TTRListType.PredefinedSmartListType.today(_:);
    v66 = enum case for TTRListType.PredefinedSmartListType.scheduled(_:);
    v65 = enum case for TTRListType.PredefinedSmartListType.all(_:);
    v63 = enum case for TTRListType.PredefinedSmartListType.flagged(_:);
    v67 = (v26 + 8);
    v62 = enum case for TTRListType.PredefinedSmartListType.assigned(_:);
    v61 = (v1 + 8);
    v83 = (v95 + 8);
    v60 = enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:);
    v82 = (v78 + 48);
    v59 = enum case for TTRListType.PredefinedSmartListType.completed(_:);
    v24 = _swiftEmptyArrayStorage;
    v79 = v23;
    v80 = v19;
    v28 = v94;
    v89 = v25;
    while (1)
    {
      if (v27 >= *(v25 + 16))
      {
        __break(1u);
LABEL_30:
        if (qword_1007672D8 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        sub_100003E30(v55, qword_100782E90);
        sub_100008E04(_swiftEmptyArrayStorage);
        sub_100008E04(_swiftEmptyArrayStorage);
        v56 = "Unknown pinned list type";
        v57 = 24;
        goto LABEL_33;
      }

      v96 = v24;
      v29 = v95;
      v30 = v25 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v95 + 72) * v27;
      v31 = *(v95 + 16);
      v31(v23, v30, v19);
      v31(v28, v23, v19);
      v32 = (*(v29 + 88))(v28, v19);
      if (v32 != v86)
      {
        if (v32 != v73)
        {
          goto LABEL_30;
        }

        v36 = v14;
        (*v85)(v28, v19);
        v37 = v75;
        v38 = v28;
        v39 = v76;
        (*v72)(v75, v38, v76);
        v40 = TTRAccountsListsViewModel.List.name.getter();
        v42 = v41;
        v43 = *(v15 + 20);
        v44 = TTRAccountsListsViewModel.List.objectID.getter();
        (*v71)(v37, v39);
        *(v11 + v43) = v44;
        type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
        swift_storeEnumTagMultiPayload();
        v35 = 0;
        *v11 = v40;
        v11[1] = v42;
        v23 = v79;
        v19 = v80;
        v14 = v36;
        v24 = v96;
        goto LABEL_20;
      }

      (*v85)(v28, v19);
      (*v70)(v92, v28, v93);
      v33 = v77;
      TTRAccountsListsViewModel.SmartList.type.getter();
      v34 = (*v69)(v33, v81);
      v24 = v96;
      if (v34 == v68 || v34 == v66 || v34 == v65 || v34 == v63 || v34 == v62)
      {
        goto LABEL_19;
      }

      if (v34 != v60)
      {
        break;
      }

      (*v67)(v92, v93);
      v35 = 1;
LABEL_20:
      (*v84)(v11, v35, 1, v15);
      sub_100016588(v11, v14, &unk_10078D510);
      (*v83)(v23, v19);
      if ((*v82)(v14, 1, v15) == 1)
      {
        sub_1000079B4(v14, &unk_10078D510);
        v28 = v94;
      }

      else
      {
        v50 = v74;
        sub_10005C2C4(v14, v74);
        sub_10005C2C4(v50, v91);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v94;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_100548278(0, v24[2] + 1, 1, v24);
        }

        v53 = v24[2];
        v52 = v24[3];
        if (v53 >= v52 >> 1)
        {
          v24 = sub_100548278(v52 > 1, v53 + 1, 1, v24);
        }

        v24[2] = v53 + 1;
        sub_10005C2C4(v91, v24 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v53);
      }

      v25 = v89;
      if (v90 == ++v27)
      {
        goto LABEL_27;
      }
    }

    if (v34 != v59)
    {
      while (1)
      {
        if (qword_1007672D8 != -1)
        {
          swift_once();
        }

        v58 = type metadata accessor for Logger();
        sub_100003E30(v58, qword_100782E90);
        sub_100008E04(_swiftEmptyArrayStorage);
        sub_100008E04(_swiftEmptyArrayStorage);
        v56 = "Unknown predefined smart list type";
        v57 = 34;
LABEL_33:
        sub_1003F9818(v56, v57, 2);
        __break(1u);
      }
    }

LABEL_19:
    v45 = v64;
    v46 = v92;
    TTRAccountsListsViewModel.SmartList.type.getter();
    v47 = TTRListType.PredefinedSmartListType.title.getter();
    v49 = v48;
    (*v61)(v45, v81);
    TTRAccountsListsViewModel.SmartList.type.getter();
    (*v67)(v46, v93);
    type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
    v23 = v79;
    swift_storeEnumTagMultiPayload();
    v35 = 0;
    *v11 = v47;
    v11[1] = v49;
    v19 = v80;
    goto LABEL_20;
  }

  v24 = _swiftEmptyArrayStorage;
LABEL_27:

  return v24;
}

BOOL sub_10044D8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 96))(a2, a3, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

id sub_10044D948()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 128);
    swift_unknownObjectRelease();
    return v1;
  }

  else
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_100782E90);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Accounts list presenter's moduleDelegate is not set when presenting search result, so unable to return a proper undoManager.", v6, 2u);
    }

    v7 = objc_allocWithZone(TTRUndoManager);
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 initWithDebugIdentifier:v8];

    return v9;
  }
}

unint64_t sub_10044DAB4()
{
  result = qword_100783130;
  if (!qword_100783130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783130);
  }

  return result;
}

id sub_10044DB08(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v45 = v5;
  v46 = a2;
  v10 = v9;
  v11 = objc_allocWithZone(TTRUndoManager);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithDebugIdentifier:v12];

  v14 = type metadata accessor for TTRUserDefaults();
  v15 = static TTRUserDefaults.appUserDefaults.getter();
  v16 = type metadata accessor for TTRSmartListVersionWarningInteractor();
  v17 = swift_allocObject();
  v17[5] = v14;
  v17[6] = &protocol witness table for TTRUserDefaults;
  v17[2] = v15;
  v17[7] = 20;
  v42 = v16;
  v43 = &protocol witness table for TTRSmartListVersionWarningInteractor;
  v41[0] = v17;
  v18 = sub_10001F128(&qword_1007831A0, type metadata accessor for TTRListDetailAssembly.ListComponentsCreator);
  v19 = *(v18 + 40);

  v19(&v44, &v46, v13, v41, v10, v18);
  sub_100004758(v41);
  v20 = v44;
  sub_100058000(&qword_1007831A8);
  swift_allocObject();

  v21 = v13;
  v22 = sub_100422C90(v20, v21);
  v23 = type metadata accessor for TTRInteractorAsyncEditsCommitter();
  v24 = static TTRInteractorEditsCommitting<>.async.getter();
  v42 = v23;
  v43 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
  v41[0] = v24;
  v25 = objc_allocWithZone(type metadata accessor for TTRListToCustomSmartListConverter());
  v26 = a1;
  v27 = TTRListToCustomSmartListConverter.init(store:committer:)();
  v28 = type metadata accessor for TTRIListDetailRouter();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v29 + 24) = v17;
  type metadata accessor for TTRListDetailListViewModelSource();
  v30 = swift_allocObject();
  v42 = v28;
  v43 = &off_10071E810;
  v41[0] = v29;
  sub_100058000(&qword_1007831B0);
  v31 = swift_allocObject();
  *(v31 + *(*v31 + 264) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v31 + *(*v31 + 272) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v31 + *(*v31 + 280) + 8) = 0;
  swift_unknownObjectWeakInit();
  v32 = (v31 + *(*v31 + 312));
  *v32 = 0;
  v32[1] = 0;
  v33 = (v31 + *(*v31 + 304));
  *v33 = v27;
  v33[1] = &protocol witness table for TTRListToCustomSmartListConverter;
  sub_10000B0D8(v41, v31 + *(*v31 + 296));
  *(v31 + *(*v31 + 288)) = a3 & 1;

  v34 = v21;

  v35 = v27;

  v36 = sub_100454B84(v22, v30, v34, &TTRListEditor.changeItem.getter, TTRListDetailViewModel.init(changeItem:));

  sub_100004758(v41);
  v37 = objc_allocWithZone(type metadata accessor for TTRIListDetailViewController());

  v39 = sub_10044F94C(v38, v37);

  swift_beginAccess();
  *(v22 + 24) = &off_100716708;
  swift_unknownObjectWeakAssign();

  *&v36[*(*v36 + 264) + 8] = &off_10071E838;
  swift_unknownObjectWeakAssign();
  *&v36[*(*v36 + 272) + 8] = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v39;
}

id sub_10044E000(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v45 = v5;
  v46 = a2;
  v10 = v9;
  v11 = objc_allocWithZone(TTRUndoManager);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithDebugIdentifier:v12];

  v14 = type metadata accessor for TTRUserDefaults();
  v15 = static TTRUserDefaults.appUserDefaults.getter();
  v16 = type metadata accessor for TTRSmartListVersionWarningInteractor();
  v17 = swift_allocObject();
  v17[5] = v14;
  v17[6] = &protocol witness table for TTRUserDefaults;
  v17[2] = v15;
  v17[7] = 20;
  v42 = v16;
  v43 = &protocol witness table for TTRSmartListVersionWarningInteractor;
  v41[0] = v17;
  v18 = sub_10001F128(&qword_1007831B8, type metadata accessor for TTRListDetailAssembly.CustomSmartListComponentsCreator);
  v19 = *(v18 + 40);

  v19(&v44, &v46, v13, v41, v10, v18);
  sub_100004758(v41);
  v20 = v44;
  sub_100058000(&qword_1007831C0);
  swift_allocObject();

  v21 = v13;
  v22 = sub_100422FC0(v20, v21);
  v23 = type metadata accessor for TTRInteractorAsyncEditsCommitter();
  v24 = static TTRInteractorEditsCommitting<>.async.getter();
  v42 = v23;
  v43 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
  v41[0] = v24;
  v25 = objc_allocWithZone(type metadata accessor for TTRListToCustomSmartListConverter());
  v26 = a1;
  v27 = TTRListToCustomSmartListConverter.init(store:committer:)();
  v28 = type metadata accessor for TTRIListDetailRouter();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v29 + 24) = v17;
  type metadata accessor for TTRListDetailCustomSmartListViewModelSource();
  v30 = swift_allocObject();
  v42 = v28;
  v43 = &off_10071E810;
  v41[0] = v29;
  sub_100058000(&qword_1007831C8);
  v31 = swift_allocObject();
  *(v31 + *(*v31 + 264) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v31 + *(*v31 + 272) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v31 + *(*v31 + 280) + 8) = 0;
  swift_unknownObjectWeakInit();
  v32 = (v31 + *(*v31 + 312));
  *v32 = 0;
  v32[1] = 0;
  v33 = (v31 + *(*v31 + 304));
  *v33 = v27;
  v33[1] = &protocol witness table for TTRListToCustomSmartListConverter;
  sub_10000B0D8(v41, v31 + *(*v31 + 296));
  *(v31 + *(*v31 + 288)) = a3 & 1;

  v34 = v21;

  v35 = v27;

  v36 = sub_100454B84(v22, v30, v34, &TTRSmartListEditor.changeItem.getter, TTRListDetailViewModel.init(changeItem:));

  sub_100004758(v41);
  v37 = objc_allocWithZone(type metadata accessor for TTRIListDetailViewController());

  v39 = sub_10044F94C(v38, v37);

  swift_beginAccess();
  *(v22 + 24) = &off_100716708;
  swift_unknownObjectWeakAssign();

  *&v36[*(*v36 + 264) + 8] = &off_10071E838;
  swift_unknownObjectWeakAssign();
  *&v36[*(*v36 + 272) + 8] = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v39;
}

id sub_10044E4F8(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v45 = v5;
  v46 = a2;
  v10 = v9;
  v11 = objc_allocWithZone(TTRUndoManager);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithDebugIdentifier:v12];

  v14 = type metadata accessor for TTRUserDefaults();
  v15 = static TTRUserDefaults.appUserDefaults.getter();
  v16 = type metadata accessor for TTRSmartListVersionWarningInteractor();
  v17 = swift_allocObject();
  v17[5] = v14;
  v17[6] = &protocol witness table for TTRUserDefaults;
  v17[2] = v15;
  v17[7] = 20;
  v42 = v16;
  v43 = &protocol witness table for TTRSmartListVersionWarningInteractor;
  v41[0] = v17;
  v18 = sub_10001F128(&qword_100783298, type metadata accessor for TTRListDetailAssembly.TemplateComponentsCreator);
  v19 = *(v18 + 40);

  v19(&v44, &v46, v13, v41, v10, v18);
  sub_100004758(v41);
  v20 = v44;
  sub_100058000(&qword_1007832A0);
  swift_allocObject();

  v21 = v13;
  v22 = sub_1004232BC(v20, v21);
  v23 = type metadata accessor for TTRInteractorAsyncEditsCommitter();
  v24 = static TTRInteractorEditsCommitting<>.async.getter();
  v42 = v23;
  v43 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
  v41[0] = v24;
  v25 = objc_allocWithZone(type metadata accessor for TTRListToCustomSmartListConverter());
  v26 = a1;
  v27 = TTRListToCustomSmartListConverter.init(store:committer:)();
  v28 = type metadata accessor for TTRIListDetailRouter();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v29 + 24) = v17;
  type metadata accessor for TTRListDetailTemplateViewModelSource();
  v30 = swift_allocObject();
  v42 = v28;
  v43 = &off_10071E810;
  v41[0] = v29;
  sub_100058000(qword_1007832A8);
  v31 = swift_allocObject();
  *(v31 + *(*v31 + 264) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v31 + *(*v31 + 272) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v31 + *(*v31 + 280) + 8) = 0;
  swift_unknownObjectWeakInit();
  v32 = (v31 + *(*v31 + 312));
  *v32 = 0;
  v32[1] = 0;
  v33 = (v31 + *(*v31 + 304));
  *v33 = v27;
  v33[1] = &protocol witness table for TTRListToCustomSmartListConverter;
  sub_10000B0D8(v41, v31 + *(*v31 + 296));
  *(v31 + *(*v31 + 288)) = a3 & 1;

  v34 = v21;

  v35 = v27;

  v36 = sub_100454B84(v22, v30, v34, &TTRTemplateEditor.changeItem.getter, TTRListDetailViewModel.init(changeItem:));

  sub_100004758(v41);
  v37 = objc_allocWithZone(type metadata accessor for TTRIListDetailViewController());

  v39 = sub_10044F94C(v38, v37);

  swift_beginAccess();
  *(v22 + 24) = &off_100716708;
  swift_unknownObjectWeakAssign();

  *&v36[*(*v36 + 264) + 8] = &off_10071E838;
  swift_unknownObjectWeakAssign();
  *&v36[*(*v36 + 272) + 8] = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v39;
}

uint64_t sub_10044E9F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

id sub_10044EA48(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100003540(0, &qword_10076C550);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v1(v2);

  return v3;
}

uint64_t sub_10044EAD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_100010540(a4 + 96, &v24);
  if (v27 == 8)
  {
    sub_100005FD0(&v24, v28);
    v11 = v29;
    v12 = v30;
    v13 = sub_10000C36C(v28, v29);
    sub_1003982D4(v13, a4, v11, v12);
  }

  else
  {
    sub_100015124(&v24);
    v14 = *(a4 + 56);
    sub_10000794C(a2, v10 + v8[5], &unk_10076BB50);
    *v10 = a1;
    *(v10 + v8[6]) = v14;
    v15 = v8[7];
    v23 = *(a4 + 64);
    *(v10 + v15) = v23;
    *(v10 + v8[8]) = 0;
    type metadata accessor for TTRIShowSiriFoundInAppsAssembly();

    swift_unknownObjectRetain();
    v16 = a1;
    v17 = sub_10048CCA8(v28, v10, a3);
    v18 = v29;
    v19 = v30;
    v20 = sub_10000C36C(v28, v29);
    v25 = v18;
    v26 = *(v19 + 8);
    v21 = sub_1000317B8(&v24);
    (*(*(v18 - 8) + 16))(v21, v20, v18);
    v27 = 8;
    sub_1003944FC(&v24, v17);

    sub_10045164C(v10, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
    sub_100015124(&v24);
  }

  return sub_100004758(v28);
}

uint64_t sub_10044ECFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_100010540(a4 + 96, &v24);
  if (v27 == 7)
  {
    sub_100005FD0(&v24, v28);
    v11 = v29;
    v12 = v30;
    v13 = sub_10000C36C(v28, v29);
    sub_1003982D4(v13, a4, v11, v12);
  }

  else
  {
    sub_100015124(&v24);
    v14 = *(a4 + 56);
    sub_10000794C(a2, v10 + v8[5], &unk_10076BB50);
    *v10 = a1;
    *(v10 + v8[6]) = v14;
    v15 = v8[7];
    v23 = *(a4 + 64);
    *(v10 + v15) = v23;
    *(v10 + v8[8]) = 0;
    type metadata accessor for TTRIShowAssignedAssembly();

    swift_unknownObjectRetain();
    v16 = a1;
    v17 = sub_100173B4C(v28, v10, a3);
    v18 = v29;
    v19 = v30;
    v20 = sub_10000C36C(v28, v29);
    v25 = v18;
    v26 = *(v19 + 8);
    v21 = sub_1000317B8(&v24);
    (*(*(v18 - 8) + 16))(v21, v20, v18);
    v27 = 7;
    sub_1003944FC(&v24, v17);

    sub_10045164C(v10, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
    sub_100015124(&v24);
  }

  return sub_100004758(v28);
}

uint64_t sub_10044EF20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v8);
  v10 = (&v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_100010540(a4 + 96, v20);
  if (v21 == 11)
  {
    sub_100005FD0(v20, v22);
    v11 = v23;
    v12 = v24;
    v13 = sub_10000C36C(v22, v23);
    sub_1003982D4(v13, a4, v11, *(v12 + 8));
    return sub_100004758(v22);
  }

  else
  {
    sub_100015124(v20);
    v15 = *(a4 + 56);
    sub_10000794C(a2, v10 + v8[5], &unk_10076BB50);
    *v10 = a1;
    *(v10 + v8[6]) = v15;
    v16 = v8[7];
    v19 = *(a4 + 64);
    *(v10 + v16) = v19;
    *(v10 + v8[8]) = 0;

    swift_unknownObjectRetain();
    v17 = a1;
    v18 = sub_100337B6C(v22, v10, a3);
    sub_10000B0D8(v22, v20);
    v21 = 11;
    sub_1003944FC(v20, v18);

    sub_100015124(v20);
    sub_100004758(v22);
    return sub_10045164C(v10, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  }
}

uint64_t sub_10044F0EC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v8);
  v10 = (&v29[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for REMHashtagLabelSpecifier();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_100010540(a4 + 96, v29);
  if (v30 == 10)
  {
    sub_100005FD0(v29, v31);
    sub_10000C36C(v31, v32);
    swift_getObjectType();
    dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
    swift_unknownObjectRelease();
    sub_10001F128(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier);
    dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v12 + 8))(v14, v11);
    v16 = v32;
    v15 = v33;
    sub_10000C36C(v31, v32);
    (*(*(v15 + 8) + 40))(v16);
    sub_10000C36C(v31, v32);
    swift_getObjectType();
    dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
    swift_getObjectType();
    (*(v12 + 16))(v14, a1, v11);
    dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.setter();
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      sub_1002FB7EC(1);
      v19 = sub_100341598();
      sub_10001A06C(v19);
    }

    return sub_100004758(v31);
  }

  else
  {
    sub_100015124(v29);
    v21 = v8[5];
    v22 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v22 - 8) + 56))(v10 + v21, 1, 1, v22);
    v23 = *(a4 + 56);
    *v10 = a2;
    *(v10 + v8[6]) = v23;
    v24 = v8[7];
    v28 = *(a4 + 64);
    *(v10 + v24) = v28;
    *(v10 + v8[8]) = 0;
    type metadata accessor for TTRIShowTaggedAssembly();

    swift_unknownObjectRetain();
    v25 = a2;
    v26 = sub_1003962A4();
    v27 = sub_100528FF0(v31, v10, a1, !v26, a3);
    sub_10000B0D8(v31, v29);
    v30 = 10;
    sub_1003944FC(v29, v27);

    sub_100015124(v29);
    sub_100004758(v31);
    return sub_10045164C(v10, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  }
}

void sub_10044F500(uint64_t a1, uint64_t a2, char a3, void *a4, void *a5, uint64_t a6)
{
  v12 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v12);
  v14 = (&v38[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_100010540(a6 + 96, v38);
  if (v39 != 9)
  {
    sub_100015124(v38);
    if ((a3 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_20:
    v31 = v12[5];
    v32 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v32 - 8) + 56))(v14 + v31, 1, 1, v32);
    v33 = *(a6 + 56);
    *v14 = a4;
    *(v14 + v12[6]) = v33;
    v34 = v12[7];
    v37 = *(a6 + 64);
    *(v14 + v34) = v37;
    *(v14 + v12[8]) = 0;
    type metadata accessor for TTRIShowSearchResultAssembly();

    swift_unknownObjectRetain();
    v35 = a4;
    v36 = sub_10037209C(v40, v14, a1, a2, a5, &off_100721070);
    *(*sub_10000C36C(v40, v41) + OBJC_IVAR____TtC9Reminders29TTRIShowSearchResultPresenter_didFinalizeSearchQuery) = a3 & 1;
    sub_10000B0D8(v40, v38);
    v39 = 9;
    sub_1003944FC(v38, v36);

    sub_100015124(v38);
    sub_10045164C(v14, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
LABEL_21:
    sub_100004758(v40);
    return;
  }

  sub_100005FD0(v38, v40);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = [Strong detailViewController];

    if (v17)
    {
      sub_10000C36C(v40, v41);
      swift_getObjectType();
      dispatch thunk of TTRShowSearchResultDataModelSourceType.searchTerm.getter();
      if (v18)
      {
      }

      v19 = *(*sub_10000C36C(v40, v41) + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
      if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
      {
        swift_getObjectType();
        dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
        swift_unknownObjectRelease();
      }

      sub_1004EF1A4(v19);
      TTRRemindersListEditingSessionProviderCapability.flushPendingSaves()();
      swift_getObjectType();

      dispatch thunk of TTRShowSearchResultDataModelSourceType.searchTerm.setter();
      *(*sub_10000C36C(v40, v41) + OBJC_IVAR____TtC9Reminders29TTRIShowSearchResultPresenter_didFinalizeSearchQuery) = a3 & 1;
      if (a3)
      {
        [*sub_10000C36C(v40 v41)];
        v20 = swift_unknownObjectWeakLoadStrong();
        if (v20)
        {
          v21 = v20;
          sub_1002FB7EC(1);
          v22 = sub_100341598();
          sub_10001A06C(v22);
        }

        v23 = swift_unknownObjectWeakLoadStrong();
        if (!v23 || (v24 = v23, v25 = [v23 traitCollection], v24, v26 = objc_msgSend(v25, "horizontalSizeClass"), v25, v26 != 1))
        {
          [v17 becomeFirstResponder];
        }
      }

      goto LABEL_21;
    }
  }

  sub_100004758(v40);
  if (a3)
  {
    goto LABEL_20;
  }

LABEL_18:
  v27 = swift_unknownObjectWeakLoadStrong();
  if (!v27)
  {
    goto LABEL_20;
  }

  v28 = v27;
  v29 = [v27 traitCollection];

  v30 = [v29 horizontalSizeClass];
  if (v30 != 1)
  {
    goto LABEL_20;
  }
}

id sub_10044F94C(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100058000(&qword_100776A40);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_100058000(&qword_100776A48);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_tableDataController] = 0;
  a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_autoBeginEditingPerformed] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___badgeSection] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___badgeCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___nameCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___filtersSection] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___filtersCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___listTypeCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___editFiltersCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___colorsSection] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___colorsCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___emblemsSection] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___emblemsCell] = 0;
  static TTRHelpAnchor.IOSHelpTopic.defaultVersion.getter();
  TTRHelpAnchor.IOSHelpTopic.init(identifier:helpTopicID:version:)();
  v11 = type metadata accessor for TTRHelpAnchor.IOSHelpTopic();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = type metadata accessor for TTRHelpAnchor.MacOSHelpAnchor();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  TTRHelpAnchor.init(iOSHelpTopic:macOSHelpAnchor:)();
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___makeListIntoCustomSmartListSection] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___makeListIntoCustomSmartListActionCell] = 0;
  v13 = &a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter];
  *v13 = a1;
  v13[1] = &off_100716718;
  v15.receiver = a2;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
}

void *sub_10044FC24(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_100058000(&qword_10077FE60);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10062D3F0;
  *(v10 + 32) = a2;
  *(v10 + 40) = &off_1007166B8;
  v44 = a5;

  if (a3)
  {
    sub_10037373C(a3);

    v11 = a4;
  }

  else
  {
    v11 = 0;
    a5 = 0;
  }

  *(v10 + 48) = v11;
  *(v10 + 56) = a5;
  sub_100058000(&qword_10077FE68);
  sub_100058000(&qword_10077FE70);
  sub_10000E188(&qword_10077FE78, &qword_10077FE68);
  v12 = Sequence.removingNils<A>()();

  v13 = type metadata accessor for TTRIListDetailContainerRouter();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45[3] = v13;
  v45[4] = &off_100714510;
  v45[0] = v14;
  type metadata accessor for TTRIListDetailContainerPresenter();
  v15 = swift_allocObject();
  v16 = sub_10000AE84(v45, v13);
  __chkstk_darwin(v16);
  v18 = (v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v15[9] = v13;
  v15[10] = &off_100714510;
  v15[6] = v20;
  v15[3] = 0;
  swift_unknownObjectWeakInit();
  v15[5] = 0;
  swift_unknownObjectWeakInit();
  v15[11] = v12;

  sub_100004758(v45);
  sub_100058000(&qword_10077FE80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  v22._countAndFlagsBits = 0xD000000000000013;
  v23._countAndFlagsBits = 0x7473694C2077654ELL;
  v22._object = 0x80000001006737D0;
  v24._object = 0x80000001006737F0;
  v23._object = 0xE800000000000000;
  v24._countAndFlagsBits = 0xD00000000000001ELL;
  v25 = TTRLocalizedString(_:value:comment:)(v22, v23, v24);
  *(inited + 32) = 7824750;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v25;
  *(inited + 64) = a1;
  if (a3)
  {
    sub_10037373C(a3);
    v26 = a1;
    v27._countAndFlagsBits = 0xD000000000000019;
    v27._object = 0x8000000100683020;
    v28._object = 0x80000001006737F0;
    v29._countAndFlagsBits = 0x6574616C706D6554;
    v29._object = 0xE900000000000073;
    v28._countAndFlagsBits = 0xD00000000000001ELL;
    v30 = TTRLocalizedString(_:value:comment:)(v27, v29, v28);
    v31 = a3;
    inited = sub_1005476A0(1, 2, 1, inited);
    swift_unknownObjectRelease();

    *(inited + 16) = 2;
    *(inited + 72) = 0x6574616C706D6574;
    *(inited + 80) = 0xE900000000000073;
    *(inited + 88) = v30;
    *(inited + 104) = v31;
  }

  else
  {
    v32 = a1;
  }

  v33 = objc_allocWithZone(type metadata accessor for TTRIListDetailContainerViewController()) + OBJC_IVAR____TtC9Reminders37TTRIListDetailContainerViewController_presenter;
  *v33 = v15;
  v33[1] = &off_10072B858;

  v34 = sub_1004069E8(inited, 0);
  v15[3] = &off_1007192B8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v35 = [v34 presentationController];
  if (v35)
  {
    v36 = v35;
    [v35 setDelegate:v34];
  }

  v37 = *(v12 + 16);
  if (v37)
  {
    v43[1] = v14;
    v44 = v12;
    v38 = (v12 + 40);
    do
    {
      v39 = *v38;
      ObjectType = swift_getObjectType();
      v41 = *(v39 + 16);

      swift_unknownObjectRetain();
      v41(v15, &off_10072B838, ObjectType, v39);
      swift_unknownObjectRelease();
      v38 += 2;
      --v37;
    }

    while (v37);
  }

  return v34;
}

void *sub_10045015C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v6 = type metadata accessor for TTRTemplatesListStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [*(a1 + 16) store];
  v30 = sub_100453854(v10, a1, 0, a2, &off_100727CC0);
  v12 = v11;

  v13 = *(a1 + 24);
  v14 = [v13 capabilities];
  v15 = [v14 supportsTemplates];

  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (v15)
  {
    (*(v7 + 104))(v9, enum case for TTRTemplatesListStyle.listCreation(_:), v6);
    v17 = sub_1004D06B4(v9, v13, v28, v29);
    v18 = v19;
    v21 = v20;
    (*(v7 + 8))(v9, v6);
    v16 = *(v21 + 8);
    v22 = v17;
    swift_unknownObjectRetain();
  }

  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v24 = v30;
  v25 = sub_1003731D0(v30, v12, v17, v18, v16, ObjectType, &off_1007166B8);
  swift_unknownObjectRelease();
  sub_100053470(v17);
  sub_100053470(v17);

  return v25;
}

void *sub_100450394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRIListSharingRouter();
  v17[3] = v8;
  v17[4] = &off_100727A40;
  v17[0] = a2;
  type metadata accessor for TTRIListSharingPresenter();
  v9 = swift_allocObject();
  v10 = sub_10000AE84(v17, v8);
  __chkstk_darwin(v10);
  v12 = (&v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v9[12] = v8;
  v9[13] = &off_100727A40;
  v9[9] = v14;
  v9[3] = 0;
  swift_unknownObjectWeakInit();
  v9[5] = 0;
  swift_unknownObjectWeakInit();
  v9[16] = 0;
  v9[6] = 0;
  v9[7] = a1;
  v9[8] = &off_100727170;
  v9[14] = a3;
  v9[15] = a4;
  sub_100004758(v17);
  return v9;
}

void sub_1004504F8(void *a1, uint64_t a2)
{
  v4 = [a1 store];
  v5 = [a1 objectID];
  v18[0] = 0;
  v6 = [v4 fetchListWithObjectID:v5 error:v18];

  if (v6)
  {
    v7 = v18[0];
    v8 = sub_100450768(v6, a2, [v6 isOwnedByMe] ^ 1, &off_100727B80);
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = [Strong presentedViewController];
      if (v11)
      {
        v12 = v11;
        v13 = swift_allocObject();
        *(v13 + 16) = v10;
        *(v13 + 24) = v8;
        *(v13 + 32) = 1;
        v18[4] = sub_10023A490;
        v18[5] = v13;
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 1107296256;
        v18[2] = sub_10001047C;
        v18[3] = &unk_100728860;
        v14 = _Block_copy(v18);
        v15 = v10;
        v16 = v8;

        [v12 dismissViewControllerAnimated:1 completion:v14];

        _Block_release(v14);
        return;
      }

      [v10 presentViewController:v8 animated:1 completion:0];
    }
  }

  else
  {
    v17 = v18[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

id sub_100450768(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(TTRUndoManager);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithDebugIdentifier:v7];

  type metadata accessor for TTRListSharingInteractor();
  swift_allocObject();
  v9 = v8;
  v10 = sub_10041BB64(a1, v9);
  type metadata accessor for TTRIListSharingRouter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRListSharingContactProvider();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  swift_unknownObjectWeakInit();
  v13 = [objc_opt_self() defaultProvider];
  v14 = [v13 contactStore];

  *(v12 + 32) = v14;
  v15 = v9;

  v16 = sub_100450394(v10, v11, v15, v12);
  type metadata accessor for TTRIListSharingViewController();
  sub_10001F128(&qword_10076BF48, type metadata accessor for TTRIListSharingViewController);
  static TTRTypedController<>.instantiateFromStoryboard(with:)();

  v17 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v19];
  v10[3] = &off_100726848;
  swift_unknownObjectWeakAssign();

  v16[3] = &off_100715958;
  swift_unknownObjectWeakAssign();

  v16[5] = a4;
  swift_unknownObjectWeakAssign();
  *(v12 + 24) = &off_100726838;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();

  return v17;
}

void sub_100450A40(char a1, void *a2, uint64_t a3)
{
  type metadata accessor for TTRUserDefaults();
  v6 = static TTRUserDefaults.appUserDefaults.getter();
  v7 = TTRUserDefaults.showUpgradeWhenICloudSyncEnabled.getter();

  if (v7)
  {
    if (qword_100767230 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003E30(v8, qword_100780A58);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "showWelcomeScreen: Showing upgrade screen because iCloud sync was enabled since last app start.", v11, 2u);
    }

    v12 = static TTRUserDefaults.appUserDefaults.getter();
    TTRUserDefaults.showUpgradeWhenICloudSyncEnabled.setter();
  }

  v16 = sub_100450BD0(a3, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = a1 & 1;
    v15 = Strong;
    [Strong presentViewController:v16 animated:v14 completion:0];
  }
}

id sub_100450BD0(uint64_t a1, void *a2)
{
  type metadata accessor for TTRWelcomeNavigationInteractor();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v4 = type metadata accessor for TTRIWelcomeNavigationRouter();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21[3] = v4;
  v21[4] = &off_10072CC28;
  v21[0] = v5;
  type metadata accessor for TTRIWelcomeNavigationPresenter();
  v6 = swift_allocObject();
  v7 = sub_10000AE84(v21, v4);
  __chkstk_darwin(v7);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v6[12] = v4;
  v6[13] = &off_10072CC28;
  v6[9] = v11;
  v6[3] = 0;
  swift_unknownObjectWeakInit();
  v6[5] = 0;
  swift_unknownObjectWeakInit();
  v6[7] = v3;
  v6[8] = &off_100729DC8;
  v6[6] = a2;

  sub_10012E7EC(a2);
  sub_100004758(v21);
  if (a2 == 1)
  {
    v12 = sub_1005AD684(v6, &off_100729E78);
  }

  else
  {
    v12 = sub_1004F9328(v6, &off_100729EA0, a2);
  }

  v13 = v12;
  swift_unknownObjectRelease();
  v14 = type metadata accessor for TTRIWelcomeNavigationViewController();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC9Reminders35TTRIWelcomeNavigationViewController_presenter];
  *v16 = v6;
  *(v16 + 1) = &off_100729ED8;
  v20.receiver = v15;
  v20.super_class = v14;

  v17 = objc_msgSendSuper2(&v20, "initWithRootViewController:", v13);

  *(v3 + 24) = &off_100729ED0;
  swift_unknownObjectWeakAssign();

  v6[3] = &off_10071DBE0;
  swift_unknownObjectWeakAssign();
  v6[5] = &off_100721018;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();

  return v17;
}

uint64_t sub_100450E7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[1] = a4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for REMNavigationSpecifier();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(sub_100058000(&unk_100793000) + 48);
  *v13 = [a1 objectID];
  v15 = enum case for REMNavigationSpecifier.ListPathSpecifier.DetailSection.none(_:);
  v16 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  v17 = enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:);
  v18 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  (*(*(v18 - 8) + 104))(&v13[v14], v17, v18);
  (*(v11 + 104))(v13, enum case for REMNavigationSpecifier.list(_:), v10);
  if (qword_100767100 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100003E30(v19, qword_100777F30);
  REMNavigationSpecifier.url.getter();
  sub_1003F9C58(0x73746E756F636341, 0xED00007473694C20, 0x746544207473694CLL, 0xEB000000006C6961, v9);
  (*(v7 + 8))(v9, v6);
  type metadata accessor for TTRListDetailAssembly.ListComponentsCreator();
  swift_initStackObject();
  v20 = [a1 saveRequest];
  v21 = [v20 store];

  v22 = sub_10044DB08(v21, a1, 1, a2, &off_100727CC0);
  v24 = v23;

  v25 = v22;

  v26 = sub_10044FC24(v25, v24, 0, 0, 0);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    [Strong presentViewController:v26 animated:1 completion:0];

    v26 = v28;
  }

  return (*(v11 + 8))(v13, v10);
}

void sub_100451264(void *a1, uint64_t a2)
{
  type metadata accessor for TTRListDetailAssembly.CustomSmartListComponentsCreator();
  swift_initStackObject();
  v4 = [a1 saveRequest];
  v5 = [v4 store];

  v6 = sub_10044E000(v5, a1, 1, a2, &off_100727CC0);
  v8 = v7;

  v9 = v6;

  v10 = sub_10044FC24(v9, v8, 0, 0, 0);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    [Strong presentViewController:v10 animated:1 completion:0];
  }
}

uint64_t sub_100451390(void *a1, char a2, void *a3)
{
  v6 = [a1 isGroup];
  sub_10000C36C(a3 + 6, a3[9]);
  if (v6)
  {
    sub_100394170(a1, a3, v8);
  }

  else
  {
    sub_100393888(a1, a3, &off_100721110, a2 & 1, v8);
  }

  return sub_100004758(v8);
}

uint64_t sub_100451434(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = sub_10000C36C((a3 + 48), *(a3 + 72));
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = *v13;
  v16 = *(*v13 + 56);
  sub_10000794C(v12, v9 + v7[7], &unk_10076BB50);
  *v9 = a2;
  v17 = v7[8];
  v22 = *(v15 + 64);
  v18 = v22;
  *(v9 + v17) = v16;
  *(v9 + v7[9]) = v18;
  *(v9 + v7[10]) = 0;

  swift_unknownObjectRetain();
  v19 = a2;
  v20 = sub_10056D524(v25, v9, a1, a3);
  sub_10000B0D8(v25, v23);
  v24 = 12;
  sub_1003944FC(v23, v20);

  sub_100015124(v23);
  sub_100004758(v25);
  sub_10045164C(v9, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  return sub_1000079B4(v12, &unk_10076BB50);
}

uint64_t sub_10045164C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004516B4(uint64_t a1, void *a2, int a3, void *a4)
{
  v108 = a3;
  v110 = a2;
  v6 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v6);
  v109 = (&v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100058000(&unk_10076BB50);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  *&v107 = &v106 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v106 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v106 - v18;
  __chkstk_darwin(v17);
  v21 = &v106 - v20;
  v22 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v25, a1, v22);
  v26 = (*(v23 + 88))(v25, v22);
  if (v26 == enum case for TTRListType.PredefinedSmartListType.today(_:))
  {
    v27 = sub_10000C36C(a4 + 6, a4[9]);
    v28 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v28 - 8) + 56))(v21, 1, 1, v28);
    v29 = *v27;
    swift_beginAccess();
    sub_100010540(v29 + 96, &v111);
    if (v114 == 6)
    {
      sub_100005FD0(&v111, v115);
      v30 = v116;
      v31 = v117;
      v32 = sub_10000C36C(v115, v116);
      sub_1003982D4(v32, v29, v30, v31);
      sub_1000079B4(v21, &unk_10076BB50);
      return sub_100004758(v115);
    }

    sub_100015124(&v111);
    v39 = *(v29 + 56);
    v40 = v109;
    sub_10000794C(v21, v109 + v6[5], &unk_10076BB50);
    v41 = v110;
    *v40 = v110;
    v42 = v6[6];
    v107 = *(v29 + 64);
    v43 = v107;
    *(v40 + v42) = v39;
    *(v40 + v6[7]) = v43;
    *(v40 + v6[8]) = v108 & 1;
    type metadata accessor for TTRIShowTodayAssembly();

    swift_unknownObjectRetain();
    v44 = v41;
    v45 = sub_100323FE4(v115, v40, a4);
    v47 = v116;
    v46 = v117;
    v48 = sub_10000C36C(v115, v116);
    v112 = v47;
    v113 = *(v46 + 8);
    v49 = sub_1000317B8(&v111);
    (*(*(v47 - 8) + 16))(v49, v48, v47);
    v114 = 6;
    sub_1003944FC(&v111, v45);

    sub_10045164C(v40, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
    v50 = v21;
    goto LABEL_12;
  }

  if (v26 == enum case for TTRListType.PredefinedSmartListType.scheduled(_:))
  {
    v33 = sub_10000C36C(a4 + 6, a4[9]);
    v34 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v34 - 8) + 56))(v19, 1, 1, v34);
    v35 = *v33;
    swift_beginAccess();
    sub_100010540(v35 + 96, &v111);
    if (v114 == 3)
    {
      sub_100005FD0(&v111, v115);
      v36 = v116;
      v37 = v117;
      v38 = sub_10000C36C(v115, v116);
      sub_1003982D4(v38, v35, v36, v37);
      sub_1000079B4(v19, &unk_10076BB50);
      return sub_100004758(v115);
    }

    sub_100015124(&v111);
    v58 = *(v35 + 56);
    v59 = v109;
    sub_10000794C(v19, v109 + v6[5], &unk_10076BB50);
    v60 = v110;
    *v59 = v110;
    v61 = v6[6];
    v107 = *(v35 + 64);
    v62 = v107;
    *(v59 + v61) = v58;
    *(v59 + v6[7]) = v62;
    *(v59 + v6[8]) = v108 & 1;
    type metadata accessor for TTRIShowScheduledAssembly();
    v63 = v60;

    swift_unknownObjectRetain();
    v64 = sub_100182D54(v115, v59, a4);
    v66 = v116;
    v65 = v117;
    v67 = sub_10000C36C(v115, v116);
    v112 = v66;
    v113 = *(v65 + 8);
    v68 = sub_1000317B8(&v111);
    (*(*(v66 - 8) + 16))(v68, v67, v66);
    v114 = 3;
    sub_1003944FC(&v111, v64);

    sub_10045164C(v59, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
    v50 = v19;
LABEL_12:
    sub_1000079B4(v50, &unk_10076BB50);
    sub_100015124(&v111);
    return sub_100004758(v115);
  }

  if (v26 == enum case for TTRListType.PredefinedSmartListType.all(_:))
  {
    v51 = a4;
    v52 = sub_10000C36C(a4 + 6, a4[9]);
    v53 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v53 - 8) + 56))(v16, 1, 1, v53);
    v54 = *v52;
    swift_beginAccess();
    sub_100010540(v54 + 96, &v111);
    if (v114 == 5)
    {
      sub_100005FD0(&v111, v115);
      v55 = v116;
      v56 = v117;
      v57 = sub_10000C36C(v115, v116);
      sub_1003982D4(v57, v54, v55, v56);
      sub_1000079B4(v16, &unk_10076BB50);
      return sub_100004758(v115);
    }

    sub_100015124(&v111);
    v78 = *(v54 + 56);
    v79 = v109;
    sub_10000794C(v16, v109 + v6[5], &unk_10076BB50);
    v80 = v110;
    *v79 = v110;
    v81 = v6[6];
    v107 = *(v54 + 64);
    v82 = v107;
    *(v79 + v81) = v78;
    *(v79 + v6[7]) = v82;
    *(v79 + v6[8]) = v108 & 1;
    type metadata accessor for TTRIShowAllRemindersAssembly();
    v83 = v80;

    swift_unknownObjectRetain();
    v84 = sub_1003F1080(v115, v79, v51);
    v86 = v116;
    v85 = v117;
    v87 = sub_10000C36C(v115, v116);
    v112 = v86;
    v113 = *(v85 + 8);
    v88 = sub_1000317B8(&v111);
    (*(*(v86 - 8) + 16))(v88, v87, v86);
    v114 = 5;
    sub_1003944FC(&v111, v84);

    sub_10045164C(v79, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
    v50 = v16;
    goto LABEL_12;
  }

  if (v26 == enum case for TTRListType.PredefinedSmartListType.flagged(_:))
  {
    v70 = a4;
    v71 = sub_10000C36C(a4 + 6, a4[9]);
    v72 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v73 = v107;
    (*(*(v72 - 8) + 56))(v107, 1, 1, v72);
    v74 = *v71;
    swift_beginAccess();
    sub_100010540(v74 + 96, &v111);
    if (v114 == 4)
    {
      sub_100005FD0(&v111, v115);
      v75 = v116;
      v76 = v117;
      v77 = sub_10000C36C(v115, v116);
      sub_1003982D4(v77, v74, v75, v76);
      sub_1000079B4(v73, &unk_10076BB50);
      return sub_100004758(v115);
    }

    sub_100015124(&v111);
    v91 = *(v74 + 56);
    v92 = v109;
    sub_10000794C(v73, v109 + v6[5], &unk_10076BB50);
    v93 = v110;
    *v92 = v110;
    v94 = v6[6];
    v106 = *(v74 + 64);
    v95 = v106;
    *(v92 + v94) = v91;
    *(v92 + v6[7]) = v95;
    *(v92 + v6[8]) = v108 & 1;
    type metadata accessor for TTRIShowFlaggedAssembly();
    v96 = v93;

    swift_unknownObjectRetain();
    v97 = sub_10028D05C(v115, v92, v70);
    v99 = v116;
    v98 = v117;
    v100 = sub_10000C36C(v115, v116);
    v112 = v99;
    v113 = *(v98 + 8);
    v101 = sub_1000317B8(&v111);
    (*(*(v99 - 8) + 16))(v101, v100, v99);
    v114 = 4;
    sub_1003944FC(&v111, v97);

    sub_10045164C(v92, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
    v50 = v73;
    goto LABEL_12;
  }

  if (v26 == enum case for TTRListType.PredefinedSmartListType.assigned(_:))
  {
    v89 = sub_10000C36C(a4 + 6, a4[9]);
    v90 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v90 - 8) + 56))(v11, 1, 1, v90);
    sub_10044ECFC(v110, v11, a4, *v89);
    return sub_1000079B4(v11, &unk_10076BB50);
  }

  if (v26 == enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:))
  {
    v102 = sub_10000C36C(a4 + 6, a4[9]);
    v103 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v103 - 8) + 56))(v11, 1, 1, v103);
    sub_10044EAD8(v110, v11, a4, *v102);
    return sub_1000079B4(v11, &unk_10076BB50);
  }

  if (v26 == enum case for TTRListType.PredefinedSmartListType.completed(_:))
  {
    v104 = sub_10000C36C(a4 + 6, a4[9]);
    v105 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v105 - 8) + 56))(v11, 1, 1, v105);
    sub_10044EF20(v110, v11, a4, *v104);
    return sub_1000079B4(v11, &unk_10076BB50);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_100452320(char a1)
{
  v3 = *(type metadata accessor for TTRAccountsListsViewModel.List() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_10043C410(a1, v4, v5, v6);
}

uint64_t sub_100452454(char a1)
{
  v2 = a1 & 1;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_100783140);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for REMAccountsListDataView.Model();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isEditing);
  if (v16 != v2)
  {
    *(v1 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isEditing) = v2;
    v17 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel;
    swift_beginAccess();
    sub_10000794C(v1 + v17, v7, &qword_100783140);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      return sub_1000079B4(v7, &qword_100783140);
    }

    else
    {
      v27 = *(v9 + 32);
      v27(v15, v7, v8);
      sub_100003540(0, &qword_100777780);
      v28 = static OS_dispatch_queue.main.getter();
      v18 = swift_allocObject();
      swift_weakInit();
      (*(v9 + 16))(v12, v15, v8);
      v19 = (*(v9 + 80) + 24) & ~*(v9 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      v27((v20 + v19), v12, v8);
      *(v20 + v19 + v10) = v16;
      aBlock[4] = sub_100452988;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001047C;
      aBlock[3] = &unk_100728158;
      v21 = _Block_copy(aBlock);

      v22 = v30;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_10001F128(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100058000(&qword_100780A50);
      sub_10000E188(&qword_10076B7E0, &qword_100780A50);
      v23 = v32;
      v24 = v29;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v25 = v28;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v21);

      (*(v34 + 8))(v23, v24);
      (*(v31 + 8))(v22, v33);
      return (*(v9 + 8))(v15, v8);
    }
  }

  return result;
}

uint64_t sub_100452988()
{
  v1 = *(type metadata accessor for REMAccountsListDataView.Model() - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v4 = v3[*(v1 + 64)];

  return sub_10042B560(v2, v3, v4);
}

uint64_t sub_100452A3C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  return a2(a1, ObjectType, v5);
}

uint64_t sub_100452A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100783148);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100452B0C(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

void sub_100452B28(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100459530(a1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2 && EnumCaseMultiPayload)
  {
    (*(v3 + 32))(v8, v11, v2);
    (*(v3 + 16))(v6, v8, v2);
    v13 = (*(v3 + 88))(v6, v2);
    if (v13 == enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
    {
      v14 = *(v3 + 8);
      v14(v8, v2);
      v14(v6, v2);
    }

    else if (v13 == enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
    {
      v15 = *(v3 + 8);
      v15(v8, v2);
      v15(v6, v2);
    }

    else
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100003E30(v16, qword_100782E90);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown pinnedListSelection type", 32, 2);
      __break(1u);
    }
  }

  else
  {
    sub_10045164C(v11, type metadata accessor for TTRIAccountsListsSelection);
  }
}

void sub_100452E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v5 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = sub_100058000(&unk_100771B40);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  v18 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100459530(a1, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    sub_10045164C(v20, type metadata accessor for TTRIAccountsListsSelection);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v6 + 32))(v11, v20, v5);
    (*(v6 + 16))(v9, v11, v5);
    v26 = (*(v6 + 88))(v9, v5);
    if (v26 == enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
    {
      v27 = *(v6 + 8);
      v27(v11, v5);
      v27(v9, v5);
      return;
    }

    if (v26 == enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
    {
      v28 = *(v6 + 8);
      v28(v11, v5);
      v28(v9, v5);
      return;
    }
  }

  else
  {
    a2 = *v20;
    if (!*(*v20 + 16))
    {

      v29 = type metadata accessor for TTRAccountsListsViewModel.Item();
      (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
      goto LABEL_17;
    }

    v22 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v17, a2 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v22);

    (*(v23 + 56))(v17, 0, 1, v22);
    sub_10000794C(v17, v15, &unk_100771B40);
    v24 = (*(v23 + 88))(v15, v22);
    if (v24 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
    {
      (*(v23 + 96))(v15, v22);
      v25 = type metadata accessor for UUID();
      (*(*(v25 - 8) + 8))(v15, v25);
LABEL_17:
      sub_1000079B4(v17, &unk_100771B40);
      return;
    }

    if (v24 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.account(_:))
    {
LABEL_16:
      (*(v23 + 8))(v15, v22);
      goto LABEL_17;
    }

    if (v24 == enum case for TTRAccountsListsViewModel.Item.list(_:))
    {
      (*(v23 + 8))(v15, v22);
      sub_1000079B4(v17, &unk_100771B40);
      return;
    }

    if (v24 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
      goto LABEL_16;
    }

    if (v24 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      goto LABEL_17;
    }

    (*(v23 + 8))(v15, v22);
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100003E30(v30, qword_100782E90);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2);
    __break(1u);
  }

  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100003E30(v31, qword_100782E90);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818(a2, v33, 2);
  __break(1u);
}

void sub_10045356C(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100459530(a1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v8, v11, v2);
      (*(v3 + 16))(v6, v8, v2);
      v13 = (*(v3 + 88))(v6, v2);
      if (v13 == enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
      {
        v14 = *(v3 + 8);
        v14(v8, v2);
        v14(v6, v2);
      }

      else if (v13 == enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
      {
        v15 = *(v3 + 8);
        v15(v8, v2);
        v15(v6, v2);
      }

      else
      {
        if (qword_1007672D8 != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        sub_100003E30(v16, qword_100782E90);
        sub_100008E04(_swiftEmptyArrayStorage);
        sub_100008E04(_swiftEmptyArrayStorage);
        sub_1003F9818("Unknown pinnedListSelection", 27, 2);
        __break(1u);
      }
    }

    else
    {
    }
  }

  else
  {
    sub_10045164C(v11, type metadata accessor for TTRIAccountsListsSelection);
  }
}

id sub_100453854(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v55 = a4;
  v8 = type metadata accessor for TTRRemindersListListType();
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v51 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRListDetailViewModel();
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v50 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(TTRUndoManager);
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 initWithDebugIdentifier:v14];

  v16 = type metadata accessor for TTRUserDefaults();
  v17 = static TTRUserDefaults.appUserDefaults.getter();
  v18 = type metadata accessor for TTRSmartListVersionWarningInteractor();
  v19 = swift_allocObject();
  v19[5] = v16;
  v19[6] = &protocol witness table for TTRUserDefaults;
  v19[2] = v17;
  v19[7] = 20;
  v61 = v18;
  v62 = &protocol witness table for TTRSmartListVersionWarningInteractor;
  v60[0] = v19;
  sub_10000B0D8(v60, v59);
  swift_retain_n();
  v20 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for TTRListDetailCreationEditor();
  v21 = swift_allocObject();
  v57 = v16;
  v58 = &protocol witness table for TTRUserDefaults;
  *&v56 = v20;
  *(v21 + 16) = a2;
  sub_100005FD0(v59, v21 + 32);
  *(v21 + 24) = v15;
  sub_100005FD0(&v56, v21 + 72);
  v22 = v15;

  sub_100004758(v60);

  sub_100058000(&qword_100783170);
  swift_allocObject();
  v23 = v22;

  v25 = sub_100422838(v24, v23);
  v26 = type metadata accessor for TTRInteractorAsyncEditsCommitter();
  v27 = static TTRInteractorEditsCommitting<>.async.getter();
  v61 = v26;
  v62 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
  v60[0] = v27;
  v28 = objc_allocWithZone(type metadata accessor for TTRListToCustomSmartListConverter());
  v29 = a1;
  v30 = TTRListToCustomSmartListConverter.init(store:committer:)();
  v31 = type metadata accessor for TTRIListDetailRouter();
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v32 + 24) = v19;
  type metadata accessor for TTRListDetailCreationViewModelSource();
  v33 = swift_allocObject();
  v61 = v31;
  v62 = &off_10071E810;
  v60[0] = v32;
  sub_100058000(&qword_100783178);
  v34 = swift_allocObject();
  *(v34 + *(*v34 + 264) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v34 + *(*v34 + 272) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v34 + *(*v34 + 280) + 8) = 0;
  swift_unknownObjectWeakInit();
  v35 = (v34 + *(*v34 + 312));
  *v35 = 0;
  v35[1] = 0;
  v36 = (v34 + *(*v34 + 304));
  *v36 = v30;
  v36[1] = &protocol witness table for TTRListToCustomSmartListConverter;
  sub_10000B0D8(v60, v34 + *(*v34 + 296));
  *(v34 + *(*v34 + 288)) = a3 & 1;
  v34[2] = v25;
  v34[3] = v33;
  v48 = v33;
  v34[4] = v23;

  v49 = v23;

  v37 = v30;

  v39 = v50;
  TTRListDetailViewModel.init(changeItem:)(v38, v50);
  v40 = *(v11 + 76);
  v41 = v51;
  v42 = v52;
  v43 = v53;
  (*(v52 + 16))(v51, &v39[v40], v53);
  sub_10045164C(v39, type metadata accessor for TTRListDetailViewModel);
  (*(v42 + 32))(v34 + *(*v34 + 136), v41, v43);
  sub_100004758(v60);
  v44 = objc_allocWithZone(type metadata accessor for TTRIListDetailViewController());

  v46 = sub_10044F94C(v45, v44);

  swift_beginAccess();
  *(v25 + 24) = &off_100716708;
  swift_unknownObjectWeakAssign();

  *(v34 + *(*v34 + 264) + 8) = &off_10071E838;
  swift_unknownObjectWeakAssign();
  *(v34 + *(*v34 + 272) + 8) = v54;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v46;
}

uint64_t sub_100453EC0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(type metadata accessor for TTRIPopoverAnchor() - 8);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v8);
}

uint64_t sub_100453F4C()
{
  v0 = sub_100058000(&qword_10077FDA8);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_100058000(&unk_10076B870);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_100058000(&unk_10076B880);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_100782E90);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  TTRAccountsListsViewModel.accountCollection.getter();

  sub_100015E68(v5);
  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    return sub_1000079B4(v5, &unk_10076B870);
  }

  (*(v11 + 32))(v13, v5, v10);
  v16 = type metadata accessor for TTRRemindersListListType();
  (*(*(v16 - 8) + 56))(v2, 1, 1, v16);
  sub_100426520(v13, 0, 0, v2);
  sub_1000079B4(v2, &qword_10077FDA8);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1004542D4()
{
  v0 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v20 = *(v0 - 8);
  v21 = v0;
  __chkstk_darwin(v0);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100058000(&unk_10076B880);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v7 = sub_100058000(&qword_100783288);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003E30(v13, qword_100782E90);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  TTRAccountsListsViewModel.accountCollection.getter();

  v14 = sub_100058000(&qword_100783290);
  swift_getOpaqueTypeConformance2();
  Sequence.firstMap<A>(_:)();
  (*(v4 + 8))(v6, v3);
  sub_10000794C(v12, v10, &qword_100783288);
  if ((*(*(v14 - 8) + 48))(v10, 1, v14) == 1)
  {
    sub_1000079B4(v12, &qword_100783288);
    v12 = v10;
  }

  else
  {
    v15 = *&v10[*(v14 + 48)];
    v17 = v20;
    v16 = v21;
    (*(v20 + 32))(v2, v10, v21);
    sub_100426B94(v2, v15);

    (*(v17 + 8))(v2, v16);
  }

  return sub_1000079B4(v12, &qword_100783288);
}

uint64_t sub_100454688(void *a1)
{
  v1 = [a1 items];
  sub_100003540(0, &qword_10076BAC0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = type metadata accessor for TTRIRemindersListDragReminder();
      v18 = 0xD000000000000029;
      v19 = 0x8000000100677B80;
      AnyHashable.init<A>(_:)();
      UIDragItem.localObject<A>(ofType:forKey:)();
      sub_100077654(v20);
      v9 = v21;
      if (!v21)
      {

        return 0;
      }

      v10 = *&v21[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder];
      v16 = v6;
      v11 = i;
      v12 = v21[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_isFromRecentlyDeletedList];
      v13 = objc_allocWithZone(v8);
      v13[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder____lazy_storage___hasSubtasks] = 2;
      *&v13[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder] = v10;
      v13[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_isFromRecentlyDeletedList] = v12;
      i = v11;
      v17.receiver = v13;
      v17.super_class = v8;
      v14 = v10;

      ++v4;
      if (v7 == v11)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 1;
}

id sub_1004548C8()
{
  v0 = sub_100058000(&unk_100775660);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v19 - v4;
  URL.init(string:)();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v7 = result;
    sub_10000794C(v5, v3, &unk_100775660);
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    v11 = 0;
    if ((*(v9 + 48))(v3, 1, v8) != 1)
    {
      URL._bridgeToObjectiveC()(v10);
      v11 = v12;
      (*(v9 + 8))(v3, v8);
    }

    sub_100008E04(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v14 = [v7 openSensitiveURL:v11 withOptions:isa];

    if ((v14 & 1) == 0)
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100003E30(v15, qword_100782E90);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "TTRIAccountsListsPresenter: Failed to open Settings to turn on iCloud for Reminders", v18, 2u);
      }
    }

    return sub_1000079B4(v5, &unk_100775660);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100454B84(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(id), void (*a5)(uint64_t))
{
  v20 = a4;
  v21 = a5;
  v9 = type metadata accessor for TTRRemindersListListType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRListDetailViewModel();
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  *(v5 + 4) = a3;

  v17 = a3;
  v18 = v20(v17);
  v21(v18);
  (*(v10 + 16))(v12, &v16[*(v14 + 76)], v9);
  sub_10045164C(v16, type metadata accessor for TTRListDetailViewModel);
  (*(v10 + 32))(&v5[*(*v5 + 136)], v12, v9);
  return v5;
}

void sub_100454D4C(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v68 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin(v8);
  v69 = (&v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for TTRAccountsListsViewModel.List();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v15 + 96))(v17, v14);
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 8))(v17, v19);
    return;
  }

  if (v18 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    goto LABEL_5;
  }

  if (v18 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    (*(v15 + 96))(v17, v14);
    v20 = v68;
    (*(v68 + 32))(v4, v17, v2);
    v21 = *(sub_100058000(&qword_1007693A0) + 48);
    v22 = v69;
    TTRAccountsListsViewModel.SmartList.type.getter();
    v23 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v23 - 8) + 56))(v22 + v21, 1, 1, v23);
    v25 = v70;
    v24 = v71;
    (*(v70 + 104))(v22, enum case for TTRUserActivityWindowSceneRestorationPayload.State.predefinedSmartListType(_:), v71);
    v26 = type metadata accessor for TTRIAccountsListsDragItem();
    v27 = objc_allocWithZone(v26);
    (*(v25 + 16))(v27 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsDragItem_listState, v22, v24);
    v74.receiver = v27;
    v74.super_class = v26;
    v28 = objc_msgSendSuper2(&v74, "init");
    (*(v25 + 8))(v22, v24);
    v29 = [objc_allocWithZone(NSItemProvider) initWithObject:v28];
    v30 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v29];

    sub_100058000(&qword_10076B780);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10062D420;
    *(v31 + 32) = v30;

    (*(v20 + 8))(v4, v2);
    return;
  }

  if (v18 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_5;
  }

  if (v18 == enum case for TTRAccountsListsViewModel.Item.list(_:))
  {
    (*(v15 + 96))(v17, v14);
    v32 = v13;
    (*(v11 + 32))(v13, v17, v10);
    v33 = *(sub_100058000(&qword_10076E920) + 48);
    v34 = TTRAccountsListsViewModel.List.objectID.getter();
    v35 = v69;
    *v69 = v34;
    v36 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v36 - 8) + 56))(v35 + v33, 1, 1, v36);
    v38 = v70;
    v37 = v71;
    (*(v70 + 104))(v35, enum case for TTRUserActivityWindowSceneRestorationPayload.State.selectedListID(_:), v71);
    v39 = type metadata accessor for TTRIAccountsListsDragItem();
    v40 = objc_allocWithZone(v39);
    (*(v38 + 16))(v40 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsDragItem_listState, v35, v37);
    v72.receiver = v40;
    v72.super_class = v39;
    v41 = objc_msgSendSuper2(&v72, "init");
LABEL_14:
    v47 = v41;
    (*(v38 + 8))(v35, v37);
    v48 = [objc_allocWithZone(NSItemProvider) initWithObject:v47];
    v49 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v48];

    sub_100058000(&qword_10076B780);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_10062D420;
    *(v50 + 32) = v49;

    (*(v11 + 8))(v32, v10);
    return;
  }

  if (v18 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {
    (*(v15 + 96))(v17, v14);
    v32 = v13;
    (*(v11 + 32))(v13, v17, v10);
    v42 = *(sub_100058000(&qword_10076E920) + 48);
    v43 = TTRAccountsListsViewModel.List.objectID.getter();
    v35 = v69;
    *v69 = v43;
    v44 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v44 - 8) + 56))(v35 + v42, 1, 1, v44);
    v38 = v70;
    v37 = v71;
    (*(v70 + 104))(v35, enum case for TTRUserActivityWindowSceneRestorationPayload.State.selectedCustomSmartListID(_:), v71);
    v45 = type metadata accessor for TTRIAccountsListsDragItem();
    v46 = objc_allocWithZone(v45);
    (*(v38 + 16))(v46 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsDragItem_listState, v35, v37);
    v75.receiver = v46;
    v75.super_class = v45;
    v41 = objc_msgSendSuper2(&v75, "init");
    goto LABEL_14;
  }

  if (v18 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    (*(v15 + 96))(v17, v14);
    v52 = v66;
    v51 = v67;
    (*(v66 + 32))(v7, v17, v67);
    v53 = *(sub_100058000(&qword_10076E920) + 48);
    v54 = TTRAccountsListsViewModel.Group.objectID.getter();
    v55 = v69;
    *v69 = v54;
    v56 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v56 - 8) + 56))(v55 + v53, 1, 1, v56);
    v58 = v70;
    v57 = v71;
    (*(v70 + 104))(v55, enum case for TTRUserActivityWindowSceneRestorationPayload.State.selectedListID(_:), v71);
    v59 = type metadata accessor for TTRIAccountsListsDragItem();
    v60 = objc_allocWithZone(v59);
    (*(v58 + 16))(v60 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsDragItem_listState, v55, v57);
    v73.receiver = v60;
    v73.super_class = v59;
    v61 = objc_msgSendSuper2(&v73, "init");
    (*(v58 + 8))(v55, v57);
    v62 = [objc_allocWithZone(NSItemProvider) initWithObject:v61];
    v63 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v62];

    sub_100058000(&qword_10076B780);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_10062D420;
    *(v64 + 32) = v63;

    (*(v52 + 8))(v7, v51);
    return;
  }

  if (v18 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
LABEL_5:
    (*(v15 + 8))(v17, v14);
  }

  else if (v18 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v18 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_100003E30(v65, qword_100782E90);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2);
    __break(1u);
  }
}

void sub_100455928(uint64_t a1)
{
  v38 = a1;
  v35 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRAccountsListsViewModel.List();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v7 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v36 = *(v10 - 8);
  v37 = v10;
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, v38, v13);
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
  {
    (*(v14 + 96))(v16, v13);
    v19 = v36;
    v18 = v37;
    v20 = v12;
    (*(v36 + 32))(v12, v16, v37);
    v21 = *(sub_100058000(&qword_1007693A0) + 48);
    TTRAccountsListsViewModel.SmartList.type.getter();
    v22 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v22 - 8) + 56))(&v9[v21], 1, 1, v22);
    v23 = v34;
    (*(v7 + 104))(v9, enum case for TTRUserActivityWindowSceneRestorationPayload.State.predefinedSmartListType(_:), v34);
    v24 = type metadata accessor for TTRIAccountsListsDragItem();
    v25 = objc_allocWithZone(v24);
    (*(v7 + 16))(v25 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsDragItem_listState, v9, v23);
    v39.receiver = v25;
    v39.super_class = v24;
    v26 = objc_msgSendSuper2(&v39, "init");
    (*(v7 + 8))(v9, v23);
    v27 = [objc_allocWithZone(NSItemProvider) initWithObject:v26];
    v28 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v27];

    sub_100058000(&qword_10076B780);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_10062D420;
    *(v29 + 32) = v28;

    (*(v19 + 8))(v20, v18);
  }

  else if (v17 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
  {
    (*(v14 + 96))(v16, v13);
    (*(v4 + 32))(v6, v16, v3);
    (*(v4 + 16))(v2, v6, v3);
    v30 = v33;
    v31 = v35;
    (*(v33 + 104))(v2, enum case for TTRAccountsListsViewModel.Item.list(_:), v35);
    sub_100454D4C(v2);
    (*(v30 + 8))(v2, v31);
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100003E30(v32, qword_100782E90);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2);
    __break(1u);
  }
}

uint64_t sub_100455F48(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRHashtagAssociationOperation() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TTRIPopoverAnchor() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10001AA38;

  return sub_1002A6034(a1, v10, v11, v12, v1 + v6, v1 + v9, v13);
}

uint64_t sub_1004560D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRHashtagAssociationOperation() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TTRIPopoverAnchor() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10001AA3C;

  return sub_1002A6034(a1, v10, v11, v12, v1 + v6, v1 + v9, v13);
}

Class sub_100456268(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRIPopoverAnchor() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_10043E47C(a1, v4, v5, v6, v7);
}

uint64_t sub_1004562E0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 88);
  ObjectType = swift_getObjectType();
  result = (*(v3 + 8))(ObjectType, v3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_100456378(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(type metadata accessor for TTRIPopoverAnchor() - 8);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v8);
}

uint64_t sub_100456404()
{
  v1 = type metadata accessor for TTRHashtagAssociationOperation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for TTRIPopoverAnchor();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_10045657C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA38;

  return sub_100440708(a1, v4, v5, v6);
}

BOOL sub_100456630(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRAccountsListsViewModel.List() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 25) & ~*(v3 + 80));

  return sub_100435864(a1, v4, v5, v6);
}

uint64_t sub_100456804(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

uint64_t sub_100456918(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100456A90(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRAccountsListsViewModel.List() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_100435BC8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100456B88(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRAccountsListsViewModel.List() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_10043594C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100456C80(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRAccountsListsViewModel.List() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_100436084(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100456D78()
{
  v1 = *(type metadata accessor for TTRAccountsListsInteractorDeleteArguments() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1004457B0(v2, v3);
}

uint64_t sub_100456E08()
{
  v1 = type metadata accessor for TTRListOrCustomSmartList();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for TTRAccountsListsViewModel.List();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100456F84(void (*a1)(uint64_t, uint64_t, uint64_t), void (*a2)(uint64_t, uint64_t))
{
  v5 = *(type metadata accessor for TTRListOrCustomSmartList() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TTRAccountsListsViewModel.List() - 8);
  return sub_100448190(*(v2 + 16), v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), a1, a2);
}

uint64_t sub_1004570B8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

uint64_t sub_100457170(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRAccountsListsViewModel.List() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1004470E0(a1, v4, v5, v6);
}

uint64_t sub_10045742C(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRAccountsListsViewModel.List() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_100447684(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100457524(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRAccountsListsViewModel.List() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_100447170(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10045761C(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRAccountsListsViewModel.List() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_100447970(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10045771C()
{
  sub_100058000(&qword_100783210);

  return sub_100448788();
}

char *sub_1004577D0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      result = [v1 isViewLoaded];
      if (result)
      {
        if (!*&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability])
        {
          __break(1u);
          return result;
        }

        v2 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v3 = swift_allocObject();
        *(v3 + 16) = 512;
        *(v3 + 24) = 0;
        *(v3 + 32) = 0;
        *(v3 + 40) = v2;

        TTRICollectionViewPresentationTreeManagementViewCapability.applyPresentationTree(with:completion:)();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100457918(uint64_t (*a1)(char *))
{
  v15 = a1;
  v2 = sub_100058000(&qword_100783140);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for REMAccountsListDataView.Model();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel;
  swift_beginAccess();
  sub_10000794C(v1 + v12, v7, &qword_100783140);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000079B4(v7, &qword_100783140);
  }

  (*(v9 + 32))(v11, v7, v8);
  if (v15(v11))
  {
    (*(v9 + 16))(v4, v11, v8);
    (*(v9 + 56))(v4, 0, 1, v8);
    swift_beginAccess();
    sub_10001AEBC(v4, v1 + v12);
    swift_endAccess();
    sub_10001AFE0(v11, 0, 2, 1);
  }

  return (*(v9 + 8))(v11, v8);
}

void sub_100457BA0()
{
  v1 = v0;
  if (![objc_opt_self() isInternalInstall])
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003E30(v8, qword_100782E90);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v5))
    {
      goto LABEL_12;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "didEncounterMigrationError. Not running internal install. Done";
    goto LABEL_11;
  }

  type metadata accessor for TTRUserDefaults();
  v2 = static TTRUserDefaults.appUserDefaults.getter();
  v3 = TTRUserDefaults.migrationFailureAlertShown.getter();

  if (v3)
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_100782E90);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v5))
    {
      goto LABEL_12;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "migrationFailureAlertShown is true, not showing dialog.";
LABEL_11:
    _os_log_impl(&_mh_execute_header, oslog, v5, v7, v6, 2u);

LABEL_12:

    return;
  }

  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_100782E90);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "migrationFailureAlertShown is false and running internal install. Showing dialog.", v12, 2u);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v13 + 72))(ObjectType, v13);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100457E78(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_100783140);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for REMAccountsListDataView.Model();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRCloudKitNetworkActivityMonitor.Activity();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v33 = v8;
  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_100782E90);
  (*(v11 + 16))(v13, a1, v10);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v34[0] = v19;
    *v18 = 136315138;
    v20 = TTRCloudKitNetworkActivityMonitor.Activity.description.getter();
    v31 = v7;
    v21 = v2;
    v23 = v22;
    (*(v11 + 8))(v13, v10);
    v24 = sub_100004060(v20, v23, v34);
    v2 = v21;
    v7 = v31;

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "TTRIAccountsListsPresenter interactor did update CK network activity {activity: %s}", v18, 0xCu);
    sub_100004758(v19);

    v6 = v30;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v25 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel;
  swift_beginAccess();
  sub_10000794C(v2 + v25, v6, &qword_100783140);
  v26 = v33;
  if ((*(v33 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000079B4(v6, &qword_100783140);
  }

  v28 = v32;
  (*(v26 + 32))(v32, v6, v7);
  sub_10001AFE0(v28, 0, 2, 1);
  return (*(v26 + 8))(v28, v7);
}

uint64_t sub_100458274(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  sub_10000C36C((v2 + 112), *(v2 + 136));
  sub_1002A5298(a2);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;

  sub_100084EC0(0, 0, v6, &unk_10063F340, v10);
}

uint64_t sub_1004583E4(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_10045842C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA3C;

  return sub_10044B278(a1, v4, v5, v6);
}

void sub_1004584E0()
{
  v1._object = 0x8000000100686D70;
  v2._object = 0x8000000100686D70;
  v1._countAndFlagsBits = 0x1000000000000015;
  v2._countAndFlagsBits = 0x1000000000000015;
  TTRLocalizedString(_:comment:)(v1, v2);
  v3._object = 0x8000000100686D90;
  v4._object = 0x8000000100686D90;
  v3._countAndFlagsBits = 0xD000000000000037;
  v4._countAndFlagsBits = 0xD000000000000037;
  TTRLocalizedString(_:comment:)(v3, v4);
  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  static TTRLocalizableStrings.Common.alertOKButton.getter();
  v7 = String._bridgeToObjectiveC()();

  v8 = [objc_opt_self() actionWithTitle:v7 style:0 handler:0];

  [v11 addAction:v8];
  sub_10000C36C((v0 + 112), *(v0 + 136));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong presentViewController:v11 animated:1 completion:0];
  }
}

void sub_100458690(uint64_t a1)
{
  v2 = type metadata accessor for TimeZone();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_100782E90);
  (*(v3 + 16))(v5, a1, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    sub_10001F128(&qword_1007756E8, &type metadata accessor for TimeZone);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_100004060(v11, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "TTRIAccountsListsPresenter: Set time zone override to timeZone: %{public}s", v9, 0xCu);
    sub_100004758(v10);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v15 = [objc_opt_self() daemonUserDefaults];
  TimeZone.identifier.getter();
  v16 = String._bridgeToObjectiveC()();

  [v15 setTimeZoneOverride:v16];
}

uint64_t sub_100458970()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004589B8()
{
  v1 = sub_100058000(&qword_100783180);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100458AB0(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(sub_100058000(&qword_100783180) - 8);
  sub_1004460F0(v1[2], v1[3], v1[4], v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80)), a1);
  return v4 & 1;
}

uint64_t sub_100458B2C(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_100458BC8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

void sub_100458C58(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRAccountsListsViewModel.Item() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_100442C54(v4, a1);
}

uint64_t sub_100458D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for TTRAccountsListsViewModel.Item() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_100441F68(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_100458E14(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRAccountsListsViewModel.Item() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10001AA38;

  return sub_1004421EC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100458F50(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64) + v5;

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 1, v4 | 7);
}

uint64_t sub_100459020()
{
  v1 = *(type metadata accessor for TTRAccountsListsInteractorDeleteArguments() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1004459A0(v2, v3);
}

Class sub_1004590B0(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRAccountsListsViewModel.Item() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_10043D624(a1, v1 + v4, v6, v7);
}

uint64_t sub_100459180(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

uint64_t sub_100459238(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10045934C(uint64_t (*a1)(void), void (*a2)(void), void (*a3)(void))
{
  v6 = a1(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 40) & ~v8;
  v10 = *(v7 + 64);
  a2(*(v3 + 16));
  a3(*(v3 + 32));
  (*(v7 + 8))(v3 + v9, v6);

  return _swift_deallocObject(v3, v9 + v10, v8 | 7);
}

uint64_t sub_100459438(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRAccountsListsViewModel.Group() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_100447F80(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100459530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004595A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA38;

  return sub_1004465F4(a1, v4, v5, v7, v6);
}

uint64_t *sub_10045969C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v11 | *(v7 + 80) & 0xF8;
  if (v12 <= 7 && ((*(v7 + 80) | *(v10 + 80)) & 0x100000) == 0 && ((-17 - (((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + v11)) | v11) - *(*(v9 - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    (*(v7 + 16))(a1, a2, v6);
    v16 = ((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    v16[1] = v17[1];
    v18 = *(v10 + 16);

    v18(v16 + 2, v17 + 2, v9);
  }

  else
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  return a1;
}

uint64_t sub_100459838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v7 = *(v6 - 8) + 24;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 40) + 7;
  v9 = ((v8 + a1) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];

  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 24))((v9 + *(v11 + 80) + 16) & ~*(v11 + 80), (v10 + *(v11 + 80) + 16) & ~*(v11 + 80));
  return a1;
}

uint64_t sub_10045992C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v7 = *(v6 - 8) + 32;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 32) + 7;
  v9 = ((v8 + a1) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 32))((v9 + *(v11 + 80) + 16) & ~*(v11 + 80), (v10 + *(v11 + 80) + 16) & ~*(v11 + 80));
  return a1;
}

uint64_t sub_100459A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v7 = *(v6 - 8) + 40;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 24) + 7;
  v9 = ((v8 + a1) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];

  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 40))((v9 + *(v11 + 80) + 16) & ~*(v11 + 80), (v10 + *(v11 + 80) + 16) & ~*(v11 + 80));
  return a1;
}

uint64_t sub_100459AE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v7 + 64);
  v11 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v8 == v13)
      {
        v22 = *(v7 + 48);

        return v22(a1, v8, v6);
      }

      else
      {
        v23 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        if ((v12 & 0x80000000) != 0)
        {
          v25 = *(v9 + 48);

          return v25((v23 + v11 + 16) & ~v11);
        }

        else
        {
          v24 = *(v23 + 8);
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          return (v24 + 1);
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = ((v11 + ((v10 + 7) & 0xFFFFFFF8) + 16) & ~v11) + *(v9 + 64);
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_100459D64(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v9 + 64);
  v13 = *(v11 + 80);
  if (v10 <= *(v11 + 84))
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v13) + *(v11 + 64);
  if (a3 <= v15)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v15 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v15 < a2)
  {
    v18 = ~v15 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_52:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
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
  if (v10 == v15)
  {
    v23 = *(v9 + 56);

    v23(a1, a2, v10, v8);
  }

  else
  {
    v24 = (&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((v14 & 0x80000000) != 0)
    {
      v25 = *(v11 + 56);

      v25((v24 + v13 + 16) & ~v13, a2);
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *v24 = a2 & 0x7FFFFFFF;
      v24[1] = 0;
    }

    else
    {
      v24[1] = (a2 - 1);
    }
  }
}

unint64_t sub_10045A07C()
{
  result = qword_100783330;
  if (!qword_100783330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783330);
  }

  return result;
}

unint64_t sub_10045A0D4()
{
  result = qword_100783338;
  if (!qword_100783338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783338);
  }

  return result;
}

void *sub_10045A1AC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{

  return sub_1000493FC(a1, a2, a3, a4, a5);
}

id TTRIGroupMembershipAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIGroupMembershipAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIGroupMembershipAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIGroupMembershipAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id TTRListDetailCreationChangeItem.accountID.getter()
{
  v1 = [*(v0 + 24) objectID];

  return v1;
}

id TTRListDetailCreationChangeItem.accountCapabilities.getter()
{
  v1 = [*(v0 + 24) capabilities];

  return v1;
}

uint64_t TTRListDetailCreationChangeItem.__allocating_init(saveRequest:account:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TTRListDetailCreationChangeItem.init(saveRequest:account:)(a1, a2);
  return v4;
}

uint64_t TTRListDetailCreationChangeItem.Storage.copy(with:)@<X0>(char **a1@<X8>)
{
  v21 = a1;
  v20 = type metadata accessor for TTRRemindersListListType();
  v2 = *(v20 - 8);
  v3 = __chkstk_darwin(v20);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  (*(v2 + 16))(v5, v1 + OBJC_IVAR____TtCC9Reminders31TTRListDetailCreationChangeItem7Storage_listType, v3);
  v11 = type metadata accessor for TTRListDetailCreationChangeItem.Storage(0);
  v12 = swift_allocObject();
  *(v12 + 2) = v7;
  *(v12 + 3) = v6;
  *(v12 + 4) = v8;
  *(v12 + 5) = v9;
  *(v12 + 6) = v10;
  v13 = OBJC_IVAR____TtCC9Reminders31TTRListDetailCreationChangeItem7Storage_listType;
  v14 = *(v2 + 32);
  v15 = v10;
  v16 = v9;

  v17 = v8;
  result = v14(&v12[v13], v5, v20);
  v19 = v21;
  v21[3] = v11;
  *v19 = v12;
  return result;
}

id *TTRListDetailCreationChangeItem.Storage.deinit()
{

  v1 = OBJC_IVAR____TtCC9Reminders31TTRListDetailCreationChangeItem7Storage_listType;
  v2 = type metadata accessor for TTRRemindersListListType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TTRListDetailCreationChangeItem.Storage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC9Reminders31TTRListDetailCreationChangeItem7Storage_listType;
  v2 = type metadata accessor for TTRRemindersListListType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *TTRListDetailCreationChangeItem.storage.getter()
{
  v1 = type metadata accessor for TTRRemindersListListType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(v0 + 5);
  v5 = *(v0 + 6);
  swift_beginAccess();
  v7 = *(v0 + 7);
  swift_beginAccess();
  v8 = *(v0 + 8);
  swift_beginAccess();
  v9 = *(v0 + 9);
  v10 = OBJC_IVAR____TtC9Reminders31TTRListDetailCreationChangeItem_listType;
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v10], v1);
  type metadata accessor for TTRListDetailCreationChangeItem.Storage(0);
  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = v5;
  v11[4] = v7;
  v11[5] = v8;
  v11[6] = v9;
  (*(v2 + 32))(v11 + OBJC_IVAR____TtCC9Reminders31TTRListDetailCreationChangeItem7Storage_listType, v4, v1);
  v12 = v9;

  v13 = v7;
  v14 = v8;
  return v11;
}

id TTRListDetailCreationChangeItem.objectID.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void TTRListDetailCreationChangeItem.objectID.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t _s9Reminders31TTRListDetailCreationChangeItemC11displayNameSSvg_0()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t TTRListDetailCreationChangeItem.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

void *TTRListDetailCreationChangeItem.color.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void TTRListDetailCreationChangeItem.color.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

void *TTRListDetailCreationChangeItem.badge.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void TTRListDetailCreationChangeItem.badge.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

void *TTRListDetailCreationChangeItem.filter.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void TTRListDetailCreationChangeItem.filter.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t TTRListDetailCreationChangeItem.listType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9Reminders31TTRListDetailCreationChangeItem_listType;
  swift_beginAccess();
  v4 = type metadata accessor for TTRRemindersListListType();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t TTRListDetailCreationChangeItem.listType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Reminders31TTRListDetailCreationChangeItem_listType;
  swift_beginAccess();
  v4 = type metadata accessor for TTRRemindersListListType();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id TTRListDetailCreationChangeItem.canMakeIntoGroceriesList.getter()
{
  v1 = [*(v0 + 24) capabilities];
  v2 = [v1 supportsGroceriesList];

  return v2;
}

BOOL TTRListDetailCreationChangeItem.shouldUseItemWording.getter()
{
  v1 = type metadata accessor for TTRRemindersListListType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v11 - v6;
  v8 = OBJC_IVAR____TtC9Reminders31TTRListDetailCreationChangeItem_listType;
  swift_beginAccess();
  (*(v2 + 16))(v7, v0 + v8, v1);
  (*(v2 + 104))(v4, enum case for TTRRemindersListListType.groceries(_:), v1);
  sub_10045B84C(&qword_10077A0D0, &type metadata accessor for TTRRemindersListListType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  return v11[2] == v11[1];
}

char *TTRListDetailCreationChangeItem.init(saveRequest:account:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 5) = 0;
  *(v2 + 6) = 0xE000000000000000;
  *(v2 + 8) = 0;
  *(v2 + 9) = 0;
  *(v2 + 7) = 0;
  v5 = OBJC_IVAR____TtC9Reminders31TTRListDetailCreationChangeItem_listType;
  v6 = enum case for TTRRemindersListListType.standard(_:);
  v7 = type metadata accessor for TTRRemindersListListType();
  (*(*(v7 - 8) + 104))(&v2[v5], v6, v7);
  *(v2 + 2) = a1;
  *(v2 + 3) = a2;
  *(v2 + 4) = [objc_opt_self() newObjectID];
  return v2;
}

id *TTRListDetailCreationChangeItem.deinit()
{

  v1 = OBJC_IVAR____TtC9Reminders31TTRListDetailCreationChangeItem_listType;
  v2 = type metadata accessor for TTRRemindersListListType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TTRListDetailCreationChangeItem.__deallocating_deinit()
{
  TTRListDetailCreationChangeItem.deinit();

  return swift_deallocClassInstance();
}

id sub_10045B2D8()
{
  v1 = [*(*v0 + 24) capabilities];
  v2 = [v1 supportsGroceriesList];

  return v2;
}

uint64_t TTRListDetailCreationChangeItem.badgeDisplayStyle.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  v4 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
  v5 = &enum case for TTRListDetailViewModelBadgeDisplayStyle.list(_:);
  if (v3)
  {
    v5 = &enum case for TTRListDetailViewModelBadgeDisplayStyle.smartList(_:);
  }

  return (*(*(v4 - 8) + 104))(a1, *v5, v4);
}

uint64_t sub_10045B3F8()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 40);

  return v2;
}

uint64_t sub_10045B448@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
  v6 = &enum case for TTRListDetailViewModelBadgeDisplayStyle.list(_:);
  if (v4)
  {
    v6 = &enum case for TTRListDetailViewModelBadgeDisplayStyle.smartList(_:);
  }

  return (*(*(v5 - 8) + 104))(a1, *v6, v5);
}

id sub_10045B4E0()
{
  v1 = [*(*v0 + 24) capabilities];

  return v1;
}

BOOL _s9Reminders31TTRListDetailCreationChangeItemC7StorageC2eeoiySbAE_AEtFZ_0(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRRemindersListListType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v30 - v9;
  v11 = *(a1 + 2) == *(a2 + 2) && *(a1 + 3) == *(a2 + 3);
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 4);
  v13 = *(a2 + 4);
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    sub_100003540(0, &qword_100783618);
    v14 = v13;
    v15 = v12;
    v16 = static NSObject.== infix(_:_:)();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v17 = *(a1 + 5);
  v18 = *(a2 + 5);
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    sub_100003540(0, &qword_100783610);
    v19 = v18;
    v20 = v17;
    v21 = static NSObject.== infix(_:_:)();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v22 = *(a1 + 6);
  v23 = *(a2 + 6);
  if (v22)
  {
    if (v23)
    {
      type metadata accessor for REMCustomSmartListFilterDescriptor();
      v24 = v23;
      v25 = v22;
      v26 = static NSObject.== infix(_:_:)();

      if (v26)
      {
        goto LABEL_19;
      }
    }
  }

  else if (!v23)
  {
LABEL_19:
    v27 = *(v5 + 16);
    v27(v10, &a1[OBJC_IVAR____TtCC9Reminders31TTRListDetailCreationChangeItem7Storage_listType], v4);
    v27(v7, &a2[OBJC_IVAR____TtCC9Reminders31TTRListDetailCreationChangeItem7Storage_listType], v4);
    sub_10045B84C(&qword_10077A0D0, &type metadata accessor for TTRRemindersListListType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v28 = *(v5 + 8);
    v28(v7, v4);
    v28(v10, v4);
    return v30[1] == v30[0];
  }

  return 0;
}

uint64_t sub_10045B84C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10045B8BC()
{
  result = type metadata accessor for TTRRemindersListListType();
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

uint64_t sub_10045B980()
{
  result = type metadata accessor for TTRRemindersListListType();
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

void *sub_10045BA40()
{
  v1 = v0;
  v2 = type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v10 = *(v9 - 8);
  v36 = v9;
  v37 = v10;
  __chkstk_darwin(v9);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  v18 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v18 - 8);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v34 - v22;
  v24 = OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_currentFocusedItem;
  swift_beginAccess();
  if ((*(v3 + 48))(v1 + v24, 1, v2))
  {
    v25 = OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_lastFocusedItemID;
    swift_beginAccess();
    sub_10000794C(v1 + v25, v23, &unk_10076BB50);
    v27 = v36;
    v26 = v37;
  }

  else
  {
    v34 = v1;
    sub_10045C6F0(v1 + v24, v8);
    sub_10045C754(v8, v5);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
    }

    v27 = v36;
    v26 = v37;
    v28 = *(v37 + 32);
    v28(v14, v5, v36);
    v28(v17, v14, v27);
    v28(v23, v17, v27);
    (*(v26 + 56))(v23, 0, 1, v27);
  }

  sub_10000794C(v23, v20, &unk_10076BB50);
  if ((*(v26 + 48))(v20, 1, v27) == 1)
  {
    sub_1000079B4(v20, &unk_10076BB50);
LABEL_11:
    v32 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v29 = v35;
  (*(v26 + 32))(v35, v20, v27);
  v30 = sub_100495DBC();
  if (!v30)
  {
    (*(v26 + 8))(v29, v27);
    goto LABEL_11;
  }

  v31 = v30;
  sub_100058000(&qword_10076B780);
  v32 = swift_allocObject();
  *(v32 + 1) = xmmword_10062D420;
  v32[4] = v31;
  (*(v26 + 8))(v29, v27);
LABEL_12:
  sub_1000079B4(v23, &unk_10076BB50);
  return v32;
}

uint64_t sub_10045BEBC()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_currentFocusedItem, &qword_1007837A0);

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_lastFocusedItemID, &unk_10076BB50);

  return swift_deallocClassInstance();
}

void sub_10045BF88()
{
  sub_10045C0B4(319, &unk_100783668, type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem);
  if (v0 <= 0x3F)
  {
    sub_10045C0B4(319, &qword_100774300, &type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10045C0B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t *sub_10045C108(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    if (EnumCaseMultiPayload != 1)
    {
      v9 = *(sub_100058000(&unk_1007845A0) + 48);
      v10 = *(a2 + v9);
      *(a1 + v9) = v10;
      v11 = v10;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_10045C220(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v3 - 8) + 8))(a1, v3);
  if (EnumCaseMultiPayload != 1)
  {
    v4 = *(a1 + *(sub_100058000(&unk_1007845A0) + 48));
  }
}

uint64_t sub_10045C2C0(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  if (EnumCaseMultiPayload != 1)
  {
    v6 = *(sub_100058000(&unk_1007845A0) + 48);
    v7 = *(a2 + v6);
    *(a1 + v6) = v7;
    v8 = v7;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_10045C384(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_10045C458(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    if (EnumCaseMultiPayload != 1)
    {
      v6 = *(sub_100058000(&unk_1007845A0) + 48);
      v7 = *(a2 + v6);
      *(a1 + v6) = v7;
      v8 = v7;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_10045C458(uint64_t a1)
{
  v2 = type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10045C4B4(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v5 - 8) + 32))(a1, a2, v5);
  if (EnumCaseMultiPayload != 1)
  {
    v6 = sub_100058000(&unk_1007845A0);
    *(a1 + *(v6 + 48)) = *(a2 + *(v6 + 48));
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_10045C574(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_10045C458(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    if (EnumCaseMultiPayload != 1)
    {
      v6 = sub_100058000(&unk_1007845A0);
      *(a1 + *(v6 + 48)) = *(a2 + *(v6 + 48));
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_10045C644()
{
  result = type metadata accessor for TTRRemindersListViewModel.ItemID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v3[4] = v3;
    v3[5] = v2;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_10045C6F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10045C754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10045C7B8(void *a1)
{
  v2 = v1;
  v106 = sub_100058000(&qword_10076DCB8);
  __chkstk_darwin(v106);
  v5 = &v93 - v4;
  v105 = type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem(0);
  v6 = *(v105 - 8);
  __chkstk_darwin(v105);
  v98 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v102 = &v93 - v9;
  __chkstk_darwin(v10);
  v96 = &v93 - v11;
  v12 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v12 - 8);
  v99 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v113 = &v93 - v15;
  __chkstk_darwin(v16);
  v115 = &v93 - v17;
  __chkstk_darwin(v18);
  v20 = &v93 - v19;
  v21 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v114 = *(v21 - 8);
  __chkstk_darwin(v21);
  v94 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v97 = &v93 - v24;
  __chkstk_darwin(v25);
  v95 = &v93 - v26;
  __chkstk_darwin(v27);
  v29 = &v93 - v28;
  v30 = sub_100058000(&qword_1007837A0);
  __chkstk_darwin(v30 - 8);
  v110 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v32);
  v35 = &v93 - v34;
  v36 = [a1 nextFocusedView];
  v111 = v35;
  if (v36)
  {
    v37 = v36;
    v38 = sub_1004961A4(v37);
    v109 = v20;
    v39 = v2;
    v40 = v21;
    v41 = v6;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v36 = v38;
    v48 = v43;
    v6 = v41;
    v21 = v40;
    v2 = v39;
    v20 = v109;
    v49 = v47;
    v35 = v111;
  }

  else
  {
    v48 = 0;
    v45 = 0;
    v49 = 0;
  }

  v107 = v5;
  v103 = v36;
  v104 = v48;
  v109 = v49;
  sub_100495C00(v36, v48, v45, v20);
  v50 = v114;
  v51 = *(v114 + 48);
  v101 = v114 + 48;
  v100 = v51;
  v52 = v51(v20, 1, v21);
  v108 = v45;
  v112 = v2;
  if (v52 == 1)
  {
    sub_1000079B4(v20, &unk_10076BB50);
    v53 = 1;
    v54 = v105;
  }

  else
  {
    v55 = *(v50 + 32);
    v55(v29, v20, v21);
    if (v45)
    {
      if (v109)
      {
        v55(v35, v29, v21);
        v54 = v105;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v56 = *(sub_100058000(&unk_1007845A0) + 48);
        v55(v35, v29, v21);
        v57 = v108;
        *&v35[v56] = v108;
        v58 = v105;
        swift_storeEnumTagMultiPayload();
        v59 = v57;
        v54 = v58;
      }

      v53 = 0;
      v2 = v112;
    }

    else
    {
      (*(v50 + 8))(v29, v21);
      v53 = 1;
      v2 = v112;
      v54 = v105;
    }
  }

  v60 = 1;
  (*(v6 + 56))(v35, v53, 1, v54);
  v61 = OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_currentFocusedItem;
  swift_beginAccess();
  v62 = *(v6 + 48);
  v63 = v62(v2 + v61, 1, v54);
  v64 = v102;
  if (!v63)
  {
    v65 = v35;
    v66 = v96;
    sub_10045C6F0(v112 + v61, v96);
    sub_10045C754(v66, v64);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
    }

    v67 = *(v114 + 32);
    v68 = v95;
    v67(v95, v64, v21);
    v67(v115, v68, v21);
    v60 = 0;
    v35 = v65;
  }

  v69 = *(v114 + 56);
  v69(v115, v60, 1, v21);
  v70 = v110;
  sub_10000794C(v35, v110, &qword_1007837A0);
  v71 = v62(v70, 1, v54);
  v105 = v61;
  if (v71 == 1)
  {
    sub_1000079B4(v70, &qword_1007837A0);
    v72 = 1;
    v73 = v107;
  }

  else
  {
    v74 = v98;
    sub_10045C6F0(v70, v98);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v73 = v107;
    if (EnumCaseMultiPayload != 1)
    {
    }

    v76 = *(v114 + 32);
    v77 = v97;
    v76(v97, v74, v21);
    v76(v113, v77, v21);
    sub_10045C458(v110);
    v72 = 0;
  }

  v78 = v113;
  v69(v113, v72, 1, v21);
  v79 = *(v106 + 48);
  sub_10000794C(v115, v73, &unk_10076BB50);
  sub_10000794C(v78, v73 + v79, &unk_10076BB50);
  v80 = v100;
  if (v100(v73, 1, v21) == 1)
  {
    sub_1000079B4(v113, &unk_10076BB50);

    v81 = v80(v73 + v79, 1, v21);
    v82 = v112;
    v83 = v105;
    if (v81 == 1)
    {
      sub_1000079B4(v73, &unk_10076BB50);
LABEL_29:
      sub_1000079B4(v115, &unk_10076BB50);
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  v84 = v99;
  sub_10000794C(v73, v99, &unk_10076BB50);
  v85 = v80(v73 + v79, 1, v21);
  v82 = v112;
  if (v85 == 1)
  {
    sub_1000079B4(v113, &unk_10076BB50);

    (*(v114 + 8))(v84, v21);
    v83 = v105;
LABEL_26:
    sub_1000079B4(v73, &qword_10076DCB8);
    goto LABEL_27;
  }

  v87 = v114;
  v88 = v94;
  (*(v114 + 32))(v94, v73 + v79, v21);
  sub_1001E66F0();
  v89 = dispatch thunk of static Equatable.== infix(_:_:)();

  v90 = *(v87 + 8);
  v90(v88, v21);
  sub_1000079B4(v113, &unk_10076BB50);
  v90(v84, v21);
  sub_1000079B4(v73, &unk_10076BB50);
  v83 = v105;
  if (v89)
  {
    goto LABEL_29;
  }

LABEL_27:
  v86 = OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_lastFocusedItemID;
  swift_beginAccess();
  sub_10000D184(v115, v82 + v86, &unk_10076BB50);
  swift_endAccess();
LABEL_30:
  v91 = v111;
  swift_beginAccess();
  sub_10000D184(v91, v82 + v83, &qword_1007837A0);
  return swift_endAccess();
}

id sub_10045D290(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v37 = type metadata accessor for TTRListBadgeView.ImageContentMode();
  v10 = *(v37 - 8);
  __chkstk_darwin(v37);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&qword_100768848);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v36 - v17);
  v19 = OBJC_IVAR____TtC9Reminders52TTRIAccountsListsSuggestGroceriesCell_collectionView_addAccessory;
  type metadata accessor for AddAccessory(0);
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC9RemindersP33_DEAFC400F035D386D50AC552DAA1108312AddAccessory_accessoryState;
  v22 = sub_100058000(&qword_10077FF18);
  (*(*(v22 - 8) + 56))(v20 + v21, 1, 1, v22);
  *(v20 + OBJC_IVAR____TtC9RemindersP33_DEAFC400F035D386D50AC552DAA1108312AddAccessory____lazy_storage___plusView) = 0;
  *&v4[v19] = v20;
  v38.receiver = v4;
  v38.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v38, "initWithFrame:", a1, a2, a3, a4);
  sub_100003540(0, &qword_10076FCB0);
  v24 = v23;
  v25 = static UIImage.ttr_systemSymbolImage(named:)();
  v26 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(0);
  v27 = *(v26 + 20);
  v28 = objc_opt_self();
  *(v18 + v27) = [v28 systemGreenColor];
  type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
  swift_storeEnumTagMultiPayload();
  v29 = *(v26 + 24);
  v30 = enum case for TTRListBadgeView.Shape.round(_:);
  v31 = type metadata accessor for TTRListBadgeView.Shape();
  (*(*(v31 - 8) + 104))(v18 + v29, v30, v31);
  (*(v10 + 104))(v12, enum case for TTRListBadgeView.ImageContentMode.center(_:), v37);
  v32 = [v28 whiteColor];
  TTRListBadgeView.ImageParams.init(color:blendMode:contentMode:)();
  *v18 = v25;
  type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content(0);
  swift_storeEnumTagMultiPayload();
  v33 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration(0);
  (*(*(v33 - 8) + 56))(v18, 0, 1, v33);
  v34 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeConfiguration;
  swift_beginAccess();
  sub_10000794C(v24 + v34, v15, &qword_100768848);
  swift_beginAccess();
  sub_10045E3BC(v18, v24 + v34);
  swift_endAccess();
  sub_100036640(v15);

  sub_1000079B4(v15, &qword_100768848);
  sub_1000079B4(v18, &qword_100768848);
  return v24;
}

uint64_t sub_10045D7D8()
{
  v0 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v16 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  sub_100036110();
  UIListContentConfiguration.textProperties.getter();
  sub_100003540(0, &qword_100771DF0);
  static UIFont.roundedFootnoteFont.getter();
  UIListContentConfiguration.TextProperties.font.setter();
  v9 = objc_opt_self();
  v10 = [v9 secondaryLabelColor];
  UIListContentConfiguration.TextProperties.color.setter();
  v11 = *(v1 + 16);
  v11(v5, v8, v0);
  UIListContentConfiguration.textProperties.setter();
  UIListContentConfiguration.secondaryTextProperties.getter();
  static UIFont.roundedBodyFont.getter();
  UIListContentConfiguration.TextProperties.font.setter();
  v12 = [v9 labelColor];
  UIListContentConfiguration.TextProperties.color.setter();
  v11(v16, v5, v0);
  UIListContentConfiguration.secondaryTextProperties.setter();
  static TTRLocalizableStrings.SuggestGroceries.cellTitle.getter();
  UIListContentConfiguration.text.setter();
  static TTRLocalizableStrings.SuggestGroceries.cellSubtitle.getter();
  UIListContentConfiguration.secondaryText.setter();
  v13 = *(v1 + 8);
  v13(v5, v0);
  return (v13)(v8, v0);
}

id sub_10045DB98()
{
  v1 = OBJC_IVAR____TtC9RemindersP33_DEAFC400F035D386D50AC552DAA1108312AddAccessory____lazy_storage___plusView;
  v2 = *(v0 + OBJC_IVAR____TtC9RemindersP33_DEAFC400F035D386D50AC552DAA1108312AddAccessory____lazy_storage___plusView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9RemindersP33_DEAFC400F035D386D50AC552DAA1108312AddAccessory____lazy_storage___plusView);
  }

  else
  {
    v4 = sub_10045DBF8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10045DBF8()
{
  sub_100058000(&qword_10076B780);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10062D410;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 whiteColor];
  *(v0 + 40) = [v1 systemGreenColor];
  sub_100003540(0, &qword_100772610);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = objc_opt_self();
  v4 = [v3 configurationWithPaletteColors:isa];

  sub_100003540(0, &qword_100771DF0);
  v5 = v4;
  v6 = static UIFont.roundedSubheadlineSemiboldFont.getter();
  v7 = [v3 configurationWithFont:v6];

  v8 = [v5 configurationByApplyingConfiguration:v7];
  v9 = v8;
  v10 = [v3 configurationWithScale:3];
  v11 = [v9 configurationByApplyingConfiguration:v10];

  sub_100003540(0, &qword_10076FCB0);
  v12 = v11;
  v13 = static UIImage.ttr_systemSymbolImage(named:withConfiguration:)();

  v14 = [objc_allocWithZone(UIImageView) initWithImage:v13];
  return v14;
}

uint64_t sub_10045DE3C()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtC9RemindersP33_DEAFC400F035D386D50AC552DAA1108312AddAccessory_accessoryState, &qword_1007800C8);

  return swift_deallocClassInstance();
}

void sub_10045DEE8()
{
  sub_100014A40();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10045DF80@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9RemindersP33_DEAFC400F035D386D50AC552DAA1108312AddAccessory_accessoryState;
  swift_beginAccess();
  return sub_10000794C(v3 + v4, a1, &qword_1007800C8);
}

uint64_t sub_10045DFEC(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9RemindersP33_DEAFC400F035D386D50AC552DAA1108312AddAccessory_accessoryState;
  swift_beginAccess();
  sub_100031E0C(a1, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_10045E0B4@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = sub_100058000(&unk_10077FC20);
  __chkstk_darwin(v1 - 8);
  v3 = v17 - v2;
  v4 = type metadata accessor for UICellAccessory.Placement();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10045DB98();
  v12 = &v7[*(sub_100058000(&qword_100779498) + 48)];
  v13 = enum case for UICellAccessory.DisplayedState.always(_:);
  v14 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v14 - 8) + 104))(v7, v13, v14);
  *v12 = variable initialization expression of TTRSmartListFilterEditorInteractor.listFetchOperationManager;
  v12[1] = 0;
  (*(v5 + 104))(v7, enum case for UICellAccessory.Placement.trailing(_:), v4);
  v15 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_10045E364()
{
  result = qword_1007838B0;
  if (!qword_1007838B0)
  {
    type metadata accessor for AddAccessory(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007838B0);
  }

  return result;
}

uint64_t sub_10045E3BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100768848);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10045E42C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 208))(ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

char *TTRListDetailPresenter.init(interactor:viewModelSource:undoManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v3;
  v7 = sub_100461E24(a1, a2, a3);

  (*(*(*(v6 + 88) - 8) + 8))(a2);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t *TTRListDetailPresenter.deinit()
{
  v1 = *v0;
  swift_unknownObjectRelease();
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 120));

  v2 = *(*v0 + 136);
  v3 = type metadata accessor for TTRRemindersListListType();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t TTRListDetailPresenter.viewModel.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v9 - v6;
  (*(v2 + 24))(v3, v2);
  (*(*(v1 + 104) + 16))(v7, *(v1 + 88));
  return (*(v5 + 8))(v7, AssociatedTypeWitness);
}

uint64_t TTRListDetailPresenter.colors.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v2 + 24))(v3, v2, v6);
  v9 = (*(*(v1 + 104) + 24))(v8, *(v1 + 88));
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v9;
}

Swift::Void __swiftcall TTRListDetailPresenter.requestUpdateName(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v7 = __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v20 - v8;
  (*(v4 + 24))(v5, v4, v7);
  if (qword_1007672E0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003E30(v10, qword_1007838B8);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
  *(inited + 72) = sub_10001DF64();
  *(inited + 48) = v13;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_10011F2F8(inited + 32);
  sub_10000FD44();

  static TTRLocalizableStrings.UndoAction.renameList.getter();
  v14 = objc_opt_self();
  v15 = String._bridgeToObjectiveC()();

  v16 = swift_allocObject();
  v16[2] = v2;
  v16[3] = countAndFlagsBits;
  v16[4] = object;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100462314;
  *(v17 + 24) = v16;
  aBlock[4] = sub_100026418;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100729478;
  v18 = _Block_copy(aBlock);

  [v14 withActionName:v15 block:v18];
  _Block_release(v18);

  (*(v20 + 8))(v9, AssociatedTypeWitness);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}