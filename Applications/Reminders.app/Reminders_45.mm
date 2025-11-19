void sub_1004E72B8(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1007673D8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_100788710);
    swift_errorRetain();
    v4 = a2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v7 = 138412546;
      v10 = [v4 objectID];
      *(v7 + 4) = v10;
      *v8 = v10;
      *(v7 + 12) = 2080;
      swift_getErrorValue();
      v11 = Error.rem_errorDescription.getter();
      v13 = sub_100004060(v11, v12, &v21);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to stop share {list.objectID: %@, error: %s}", v7, 0x16u);
      sub_100094164(v8);

      sub_100004758(v9);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1007673D8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003E30(v14, qword_100788710);
    v15 = a2;
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      v19 = [v15 objectID];
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, oslog, v16, "Cleaning up canceled share. Successfully stopped share. {list.objectID: %{public}@}", v17, 0xCu);
      sub_100094164(v18);
    }
  }
}

void _s9Reminders23TTRListSharingUtilitiesC26addCKShareObserverIfNeeded3forySo7REMListC_tFZ_0(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 account];
  v7 = [v6 accountTypeHost];

  LODWORD(v6) = [v7 isCloudKit];
  if (v6)
  {
    v8 = [a1 account];
    v9 = [v8 remObjectID];

    v10 = [v9 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = [a1 store];
    v15 = String._bridgeToObjectiveC()();
    sub_100003540(0, &qword_100777780);
    v16 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = v11;
    *(v17 + 24) = v13;
    aBlock[4] = sub_1004E83DC;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100009DE4;
    aBlock[3] = &unk_10072C778;
    v18 = _Block_copy(aBlock);

    [v14 addCKShareObserverIfNeededForAccountID:v15 queue:v16 completion:v18];
    _Block_release(v18);
  }
}

id _s9Reminders23TTRListSharingUtilitiesC17shareItemProvider3forSo06NSItemG0CSo7REMListC_tFZ_0(void *a1)
{
  v2 = objc_opt_self();
  v3 = [a1 account];
  v4 = [v2 newCloudContainerForAccount:v3];

  v5 = [objc_opt_self() rem_remindersAllowedSharingOptions];
  v6 = [objc_allocWithZone(NSItemProvider) init];
  sub_100003540(0, &qword_10076FCB0);
  type metadata accessor for RemindersUICoreBundleLookupObject();
  v7 = static RemindersUICoreBundleLookupObject.bundle.getter();
  v8 = static UIImage.ttr_image(named:in:)();

  if (v8 && (v9 = UIImagePNGRepresentation(v8), v8, v9))
  {
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xF000000000000000;
  }

  v13 = [a1 store];
  v14 = [a1 objectID];
  v24[0] = 0;
  v15 = [v13 fetchShareForListWithID:v14 error:v24];

  if (v24[0])
  {
    v16 = v24[0];

    swift_willThrow();
LABEL_7:
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = v10;
    v17[4] = v12;
    sub_1004E8358(v10, v12);
    v18 = a1;
    NSItemProvider.registerCKShare(container:allowedSharingOptions:preparationHandler:)();
    sub_1004E836C(v10, v12);

    goto LABEL_13;
  }

  if (!v15)
  {
    goto LABEL_7;
  }

  static CKShare.SystemFieldKey.thumbnailImageData.getter();
  if (v12 >> 60 == 15)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v24[2] = 0;
  }

  else
  {
    v22 = &protocol witness table for Data;
    v21 = &type metadata for Data;
    v19 = v10;
    v20 = v12;
  }

  v24[0] = v19;
  v24[1] = v20;
  v24[3] = v21;
  v24[4] = v22;
  sub_1004E8358(v10, v12);
  sub_100003540(0, &qword_10078F200);
  CKRecordKeyValueSetting.subscript.setter();
  NSItemProvider.registerCKShare(_:container:allowedSharingOptions:)(v15, v4, v5);
  sub_1004E836C(v10, v12);

LABEL_13:
  return v6;
}

void _s9Reminders23TTRListSharingUtilitiesC11cancelShare3forySo7REMListC_tFZ_0(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v6 = [a1 account];
  v7 = [v6 accountTypeHost];

  LODWORD(v6) = [v7 isCloudKit];
  if (v6)
  {
    v8 = [a1 store];
    v9 = [a1 objectID];
    aBlock[0] = 0;
    v10 = [v8 fetchShareForListWithID:v9 error:aBlock];

    if (aBlock[0])
    {
      v11 = aBlock[0];

      swift_willThrow();
      if (qword_1007673D8 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100003E30(v12, qword_100788710);
      v13 = a1;
      v14 = v11;
      v10 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        aBlock[0] = v18;
        *v16 = 138412546;
        v19 = [v13 objectID];
        *(v16 + 4) = v19;
        *v17 = v19;
        *(v16 + 12) = 2080;
        swift_getErrorValue();
        v20 = Error.rem_errorDescription.getter();
        v22 = sub_100004060(v20, v21, aBlock);

        *(v16 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v10, v15, "Failed to fetch share for list. {list.objectID: %@, error: %s}", v16, 0x16u);
        sub_100094164(v17);

        sub_100004758(v18);

        return;
      }
    }

    else
    {
      if (!v10)
      {
        return;
      }

      v23 = [v10 participants];
      sub_100003540(0, &qword_1007887C8);
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v24 >> 62)
      {
        v25 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v25 == 1)
      {
        v26 = [a1 account];
        v27 = [v26 remObjectID];

        v28 = [v27 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        UUID.uuidString.getter();
        (*(v3 + 8))(v5, v2);
        v29 = [a1 store];
        v30 = String._bridgeToObjectiveC()();

        sub_100003540(0, &qword_100777780);
        v31 = static OS_dispatch_queue.main.getter();
        v32 = swift_allocObject();
        v32[2] = a1;
        aBlock[4] = sub_1004E83D4;
        aBlock[5] = v32;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100009DE4;
        aBlock[3] = &unk_10072C728;
        v33 = _Block_copy(aBlock);
        v34 = a1;

        [v29 stopShare:v10 accountID:v30 queue:v31 completion:v33];
        _Block_release(v33);

        return;
      }
    }
  }
}

id _s9Reminders23TTRListSharingUtilitiesC17remindersAppImage3forSo7IFImageCSgSo17ISImageDescriptorC_tFZ_0(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (!v3)
  {
    return 0;
  }

  v4 = [objc_allocWithZone(ISIcon) initWithBundleIdentifier:v3];

  v5 = [v4 imageForDescriptor:a1];
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  if (![v5 placeholder])
  {
    v7 = v6;
    goto LABEL_9;
  }

  v7 = [v4 prepareImageForDescriptor:a1];

  result = v6;
  v4 = v6;
  if (v7)
  {
LABEL_9:

    return v7;
  }

  return result;
}

uint64_t sub_1004E82B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10041B550;

  return sub_1004E6DB0(v2, v3, v4);
}

uint64_t sub_1004E8358(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1002354D0(a1, a2);
  }

  return a1;
}

uint64_t sub_1004E836C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100139D84(a1, a2);
  }

  return a1;
}

unint64_t sub_1004E8380()
{
  result = qword_1007887C0;
  if (!qword_1007887C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007887C0);
  }

  return result;
}

unint64_t sub_1004E83F8()
{
  result = qword_1007887D0;
  if (!qword_1007887D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007887D0);
  }

  return result;
}

id TTRIAboutYourDevicesAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIAboutYourDevicesAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIAboutYourDevicesAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIAboutYourDevicesAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1004E8520(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = &a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_upgradeInfo];
  *v5 = 1;
  *(v5 + 40) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 8) = 0u;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_pageStackView] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_titleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_deviceSubtitle] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_deviceExplanation] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_deviceLearnMore] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_deviceList] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_unsupportedSubtitle] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_unsupportedDeviceList] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListSubtitle] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListExplanation] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListLearnMore] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListRecipients] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_macOSUnavailableLabel] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_macOSUnavailableLearnMore] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_accountBeingUpgradedHint] = 0;
  v6 = &a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_viewModel];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 6) = 0;
  v7 = &a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_presenter];
  *v7 = a1;
  *(v7 + 1) = &off_10072C628;
  v8 = String._bridgeToObjectiveC()();
  v11.receiver = a2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithTitle:detailText:icon:contentLayout:", v8, 0, 0, 2);

  return v9;
}

id sub_1004E86AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TTRAboutYourDevicesInteractor();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  v6 = type metadata accessor for TTRIAboutYourDevicesRouter();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21[3] = v6;
  v21[4] = &off_10072F7B8;
  v21[0] = v7;
  type metadata accessor for TTRIAboutYourDevicesPresenter();
  v8 = swift_allocObject();
  v9 = sub_10000AE84(v21, v6);
  v10 = __chkstk_darwin(v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v12, v10);
  v14 = *v12;
  *(v8 + 144) = v6;
  *(v8 + 152) = &off_10072F7B8;
  *(v8 + 120) = v14;
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 104) = v5;
  *(v8 + 112) = &off_1007164F8;
  v15 = *(a3 + 16);
  *(v8 + 48) = *a3;
  *(v8 + 64) = v15;
  *(v8 + 80) = *(a3 + 32);
  *(v8 + 96) = *(a3 + 48);

  sub_1002AAF0C(a3, v20);
  sub_100004758(v21);
  v16 = objc_allocWithZone(type metadata accessor for TTRIAboutYourDevicesViewController());

  v18 = sub_1004E8520(v17, v16);
  *(v5 + 24) = &off_10072C620;
  swift_unknownObjectWeakAssign();

  *(v8 + 24) = &off_10071E158;
  swift_unknownObjectWeakAssign();
  *(v8 + 40) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v18;
}

uint64_t sub_1004E890C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100788800);
  v1 = sub_100003E30(v0, qword_100788800);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004E89D4()
{
  v1 = sub_100058000(&qword_100776310);
  __chkstk_darwin(v1 - 8);
  v3 = (&v15 - v2);
  v4 = type metadata accessor for TTRRemindersListViewModelSourceSectionsContext.ParamsForAddingEditableSection();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007673E0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100788800);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
  {
    swift_getObjectType();
    dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
    swift_unknownObjectRelease();
  }

  sub_1004EF1B4(v0, 0);
  v9 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  result = (*(v9 + 104))(ObjectType, v9);
  if (result)
  {
    v12 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 64);
      sub_1002E4570(0, 0xE000000000000000, v12, v3);
      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return sub_1000079B4(v3, &qword_100776310);
      }

      else
      {
        sub_1004F683C(v3, v7, type metadata accessor for TTRRemindersListViewModelSourceSectionsContext.ParamsForAddingEditableSection);
        v14 = swift_getObjectType();
        (*(v13 + 48))(v7, &v7[*(v4 + 24)], 1, 1, v14, v13);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return sub_1004F676C(v7, type metadata accessor for TTRRemindersListViewModelSourceSectionsContext.ParamsForAddingEditableSection);
      }
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1004E8CD8(uint64_t a1)
{
  swift_getObjectType();
  dispatch thunk of TTRRemindersListInteractorType.sectionsCapability.getter();
  swift_getObjectType();
  v2 = dispatch thunk of TTRRemindersListInteractorSectionsCapabilityType.addNewSection(displayName:to:sectionID:)();
  swift_unknownObjectRelease();
  if (v2)
  {
    v3 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    if ((*(v3 + 104))(ObjectType, v3))
    {
      v6 = v5;
      v7 = swift_getObjectType();
      v8 = *(v6 + 48);
      v2 = v2;
      v9 = v8(v10, v7, v6);
      sub_10001DFB0(&v11, v2);

      v9(v10, 0);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1004E8E18(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v242 = a3;
  v253 = a2;
  v272 = a4;
  v271 = *v4;
  v234 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v233 = *(v234 - 8);
  __chkstk_darwin(v234);
  v232 = v207 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v231 = v207 - v8;
  v214 = type metadata accessor for TTRRemindersListReminderInsertionPosition();
  v213 = *(v214 - 8);
  __chkstk_darwin(v214);
  v212 = v207 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_10076DF30);
  __chkstk_darwin(v10 - 8);
  v216 = v207 - v11;
  v222 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
  v217 = *(v222 - 8);
  __chkstk_darwin(v222);
  v211 = v207 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v227 = *(v228 - 8);
  __chkstk_darwin(v228);
  v226 = v207 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v225 = v207 - v15;
  v16 = sub_100058000(&qword_100788B50);
  __chkstk_darwin(v16 - 8);
  v239 = v207 - v17;
  v224 = sub_100058000(&qword_100788B58);
  __chkstk_darwin(v224);
  v223 = v207 - v18;
  v251 = type metadata accessor for TTREditingStateOption();
  v250 = *(v251 - 8);
  __chkstk_darwin(v251);
  v241 = v207 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100058000(&qword_100788B48);
  __chkstk_darwin(v20 - 8);
  v229 = v207 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v230 = v207 - v23;
  v221 = type metadata accessor for TTRRemindersListEditingReminderCreationOptions();
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v219 = v207 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = type metadata accessor for TTRRemindersListViewModel.Item();
  v268 = *(v266 - 8);
  __chkstk_darwin(v266);
  v235 = v207 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v256 = v207 - v27;
  __chkstk_darwin(v28);
  v240 = v207 - v29;
  __chkstk_darwin(v30);
  v215 = v207 - v31;
  __chkstk_darwin(v32);
  v254 = v207 - v33;
  v210 = sub_100058000(&qword_100788B68);
  __chkstk_darwin(v210);
  v238 = v207 - v34;
  v35 = sub_100058000(&qword_100788B60);
  __chkstk_darwin(v35 - 8);
  v245 = v207 - v36;
  v248 = type metadata accessor for TTRRemindersListUncommittedReminder();
  v247 = *(v248 - 8);
  __chkstk_darwin(v248);
  v246 = v207 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v38 - 8);
  v252 = v207 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v218 = v207 - v41;
  __chkstk_darwin(v42);
  v249 = v207 - v43;
  __chkstk_darwin(v44);
  v259 = v207 - v45;
  __chkstk_darwin(v46);
  v255 = v207 - v47;
  v261 = type metadata accessor for TTRRemindersListReminderCreationLocation();
  v260 = *(v261 - 8);
  __chkstk_darwin(v261);
  v265 = v207 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100058000(&qword_100775760);
  __chkstk_darwin(v49 - 8);
  v267 = v207 - v50;
  v244 = sub_100058000(&qword_100775768);
  __chkstk_darwin(v244);
  v243 = v207 - v51;
  v264 = type metadata accessor for TTRRemindersListTargetContainer();
  v263 = *(v264 - 8);
  __chkstk_darwin(v264);
  v237 = v207 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = v52;
  __chkstk_darwin(v53);
  v262 = v207 - v54;
  v258 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v269 = *(v258 - 8);
  __chkstk_darwin(v258);
  v257 = v207 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v56 - 8);
  v58 = v207 - v57;
  v59 = type metadata accessor for REMAnalyticsEvent();
  v60 = *(v59 - 8);
  __chkstk_darwin(v59);
  v62 = v207 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007673E0 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  sub_100003E30(v63, qword_100788800);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x736E6F6974706FLL;
  *(inited + 40) = 0xE700000000000000;
  v270 = a1;
  *&v274 = a1;
  v65 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v65;
  *(inited + 56) = v66;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  type metadata accessor for TTRUserDefaults();
  v67 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v68 = sub_100058000(&qword_1007757E8);
  v69 = &v62[*(v68 + 48)];
  v70 = &v62[*(v68 + 80)];
  v71 = enum case for REMUserOperation.createReminder(_:);
  v72 = type metadata accessor for REMUserOperation();
  (*(*(v72 - 8) + 104))(v62, v71, v72);
  *v69 = TTRUserDefaults.activitySessionId.getter();
  v69[1] = v73;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *&v274 = 0;
  *(&v274 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  v74 = _typeName(_:qualified:)();
  v76 = v75;

  *&v274 = v74;
  *(&v274 + 1) = v76;
  v77._countAndFlagsBits = 0x746C75616665442DLL;
  v77._object = 0xEF6E6F6974636553;
  String.append(_:)(v77);
  v78 = *(&v274 + 1);
  *v70 = v274;
  *(v70 + 1) = v78;
  (*(v60 + 104))(v62, enum case for REMAnalyticsEvent.userOperation(_:), v59);
  REMAnalyticsManager.post(event:)();

  (*(v60 + 8))(v62, v59);
  v80 = v273[4];
  v79 = v273[5];
  ObjectType = swift_getObjectType();
  (*(v79 + 152))(ObjectType, v79);
  v82 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v83 = *(v82 - 8);
  if ((*(v83 + 48))(v58, 1, v82) == 1)
  {

    v84 = &unk_10078A380;
    v85 = v58;
LABEL_5:
    sub_1000079B4(v85, v84);
LABEL_15:
    v91 = sub_100058000(&qword_100775A58);
    (*(*(v91 - 8) + 56))(v272, 1, 1, v91);
    return;
  }

  v271 = v67;
  New = TTRRemindersListViewModel.ListInfo.canCreateNewReminder.getter();
  (*(v83 + 8))(v58, v82);
  if ((New & 1) == 0)
  {

    goto LABEL_15;
  }

  v87 = v270;
  v88 = v267;
  if ((v270 & 4) == 0)
  {
    goto LABEL_12;
  }

  if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
  {
    swift_unknownObjectRelease();
    v89 = 0;
    if (!TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v89 = (v87 & 1) == 0;
  if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
  {
LABEL_10:
    swift_getObjectType();
    dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
    swift_unknownObjectRelease();
  }

LABEL_11:
  if (!v89)
  {
    v114 = sub_100058000(&qword_100775A58);
    (*(*(v114 - 8) + 56))(v272, 1, 1, v114);

    return;
  }

LABEL_12:
  sub_1004EB45C(v87, v88);
  v90 = sub_100058000(&qword_100775770);
  if ((*(*(v90 - 8) + 48))(v88, 1, v90) == 1)
  {

    v84 = &qword_100775760;
    v85 = v88;
    goto LABEL_5;
  }

  v92 = *(v90 + 48);
  v208 = ObjectType;
  v93 = v244;
  v94 = *(v244 + 48);
  v95 = *(v269 + 32);
  v207[1] = v80;
  v96 = v243;
  v97 = v258;
  v95(v243, v88, v258);
  v209 = v79;
  v99 = v263 + 32;
  v98 = *(v263 + 32);
  v100 = &v88[v92];
  v101 = v264;
  v98(&v96[v94], v100, v264);
  v102 = *(v93 + 48);
  v103 = v208;
  v104 = v257;
  v95(v257, v96, v97);
  v244 = v99;
  v243 = v98;
  v98(v262, &v96[v102], v101);
  v105 = v209;
  v106 = v265;
  (*(v269 + 16))(v265, v104, v97);
  (*(v260 + 104))(v106, enum case for TTRRemindersListReminderCreationLocation.endOfSection(_:), v261);
  v107 = v245;
  (*(v105 + 368))(v106, v103, v105);
  v108 = v247;
  v109 = v248;
  if (v247[6](v107, 1, v248) == 1)
  {
    sub_1000079B4(v107, &qword_100788B60);
    v110 = 1;
    v111 = v268;
    v112 = v259;
    v113 = v254;
    goto LABEL_28;
  }

  v108[4](v246, v107, v109);
  v115 = TTRRemindersListUncommittedReminder.editingSessionState.getter();
  v111 = v268;
  v113 = v254;
  if (!v115)
  {
    v120 = type metadata accessor for TTRRemindersListEditingSessionState.SaveState();
    (*(*(v120 - 8) + 56))(v238, 1, 1, v120);
    goto LABEL_27;
  }

  v116 = v238;
  TTRRemindersListEditingSessionState.saveState.getter();

  v117 = type metadata accessor for TTRRemindersListEditingSessionState.SaveState();
  v118 = *(v117 - 8);
  (*(v118 + 56))(v116, 0, 1, v117);
  v119 = (*(v118 + 88))(v116, v117);
  if (v119 == enum case for TTRRemindersListEditingSessionState.SaveState.notSaved(_:))
  {
LABEL_27:
    v121 = v259;
    v122 = v246;
    TTRRemindersListUncommittedReminder.item.getter();
    v112 = v121;
    (v108[1])(v122, v109);
    v110 = 0;
LABEL_28:
    v123 = v266;
    v267 = *(v111 + 56);
    (v267)(v112, v110, 1, v266);
    v124 = v112;
    v125 = v249;
    sub_10000794C(v124, v249, &qword_100772140);
    v126 = *(v111 + 48);
    if ((v126)(v125, 1, v123) == 1)
    {
      v246 = (v111 + 56);
      sub_1000079B4(v125, &qword_100772140);
      v127 = v263 + 16;
      v128 = v237;
      v129 = v264;
      (*(v263 + 16))(v237, v262, v264);
      v130 = (*(v127 + 64) + 24) & ~*(v127 + 64);
      v131 = swift_allocObject();
      *(v131 + 16) = v273;
      v254 = v131;
      (v243)(v131 + v130, v128, v129);
      v132 = v270;
      v247 = v126;
      if (v270)
      {
        v154 = v241;
        (*(v250 + 104))(v241, enum case for TTREditingStateOption.doesNotStartEditing(_:), v251);
        v135 = v239;
      }

      else
      {
        v133 = type metadata accessor for TTREditingStateOption.InputType();
        v134 = (v250 + 104);
        v135 = v239;
        if ((v132 & 0x10) != 0)
        {
          v136 = &enum case for TTREditingStateOption.InputType.pencil(_:);
        }

        else
        {
          v136 = &enum case for TTREditingStateOption.InputType.unspecified(_:);
        }

        v154 = v241;
        (*(*(v133 - 8) + 104))(v241, *v136, v133);
        (*v134)(v154, enum case for TTREditingStateOption.startsEditing(_:), v251);
      }

      v160 = (v270 >> 5) & 1;
      v161 = *(v105 + 376);

      v161(v265, v154, v160, sub_1004F69E4, v254, v253, v242, v103, v105);
      v162 = sub_100058000(&qword_1007860B0);
      if ((*(*(v162 - 8) + 48))(v135, 1, v162) == 1)
      {
        (*(v250 + 8))(v154, v251);
        sub_1000079B4(v135, &qword_100788B50);
        v142 = v255;
        v143 = v266;
        (v267)(v255, 1, 1, v266);

        v144 = v273;
        v145 = v256;
        v158 = v252;
        v159 = v271;
LABEL_51:
        v126 = v247;
        goto LABEL_57;
      }

      v248 = v111 + 48;
      v163 = *(v135 + *(v162 + 48));
      v164 = v224;
      v165 = *(v224 + 48);
      v166 = *(v268 + 32);
      v167 = v223;
      v168 = v135;
      v169 = v268;
      v170 = v266;
      v166(v223, v168, v266);
      *&v167[v165] = v163;
      v270 = *&v167[*(v164 + 48)];
      v171 = v240;
      v166(v240, v167, v170);
      v172 = v209;
      v173 = v255;
      (*(v169 + 16))(v255, v171, v170);
      (v267)(v173, 0, 1, v170);
      v174 = v225;
      (*(v172 + 576))(v103, v172);
      v175 = v227;
      v176 = v226;
      v177 = v228;
      (*(v227 + 104))(v226, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v228);
      LOBYTE(v169) = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
      v178 = *(v175 + 8);
      v178(v176, v177);
      v178(v174, v177);
      if (v169)
      {
        v179 = v270;
        v180 = v216;
        (*(v172 + 608))(v103, v172);
        v181 = v217;
        v182 = v222;
        v183 = (*(v217 + 48))(v180, 1, v222);
        v144 = v273;
        if (v183 != 1)
        {
          v200 = v211;
          (*(v181 + 32))(v211, v180, v182);
          v267 = v144[7];
          v253 = swift_getObjectType();
          sub_100058000(&qword_10076B780);
          v201 = swift_allocObject();
          *(v201 + 16) = xmmword_10062D420;
          *(v201 + 32) = v179;
          v202 = v213;
          v203 = v212;
          v204 = v214;
          (*(v213 + 104))(v212, enum case for TTRRemindersListReminderInsertionPosition.afterAll(_:), v214);
          v205 = v179;
          v206 = v255;
          dispatch thunk of TTRRemindersListInteractorType.updateManualOrdering(uncommittedReminderIDs:position:paramsForREMManualOrdering:)();

          v142 = v206;

          (*(v202 + 8))(v203, v204);
          (*(v181 + 8))(v200, v222);
          v143 = v266;
          (*(v268 + 8))(v240, v266);
          (*(v250 + 8))(v241, v251);

          v145 = v256;
          v158 = v252;
          v159 = v271;
          goto LABEL_51;
        }

        v143 = v266;
        (*(v268 + 8))(v240, v266);
        (*(v250 + 8))(v241, v251);
        sub_1000079B4(v180, &qword_10076DF30);
      }

      else
      {

        (*(v268 + 8))(v240, v170);
        (*(v250 + 8))(v241, v251);

        v144 = v273;
        v143 = v170;
      }

      v145 = v256;
      v158 = v252;
      v159 = v271;
      v126 = v247;
      v142 = v255;
LABEL_57:
      sub_10000794C(v142, v158, &qword_100772140);
      if ((v126)(v158, 1, v143) == 1)
      {

        sub_1000079B4(v259, &qword_100772140);
        sub_1000079B4(v142, &qword_100772140);
        (*(v260 + 8))(v265, v261);
        (*(v263 + 8))(v262, v264);
        (*(v269 + 8))(v257, v258);
        v85 = v158;
        v84 = &qword_100772140;
        goto LABEL_5;
      }

      v184 = *(v268 + 32);
      v184(v145, v158, v143);
      v185 = v144[11];
      v186 = &unk_100788000;
      if (v185)
      {
        v187 = v159;

        v188 = v231;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        v189 = v232;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        v190 = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();

        v191 = *(v233 + 8);
        v192 = v189;
        v193 = v234;
        v191(v192, v234);
        v194 = v188;
        v145 = v256;
        v191(v194, v193);
        v143 = v266;
        sub_1000079B4(v259, &qword_100772140);
        sub_1000079B4(v142, &qword_100772140);
        (*(v260 + 8))(v265, v261);
        (*(v263 + 8))(v262, v264);
        (*(v269 + 8))(v257, v258);
        if (v190)
        {
LABEL_64:
          v196 = sub_100058000(&qword_100775A58);
          v197 = v272;
          v198 = &v272[*(v196 + 48)];
          v184(v272, v145, v143);
          *v198 = v185;
          v198[1] = &off_10072C830;
          (*(*(v196 - 8) + 56))(v197, 0, 1, v196);
          return;
        }

        v186 = &unk_100788000;
      }

      else
      {

        sub_1000079B4(v259, &qword_100772140);
        sub_1000079B4(v142, &qword_100772140);
        (*(v260 + 8))(v265, v261);
        (*(v263 + 8))(v262, v264);
        (*(v269 + 8))(v257, v258);
      }

      v195 = v235;
      (*(v268 + 16))(v235, v145, v143);
      type metadata accessor for PencilWritingStateReporter(0);
      v185 = swift_allocObject();
      swift_weakInit();
      *(v185 + OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_cancellable) = 0;
      v184((v185 + v186[290]), v195, v143);
      swift_weakAssign();
      v144[11] = v185;

      goto LABEL_64;
    }

    v248 = v111 + 48;
    v137 = *(v111 + 32);
    v137(v113, v125, v123);
    if ((sub_1004EBDC8(v273, v113, v270) & 1) != 0 && TTRInCellEditingPresenterManagingHelper.activeInCellTitleEditingPresenter(editing:)())
    {
      v246 = (v111 + 56);
      v251 = v138;
      swift_getObjectType();
      sub_10003BE34(v253);
      v139 = v219;
      TTRRemindersListEditingReminderCreationOptions.init(initialPropertyValueProvider:startsEditing:animated:)();
      v140 = v218;
      dispatch thunk of TTRReminderCellEditingInCellPresenterTitleEditing.requestCommitAndCreateNewIfTitleIsNonEmpty(options:)();
      swift_unknownObjectRelease();
      (*(v220 + 8))(v139, v221);
      v141 = v266;
      if ((v126)(v140, 1, v266) != 1)
      {
        (*(v268 + 8))(v254, v141);
        v199 = v215;
        v137(v215, v140, v141);
        v142 = v255;
        v137(v255, v199, v141);
        (v267)(v142, 0, 1, v141);
        v144 = v273;
        v143 = v141;
        v145 = v256;
LABEL_46:
        v158 = v252;
        v159 = v271;
        goto LABEL_57;
      }

      sub_1000079B4(v140, &qword_100772140);
      v113 = v254;
      v111 = v268;
    }

    v142 = v255;
    v143 = v266;
    (*(v111 + 16))(v255, v113, v266);
    (v267)(v142, 0, 1, v143);
    v144 = v273;
    v145 = v256;
    v146 = v253;
    if (v253)
    {
      v247 = v126;

      *&v274 = _typeName(_:qualified:)();
      *(&v274 + 1) = v147;
      v148._countAndFlagsBits = 0x6C616974696E692DLL;
      v148._object = 0xED000065756C6156;
      String.append(_:)(v148);
      v149 = v230;
      sub_100410F2C(v113, v274, *(&v274 + 1), v230);

      v150 = v229;
      sub_10000794C(v149, v229, &qword_100788B48);
      v151 = type metadata accessor for TTRRemindersListEditingSessionProviderCapability.EditingSessionStateResult();
      v152 = *(v151 - 8);
      if ((*(v152 + 48))(v150, 1, v151) == 1)
      {
        sub_1000079B4(v149, &qword_100788B48);
        sub_1000301AC(v146);
        v153 = v150;
      }

      else
      {
        TTRRemindersListEditingSessionProviderCapability.EditingSessionStateResult.sessionState.getter();
        (*(v152 + 8))(v150, v151);
        type metadata accessor for TTRReminderEditor();
        TTRRemindersListEditingSessionState.reminderChangeItem.getter();
        v276 = 0;
        v274 = 0u;
        v275 = 0u;
        TTRReminderEditor.__allocating_init(changeItem:undoContext:)();
        v146();
        sub_1000301AC(v146);

        v153 = v149;
      }

      sub_1000079B4(v153, &qword_100788B48);
      v142 = v255;
      v126 = v247;
      v145 = v256;
    }

    if ((v270 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
    {
      v155 = v144[3];
      v156 = swift_getObjectType();
      v157 = sub_1004F5C50(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter);
      (*(v155 + 24))(v144, v157, v113, v156, v155);
      swift_unknownObjectRelease();
    }

    (*(v268 + 8))(v113, v143);
    goto LABEL_46;
  }

  v112 = v259;
  if (v119 == enum case for TTRRemindersListEditingSessionState.SaveState.saving(_:) || v119 == enum case for TTRRemindersListEditingSessionState.SaveState.saved(_:))
  {
    (v108[1])(v246, v109);
    v110 = 1;
    goto LABEL_28;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_1004EB45C@<X0>(unsigned int a1@<W0>, char *a2@<X8>)
{
  v3 = v2;
  v71 = a2;
  v5 = sub_100058000(&qword_10076C6F0);
  __chkstk_darwin(v5 - 8);
  v61 = &v58 - v6;
  v62 = type metadata accessor for TTRRemindersListTargetContainer();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v58 = &v58 - v9;
  v10 = sub_100058000(&qword_10076B070);
  __chkstk_darwin(v10 - 8);
  v65 = &v58 - v11;
  v68 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  __chkstk_darwin(v69);
  v63 = (&v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v70 = &v58 - v15;
  __chkstk_darwin(v16);
  v18 = &v58 - v17;
  __chkstk_darwin(v19);
  v21 = (&v58 - v20);
  v64 = type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0);
  __chkstk_darwin(v64);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v3 + 40);
  ObjectType = swift_getObjectType();
  v26 = *(v24 + 312);

  v26((a1 >> 6) & 1, sub_1004F6A58, v3, ObjectType, v24);

  sub_1004F68A4(v23, v21, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  sub_1004F68A4(v21, v18, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
    v28 = *(v27 - 8);
    v29 = (*(v28 + 88))(v18, v27);
    v30 = enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:);
    (*(v28 + 8))(v18, v27);
    if (v29 == v30)
    {
      swift_getObjectType();
      Fallback = dispatch thunk of TTRRemindersListInteractorType.fetchDefaultListOrCreateFallbackList()();
      sub_1004F676C(v21, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
      if (Fallback)
      {
        *v21 = Fallback;
        (*(v28 + 104))(v21, enum case for TTRRemindersListTargetContainer.TargetList.staleList(_:), v27);
      }

      else
      {
        *v21 = 1;
      }

      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_1004F676C(v18, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  }

  v32 = v70;
  sub_1004F68A4(v21, v70, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  if (!swift_getEnumCaseMultiPayload())
  {
    if (*v32 == 1)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v38 = *(v3 + 24);
        v39 = swift_getObjectType();
        v40 = sub_1004F5C50(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter);
        (*(v38 + 40))(v3, v40, v39, v38);
        swift_unknownObjectRelease();
      }
    }

    sub_1004F676C(v21, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    sub_1004F676C(v23, type metadata accessor for TTRRemindersListCreationTargetWithSectionID);
    goto LABEL_26;
  }

  v33 = sub_1004F676C(v32, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  v34 = v65;
  (*&v23[*(v64 + 20)])(v33);
  v35 = v66;
  v36 = v68;
  if ((*(v66 + 48))(v34, 1, v68) != 1)
  {
    v41 = v23;
    v42 = *(v35 + 32);
    v42(v67, v34, v36);
    sub_1004F683C(v21, v63, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v34 = v61;
      v44 = v62;
      v45 = v59;
      v46 = v60;
      if (EnumCaseMultiPayload == 2)
      {
        v49 = v63[1];
        *v59 = *v63;
        v45[1] = v49;
        v48 = &enum case for TTRRemindersListTargetContainer.targetReminder(_:);
        goto LABEL_20;
      }

      sub_1004F676C(v63, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    }

    else
    {
      v34 = v61;
      v44 = v62;
      v45 = v59;
      v46 = v60;
      if (EnumCaseMultiPayload)
      {
        v47 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        (*(*(v47 - 8) + 32))(v45, v63, v47);
        v48 = &enum case for TTRRemindersListTargetContainer.targetList(_:);
LABEL_20:
        (*(v46 + 104))(v45, *v48, v44);
        (*(v46 + 32))(v34, v45, v44);
        v50 = 0;
LABEL_23:
        (*(v46 + 56))(v34, v50, 1, v44);
        sub_1004F676C(v41, type metadata accessor for TTRRemindersListCreationTargetWithSectionID);
        if ((*(v46 + 48))(v34, 1, v44) != 1)
        {
          v53 = *(v46 + 32);
          v54 = v58;
          v53(v58, v34, v44);
          v55 = sub_100058000(&qword_100775770);
          v56 = *(v55 + 48);
          v57 = v71;
          v42(v71, v67, v36);
          v53(&v57[v56], v54, v44);
          return (*(*(v55 - 8) + 56))(v57, 0, 1, v55);
        }

        (*(v35 + 8))(v67, v36);
        v37 = &qword_10076C6F0;
        goto LABEL_25;
      }
    }

    v50 = 1;
    goto LABEL_23;
  }

  sub_1004F676C(v21, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  sub_1004F676C(v23, type metadata accessor for TTRRemindersListCreationTargetWithSectionID);
  v37 = &qword_10076B070;
LABEL_25:
  sub_1000079B4(v34, v37);
LABEL_26:
  v51 = sub_100058000(&qword_100775770);
  return (*(*(v51 - 8) + 56))(v71, 1, 1, v51);
}

uint64_t sub_1004EBDC8(uint64_t a1, uint64_t a2, char a3)
{
  result = TTRInCellEditingPresenterManagingHelper.activeInCellTitleEditingPresenter(editing:)();
  if (result)
  {
    if ((a3 & 8) != 0)
    {
      swift_unknownObjectRelease();
      return 1;
    }

    if ((a3 & 0x10) != 0)
    {
      swift_getObjectType();
      v5 = dispatch thunk of TTRReminderCellEditingInCellPresenterTitleEditing.isMarkedCommittableForPencil.getter();
      swift_unknownObjectRelease();
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1004EBE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[1] = a3;
  v4 = type metadata accessor for TTRRemindersListReminderInsertionPosition();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v5 + 104))(v7, enum case for TTRRemindersListReminderInsertionPosition.afterAll(_:), v4);
  v8 = *(a2 + 40);
  ObjectType = swift_getObjectType();
  (*(v8 + 408))(ObjectType, v8);
  v10 = TTRRemindersListInteractorType.newReminderChangeItem(objectID:title:targetContainer:position:remindersBeingSaved:)();

  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t sub_1004EBFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for TTRRemindersListEditingReminderCreationOptions();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100788B48);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:) || v14 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:))
  {
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    if (v14 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      v16 = type metadata accessor for TTRRemindersListViewModel.Item();
      (*(*(v16 - 8) + 56))(v24, 1, 1, v16);
      return (*(v11 + 8))(v13, v10);
    }

    if (v14 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }
  }

  v25 = _typeName(_:qualified:)();
  v26 = v18;
  v19._countAndFlagsBits = 0x6C616974696E692DLL;
  v19._object = 0xED000065756C6156;
  String.append(_:)(v19);
  sub_100410F2C(a1, v25, v26, v9);

  sub_1000079B4(v9, &qword_100788B48);
  swift_getObjectType();
  v20 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.reminderChangeItem(forEditing:)();
  if (v20)
  {
    v21 = v20;
    TTRRemindersListEditingReminderCreationOptions.init(initialPropertyValueProvider:startsEditing:animated:)();
    sub_1004EC39C(a1, v21, v6, v24);

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v22 = type metadata accessor for TTRRemindersListViewModel.Item();
    return (*(*(v22 - 8) + 56))(v24, 1, 1, v22);
  }
}

uint64_t sub_1004EC39C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v172 = a3;
  v198 = a2;
  v193 = a4;
  v180 = *v4;
  v7 = sub_100058000(&qword_10076DF30);
  __chkstk_darwin(v7 - 8);
  v157 = &v151 - v8;
  v159 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v156 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v163 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v162 = &v151 - v12;
  v170 = type metadata accessor for TTREditingStateOption();
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v168 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&qword_100788B50);
  __chkstk_darwin(v14 - 8);
  v171 = &v151 - v15;
  v161 = sub_100058000(&qword_100788B58);
  __chkstk_darwin(v161);
  v160 = &v151 - v16;
  v17 = sub_100058000(&qword_100788B60);
  __chkstk_darwin(v17 - 8);
  v181 = &v151 - v18;
  v19 = type metadata accessor for TTRRemindersListViewModel.Item();
  v20 = *(v19 - 8);
  v196 = v19;
  v197 = v20;
  __chkstk_darwin(v19);
  v173 = &v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v166 = &v151 - v23;
  __chkstk_darwin(v24);
  v167 = &v151 - v25;
  v26 = type metadata accessor for TTRRemindersListReminderCreationLocation();
  v191 = *(v26 - 8);
  v192 = v26;
  __chkstk_darwin(v26);
  v194 = &v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v28 - 8);
  v185 = &v151 - v29;
  v190 = type metadata accessor for TTRRemindersListReminderInsertionPosition();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v179 = &v151 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = v30;
  __chkstk_darwin(v31);
  v188 = (&v151 - v32);
  v177 = type metadata accessor for REMAnalyticsEvent();
  v176 = *(v177 - 8);
  __chkstk_darwin(v177);
  v34 = &v151 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100058000(&qword_10076C6F0);
  __chkstk_darwin(v35 - 8);
  v37 = &v151 - v36;
  v199 = type metadata accessor for TTRRemindersListTargetContainer();
  v195 = *(v199 - 8);
  v38 = *(v195 + 64);
  __chkstk_darwin(v199);
  v175 = &v151 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = (&v151 - v40);
  __chkstk_darwin(v42);
  v186 = &v151 - v43;
  v44 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  __chkstk_darwin(v44);
  v46 = (&v151 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v47);
  v49 = &v151 - v48;
  v50 = v4[4];
  v182 = v5;
  v51 = v5[5];
  ObjectType = swift_getObjectType();
  v53 = *(v51 + 328);
  v184 = v50;
  v183 = ObjectType;
  v53(a1, v198);
  v187 = v49;
  sub_1004F68A4(v49, v46, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v57 = v46[1];
      *v41 = *v46;
      v41[1] = v57;
      v56 = &enum case for TTRRemindersListTargetContainer.targetReminder(_:);
      goto LABEL_6;
    }

    sub_1004F676C(v46, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  }

  else if (EnumCaseMultiPayload)
  {
    v55 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
    (*(*(v55 - 8) + 32))(v41, v46, v55);
    v56 = &enum case for TTRRemindersListTargetContainer.targetList(_:);
LABEL_6:
    v58 = v199;
    v59 = v195;
    (*(v195 + 104))(v41, *v56, v199);
    (*(v59 + 32))(v37, v41, v58);
    v60 = 0;
    goto LABEL_9;
  }

  v60 = 1;
  v58 = v199;
  v59 = v195;
LABEL_9:
  (*(v59 + 56))(v37, v60, 1, v58);
  if ((*(v59 + 48))(v37, 1, v58) == 1)
  {
    sub_1004F676C(v187, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    sub_1000079B4(v37, &qword_10076C6F0);
    return (*(v197 + 56))(v193, 1, 1, v196);
  }

  v174 = v51;
  v62 = a1;
  v63 = *(v59 + 32);
  v64 = v186;
  v154 = v59 + 32;
  v153 = v63;
  v63(v186, v37, v58);
  v65 = v59;
  if (qword_1007673E0 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  sub_100003E30(v66, qword_100788800);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
  v152 = v62;
  v68 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v68;
  *(inited + 56) = v69;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  type metadata accessor for TTRUserDefaults();
  v70 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v71 = sub_100058000(&qword_1007757E8);
  v72 = &v34[*(v71 + 48)];
  v73 = &v34[*(v71 + 80)];
  v74 = enum case for REMUserOperation.createReminder(_:);
  v75 = type metadata accessor for REMUserOperation();
  (*(*(v75 - 8) + 104))(v34, v74, v75);
  *v72 = TTRUserDefaults.activitySessionId.getter();
  v72[1] = v76;
  v155 = v70;
  TTRUserDefaults.activitySessionBeginTime.getter();
  v200 = _typeName(_:qualified:)();
  v201 = v77;
  v78._countAndFlagsBits = 0x69547974706D452DLL;
  v78._object = 0xEB00000000656C74;
  String.append(_:)(v78);
  v79 = v201;
  *v73 = v200;
  v73[1] = v79;
  v80 = v176;
  v81 = v177;
  (*(v176 + 104))(v34, enum case for REMAnalyticsEvent.userOperation(_:), v177);
  REMAnalyticsManager.post(event:)();

  (*(v80 + 8))(v34, v81);
  v82 = v188;
  *v188 = v198;
  v83 = v189;
  v84 = v190;
  (*(v189 + 104))(v82, enum case for TTRRemindersListReminderInsertionPosition.afterSiblingChangeItem(_:), v190);
  v86 = v65 + 16;
  v85 = *(v65 + 16);
  v87 = v175;
  v88 = v64;
  v89 = v199;
  v85(v175, v88, v199);
  v90 = v179;
  (*(v83 + 16))(v179, v82, v84);
  v91 = (*(v86 + 64) + 24) & ~*(v86 + 64);
  v92 = (v38 + *(v83 + 80) + v91) & ~*(v83 + 80);
  v93 = swift_allocObject();
  v94 = v182;
  *(v93 + 16) = v182;
  v153(v93 + v91, v87, v89);
  v95 = v196;
  (*(v83 + 32))(v93 + v92, v90, v84);
  v96 = (v197 + 16);
  v97 = v194;
  v179 = *(v197 + 16);
  (v179)(v194, v152, v95);
  (*(v191 + 104))(v97, enum case for TTRRemindersListReminderCreationLocation.belowItem(_:), v192);
  v98 = v174;
  v99 = *(v174 + 368);
  v100 = v198;

  v101 = v181;
  v102 = v183;
  v99(v97, v183, v98);
  v103 = type metadata accessor for TTRRemindersListUncommittedReminder();
  v104 = *(v103 - 8);
  v105 = (*(v104 + 48))(v101, 1, v103);
  v180 = v93;
  if (v105 != 1)
  {
    v118 = v166;
    TTRRemindersListUncommittedReminder.item.getter();
    (*(v104 + 8))(v101, v103);
    v119 = v197;
    v120 = v167;
    (*(v197 + 32))(v167, v118, v95);
    v117 = v185;
    (v179)(v185, v120, v95);
    (*(v119 + 56))(v117, 0, 1, v95);
    Strong = swift_unknownObjectWeakLoadStrong();
    v116 = v193;
    if (Strong)
    {
      v122 = v94[3];
      v123 = swift_getObjectType();
      v124 = sub_1004F5C50(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter);
      (*(v122 + 24))(v94, v124, v120, v123, v122);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v146 = v186;
    (*(v197 + 8))(v120, v95);
    (*(v191 + 8))(v194, v192);
    (*(v189 + 8))(v188, v190);
    (*(v195 + 8))(v146, v199);
    sub_1004F676C(v187, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    goto LABEL_27;
  }

  v198 = v96;
  sub_1000079B4(v101, &qword_100788B60);
  v106 = enum case for TTREditingStateOption.InputType.unspecified(_:);
  v107 = type metadata accessor for TTREditingStateOption.InputType();
  v108 = v168;
  (*(*(v107 - 8) + 104))(v168, v106, v107);
  v109 = v169;
  v110 = v170;
  (*(v169 + 104))(v108, enum case for TTREditingStateOption.startsEditing(_:), v170);
  LOBYTE(v106) = TTRRemindersListEditingReminderCreationOptions.animated.getter();
  v111 = TTRRemindersListEditingReminderCreationOptions.initialPropertyValueProvider.getter();
  v112 = v171;
  (*(v174 + 376))(v194, v108, v106 & 1, sub_1004F690C, v93, v111, v113, v102, v174);
  sub_1000301AC(v111);
  (*(v109 + 8))(v108, v110);
  v114 = sub_100058000(&qword_1007860B0);
  v115 = (*(*(v114 - 8) + 48))(v112, 1, v114);
  v116 = v193;
  if (v115 != 1)
  {
    v125 = *(v112 + *(v114 + 48));
    v126 = v161;
    v127 = *(v161 + 48);
    v129 = v196;
    v128 = v197;
    v130 = *(v197 + 32);
    v131 = v160;
    v130(v160, v112, v196);
    *&v131[v127] = v125;
    v181 = *&v131[*(v126 + 48)];
    v132 = v173;
    v130(v173, v131, v129);
    v133 = v185;
    (v179)(v185, v132, v129);
    (*(v128 + 56))(v133, 0, 1, v129);
    v134 = v174;
    v135 = v162;
    v136 = v183;
    (*(v174 + 576))(v183, v174);
    v137 = v164;
    v138 = v163;
    v139 = v165;
    (*(v164 + 104))(v163, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v165);
    LOBYTE(v133) = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
    v140 = *(v137 + 8);
    v140(v138, v139);
    v140(v135, v139);
    if (v133)
    {
      v141 = v134;
      v142 = v181;
      v143 = v157;
      (*(v141 + 608))(v136);
      v144 = v158;
      v145 = v159;
      if ((*(v158 + 48))(v143, 1, v159) == 1)
      {

        (*(v197 + 8))(v173, v129);
        (*(v191 + 8))(v194, v192);
        (*(v189 + 8))(v188, v190);
        (*(v195 + 8))(v186, v199);
        sub_1004F676C(v187, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
        sub_1000079B4(v143, &qword_10076DF30);
LABEL_26:
        v116 = v193;
        v117 = v185;
        goto LABEL_27;
      }

      v147 = v156;
      (*(v144 + 32))(v156, v143, v145);
      swift_getObjectType();
      sub_100058000(&qword_10076B780);
      v148 = swift_allocObject();
      *(v148 + 16) = xmmword_10062D420;
      *(v148 + 32) = v142;
      v149 = v142;
      v150 = v188;
      dispatch thunk of TTRRemindersListInteractorType.updateManualOrdering(uncommittedReminderIDs:position:paramsForREMManualOrdering:)();

      (*(v144 + 8))(v147, v145);
      (*(v197 + 8))(v173, v129);
      (*(v191 + 8))(v194, v192);
      (*(v189 + 8))(v150, v190);
    }

    else
    {

      (*(v197 + 8))(v173, v129);
      (*(v191 + 8))(v194, v192);
      (*(v189 + 8))(v188, v190);
    }

    (*(v195 + 8))(v186, v199);
    sub_1004F676C(v187, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    goto LABEL_26;
  }

  (*(v191 + 8))(v194, v192);
  (*(v189 + 8))(v188, v190);
  (*(v195 + 8))(v186, v199);
  sub_1004F676C(v187, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  sub_1000079B4(v112, &qword_100788B50);
  v117 = v185;
  (*(v197 + 56))(v185, 1, 1, v196);
LABEL_27:
  sub_100016588(v117, v116, &qword_100772140);
}

uint64_t sub_1004EDBEC(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_100058000(&qword_100788B70);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_100058000(&qword_100782918);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  sub_1004EE144(a1, sub_1004EDFE0, sub_1004EE090, 0, &qword_100788B70, &unk_1006442E0, &qword_100782918, v10, &unk_10063E660);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    v19 = *(v11 + 48);
    *v17 = 0;
    v20 = enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:);
    (*(v3 + 104))(&v17[v19], enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:), v2);
    if (v18(v10, 1, v11) != 1)
    {
      sub_1000079B4(v10, &qword_100788B70);
    }
  }

  else
  {
    sub_100016588(v10, v17, &qword_100782918);
    v20 = enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:);
  }

  sub_10000794C(v17, v14, &qword_100782918);
  v21 = *v14;
  (*(v3 + 32))(v7, v14 + *(v11 + 48), v2);
  v22 = v26;
  (*(v3 + 16))(v26, v7, v2);
  v23 = (*(v3 + 88))(v22, v2);
  if (v23 == v20)
  {
    goto LABEL_8;
  }

  if (v23 == enum case for TTRRemindersListReminderPostSaveMovement.removedFromList(_:))
  {

    v21 = 0;
LABEL_8:
    (*(v3 + 8))(v7, v2);
    sub_1000079B4(v17, &qword_100782918);
    return v21;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id sub_1004EDFE0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = *(sub_100058000(&qword_100782918) + 48);
  *a2 = a1;
  v4 = enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:);
  v5 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
  (*(*(v5 - 8) + 104))(&a2[v3], v4, v5);

  return a1;
}

uint64_t sub_1004EE090@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v2 = sub_100058000(&qword_100782918);
  *a1 = dispatch thunk of TTRRemindersListEditingSession.finishAndForceSave()();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1004EE144@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, void (*a3)(uint64_t, void *)@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v82 = a4;
  v83 = a3;
  v88 = a8;
  v84 = a9;
  v85 = a7;
  v14 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v78 = *(v14 - 8);
  v79 = v14;
  __chkstk_darwin(v14);
  v77 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRRemindersListEditingSessionUndoRegistration();
  v75 = *(v16 - 8);
  v76 = v16;
  __chkstk_darwin(v16);
  v74 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TTRRemindersListViewModel.Item();
  v80 = *(v18 - 8);
  v81 = v18;
  v19 = __chkstk_darwin(v18);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v73 = &v73 - v22;
  v23 = sub_100058000(&qword_100775780);
  __chkstk_darwin(v23 - 8);
  v25 = &v73 - v24;
  v86 = a5;
  v87 = a6;
  v26 = sub_100058000(a5);
  __chkstk_darwin(v26 - 8);
  v28 = &v73 - v27;
  v29 = *(v9 + 40);
  ObjectType = swift_getObjectType();
  if (!(*(v29 + 440))(a1, ObjectType, v29))
  {
    v31 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
    if (v31)
    {
      v32 = v31;
      a2();

      v33 = sub_100058000(v85);
      (*(*(v33 - 8) + 56))(v28, 0, 1, v33);
      return sub_100016588(v28, v88, v86);
    }

    if (qword_1007673E0 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_100003E30(v62, qword_100788800);
    v64 = v80;
    v63 = v81;
    (*(v80 + 16))(v21, a1, v81);
    v46 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v46, v65))
    {

      (*(v64 + 8))(v21, v63);
      goto LABEL_28;
    }

    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v89 = v67;
    *v66 = 136315138;
    sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    v68 = TTRTreeStorageItem.treeItemDescription.getter();
    v70 = v69;
    (*(v64 + 8))(v21, v63);
    v71 = sub_100004060(v68, v70, &v89);

    *(v66 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v46, v65, "commitForShowingReminderDetail: failed to get REMReminder {item: %s}", v66, 0xCu);
    sub_100004758(v67);

    goto LABEL_25;
  }

  if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter(editing:)())
  {
    swift_getObjectType();
    dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestCommitForShowingReminderDetail()();
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v34 = *(v9 + 24);
    v35 = swift_getObjectType();
    v36 = sub_1004F5C50(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter);
    (*(v34 + 32))(v9, v36, a1, v35, v34);
    goto LABEL_8;
  }

LABEL_9:
  v89 = 0;
  v90 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v89 = _typeName(_:qualified:)();
  v90 = v37;
  v38._object = 0x800000010068A930;
  v38._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v38);
  sub_100410DCC(v25);
  sub_1004F5C50(&qword_100775790, type metadata accessor for TTRRemindersListEditingSessionProvider);

  v39 = TTRRemindersListEditingSessionProviderCapability.acquireEditingSession(forEditing:acquirerName:undoContext:editingSessionState:editingSessionDelegate:)();
  sub_1000079B4(v25, &qword_100775780);

  if (v39)
  {
    type metadata accessor for TTRRemindersListConcreteEditingSession();
    dispatch thunk of TTRRemindersListEditingSession.reminder.getter();
    sub_10000C36C(&v89, v91);
    dispatch thunk of TTRReminderProtocol.titleAsString.getter();
    if (v40)
    {
      v92 = String.validatedReminderTitle()();
      isValid = v92.isValid;

      sub_100004758(&v89);

      if (isValid)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_100004758(&v89);
    }

    TTRRemindersListEditingSession.effectiveParentList.getter();
    static TTRLocalizableStrings.Common.defaultTitleForBlankReminder(effectiveParentList:)();
    sub_1000079B4(&v89, &unk_100775680);
    v54 = objc_allocWithZone(NSAttributedString);
    v55 = String._bridgeToObjectiveC()();

    v56 = [v54 initWithString:v55];

    v58 = v74;
    v57 = v75;
    v59 = v76;
    (*(v75 + 104))(v74, enum case for TTRRemindersListEditingSessionUndoRegistration.automatic(_:), v76);
    TTRRemindersListEditingSession.setTitleWithOptionalUndo(_:locale:undoRegistration:canMarkHasSetTitle:)();

    (*(v57 + 8))(v58, v59);
    v60 = v77;
    static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
    dispatch thunk of TTRRemindersListEditingSession.setNeedsDisplay(_:)();
    (*(v78 + 8))(v60, v79);
LABEL_19:
    v83(v39, &protocol witness table for TTRRemindersListConcreteEditingSession);

    return sub_100016588(v28, v88, v86);
  }

  if (qword_1007673E0 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_100003E30(v42, qword_100788800);
  v44 = v80;
  v43 = v81;
  v45 = v73;
  (*(v80 + 16))(v73, a1, v81);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v46, v47))
  {

    (*(v44 + 8))(v45, v43);
    goto LABEL_28;
  }

  v48 = swift_slowAlloc();
  v49 = swift_slowAlloc();
  v89 = v49;
  *v48 = 136315138;
  sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
  v50 = TTRTreeStorageItem.treeItemDescription.getter();
  v52 = v51;
  (*(v44 + 8))(v45, v43);
  v53 = sub_100004060(v50, v52, &v89);

  *(v48 + 4) = v53;
  _os_log_impl(&_mh_execute_header, v46, v47, "commitForShowingReminderDetail: failed to acquire editing session {item: %s}", v48, 0xCu);
  sub_100004758(v49);

LABEL_25:

LABEL_28:
  v72 = sub_100058000(v85);
  return (*(*(v72 - 8) + 56))(v88, 1, 1, v72);
}

uint64_t sub_1004EEBA8(uint64_t a1)
{
  v24 = a1;
  v1 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_100058000(&qword_100788BA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_100058000(&qword_100782908);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v24 - v15;
  sub_1004EE144(v24, sub_1004F8D2C, sub_1004EF0EC, 0, &qword_100788BA0, &unk_100644308, &qword_100782908, v9, &unk_100644310);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v24 = v6;
    v18 = &v16[*(v10 + 48)];
    v19 = enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:);
    (*(v2 + 104))(v16, enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:), v1);
    *v18 = 0;
    *(v18 + 1) = 0;
    if (v17(v9, 1, v10) != 1)
    {
      sub_1000079B4(v9, &qword_100788BA0);
    }

    v6 = v24;
  }

  else
  {
    sub_100016588(v9, v16, &qword_100782908);
    v19 = enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:);
  }

  sub_10000794C(v16, v14, &qword_100782908);
  v20 = *&v14[*(v10 + 48)];
  (*(v2 + 32))(v6, v14, v1);
  v21 = v25;
  (*(v2 + 16))(v25, v6, v1);
  v22 = (*(v2 + 88))(v21, v1);
  if (v22 == v19)
  {
    goto LABEL_9;
  }

  if (v22 == enum case for TTRRemindersListReminderPostSaveMovement.removedFromList(_:))
  {
    sub_100489140(v20);
    v20 = 0;
LABEL_9:
    (*(v2 + 8))(v6, v1);
    sub_1000079B4(v16, &qword_100782908);
    return v20;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1004EEFB4@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v2 = dispatch thunk of TTRRemindersListInteractorType.reminderChangeItem(forEditing:)();
  v3 = [v2 objectID];
  *(swift_allocObject() + 16) = v3;
  sub_100058000(&qword_100775980);
  swift_allocObject();
  v4 = Future.init(_:)();
  v5 = (a1 + *(sub_100058000(&qword_100782908) + 48));
  v6 = enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:);
  v7 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
  result = (*(*(v7 - 8) + 104))(a1, v6, v7);
  *v5 = v2;
  v5[1] = v4;
  return result;
}

uint64_t sub_1004EF0EC@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v2 = sub_100058000(&qword_100782908);
  v3 = (a1 + *(v2 + 48));
  *v3 = dispatch thunk of TTRRemindersListEditingSession.finishAndForceSaveAsync()();
  v3[1] = v4;
  v5 = *(*(v2 - 8) + 56);

  return v5(a1, 0, 1, v2);
}

uint64_t sub_1004EF1B4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for TTRReminderListEditingPresenter.EditingState(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v28[-v8];
  v10 = OBJC_IVAR____TtC9Reminders31TTRReminderListEditingPresenter_state;
  swift_beginAccess();
  sub_1004F68A4(a1 + v10, v9, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  v9[*(v4 + 20)] = a2;
  sub_1004F68A4(a1 + v10, v7, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  v11 = sub_1004F5C98(v7, v9);
  sub_1004F676C(v7, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  if ((v11 & 1) == 0)
  {
    if (qword_1007673E0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003E30(v12, qword_100788800);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31[0] = v30;
      *v15 = 136315394;
      sub_1004F68A4(a1 + v10, v7, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
      sub_1004F5C50(&unk_1007755F8, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
      v29 = v14;
      v16 = TTRRemindersListEditingState.loggingDescription.getter();
      v18 = v17;
      sub_1004F676C(v7, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
      v19 = sub_100004060(v16, v18, v31);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      swift_beginAccess();
      v20 = TTRRemindersListEditingState.loggingDescription.getter();
      v22 = sub_100004060(v20, v21, v31);

      *(v15 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v13, v29, "TTRReminderListEditingPresenter editing state changed {from: '%s', to: '%s'}", v15, 0x16u);
      swift_arrayDestroy();
    }

    swift_beginAccess();
    sub_1004F68A4(v9, v7, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
    swift_beginAccess();
    sub_1004F6708(v7, a1 + v10);
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(a1 + 24);
      ObjectType = swift_getObjectType();
      v25 = sub_1004F5C50(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter);
      v31[3] = v4;
      v31[4] = sub_1004F5C50(&unk_1007755F8, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
      v26 = sub_1000317B8(v31);
      sub_1004F68A4(v9, v26, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
      (*(v23 + 8))(a1, v25, v31, ObjectType, v23);
      swift_unknownObjectRelease();
      sub_100004758(v31);
    }
  }

  return sub_1004F676C(v9, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
}

uint64_t sub_1004EF664(void (*a1)(_BYTE *))
{
  v2 = v1;
  v4 = type metadata accessor for TTRReminderListEditingPresenter.EditingState(0);
  __chkstk_darwin(v4);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v29[-v8];
  v10 = OBJC_IVAR____TtC9Reminders31TTRReminderListEditingPresenter_state;
  swift_beginAccess();
  sub_1004F68A4(v1 + v10, v9, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  a1(v9);
  sub_1004F68A4(v1 + v10, v6, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  v11 = sub_1004F5C98(v6, v9);
  sub_1004F676C(v6, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  if ((v11 & 1) == 0)
  {
    if (qword_1007673E0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003E30(v12, qword_100788800);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    v15 = os_log_type_enabled(v13, v14);
    v32 = v4;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33[0] = v31;
      *v16 = 136315394;
      sub_1004F68A4(v2 + v10, v6, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
      sub_1004F5C50(&unk_1007755F8, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
      v30 = v14;
      v17 = TTRRemindersListEditingState.loggingDescription.getter();
      v19 = v18;
      sub_1004F676C(v6, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
      v20 = sub_100004060(v17, v19, v33);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      swift_beginAccess();
      v21 = TTRRemindersListEditingState.loggingDescription.getter();
      v23 = sub_100004060(v21, v22, v33);

      *(v16 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v13, v30, "TTRReminderListEditingPresenter editing state changed {from: '%s', to: '%s'}", v16, 0x16u);
      swift_arrayDestroy();
    }

    swift_beginAccess();
    sub_1004F68A4(v9, v6, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
    swift_beginAccess();
    sub_1004F6708(v6, v2 + v10);
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      v26 = sub_1004F5C50(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter);
      v33[3] = v32;
      v33[4] = sub_1004F5C50(&unk_1007755F8, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
      v27 = sub_1000317B8(v33);
      sub_1004F68A4(v9, v27, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
      (*(v24 + 8))(v2, v26, v33, ObjectType, v24);
      swift_unknownObjectRelease();
      sub_100004758(v33);
    }
  }

  return sub_1004F676C(v9, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
}

uint64_t sub_1004EFB24(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 40);
  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 440))(a1, ObjectType, v10);
  result = (*(v10 + 400))(a1, ObjectType, v10);
  if (a2)
  {
    if (v12)
    {
      if (qword_1007673E0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100003E30(v14, qword_100788800);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        aBlock[0] = v18;
        *v17 = 136315138;
        TTRRemindersListEditingSessionState.item.getter();
        sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
        v19 = TTRTreeStorageItem.treeItemDescription.getter();
        v20 = v7;
        v22 = v21;
        (*(v20 + 8))(v9, v6);
        v23 = sub_100004060(v19, v22, aBlock);

        *(v17 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v15, v16, "TTRReminderListEditingPresenter: register undo for discarding uncommitted reminder {item: %s}", v17, 0xCu);
        sub_100004758(v18);
      }

      v24 = objc_opt_self();
      static TTRLocalizableStrings.UndoAction.deleteReminder.getter();
      v25 = String._bridgeToObjectiveC()();

      v26 = swift_allocObject();
      *(v26 + 16) = v3;
      *(v26 + 24) = v12;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_100262634;
      *(v27 + 24) = v26;
      aBlock[4] = sub_100026410;
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100026440;
      aBlock[3] = &unk_10072C988;
      v28 = _Block_copy(aBlock);

      [v24 withActionName:v25 block:v28];

      _Block_release(v28);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }

  else
  {
  }

  return result;
}

void sub_1004EFF6C()
{
  swift_getObjectType();
  v0 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
  dispatch thunk of TTRRemindersListInteractorType.registerUndoToSaveUncommittedReminder(_:)();
}

uint64_t sub_1004EFFD8()
{
  v0 = sub_100058000(&qword_100775780);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  sub_100410DCC(&v5 - v1);
  sub_1004F5C50(&qword_100775790, type metadata accessor for TTRRemindersListEditingSessionProvider);

  v3 = TTRRemindersListEditingSessionProviderCapability.acquireEditingSession(forEditing:acquirerName:undoContext:editingSessionState:editingSessionDelegate:)();
  sub_1000079B4(v2, &qword_100775780);

  return v3;
}

uint64_t sub_1004F0134(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v4 = v3;
  v99 = a3;
  v100 = a2;
  v6 = type metadata accessor for TTRRemindersListEditingSessionFinishingOption();
  v89 = *(v6 - 8);
  __chkstk_darwin(v6);
  v110 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v111 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100775780);
  __chkstk_darwin(v11 - 8);
  v98 = &v89 - v12;
  v116 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v116 - 8);
  __chkstk_darwin(v116);
  __chkstk_darwin(v14);
  v93 = &v89 - v15;
  __chkstk_darwin(v16);
  v19 = &v89 - v18;
  v118 = _swiftEmptyArrayStorage;
  v20 = *(a1 + 16);
  v95 = v4;
  v115 = v6;
  v97 = v8;
  v96 = v10;
  if (v20)
  {
    v90 = v17;
    v21 = *(v4 + 32);
    v22 = *(v4 + 40);
    ObjectType = swift_getObjectType();
    v106 = v22 + 440;
    v107 = ObjectType;
    v25 = *(v13 + 16);
    v24 = v13 + 16;
    v113 = v25;
    v26 = a1 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v104 = *(v22 + 440);
    v105 = (v24 - 8);
    v103 = *(v24 + 56);
    *&v27 = 136315138;
    v91 = v27;
    v112 = _swiftEmptyArrayStorage;
    v94 = _swiftEmptyArrayStorage;
    *&v109 = v24;
    v102 = v19;
    v101 = v21;
    v108 = v22;
    (v25)(v19, v26, v116);
    while (!v104(v19, v107, v22))
    {
      v38 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
      if (!v38)
      {
        v114 = v20;
        if (qword_1007673E0 != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        sub_100003E30(v60, qword_100788800);
        v61 = v90;
        v62 = v102;
        (v113)(v90, v102, v116);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v117[0] = v92;
          *v65 = v91;
          sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
          v66 = v116;
          v67 = TTRTreeStorageItem.treeItemDescription.getter();
          v69 = v68;
          v70 = *v105;
          (*v105)(v61, v66);
          v71 = sub_100004060(v67, v69, v117);

          *(v65 + 4) = v71;
          _os_log_impl(&_mh_execute_header, v63, v64, "Skip edit; failed to get REMReminder {item: %s}", v65, 0xCu);
          sub_100004758(v92);

          v19 = v102;
          v70(v102, v66);
        }

        else
        {

          v72 = *v105;
          v73 = v116;
          (*v105)(v61, v116);
          v72(v62, v73);
          v19 = v62;
        }

        goto LABEL_4;
      }

      v39 = v38;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*v105)(v19, v116);
      v94 = v118;
LABEL_5:
      v26 += v103;
      --v20;
      v22 = v108;
      if (!v20)
      {
        goto LABEL_33;
      }

      (v113)(v19, v26, v116);
    }

    v114 = v20;

    v117[0] = _typeName(_:qualified:)();
    v117[1] = v30;
    v31._countAndFlagsBits = 0x746964652DLL;
    v31._object = 0xE500000000000000;
    String.append(_:)(v31);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v33 = Strong;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v34 = *(v33 + 24);
        v35 = swift_getObjectType();
        v36 = sub_1004F5C50(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter);
        v37 = v98;
        (*(v34 + 48))(v33, v36, v35, v34);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_17:
        sub_1004F5C50(&qword_100775790, type metadata accessor for TTRRemindersListEditingSessionProvider);

        v19 = v102;
        v41 = TTRRemindersListEditingSessionProviderCapability.acquireEditingSession(forEditing:acquirerName:undoContext:editingSessionState:editingSessionDelegate:)();

        sub_1000079B4(v37, &qword_100775780);

        if (!v41)
        {
          if (qword_1007673E0 != -1)
          {
            swift_once();
          }

          v47 = type metadata accessor for Logger();
          sub_100003E30(v47, qword_100788800);
          v48 = v93;
          (v113)(v93, v19, v116);
          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = v48;
            v52 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v117[0] = v92;
            *v52 = v91;
            sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
            v53 = v116;
            v54 = TTRTreeStorageItem.treeItemDescription.getter();
            v56 = v55;
            v57 = *v105;
            v58 = v51;
            v19 = v102;
            (*v105)(v58, v53);
            v59 = sub_100004060(v54, v56, v117);

            *(v52 + 4) = v59;
            _os_log_impl(&_mh_execute_header, v49, v50, "Skip edit; failed to create editing session {item: %s}", v52, 0xCu);
            sub_100004758(v92);

            v57(v19, v53);
          }

          else
          {

            v28 = *v105;
            v29 = v116;
            (*v105)(v48, v116);
            v28(v19, v29);
          }

LABEL_4:
          v20 = v114;
          goto LABEL_5;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v114;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v112 = sub_100547450(0, v112[2] + 1, 1, v112);
        }

        v44 = v112[2];
        v43 = v112[3];
        if (v44 >= v43 >> 1)
        {
          v112 = sub_100547450((v43 > 1), v44 + 1, 1, v112);
        }

        (*v105)(v19, v116);
        v45 = v112;
        v112[2] = v44 + 1;
        v46 = &v45[2 * v44];
        v46[4] = v41;
        v46[5] = &protocol witness table for TTRRemindersListConcreteEditingSession;
        goto LABEL_5;
      }

      swift_unknownObjectRelease();
    }

    v40 = type metadata accessor for TTRRemindersListUndoContext();
    v37 = v98;
    (*(*(v40 - 8) + 56))(v98, 1, 1, v40);
    goto LABEL_17;
  }

  v112 = _swiftEmptyArrayStorage;
  v94 = _swiftEmptyArrayStorage;
LABEL_33:
  v74 = v112[2];
  v75 = v94;
  if (!(v94 >> 62))
  {
    result = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v77 = v74 + result;
    if (!__OFADD__(v74, result))
    {
      goto LABEL_35;
    }

LABEL_49:
    __break(1u);
    return result;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v77 = v74 + result;
  if (__OFADD__(v74, result))
  {
    goto LABEL_49;
  }

LABEL_35:
  if (v77 < 1)
  {

    return 0;
  }

  else
  {
    v107 = v75 >> 62;
    v108 = v77;
    v78 = v112[2];
    v79 = v100;
    if (v78)
    {
      v114 = v111 + 8;
      v113 = (v89 + 8);
      v80 = v112 + 5;
      v109 = xmmword_10062D3F0;
      do
      {
        v116 = *v80;
        swift_getObjectType();
        swift_unknownObjectRetain();
        dispatch thunk of TTRRemindersListEditingSession.attributeEditor.getter();
        v79(v117);
        sub_100004758(v117);
        sub_100058000(&qword_10076C6E0);
        v81 = swift_allocObject();
        *(v81 + 16) = v109;
        static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
        static TTRRemindersListEditingSessionDisplayTargets.reminderEditingComponents.getter();
        v117[0] = v81;
        sub_1004F5C50(&unk_1007756B0, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets);
        sub_100058000(&qword_10076C6E8);
        sub_10000E188(&unk_1007756C0, &qword_10076C6E8);
        v82 = v96;
        v83 = v97;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        dispatch thunk of TTRRemindersListEditingSession.setNeedsDisplay(_:)();
        (*(v111 + 8))(v82, v83);
        v117[0] = _swiftEmptyArrayStorage;
        sub_1004F5C50(&qword_10076C6D0, &type metadata accessor for TTRRemindersListEditingSessionFinishingOption);
        sub_100058000(&unk_1007756D0);
        sub_10000E188(&qword_10076C6D8, &unk_1007756D0);
        v84 = v110;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        dispatch thunk of TTRRemindersListEditingSession.finish(options:)();
        v85 = v115;
        swift_unknownObjectRelease();
        v86 = v84;
        v79 = v100;
        (*v113)(v86, v85);
        v80 += 2;
        --v78;
      }

      while (v78);
    }

    if (v107)
    {
      v87 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v87 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v88 = v100;
    if (v87)
    {
      swift_getObjectType();
      dispatch thunk of TTRRemindersListInteractorType.attributeEditor(for:)();

      v88(v117);
      sub_100004758(v117);
    }

    else
    {
    }

    return v108;
  }
}

uint64_t sub_1004F1000(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v62 = type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay(0);
  v56 = *(v62 - 8);
  __chkstk_darwin(v62);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v66 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v10;
  __chkstk_darwin(v9);
  v57 = &v44 - v11;
  v61 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  result = __chkstk_darwin(v61);
  v59 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  if (!v15)
  {
    return result;
  }

  v16 = 0;
  v17 = *(v8 + 80);
  v18 = a2 + ((v17 + 32) & ~v17);
  v60 = (v8 + 16);
  v54 = (v17 + 16) & ~v17;
  v55 = v17;
  v52 = (v8 + 8);
  v53 = (v8 + 32);
  v46 = v13 + 16;
  v47 = v13;
  v51 = (v13 + 8);
  v50 = "reate editable section";
  v49 = *(v8 + 72);
  v64 = v15 - 1;
  v19 = v59;
  v45 = v3;
  v44 = a1;
  while (1)
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    v20 = *v60;
    v21 = v57;
    v63 = v18;
    v20(v57, v18, v7);
    v20(v66, v21, v7);
    v22 = v54;
    v23 = swift_allocObject();
    v24 = *v53;
    v65 = v23;
    v24(v23 + v22, v21, v7);
    sub_1000301AC(v16);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(v3 + 72);
    v26 = v69;
    *(v3 + 72) = 0x8000000000000000;
    v28 = sub_1003AB294(v19);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        *(v3 + 72) = v26;
        if (v27)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1003AE434();
        v26 = v69;
        *(v3 + 72) = v69;
        if (v32)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_100549754(v31, isUniquelyReferenced_nonNull_native);
      v26 = v69;
      v33 = sub_1003AB294(v19);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_20;
      }

      v28 = v33;
      *(v3 + 72) = v26;
      if (v32)
      {
LABEL_10:
        (*v52)(v66, v7);
        v35 = *(v56 + 72) * v28;
        goto LABEL_14;
      }
    }

    type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
    v69 = &_swiftEmptyArrayStorage;
    sub_1004F5C50(&unk_1007756B0, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets);
    sub_100058000(&qword_10076C6E8);
    sub_10000E188(&unk_1007756C0, &qword_10076C6E8);
    v36 = v48;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v37 = v66;
    v20(v36, v66, v7);
    (*v52)(v37, v7);
    v26[(v28 >> 6) + 8] |= 1 << v28;
    (*(v47 + 16))(v26[6] + *(v47 + 72) * v28, v59, v61);
    v35 = *(v56 + 72) * v28;
    sub_1004F683C(v36, v26[7] + v35, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
    v38 = v26[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_19;
    }

    v26[2] = v40;
    v3 = v45;
    v19 = v59;
LABEL_14:
    v41 = v26[7] + *(v62 + 20);
    v42 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
    sub_1004F5C50(&qword_100788B38, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets);
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(*(v42 - 8) + 8))(v41 + v35, v42);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v69 = (v67 | v68);
    sub_1004F5C50(&qword_100788B40, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets);
    dispatch thunk of OptionSet.init(rawValue:)();
    swift_endAccess();
    (*v51)(v19, v61);
    v43._object = (v50 | 0x8000000000000000);
    v43._countAndFlagsBits = 0xD000000000000017;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v43);
    if (!v64)
    {
    }

    --v64;
    v18 = v63 + v49;
    v16 = sub_1004F67CC;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  (*v52)(v66, v7);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1004F17A4(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  result = *(v1 + 88);
  if (result)
  {
    v11 = result == a1;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    *(v1 + 88) = 0;

    v12 = *(v4 + 16);
    v12(v9, a1 + OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_item, v3);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellTitleEditingPresenter(editing:)())
    {
      swift_getObjectType();
      v13 = dispatch thunk of TTRReminderCellEditingInCellPresenterTitleEditing.requestMarkCommittableForPencil()();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0;
    }

    if (qword_1007673E0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003E30(v14, qword_100788800);
    v12(v6, v9, v3);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v17 = 136315394;
      if (v13)
      {
        v18 = 1702195828;
      }

      else
      {
        v18 = 0x65736C6166;
      }

      if (v13)
      {
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      v20 = sub_100004060(v18, v19, &v28);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
      v21 = TTRTreeStorageItem.treeItemDescription.getter();
      v23 = v22;
      v24 = *(v4 + 8);
      v24(v6, v3);
      v25 = sub_100004060(v21, v23, &v28);

      *(v17 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "Reminders List mark item committable for pencil {marked: %s, item: %s}", v17, 0x16u);
      swift_arrayDestroy();

      return (v24)(v9, v3);
    }

    else
    {

      v26 = *(v4 + 8);
      v26(v6, v3);
      return (v26)(v9, v3);
    }
  }

  return result;
}

uint64_t sub_1004F1B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay(0);
  sub_1004F5C50(&unk_1007756B0, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets);
  sub_100058000(&qword_10076C6E8);
  sub_10000E188(&unk_1007756C0, &qword_10076C6E8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  return (*(*(v4 - 8) + 16))(a2, a1, v4);
}

uint64_t sub_1004F1C64()
{
  sub_10003B788(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1004F676C(v0 + OBJC_IVAR____TtC9Reminders31TTRReminderListEditingPresenter_state, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  return v0;
}

uint64_t sub_1004F1CE0()
{
  sub_1004F1C64();

  return swift_deallocClassInstance();
}

uint64_t sub_1004F1D60()
{
  result = type metadata accessor for TTRReminderListEditingPresenter.EditingState(319);
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

void *sub_1004F1F0C(void *a1, void *a2, uint64_t a3, void (**a4)(char *, void, uint64_t))
{
  v5 = v4;
  v152 = a4;
  v154 = a2;
  v155 = a3;
  v156 = *v4;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v160 = *(v7 - 8);
  __chkstk_darwin(v7);
  v132 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for REMAnalyticsEvent();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v161 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_100058000(&qword_1007860B0);
  v135 = *(v159 - 8);
  __chkstk_darwin(v159);
  v158 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v157 = &v119 - v12;
  v13 = sub_100058000(&qword_10076DF30);
  __chkstk_darwin(v13 - 8);
  v127 = &v119 - v14;
  v134 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v128 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v144 = *(v16 - 8);
  v145 = v16;
  __chkstk_darwin(v16);
  v143 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v142 = &v119 - v19;
  v141 = type metadata accessor for TTRRemindersListReminderCreationLocation();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TTRRemindersListReminderInsertionPosition();
  v147 = *(v21 - 8);
  v148 = v21;
  __chkstk_darwin(v21);
  v23 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v22;
  __chkstk_darwin(v24);
  v149 = (&v119 - v25);
  v26 = sub_100058000(&qword_10076C6F0);
  __chkstk_darwin(v26 - 8);
  v28 = &v119 - v27;
  v29 = type metadata accessor for TTRRemindersListTargetContainer();
  v150 = *(v29 - 8);
  v151 = v29;
  v30 = *(v150 + 64);
  __chkstk_darwin(v29);
  v137 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = (&v119 - v32);
  __chkstk_darwin(v34);
  v146 = &v119 - v35;
  v36 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  __chkstk_darwin(v36);
  v38 = (&v119 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v39);
  v41 = &v119 - v40;
  v153 = a1;
  result = _swiftEmptyArrayStorage;
  if (!a1[2])
  {
    return result;
  }

  v122 = a1[2];
  v123 = v23;
  v129 = v7;
  v43 = v5[4];
  v44 = v5[5];
  v126 = v5;
  ObjectType = swift_getObjectType();
  v46 = v44[41];
  v47 = v155;
  v125 = v43;
  v124 = ObjectType;
  v46(v154, v155);
  sub_1004F68A4(v41, v38, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v49 = v151;
    if (EnumCaseMultiPayload == 2)
    {
      v52 = v38[1];
      *v33 = *v38;
      v33[1] = v52;
      v51 = &enum case for TTRRemindersListTargetContainer.targetReminder(_:);
      goto LABEL_7;
    }

    sub_1004F676C(v38, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
LABEL_9:
    v54 = 1;
    v53 = v150;
    goto LABEL_10;
  }

  v49 = v151;
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_9;
  }

  v50 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  (*(*(v50 - 8) + 32))(v33, v38, v50);
  v51 = &enum case for TTRRemindersListTargetContainer.targetList(_:);
LABEL_7:
  v53 = v150;
  (*(v150 + 104))(v33, *v51, v49);
  (*(v53 + 32))(v28, v33, v49);
  v54 = 0;
LABEL_10:
  (*(v53 + 56))(v28, v54, 1, v49);
  if ((*(v53 + 48))(v28, 1, v49) == 1)
  {
    sub_1000079B4(v28, &qword_10076C6F0);
    sub_1004F676C(v41, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    return _swiftEmptyArrayStorage;
  }

  v121 = v41;
  v119 = *(v53 + 32);
  v55 = v146;
  v119(v146, v28, v49);
  v136 = swift_allocObject();
  *(v136 + 16) = v153;
  v56 = v149;
  *v149 = v47;
  v57 = v147;
  v58 = *(v147 + 104);
  v120 = v44;
  v59 = v49;
  v60 = v148;
  v58(v56, enum case for TTRRemindersListReminderInsertionPosition.afterSiblingChangeItem(_:), v148);
  v61 = v53 + 16;
  v62 = v137;
  (*(v53 + 16))(v137, v55, v59);
  v63 = v123;
  (*(v57 + 16))(v123, v56, v60);
  v64 = (*(v61 + 64) + 40) & ~*(v61 + 64);
  v65 = (v30 + *(v57 + 80) + v64) & ~*(v57 + 80);
  v66 = swift_allocObject();
  *(v66 + 2) = v126;
  *(v66 + 3) = sub_1004F83B8;
  *(v66 + 4) = v136;
  v67 = v59;
  v68 = v120;
  v119(&v66[v64], v62, v67);
  (*(v57 + 32))(&v66[v65], v63, v60);
  v69 = v139;
  (*(v160 + 16))(v139, v154, v129);
  v70 = v140;
  v71 = v141;
  (*(v140 + 104))(v69, enum case for TTRRemindersListReminderCreationLocation.belowItem(_:), v141);

  v72 = v155;

  LOBYTE(v63) = TTRRemindersListEditingReminderCreationOptions.startsEditing.getter();
  v73 = TTRRemindersListEditingReminderCreationOptions.animated.getter();
  v74 = v68[48];
  v138 = v66;
  v75 = v124;
  v76 = v74(v69, v122, v63 & 1, v73 & 1, sub_1004F83C0, v66, v124, v68);
  (*(v70 + 8))(v69, v71);
  v77 = v142;
  (v68[72])(v75, v68);
  v79 = v143;
  v78 = v144;
  v80 = v145;
  (*(v144 + 104))(v143, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v145);
  LOBYTE(v63) = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
  v81 = *(v78 + 8);
  v81(v79, v80);
  v81(v77, v80);
  if (v63)
  {
    v82 = v127;
    (v68[76])(v75, v68);
    v83 = v133;
    v84 = v134;
    if ((*(v133 + 48))(v82, 1, v134) == 1)
    {
      sub_1000079B4(v82, &qword_10076DF30);
    }

    else
    {
      (*(v83 + 32))(v128, v82, v84);
      v85 = v126[6];
      v86 = *(v76 + 16);
      if (v86)
      {
        v153 = v126[7];
        v154 = v85;
        v162 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v87 = *(v135 + 80);
        v145 = v76;
        v88 = v76 + ((v87 + 32) & ~v87);
        v155 = *(v135 + 72);
        v89 = (v160 + 8);
        v90 = v129;
        v92 = v157;
        v91 = v158;
        do
        {
          sub_10000794C(v88, v92, &qword_1007860B0);
          sub_100016588(v92, v91, &qword_1007860B0);
          (*v89)(v91, v90);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v88 += v155;
          --v86;
        }

        while (v86);
        v84 = v134;
        v83 = v133;
        v76 = v145;
      }

      swift_getObjectType();
      v93 = v128;
      dispatch thunk of TTRRemindersListInteractorType.updateManualOrdering(uncommittedReminderIDs:position:paramsForREMManualOrdering:)();

      (*(v83 + 8))(v93, v84);
    }
  }

  type metadata accessor for TTRUserDefaults();
  v94 = static TTRUserDefaults.appUserDefaults.getter();
  v95 = *(v76 + 16);
  if (!v95)
  {

    (*(v147 + 8))(v149, v148);
    (*(v150 + 8))(v146, v151);
    sub_1004F676C(v121, type metadata accessor for TTRRemindersListReminderActionTargetExtended);

    return _swiftEmptyArrayStorage;
  }

  v145 = v76;
  v155 = type metadata accessor for REMAnalyticsManager();
  LODWORD(v154) = enum case for REMUserOperation.createReminder(_:);
  LODWORD(v153) = enum case for REMAnalyticsEvent.userOperation(_:);
  v152 = (v130 + 104);
  v96 = (v130 + 8);
  v97 = v95;
  v98 = v131;
  v99 = v161;
  do
  {
    static REMAnalyticsManager.shared.getter();
    v100 = sub_100058000(&qword_1007757E8);
    v101 = &v99[*(v100 + 48)];
    v102 = &v161[*(v100 + 80)];
    v103 = type metadata accessor for REMUserOperation();
    (*(*(v103 - 8) + 104))(v161, v154, v103);
    *v101 = TTRUserDefaults.activitySessionId.getter();
    v101[1] = v104;
    v99 = v161;
    TTRUserDefaults.activitySessionBeginTime.getter();
    v162 = _typeName(_:qualified:)();
    v163 = v105;
    v106._countAndFlagsBits = 0x746954687469772DLL;
    v106._object = 0xEA0000000000656CLL;
    String.append(_:)(v106);
    v107 = v163;
    *v102 = v162;
    *(v102 + 1) = v107;
    (*v152)(v99, v153, v98);
    REMAnalyticsManager.post(event:)();

    (*v96)(v99, v98);
    --v97;
  }

  while (v97);
  v156 = v94;
  v162 = _swiftEmptyArrayStorage;
  sub_1004A1C48(0, v95, 0);
  v108 = v162;
  v109 = v145 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
  v161 = *(v135 + 72);
  v110 = (v160 + 32);
  v111 = v129;
  v112 = v132;
  do
  {
    v113 = v157;
    sub_10000794C(v109, v157, &qword_1007860B0);
    v114 = v113;
    v115 = v158;
    sub_100016588(v114, v158, &qword_1007860B0);

    v116 = *v110;
    (*v110)(v112, v115, v111);
    v162 = v108;
    v118 = v108[2];
    v117 = v108[3];
    if (v118 >= v117 >> 1)
    {
      sub_1004A1C48(v117 > 1, v118 + 1, 1);
      v111 = v129;
      v108 = v162;
    }

    v108[2] = v118 + 1;
    v116(v108 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v118, v112, v111);
    v109 += v161;
    --v95;
  }

  while (v95);

  (*(v147 + 8))(v149, v148);
  (*(v150 + 8))(v146, v151);
  sub_1004F676C(v121, type metadata accessor for TTRRemindersListReminderActionTargetExtended);

  return v108;
}

uint64_t sub_1004F3084(uint64_t a1)
{
  v3 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  return (*(v3 + 640))(a1, ObjectType, v3);
}

uint64_t sub_1004F30EC()
{
  v1 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  return (*(v1 + 648))(ObjectType, v1) & 1;
}

uint64_t sub_1004F313C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1004F3200;

  return sub_1004F3300(a1, a2, a3, a4, a5);
}

uint64_t sub_1004F3200(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1004F3300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *v5;
  return _swift_task_switch(sub_1004F3350, 0, 0);
}

uint64_t sub_1004F3350()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = *(v0[7] + 24);
    swift_getObjectType();
    sub_1004F5C50(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter);
    v9 = *(v2 + 64) + **(v2 + 64);
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_1004F3584;

    __asm { BRAA            X8, X16 }
  }

  v4 = objc_opt_self();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = String._bridgeToObjectiveC()();
  [v4 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v6];

  swift_willThrow();
  v7 = v0[1];

  return v7();
}

uint64_t sub_1004F3584(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1004F3714;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_1004F36AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004F36AC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_1004F3714()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004F37A4(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v3 = *(a2 + 40);
  ObjectType = swift_getObjectType();
  (*(v3 + 408))(ObjectType, v3);
  v5 = TTRRemindersListInteractorType.newReminderChangeItem(objectID:title:targetContainer:position:remindersBeingSaved:)();

  return v5;
}

void *sub_1004F3864(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v20 = *(a2 + 16);
  if (v4 == v20)
  {
LABEL_6:
    if (v4)
    {
      goto LABEL_7;
    }

    return _swiftEmptyArrayStorage;
  }

  if (qword_1007673E0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_100788800);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = v4;

    *(v8 + 12) = 2048;
    *(v8 + 14) = v20;

    _os_log_impl(&_mh_execute_header, v6, v7, "objectIDs count not matching titles count {objectIDs: %ld, titles: %ld}", v8, 0x16u);

    goto LABEL_6;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_7:
  v9 = 0;
  v10 = (a2 + 40);
  v11 = _swiftEmptyArrayStorage;
  do
  {
    v12 = *(a1 + 32 + 8 * v9);
    if (v9 >= v20)
    {
      v14 = 0;
      v13 = 0xE000000000000000;
    }

    else
    {
      v14 = *(v10 - 1);
      v13 = *v10;
    }

    v15 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10054881C(0, v11[2] + 1, 1, v11);
    }

    v17 = v11[2];
    v16 = v11[3];
    if (v17 >= v16 >> 1)
    {
      v11 = sub_10054881C((v16 > 1), v17 + 1, 1, v11);
    }

    ++v9;
    v11[2] = v17 + 1;
    v18 = &v11[3 * v17];
    v18[4] = v12;
    v18[5] = v14;
    v18[6] = v13;
    v10 += 2;
  }

  while (v4 != v9);
  return v11;
}

uint64_t sub_1004F3AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v16[2] = a4;
  v16[3] = a5;
  v16[1] = a6;
  v9 = type metadata accessor for TTRRemindersListBatchReminderCreationParams();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  *v12 = a3(a1);
  (*(v10 + 104))(v12, enum case for TTRRemindersListBatchReminderCreationParams.objectIDsAndTitles(_:), v9);
  v13 = *(a2 + 40);
  ObjectType = swift_getObjectType();
  (*(v13 + 408))(ObjectType, v13);
  dispatch thunk of TTRRemindersListInteractorType.newReminderChangeItems(params:targetContainer:position:remindersBeingSaved:)();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1004F3C70()
{
  v63 = *v0;
  v1 = sub_100058000(&qword_1007701A0);
  __chkstk_darwin(v1 - 8);
  v57 = &v50 - v2;
  v3 = sub_100058000(&qword_100788B78);
  __chkstk_darwin(v3 - 8);
  v5 = &v50 - v4;
  v64 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v6 = *(v64 - 8);
  __chkstk_darwin(v64);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100788B80);
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v60 = &v50 - v10;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  __chkstk_darwin(v11);
  v56 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  v55 = v16;
  v18 = __chkstk_darwin(v17);
  v20 = &v50 - v19;
  v65 = v21;
  v66 = v0;
  v22 = v21 + 16;
  v23 = *(v21 + 16);
  v23(&v50 - v19, v0 + OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_item, v11, v18);
  if (qword_1007673E0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100003E30(v24, qword_100788800);
  v53 = v23;
  v54 = v22;
  (v23)(v15, v20, v11);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  v27 = os_log_type_enabled(v25, v26);
  v58 = v20;
  v59 = v11;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v68 = v29;
    *v28 = 136315138;
    sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    v30 = TTRTreeStorageItem.treeItemDescription.getter();
    v31 = v11;
    v33 = v32;
    v52 = *(v65 + 8);
    v52(v15, v31);
    v34 = sub_100004060(v30, v33, &v68);

    *(v28 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "PencilWritingStateReporter: schedule for item %s", v28, 0xCu);
    sub_100004758(v29);
  }

  else
  {

    v52 = *(v65 + 8);
    v52(v15, v11);
  }

  v51 = OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_cancellable;
  if (*(v66 + OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_cancellable))
  {

    AnyCancellable.cancel()();
  }

  v68 = 1;
  sub_100058000(&qword_100788B88);
  swift_allocObject();
  v50 = CurrentValueSubject.init(_:)();
  v68 = v50;
  static NSRunLoop.SchedulerTimeType.Stride.seconds(_:)();
  v35 = v6;
  (*(v6 + 56))(v5, 1, 1, v64);
  v36 = [objc_opt_self() mainRunLoop];
  v67 = v36;
  v37 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v38 = v57;
  (*(*(v37 - 8) + 56))(v57, 1, 1, v37);
  sub_1004F6A94();
  sub_10000E188(&qword_100788B90, &qword_100788B88);
  sub_1004F5C50(&qword_10076DFC0, sub_1004F6A94);
  v39 = v60;
  Publisher.delay<A>(for:tolerance:scheduler:options:)();
  sub_1000079B4(v38, &qword_1007701A0);

  sub_1000079B4(v5, &qword_100788B78);
  (*(v35 + 8))(v8, v64);

  v40 = v56;
  v42 = v58;
  v41 = v59;
  v53(v56, v58, v59);
  v43 = v65;
  v44 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v45 = swift_allocObject();
  (*(v43 + 32))(v45 + v44, v40, v41);
  sub_10000E188(&qword_100788B98, &qword_100788B80);
  v46 = v66;
  v47 = v62;
  v48 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

  (*(v61 + 8))(v39, v47);
  v52(v42, v41);
  *(v46 + v51) = v48;
}

uint64_t sub_1004F4460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007673E0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_100788800);
  (*(v6 + 16))(v8, a3, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    v14 = TTRTreeStorageItem.treeItemDescription.getter();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    v17 = sub_100004060(v14, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "PencilWritingStateReporter: perform delayed action for item %s", v12, 0xCu);
    sub_100004758(v13);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004F17A4(a1);
  }

  return result;
}

uint64_t sub_1004F46FC()
{
  if (qword_1007673E0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_100788800);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    type metadata accessor for TTRRemindersListViewModel.Item();
    sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = TTRTreeStorageItem.treeItemDescription.getter();
    v8 = sub_100004060(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "PencilWritingStateReporter: cancel scheduled for item %s", v4, 0xCu);
    sub_100004758(v5);
  }

  v9 = OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_cancellable;
  if (*(v0 + OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_cancellable))
  {

    AnyCancellable.cancel()();
  }

  *(v0 + v9) = 0;
}

uint64_t sub_1004F48EC()
{
  v1 = OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_item;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1004F49D0()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
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

char *sub_1004F4A74(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  }

  return a1;
}

uint64_t sub_1004F4B70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_1004F4C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_1004F4CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_1004F4D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_1004F4E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_1004F4F1C()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1004F4FE4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_100058000(&qword_100775AB8);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = sub_100058000(&qword_100775AB0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      v11 = type metadata accessor for TTRRemindersListViewModel.Item();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      v12 = *(v7 + 48);
      v13 = type metadata accessor for TTRRemindersListEditingAttribute();
      (*(*(v13 - 8) + 16))(a1 + v12, a2 + v12, v13);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t sub_1004F51C8(uint64_t a1)
{
  v2 = sub_100058000(&qword_100775AB8);
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v4 - 8) + 8))(a1, v4);
    v5 = *(v2 + 48);
    v6 = type metadata accessor for TTRRemindersListEditingAttribute();
    v7 = *(*(v6 - 8) + 8);

    return v7(a1 + v5, v6);
  }

  return result;
}

char *sub_1004F52C4(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100775AB8);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_100058000(&qword_100775AB0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
    v10 = *(v6 + 48);
    v11 = type metadata accessor for TTRRemindersListEditingAttribute();
    (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

char *sub_1004F545C(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100775AB8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      v16 = type metadata accessor for TTRRemindersListViewModel.Item();
      (*(*(v16 - 8) + 24))(a1, a2, v16);
      v17 = *(v6 + 48);
      v18 = type metadata accessor for TTRRemindersListEditingAttribute();
      (*(*(v18 - 8) + 24))(&a1[v17], &a2[v17], v18);
      goto LABEL_7;
    }

    sub_1000079B4(a1, &qword_100775AB8);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v14 = sub_100058000(&qword_100775AB0);
    memcpy(a1, a2, *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v11 - 8) + 16))(a1, a2, v11);
  v12 = *(v6 + 48);
  v13 = type metadata accessor for TTRRemindersListEditingAttribute();
  (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

char *sub_1004F56B8(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100775AB8);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_100058000(&qword_100775AB0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    v10 = *(v6 + 48);
    v11 = type metadata accessor for TTRRemindersListEditingAttribute();
    (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

char *sub_1004F5850(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100775AB8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      v16 = type metadata accessor for TTRRemindersListViewModel.Item();
      (*(*(v16 - 8) + 40))(a1, a2, v16);
      v17 = *(v6 + 48);
      v18 = type metadata accessor for TTRRemindersListEditingAttribute();
      (*(*(v18 - 8) + 40))(&a1[v17], &a2[v17], v18);
      goto LABEL_7;
    }

    sub_1000079B4(a1, &qword_100775AB8);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v14 = sub_100058000(&qword_100775AB0);
    memcpy(a1, a2, *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v11 - 8) + 32))(a1, a2, v11);
  v12 = *(v6 + 48);
  v13 = type metadata accessor for TTRRemindersListEditingAttribute();
  (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

void sub_1004F5AD4()
{
  sub_1004F5B68();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_1004F5B68()
{
  if (!qword_100788AE0)
  {
    sub_10005D20C(&qword_100775AB8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100788AE0);
    }
  }
}

uint64_t sub_1004F5BCC(uint64_t a1)
{
  *(a1 + 16) = sub_1004F5C50(&qword_100788B10, type metadata accessor for TTRReminderListEditingPresenter);
  result = sub_1004F5C50(&qword_100788B18, type metadata accessor for TTRReminderListEditingPresenter);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1004F5C50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004F5C98(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v72 = type metadata accessor for TTRRemindersListEditingAttribute();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v65 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_100058000(&qword_100788B20);
  __chkstk_darwin(v68);
  v71 = &v65 - v4;
  v5 = sub_100058000(&qword_100788B28);
  v6 = __chkstk_darwin(v5 - 8);
  v66 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v75 = &v65 - v9;
  __chkstk_darwin(v8);
  v69 = &v65 - v10;
  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v83 = *(v11 - 8);
  __chkstk_darwin(v11);
  v67 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_100058000(&qword_10076DCB8);
  __chkstk_darwin(v76);
  v77 = &v65 - v13;
  v14 = sub_100058000(&qword_100772140);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v65 - v18;
  v20 = sub_100058000(&unk_10076BB50);
  v21 = __chkstk_darwin(v20 - 8);
  v74 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v79 = &v65 - v24;
  __chkstk_darwin(v23);
  v26 = &v65 - v25;
  v27 = type metadata accessor for TTRReminderListEditingPresenter.EditingState(0);
  v28 = sub_1004F5C50(&unk_1007755F8, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  v81 = v27;
  v78 = v28;
  v73 = a1;
  TTRRemindersListEditingState.editingItem.getter();
  v29 = type metadata accessor for TTRRemindersListViewModel.Item();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  if (v31(v19, 1, v29) == 1)
  {
    sub_1000079B4(v19, &qword_100772140);
    v32 = 1;
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    (*(v30 + 8))(v19, v29);
    v32 = 0;
  }

  v33 = *(v83 + 56);
  v80 = v26;
  v33(v26, v32, 1, v11);
  TTRRemindersListEditingState.editingItem.getter();
  if (v31(v17, 1, v29) == 1)
  {
    sub_1000079B4(v17, &qword_100772140);
    v34 = 1;
    v35 = v79;
  }

  else
  {
    v35 = v79;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    (*(v30 + 8))(v17, v29);
    v34 = 0;
  }

  v33(v35, v34, 1, v11);
  v36 = v11;
  v37 = v77;
  v38 = *(v76 + 48);
  v39 = v80;
  sub_10000794C(v80, v77, &unk_10076BB50);
  sub_10000794C(v35, v37 + v38, &unk_10076BB50);
  v40 = *(v83 + 48);
  if (v40(v37, 1, v36) != 1)
  {
    v41 = v74;
    sub_10000794C(v37, v74, &unk_10076BB50);
    if (v40(v37 + v38, 1, v36) != 1)
    {
      v44 = v83;
      v45 = v37 + v38;
      v46 = v67;
      (*(v83 + 32))(v67, v45, v36);
      sub_1004F5C50(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID);
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      v48 = *(v44 + 8);
      v48(v46, v36);
      sub_1000079B4(v79, &unk_10076BB50);
      sub_1000079B4(v80, &unk_10076BB50);
      v48(v41, v36);
      sub_1000079B4(v37, &unk_10076BB50);
      if ((v47 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    sub_1000079B4(v79, &unk_10076BB50);
    sub_1000079B4(v80, &unk_10076BB50);
    (*(v83 + 8))(v41, v36);
LABEL_12:
    v42 = &qword_10076DCB8;
    v43 = v37;
LABEL_20:
    sub_1000079B4(v43, v42);
    goto LABEL_21;
  }

  sub_1000079B4(v35, &unk_10076BB50);
  sub_1000079B4(v39, &unk_10076BB50);
  if (v40(v37 + v38, 1, v36) != 1)
  {
    goto LABEL_12;
  }

  sub_1000079B4(v37, &unk_10076BB50);
LABEL_14:
  v49 = v69;
  v50 = v73;
  TTRRemindersListEditingState.editingAttribute.getter();
  v51 = v75;
  TTRRemindersListEditingState.editingAttribute.getter();
  v52 = *(v68 + 48);
  v53 = v71;
  sub_10000794C(v49, v71, &qword_100788B28);
  sub_10000794C(v51, v53 + v52, &qword_100788B28);
  v54 = v70;
  v55 = *(v70 + 48);
  v56 = v72;
  if (v55(v53, 1, v72) == 1)
  {
    sub_1000079B4(v51, &qword_100788B28);
    sub_1000079B4(v49, &qword_100788B28);
    if (v55(v53 + v52, 1, v56) == 1)
    {
      sub_1000079B4(v53, &qword_100788B28);
LABEL_24:
      v58 = *(v50 + *(v81 + 20)) ^ *(v82 + *(v81 + 20)) ^ 1;
      return v58 & 1;
    }

    goto LABEL_19;
  }

  v57 = v66;
  sub_10000794C(v53, v66, &qword_100788B28);
  if (v55(v53 + v52, 1, v56) == 1)
  {
    sub_1000079B4(v75, &qword_100788B28);
    sub_1000079B4(v49, &qword_100788B28);
    (*(v54 + 8))(v57, v56);
LABEL_19:
    v42 = &qword_100788B20;
    v43 = v53;
    goto LABEL_20;
  }

  v60 = v53 + v52;
  v61 = v65;
  (*(v54 + 32))(v65, v60, v56);
  sub_1004F5C50(&qword_100788B30, &type metadata accessor for TTRRemindersListEditingAttribute);
  v62 = v57;
  v63 = dispatch thunk of static Equatable.== infix(_:_:)();
  v64 = *(v54 + 8);
  v64(v61, v56);
  sub_1000079B4(v75, &qword_100788B28);
  sub_1000079B4(v49, &qword_100788B28);
  v64(v62, v56);
  sub_1000079B4(v53, &qword_100788B28);
  if (v63)
  {
    goto LABEL_24;
  }

LABEL_21:
  v58 = 0;
  return v58 & 1;
}

uint64_t sub_1004F6708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRReminderListEditingPresenter.EditingState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004F676C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004F67CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1004F1B24(v4, a1);
}

uint64_t sub_1004F683C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004F68A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004F690C(uint64_t a1)
{
  type metadata accessor for TTRRemindersListTargetContainer();
  type metadata accessor for TTRRemindersListReminderInsertionPosition();
  v3 = *(v1 + 16);

  return sub_1004F37A4(a1, v3);
}

uint64_t sub_1004F69E4(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListTargetContainer() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1004EBE50(a1, v4, v5);
}

unint64_t sub_1004F6A94()
{
  result = qword_10076DFB0;
  if (!qword_10076DFB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10076DFB0);
  }

  return result;
}

uint64_t sub_1004F6AE0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1004F4460(a1, a2, v6);
}

uint64_t sub_1004F6B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v62 = a3;
  v61 = a2;
  v60 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v67 = *(v7 - 8);
  __chkstk_darwin(v7);
  v66 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100775970);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  v13 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  __chkstk_darwin(v13);
  v57 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v68 = &v54 - v16;
  if (qword_1007673E0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003E30(v17, qword_100788800);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  v56 = xmmword_10062D400;
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
  v19 = a1;
  v20 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v20;
  *(inited + 56) = v21;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v22 = *(v4 + 40);
  ObjectType = swift_getObjectType();
  v24 = (*(v22 + 104))(ObjectType, v22);
  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = v24;
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    (*(v69 + 56))(v12, 1, 1, v70);
    return sub_1000079B4(v12, &qword_100775970);
  }

  v26 = *(v25 + 64);
  swift_unknownObjectRelease();
  v27 = swift_getObjectType();
  (*(v26 + 32))(a1, v27, v26);
  swift_unknownObjectRelease();
  v29 = v69;
  v28 = v70;
  if ((*(v69 + 48))(v12, 1, v70) == 1)
  {
    return sub_1000079B4(v12, &qword_100775970);
  }

  v55 = v4;
  v30 = v19;
  v31 = *(v29 + 32);
  v32 = v68;
  v31(v68, v12, v28);
  v33 = v66;
  v34 = v67;
  (v67)[2](v66, v30, v7);
  if ((v34[11])(v33, v7) != enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    (*(v29 + 8))(v32, v28);
    return (v34[1])(v33, v7);
  }

  (v34[12])(v33, v7);
  v35 = v64;
  v36 = v63;
  v37 = v65;
  (*(v64 + 32))(v63, v33, v65);
  v38 = v58;
  TTRRemindersListViewModel.SectionHeader.id.getter();
  v39 = v59;
  v40 = v60;
  if ((*(v59 + 88))(v38, v60) != enum case for TTRRemindersListViewModel.SectionID.uncommittedEditingSection(_:))
  {
    (*(v35 + 8))(v36, v37);
    (*(v69 + 8))(v68, v70);
    return (*(v39 + 8))(v38, v40);
  }

  (*(v39 + 96))(v38, v40);
  v60 = *v38;
  static TTRLocalizableStrings.UndoAction.addSectionWithNameFormat.getter();
  sub_100058000(&unk_100786CB0);
  v41 = swift_allocObject();
  *(v41 + 16) = v56;
  *(v41 + 56) = &type metadata for String;
  *(v41 + 64) = sub_10005C390();
  v42 = v62;
  *(v41 + 32) = v61;
  *(v41 + 40) = v42;

  static String.localizedStringWithFormat(_:_:)();

  v67 = objc_opt_self();
  v66 = String._bridgeToObjectiveC()();

  v43 = v69;
  v44 = v57;
  v12 = v70;
  (*(v69 + 16))(v57, v68, v70);
  v45 = (*(v43 + 80) + 40) & ~*(v43 + 80);
  v46 = swift_allocObject();
  v47 = v61;
  *(v46 + 2) = v55;
  *(v46 + 3) = v47;
  *(v46 + 4) = v42;
  v31(&v46[v45], v44, v12);
  v48 = v60;
  *&v46[(v14 + v45 + 7) & 0xFFFFFFFFFFFFFFF8] = v60;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1004F8D78;
  *(v49 + 24) = v46;
  aBlock[4] = sub_100068444;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_10072CB18;
  v50 = _Block_copy(aBlock);

  v51 = v48;

  v52 = v66;
  [v67 withActionName:v66 block:v50];
  _Block_release(v50);

  (*(v64 + 8))(v63, v65);
  (*(v43 + 8))(v68, v12);
  LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

  if (v50)
  {
    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1004F74D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v97 = a3;
  v99 = a2;
  v4 = sub_100058000(&qword_100775780);
  __chkstk_darwin(v4 - 8);
  v6 = &v88 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v91 = &v88 - v12;
  __chkstk_darwin(v13);
  v15 = &v88 - v14;
  v113 = type metadata accessor for TTRRemindersListEditingSessionFinishingOption();
  v88 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = _swiftEmptyArrayStorage;
  v21 = *(a1 + 16);
  v96 = v18;
  v95 = v22;
  if (v21)
  {
    v23 = v21;
    v89 = v10;
    v94 = v6;
    v24 = *(v99 + 32);
    v25 = *(v99 + 40);
    ObjectType = swift_getObjectType();
    v104 = (v25 + 55);
    *&v105 = ObjectType;
    v28 = *(v8 + 16);
    v27 = v8 + 16;
    v110 = v28;
    v29 = (a1 + ((*(v27 + 64) + 32) & ~*(v27 + 64)));
    v102 = v25[55];
    v103 = (v27 - 8);
    v101 = *(v27 + 56);
    *&v30 = 136315138;
    v90 = v30;
    v109 = _swiftEmptyArrayStorage;
    v92 = _swiftEmptyArrayStorage;
    v98 = v20;
    v93 = v27;
    v100 = v15;
    v106 = v25;
    v107 = v24;
    v28(v15, v29, v7);
    while (!(v102)(v15, v105, v25))
    {
      v42 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
      if (!v42)
      {
        if (qword_1007673E0 != -1)
        {
          swift_once();
        }

        v111 = v23;
        v62 = type metadata accessor for Logger();
        sub_100003E30(v62, qword_100788800);
        v63 = v89;
        v64 = v100;
        v110(v89, v100, v7);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v114[0] = v108;
          *v67 = v90;
          sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
          v68 = TTRTreeStorageItem.treeItemDescription.getter();
          v70 = v69;
          v71 = *v103;
          (*v103)(v63, v7);
          v72 = sub_100004060(v68, v70, v114);

          *(v67 + 4) = v72;
          _os_log_impl(&_mh_execute_header, v65, v66, "Skip edit; failed to get REMReminder {item: %s}", v67, 0xCu);
          sub_100004758(v108);

          v20 = v98;

          v15 = v100;
          v71(v100, v7);
        }

        else
        {

          v31 = *v103;
          (*v103)(v63, v7);
          v31(v64, v7);
          v15 = v64;
        }

        goto LABEL_4;
      }

      v43 = v42;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v111 = v23;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v23 = v111;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*v103)(v15, v7);
      v92 = v116;
LABEL_5:
      v29 += v101;
      --v23;
      v25 = v106;
      if (!v23)
      {
        goto LABEL_34;
      }

      v110(v15, v29, v7);
    }

    v111 = v23;

    v114[0] = _typeName(_:qualified:)();
    v114[1] = v32;
    v33._countAndFlagsBits = 0x746964652DLL;
    v33._object = 0xE500000000000000;
    String.append(_:)(v33);
    v108 = v114[0];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v35 = Strong;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v36 = *(v35 + 24);
        v37 = v7;
        v38 = swift_getObjectType();
        v39 = sub_1004F5C50(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter);
        v40 = v94;
        v41 = v38;
        v7 = v37;
        (*(v36 + 48))(v35, v39, v41, v36);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
    }

    v44 = type metadata accessor for TTRRemindersListUndoContext();
    v40 = v94;
    (*(*(v44 - 8) + 56))(v94, 1, 1, v44);
LABEL_17:
    sub_1004F5C50(&qword_100775790, type metadata accessor for TTRRemindersListEditingSessionProvider);

    v15 = v100;
    v45 = TTRRemindersListEditingSessionProviderCapability.acquireEditingSession(forEditing:acquirerName:undoContext:editingSessionState:editingSessionDelegate:)();

    sub_1000079B4(v40, &qword_100775780);

    if (v45)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v98;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v109 = sub_100547450(0, v109[2] + 1, 1, v109);
      }

      v48 = v109[2];
      v47 = v109[3];
      if (v48 >= v47 >> 1)
      {
        v109 = sub_100547450((v47 > 1), v48 + 1, 1, v109);
      }

      (*v103)(v15, v7);
      v49 = v109;
      v109[2] = v48 + 1;
      v50 = &v49[2 * v48];
      v50[4] = v45;
      v50[5] = &protocol witness table for TTRRemindersListConcreteEditingSession;
    }

    else
    {
      if (qword_1007673E0 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_100003E30(v51, qword_100788800);
      v52 = v91;
      v110(v91, v15, v7);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = v52;
        v56 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v114[0] = v108;
        *v56 = v90;
        sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
        v57 = TTRTreeStorageItem.treeItemDescription.getter();
        v59 = v58;
        v60 = *v103;
        (*v103)(v55, v7);
        v61 = sub_100004060(v57, v59, v114);
        v15 = v100;

        *(v56 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v53, v54, "Skip edit; failed to create editing session {item: %s}", v56, 0xCu);
        sub_100004758(v108);

        v60(v15, v7);
      }

      else
      {

        v73 = *v103;
        (*v103)(v52, v7);
        v73(v15, v7);
      }

      v20 = v98;
    }

LABEL_4:
    v23 = v111;
    goto LABEL_5;
  }

  v109 = _swiftEmptyArrayStorage;
  v92 = _swiftEmptyArrayStorage;
LABEL_34:
  v74 = v109[2];
  v75 = v92;
  if (!(v92 >> 62))
  {
    result = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v77 = v74 + result;
    if (!__OFADD__(v74, result))
    {
      goto LABEL_36;
    }

LABEL_50:
    __break(1u);
    return result;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v77 = v74 + result;
  if (__OFADD__(v74, result))
  {
    goto LABEL_50;
  }

LABEL_36:
  if (v77 < 1)
  {

    return 0;
  }

  else
  {
    v103 = (v75 >> 62);
    v104 = v77;
    v78 = v109[2];
    if (v78)
    {
      v79 = v20;
      v107 = v96 + 8;
      v106 = (v88 + 8);
      v80 = (v109 + 5);
      v105 = xmmword_10062D3F0;
      do
      {
        v110 = *v80;
        v111 = v78;
        v81 = swift_getObjectType();
        swift_unknownObjectRetain();
        v108 = v81;
        dispatch thunk of TTRRemindersListEditingSession.attributeEditor.getter();
        sub_10000C36C(v114, v115);
        dispatch thunk of TTRRemindersListAttributeEditing.addAttributes(from:isForNewReminder:)();
        sub_100004758(v114);
        sub_100058000(&qword_10076C6E0);
        v82 = v96;
        v83 = swift_allocObject();
        *(v83 + 16) = v105;
        static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
        static TTRRemindersListEditingSessionDisplayTargets.reminderEditingComponents.getter();
        v114[0] = v83;
        sub_1004F5C50(&unk_1007756B0, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets);
        sub_100058000(&qword_10076C6E8);
        sub_10000E188(&unk_1007756C0, &qword_10076C6E8);
        v84 = v79;
        v85 = v95;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        dispatch thunk of TTRRemindersListEditingSession.setNeedsDisplay(_:)();
        v86 = v85;
        v79 = v84;
        (*(v82 + 8))(v84, v86);
        v114[0] = _swiftEmptyArrayStorage;
        sub_1004F5C50(&qword_10076C6D0, &type metadata accessor for TTRRemindersListEditingSessionFinishingOption);
        sub_100058000(&unk_1007756D0);
        sub_10000E188(&qword_10076C6D8, &unk_1007756D0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        dispatch thunk of TTRRemindersListEditingSession.finish(options:)();
        swift_unknownObjectRelease();
        (*v106)(v112, v113);
        v80 += 2;
        v78 = v111 - 1;
      }

      while (v111 != 1);
    }

    if (v103)
    {
      v87 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v87 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v87)
    {
      swift_getObjectType();
      dispatch thunk of TTRRemindersListInteractorType.attributeEditor(for:)();

      sub_10000C36C(v114, v115);
      dispatch thunk of TTRRemindersListAttributeEditing.addAttributes(from:isForNewReminder:)();
      sub_100004758(v114);
    }

    else
    {
    }

    return v104;
  }
}

uint64_t sub_1004F83C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TTRRemindersListTargetContainer() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TTRRemindersListReminderInsertionPosition() - 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1004F3AA0(a1, v9, v10, v2 + v6, v11, a2);
}

uint64_t sub_1004F84AC()
{
  v1 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v64 - 8);
  __chkstk_darwin(v64);
  v58 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v57 = &v55 - v8;
  __chkstk_darwin(v9);
  v62 = &v55 - v10;
  __chkstk_darwin(v11);
  v61 = &v55 - v12;
  v13 = type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay(0);
  v68 = *(v13 - 8);
  v69 = v13;
  __chkstk_darwin(v13);
  v65 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  swift_beginAccess();
  v18 = *(v0 + 72);
  v66 = v0;
  *(v0 + 72) = &_swiftEmptyDictionarySingleton;
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v23 = (v20 + 63) >> 6;
  v24 = (v2 + 8);
  v59 = (v5 + 16);
  v60 = v5;
  v63 = (v5 + 32);

  v26 = 0;
  v67._rawValue = _swiftEmptyArrayStorage;
  while (1)
  {
    v27 = v26;
    if (!v22)
    {
      break;
    }

LABEL_8:
    v28 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    sub_1004F68A4(*(v18 + 56) + *(v68 + 72) * (v28 | (v26 << 6)), v17, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
    static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
    sub_1004F5C50(&unk_1007756B0, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets);
    v29 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    (*v24)(v4, v1);
    if (v29)
    {
      v30 = v64;
      (*v59)(v62, v17, v64);
      sub_1004F676C(v17, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
      v56 = *v63;
      (v56)(v61, v62, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67._rawValue = sub_100547094(0, *(v67._rawValue + 2) + 1, 1, v67._rawValue);
      }

      v32 = *(v67._rawValue + 2);
      v31 = *(v67._rawValue + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v55 = v32 + 1;
        v35 = sub_100547094(v31 > 1, v32 + 1, 1, v67._rawValue);
        v33 = v55;
        v67._rawValue = v35;
      }

      rawValue = v67._rawValue;
      *(v67._rawValue + 2) = v33;
      result = (v56)(&rawValue[((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v32], v61, v64);
    }

    else
    {
      result = sub_1004F676C(v17, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
    }
  }

  while (1)
  {
    v26 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v26 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v26);
    ++v27;
    if (v22)
    {
      goto LABEL_8;
    }
  }

  v36 = v67._rawValue;
  if (*(v67._rawValue + 2) && (v37 = v66, swift_unknownObjectWeakLoadStrong()))
  {
    v38 = *(v37 + 24);
    ObjectType = swift_getObjectType();
    v40 = sub_1004F5C50(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter);
    (*(v38 + 16))(v37, v40, v36, ObjectType, v38);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v41 = 1 << *(v18 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v18 + 64);
  v44 = (v41 + 63) >> 6;

  v45 = 0;
  v67._rawValue = _swiftEmptyArrayStorage;
LABEL_22:
  v46 = v65;
  v47 = v45;
  if (!v43)
  {
    goto LABEL_24;
  }

  do
  {
    v45 = v47;
LABEL_27:
    v48 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    sub_1004F68A4(*(v18 + 56) + *(v68 + 72) * (v48 | (v45 << 6)), v46, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
    static TTRRemindersListEditingSessionDisplayTargets.reminderEditingComponents.getter();
    sub_1004F5C50(&unk_1007756B0, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets);
    v49 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    (*v24)(v4, v1);
    if (v49)
    {
      v50 = v64;
      (*v59)(v58, v46, v64);
      sub_1004F676C(v46, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
      v62 = *v63;
      (v62)(v57, v58, v50);
      v51 = v67._rawValue;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_100547094(0, v51[2] + 1, 1, v51);
      }

      v53 = v51[2];
      v52 = v51[3];
      v67._rawValue = v51;
      if (v53 >= v52 >> 1)
      {
        v67._rawValue = sub_100547094(v52 > 1, v53 + 1, 1, v67._rawValue);
      }

      v54 = v67._rawValue;
      *(v67._rawValue + 2) = v53 + 1;
      result = (v62)(&v54[((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v53], v57, v64);
      goto LABEL_22;
    }

    result = sub_1004F676C(v46, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
    v47 = v45;
  }

  while (v43);
LABEL_24:
  while (1)
  {
    v45 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v45 >= v44)
    {

      if (*(v67._rawValue + 2))
      {
        TTRInCellEditingPresenterManagingHelper.updateReminderEditingComponentsFor(_:)(v67);
      }
    }

    v43 = *(v19 + 8 * v45);
    ++v47;
    if (v43)
    {
      goto LABEL_27;
    }
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1004F8CBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100775AB0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004F8D34(uint64_t (*a1)(uint64_t *))
{
  v3 = *(v1 + 16);
  v4 = 0;
  return a1(&v3);
}

void sub_1004F8D78()
{
  type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
  v1 = *(v0 + 16);

  sub_1004E8CD8(v1);
}

unint64_t sub_1004F8E20()
{
  result = qword_100788BA8;
  if (!qword_100788BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788BA8);
  }

  return result;
}

unint64_t sub_1004F8E78()
{
  result = qword_100788BB0;
  if (!qword_100788BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788BB0);
  }

  return result;
}

unint64_t sub_1004F8ED0()
{
  result = qword_100788BB8;
  if (!qword_100788BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788BB8);
  }

  return result;
}

unint64_t sub_1004F8F28()
{
  result = qword_100788BC0;
  if (!qword_100788BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788BC0);
  }

  return result;
}

id TTRIWelcomeAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIWelcomeAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIWelcomeAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIWelcomeAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1004F9054(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = &a2[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_upgradeHelpURLString];
  *v5 = 0xD000000000000025;
  *(v5 + 1) = 0x800000010068A9C0;
  *&a2[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_spinner] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_originalBottomConstraints] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_newBottomConstraints] = 0;
  v6 = &a2[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_presenter];
  *v6 = a1;
  *(v6 + 1) = &off_100718010;
  *&a2[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_viewModel] = xmmword_1006444F0;

  v7 = sub_10014D4E8();

  if (v7)
  {
    v8._countAndFlagsBits = 0x2070552079617453;
    v8._object = 0xEF65746144206F74;
    v9._countAndFlagsBits = 0xD000000000000018;
    v9._object = 0x800000010068AB00;
    TTRLocalizedString(_:comment:)(v8, v9);
    if (static REMFeatureFlags.isSolariumEnabled.getter())
    {
      v10 = "bles the latest features.";
      v11 = 0xD000000000000022;
      v12 = 0x800000010068ABC0;
      v13 = 0xD000000000000049;
      v14 = 0x800000010068ABF0;
      v15 = 0xD000000000000060;
    }

    else
    {
      v10 = "bles the latest features.";
      v11 = 0xD000000000000017;
      v12 = 0x800000010068AB20;
      v13 = 0xD000000000000049;
      v14 = 0x800000010068AB40;
      v15 = 0xD000000000000020;
    }

    v21 = v10 | 0x8000000000000000;
    object = TTRLocalizedString(_:value:comment:)(*&v11, *&v13, *&v15)._object;
    v23 = static TTRIAsset.Image.UpgradeWarmingSheet.upgradeHeader.getter();
  }

  else
  {
    if (static REMFeatureFlags.isSolariumEnabled.getter())
    {
      v16 = "Welcome to Reminders";
      v17 = 0xD000000000000021;
      v18 = 0x800000010068AA50;
      v19 = 0x800000010068AA80;
      v20 = 0xD00000000000005CLL;
    }

    else
    {
      v16 = "Welcome to\nReminders";
      v17 = 0xD000000000000016;
      v18 = 0x800000010068A9F0;
      v19 = 0x800000010068AA10;
      v20 = 0xD00000000000001CLL;
    }

    v24 = v16 | 0x8000000000000000;
    v25 = 0xD000000000000014;
    TTRLocalizedString(_:value:comment:)(*&v17, *(&v19 - 1), *&v20);
    v23 = 0;
    object = 0;
  }

  v26 = String._bridgeToObjectiveC()();

  if (object)
  {
    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    v27 = 0;
  }

  v30.receiver = a2;
  v30.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v30, "initWithTitle:detailText:icon:contentLayout:", v26, v27, v23, 2);

  return v28;
}

id sub_1004F9328(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRCloudKitMigrationManager();
  v9 = static TTRCloudKitMigrationManager.shared.getter();
  v10 = [objc_opt_self() sharedInstance];
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v11 = [objc_allocWithZone(REMStore) init];
  OS_dispatch_queue.SchedulerTimeType.Stride.init(integerLiteral:)();
  type metadata accessor for TTRWelcomeInteractor();
  v12 = swift_allocObject();
  v12[3] = 0;
  swift_unknownObjectWeakInit();
  v12[4] = a3;
  v12[5] = v9;
  v12[6] = &off_100716DB0;
  v12[7] = v10;
  sub_1004F9724(&v29, &v26);
  v13 = v27;
  sub_10012E7EC(a3);
  if (v13)
  {
    sub_1004F9794(&v29);
    sub_100005FD0(&v26, v28);
    sub_100005FD0(v28, (v12 + 8));
  }

  else
  {
    sub_1004F9794(&v26);
    v12[11] = &type metadata for TTRWelcomeInteractor.DefaultDeviceListRequestFactory;
    v12[12] = &off_100717278;
    sub_1004F9794(&v29);
  }

  v12[13] = v11;
  (*(v6 + 32))(v12 + OBJC_IVAR____TtC9Reminders20TTRWelcomeInteractor_getUpgradeInfoTimeout, v8, v5);
  v14 = type metadata accessor for TTRIWelcomeRouter();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v15 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(&v30 + 1) = v14;
  v31 = &off_10071E0C8;
  *&v29 = v15;
  type metadata accessor for TTRIWelcomePresenter();
  v16 = swift_allocObject();
  v17 = sub_10000AE84(&v29, v14);
  __chkstk_darwin(v17);
  v19 = (&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  *(v16 + 88) = v14;
  *(v16 + 96) = &off_10071E0C8;
  *(v16 + 64) = v21;
  *(v16 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v16 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v16 + 104) = 1;
  *(v16 + 112) = 0u;
  *(v16 + 128) = 0u;
  *(v16 + 144) = 0u;
  *(v16 + 160) = 0;
  *(v16 + 48) = v12;
  *(v16 + 56) = &off_100716EE0;

  sub_100004758(&v29);
  v22 = objc_allocWithZone(type metadata accessor for TTRIWelcomeViewController());

  v24 = sub_1004F9054(v23, v22);
  v12[3] = &off_100718008;
  swift_unknownObjectWeakAssign();

  *(v16 + 24) = &off_100729970;
  swift_unknownObjectWeakAssign();
  *(v16 + 40) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *(v15 + 32) = a2;
  swift_unknownObjectWeakAssign();

  return v24;
}

uint64_t sub_1004F9724(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100788BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004F9794(uint64_t a1)
{
  v2 = sub_100058000(&qword_100788BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1004F97FC(uint64_t *a1, void **a2, void *a3, void *a4, uint64_t a5, int a6)
{
  v136 = a6;
  v127 = a4;
  v137 = a1;
  v8 = type metadata accessor for TTRRemindersListLayout();
  v131 = *(v8 - 8);
  v132 = v8;
  v9 = __chkstk_darwin(v8);
  v119 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v133 = &v118 - v12;
  v13 = __chkstk_darwin(v11);
  v118 = &v118 - v14;
  __chkstk_darwin(v13);
  v128 = &v118 - v15;
  v16 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  v17 = __chkstk_darwin(v16 - 8);
  v125 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v126 = &v118 - v19;
  v124 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0);
  __chkstk_darwin(v124);
  v146 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TTRListType.SortingCapability();
  __chkstk_darwin(v21 - 8);
  v120 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v23 - 8);
  v123 = (&v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for TTRRemindersListDefaultListType();
  v144 = *(v25 - 8);
  v145 = v25;
  v26 = __chkstk_darwin(v25);
  v121 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v143 = (&v118 - v28);
  v29 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  v141 = *(v29 - 8);
  v142 = v29;
  v30 = __chkstk_darwin(v29);
  v138 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v140 = &v118 - v32;
  v33 = type metadata accessor for TTRRemindersListDataModelSourceCountCompleted();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v38 = *(v37 - 8);
  v39 = __chkstk_darwin(v37);
  v41 = &v118 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v43 = &v118 - v42;
  v44 = sub_100174F2C();
  v154 = &protocol witness table for REMSmartList;
  v153 = v44;
  v152[0] = a3;
  v45 = a3;
  static REMRemindersListDataView.SortingStyle.fallbackForCustomSmartList.getter();
  static REMRemindersListDataView.SortingStyle.sortingStyle(for:fallback:)();
  v129 = *(v38 + 8);
  v130 = v38 + 8;
  v129(v41, v37);
  sub_1004D3F04(v152);
  v122 = a2;
  v46 = *a2;
  (*(v34 + 104))(v36, enum case for TTRRemindersListDataModelSourceCountCompleted.onWhenShowingCompleted(_:), v33);
  v47 = *(v38 + 16);
  v134 = v43;
  v135 = v37;
  v47(v41, v43, v37);
  v48 = type metadata accessor for TTRUserDefaults();
  v49 = v46;
  v50 = v140;
  v51 = static TTRUserDefaults.appUserDefaults.getter();
  v154 = &protocol witness table for TTRUserDefaults;
  v153 = v48;
  v152[0] = v51;
  type metadata accessor for TTRShowCustomSmartListDataModelSource();
  swift_allocObject();
  v52 = v45;
  v53 = v141;
  v54 = v142;
  v139 = TTRShowCustomSmartListDataModelSource.init(store:smartList:countCompleted:sortingStyle:canChangeSortingStyle:userDefaults:)();
  v152[0] = &_swiftEmptyArrayStorage;
  sub_1004FA96C(&qword_100769628, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes);
  sub_100058000(&qword_10076C218);
  sub_10010BA44();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v55 = [v52 customContext];
  if (v55)
  {
    v56 = v55;
    v57 = REMSmartListCustomContext.filter.getter();

    if (v57)
    {
      v58 = v138;
      REMCustomSmartListFilterDescriptor.excludedSuggestedAttributes.getter();

      (*(v53 + 8))(v50, v54);
      (*(v53 + 32))(v50, v58, v54);
    }
  }

  v59 = [v52 accountID];
  v60 = v143;
  v61 = v144;
  *v143 = v59;
  v62 = v145;
  (*(v61 + 104))(v60, enum case for TTRRemindersListDefaultListType.cloudKitListWithAccountID(_:), v145);
  v63 = v122;
  v64 = v123;
  sub_10010BD5C(v122, v123, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v65 = *(v53 + 16);
  v66 = v138;
  v65(v138, v50, v54);
  v67 = v121;
  (*(v61 + 16))(v121, v60, v62);
  sub_10007786C(v64, v66, v67, v152);
  v68 = v152[0];
  v69 = v139;

  v70 = v68;
  v71 = v120;
  static TTRListType.SortingCapability.sortingCapabilityForCustomSmartList.getter();
  type metadata accessor for TTRShowCustomSmartListViewModelSource();
  v72 = swift_allocObject();
  v121 = v70;
  v73 = sub_1004FA800(v69, v70, v71, v72);
  sub_10010BD5C(v63, v64, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  sub_10010BCAC(v152, v149);
  v74 = sub_1004FA96C(&qword_100781120, type metadata accessor for TTRShowCustomSmartListViewModelSource);
  v75 = v146;
  sub_10010BD5C(v64, v146, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v76 = v124;
  sub_10010BCAC(v149, v75 + *(v124 + 20));
  v77 = (v75 + *(v76 + 24));
  *v77 = v73;
  v77[1] = v74;
  v78 = v149[0];
  sub_100058000(&qword_10076C230);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v151, v148, &qword_100769608);
  v80 = *(v148[5] + 8);
  *(v79 + 32) = v148[4];
  *(v79 + 40) = v80;
  sub_10000794C(&v150, v147, &qword_100769600);
  swift_retain_n();
  v81 = v78;
  swift_unknownObjectRelease();
  *(v79 + 48) = v147[3];
  sub_100004758(v147);
  sub_100004758(v148);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v82 = swift_allocObject();
  v83 = sub_1003A79E4(v81, v73, v79, v82);
  v138 = v73;

  sub_10010BD08(v149);
  sub_10010BE0C(v64, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v84 = *(v76 + 28);
  v123 = v83;
  *(v75 + v84) = v83;
  v85 = v126;
  sub_100078BBC(v126);
  v124 = type metadata accessor for TTRIShowCustomSmartListPresenter();
  v86 = swift_allocObject();
  v87 = (v86 + OBJC_IVAR____TtC9Reminders32TTRIShowCustomSmartListPresenter_dataModelSource);
  *v87 = v69;
  v87[1] = &protocol witness table for TTRShowCustomSmartListDataModelSource;
  v88 = v125;
  sub_10010BD5C(v85, v125, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);

  v89 = v127;
  swift_unknownObjectRetain();
  v90 = sub_1003A56E4(v88, v89, v86);
  sub_10010BE0C(v85, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v91 = *(v90 + 144);
  ObjectType = swift_getObjectType();
  v93 = *(v91 + 112);

  if (v93(ObjectType, v91))
  {
    swift_getObjectType();
    v94 = v118;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v96 = v131;
    v95 = v132;
    v97 = v128;
    (*(v131 + 32))(v128, v94, v132);
  }

  else
  {
    v96 = v131;
    v95 = v132;
    v97 = v128;
    (*(v131 + 104))(v128, enum case for TTRRemindersListLayout.list(_:), v132);
  }

  v127 = sub_1003A4A1C(v97, v90);
  v128 = v98;
  v100 = v99;
  v102 = v101;
  (*(v96 + 8))(v97, v95);
  v131 = swift_getObjectType();
  v132 = v100;
  *(v90 + 24) = *(v102 + 8);
  swift_unknownObjectWeakAssign();
  v103 = *(v90 + 144);
  v104 = swift_getObjectType();
  v105 = *(v103 + 112);

  if (v105(v104, v103))
  {
    swift_getObjectType();
    v106 = v119;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();

    v107 = v133;
    (*(v96 + 32))(v133, v106, v95);
  }

  else
  {

    v107 = v133;
    (*(v96 + 104))(v133, enum case for TTRRemindersListLayout.list(_:), v95);
  }

  v108 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController());
  v109 = v127;
  v110 = sub_1003A7A18(v90, v109, v128, v107, 0, 1, 0, v108);

  v111 = *(v102 + 32);
  v112 = v110;
  v111(v110, &off_100723D78, v131, v102);
  sub_1004FA96C(&qword_100788C20, type metadata accessor for TTRIShowCustomSmartListPresenter);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_1004FA96C(&qword_100788C28, type metadata accessor for TTRShowCustomSmartListViewModelSource);

  v113 = v112;
  dispatch thunk of TTRShowCustomSmartListDataModelSource.delegate.setter();

  sub_10056FEB0(v114, &off_10071A9B0);

  v123[3] = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v155, v149, &qword_100769600);
  v115 = v149[4];
  swift_unknownObjectRelease();
  *(v115 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v149);
  sub_10000794C(&v156, v149, &qword_100769608);
  swift_getObjectType();
  sub_1004FA96C(&unk_100788C30, type metadata accessor for TTRIShowCustomSmartListPresenter);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v149);
  dispatch thunk of TTRShowCustomSmartListDataModelSource.start(fetchesInitialDataSynchronously:)();
  v116 = v137;
  v137[3] = v124;
  v116[4] = &off_10072A760;

  swift_unknownObjectRelease();
  *v116 = v90;
  (*(v144 + 8))(v143, v145);
  (*(v141 + 8))(v140, v142);
  v129(v134, v135);
  sub_10010BE0C(v146, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v152);
  return v113;
}

id TTRIShowCustomSmartListAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowCustomSmartListAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIShowCustomSmartListAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowCustomSmartListAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004FA800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRListType.SortingCapability();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a4 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource____lazy_storage___dragAndDropCapability) = 0;
  *(a4 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList) = 0;
  v12 = a4 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_remindersCount;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  *(a4 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_hasIncompleteOrCompletedReminders) = 2;
  *(a4 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_showLargeAttachmentsValue) = 1;
  *(a4 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_sectionsContextInstance) = 0;
  (*(v9 + 16))(v11, a3, v8);
  v13 = sub_1003A649C(a1, a2, v11, a4);
  (*(v9 + 8))(a3, v8);
  return v13;
}

uint64_t sub_1004FA96C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004FA9B4(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 16))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FAA94()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v7[3] = v1;
  v7[4] = v2;
  v4 = sub_1000317B8(v7);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  v5 = (*(v2 + 24))(v1, v2);
  sub_100004758(v7);
  return v5;
}

uint64_t sub_1004FAB4C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 32))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FAC0C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  (*(v6 + 48))(a1, a2, v5, v6);
  return sub_100004758(v10);
}

uint64_t sub_1004FACD4(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 56))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FAD94(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 64))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FAE5C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 72))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FAF24(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 80))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FAFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 72);
  v8 = *(*v3 + 88);
  v9 = sub_10000C36C((*v3 + 48), v7);
  v12[3] = v7;
  v12[4] = v8;
  v10 = sub_1000317B8(v12);
  (*(*(v7 - 8) + 16))(v10, v9, v7);
  (*(v8 + 88))(a1, a2, a3, v7, v8);
  return sub_100004758(v12);
}

uint64_t sub_1004FB0C4(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  LOBYTE(a2) = (*(v6 + 96))(a1, a2, v5, v6);
  sub_100004758(v10);
  return a2 & 1;
}

uint64_t sub_1004FB194(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  (*(v6 + 104))(a1, a2, v5, v6);
  return sub_100004758(v10);
}

uint64_t sub_1004FB25C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  (*(v6 + 120))(a1, a2, v5, v6);
  return sub_100004758(v10);
}

uint64_t sub_1004FB324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 128))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FB404()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 136))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FB4B4(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 144))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FB574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 152))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FB654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 160))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FB734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 168))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FB814(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v11[3] = v5;
  v11[4] = v6;
  v8 = sub_1000317B8(v11);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  v9 = (*(v6 + 176))(a1, a2, v5, v6);
  sub_100004758(v11);
  return v9;
}

uint64_t sub_1004FB8E4(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 184))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FB9AC(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 192))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FBA74(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 200))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FBB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 208))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FBC14()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v7[3] = v1;
  v7[4] = v2;
  v4 = sub_1000317B8(v7);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  v5 = (*(v2 + 216))(v1, v2);
  sub_100004758(v7);
  return v5;
}

uint64_t sub_1004FBCCC(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 224))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FBD94(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 232))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FBE54(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 240))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FBF14(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 248))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FBFDC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 256))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FC08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 264))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FC16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 272))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FC24C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 280))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FC314()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v7[3] = v1;
  v7[4] = v2;
  v4 = sub_1000317B8(v7);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  v5 = (*(v2 + 288))(v1, v2);
  sub_100004758(v7);
  return v5;
}

uint64_t sub_1004FC3CC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 296))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FC48C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  LOBYTE(v1) = (*(v2 + 304))(v1, v2);
  sub_100004758(v6);
  return v1 & 1;
}

uint64_t sub_1004FC544(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  LOBYTE(a2) = (*(v6 + 312))(a1, a2, v5, v6);
  sub_100004758(v10);
  return a2 & 1;
}

uint64_t sub_1004FC614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 320))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FC704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 328))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FC7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 336))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FC8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 344))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FC9D4()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 352))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FCA84(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  (*(v6 + 360))(a1, a2, v5, v6);
  return sub_100004758(v10);
}

uint64_t sub_1004FCB4C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 368))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FCC14()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 376))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FCCC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 72);
  v8 = *(*v3 + 88);
  v9 = sub_10000C36C((*v3 + 48), v7);
  v12[3] = v7;
  v12[4] = v8;
  v10 = sub_1000317B8(v12);
  (*(*(v7 - 8) + 16))(v10, v9, v7);
  (*(v8 + 384))(a1, a2, a3, v7, v8);
  return sub_100004758(v12);
}

uint64_t sub_1004FCD9C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 392))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FCE5C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 400))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FCF24()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 408))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FCFD4(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  (*(v6 + 416))(a1, a2, v5, v6);
  return sub_100004758(v10);
}

uint64_t sub_1004FD0AC(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 424))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FD180(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v11[3] = v5;
  v11[4] = v6;
  v8 = sub_1000317B8(v11);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  v9 = (*(v6 + 432))(a1, a2, v5, v6);
  sub_100004758(v11);
  return v9;
}

uint64_t sub_1004FD260(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 440))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FD328(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 448))(a1, a2, a3 & 0x101FF, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FD40C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 456))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FD4BC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 464))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FD56C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v7[3] = v1;
  v7[4] = v2;
  v4 = sub_1000317B8(v7);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  v5 = (*(v2 + 496))(v1, v2);
  sub_100004758(v7);
  return v5;
}

uint64_t sub_1004FD624()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v7[3] = v1;
  v7[4] = v2;
  v4 = sub_1000317B8(v7);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  v5 = (*(v2 + 504))(v1, v2);
  sub_100004758(v7);
  return v5;
}

uint64_t sub_1004FD6E4(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 512))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FD7AC(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 520))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FD86C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v7[3] = v1;
  v7[4] = v2;
  v4 = sub_1000317B8(v7);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  v5 = (*(v2 + 528))(v1, v2);
  sub_100004758(v7);
  return v5;
}

uint64_t sub_1004FD924(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 536))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FD9EC(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 544))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FDAB4(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 552))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FDB7C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 560))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FDC44(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 568))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FDD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 72);
  v8 = *(*v3 + 88);
  v9 = sub_10000C36C((*v3 + 48), v7);
  v12[3] = v7;
  v12[4] = v8;
  v10 = sub_1000317B8(v12);
  (*(*(v7 - 8) + 16))(v10, v9, v7);
  LOBYTE(a3) = (*(v8 + 576))(a1, a2, a3, v7, v8);
  sub_100004758(v12);
  return a3 & 1;
}

uint64_t sub_1004FDDEC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  LOBYTE(a2) = (*(v6 + 592))(a1, a2, v5, v6);
  sub_100004758(v10);
  return a2 & 1;
}

uint64_t sub_1004FDEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(*v5 + 72);
  v12 = *(*v5 + 88);
  v13 = sub_10000C36C((*v5 + 48), v11);
  v16[3] = v11;
  v16[4] = v12;
  v14 = sub_1000317B8(v16);
  (*(*(v11 - 8) + 16))(v14, v13, v11);
  (*(v12 + 600))(a1, a2, a3, a4, a5, v11, v12);
  return sub_100004758(v16);
}

uint64_t sub_1004FDFAC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  LOBYTE(a2) = (*(v6 + 608))(a1, a2, v5, v6);
  sub_100004758(v10);
  return a2 & 1;
}

uint64_t sub_1004FE07C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 616))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FE144(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 624))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FE20C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 632))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FE2D4(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 640))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FE39C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 648))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FE45C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 656))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FE51C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 664))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FE5DC(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 672))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FE6A4()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  LOBYTE(v1) = (*(v2 + 680))(v1, v2);
  sub_100004758(v6);
  return v1 & 1;
}

uint64_t sub_1004FE75C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 688))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FE82C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  LOBYTE(a2) = (*(v6 + 696))(a1, a2, v5, v6);
  sub_100004758(v10);
  return a2 & 1;
}

uint64_t sub_1004FE8FC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  LOBYTE(a2) = (*(v6 + 704))(a1, a2, v5, v6);
  sub_100004758(v10);
  return a2 & 1;
}

uint64_t sub_1004FE9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 712))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FEAAC(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 720))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FEB74(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 728))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FEC3C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 736))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FED04(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 744))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FEDCC(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 752))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FEE94(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 760))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FEF5C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 768))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FF024(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  (*(v6 + 776))(a1, a2, v5, v6);
  return sub_100004758(v10);
}

uint64_t sub_1004FF0EC(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 784))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FF1AC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 792))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FF25C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 800))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FF30C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 808))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FF3BC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 816))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FF47C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  LOBYTE(v1) = (*(v2 + 824))(v1, v2);
  sub_100004758(v6);
  return v1 & 1;
}

uint64_t sub_1004FF534()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 832))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FF5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v13 = *(*v6 + 72);
  v14 = *(*v6 + 88);
  v15 = sub_10000C36C((*v6 + 48), v13);
  v19[3] = v13;
  v19[4] = v14;
  v16 = sub_1000317B8(v19);
  (*(*(v13 - 8) + 16))(v16, v15, v13);
  v17 = (*(v14 + 840))(a1, a2, a3, a4, v13, v14, a5, a6);
  sub_100004758(v19);
  return v17;
}

uint64_t sub_1004FF704(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  (*(v6 + 848))(a1, a2, v5, v6);
  return sub_100004758(v10);
}

uint64_t sub_1004FF7CC(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 856))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FF894()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 864))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FF954()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  LOBYTE(v1) = (*(v2 + 872))(v1, v2);
  sub_100004758(v6);
  return v1 & 1;
}

uint64_t sub_1004FFA0C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  LOBYTE(v1) = (*(v2 + 880))(v1, v2);
  sub_100004758(v6);
  return v1 & 1;
}

uint64_t sub_1004FFAC4()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 888))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FFB74()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 896))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FFC24(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 904))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FFCE4(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 912))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FFDA4()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 920))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FFE64()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  LOBYTE(v1) = (*(v2 + 928))(v1, v2);
  sub_100004758(v6);
  return v1 & 1;
}

uint64_t sub_1004FFF1C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  LOBYTE(v1) = (*(v2 + 936))(v1, v2);
  sub_100004758(v6);
  return v1 & 1;
}

uint64_t sub_1004FFFD4()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 944))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_100500084()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 952))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_100500134()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  LOBYTE(v1) = (*(v2 + 960))(v1, v2);
  sub_100004758(v6);
  return v1 & 1;
}

uint64_t sub_1005001EC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  (*(v6 + 968))(a1, a2, v5, v6);
  return sub_100004758(v10);
}

uint64_t sub_1005002B4(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 976))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_100500374(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 984))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_100500434()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 992))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1005004E4()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  LOBYTE(v1) = (*(v2 + 1008))(v1, v2);
  sub_100004758(v6);
  return v1 & 1;
}

uint64_t sub_10050059C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 1016))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_10050064C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 72);
  v8 = *(*v3 + 88);
  v9 = sub_10000C36C((*v3 + 48), v7);
  v12[3] = v7;
  v12[4] = v8;
  v10 = sub_1000317B8(v12);
  (*(*(v7 - 8) + 16))(v10, v9, v7);
  (*(v8 + 1024))(a1, a2, a3, v7, v8);
  return sub_100004758(v12);
}

uint64_t sub_100500724(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 1032))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1005007E4(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 1040))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1005008AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 72);
  v8 = *(*v3 + 88);
  v9 = sub_10000C36C((*v3 + 48), v7);
  v12[3] = v7;
  v12[4] = v8;
  v10 = sub_1000317B8(v12);
  (*(*(v7 - 8) + 16))(v10, v9, v7);
  (*(v8 + 1048))(a1, a2, a3, v7, v8);
  return sub_100004758(v12);
}

uint64_t sub_100500984(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 1056))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_100500A4C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 1064))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_100500B0C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 1072))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_100500BCC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 1080))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_100500C7C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 1088))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_100500D44()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  LOBYTE(v1) = (*(v2 + 1096))(v1, v2);
  sub_100004758(v6);
  return v1 & 1;
}

uint64_t sub_100500DFC(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 1104))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_100500EC4(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 1112))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_100500F94(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 1120))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_10050105C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 1128))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_100501124()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  LOBYTE(v1) = (*(*(v2 + 8) + 8))(v1);
  sub_100004758(v6);
  return v1 & 1;
}

uint64_t sub_1005011DC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  LOBYTE(v1) = (*(*(v2 + 8) + 16))(v1);
  sub_100004758(v6);
  return v1 & 1;
}

uint64_t sub_100501294(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(*(v4 + 8) + 24))(a1, v3);
  return sub_100004758(v8);
}

uint64_t sub_100501574()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100788C40);
  v1 = sub_100003E30(v0, qword_100788C40);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10050163C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10008E9D8();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005016A4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10008E9D8();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10050170C()
{
  if (*(v0 + 72))
  {
    sub_100003540(0, &qword_100788D40);

    static NSUndoManager.removeObserver(with:)();

    sub_10003B788(v0 + 16);

    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1005017E8()
{
  v2 = sub_100058000(&qword_100788D30);
  __chkstk_darwin(v2 - 8);
  v48 = &v48 - v3;
  v58 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  v4 = *(v58 - 8);
  v5 = __chkstk_darwin(v58);
  v54 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v48 - v8;
  v10 = __chkstk_darwin(v7);
  v51 = &v48 - v11;
  __chkstk_darwin(v10);
  v13 = &v48 - v12;
  v57 = v0;
  v14 = *(v0 + 56);
  v15 = *(v14 + 16);
  v53 = v4;
  v56 = v15;
  if (v15)
  {
    v16 = 0;
    v55 = v4 + 16;
    v49 = (v4 + 8);
    v52 = _swiftEmptyArrayStorage;
    v50 = (v4 + 32);
    while (1)
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v18 = *(v4 + 72);
      (*(v4 + 16))(v13, v14 + v17 + v18 * v16, v58);
      v19 = TTRListOrCustomSmartListChangeItem.parentListID.getter();
      v20 = [*(v57 + 32) objectID];
      v1 = v20;
      if (!v19)
      {
        break;
      }

      if (!v20)
      {
        v1 = v19;
LABEL_4:

        goto LABEL_5;
      }

      sub_100003540(0, &qword_10076BA50);
      v21 = static NSObject.== infix(_:_:)();

      if (v21)
      {
        goto LABEL_13;
      }

LABEL_5:
      (*v49)(v13, v58);
LABEL_6:
      if (v56 == ++v16)
      {
        goto LABEL_19;
      }
    }

    if (!v20)
    {
LABEL_13:
      v22 = *v50;
      (*v50)(v51, v13, v58);
      v23 = v52;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1004A1F60(0, v23[2] + 1, 1);
        v23 = v59;
      }

      v26 = v23[2];
      v25 = v23[3];
      v1 = (v26 + 1);
      if (v26 >= v25 >> 1)
      {
        sub_1004A1F60(v25 > 1, v26 + 1, 1);
        v23 = v59;
      }

      v23[2] = v1;
      v52 = v23;
      v22(v23 + v17 + v26 * v18, v51, v58);
      v4 = v53;
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v52 = _swiftEmptyArrayStorage;
LABEL_19:
  v27 = *(v57 + 40);
  v28 = v52[2];
  if (v28)
  {
    v56 = *(v57 + 40);
    v59 = _swiftEmptyArrayStorage;
    v29 = v52;
    specialized ContiguousArray.reserveCapacity(_:)();
    v57 = *(v4 + 16);
    v30 = v29 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v31 = *(v4 + 72);
    v32 = (v4 + 8);
    v33 = v58;
    do
    {
      (v57)(v9, v30, v33);
      TTRListOrCustomSmartListChangeItem.mergeableOrderingNode.getter();
      (*v32)(v9, v33);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v30 += v31;
      --v28;
    }

    while (v28);

    v27 = v56;
  }

  else
  {
  }

  sub_100058000(&qword_100788D38);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v35 = [v27 mergeableOrderingNodesByOrderingMergeableOrderingNodes:isa];

  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = v48;
  v9 = v58;
  if (v4 >> 62)
  {
LABEL_44:
    v36 = _CocoaArrayWrapper.endIndex.getter();
    if (v36)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v36 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
LABEL_26:
      v37 = 0;
      v38 = v4 & 0xC000000000000001;
      v39 = (v53 + 48);
      v56 = (v53 + 32);
      v57 = v4 & 0xFFFFFFFFFFFFFF8;
      v40 = _swiftEmptyArrayStorage;
      v55 = v4 & 0xC000000000000001;
      while (1)
      {
        if (v38)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v41 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v37 >= *(v57 + 16))
          {
            goto LABEL_43;
          }

          swift_unknownObjectRetain();
          v41 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_42;
          }
        }

        swift_getObjectType();
        sub_100501E7C(v1);
        swift_unknownObjectRelease();
        if ((*v39)(v1, 1, v9) == 1)
        {
          sub_10050273C(v1);
        }

        else
        {
          v42 = v4;
          v43 = v36;
          v44 = *v56;
          (*v56)(v54, v1, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_1005475B4(0, *(v40 + 2) + 1, 1, v40);
          }

          v46 = *(v40 + 2);
          v45 = *(v40 + 3);
          if (v46 >= v45 >> 1)
          {
            v40 = sub_1005475B4(v45 > 1, v46 + 1, 1, v40);
          }

          *(v40 + 2) = v46 + 1;
          v44(&v40[((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v46], v54, v9);
          v1 = v48;
          v36 = v43;
          v4 = v42;
          v38 = v55;
        }

        ++v37;
        if (v41 == v36)
        {
          goto LABEL_46;
        }
      }
    }
  }

  v40 = _swiftEmptyArrayStorage;
LABEL_46:

  return v40;
}

uint64_t sub_100501E7C@<X0>(uint64_t *a1@<X8>)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    *a1 = v2;
    v3 = &enum case for TTRListOrCustomSmartListChangeItem.list(_:);
LABEL_5:
    v5 = *v3;
    v6 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v7 = *(v6 - 8);
    (*(v7 + 104))(a1, v5, v6);
    (*(v7 + 56))(a1, 0, 1, v6);

    return swift_unknownObjectRetain();
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    *a1 = v4;
    v3 = &enum case for TTRListOrCustomSmartListChangeItem.customSmartList(_:);
    goto LABEL_5;
  }

  v9 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, 1, 1, v9);
}

void *sub_100502000()
{
  v1 = v0;
  v2 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = *(v1 + 56);
  v32 = *(v9 + 16);
  if (v32)
  {
    v10 = 0;
    v30 = v3 + 16;
    v26 = (v3 + 32);
    v29 = _swiftEmptyArrayStorage;
    v27 = (v3 + 8);
    v25 = v1;
    v31 = v9;
    while (1)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        return result;
      }

      v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v12 = *(v3 + 72);
      v13 = v2;
      (*(v3 + 16))(v8, v9 + v11 + v12 * v10, v2);
      v14 = TTRListOrCustomSmartListChangeItem.parentListID.getter();
      v15 = [*(v1 + 32) objectID];
      v16 = v15;
      if (v14)
      {
        if (v15)
        {
          sub_100003540(0, &qword_10076BA50);
          v17 = static NSObject.== infix(_:_:)();

          if (v17)
          {
            goto LABEL_3;
          }

          goto LABEL_14;
        }

        v16 = v14;
      }

      else if (!v15)
      {
        goto LABEL_3;
      }

LABEL_14:
      if (TTRListOrCustomSmartListChangeItem.canBeIncludedInGroup.getter())
      {
        v18 = *v26;
        v2 = v13;
        (*v26)(v28, v8, v13);
        v19 = v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = v19;
        v33 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1004A1F60(0, v19[2] + 1, 1);
          v2 = v13;
          v21 = v33;
        }

        v23 = v21[2];
        v22 = v21[3];
        if (v23 >= v22 >> 1)
        {
          sub_1004A1F60(v22 > 1, v23 + 1, 1);
          v2 = v13;
          v21 = v33;
        }

        v21[2] = v23 + 1;
        v29 = v21;
        result = v18(v21 + v11 + v23 * v12, v28, v2);
        v1 = v25;
        goto LABEL_4;
      }

LABEL_3:
      v2 = v13;
      result = (*v27)(v8, v13);
LABEL_4:
      ++v10;
      v9 = v31;
      if (v32 == v10)
      {
        return v29;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

void sub_1005022F8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100058000(&unk_100786CC0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - v6;
  v8 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  v9 = *(v8 - 8);
  v29 = v8;
  v30 = v9;
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005017E8();
  v13 = sub_1000DC124(a1, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    if (v13 == a2)
    {
      return;
    }

    v16 = sub_1005017E8();
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v16 + 2) > a2)
    {
      (*(v30 + 16))(v11, &v16[((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * a2], v29);

      TTRListOrCustomSmartListChangeItem.mergeableOrderingNode.getter();
      v31 = TTRListOrCustomSmartListChangeItem.mergeableOrderingNode.getter();
      sub_100058000(&qword_100788D38);
      TTRRelativeInsertionPosition.init(sibling:isAfter:)();
      TTRAccountEditor.move(list:to:positionWithinGroup:)();
      swift_unknownObjectRelease();
      (*(v5 + 8))(v7, v4);
      if (qword_1007673E8 == -1)
      {
LABEL_6:
        v17 = type metadata accessor for Logger();
        sub_100003E30(v17, qword_100788C40);

        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v31 = v21;
          *v20 = 136315138;
          sub_1005017E8();
          v22 = v29;
          v23 = Array.description.getter();
          v25 = v24;

          v26 = sub_100004060(v23, v25, &v31);

          *(v20 + 4) = v26;
          _os_log_impl(&_mh_execute_header, v18, v19, "Member lists after move {membersList: %s}", v20, 0xCu);
          sub_100004758(v21);
        }

        else
        {

          v22 = v29;
        }

        sub_1005016A4();
        (*(v30 + 8))(v11, v22);
        return;
      }

LABEL_13:
      swift_once();
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (qword_1007673E8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100003E30(v27, qword_100788C40);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Tried to move list that is not part of the current group", 56, 2);
  __break(1u);
}

uint64_t sub_10050273C(uint64_t a1)
{
  v2 = sub_100058000(&qword_100788D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1005027B4()
{
  sub_10050292C(&qword_100788D50, type metadata accessor for TTRIRemindersListEditableSectionCell_collectionView);
  v1 = v0;
  return v0;
}

void *sub_100502814()
{
  sub_10050292C(&qword_100788D58, type metadata accessor for TTRIRemindersListEditableSectionCell);
  v1 = v0;
  return v0;
}

unint64_t sub_100502878()
{
  result = qword_100788D48;
  if (!qword_100788D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788D48);
  }

  return result;
}

void *sub_1005028CC()
{
  sub_10050292C(&qword_1007829B0, type metadata accessor for TTRIBoardEditableColumnHeader);
  v1 = v0;
  return v0;
}

uint64_t sub_10050292C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100502974(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v7[4] = a1;
    v7[5] = a2;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10001047C;
    v7[3] = &unk_10072CC38;
    v6 = _Block_copy(v7);

    [v5 dismissViewControllerAnimated:1 completion:v6];
    _Block_release(v6);
  }
}

uint64_t sub_100502A68()
{
  v1 = v0;
  TTRRemindersBoardMainDiffableDataSource.allColumnIDsPublisher.getter();
  swift_allocObject();
  swift_weakInit();
  sub_100058000(&unk_100781750);
  sub_100503664();
  v2 = Publisher<>.sink(receiveValue:)();

  *(v1 + 40) = v2;
}

uint64_t sub_100502B38(uint64_t a1, char a2)
{
  v3 = sub_100503140(a1, a2);
  swift_beginAccess();
  sub_100058000(&unk_10076BBD0);
  Set.removeAll(where:)();
  swift_endAccess();
  swift_beginAccess();
  Set.removeAll(where:)();
  swift_endAccess();
  v5 = *(v2 + 48);

  sub_10059A6E8(v3);

  *(v2 + 48) = v5;

  if (*(v2 + 32))
  {
    __chkstk_darwin(result);

    TTRObservableViewModelCollection.updateAndPublishAll(using:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100502CAC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_100503140(a1, a2);
  swift_beginAccess();
  sub_100058000(&unk_10076BBD0);
  Set.removeAll(where:)();
  swift_endAccess();
  swift_beginAccess();
  Set.removeAll(where:)();
  swift_endAccess();
  v10 = *(v3 + 48);
  v17 = v10;
  if (*(v10 + 16) && (v11 = *(v9 + 16)) != 0)
  {
    v12 = *(type metadata accessor for TTRRemindersListViewModel.ItemID() - 8);
    v13 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v14 = *(v12 + 72);

    do
    {
      sub_1000E992C(v13, v8);
      sub_1000079B4(v8, &unk_10076BB50);
      v13 += v14;
      --v11;
    }

    while (v11);

    v10 = v17;
  }

  else
  {
  }

  *(v3 + 48) = v10;

  if (*(v3 + 32))
  {
    __chkstk_darwin(result);
    *(&v16 - 2) = v3;
    *(&v16 - 1) = 7;

    TTRObservableViewModelCollection.updateAndPublishAll(using:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100502F40(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = &_swiftEmptySetSingleton;
  *(v1 + 56) = &_swiftEmptySetSingleton;
  *(v1 + 24) = a1;
  *(v1 + 32) = 0;
  swift_allocObject();
  swift_weakInit();
  sub_100058000(&qword_100788EC8);
  swift_allocObject();
  *(v1 + 32) = TTRObservableViewModelCollection.init(makeViewModel:)();

  return v1;
}

uint64_t sub_100502FF4@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 48);
    swift_beginAccess();
    v6 = *(v4 + 56);
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v6 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1005030BC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 32);

    if (v1)
    {
      TTRObservableViewModelCollection.prune(keeping:)();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100503140(uint64_t a1, char a2)
{
  v31 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v30 - 8);
  v7 = v6;
  __chkstk_darwin(v30);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_100772760);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v29 = *(v6 + 72);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10062D400;
  v28 = v10;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  v33 = v11;
  if (a2)
  {
    v12 = TTRRemindersBoardMainDiffableDataSource.childrenExcludingCollapsed(of:)();
    v13 = *(v12 + 16);
    if (v13)
    {
      v32 = _swiftEmptyArrayStorage;
      sub_1004A2324(0, v13, 0);
      v14 = v32;
      v16 = *(v3 + 16);
      v15 = v3 + 16;
      v17 = *(v15 + 64);
      v24 = v12;
      v18 = v12 + ((v17 + 32) & ~v17);
      v25 = *(v15 + 56);
      v26 = v16;
      v27 = v15;
      v19 = (v15 - 8);
      do
      {
        v20 = v31;
        v26(v5, v18, v31);
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        (*v19)(v5, v20);
        v32 = v14;
        v22 = v14[2];
        v21 = v14[3];
        if (v22 >= v21 >> 1)
        {
          sub_1004A2324(v21 > 1, v22 + 1, 1);
          v14 = v32;
        }

        v14[2] = v22 + 1;
        (*(v7 + 32))(v14 + v28 + v22 * v29, v9, v30);
        v18 += v25;
        --v13;
      }

      while (v13);
    }

    else
    {

      v14 = _swiftEmptyArrayStorage;
    }

    sub_100081704(v14);
    return v33;
  }

  return v11;
}

BOOL sub_100503438()
{
  v0 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  TTRRemindersBoardMainDiffableDataSource.item(withID:)();
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) == 1;
  sub_1000079B4(v2, &qword_100772140);
  return v4;
}

uint64_t sub_100503534@<X0>(uint64_t a1@<X2>, unsigned int a2@<W3>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  swift_beginAccess();
  v7 = *(a1 + 48);
  swift_beginAccess();
  v8 = *(a1 + 56);
  *a3 = (v6 & 0xFFFFFFFFFFFFFEFFLL | ((a2 & 1) << 8)) ^ 0x100;
  *(a3 + 8) = v7;
  *(a3 + 16) = ~(a2 >> 1) & 1;
  *(a3 + 24) = v8;
  *(a3 + 32) = (a2 & 4) == 0;
}

uint64_t sub_1005035E0()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100503664()
{
  result = qword_100770088;
  if (!qword_100770088)
  {
    sub_10005D20C(&unk_100781750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100770088);
  }

  return result;
}

void *sub_1005036D0()
{
  v1 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainCollectionView____lazy_storage___insetsUpdater;
  if (*(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainCollectionView____lazy_storage___insetsUpdater))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainCollectionView____lazy_storage___insetsUpdater);
  }

  else
  {
    type metadata accessor for TTRIShowRemindersScrollViewInsetsUpdater();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v2[5] = 2;
    v2[6] = 0;
    v2[7] = 0;
    v2[8] = 0;
    swift_unknownObjectWeakAssign();
    v2[3] = sub_1005037E4;
    v2[4] = 0;
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1005037E4(void *a1)
{
  [a1 horizontalScrollIndicatorInsets];

  return [a1 setHorizontalScrollIndicatorInsets:?];
}

uint64_t sub_100503984()
{
  sub_1001E6A30();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIShowSearchResultPresenter()
{
  result = qword_100788F38;
  if (!qword_100788F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100503A98()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.search(_:), v0);
  v5 = TTRUserDefaults.showingLargeAttachments(forType:)();

  (*(v1 + 8))(v3, v0);
  return v5 & 1;
}

uint64_t sub_100503BA8()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.search(_:), v0);
  TTRUserDefaults.setShowingLargeAttachments(value:forType:)();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100503CB8()
{
  v1 = type metadata accessor for TTRUserActivityListPayload.State();
  v3.n128_f64[0] = __chkstk_darwin(v1);
  v5 = (&v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v0 + OBJC_IVAR____TtC9Reminders34TTRShowSearchResultViewModelSource_searchTerm + 8))
  {
    v6 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRShowSearchResultViewModelSource_searchTerm);
    v7 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRShowSearchResultViewModelSource_searchTerm + 8);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *v5 = v6;
  v5[1] = v7;
  (*(v2 + 104))(v5, enum case for TTRUserActivityListPayload.State.search(_:), v3);
  v10[3] = type metadata accessor for TTRUserActivityListPayload();
  v10[4] = &protocol witness table for TTRUserActivityListPayload;
  sub_1000317B8(v10);

  TTRUserActivityListPayload.init(state:)();
  NSUserActivity.setPayload(_:)();
  return sub_100004758(v10);
}

uint64_t sub_100503DF4()
{
  v1 = v0;
  v2 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100070538();
  v10 = static NSUserActivity.forStoringWindowSceneRestorationPayload()();
  v11 = (v1 + OBJC_IVAR____TtC9Reminders34TTRShowSearchResultViewModelSource_searchTerm);
  v12 = *(v1 + OBJC_IVAR____TtC9Reminders34TTRShowSearchResultViewModelSource_searchTerm + 8);
  if (v12)
  {
    v13 = *v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  *v5 = v13;
  v5[1] = v14;
  (*(v3 + 104))(v5, enum case for TTRUserActivityWindowSceneRestorationPayload.State.search(_:), v2);

  TTRUserActivityWindowSceneRestorationPayload.init(state:)();
  v18[3] = v6;
  v18[4] = &protocol witness table for TTRUserActivityWindowSceneRestorationPayload;
  v15 = sub_1000317B8(v18);
  (*(v7 + 16))(v15, v9, v6);
  NSUserActivity.setPayload(_:)();
  (*(v7 + 8))(v9, v6);
  sub_100004758(v18);
  return v10;
}

uint64_t sub_100503FF8@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v2 - 8);
  v47 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v4 - 8);
  v46 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_1007693B0);
  __chkstk_darwin(v6 - 8);
  v45 = v38 - v7;
  v8 = sub_100058000(&qword_1007693B8);
  __chkstk_darwin(v8 - 8);
  v44 = v38 - v9;
  v43 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v10 = *(v43 - 8);
  __chkstk_darwin(v43);
  v50 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v12 = *(v40 - 8);
  __chkstk_darwin(v40);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_100780980);
  __chkstk_darwin(v15 - 8);
  v49 = v38 - v16;
  v17 = sub_100058000(&unk_100775640);
  __chkstk_darwin(v17 - 8);
  v19 = (v38 - v18);
  if (*(v1 + OBJC_IVAR____TtC9Reminders34TTRShowSearchResultViewModelSource_searchTerm + 8))
  {
    v20 = *(v1 + OBJC_IVAR____TtC9Reminders34TTRShowSearchResultViewModelSource_searchTerm);
    v21 = *(v1 + OBJC_IVAR____TtC9Reminders34TTRShowSearchResultViewModelSource_searchTerm + 8);
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {

    v23._object = 0x800000010068AF70;
    v24._object = 0x800000010068AF90;
    v23._countAndFlagsBits = 0x1000000000000014;
    v24._countAndFlagsBits = 0xD000000000000018;
    TTRLocalizedString(_:comment:)(v23, v24);
    sub_100058000(&unk_100786CB0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10062D400;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = sub_10005C390();
    *(v25 + 32) = v20;
    *(v25 + 40) = v21;

    v26 = String.init(format:_:)();
    object = v27;
    countAndFlagsBits = v26;
  }

  else
  {

    v28._countAndFlagsBits = 0x686372616553;
    v29._countAndFlagsBits = 0xD00000000000002ELL;
    v29._object = 0x800000010068AFB0;
    v28._object = 0xE600000000000000;
    v30 = TTRLocalizedString(_:comment:)(v28, v29);
    object = v30._object;
    countAndFlagsBits = v30._countAndFlagsBits;
  }

  *v19 = v20;
  v19[1] = v21;
  v31 = enum case for TTRListType.search(_:);
  v32 = type metadata accessor for TTRListType();
  v33 = *(v32 - 8);
  (*(v33 + 104))(v19, v31, v32);
  (*(v33 + 56))(v19, 0, 1, v32);
  type metadata accessor for TTRListColors();
  v39 = static TTRListColors.searchResult.getter();
  v34 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
  (*(*(v34 - 8) + 56))(v49, 1, 1, v34);
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_unknownObjectRelease();
  }

  TTRRemindersListSectionMenuCapabilities.init()();
  v38[1] = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
  (*(v12 + 8))(v14, v40);
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.deleteCompletedContext.getter())
  {
    swift_unknownObjectRelease();
  }

  (*(v10 + 104))(v50, enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:), v43);
  dispatch thunk of TTRRemindersListDataModelSourceBaseType.printingDataModelSource.getter();
  sub_1000079B4(v51, &qword_1007693C0);
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
    swift_unknownObjectRelease();
  }

  v35 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  (*(*(v35 - 8) + 56))(v44, 1, 1, v35);
  v36 = type metadata accessor for TTRTemplatePublicLinkData();
  (*(*(v36 - 8) + 56))(v45, 1, 1, v36);
  TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
  TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
  return TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();
}

uint64_t type metadata accessor for TTRShowSearchResultViewModelSource()
{
  result = qword_1007899E0;
  if (!qword_1007899E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100504828()
{
  result = qword_100789F78;
  if (!qword_100789F78)
  {
    type metadata accessor for TTRShowSearchResultViewModelSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789F78);
  }

  return result;
}

uint64_t sub_100504880(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = sub_100058000(&qword_10076F6E0);
  __chkstk_darwin(v49);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v62 = &v46 - v8;
  v61 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v9 = *(v61 - 8);
  __chkstk_darwin(v61);
  v65 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - v12;
  v14 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v14 - 8);
  v52 = &v46 - v15;
  v16 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v51 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = REMRemindersListDataView.ListsModel.completedRemindersCount.getter();
  v20 = v2 + OBJC_IVAR____TtC9Reminders34TTRShowSearchResultViewModelSource_completedRemindersCount;
  *v20 = v19;
  *(v20 + 8) = v21 & 1;
  v50 = v18;
  sub_100503FF8(v18);
  v60 = static TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidthOrHiddenForFirstSection.getter();
  v64 = v22;
  v23 = REMRemindersListDataView.ListsModel.groups.getter();
  v24 = *(v23 + 16);
  v53 = a2;
  if (v24)
  {
    v46 = v16;
    v47 = v13;
    v48 = v2;
    v67[0] = _swiftEmptyArrayStorage;
    sub_1004A22E0(0, v24, 0);
    v25 = v67[0];
    v26 = v23;
    v27 = *(v23 + 16);
    v28 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
    v29 = 0;
    v30 = *(v28 - 8);
    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v63 = v26;
    v57 = v26 + v31;
    v56 = v30 + 16;
    v55 = v30 + 32;
    v54 = v9 + 32;
    if (v27 >= v24)
    {
      v32 = v24;
    }

    else
    {
      v32 = v27;
    }

    v58 = v24;
    v59 = v32;
    v33 = v49;
    while (v59 != v29)
    {
      if (v29 >= *(v63 + 16))
      {
        goto LABEL_15;
      }

      v34 = *(v33 + 48);
      v35 = v62;
      (*(v30 + 16))(&v62[v34], v57 + *(v30 + 72) * v29, v28);
      *v6 = v29;
      (*(v30 + 32))(&v6[*(v33 + 48)], &v35[v34], v28);
      sub_100504F48(v6, v60, v64, v65);
      sub_1000079B4(v6, &qword_10076F6E0);
      v67[0] = v25;
      v37 = v25[2];
      v36 = v25[3];
      if (v37 >= v36 >> 1)
      {
        sub_1004A22E0(v36 > 1, v37 + 1, 1);
        v33 = v49;
        v25 = v67[0];
      }

      ++v29;
      v25[2] = v37 + 1;
      (*(v9 + 32))(v25 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v37, v65, v61);
      if (v58 == v29)
      {

        v3 = v48;
        v13 = v47;
        v16 = v46;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    sub_1000079B4(v6, &qword_10076F6E0);

    __break(1u);
  }

  else
  {

    v25 = _swiftEmptyArrayStorage;
LABEL_13:
    v38 = v51;
    v39 = v52;
    v40 = v50;
    (*(v51 + 16))(v52, v50, v16);
    (*(v38 + 56))(v39, 0, 1, v16);
    v41 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
    v42 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
    v43 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v43 - 8) + 56))(v13, 1, 1, v43);
    v67[3] = v41;
    v67[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
    v67[0] = v42;
    sub_10000B0D8(v67, v66);
    v44 = swift_allocObject();
    *(v44 + 16) = v25;
    sub_100005FD0(v66, v44 + 24);
    *(v44 + 64) = v3;

    sub_100586238(1, v39, sub_100070528, v44, v53, 0, v13);

    sub_1000079B4(v13, &qword_100772140);
    sub_1000079B4(v39, &unk_10078A380);
    (*(v38 + 8))(v40, v16);

    return sub_100004758(v67);
  }

  return result;
}

uint64_t sub_100504F48@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a4;
  v72 = a3;
  v73 = a2;
  v5 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v5 - 8);
  v81 = &v54 - v6;
  v78 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v79 = *(v8 - 8);
  v80 = v8;
  __chkstk_darwin(v8);
  v77 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v54 - v11;
  v71 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v67 = *(v13 - 8);
  v68 = v13;
  __chkstk_darwin(v13);
  v65 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_10076B060);
  __chkstk_darwin(v15 - 8);
  v63 = &v54 - v16;
  v60 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRListColors.Color();
  v83 = *(v19 - 8);
  v84 = v19;
  __chkstk_darwin(v19);
  v85 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v56 = *(v86 - 8);
  v21 = v56;
  __chkstk_darwin(v86);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v54 - v25;
  v27 = sub_100058000(&qword_10076F6E0);
  v28 = v27 - 8;
  __chkstk_darwin(v27);
  v30 = &v54 - v29;
  v31 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  v59 = v31;
  v61 = *(v31 - 8);
  v32 = v61;
  __chkstk_darwin(v31);
  v34 = &v54 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100505A58(a1, v30);
  v35 = *v30;
  (*(v32 + 32))(v34, &v30[*(v28 + 56)], v31);
  v36 = v26;
  v55 = v26;
  v73(v35);
  v37 = REMRemindersListDataView.ListsModel.Sublist.listColor.getter();
  type metadata accessor for TTRListColors();
  v38 = v85;
  static TTRListColors.color(for:)();

  REMRemindersListDataView.ListsModel.Sublist.listName.getter();
  v39 = v83;
  v40 = v57;
  v41 = v38;
  v42 = v84;
  (*(v83 + 16))(v57, v41, v84);
  (*(v58 + 104))(v40, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle.listName(_:), v60);
  (*(v21 + 16))(v23, v36, v86);
  (*(v39 + 56))(v63, 1, 1, v42);
  (*(v67 + 104))(v65, enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:), v68);
  (*(v69 + 104))(v70, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:), v71);
  v43 = v62;
  TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
  v44 = REMRemindersListDataView.ListsModel.Sublist.listID.getter();
  v46 = v75;
  v45 = v76;
  *v75 = v44;
  (*(v45 + 104))(v46, enum case for TTRRemindersListViewModel.SectionID.objectID(_:), v78);
  v47 = v64;
  v48 = v81;
  v49 = v66;
  (*(v64 + 16))(v81, v43, v66);
  (*(v47 + 56))(v48, 0, 1, v49);
  v50 = v74;
  TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
  v52 = v79;
  v51 = v80;
  (*(v79 + 16))(v77, v50, v80);
  REMRemindersListDataView.ListsModel.Sublist.reminders.getter();
  TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
  (*(v52 + 8))(v50, v51);
  (*(v47 + 8))(v43, v49);
  (*(v83 + 8))(v85, v84);
  (*(v56 + 8))(v55, v86);
  return (*(v61 + 8))(v34, v59);
}

uint64_t sub_1005058A0(uint64_t a1, uint64_t a2)
{
  v5 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v2 + OBJC_IVAR____TtC9Reminders34TTRShowSearchResultViewModelSource_searchTerm);
  *v12 = a1;
  v12[1] = a2;

  sub_100503FF8(v11);
  (*(v9 + 16))(v7, v11, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_10056F540(v7);
  sub_1000079B4(v7, &unk_10078A380);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100505A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076F6E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100505AC8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100789F80);
  v1 = sub_100003E30(v0, qword_100789F80);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100505C14(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v8);
  v10 = (&v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*&v3[OBJC_IVAR____TtC9Reminders39TTRISearchResultContainerViewController_resultViewController])
  {
    if (qword_1007673F0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100789F80);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Search result view controller already exists in TTRISearchControllerResultViewController, will update the existing one instead", v14, 2u);
    }

    return sub_1005065C4(a1, a2, a3);
  }

  v70 = &v3[OBJC_IVAR____TtC9Reminders39TTRISearchResultContainerViewController_resultViewController];
  if (qword_1007673F0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003E30(v16, qword_100789F80);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v71 = a3;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v72 = a2;
    v22 = v21;
    v74[0] = v21;
    *v20 = 136315138;
    v23 = 1702195828;
    if ((a3 & 1) == 0)
    {
      v23 = 0x65736C6166;
    }

    v24 = 0xE500000000000000;
    if (a3)
    {
      v24 = 0xE400000000000000;
    }

    if (a3 == 2)
    {
      v25 = 7104878;
    }

    else
    {
      v25 = v23;
    }

    if (a3 == 2)
    {
      v26 = 0xE300000000000000;
    }

    else
    {
      v26 = v24;
    }

    v27 = sub_100004060(v25, v26, v74);

    *(v20 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "Creating search result view controller in TTRISearchControllerResultViewController {didFinalizeSearchQuery: %s}", v20, 0xCu);
    sub_100004758(v22);
    a2 = v72;
  }

  v28 = *sub_10000C36C(&v4[OBJC_IVAR____TtC9Reminders39TTRISearchResultContainerViewController_resultViewPresenter], *&v4[OBJC_IVAR____TtC9Reminders39TTRISearchResultContainerViewController_resultViewPresenter + 24]);
  swift_getObjectType();
  v29 = dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.store.getter();
  v30 = v8[5];
  v31 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v31 - 8) + 56))(v10 + v30, 1, 1, v31);
  v32 = *(v28 + 200);
  *v10 = v29;
  v33 = v8[6];
  v72 = *(v28 + 80);
  v34 = v72;
  *(v10 + v33) = v32;
  *(v10 + v8[7]) = v34;
  *(v10 + v8[8]) = 0;
  type metadata accessor for TTRIShowSearchResultAssembly();

  swift_unknownObjectRetain();
  v35 = sub_10037209C(v74, v10, a1, a2, v28, &off_100727BD8);
  v37 = v36;
  sub_100079664(v10);
  [v4 addChildViewController:v35];
  result = [v35 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_33;
  }

  v38 = result;
  result = [v4 view];
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v39 = result;
  [result addSubview:v38];

  [v35 didMoveToParentViewController:v4];
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100058000(&qword_10076B780);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_10062D450;
  result = [v4 view];
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v41 = result;
  v42 = [result topAnchor];

  v43 = [v38 topAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v40 + 32) = v44;
  result = [v4 view];
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v45 = result;
  v46 = [result bottomAnchor];

  v47 = [v38 bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v40 + 40) = v48;
  result = [v4 view];
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v49 = result;
  *&v72 = v37;
  v50 = [result leftAnchor];

  v51 = [v38 leftAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v40 + 48) = v52;
  result = [v4 view];
  if (!result)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v53 = result;
  v54 = objc_opt_self();
  v55 = [v53 rightAnchor];

  v56 = [v38 rightAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  *(v40 + 56) = v57;
  sub_100177300();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v54 activateConstraints:isa];

  v59 = *&v35[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
  v60 = *&v35[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8];
  ObjectType = swift_getObjectType();
  v62 = *(v60 + 40);
  v63 = v4;
  v64 = v59;
  v62(v4, ObjectType, v60);

  v65 = v71;
  if (v71 != 2)
  {
    *(*sub_10000C36C(v74, v74[3]) + OBJC_IVAR____TtC9Reminders29TTRIShowSearchResultPresenter_didFinalizeSearchQuery) = v65 & 1;
  }

  v66 = v70;
  v67 = *v70;
  v68 = v72;
  *v70 = v35;
  v66[1] = v68;

  sub_10000B0D8(v74, v73);
  v69 = OBJC_IVAR____TtC9Reminders39TTRISearchResultContainerViewController_resultModuleInterface;
  swift_beginAccess();
  sub_100506C74(v73, &v63[v69]);
  swift_endAccess();
  return sub_100004758(v74);
}

id sub_1005063DC()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC9Reminders39TTRISearchResultContainerViewController_resultViewController;
  if (*(v0 + OBJC_IVAR____TtC9Reminders39TTRISearchResultContainerViewController_resultViewController) || (v3 = OBJC_IVAR____TtC9Reminders39TTRISearchResultContainerViewController_resultModuleInterface, swift_beginAccess(), sub_100506B9C(v1 + v3, &v13), v4 = *(&v14 + 1), result = sub_100506C0C(&v13), v4))
  {
    if (qword_1007673F0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003E30(v6, qword_100789F80);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Disposing search result view controller in TTRISearchControllerResultViewController", v9, 2u);
    }

    if (!*v2)
    {
      goto LABEL_12;
    }

    [*v2 willMoveToParentViewController:0];
    if (!*v2)
    {
      goto LABEL_12;
    }

    result = [*v2 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    [result removeFromSuperview];

    if (*v2)
    {
      [*v2 removeFromParentViewController];
      v11 = *v2;
    }

    else
    {
LABEL_12:
      v11 = 0;
    }

    *v2 = 0;
    *(v2 + 8) = 0;

    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v12 = OBJC_IVAR____TtC9Reminders39TTRISearchResultContainerViewController_resultModuleInterface;
    swift_beginAccess();
    sub_100506C74(&v13, v1 + v12);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1005065C4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = OBJC_IVAR____TtC9Reminders39TTRISearchResultContainerViewController_resultModuleInterface;
  swift_beginAccess();
  sub_100506B9C(v3 + v7, &v24);
  if (!v25)
  {
    return sub_100506C0C(&v24);
  }

  sub_100005FD0(&v24, v26);
  if (qword_1007673F0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100789F80);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v24 = v12;
    *v11 = 136315138;
    v13 = 1702195828;
    if ((a3 & 1) == 0)
    {
      v13 = 0x65736C6166;
    }

    v14 = 0xE500000000000000;
    if (a3)
    {
      v14 = 0xE400000000000000;
    }

    if (a3 == 2)
    {
      v15 = 7104878;
    }

    else
    {
      v15 = v13;
    }

    if (a3 == 2)
    {
      v16 = 0xE300000000000000;
    }

    else
    {
      v16 = v14;
    }

    v17 = sub_100004060(v15, v16, &v24);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Updating search result view controller in TTRISearchControllerResultViewController {didFinalizeSearchQuery: %s}", v11, 0xCu);
    sub_100004758(v12);
  }

  sub_10000C36C(v26, v27);
  swift_getObjectType();
  v18 = dispatch thunk of TTRShowSearchResultDataModelSourceType.searchTerm.getter();
  if (!v19)
  {
    if (!a2)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  if (!a2)
  {

    goto LABEL_28;
  }

  if (v18 != a1 || v19 != a2)
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_32;
    }

LABEL_28:
    v23 = *(*sub_10000C36C(v26, v27) + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
      swift_unknownObjectRelease();
    }

    sub_1004EF1A4(v23);
    TTRRemindersListEditingSessionProviderCapability.flushPendingSaves()();
    swift_getObjectType();

    dispatch thunk of TTRShowSearchResultDataModelSourceType.searchTerm.setter();
    goto LABEL_32;
  }

LABEL_32:
  if (a3 != 2)
  {
    *(*sub_10000C36C(v26, v27) + OBJC_IVAR____TtC9Reminders29TTRIShowSearchResultPresenter_didFinalizeSearchQuery) = a3 & 1;
  }

  return sub_100004758(v26);
}

id sub_10050691C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRISearchResultContainerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100506A0C()
{
  v1 = [v0 presentingViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationItem];

    v8 = [v3 searchController];
    if (v8)
    {
      v4 = [v8 searchBar];
      v5 = [v4 isFirstResponder];

      if (v5)
      {
        v6 = OBJC_IVAR____TtC9Reminders39TTRISearchResultContainerViewController_resultModuleInterface;
        swift_beginAccess();
        sub_100506B9C(v0 + v6, v11);
        if (v12)
        {
          sub_10000B0D8(v11, v10);
          sub_100506C0C(v11);
          *(*sub_10000C36C(v10, v10[3]) + OBJC_IVAR____TtC9Reminders29TTRIShowSearchResultPresenter_didFinalizeSearchQuery) = 1;
          sub_100004758(v10);
        }

        else
        {
          sub_100506C0C(v11);
        }

        v7 = [v8 searchBar];
        [v7 resignFirstResponder];
      }

      else
      {
      }
    }
  }
}

uint64_t sub_100506B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100789FD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100506C0C(uint64_t a1)
{
  v2 = sub_100058000(&qword_100789FD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100506C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100789FD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100506CE4()
{
  sub_10003B788(v0 + 16);
  swift_unknownObjectRelease();
  sub_100004758(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t initializeWithCopy for TTRIBoardColumnSelectionRequest(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}