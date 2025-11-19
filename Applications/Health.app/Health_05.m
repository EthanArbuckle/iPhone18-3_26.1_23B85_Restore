uint64_t sub_10007DCF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE006574656C706DLL;
  v3 = a1;
  if (a1 <= 2u)
  {
    v10 = 0x80000001000A5160;
    v11 = 0xD000000000000026;
    if (a1 == 1)
    {
      v11 = 0xD000000000000023;
    }

    else
    {
      v10 = 0x80000001000A5190;
    }

    if (a1)
    {
      v8 = v11;
    }

    else
    {
      v8 = 0xD000000000000013;
    }

    if (v3)
    {
      v9 = v10;
    }

    else
    {
      v9 = 0x80000001000A5140;
    }
  }

  else
  {
    v4 = 0x80000001000A5230;
    v5 = 0xD000000000000017;
    if (a1 == 5)
    {
      v5 = 0x6F636E4920444545;
      v4 = 0xEE006574656C706DLL;
    }

    v6 = 0x80000001000A51C0;
    v7 = 0xD000000000000021;
    if (a1 == 3)
    {
      v7 = 0xD000000000000023;
    }

    else
    {
      v6 = 0x80000001000A51F0;
    }

    if (a1 <= 4u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v3 <= 4)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x80000001000A5140;
      if (v8 != 0xD000000000000013)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    if (a2 != 1)
    {
      v2 = 0x80000001000A5190;
      if (v8 != 0xD000000000000026)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    v12 = "Article Highlight Alert Read States";
    goto LABEL_29;
  }

  if (a2 <= 4u)
  {
    if (a2 != 3)
    {
      v2 = 0x80000001000A51F0;
      if (v8 != 0xD000000000000021)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    v12 = "Health Checklist Update Last Viewed";
LABEL_29:
    v2 = (v12 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000023)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (a2 == 5)
  {
    if (v8 != 0x6F636E4920444545)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v2 = 0x80000001000A5230;
    if (v8 != 0xD000000000000017)
    {
LABEL_43:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_44;
    }
  }

LABEL_41:
  if (v9 != v2)
  {
    goto LABEL_43;
  }

  v13 = 1;
LABEL_44:

  return v13 & 1;
}

uint64_t sub_10007DF1C(uint64_t a1, uint64_t a2)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_10008082C();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v8._object = 0x80000001000A9510;
    v8._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v8);
    v9._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for BuddyDataSource()
{
  result = qword_1000DD950;
  if (!qword_1000DD950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007E160()
{
  v113 = type metadata accessor for SectionedDataSourceContainerViewType();
  v122 = *(v113 - 8);
  v1 = v122[8];
  __chkstk_darwin(v113);
  v112 = &v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100080888(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v111 = &v82 - v5;
  v110 = type metadata accessor for CellDeselectionBehavior();
  v121 = *(v110 - 8);
  v6 = *(v121 + 64);
  __chkstk_darwin(v110);
  v109 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100080888(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v94 = &v82 - v10;
  v93 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v120 = *(v93 - 8);
  v11 = *(v120 + 64);
  __chkstk_darwin(v93);
  v92 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for UICellAccessory.DisplayedState();
  v119 = *(v91 - 8);
  v13 = *(v119 + 64);
  __chkstk_darwin(v91);
  v90 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for UIListContentConfiguration();
  v103 = *(v108 - 8);
  v15 = *(v103 + 64);
  __chkstk_darwin(v108);
  v107 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for ContentConfigurationItem();
  v116 = *(v106 - 8);
  v17 = *(v116 + 64);
  __chkstk_darwin(v106);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v104 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v82 - v25;
  *(v0 + qword_1000DD948) = 0;
  v123[0] = 0;
  v123[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v123, "MutableArray<");
  HIWORD(v123[1]) = -4864;
  UUID.init()();
  v27 = UUID.uuidString.getter();
  v29 = v28;
  v30 = *(v21 + 8);
  v83 = v26;
  v117 = v21 + 8;
  v118 = v20;
  v115 = v30;
  v30(v26, v20);
  v31._countAndFlagsBits = v27;
  v31._object = v29;
  String.append(_:)(v31);

  v32._countAndFlagsBits = 62;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  v33 = MutableArrayDataSource.init(arrangedSections:identifier:)();
  v124 = _swiftEmptyArrayStorage;
  v114 = v33;

  sub_10007C53C(0, 6, 0);
  v34 = 0;
  v35 = v124;
  v36 = 0x80000001000A9550;
  v37 = 0x80000001000A9570;
  v96 = 0x80000001000A9590;
  v102 = (v103 + 32);
  v89 = enum case for UICellAccessory.DisplayedState.always(_:);
  v88 = (v119 + 104);
  v87 = (v120 + 8);
  v86 = (v119 + 8);
  v85 = enum case for CellDeselectionBehavior.default(_:);
  v101 = (v121 + 104);
  v84 = enum case for CellDeselectionBehavior.deselectOnDidSelect(_:);
  v100 = enum case for SectionedDataSourceContainerViewType.collectionView(_:);
  v99 = (v122 + 13);
  v98 = v116 + 32;
  v95 = xmmword_1000AE100;
  v119 = 0x80000001000A9550;
  v103 = 0x80000001000A9570;
  v105 = v19;
  do
  {
    v38 = *(&off_1000CC1E0 + v34 + 32);
    v122 = v35;
    if (v38 > 2)
    {
      v121 = v34;
      v40 = v36;
      v41 = v37;
      v39 = v96;
    }

    else
    {
      if (!v38)
      {
        v47 = 0xE500000000000000;

        v48 = 0;
        goto LABEL_31;
      }

      v121 = v34;
      v39 = v96;
      v40 = v119;
      v41 = v37;
    }

    LODWORD(v120) = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v38 == 4)
    {
      v42 = v40;
    }

    else
    {
      v42 = 0xEE00797465666153;
    }

    if (v38 == 3)
    {
      v42 = v41;
    }

    if (v38 == 1)
    {
      v43 = 0xEF676E6972616853;
    }

    else
    {
      v43 = v39;
    }

    if (v38 <= 2)
    {
      v42 = v43;
    }

    if (v38 == 4)
    {
      v44 = v40;
    }

    else
    {
      v44 = 0xEE00797465666153;
    }

    if (v38 == 3)
    {
      v45 = v41;
    }

    else
    {
      v45 = v44;
    }

    if (v38 == 1)
    {
      v46 = 0xEF676E6972616853;
    }

    else
    {
      v46 = v39;
    }

    if (v38 <= 2)
    {
      v45 = v46;
    }

    if (v120)
    {
      v47 = v45;
    }

    else
    {
      v47 = v42;
    }

    v48 = (v120 & 1) == 0;
    v34 = v121;
LABEL_31:
    v49 = swift_allocObject();
    swift_weakInit();
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    *(v50 + 24) = v38;

    v51 = v104;
    UUID.init()();
    v52 = UUID.uuidString.getter();
    v120 = v53;
    v121 = v52;
    v115(v51, v118);
    v54 = v107;
    static UIListContentConfiguration.cell()();
    sub_100080878();
    UIListContentConfiguration.text.setter();
    v55 = objc_opt_self();
    if (v48)
    {
      v56 = [v55 tintColor];
      v57 = UIListContentConfiguration.textProperties.modify();
      UIListContentConfiguration.TextProperties.color.setter();
      v57(v123, 0);
    }

    else
    {
      v58 = [v55 labelColor];
      v59 = UIListContentConfiguration.textProperties.modify();
      UIListContentConfiguration.TextProperties.color.setter();
      v59(v123, 0);
    }

    v60 = v108;
    v123[3] = v108;
    v123[4] = &protocol witness table for UIListContentConfiguration;
    v61 = sub_10000AD4C(v123);
    (*v102)(v61, v54, v60);
    if (v48)
    {
      sub_100080880();
      v62 = v109;
      *v109 = 1;
      v63 = v84;
    }

    else
    {
      sub_100080888(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
      v64 = *(type metadata accessor for UICellAccessory() - 8);
      v65 = *(v64 + 72);
      v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      *(swift_allocObject() + 16) = v95;
      v67 = *v88;
      v68 = v90;
      v97 = v47;
      v69 = v91;
      v67(v90, v89, v91);
      v70 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v70 - 8) + 56))(v94, 1, 1, v70);
      v71 = v92;
      UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
      static UICellAccessory.disclosureIndicator(displayed:options:)();
      (*v87)(v71, v93);
      (*v86)(v68, v69);
      sub_100080880();
      v63 = v85;
      v62 = v109;
    }

    v72 = v105;
    (*v101)(v62, v63, v110);
    v73 = type metadata accessor for UIBackgroundConfiguration();
    (*(*(v73 - 8) + 56))(v111, 1, 1, v73);
    (*v99)(v112, v100, v113);
    ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();

    v35 = v122;
    v124 = v122;
    v75 = v122[2];
    v74 = v122[3];
    if (v75 >= v74 >> 1)
    {
      sub_10007C53C(v74 > 1, v75 + 1, 1);
      v35 = v124;
    }

    ++v34;
    *(v35 + 16) = v75 + 1;
    (*(v116 + 32))(v35 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v75, v72, v106);
    v36 = v119;
    v37 = v103;
  }

  while (v34 != 6);
  sub_100080888(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v76 = *(type metadata accessor for ArrayDataSourceSection() - 8);
  v77 = *(v76 + 72);
  v78 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  *(swift_allocObject() + 16) = v95;
  sub_10009C004(v35);

  v79 = v83;
  UUID.init()();
  UUID.uuidString.getter();
  v115(v79, v118);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v80 = v114;
  dispatch thunk of MutableArrayDataSource.replaceAllSections(with:reconfigureOrReloadExistingItems:)();

  return v80;
}

uint64_t sub_10007F0A4(void *a1, uint64_t a2, unsigned __int8 a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10007F118(a3, a1);
  }

  return result;
}

void sub_10007F118(unsigned __int8 a1, id a2)
{
  if (a1 > 2u)
  {
    if (a1 == 4)
    {
      v6 = type metadata accessor for MainActor();
      __chkstk_darwin(v6);
      v12[2] = a2;
      sub_10007DF1C(sub_100080810, v12);
    }

    else
    {
      v11 = objc_opt_self();

      [v11 presentInViewController:a2 completion:0];
    }
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v4 = UIViewController.resolvedHealthStore.getter();
        if (v4)
        {
          v5 = v4;
          UIViewController.resolvedHealthExperienceStore.getter();
          v14 = v2;
          type metadata accessor for BuddyDataSource();
          sub_100080714(&qword_1000DD9C8, type metadata accessor for BuddyDataSource);
          SummarySharingOnboardingPresenting.presentOnboardingVC(on:healthStore:healthExperienceStore:isInfoTile:needsOnboardingSetup:isPresentedViaLink:)();

          sub_100003B90(v15);
          return;
        }

        goto LABEL_21;
      }

      v10 = [a2 view];
      if (!v10)
      {
        __break(1u);
LABEL_21:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      v13 = v10;
      sub_10007F474(v10, a2);
    }

    else
    {
      v7 = [a2 navigationController];
      if (!v7)
      {
        return;
      }

      v8 = v7;
      v15[3] = type metadata accessor for StubbedDeepLinkCanceler();
      v15[4] = &off_1000D0008;
      v15[0] = swift_allocObject();
      v9 = objc_allocWithZone(type metadata accessor for WelcomeViewController());
      v13 = sub_10006F2C4(v15);
      [v8 pushViewController:v13 animated:1];
    }
  }
}

uint64_t sub_10007F3F0(void *a1)
{
  type metadata accessor for ImprovementDataCollectionOptInViewController();
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  static ImprovementDataCollectionOptInViewController.present(in:completion:)();
}

void sub_10007F474(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = [objc_allocWithZone(HKHealthStore) init];
  v8 = [objc_allocWithZone(HKSharedSummaryCloudSyncManager) initWithHealthStore:v7];

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v6;
  v13[4] = sub_1000807A4;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100080330;
  v13[3] = &unk_1000D0040;
  v10 = _Block_copy(v13);
  v11 = a1;
  v12 = a2;

  [v8 fetchAccountInfoWithCompletion:v10];
  _Block_release(v10);
}

uint64_t sub_10007F5CC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v101 = a5;
  v96 = a3;
  v100 = type metadata accessor for DispatchWorkItemFlags();
  v99 = *(v100 - 8);
  v8 = *(v99 + 64);
  __chkstk_darwin(v100);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v98 = *(v11 - 8);
  v12 = *(v98 + 64);
  __chkstk_darwin(v11);
  v97 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100080888(0, &qword_1000DC800, &type metadata accessor for URL, &type metadata accessor for Optional);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v102 = &v92 - v16;
  v111 = type metadata accessor for URL();
  v106 = *(v111 - 8);
  v17 = *(v106 + 64);
  v18 = __chkstk_darwin(v111);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v105 = &v92 - v21;
  sub_100080888(0, &qword_1000DD9B8, &type metadata accessor for ContactDeepLinkingParameter, &type metadata accessor for Optional);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v92 - v24;
  v26 = type metadata accessor for SharingInviteFlowURLData();
  v103 = *(v26 - 8);
  v104 = v26;
  v27 = *(v103 + 64);
  __chkstk_darwin(v26);
  v108 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ContactDeepLinkingParameter();
  v109 = *(v29 - 8);
  v110 = v29;
  v30 = *(v109 + 64);
  __chkstk_darwin(v29);
  v107 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Logger();
  v112 = *(v32 - 1);
  v113 = v32;
  v33 = *(v112 + 64);
  v34 = __chkstk_darwin(v32);
  v36 = &v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v92 - v37;
  if (a1)
  {
    v92 = v20;
    v39 = a1;
    static Logger.general.getter();
    v40 = v39;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    v43 = os_log_type_enabled(v41, v42);
    v44 = &off_1000D7000;
    v95 = v11;
    v94 = v10;
    v93 = a4;
    if (v43)
    {
      v45 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v45 = 136315394;
      v46 = _typeName(_:qualified:)();
      v48 = sub_1000036D0(v46, v47, aBlock);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2080;
      v49 = [v40 emailAddress];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = sub_1000036D0(v50, v52, aBlock);

      *(v45 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v41, v42, "[%s] Fetched cloudSyncAccountInfo identifier: %s", v45, 0x16u);
      swift_arrayDestroy();
      v44 = &off_1000D7000;
    }

    (*(v112 + 8))(v38, v113);
    v54 = v107;
    v55 = [v40 v44[504]];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    ContactDeepLinkingParameter.init(value:)();
    v57 = v109;
    v56 = v110;
    (*(v109 + 16))(v25, v54, v110);
    (*(v57 + 56))(v25, 0, 1, v56);
    v58 = v108;
    SharingInviteFlowURLData.init(contactData:)();
    v59 = v102;
    SharingInviteFlowURLData.url()();
    v60 = v106;
    v61 = v111;
    if ((*(v106 + 48))(v59, 1, v111) == 1)
    {

      (*(v103 + 8))(v58, v104);
      (*(v57 + 8))(v54, v56);
      return sub_10005A320(v59);
    }

    else
    {
      v72 = v105;
      (*(v60 + 32))(v105, v59, v61);
      v73 = v61;
      v74 = String._bridgeToObjectiveC()();
      v75 = [objc_opt_self() bundleWithIdentifier:v74];

      v76 = String._bridgeToObjectiveC()();
      v77 = [objc_opt_self() imageNamed:v76 inBundle:v75];

      (*(v60 + 16))(v92, v72, v73);
      v113 = v77;
      static String.defaultURLProviderSubtitle.getter();
      v78 = objc_allocWithZone(type metadata accessor for HealthURLActivityItemProvider());
      v79 = HealthURLActivityItemProvider.init(title:url:image:thumbnailImage:subtitle:)();
      sub_10002C1C4();
      v80 = static OS_dispatch_queue.main.getter();
      v81 = swift_allocObject();
      v82 = v96;
      v81[2] = v79;
      v81[3] = v82;
      v83 = v93;
      v81[4] = v93;
      aBlock[4] = sub_1000807B0;
      aBlock[5] = v81;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100008310;
      aBlock[3] = &unk_1000D0090;
      v84 = _Block_copy(aBlock);
      v85 = v79;
      v86 = v82;
      v87 = v83;

      v88 = v40;
      v89 = v97;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100080714(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
      sub_100080888(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
      sub_100028B74();
      v90 = v94;
      v91 = v100;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v84);

      (*(v99 + 8))(v90, v91);
      (*(v98 + 8))(v89, v95);
      (*(v60 + 8))(v105, v111);
      (*(v103 + 8))(v108, v104);
      return (*(v109 + 8))(v107, v110);
    }
  }

  else
  {
    static Logger.general.getter();
    swift_errorRetain();
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v65 = 136315394;
      v66 = _typeName(_:qualified:)();
      v68 = sub_1000036D0(v66, v67, aBlock);

      *(v65 + 4) = v68;
      *(v65 + 12) = 2080;
      aBlock[6] = a2;
      swift_errorRetain();
      sub_100080888(0, &qword_1000DD580, sub_100008C14, &type metadata accessor for Optional);
      v69 = String.init<A>(reflecting:)();
      v71 = sub_1000036D0(v69, v70, aBlock);

      *(v65 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v63, v64, "[%s] No cloudSyncAccountInfo was fetched: %s", v65, 0x16u);
      swift_arrayDestroy();
    }

    return (*(v112 + 8))(v36, v113);
  }
}

void sub_1000801D4(void *a1, uint64_t a2, void *a3)
{
  sub_1000807BC();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000AE100;
  *(v6 + 56) = type metadata accessor for HealthURLActivityItemProvider();
  *(v6 + 32) = a1;
  v7 = objc_allocWithZone(UIActivityViewController);
  v8 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v7 initWithActivityItems:isa applicationActivities:0];

  v10 = [v12 popoverPresentationController];
  if (v10)
  {
    v11 = v10;
    [v10 setSourceView:a2];
  }

  [a3 presentViewController:v12 animated:1 completion:0];
}

void sub_100080330(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1000803CC()
{
  v0 = *(MutableArrayDataSource.deinit() + qword_1000DD948);

  return swift_deallocClassInstance();
}

uint64_t sub_100080424@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for SummarySharingSetupAnalyticsBaseEvent.OnboardingLocation.summaryTab(_:);
  v3 = type metadata accessor for SummarySharingSetupAnalyticsBaseEvent.OnboardingLocation();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100080498()
{
  v1 = *v0;
  v2 = qword_1000DD948;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1000804E4(uint64_t a1)
{
  v3 = *v1;
  v4 = qword_1000DD948;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = a1;
}

uint64_t (*sub_100080540())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_1000805B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_getWitnessTable();
  return sub_1000290CC(a1);
}

uint64_t sub_100080630(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return sub_1000290E4(a1, a2, WitnessTable);
}

uint64_t sub_100080690(uint64_t a1)
{
  *(a1 + 8) = sub_100080714(&qword_1000DD9A0, type metadata accessor for BuddyDataSource);
  result = sub_100080714(&qword_1000DD9A8, type metadata accessor for BuddyDataSource);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_100080714(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000807BC()
{
  if (!qword_1000DD9C0)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DD9C0);
    }
  }
}

uint64_t sub_10008082C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_100080888(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10008095C()
{
  v0 = type metadata accessor for LayoutConfiguration();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LayoutConfiguration.card.getter();
  v5 = LayoutConfiguration.layoutSection.getter();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_100080A38@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  ForYouSectionKind.localizedTitle.getter();
  static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
  v4 = type metadata accessor for HeaderItem();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)();
  a1[3] = v4;
  result = sub_100013D4C(&qword_1000DAE78, &type metadata accessor for HeaderItem);
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t type metadata accessor for InternalNotificationsDataSource()
{
  result = qword_1000DDA20;
  if (!qword_1000DDA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100080BE4()
{
  v0 = type metadata accessor for SectionedDataSourceContainerViewType();
  v66 = *(v0 - 8);
  v67 = v0;
  v1 = *(v66 + 64);
  __chkstk_darwin(v0);
  v65 = v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006AE8C(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v64 = v54 - v5;
  v59 = type metadata accessor for CellDeselectionBehavior();
  v58 = *(v59 - 8);
  v6 = *(v58 + 64);
  __chkstk_darwin(v59);
  v57 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006AE8C(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v54 - v10;
  v56 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v55 = *(v56 - 8);
  v12 = *(v55 + 64);
  __chkstk_darwin(v56);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UICellAccessory.DisplayedState();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UUID();
  v60 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for ContentConfigurationItem();
  v63 = *(v70 - 8);
  v25 = *(v63 + 64);
  __chkstk_darwin(v70);
  v69 = v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v54[1] = UUID.uuidString.getter();
  v54[0] = v27;
  v28 = *(v21 + 8);
  v61 = v21 + 8;
  v62 = v28;
  v28(v24, v20);
  v72[3] = type metadata accessor for UIListContentConfiguration();
  v72[4] = &protocol witness table for UIListContentConfiguration;
  sub_10000AD4C(v72);
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.text.setter();
  v29 = [objc_opt_self() labelColor];
  v30 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v30(v71, 0);
  sub_10006AE8C(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
  v31 = *(type metadata accessor for UICellAccessory() - 8);
  v32 = *(v31 + 72);
  v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v34 = swift_allocObject();
  v68 = xmmword_1000AE100;
  *(v34 + 16) = xmmword_1000AE100;
  (*(v16 + 104))(v19, enum case for UICellAccessory.DisplayedState.always(_:), v15);
  v35 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v35 - 8) + 56))(v11, 1, 1, v35);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v55 + 8))(v14, v56);
  (*(v16 + 8))(v19, v15);
  (*(v58 + 104))(v57, enum case for CellDeselectionBehavior.default(_:), v59);
  v36 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v36 - 8) + 56))(v64, 1, 1, v36);
  (*(v66 + 104))(v65, enum case for SectionedDataSourceContainerViewType.collectionView(_:), v67);
  v37 = v69;
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
  sub_10006AE8C(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v38 = *(type metadata accessor for ArrayDataSourceSection() - 8);
  v39 = *(v38 + 72);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  *(swift_allocObject() + 16) = v68;
  sub_10006AE8C(0, &qword_1000DAC00, sub_1000199DC, &type metadata accessor for _ContiguousArrayStorage);
  v41 = swift_allocObject();
  *(v41 + 16) = v68;
  v42 = v70;
  *(v41 + 56) = v70;
  *(v41 + 64) = sub_100081844(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem);
  v43 = sub_10000AD4C((v41 + 32));
  v44 = v63;
  (*(v63 + 16))(v43, v37, v42);
  UUID.init()();
  UUID.uuidString.getter();
  v45 = v60;
  v46 = v62;
  v62(v24, v60);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v72[0] = 0x3C53447961727241;
  v72[1] = 0xE800000000000000;
  UUID.init()();
  v47 = UUID.uuidString.getter();
  v49 = v48;
  v46(v24, v45);
  v50._countAndFlagsBits = v47;
  v50._object = v49;
  String.append(_:)(v50);

  v51._countAndFlagsBits = 62;
  v51._object = 0xE100000000000000;
  String.append(_:)(v51);
  v52 = ArrayDataSource.init(arrangedSections:identifier:)();
  (*(v44 + 8))(v69, v70);
  return v52;
}

void sub_100081594(void *a1)
{
  v2 = UIViewController.resolvedHealthStore.getter();
  sub_10006593C(v2, v16);
  v13 = v16[4];
  v14 = v16[5];
  v15 = v17;
  v9 = v16[0];
  v10 = v16[1];
  v11 = v16[2];
  v12 = v16[3];
  sub_10008188C();
  v4 = objc_allocWithZone(v3);
  sub_100066620(v16, v8);
  v5 = UIHostingController.init(rootView:)();
  v6 = [a1 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 pushViewController:v5 animated:1];
    sub_10008193C(v16);
  }

  else
  {
    sub_10008193C(v16);
  }
}

unint64_t sub_1000816E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_getWitnessTable();
  return sub_100029354(a1);
}

uint64_t sub_100081760(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return sub_1000290E4(a1, a2, WitnessTable);
}

uint64_t sub_1000817C0(uint64_t a1)
{
  *(a1 + 8) = sub_100081844(&qword_1000DDA70, type metadata accessor for InternalNotificationsDataSource);
  result = sub_100081844(&qword_1000DDA78, type metadata accessor for InternalNotificationsDataSource);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_100081844(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10008188C()
{
  if (!qword_1000DDA80)
  {
    sub_1000818E8();
    v0 = type metadata accessor for UIHostingController();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DDA80);
    }
  }
}

unint64_t sub_1000818E8()
{
  result = qword_1000DDA88;
  if (!qword_1000DDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDA88);
  }

  return result;
}

uint64_t sub_100081990(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10000ACE8(a1, v18);
  v6 = [objc_opt_self() primaryProfile];
  v7 = objc_allocWithZone(type metadata accessor for PersonalizedFeedDataSource());
  v7[qword_1000DC598] = 0;
  sub_10000BFFC(v18, v18[3]);
  v8 = dispatch thunk of HealthExperienceStore.viewContext.getter();
  v9 = NSManagedObjectContext.makeFeedItemsFetchedResultsController(for:associatedProfileIdentifier:)();

  isa = [v9 fetchRequest];
  v11 = [(objc_class *)isa relationshipKeyPathsForPrefetching];
  if (v11)
  {
    v12 = v11;
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100061574(a4);
    if (v13)
    {
      v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v14.super.isa = 0;
    }

    [(objc_class *)isa setRelationshipKeyPathsForPrefetching:v14.super.isa, v13];

    isa = v14.super.isa;
  }

  else
  {
    [(objc_class *)isa setRelationshipKeyPathsForPrefetching:0];
  }

  *&v7[qword_1000DC590] = a2;
  v15 = a2;
  v16 = FetchedResultsControllerDataSource.init(_:)();

  sub_100003B90(v18);
  return v16;
}

uint64_t sub_100081B50(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000827D8(a1, 0, 0);
  }

  return result;
}

uint64_t sub_100081BB8()
{
  v1 = type metadata accessor for SectionedDataSourceCardStackConfiguration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = *(v0 + qword_1000DDAD0);
  if (v6)
  {
    v7 = [v6 viewController];
  }

  else
  {
    v7 = 0;
  }

  sub_10000ACE8(v0 + qword_1000DDAD8, v13);
  v8 = [*(v0 + qword_1000DDAE0) profileIdentifier];
  v9 = objc_allocWithZone(type metadata accessor for NoticesDataSource());
  v10 = NoticesDataSource.init(healthExperienceStore:associatedProfileIdentifier:)();
  sub_100012EDC();
  static SectionedDataSourceCardStackConfiguration.alertsStack(with:)();
  type metadata accessor for SummaryFeedDataSource(0);
  SnapshotDataSource.presentCardStackOriginalDataSource(viewController:dataSource:config:)();

  return (*(v2 + 8))(v5, v1);
}

void sub_100081D60(char a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  sub_100012248(0, &qword_1000DDBB8, &type metadata accessor for SummaryFeedTrendsSectionDataSource, sub_1000127B0, &type metadata accessor for HideableDataSource.Visibility);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v9);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = aBlock - v16;
  sub_100012248(0, &qword_1000DDBC8, sub_1000122C8, sub_10001277C, &type metadata accessor for HideableDataSource.Visibility);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  if (a1)
  {
    v22 = objc_allocWithZone(type metadata accessor for DeleteFeedOperation());
    v23 = DeleteFeedOperation.init(feedKinds:)();
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = a2;
    v25[4] = a3;
    v25[5] = v8;
    aBlock[4] = sub_10008445C;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008310;
    aBlock[3] = &unk_1000D01C8;
    v26 = _Block_copy(aBlock);

    sub_10001EC44(a2);
    sub_10001EC44(sub_10008445C);

    [v23 setCompletionBlock:v26];
    _Block_release(v26);

    sub_100003DDC(0, &qword_1000DBC38, NSOperationQueue_ptr);
    v27 = static NSOperationQueue.userInitiated.getter();
    [v27 addOperation:v23];
  }

  else
  {
    v28 = *(v4 + qword_1000E3F28);
    v29 = enum case for HideableDataSource.Visibility.visible<A>(_:);
    (*(v21 + 104))(aBlock - v20, enum case for HideableDataSource.Visibility.visible<A>(_:));
    dispatch thunk of HideableDataSource.visibility.setter();
    (*(v11 + 104))(v17, v29, v10);
    if (HAFeatureFlagShowTrendsInSummary())
    {
      v30 = *(v4 + qword_1000DDAB0);
      (*(v11 + 16))(v15, v17, v10);
      dispatch thunk of HideableDataSource.visibility.setter();
    }

    (*(v11 + 8))(v17, v10);
    v31 = qword_1000DDAD8;
    v32 = [*(v4 + qword_1000DDAE0) profileIdentifier];
    sub_100083F88((v4 + v31), v32);

    if (a2)
    {
      a2();
    }
  }
}

uint64_t sub_1000821C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v20);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  aBlock[4] = sub_1000844B0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000D0218;
  v18 = _Block_copy(aBlock);

  sub_10001EC44(a2);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100012734(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_100010760(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v21 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v20);
}

uint64_t sub_1000824D0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v28 = a3;
  sub_100012248(0, &qword_1000DDBB8, &type metadata accessor for SummaryFeedTrendsSectionDataSource, sub_1000127B0, &type metadata accessor for HideableDataSource.Visibility);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v4);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  sub_100012248(0, &qword_1000DDBC8, sub_1000122C8, sub_10001277C, &type metadata accessor for HideableDataSource.Visibility);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  v18 = &v26 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    v27 = a2;
    v21 = *(result + qword_1000E3F28);
    v22 = enum case for HideableDataSource.Visibility.visible<A>(_:);
    (*(v15 + 104))(v18, enum case for HideableDataSource.Visibility.visible<A>(_:), v14);
    dispatch thunk of HideableDataSource.visibility.setter();
    (*(v6 + 104))(v12, v22, v5);
    if (HAFeatureFlagShowTrendsInSummary())
    {
      v23 = *(v20 + qword_1000DDAB0);
      (*(v6 + 16))(v10, v12, v5);
      dispatch thunk of HideableDataSource.visibility.setter();
    }

    (*(v6 + 8))(v12, v5);
    v24 = qword_1000DDAD8;
    v25 = [*(v20 + qword_1000DDAE0) profileIdentifier];
    sub_100083F88((v20 + v24), v25);

    if (v27)
    {
      v27();
    }
  }

  return result;
}

uint64_t sub_1000827D8(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v75 = a3;
  v78 = a2;
  sub_100012248(0, &qword_1000DDBB8, &type metadata accessor for SummaryFeedTrendsSectionDataSource, sub_1000127B0, &type metadata accessor for HideableDataSource.Visibility);
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  v7 = __chkstk_darwin(v5);
  v61 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v67 = &v60 - v9;
  sub_100012248(0, &qword_1000DDBC8, sub_1000122C8, sub_10001277C, &type metadata accessor for HideableDataSource.Visibility);
  v66 = v10;
  v65 = *(v10 - 8);
  v11 = *(v65 + 64);
  __chkstk_darwin(v10);
  v64 = &v60 - v12;
  sub_10001DAC4();
  v71 = v13;
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v73 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CloudSyncRestoreState();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v60 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v60 - v21;
  sub_100010760(0, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v63 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v72 = &v60 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v60 - v30;
  __chkstk_darwin(v29);
  v33 = &v60 - v32;
  sub_10008312C(a1);
  v34 = qword_1000DDA98;
  swift_beginAccess();
  v76 = v33;
  sub_10001868C(v3 + v34, v33, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
  (*(v17 + 16))(v31, a1, v16);
  v35 = 1;
  v70 = *(v17 + 56);
  v70(v31, 0, 1, v16);
  swift_beginAccess();
  v77 = v3;
  sub_10001877C(v31, v3 + v34, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
  swift_endAccess();
  v36 = v17;
  v37 = *(v17 + 104);
  v37(v22, enum case for CloudSyncRestoreState.completed(_:), v16);
  sub_100012734(&qword_1000DDBB0, &type metadata accessor for CloudSyncRestoreState);
  v74 = a1;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v81 != v79 || v82 != v80)
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v62 = *(v36 + 8);
  v62(v22, v16);

  v38 = v76;
  if (v35)
  {
    v39 = v72;
    v37(v72, enum case for CloudSyncRestoreState.activelyRestoring(_:), v16);
    v70(v39, 0, 1, v16);
    v40 = *(v71 + 48);
    v41 = v73;
    sub_10001868C(v38, v73, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
    sub_10001868C(v39, v41 + v40, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
    v42 = *(v36 + 48);
    if (v42(v41, 1, v16) == 1)
    {
      sub_10001870C(v39, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
      if (v42(v41 + v40, 1, v16) == 1)
      {
        sub_10001870C(v41, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
LABEL_18:
        v53 = 1;
        goto LABEL_19;
      }

      goto LABEL_10;
    }

    v43 = v63;
    sub_10001868C(v41, v63, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
    if (v42(v41 + v40, 1, v16) == 1)
    {
      sub_10001870C(v39, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
      v62(v43, v16);
LABEL_10:
      sub_100024650(v41);
      goto LABEL_11;
    }

    v54 = v41 + v40;
    v55 = v60;
    (*(v36 + 32))(v60, v54, v16);
    sub_100012734(&qword_1000DAAE8, &type metadata accessor for CloudSyncRestoreState);
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    v57 = v55;
    v58 = v62;
    v62(v57, v16);
    sub_10001870C(v39, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
    v58(v43, v16);
    sub_10001870C(v41, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
    if (v56)
    {
      goto LABEL_18;
    }
  }

LABEL_11:
  if ((CloudSyncRestoreState.isOngoing.getter() & 1) == 0)
  {
    v53 = 0;
LABEL_19:
    sub_100081D60(v53, v78, v75);
    return sub_10001870C(v38, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
  }

  v44 = v77;
  v45 = *(v77 + qword_1000E3F28);
  v46 = enum case for HideableDataSource.Visibility.hidden<A>(_:);
  (*(v65 + 104))(v64, enum case for HideableDataSource.Visibility.hidden<A>(_:), v66);
  dispatch thunk of HideableDataSource.visibility.setter();
  v48 = v67;
  v47 = v68;
  v49 = v46;
  v50 = v69;
  (*(v68 + 104))(v67, v49, v69);
  if (HAFeatureFlagShowTrendsInSummary())
  {
    v51 = *(v44 + qword_1000DDAB0);
    (*(v47 + 16))(v61, v48, v50);
    dispatch thunk of HideableDataSource.visibility.setter();
  }

  v52 = (*(v47 + 8))(v48, v50);
  if (v78)
  {
    (v78)(v52);
  }

  return sub_10001870C(v38, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
}

uint64_t sub_10008312C(uint64_t a1)
{
  v2 = v1;
  v45 = a1;
  v3 = type metadata accessor for Logger();
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  __chkstk_darwin(v3);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010760(0, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for CloudSyncRestoreState();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v42 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - v16;
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = qword_1000DDA98;
  swift_beginAccess();
  v44 = v2;
  sub_10001868C(v2 + v20, v9, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10001870C(v9, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
LABEL_12:
    v28 = CloudSyncRestoreState.isOngoing.getter();
    v29 = *(*(v44 + qword_1000E3F20) + qword_1000DB9D0);

    dispatch thunk of PrimarySecondaryDataSource.primaryDataSource.getter();

    if (v28)
    {
      dispatch thunk of DownloadingPinningDataSource.showDownloadingItem()();
    }

    else
    {
      dispatch thunk of DownloadingPinningDataSource.hideDownloadingItem()();
    }
  }

  v39 = v3;
  (*(v11 + 32))(v19, v9, v10);
  v21 = enum case for CloudSyncRestoreState.activelyRestoring(_:);
  v38 = *(v11 + 104);
  v38(v17, enum case for CloudSyncRestoreState.activelyRestoring(_:), v10);
  sub_100012734(&qword_1000DDBB0, &type metadata accessor for CloudSyncRestoreState);
  v40 = v19;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v48 == v46 && v49 == v47)
  {
    v22 = 1;
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v23 = *(v11 + 8);
  v23(v17, v10);

  if ((v22 & 1) == 0)
  {
    goto LABEL_11;
  }

  v24 = v42;
  v38(v42, v21, v10);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v48 != v46 || v49 != v47)
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v23(v24, v10);

    v25 = v39;
    v26 = v40;
    v27 = v43;
    if (v31)
    {
      goto LABEL_17;
    }

LABEL_11:
    v23(v40, v10);
    goto LABEL_12;
  }

  v23(v24, v10);

  v25 = v39;
  v26 = v40;
  v27 = v43;
LABEL_17:
  v32 = v23;
  v33 = v41;
  static Logger.view.getter();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Our previous cloud sync state is inProgress. Skipping notifying delegate.", v36, 2u);
  }

  (*(v27 + 8))(v33, v25);
  return v32(v26, v10);
}

uint64_t sub_100083708()
{
  sub_10001870C(v0 + qword_1000DDA90, qword_1000DB4A0, sub_10001093C);
  sub_10001870C(v0 + qword_1000DDA98, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);

  v1 = *(v0 + qword_1000DDAA8);
  swift_unknownObjectRelease();
  v2 = *(v0 + qword_1000E3F20);

  v3 = *(v0 + qword_1000DDAB0);

  v4 = *(v0 + qword_1000E3F28);

  v5 = *(v0 + qword_1000DDAB8);

  v6 = *(v0 + qword_1000DDAC0);

  v7 = *(v0 + qword_1000DDAC8);

  sub_100003B90((v0 + qword_1000DDAD8));
  v8 = *(v0 + qword_1000DDAE8);
}

uint64_t sub_100083840()
{
  v0 = CompoundSectionedDataSource.deinit();
  sub_10001870C(v0 + qword_1000DDA90, qword_1000DB4A0, sub_10001093C);
  sub_10001870C(v0 + qword_1000DDA98, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);

  v1 = *(v0 + qword_1000DDAA8);
  swift_unknownObjectRelease();
  v2 = *(v0 + qword_1000E3F20);

  v3 = *(v0 + qword_1000DDAB0);

  v4 = *(v0 + qword_1000E3F28);

  v5 = *(v0 + qword_1000DDAB8);

  v6 = *(v0 + qword_1000DDAC0);

  v7 = *(v0 + qword_1000DDAC8);

  sub_100003B90((v0 + qword_1000DDAD8));
  v8 = *(v0 + qword_1000DDAE8);

  return v0;
}

uint64_t sub_100083980()
{
  v0 = *sub_100083840();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

BOOL sub_1000839DC()
{
  v0 = JustObservingFetchedResultsControllerDataSource.frc.getter();
  v1 = [v0 fetchedObjects];

  if (!v1)
  {
    return 1;
  }

  type metadata accessor for Feed();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 != 0;
}

void sub_100083A80(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v8[4] = sub_1000844C4;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100008310;
  v8[3] = &unk_1000D02B8;
  v5 = _Block_copy(v8);
  v6 = a2;
  v7 = a1;

  [v7 performBlock:v5];
  _Block_release(v5);
}

void sub_100083B64()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  if (NSManagedObjectContext.doesFeedEligibleForDisplayExist(kind:associatedProfileIdentifier:)())
  {
    static Logger.personalization.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Highlights section timeout complete, no population operation needed", v10, 2u);
    }

    (*(v1 + 8))(v7, v0);
  }

  else
  {
    static Logger.personalization.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Highlights section timeout complete, dispatching population operation", v13, 2u);
    }

    (*(v1 + 8))(v5, v0);
    sub_100003DDC(0, &qword_1000DBC38, NSOperationQueue_ptr);
    v14 = static NSOperationQueue.userInitiated.getter();
    v15 = objc_allocWithZone(type metadata accessor for PopulateDiscoverFeedOperation());
    v16 = PopulateDiscoverFeedOperation.init(feedKinds:)();
    [v14 addOperation:v16];
  }
}

void sub_100083DCC(void *a1, uint64_t a2, void *a3)
{
  sub_10000ACE8(a2, v8);
  v5 = objc_allocWithZone(type metadata accessor for AllHighlightsByCategoryViewController());
  v6 = a3;
  v7 = AllHighlightsByCategoryViewController.init(healthExperienceStore:healthStore:provenance:)();
  [a1 showViewController:v7 sender:a1];
}

void sub_100083E94()
{
  v1 = *(v0 + qword_1000DDB48);

  sub_100003B90((v0 + qword_1000DDB50));
  v2 = *(v0 + qword_1000DDB58);
}

uint64_t sub_100083EF4()
{
  v0 = CompoundSectionedDataSource.deinit();
  v1 = *(v0 + qword_1000DDB40);

  v2 = *(v0 + qword_1000DDB48);

  sub_100003B90((v0 + qword_1000DDB50));
  v3 = *(v0 + qword_1000DDB58);

  return swift_deallocClassInstance();
}

uint64_t sub_100083F88(void *a1, void *a2)
{
  v37 = a2;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v39 - 8);
  v3 = *(v42 + 64);
  __chkstk_darwin(v39);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  __chkstk_darwin(v5);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v34 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  sub_10000BFFC(a1, a1[3]);
  v22 = dispatch thunk of HealthExperienceStore.sharedBackgroundContext.getter();
  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  (*(v17 + 104))(v20, enum case for DispatchQoS.QoSClass.userInitiated(_:), v16);
  v35 = static OS_dispatch_queue.global(qos:)();
  (*(v17 + 8))(v20, v16);
  static DispatchTime.now()();
  type metadata accessor for SummaryTabFeedPopulationManager();
  static SummaryTabFeedPopulationManager.highlightsSectionTimeout.getter();
  + infix(_:_:)();
  v23 = *(v9 + 8);
  v23(v13, v8);
  v24 = swift_allocObject();
  v25 = v37;
  *(v24 + 16) = v22;
  *(v24 + 24) = v25;
  aBlock[4] = sub_1000844BC;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000D0268;
  v26 = _Block_copy(aBlock);
  v27 = v25;
  v28 = v22;
  v29 = v36;
  static DispatchQoS.unspecified.getter();
  v43 = &_swiftEmptyArrayStorage;
  sub_100012734(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_100010760(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  v30 = v38;
  v31 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v32 = v35;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v26);

  (*(v42 + 8))(v30, v31);
  (*(v40 + 8))(v29, v41);
  v23(v15, v34);
}

uint64_t sub_100084468()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1000844C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100083B64();
}

void sub_10008452C()
{
  if (!qword_1000DBA88)
  {
    type metadata accessor for MutableArrayDataSourceWithLayout();
    v0 = type metadata accessor for CellRegistering();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBA88);
    }
  }
}

uint64_t sub_10008458C()
{
  sub_100003B90((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

void sub_1000845D8()
{
  if (!qword_1000DDC68)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_100069570();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DDC68);
    }
  }
}

unint64_t sub_100084648()
{
  result = qword_1000DDC70;
  if (!qword_1000DDC70)
  {
    sub_100012248(255, &qword_1000DDC50, &type metadata accessor for NoticesDataSource, sub_100012EDC, &type metadata accessor for HideableDataSource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDC70);
  }

  return result;
}

void *sub_100084714(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10007C57C(0, v1, 0);
    v3 = (a1 + 32);
    v4 = _swiftEmptyArrayStorage[2];
    v5 = 2 * v4;
    do
    {
      v6 = *v3++;
      v7 = sub_100084800(v6);
      v9 = _swiftEmptyArrayStorage[3];
      v10 = v4 + 1;
      if (v4 >= v9 >> 1)
      {
        v12 = v7;
        v13 = v8;
        sub_10007C57C((v9 > 1), v10, 1);
        v8 = v13;
        v7 = v12;
      }

      _swiftEmptyArrayStorage[2] = v10;
      v11 = &_swiftEmptyArrayStorage[v5];
      v11[4] = v7;
      v11[5] = v8;
      v5 += 2;
      v4 = v10;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_100084800(char a1)
{
  result = 0xD000000000000042;
  switch(a1)
  {
    case 2:
    case 30:
      result = 0xD00000000000004FLL;
      break;
    case 3:
      result = 0xD00000000000004CLL;
      break;
    case 4:
      result = 0xD000000000000054;
      break;
    case 5:
      result = 0xD000000000000047;
      break;
    case 6:
    case 7:
      result = 0xD0000000000000C8;
      break;
    case 8:
      result = 0xD0000000000000BBLL;
      break;
    case 9:
      result = 0xD0000000000000C7;
      break;
    case 10:
      result = 0xD0000000000000D0;
      break;
    case 11:
      result = 0xD000000000000061;
      break;
    case 12:
      result = 0xD000000000000062;
      break;
    case 13:
      result = 0xD000000000000060;
      break;
    case 14:
      result = 0xD00000000000005ELL;
      break;
    case 15:
      result = 0xD00000000000002ALL;
      break;
    case 16:
      result = 0x1000000000000058;
      break;
    case 17:
      result = 0xD000000000000028;
      break;
    case 18:
      result = 0xD000000000000034;
      break;
    case 19:
    case 33:
      result = 0xD000000000000019;
      break;
    case 20:
      result = 0xD000000000000051;
      break;
    case 21:
    case 22:
      result = 0xD00000000000001CLL;
      break;
    case 23:
      result = 0xD000000000000043;
      break;
    case 25:
      result = 0xD000000000000049;
      break;
    case 26:
      result = 0xD00000000000003CLL;
      break;
    case 27:
      result = 0xD000000000000040;
      break;
    case 28:
      result = 0xD000000000000041;
      break;
    case 29:
      result = 0xD00000000000004ELL;
      break;
    case 31:
      result = 0xD00000000000001BLL;
      break;
    case 32:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100084B18(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CC738, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100084B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100006120(0, &unk_1000DD0E0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10008560C(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000771C(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000771C(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000771C(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100084E48()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = sub_10000F810();
    v6 = type metadata accessor for PinnedContentManager();
    v7 = &protocol witness table for PinnedContentManager;
    *&v5 = v2;
    type metadata accessor for StoreDemoModeManager();
    v1 = swift_allocObject();
    sub_1000091BC(&v5, v1 + 16);
    v3 = *(v0 + 56);
    *(v0 + 56) = v1;
  }

  return v1;
}

uint64_t sub_100084EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v46 - v11;
  __chkstk_darwin(v10);
  v14 = &v46 - v13;
  sub_100006900();
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1 + OBJC_IVAR____TtC6Health16LifecycleManager__preloadPluginsAfterLaunch, v16);
  UserDefault.wrappedValue.getter();
  (*(v17 + 8))(v20, v16);
  if (v47 == 1)
  {
    static Logger.general.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v46 = a2;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v47 = v25;
      *v24 = 136446210;
      v26 = _typeName(_:qualified:)();
      v28 = v4;
      v29 = sub_1000036D0(v26, v27, &v47);

      *(v24 + 4) = v29;
      v4 = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] Preloading plugins in a background thread asynchronously", v24, 0xCu);
      sub_100003B90(v25);

      v30 = *(v5 + 8);
      v30(v14, v28);
    }

    else
    {

      v30 = *(v5 + 8);
      v30(v14, v4);
    }

    type metadata accessor for FoundationPluginBundleProvider();
    static FoundationPluginBundleProvider.sharedInstance.getter();
    dispatch thunk of PluginBundleProvider.loadAllPlugins()();

    static Logger.general.getter();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v47 = v42;
      *v41 = 136446210;
      v43 = _typeName(_:qualified:)();
      v45 = sub_1000036D0(v43, v44, &v47);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "[%{public}s] Finished preloading plugins", v41, 0xCu);
      sub_100003B90(v42);
    }

    return (v30)(v12, v4);
  }

  else
  {
    static Logger.general.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v47 = v34;
      *v33 = 136446210;
      v35 = _typeName(_:qualified:)();
      v37 = sub_1000036D0(v35, v36, &v47);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "[%{public}s] Skipping preload plugins after app launch", v33, 0xCu);
      sub_100003B90(v34);
    }

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_100085504()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  v7 = OBJC_IVAR____TtC6Health16LifecycleManager__preloadPluginsAfterLaunch;
  sub_100006900();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_1000855A4()
{
  sub_100085504();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10008560C(uint64_t a1, uint64_t a2)
{
  sub_100006120(0, &unk_1000DD0E0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000856A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100018D6C;

  return sub_10000C040(a1, v5);
}

uint64_t type metadata accessor for AllHealthDataViewController()
{
  result = qword_1000DDEA8;
  if (!qword_1000DDEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000857A8()
{
  result = type metadata accessor for Presentation();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100085858(uint64_t a1)
{
  v2 = qword_1000E3F58;
  v3 = enum case for Presentation.showAllData(_:);
  v4 = type metadata accessor for Presentation();
  (*(*(v4 - 8) + 104))(a1 + v2, v3, v4);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100085910()
{
  v1 = type metadata accessor for DeepLinkActivityType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AllHealthDataViewController();
  v16.receiver = v0;
  v16.super_class = v6;
  objc_msgSendSuper2(&v16, "viewDidLoad");
  v7 = [objc_opt_self() mainBundle];
  v17._object = 0x80000001000AA950;
  v8._countAndFlagsBits = 0x6C616548206C6C41;
  v8._object = 0xEF61746144206874;
  v9._object = 0x80000001000AA930;
  v17._countAndFlagsBits = 0xD00000000000007FLL;
  v9._countAndFlagsBits = 0xD00000000000001FLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v7, v8, v17);

  v10 = String._bridgeToObjectiveC()();
  [v0 setTitle:v10];

  (*(v2 + 104))(v5, enum case for DeepLinkActivityType.allHealthData(_:), v1);
  v11 = static HAUserActivity.createActivity(title:restorationType:profileIdentifier:eligibleForSearch:eligibleForHandoff:eligibleForPrediction:)();
  (*(v2 + 8))(v5, v1);
  [v0 setUserActivity:v11];

  v12 = [v0 collectionView];
  if (v12)
  {
    v13 = v12;

    isa = Array._bridgeToObjectiveC()().super.isa;
    v15 = HKUIJoinStringsForAutomationIdentifier();

    [v13 setAccessibilityIdentifier:v15];
  }

  else
  {
    __break(1u);
  }
}

void sub_100085B94(void *a1)
{
  v1 = a1;
  sub_100085910();
}

void sub_100085BDC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UITraitOverrides();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for Presentation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  (*(v10 + 16))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1 + qword_1000E3F58);
  v11 = a1;
  UIViewController.traitOverrides.getter();
  UIMutableTraits.presentation.setter();
  UIViewController.traitOverrides.setter();
  v12 = type metadata accessor for AllHealthDataViewController();
  v13.receiver = v11;
  v13.super_class = v12;
  objc_msgSendSuper2(&v13, "viewIsAppearing:", a3);
}

void sub_100085D58(void *a1, uint64_t a2, uint64_t a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for AllHealthDataViewController();
  v4 = v7.receiver;
  objc_msgSendSuper2(&v7, "viewDidAppear:", a3);
  v5 = [v4 userActivity];
  if (v5)
  {
    v6 = v5;
    [v4 submitUserActivityForRestoration:v5];
  }
}

void sub_100085DF4()
{
  type metadata accessor for CompoundDataSourceCollectionViewController();
  v1 = method lookup function for CompoundDataSourceCollectionViewController();
  v1();
  v2 = [v0 collectionView];
  if (v2)
  {
    type metadata accessor for PlaceholderTextCollectionViewCell();
    UICollectionView.registerCell<A>(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100085EF4()
{
  sub_100003B90((v0 + qword_1000DDEA0));
  v1 = qword_1000E3F58;
  v2 = type metadata accessor for Presentation();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_100085F7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AllHealthDataViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100085FB4(uint64_t a1)
{
  sub_100003B90((a1 + qword_1000DDEA0));
  v2 = qword_1000E3F58;
  v3 = type metadata accessor for Presentation();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_100086048@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_1000E3F58;
  v5 = type metadata accessor for Presentation();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t type metadata accessor for CloudSyncDownloadingViewController()
{
  result = qword_1000DDF08;
  if (!qword_1000DDF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100086110()
{
  sub_100012654(319, &qword_1000DB158, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_1000861DC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  *(v1 + qword_1000DDEF8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v8 = qword_1000DDF00;
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  v10 = objc_allocWithZone(type metadata accessor for CloudSyncStateObserver());
  v11 = a1;
  *(v2 + qword_1000E3F70) = CloudSyncStateObserver.init(healthStore:store:)();
  v12 = [objc_allocWithZone(UIView) init];
  static OnboardingImageHeight.iconDefaultHeight.getter();
  v14 = [objc_opt_self() configurationWithPointSize:4 weight:1 scale:v13];
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() systemImageNamed:v15 withConfiguration:v14];

  if (v16)
  {
    v17 = type metadata accessor for ImageWithCircleBackground();
    v18 = objc_allocWithZone(v17);
    *&v18[OBJC_IVAR____TtC6Health25ImageWithCircleBackground_image] = v16;
    v35.receiver = v18;
    v35.super_class = v17;
    v19 = v16;
    v20 = objc_msgSendSuper2(&v35, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    sub_100028D78();

    v12 = v20;
  }

  [objc_opt_self() wapiCapability];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v21 = v12;
  v22 = OnboardingIconSmallPaddingViewController.init(title:detailText:heroView:heroViewHeight:linkButtonText:linkButtonAccessibilityIdentifier:)();
  sub_10000B84C();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000AE110;
  v24 = v22;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v26 = HKUIJoinStringsForAutomationIdentifier();

  if (v26)
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    *(v23 + 32) = v27;
    *(v23 + 40) = v29;
    strcpy((v23 + 48), "ContinueButton");
    *(v23 + 63) = -18;
    v30 = Array._bridgeToObjectiveC()().super.isa;

    v31 = HKUIJoinStringsForAutomationIdentifier();

    v32 = v24;
    v33 = Array._bridgeToObjectiveC()().super.isa;
    v34 = HKUIJoinStringsForAutomationIdentifier();

    if (v34)
    {
      [v32 setAccessibilityIdentifier:v34];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000866E4()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CloudSyncDownloadingViewController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton:1];

  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v5 = HKUIJoinStringsForAutomationIdentifier();

    if (v5)
    {
      [v3 setAccessibilityIdentifier:v5];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000867D0(void *a1)
{
  v1 = a1;
  sub_1000866E4();
}

uint64_t sub_100086818(char a1)
{
  v2 = v1;
  sub_100012654(0, &qword_1000DB158, &type metadata accessor for Date);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for CloudSyncDownloadingViewController();
  v14.receiver = v2;
  v14.super_class = v8;
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1 & 1);
  Date.init()();
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = qword_1000DDF00;
  swift_beginAccess();
  sub_1000874EC(v7, &v2[v10]);
  swift_endAccess();
  v11 = *&v2[qword_1000E3F70];
  dispatch thunk of CloudSyncStateObserver.startFirstRestoreIfNeeded()();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of CloudSyncStateObserver.firstRestoreStateChangeHandler.setter();
}

void sub_1000869A0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100086A50(a1);
  }
}

void sub_1000869FC(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100086818(a3);
}

uint64_t sub_100086A50(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v45 - v8;
  __chkstk_darwin(v7);
  v11 = &v45 - v10;
  v12 = type metadata accessor for CloudSyncRestoreState();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v45 - v18;
  v20 = *(v13 + 16);
  v20(&v45 - v18, a1, v12);
  v20(v17, v19, v12);
  if (CloudSyncRestoreState.isOngoing.getter())
  {
    static Logger.cloudSync.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v50 = v46;
      *v23 = 136315138;
      v24 = _typeName(_:qualified:)();
      v26 = sub_1000036D0(v24, v25, &v50);

      *(v23 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%s] Sync in progress", v23, 0xCu);
      sub_100003B90(v46);
    }

    (*(v48 + 8))(v11, v49);
    v27 = *(v13 + 8);
    v27(v17, v12);
    return (v27)(v19, v12);
  }

  else
  {
    v29 = *(v13 + 8);
    v29(v17, v12);
    v30 = (*(v13 + 88))(v19, v12);
    if (v30 == enum case for CloudSyncRestoreState.failed(_:))
    {
      static Logger.cloudSync.getter();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v50 = v34;
        *v33 = 136315138;
        v35 = _typeName(_:qualified:)();
        v37 = sub_1000036D0(v35, v36, &v50);

        *(v33 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v31, v32, "[%s] Sync failed", v33, 0xCu);
        sub_100003B90(v34);
      }

      return (*(v48 + 8))(v6, v49);
    }

    else if (v30 == enum case for CloudSyncRestoreState.completed(_:))
    {
      static Logger.cloudSync.getter();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v50 = v41;
        *v40 = 136315138;
        v42 = _typeName(_:qualified:)();
        v44 = sub_1000036D0(v42, v43, &v50);

        *(v40 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v38, v39, "[%s] Sync completed", v40, 0xCu);
        sub_100003B90(v41);
      }

      return (*(v48 + 8))(v9, v49);
    }

    else
    {
      return (v29)(v19, v12);
    }
  }
}

uint64_t sub_100086FA0()
{
  swift_getObjectType();
  sub_100012654(0, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = (&v26 - v5);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.cloudSync.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136315138;
    v17 = _typeName(_:qualified:)();
    v19 = sub_1000036D0(v17, v18, &v29);
    v27 = v7;
    v20 = v19;

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "[%s] User tapped Done while sync was in progress", v15, 0xCu);
    sub_100003B90(v16);

    v4 = v28;

    (*(v8 + 8))(v11, v27);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = enum case for CloudSyncRestoreState.activelyRestoring(_:);
    v23 = type metadata accessor for CloudSyncRestoreState();
    v24 = *(v23 - 8);
    (*(v24 + 104))(v6, v22, v23);
    v25 = *(v24 + 56);
    v25(v6, 0, 1, v23);
    v25(v4, 1, 1, v23);
    sub_1000731F4(v6, v4);
    swift_unknownObjectRelease();
    sub_100087574(v4, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
    return sub_100087574(v6, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
  }

  return result;
}

void sub_100087320(void *a1)
{
  v1 = a1;
  sub_100086FA0();
}

void sub_1000873C8()
{
  sub_10005A3AC(v0 + qword_1000DDEF8);
  sub_100087574(v0 + qword_1000DDF00, &qword_1000DB158, &type metadata accessor for Date);
  v1 = *(v0 + qword_1000E3F70);
}

id sub_100087434()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSyncDownloadingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10008746C(uint64_t a1)
{
  sub_10005A3AC(a1 + qword_1000DDEF8);
  sub_100087574(a1 + qword_1000DDF00, &qword_1000DB158, &type metadata accessor for Date);
  v2 = *(a1 + qword_1000E3F70);
}

uint64_t sub_1000874EC(uint64_t a1, uint64_t a2)
{
  sub_100012654(0, &qword_1000DB158, &type metadata accessor for Date);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100087574(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_100012654(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000875D0()
{
  sub_100087638();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000AE100;
  v1 = type metadata accessor for HealthIntentsFrameworkPackage();
  v2 = sub_10008773C();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

void sub_100087638()
{
  if (!qword_1000DDF58)
  {
    sub_100087690();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DDF58);
    }
  }
}

unint64_t sub_100087690()
{
  result = qword_1000DDF60;
  if (!qword_1000DDF60)
  {
    sub_1000876D8();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1000DDF60);
  }

  return result;
}

unint64_t sub_1000876D8()
{
  result = qword_1000DDF68;
  if (!qword_1000DDF68)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DDF68);
  }

  return result;
}

unint64_t sub_10008773C()
{
  result = qword_1000DDF70;
  if (!qword_1000DDF70)
  {
    type metadata accessor for HealthIntentsFrameworkPackage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDF70);
  }

  return result;
}

uint64_t type metadata accessor for HealthNotificationsWelcomeViewController()
{
  result = qword_1000DDFA0;
  if (!qword_1000DDFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100087848(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_1000878B0()
{
  v1 = qword_1000DDF98;
  v2 = *(v0 + qword_1000DDF98);
  if (v2)
  {
    v3 = *(v0 + qword_1000DDF98);
  }

  else
  {
    v4 = sub_100087910();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100087910()
{
  type metadata accessor for DiffableCollectionViewAdaptor();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1];

  v4 = [objc_allocWithZone(UIImageView) initWithImage:v3];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setContentMode:1];

  return v4;
}

char *sub_100087A20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  *(v3 + qword_1000DDF88 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + qword_1000DDF90) = 0;
  *(v3 + qword_1000DDF98) = 0;
  *(v3 + qword_1000DDF78) = a1;
  *(v3 + qword_1000DDF80) = a2;

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100044B50();
  static AdvertisableFeature.Identifier.healthWelcomeFlowIdentifiers.getter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = AdvertisableFeatureOnboardingViewController.init(featureManager:featureIdentifiers:title:detailText:subtitleText:icon:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v11 = String._bridgeToObjectiveC()();

  isa = Array._bridgeToObjectiveC()().super.isa;
  v13 = HKUIJoinStringsForAutomationIdentifier();

  v14 = [v10 hxui_addPrimaryFooterButtonWithTitle:v11 accessibilityIdentifier:v13];
  v15 = *&v10[qword_1000DDF90];
  *&v10[qword_1000DDF90] = v14;

  sub_100087D88();

  return v10;
}

void sub_100087D88()
{
  v1 = [v0 headerView];
  [v1 setAllowFullWidthIcon:1];

  v2 = [v0 headerView];
  v21 = [v2 customIconContainerView];

  if (v21)
  {
    [v21 setClipsToBounds:0];
    v3 = sub_1000878B0();
    [v21 addSubview:v3];

    v4 = objc_opt_self();
    if (([v4 hk_currentDeviceHas4InchScreen] & 1) != 0 || objc_msgSend(v4, "hk_currentDeviceHas4Point7InchScreen"))
    {
      v5 = objc_opt_self();
      sub_1000157F8();
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1000B02F0;
      v7 = qword_1000DDF98;
      v8 = [*&v0[qword_1000DDF98] topAnchor];
      v9 = [v21 topAnchor];
      v10 = [v8 constraintEqualToAnchor:v9 constant:10.0];

      *(v6 + 32) = v10;
      v11 = [*&v0[v7] leadingAnchor];
      v12 = [v21 leadingAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];

      *(v6 + 40) = v13;
      v14 = [*&v0[v7] trailingAnchor];
      v15 = [v21 trailingAnchor];
      v16 = [v14 constraintEqualToAnchor:v15];

      *(v6 + 48) = v16;
      v17 = [*&v0[v7] bottomAnchor];
      v18 = [v21 bottomAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];

      *(v6 + 56) = v19;
      sub_100003DDC(0, &qword_1000DD2C0, NSLayoutConstraint_ptr);
      v20.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v5 activateConstraints:v20.super.isa];
    }

    else
    {
      v20.super.isa = *&v0[qword_1000DDF98];
      [(objc_class *)v20.super.isa hk_alignConstraintsWithView:v21];
    }
  }
}

void sub_1000880F4(void *a1)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for HealthNotificationsWelcomeViewController();
  v1 = v6.receiver;
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = String._bridgeToObjectiveC()();
    [v3 setAccessibilityIdentifier:v4];

    v5 = *&v1[qword_1000DDF78];
    sub_100047B74();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000881C0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v26 = ObjectType;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27[0] = v12;
    *v11 = 136315138;
    v13 = _typeName(_:qualified:)();
    v15 = sub_1000036D0(v13, v14, v27);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s Primary footer button tapped", v11, 0xCu);
    sub_100003B90(v12);
  }

  (*(v4 + 8))(v7, v3);
  v16 = *(v1 + qword_1000DDF90);
  if (v16)
  {
    [v16 showsBusyIndicator];
  }

  v17 = *(v1 + qword_1000DDF78);
  v18 = dispatch thunk of AdvertisableFeatureOnboardingViewController.hasAdvertisableFeatures.getter();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v21 = v26;
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;

  sub_100045B08(v18 & 1, sub_100089CCC, v20);

  v28 = 3;
  v22 = type metadata accessor for AnalyticsSender();
  v23 = static AnalyticsSender.shared.getter();
  v27[3] = v22;
  v27[4] = &protocol witness table for AnalyticsSender;
  v27[0] = v23;
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();
  return sub_100003B90(v27);
}

uint64_t sub_100088478(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v24);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v23 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 40) = a3;
  *(v18 + 48) = a5;
  aBlock[4] = sub_100089CD4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000D0540;
  v19 = _Block_copy(aBlock);

  sub_100089CE8(a1, a2, a3);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100007CBC(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000445D4();
  sub_100007CBC(&qword_1000DAD48, sub_1000445D4);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v23;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v25 + 8))(v13, v10);
  return (*(v14 + 8))(v17, v24);
}

void sub_100088794(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  v67 = a5;
  v68 = a2;
  v7 = type metadata accessor for Locale();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v65 - v18;
  __chkstk_darwin(v17);
  v21 = &v65 - v20;
  if (a4)
  {
    if (a4 == 1)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v23 = Strong;
        sub_100088ECC(v68, a3);
      }

      goto LABEL_26;
    }

    if (v68 | a3)
    {
      if (v68 ^ 1 | a3)
      {
        static Logger.general.getter();
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v69[0] = v66;
          *v54 = 136315394;
          v55 = _typeName(_:qualified:)();
          v57 = sub_1000036D0(v55, v56, v69);

          *(v54 + 4) = v57;
          *(v54 + 12) = 2080;
          v70[0] = v68;
          v70[1] = a3;
          v71 = 2;
          v58 = String.init<A>(describing:)();
          v60 = sub_1000036D0(v58, v59, v69);

          *(v54 + 14) = v60;
          _os_log_impl(&_mh_execute_header, v52, v53, "%s Did not proceed: %s", v54, 0x16u);
          swift_arrayDestroy();
        }

        (*(v12 + 8))(v16, v11);
      }

      else
      {
        swift_beginAccess();
        v35 = swift_unknownObjectWeakLoadStrong();
        if (v35)
        {
          v36 = v35;
          sub_100089440();
        }

        swift_beginAccess();
        v37 = swift_unknownObjectWeakLoadStrong();
        if (v37)
        {
          v38 = *(v37 + qword_1000DDF90);
          v39 = v37;
          v40 = v38;

          if (v38)
          {
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            String.init(localized:table:bundle:locale:comment:)();
            v41 = String._bridgeToObjectiveC()();

            [v40 setTitle:v41 forState:0];
          }
        }
      }

      goto LABEL_26;
    }

    static Logger.general.getter();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v70[0] = v45;
      *v44 = 136315138;
      v46 = _typeName(_:qualified:)();
      v48 = sub_1000036D0(v46, v47, v70);

      *(v44 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v42, v43, "%s Notifying that the user tapped continue in order to proceed, no follow up items", v44, 0xCu);
      sub_100003B90(v45);
    }

    (*(v12 + 8))(v21, v11);
    swift_beginAccess();
    v49 = swift_unknownObjectWeakLoadStrong();
    if (v49)
    {
      v50 = v49;
      v51 = swift_unknownObjectWeakLoadStrong();

      if (v51)
      {
        v34 = _swiftEmptyArrayStorage;
        goto LABEL_22;
      }
    }
  }

  else
  {
    static Logger.advertisableFeatures.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v70[0] = v27;
      *v26 = 136315138;
      v28 = _typeName(_:qualified:)();
      v30 = sub_1000036D0(v28, v29, v70);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s Notifying that the user tapped continue in order to proceed, supplying follow up items", v26, 0xCu);
      sub_100003B90(v27);
    }

    (*(v12 + 8))(v19, v11);
    swift_beginAccess();
    v31 = swift_unknownObjectWeakLoadStrong();
    if (v31)
    {
      v32 = v31;
      v33 = swift_unknownObjectWeakLoadStrong();

      if (v33)
      {
        v34 = v68;
LABEL_22:
        sub_100073CE0(v34);
        swift_unknownObjectRelease();
      }
    }
  }

LABEL_26:
  swift_beginAccess();
  v61 = swift_unknownObjectWeakLoadStrong();
  if (v61)
  {
    v62 = *(v61 + qword_1000DDF90);
    v63 = v61;
    v64 = v62;

    if (v62)
    {
      [v64 hidesBusyIndicator];
    }
  }
}

void sub_100088E84(void *a1)
{
  v1 = a1;
  sub_1000881C0();
}

void sub_100088ECC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v31[1] = swift_getObjectType();
  v6 = type metadata accessor for Logger();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  __chkstk_darwin(v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for String.LocalizationValue();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v14 = String._bridgeToObjectiveC()();

  v32 = a1;
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  v18 = v3;
  v19 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100089D04;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100087848;
  aBlock[3] = &unk_1000D05E0;
  v20 = _Block_copy(aBlock);

  v21 = [objc_opt_self() actionWithTitle:v19 style:1 handler:v20];
  _Block_release(v20);

  isa = Array._bridgeToObjectiveC()().super.isa;
  v23 = HKUIJoinStringsForAutomationIdentifier();

  [v21 setAccessibilityIdentifier:v23];
  [v16 addAction:v21];
  static Logger.general.getter();

  v33 = v9;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v31[0] = v6;
    v27 = v26;
    aBlock[0] = swift_slowAlloc();
    *v27 = 136315395;
    v28 = _typeName(_:qualified:)();
    v30 = sub_1000036D0(v28, v29, aBlock);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2081;
    *(v27 + 14) = sub_1000036D0(v32, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v24, v25, "%s Showing alert with description: %{private}s", v27, 0x16u);
    swift_arrayDestroy();

    (*(v34 + 8))(v33, v31[0]);
  }

  else
  {

    (*(v34 + 8))(v33, v6);
  }

  [v18 presentViewController:v16 animated:1 completion:0];
}

uint64_t sub_1000893E0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100073CE0(_swiftEmptyArrayStorage);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100089440()
{
  ObjectType = swift_getObjectType();
  v0 = type metadata accessor for Logger();
  v32 = *(v0 - 8);
  v33 = v0;
  v1 = *(v32 + 64);
  __chkstk_darwin(v0);
  v31 = &ObjectType - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:{1, ObjectType}];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();

  v39 = nullsub_1;
  v40 = 0;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_100087848;
  v38 = &unk_1000D0568;
  v11 = _Block_copy(&aBlock);

  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v10 style:1 handler:v11];
  _Block_release(v11);

  isa = Array._bridgeToObjectiveC()().super.isa;
  v15 = HKUIJoinStringsForAutomationIdentifier();

  [v13 setAccessibilityIdentifier:v15];
  v30 = v13;
  [v9 addAction:v13];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v16 = String._bridgeToObjectiveC()();

  v39 = sub_100089A8C;
  v40 = 0;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_100087848;
  v38 = &unk_1000D0590;
  v17 = _Block_copy(&aBlock);

  v18 = [v12 actionWithTitle:v16 style:0 handler:v17];
  _Block_release(v17);

  v19 = Array._bridgeToObjectiveC()().super.isa;
  v20 = HKUIJoinStringsForAutomationIdentifier();

  [v18 setAccessibilityIdentifier:v20];
  [v9 addAction:v18];
  [v9 setPreferredAction:v18];
  v21 = v31;
  static Logger.general.getter();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock = v25;
    *v24 = 136315138;
    v26 = _typeName(_:qualified:)();
    v28 = sub_1000036D0(v26, v27, &aBlock);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s Showing notification authorization denied alert", v24, 0xCu);
    sub_100003B90(v25);
  }

  (*(v32 + 8))(v21, v33);
  [v34 presentViewController:v9 animated:1 completion:0];
}

uint64_t sub_100089A8C()
{
  v0 = type metadata accessor for ExternalDeepLink();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ExternalDeepLink.healthSettings(_:), v0);
  ExternalDeepLink.open()();
  return (*(v1 + 8))(v4, v0);
}

void sub_100089BA0()
{
  v1 = *(v0 + qword_1000DDF78);

  v2 = *(v0 + qword_1000DDF80);

  sub_10005A3AC(v0 + qword_1000DDF88);

  v3 = *(v0 + qword_1000DDF98);
}

id sub_100089C10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthNotificationsWelcomeViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100089C48(uint64_t a1)
{
  v2 = *(a1 + qword_1000DDF78);

  v3 = *(a1 + qword_1000DDF80);

  sub_10005A3AC(a1 + qword_1000DDF88);

  v4 = *(a1 + qword_1000DDF98);
}

uint64_t sub_100089CE8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t type metadata accessor for DataLoggingSectionDataSource()
{
  result = qword_1000DE018;
  if (!qword_1000DE018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100089DAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000ACE8(a2, v13);
  sub_10003C16C();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000AE100;
  *(v6 + 32) = HKHealthStore.sourceProfile.getter();
  sub_10000ACE8(a4, &v12);
  v7 = objc_allocWithZone(type metadata accessor for EditFavoritesCollectionViewController());
  v8 = EditFavoritesCollectionViewController.init(pinnedContentManager:sourceProfiles:healthExperienceStore:)();
  v9 = [objc_allocWithZone(HKNavigationController) initWithRootViewController:v8];
  v10 = [a1 viewController];
  if (v10)
  {
    v11 = v10;
    [v10 presentViewController:v9 animated:1 completion:0];
  }
}

uint64_t sub_100089EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10008A3E8(0, &qword_1000DE068, &type metadata accessor for HideableDataSource.Visibility);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v13 = &v18 - v12;
  sub_10002ACA0();
  v14 = NSDiffableDataSourceSnapshot.numberOfItems.getter();
  v15 = &enum case for HideableDataSource.Visibility.hidden<A>(_:);
  if (v14)
  {
    v15 = &enum case for HideableDataSource.Visibility.visible<A>(_:);
  }

  (*(v10 + 104))(v13, *v15, v9);
  dispatch thunk of HideableDataSource.visibility.setter();
  sub_10008A3E8(0, &qword_1000DE088, &type metadata accessor for HideableDataSource);
  v16 = method lookup function for HideableDataSource();
  return v16(a1, a2, a3, a4);
}

uint64_t sub_10008A040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v25 = a5;
  sub_10008A3E8(0, &qword_1000DE068, &type metadata accessor for HideableDataSource.Visibility);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = &v24[-v9];
  sub_10002ACA0();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  static NSDiffableDataSourceSnapshot._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = NSDiffableDataSourceSnapshot.numberOfItems.getter();
  v21 = &enum case for HideableDataSource.Visibility.hidden<A>(_:);
  if (v20)
  {
    v21 = &enum case for HideableDataSource.Visibility.visible<A>(_:);
  }

  (*(v7 + 104))(v10, *v21, v6);
  dispatch thunk of HideableDataSource.visibility.setter();
  sub_10008A3E8(0, &qword_1000DE088, &type metadata accessor for HideableDataSource);
  v22 = method lookup function for HideableDataSource();
  v22(v17, v19, v16, v25);

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_10008A2D4()
{
  HideableDataSource.deinit();

  return swift_deallocClassInstance();
}

void sub_10008A30C()
{
  if (!qword_1000DE070)
  {
    type metadata accessor for PinnedContentDataLoggingDataSource();
    sub_10008A3A0(&qword_1000DE078, &type metadata accessor for PinnedContentDataLoggingDataSource);
    v0 = type metadata accessor for Supplementary();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DE070);
    }
  }
}

uint64_t sub_10008A3A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10008A3E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_10008A30C();
    v7 = v6;
    v8 = sub_10008A3A0(&qword_1000DE080, sub_10008A30C);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10008A484()
{
  sub_10004FC00();
  result = static NSBundle.healthExperienceUI.getter();
  qword_1000DDFF0 = result;
  return result;
}

void sub_10008A4B8()
{
  if (qword_1000DA5B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000DDFF0;
  v4._object = 0x80000001000AAF90;
  v1._countAndFlagsBits = 0x4F4C204B43495551;
  v2._countAndFlagsBits = 0x6F4C206B63697551;
  v2._object = 0xE900000000000067;
  v1._object = 0xE900000000000047;
  v4._countAndFlagsBits = 0xD000000000000014;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1000DDFF8 = v3;
}

void sub_10008A59C()
{
  if (qword_1000DA5B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000DDFF0;
  v4._object = 0x80000001000A66E0;
  v1._countAndFlagsBits = 1414087749;
  v1._object = 0xE400000000000000;
  v2._countAndFlagsBits = 1953064005;
  v2._object = 0xE400000000000000;
  v4._countAndFlagsBits = 0xD000000000000010;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1000DE008 = v3;
}

uint64_t sub_10008A664(uint64_t *a1, void *a2, uint64_t *a3)
{
  sub_10008A3E8(0, &qword_1000DE068, &type metadata accessor for HideableDataSource.Visibility);
  v33 = v6;
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  __chkstk_darwin(v6);
  v29 = v28 - v8;
  v32 = type metadata accessor for ListLayoutConfiguration();
  v30 = *(v32 - 8);
  v9 = *(v30 + 64);
  __chkstk_darwin(v32);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UIListContentConfiguration();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  if (qword_1000DA5B8 != -1)
  {
    swift_once();
  }

  v28[1] = xmmword_1000DDFF8;
  v14 = qword_1000DA5C0;

  if (v14 != -1)
  {
    swift_once();
  }

  sub_10000ACE8(a3, &v35);
  sub_10000ACE8(a1, v34);
  v15 = swift_allocObject();
  sub_100014D24(&v35, v15 + 16);
  *(v15 + 56) = a2;
  sub_100014D24(v34, v15 + 64);

  v16 = a2;
  static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
  v17 = type metadata accessor for HeaderItem();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)();
  static ListLayoutConfiguration.withHeader.getter();
  ListLayoutConfiguration.interGroupSpacing.setter();
  v21 = ListLayoutConfiguration.additionalContentInsets.modify();
  *(v22 + 16) = 0;
  v21(&v35, 0);
  sub_10000ACE8(a3, &v35);
  v23 = a1[4];
  sub_10000BFFC(a1, a1[3]);
  dispatch thunk of HealthExperienceStore.viewContext.getter();
  v24 = objc_allocWithZone(type metadata accessor for PinnedContentDataLoggingDataSource());
  v25 = PinnedContentDataLoggingDataSource.init(pinnedContentManager:context:)();
  v36 = v17;
  v37 = sub_10008A3A0(&qword_1000DAE78, &type metadata accessor for HeaderItem);
  *&v35 = v20;
  sub_10008A3A0(&qword_1000DE078, &type metadata accessor for PinnedContentDataLoggingDataSource);

  SnapshotDataSource.withSupplementaryItem(_:)();

  sub_100003B90(&v35);
  (*(v31 + 104))(v29, enum case for HideableDataSource.Visibility.visible<A>(_:), v33);
  v26 = HideableDataSource.init(source:visibility:)();

  sub_100003B90(a3);
  (*(v30 + 8))(v11, v32);
  sub_100003B90(a1);
  return v26;
}

void sub_10008AB04()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  v3 = *(v0 + qword_1000DB930);
  v4 = objc_allocWithZone(HKProfileStore);

  v5 = [v4 initWithHealthStore:v3];
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10008AD70;
  *(v6 + 24) = v2;
  v8[4] = sub_10008C438;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10008C440;
  v8[3] = &unk_1000D0680;
  v7 = _Block_copy(v8);

  [v5 fetchAllProfilesWithCompletion:v7];
  _Block_release(v7);
}

void sub_10008AC7C(unint64_t a1, uint64_t a2, uint64_t a3)
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
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(a1 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = v8;
      sub_10008AD78(&v11, a2, a3);

      if (v10 == i)
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

void sub_10008AD78(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [objc_allocWithZone(HKProfileStore) initWithHealthStore:*a1];
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = v5;
  v7[4] = a3;
  v10[4] = sub_10008C4E4;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10008BEFC;
  v10[3] = &unk_1000D06D0;
  v8 = _Block_copy(v10);

  v9 = v5;

  [v6 fetchDisplayName:v8];
  _Block_release(v8);
}

uint64_t sub_10008AE98(void **a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void *a7, void **a8)
{
  v107 = a8;
  v111 = a7;
  v130 = a6;
  v109 = a4;
  v110 = a3;
  v108 = a1;
  v123 = type metadata accessor for Logger();
  v9 = *(v123 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v123);
  v12 = v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v113 = *(v13 - 8);
  v14 = *(v113 + 64);
  __chkstk_darwin(v13);
  v16 = v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v122 = *(v17 - 8);
  v18 = *(v122 + 64);
  __chkstk_darwin(v17);
  v121 = v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for SectionedDataSourceContainerViewType();
  v118 = *(v127 - 8);
  v20 = *(v118 + 64);
  __chkstk_darwin(v127);
  v117 = v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008C5E4(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v126 = v94 - v24;
  v125 = type metadata accessor for CellDeselectionBehavior();
  v114 = *(v125 - 8);
  v25 = *(v114 + 64);
  __chkstk_darwin(v125);
  v112 = v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for UUID();
  v27 = *(v124 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v124);
  v30 = v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for ContentConfigurationItem();
  v119 = *(v120 - 8);
  v31 = *(v119 + 64);
  v32 = __chkstk_darwin(v120);
  v116 = v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v32);
  v115 = v94 - v34;
  v35 = __chkstk_darwin(v33);
  v128 = v94 - v36;
  __chkstk_darwin(v35);
  v129 = v94 - v37;
  v38 = type metadata accessor for PersonNameComponents();
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38);
  v43 = v94 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    static Logger.profile.getter();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v137 = v47;
      *v46 = 136315138;
      aBlock = v107;
      swift_getMetatypeMetadata();
      v48 = String.init<A>(describing:)();
      v50 = sub_1000036D0(v48, v49, &v137);

      *(v46 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v44, v45, "[%s] There was an error while getting the tinker user's name", v46, 0xCu);
      sub_100003B90(v47);
    }

    return (*(v9 + 8))(v12, v123);
  }

  else
  {
    v106 = v43;
    v123 = v40;
    v107 = v41;
    PersonNameComponents.init()();

    PersonNameComponents.givenName.setter();

    PersonNameComponents.familyName.setter();
    v52 = objc_opt_self();
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v54 = [v52 localizedStringFromPersonNameComponents:isa style:2 options:0];
    v110 = v13;
    v55 = v54;

    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v56;
    v58 = v57;

    aBlock = v56;
    v132 = v58;

    v59._countAndFlagsBits = 0x656C69666F725020;
    v59._object = 0xE800000000000000;
    String.append(_:)(v59);
    v109 = v16;
    v60 = swift_allocObject();
    v96 = v60;
    v61 = v111;
    *(v60 + 16) = v130;
    *(v60 + 24) = v61;

    v103 = v61;
    UUID.init()();
    v94[2] = UUID.uuidString.getter();
    v94[1] = v62;
    v63 = *(v27 + 8);
    v104 = v27 + 8;
    v105 = v63;
    v63(v30, v124);
    v102 = type metadata accessor for UIListContentConfiguration();
    v134 = v102;
    v135 = &protocol witness table for UIListContentConfiguration;
    sub_10000AD4C(&aBlock);
    static UIListContentConfiguration.cell()();

    UIListContentConfiguration.text.setter();
    v101 = objc_opt_self();
    v64 = [v101 tintColor];
    v65 = UIListContentConfiguration.textProperties.modify();
    v111 = v17;
    v66 = v65;
    UIListContentConfiguration.TextProperties.color.setter();
    v66(&v137, 0);

    v67 = v112;
    *v112 = 1;
    v100 = enum case for CellDeselectionBehavior.deselectOnDidSelect(_:);
    v114 = *(v114 + 104);
    (v114)(v67);
    v98 = type metadata accessor for UIBackgroundConfiguration();
    v68 = *(v98 - 8);
    v97 = *(v68 + 56);
    v99 = v68 + 56;
    v97(v126, 1, 1, v98);
    v95 = enum case for SectionedDataSourceContainerViewType.collectionView(_:);
    v118 = *(v118 + 104);
    v69 = v117;
    (v118)(v117);
    ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
    aBlock = v108;
    v132 = v58;

    v70._countAndFlagsBits = 0x6C61636964654D20;
    v70._object = 0xEB00000000444920;
    String.append(_:)(v70);

    v71 = swift_allocObject();
    v72 = v103;
    *(v71 + 16) = v130;
    *(v71 + 24) = v72;

    v73 = v72;
    UUID.init()();
    v108 = UUID.uuidString.getter();
    v103 = v74;
    v105(v30, v124);
    v134 = v102;
    v135 = &protocol witness table for UIListContentConfiguration;
    sub_10000AD4C(&aBlock);
    static UIListContentConfiguration.cell()();

    UIListContentConfiguration.text.setter();
    v75 = [v101 tintColor];
    v76 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v76(&v137, 0);

    *v67 = 1;
    (v114)(v67, v100, v125);
    v97(v126, 1, 1, v98);
    (v118)(v69, v95, v127);
    v77 = v128;
    ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
    sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
    v127 = static OS_dispatch_queue.main.getter();
    v78 = v119;
    v79 = *(v119 + 16);
    v80 = v115;
    v81 = v120;
    v79(v115, v129, v120);
    v82 = v116;
    v79(v116, v77, v81);
    v83 = *(v78 + 80);
    v84 = (v83 + 24) & ~v83;
    v85 = (v31 + v83 + v84) & ~v83;
    v86 = swift_allocObject();
    *(v86 + 16) = v130;
    v87 = *(v78 + 32);
    v87(v86 + v84, v80, v81);
    v87(v86 + v85, v82, v81);
    v135 = sub_10008C554;
    v136 = v86;
    aBlock = _NSConcreteStackBlock;
    v132 = 1107296256;
    v133 = sub_100008310;
    v134 = &unk_1000D0770;
    v88 = _Block_copy(&aBlock);

    v89 = v121;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100007D94(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
    sub_10008C5E4(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
    sub_100028B74();
    v90 = v109;
    v91 = v110;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v92 = v127;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v88);

    (*(v113 + 8))(v90, v91);
    (*(v122 + 8))(v89, v111);
    v93 = *(v78 + 8);
    v93(v128, v81);
    v93(v129, v81);
    return (v107[1])(v106, v123);
  }
}

void *sub_10008BD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ContentConfigurationItem();
  v16 = v5;
  v6 = sub_100007D94(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem);
  v17 = v6;
  v7 = sub_10000AD4C(v15);
  v8 = *(*(v5 - 8) + 16);
  v8(v7, a2, v5);
  type metadata accessor for AuxiliaryProfilesDataSource();
  result = SnapshotDataSource.sectionIdentifiers.getter();
  if (result[2])
  {
    v10 = result[4];
    v11 = result[5];

    dispatch thunk of MutableArrayDataSource.append(item:toSectionWithID:)();

    sub_100003B90(v15);
    v16 = v5;
    v17 = v6;
    v12 = sub_10000AD4C(v15);
    v8(v12, a3, v5);
    result = SnapshotDataSource.sectionIdentifiers.getter();
    if (result[2])
    {
      v13 = result[4];
      v14 = result[5];

      dispatch thunk of MutableArrayDataSource.append(item:toSectionWithID:)();

      return sub_100003B90(v15);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10008BEFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (v5)
    {
LABEL_3:
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v12;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:

  v13 = a4;
  v7(v8, v10, v11, v5, a4);
}

uint64_t sub_10008BFCC(unint64_t a1, uint64_t a2, void (*a3)(void), uint64_t **a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 && a1)
  {
    v38 = _swiftEmptyArrayStorage;
    if (a1 >> 62)
    {
LABEL_33:
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v35 = a4;
    v36 = a3;
    if (v13)
    {
      v14 = 0;
      a3 = (a1 & 0xC000000000000001);
      a4 = &off_1000D7000;
      do
      {
        if (a3)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v15 = *(a1 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if ([v15 type] == 3)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v18 = *(v38 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v14;
      }

      while (v17 != v13);
      v26 = v38;
      a3 = v36;
      if ((v38 & 0x8000000000000000) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v26 = _swiftEmptyArrayStorage;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
LABEL_22:
        if ((v26 & 0x4000000000000000) == 0)
        {
          v27 = *(v26 + 16);
          if (!v27)
          {
LABEL_35:

            a3(_swiftEmptyArrayStorage);
LABEL_36:
          }

LABEL_24:
          v38 = _swiftEmptyArrayStorage;
          result = specialized ContiguousArray.reserveCapacity(_:)();
          if (v27 < 0)
          {
            __break(1u);
            return result;
          }

          v28 = 0;
          do
          {
            if ((v26 & 0xC000000000000001) != 0)
            {
              v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v29 = *(v26 + 8 * v28 + 32);
            }

            v30 = v29;
            ++v28;
            v31 = [objc_allocWithZone(HKHealthStore) init];
            [v31 setProfileIdentifier:v30];
            [v31 resume];

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v32 = *(v38 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v27 != v28);

          v36(v38);
          goto LABEL_36;
        }
      }
    }

    v27 = _CocoaArrayWrapper.endIndex.getter();
    if (!v27)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  static Logger.profile.getter();
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v37 = a2;
    v38 = v34;
    *v21 = 136315138;
    swift_errorRetain();
    sub_10008C5E4(0, &qword_1000DD580, sub_100008C14, &type metadata accessor for Optional);
    v22 = String.init<A>(describing:)();
    v24 = sub_1000036D0(v22, v23, &v38);

    *(v21 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v19, v20, "There was an error fetching tinker profiles: %s", v21, 0xCu);
    sub_100003B90(v34);
  }

  (*(v9 + 8))(v12, v8);
  return (a3)(_swiftEmptyArrayStorage);
}

uint64_t sub_10008C440(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_100003DDC(0, &qword_1000DE090, HKProfileIdentifier_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_10008C4FC(uint64_t a1)
{
  v3 = *(v1 + 16);

  return _swift_deallocObject(v1, a1, 7);
}

void *sub_10008C554()
{
  v1 = *(type metadata accessor for ContentConfigurationItem() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v1 + 64) + v2 + v3) & ~v2);

  return sub_10008BD58(v4, v0 + v3, v5);
}

void sub_10008C5E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10008C658@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v47 = a1;
  sub_10008CB70(0);
  v46 = v3;
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v45 = &v43 - v7;
  v8 = type metadata accessor for Calendar();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009A224(0, &qword_1000DB158, &type metadata accessor for Date, &type metadata accessor for Optional);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v43 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v43 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v43 - v23;
  __chkstk_darwin(v22);
  v26 = &v43 - v25;
  a2[1] = 0;
  a2[2] = 0;
  v48 = &_swiftEmptySetSingleton;
  sub_10008CBA4();
  State.init(wrappedValue:)();
  v27 = v50;
  a2[3] = v49;
  a2[4] = v27;
  static Date.now.getter();
  static Calendar.current.getter();
  Date.startOfWeek(for:)();
  (*(v9 + 8))(v12, v8);
  v28 = *(v18 + 8);
  v28(v24, v17);
  result = (*(v18 + 48))(v16, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v30 = type metadata accessor for ExportDatasetView(0);
    v31 = v30[7];
    (*(v18 + 32))(v26, v16, v17);
    v32 = *(v18 + 16);
    v32(v24, v26, v17);
    State.init(wrappedValue:)();
    v28(v26, v17);
    v33 = v30[8];
    static Date.now.getter();
    v32(v43, v24, v17);
    State.init(wrappedValue:)();
    v28(v24, v17);
    v34 = (a2 + v30[9]);
    v48 = sub_1000970BC();
    sub_1000976C4(0, &qword_1000DE0A0, &type metadata accessor for Array);
    State.init(wrappedValue:)();
    v35 = v50;
    *v34 = v49;
    v34[1] = v35;
    v36 = a2 + v30[10];
    LOBYTE(v48) = 0;
    State.init(wrappedValue:)();
    v37 = v50;
    *v36 = v49;
    *(v36 + 1) = v37;
    v38 = a2 + v30[11];
    LOBYTE(v48) = 0;
    State.init(wrappedValue:)();
    v39 = v50;
    *v38 = v49;
    *(v38 + 1) = v39;
    v40 = v30[12];
    v41 = type metadata accessor for URL();
    v42 = v45;
    (*(*(v41 - 8) + 56))(v45, 1, 1, v41);
    sub_10009A64C(v42, v44, sub_10008CB70);
    State.init(wrappedValue:)();
    result = sub_10009A37C(v42, sub_10008CB70);
    *a2 = v47;
  }

  return result;
}

void sub_10008CBA4()
{
  if (!qword_1000DE098)
  {
    sub_10007AF48();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DE098);
    }
  }
}

void *sub_10008CC20(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 56;
    v5 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v8 = *(a1 + 36);
    v22 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v11 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v12 = *(a1 + 48) + 16 * v6;
      v13 = *v12;
      if (*(v12 + 8))
      {
        sub_100003DDC(0, &qword_1000DD670, HKQuantityType_ptr);
        HKQuantityType.init(_:)(v13);
      }

      else
      {
        sub_100003DDC(0, &qword_1000DD688, HKCategoryType_ptr);
        HKCategoryType.init(_:)(v13);
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v14 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_26;
      }

      v4 = a1 + 56;
      v15 = *(a1 + 56 + 8 * v11);
      if ((v15 & (1 << v6)) == 0)
      {
        goto LABEL_27;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_28;
      }

      v16 = v15 & (-2 << (v6 & 0x3F));
      if (v16)
      {
        v9 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v10 = v22;
      }

      else
      {
        v17 = v11 << 6;
        v18 = v11 + 1;
        v10 = v22;
        v19 = (a1 + 64 + 8 * v11);
        while (v18 < (v9 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = sub_10000F210(v6, v8, 0);
            v9 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        result = sub_10000F210(v6, v8, 0);
      }

LABEL_4:
      ++v7;
      v6 = v9;
      if (v7 == v10)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

void sub_10008CE88(void (*a1)(id *), void **a2, unint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v28 = a2;
  sub_100099604(0, &qword_1000DB710, &qword_1000DB718, HKSample_ptr, &type metadata accessor for HKSampleQueryDescriptor);
  v26 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = a3;
    v30 = _swiftEmptyArrayStorage;
    a3 = &v30;
    sub_10007C59C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v13 = 0;
    v14 = v30;
    v15 = v12;
    v24 = v12;
    v25 = v12 & 0xC000000000000001;
    v21 = v12 & 0xFFFFFFFFFFFFFF8;
    v22 = v7 + 32;
    v23 = i;
    while (1)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v25)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v21 + 16))
        {
          goto LABEL_17;
        }

        v17 = *(v15 + 8 * v13 + 32);
      }

      i = v17;
      v29 = v17;
      a3 = v28;
      v27(&v29);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v30 = v14;
      v19 = v14[2];
      v18 = v14[3];
      if (v19 >= v18 >> 1)
      {
        a3 = &v30;
        sub_10007C59C(v18 > 1, v19 + 1, 1);
        v14 = v30;
      }

      v14[2] = v19 + 1;
      (*(v7 + 32))(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v10, v26);
      ++v13;
      v15 = v24;
      if (v16 == v23)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_10008D0F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10008D1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10008D2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v62 = a2;
  v3 = type metadata accessor for ExportDatasetView(0);
  v4 = *(v3 - 8);
  v56 = v3 - 8;
  v61 = v4;
  v60 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v58 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v52 = *(v53 - 8);
  v6 = *(v52 + 64);
  __chkstk_darwin(v53);
  v50 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100098244();
  v9 = v8;
  v49 = *(v8 - 8);
  v10 = *(v49 + 64);
  __chkstk_darwin(v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100098190();
  v14 = v13;
  v51 = *(v13 - 8);
  v15 = *(v51 + 64);
  __chkstk_darwin(v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000980A4();
  v54 = v18;
  v55 = *(v18 - 8);
  v19 = *(v55 + 64);
  __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097F38();
  v57 = v22;
  v59 = *(v22 - 8);
  v23 = *(v59 + 64);
  __chkstk_darwin(v22);
  v63 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  sub_1000982D8(0);
  sub_10009A2EC(&qword_1000DE318, sub_1000982D8);
  Form.init(content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v25 = sub_10009A2EC(&qword_1000DE320, sub_100098244);
  View.navigationTitle(_:)();

  (*(v49 + 8))(v12, v9);
  v26 = v52;
  v27 = v50;
  v28 = v53;
  (*(v52 + 104))(v50, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v53);
  v66 = v9;
  v67 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.navigationBarTitleDisplayMode(_:)();
  (*(v26 + 8))(v27, v28);
  (*(v51 + 8))(v17, v14);
  v30 = v48;
  v64 = v48;
  sub_100098ADC();
  v32 = v31;
  v66 = v14;
  v67 = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_10009A2EC(&qword_1000DE388, sub_100098ADC);
  v35 = v54;
  View.toolbar<A>(content:)();
  (*(v55 + 8))(v21, v35);
  v36 = v30 + *(v56 + 48);
  v37 = *v36;
  v38 = *(v36 + 8);
  v70 = v37;
  v71 = v38;
  sub_10009A4D4(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
  State.projectedValue.getter();
  v39 = v58;
  sub_10009A64C(v30, v58, type metadata accessor for ExportDatasetView);
  v40 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v41 = swift_allocObject();
  sub_100099198(v39, v41 + v40, type metadata accessor for ExportDatasetView);
  sub_100098FD0();
  v66 = v35;
  v67 = v32;
  v68 = v33;
  v69 = v34;
  swift_getOpaqueTypeConformance2();
  sub_100099070(255, &qword_1000DE398, type metadata accessor for SearchableListView);
  v43 = v42;
  v44 = sub_100099114();
  v66 = v43;
  v67 = v44;
  swift_getOpaqueTypeConformance2();
  v45 = v57;
  v46 = v63;
  View.sheet<A>(isPresented:onDismiss:content:)();

  return (*(v59 + 8))(v46, v45);
}

uint64_t sub_10008DAC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v56 = a2;
  sub_1000989E4(0, &qword_1000DE308, sub_100098A50);
  v55 = v3;
  v62 = *(v3 - 8);
  v4 = v62[8];
  v5 = __chkstk_darwin(v3);
  v57 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v61 = &v47 - v7;
  sub_1000989E4(0, &qword_1000DE2E8, sub_100098930);
  v54 = v8;
  v51 = *(v8 - 8);
  v9 = v51;
  v10 = *(v51 + 64);
  v11 = __chkstk_darwin(v8);
  v60 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v47 - v13;
  v50 = &v47 - v13;
  sub_1000989E4(0, &qword_1000DE268, sub_100098400);
  v59 = v15;
  v53 = *(v15 - 8);
  v16 = v53;
  v17 = *(v53 + 64);
  v18 = __chkstk_darwin(v15);
  v58 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v47 - v20;
  LocalizedStringKey.init(stringLiteral:)();
  v66 = Text.init(_:tableName:bundle:comment:)();
  v67 = v22;
  v68 = v23 & 1;
  v69 = v24;
  v65 = a1;
  sub_100098400();
  sub_10009A2EC(&qword_1000DE3B8, sub_100098400);
  v52 = v21;
  Section<>.init(header:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v66 = Text.init(_:tableName:bundle:comment:)();
  v67 = v25;
  v68 = v26 & 1;
  v69 = v27;
  v64 = a1;
  sub_100098930(0);
  sub_10009A2EC(&qword_1000DE3C0, sub_100098930);
  Section<>.init(header:content:)();
  v63 = a1;
  sub_100098A50();
  sub_100099380();
  v28 = v61;
  Section<>.init(content:)();
  v29 = *(v16 + 16);
  v30 = v58;
  v31 = v21;
  v32 = v59;
  v29(v58, v31, v59);
  v49 = *(v9 + 16);
  v33 = v60;
  v34 = v54;
  v49(v60, v14, v54);
  v48 = v62[2];
  v35 = v28;
  v36 = v55;
  v48(v57, v35, v55);
  v37 = v56;
  v29(v56, v30, v32);
  sub_10009830C();
  v39 = v38;
  v49(&v37[*(v38 + 48)], v33, v34);
  v40 = &v37[*(v39 + 64)];
  v41 = v57;
  v48(v40, v57, v36);
  v42 = v62[1];
  v42(v61, v36);
  v43 = *(v51 + 8);
  v43(v50, v34);
  v44 = *(v53 + 8);
  v45 = v59;
  v44(v52, v59);
  v42(v41, v36);
  v43(v60, v34);
  return (v44)(v58, v45);
}

uint64_t sub_10008E134@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, char *a2@<X8>)
{
  sub_100098648();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v4);
  v10 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &KeyPath - v11;
  v13 = type metadata accessor for ExportDatasetView(0);
  v52 = *(v13 - 8);
  v14 = *(v52 + 8);
  __chkstk_darwin(v13 - 8);
  v53 = &KeyPath - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v15;
  sub_100098488();
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v16);
  v55 = &KeyPath - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v62 = a1;
  v63 = &KeyPath - v22;
  v23 = *(a1 + 4);
  v65 = *(a1 + 3);
  v66 = v23;
  sub_10009A224(0, &qword_1000DE1C8, sub_10008CBA4, &type metadata accessor for State);
  State.wrappedValue.getter();
  v24 = v69;
  v25 = v69[2];
  v60 = v6;
  v61 = v5;
  v58 = v10;
  v59 = a2;
  v64 = v12;
  v56 = v18;
  v57 = v17;
  if (!v25)
  {
    goto LABEL_4;
  }

  v26 = sub_100031D4C(v25, 0);
  v27 = sub_100033D28(&v65, (v26 + 4), v25, v24);
  sub_10000F754();
  if (v27 != v25)
  {
    __break(1u);
LABEL_4:

    v26 = _swiftEmptyArrayStorage;
  }

  v69 = v26;
  KeyPath = swift_getKeyPath();
  v51 = type metadata accessor for ExportDatasetView;
  v28 = v53;
  sub_10009A64C(v62, v53, type metadata accessor for ExportDatasetView);
  v29 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v30 = swift_allocObject();
  v52 = type metadata accessor for ExportDatasetView;
  sub_100099198(v28, v30 + v29, type metadata accessor for ExportDatasetView);
  sub_10009A4D4(0, &qword_1000DE288, &type metadata for HKDataType, &type metadata accessor for Array);
  sub_100098548();
  sub_1000988B4();
  sub_10007AF48();
  sub_1000985E0();
  v32 = v31;
  v33 = sub_1000987D4();
  v65 = &type metadata for Text;
  v66 = v32;
  v67 = &protocol witness table for Text;
  v68 = v33;
  swift_getOpaqueTypeConformance2();
  v34 = v63;
  ForEach<>.init(_:id:content:)();
  sub_10009A64C(v62, v28, v51);
  v35 = swift_allocObject();
  sub_100099198(v28, v35 + v29, v52);
  sub_1000986DC();
  sub_10009A2EC(&qword_1000DE2B0, sub_1000986DC);
  v36 = v64;
  Button.init(action:label:)();
  v37 = v55;
  v38 = v56;
  v39 = *(v56 + 16);
  v40 = v57;
  v39(v55, v34, v57);
  v41 = v60;
  v62 = *(v60 + 16);
  v42 = v58;
  v43 = v36;
  v44 = v61;
  v62(v58, v43, v61);
  v45 = v59;
  v39(v59, v37, v40);
  sub_100098B64(0, &qword_1000DE278, sub_100098488, sub_100098648);
  v62(&v45[*(v46 + 48)], v42, v44);
  v47 = *(v41 + 8);
  v47(v64, v44);
  v48 = *(v38 + 8);
  v48(v63, v40);
  v47(v42, v44);
  return (v48)(v37, v40);
}

uint64_t sub_10008E728(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_10008E82C();
  sub_100039898();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6 & 1;
  sub_1000985E0();
  sub_1000987D4();
  View.swipeActions<A>(edge:allowsFullSwipe:content:)();
  sub_1000385F4(v3, v5, v7);
}

uint64_t sub_10008E82C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0._countAndFlagsBits = static HKSampleDataCodingConstants.categoryTypeIdentifierPrefix.getter();
  v1 = String.hasPrefix(_:)(v0);

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v1)
  {
    static HKSampleDataCodingConstants.categoryTypeIdentifierPrefix.getter();
    v5 = String.count.getter();

    v6 = v5;
    v7 = v2;
  }

  else
  {
    v8._countAndFlagsBits = static HKSampleDataCodingConstants.quantityTypeIdentifierPrefix.getter();
    v9 = String.hasPrefix(_:)(v8);

    result = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v11;
    if (!v9)
    {
      return result;
    }

    v12 = result;
    static HKSampleDataCodingConstants.quantityTypeIdentifierPrefix.getter();
    v13 = String.count.getter();

    v6 = v13;
    v7 = v12;
  }

  sub_100099BF4(v6, v7, v4);

  v14 = static String._fromSubstring(_:)();

  return v14;
}

void sub_10008E978(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ExportDatasetView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_10009A64C(a1, v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExportDatasetView);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  sub_100099198(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for ExportDatasetView);
  v13 = v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v13 = a2;
  *(v13 + 8) = a3 & 1;
  sub_1000986DC();
  sub_10009A2EC(&qword_1000DE2B0, sub_1000986DC);
  v14 = a2;
  Button.init(action:label:)();
  v15 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  v20[1] = v15;
  v17 = AnyShapeStyle.init<A>(_:)();
  sub_1000985E0();
  v19 = (a4 + *(v18 + 36));
  *v19 = KeyPath;
  v19[1] = v17;
}

uint64_t sub_10008EB88(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  sub_10009A224(0, &qword_1000DE1C8, sub_10008CBA4, &type metadata accessor for State);

  State.wrappedValue.getter();
  v7 = sub_100096C00(a2, a3 & 1);
  sub_100099BE0(v7, v8);
  State.wrappedValue.setter();
}

uint64_t sub_10008EC68()
{
  v0 = LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10008ECD4(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ExportDatasetView(0) + 40));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_10009A4D4(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
  return State.wrappedValue.setter();
}

uint64_t sub_10008ED60()
{
  v0 = LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10008EDD4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a1;
  v61 = a2;
  v57 = type metadata accessor for DatePickerComponents();
  v2 = *(v57 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v57);
  sub_10009A224(0, &qword_1000DE3F0, &type metadata accessor for Date, &type metadata accessor for Binding);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v44 = v42 - v6;
  sub_100098C6C(0, &qword_1000DE300, &type metadata accessor for DatePicker);
  v8 = v7;
  v60 = *(v7 - 8);
  v9 = *(v60 + 64);
  v10 = __chkstk_darwin(v7);
  v59 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v58 = v42 - v13;
  v14 = __chkstk_darwin(v12);
  v56 = v42 - v15;
  __chkstk_darwin(v14);
  v43 = v42 - v16;
  v17 = LocalizedStringKey.init(stringLiteral:)();
  v53 = v18;
  v54 = v17;
  v49 = v19;
  v52 = v20;
  v55 = type metadata accessor for ExportDatasetView(0);
  v21 = *(v55 + 28);
  sub_10009A224(0, &qword_1000DE148, &type metadata accessor for Date, &type metadata accessor for State);
  v50 = v22;
  State.projectedValue.getter();
  sub_10009A224(0, &qword_1000DE3F8, &type metadata accessor for DatePickerComponents, &type metadata accessor for _ContiguousArrayStorage);
  v48 = v23;
  v24 = *(v2 + 72);
  v25 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v46 = v24;
  v47 = v25 + 2 * v24;
  v26 = swift_allocObject();
  v45 = xmmword_1000AE110;
  *(v26 + 16) = xmmword_1000AE110;
  static DatePickerComponents.hourAndMinute.getter();
  static DatePickerComponents.date.getter();
  v62 = v26;
  v42[1] = sub_10009A2EC(&qword_1000DE400, &type metadata accessor for DatePickerComponents);
  sub_100099794(0);
  sub_10009A2EC(&qword_1000DE410, sub_100099794);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  DatePicker<>.init(_:selection:displayedComponents:)();
  v27 = LocalizedStringKey.init(stringLiteral:)();
  v53 = v28;
  v54 = v27;
  v52 = v29;
  v30 = v51 + *(v55 + 32);
  State.projectedValue.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = v45;
  static DatePickerComponents.hourAndMinute.getter();
  static DatePickerComponents.date.getter();
  v62 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v32 = v56;
  DatePicker<>.init(_:selection:displayedComponents:)();
  v33 = v60;
  v34 = *(v60 + 16);
  v35 = v58;
  v36 = v43;
  v34(v58, v43, v8);
  v37 = v59;
  v34(v59, v32, v8);
  v38 = v61;
  v34(v61, v35, v8);
  sub_100098964();
  v34(&v38[*(v39 + 48)], v37, v8);
  v40 = *(v33 + 8);
  v40(v32, v8);
  v40(v36, v8);
  v40(v37, v8);
  return (v40)(v35, v8);
}

void sub_10008F37C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ExportDatasetView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100098648();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009A64C(a1, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExportDatasetView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_100099198(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ExportDatasetView);
  sub_1000986DC();
  sub_10009A2EC(&qword_1000DE2B0, sub_1000986DC);
  Button.init(action:label:)();
  v15 = *(a1 + 32);
  v27 = *(a1 + 24);
  v28 = v15;
  sub_10009A224(0, &qword_1000DE1C8, sub_10008CBA4, &type metadata accessor for State);
  State.wrappedValue.getter();
  v16 = *(v26 + 16);

  if (v16)
  {
    v17 = a1 + *(v4 + 44);
    v18 = *v17;
    v19 = *(v17 + 8);
    LOBYTE(v27) = v18;
    v28 = v19;
    sub_10009A4D4(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
    State.wrappedValue.getter();
    v20 = v26;
  }

  else
  {
    v20 = 1;
  }

  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  (*(v9 + 32))(a2, v12, v8);
  sub_100098A50();
  v24 = (a2 + *(v23 + 36));
  *v24 = KeyPath;
  v24[1] = sub_10009948C;
  v24[2] = v22;
}

uint64_t sub_10008F6C4()
{
  v1 = v0;
  v2 = type metadata accessor for ExportDatasetView(0);
  v48 = *(v2 - 1);
  v3 = *(v48 + 64);
  __chkstk_darwin(v2);
  v49 = v4;
  v51 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009A224(0, &unk_1000DD0E0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v50 = &v44 - v7;
  v8 = type metadata accessor for SampleExporter(0);
  v9 = *(v8 - 8);
  v44 = v8;
  v45 = v9;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v47 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v16);
  v53 = type metadata accessor for DateInterval();
  v46 = *(v53 - 8);
  v17 = *(v46 + 64);
  __chkstk_darwin(v53);
  v52 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v0[3];
  v20 = v0[4];
  v55 = v19;
  v56 = v20;
  sub_10009A224(0, &qword_1000DE1C8, sub_10008CBA4, &type metadata accessor for State);
  State.wrappedValue.getter();
  v21 = *(v54 + 16);

  if (v21)
  {
    v23 = v1 + v2[11];
    v24 = *v23;
    v25 = *(v23 + 1);
    LOBYTE(v55) = v24;
    v56 = v25;
    LOBYTE(v54) = 1;
    sub_10009A4D4(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
    State.wrappedValue.setter();
    v55 = v19;
    v56 = v20;
    State.wrappedValue.getter();
    v26 = sub_10008CC20(v54);

    v27 = v2[7];
    sub_10009A224(0, &qword_1000DE148, &type metadata accessor for Date, &type metadata accessor for State);
    State.wrappedValue.getter();
    v28 = v1 + v2[8];
    State.wrappedValue.getter();
    v29 = v52;
    DateInterval.init(start:end:)();
    v30 = v44;
    v31 = v46;
    (*(v46 + 16))(&v13[*(v44 + 20)], v29, v53);
    v32 = *v1;
    v33 = objc_opt_self();
    v34 = v32;
    v35 = [v33 defaultManager];
    *v13 = v26;
    *&v13[*(v30 + 24)] = v34;
    *&v13[*(v30 + 28)] = v35;
    v36 = type metadata accessor for TaskPriority();
    v37 = v50;
    (*(*(v36 - 8) + 56))(v50, 1, 1, v36);
    v38 = v51;
    sub_10009A64C(v1, v51, type metadata accessor for ExportDatasetView);
    v39 = v47;
    sub_10009A64C(v13, v47, type metadata accessor for SampleExporter);
    type metadata accessor for MainActor();
    v40 = static MainActor.shared.getter();
    v41 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v42 = (v49 + *(v45 + 80) + v41) & ~*(v45 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    *(v43 + 24) = &protocol witness table for MainActor;
    sub_100099198(v38, v43 + v41, type metadata accessor for ExportDatasetView);
    sub_100099198(v39, v43 + v42, type metadata accessor for SampleExporter);
    sub_100084B64(0, 0, v37, &unk_1000B1310, v43);

    sub_10009A37C(v13, type metadata accessor for SampleExporter);
    return (*(v31 + 8))(v52, v53);
  }

  return result;
}

uint64_t sub_10008FCD0()
{
  v0 = LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10008FD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  sub_100098B64(0, &qword_1000DE330, sub_100098BE0, sub_100098CCC);
  v60 = v3;
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v57 = &v52 - v5;
  sub_100098D00();
  v7 = v6;
  v65 = *(v6 - 8);
  v8 = *(v65 + 64);
  __chkstk_darwin(v6);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100098DB4();
  v59 = v10;
  v55 = *(v10 - 8);
  v11 = *(v55 + 64);
  __chkstk_darwin(v10);
  v54 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008CB70(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v58 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100098CCC(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v64 = &v52 - v26;
  v27 = type metadata accessor for ToolbarItemPlacement();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  sub_100098BE0();
  v63 = v29;
  v61 = *(v29 - 8);
  v30 = *(v61 + 64);
  __chkstk_darwin(v29);
  v32 = &v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ToolbarItemPlacement.cancellationAction.getter();
  v66 = a1;
  sub_100098C6C(0, &qword_1000DCE18, &type metadata accessor for Button);
  sub_1000664E8();
  ToolbarItem<>.init(placement:content:)();
  v33 = *(type metadata accessor for ExportDatasetView(0) + 48);
  sub_10009A224(0, &qword_1000DE150, sub_10008CB70, &type metadata accessor for State);
  State.wrappedValue.getter();
  v34 = v18;
  v35 = v17;
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10009A37C(v16, sub_10008CB70);
    (*(v65 + 56))(v25, 1, 1, v7);
    v36 = sub_10009A2EC(&qword_1000DE380, sub_100098DB4);
    v67 = v59;
    v68 = v36;
    swift_getOpaqueTypeConformance2();
    v37 = v64;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100020424(v25);
  }

  else
  {
    v38 = *(v18 + 32);
    v39 = v58;
    v53 = v35;
    v38();
    v40 = static ToolbarItemPlacement.primaryAction.getter();
    v41 = v59;
    __chkstk_darwin(v40);
    *(&v52 - 2) = v39;
    sub_100098E54();
    sub_10009A2EC(&qword_1000DE378, sub_100098E54);
    v42 = v54;
    ToolbarItem<>.init(placement:content:)();
    v43 = sub_10009A2EC(&qword_1000DE380, sub_100098DB4);
    v44 = v56;
    v45 = v41;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v46 = v65;
    (*(v65 + 16))(v25, v44, v7);
    (*(v46 + 56))(v25, 0, 1, v7);
    v67 = v41;
    v68 = v43;
    swift_getOpaqueTypeConformance2();
    v37 = v64;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100020424(v25);
    (*(v46 + 8))(v44, v7);
    (*(v55 + 8))(v42, v45);
    (*(v34 + 8))(v58, v53);
  }

  v47 = v61;
  v48 = *(v60 + 48);
  v49 = v57;
  v50 = v63;
  (*(v61 + 16))(v57, v32, v63);
  sub_100020480(v37, &v49[v48]);
  TupleToolbarContent.init(_:)();
  sub_100020424(v37);
  return (*(v47 + 8))(v32, v50);
}

uint64_t sub_1000904EC(uint64_t a1)
{
  v2 = type metadata accessor for ExportDatasetView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_10009A64C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExportDatasetView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100099198(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for ExportDatasetView);
  return Button.init(action:label:)();
}

uint64_t sub_100090640(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1000986DC();
  sub_10009A2EC(&qword_1000DE2B0, sub_1000986DC);
  return ShareLink<>.init<>(item:subject:message:label:)();
}

uint64_t sub_10009078C()
{
  v0 = LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_1000907F0(uint64_t a1)
{
  v2 = type metadata accessor for ExportDatasetView(0);
  v3 = (a1 + *(v2 + 36));
  v5 = *v3;
  v4 = v3[1];
  *&v11[0] = v5;
  *(&v11[0] + 1) = v4;
  sub_100099270(0, &unk_1000DE1D0, &type metadata accessor for State);
  State.projectedValue.getter();
  v6 = *(a1 + 32);
  *&v11[0] = *(a1 + 24);
  *(&v11[0] + 1) = v6;
  sub_10009A224(0, &qword_1000DE1C8, sub_10008CBA4, &type metadata accessor for State);
  State.projectedValue.getter();
  v7 = (a1 + *(v2 + 40));
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v11[0]) = v8;
  *(&v11[0] + 1) = v9;
  sub_10009A4D4(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
  State.projectedValue.getter();
  sub_100090A1C(0xD000000000000011, 0x80000001000AB000, v13, *(&v13 + 1), v14, v13, *(&v13 + 1), v14, v11, v13, *(&v13 + 1), v14);
  sub_100099070(0, &qword_1000DE398, type metadata accessor for SearchableListView);
  sub_100099114();
  View.interactiveDismissDisabled(_:)();
  v19 = v11[6];
  v20 = v11[7];
  v21 = v12;
  v15 = v11[2];
  v16 = v11[3];
  v17 = v11[4];
  v18 = v11[5];
  v13 = v11[0];
  v14 = v11[1];
  return sub_100097840(&v13, &qword_1000DE398, type metadata accessor for SearchableListView);
}

char *sub_100090A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  v51 = a1;
  v52 = a2;
  sub_100099070(0, &qword_1000DE0A8, type metadata accessor for SearchableListSection);
  v47 = *(v19 - 8);
  v20 = *(v47 + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v40 - v21;
  v55 = 0;
  v56 = 0xE000000000000000;
  State.init(wrappedValue:)();
  v49 = v58;
  v50 = v57;
  v48 = v59;
  v57 = a6;
  v58 = a7;
  v59 = a8;
  sub_10009A224(0, &qword_1000DE3A8, sub_10008CBA4, &type metadata accessor for Binding);

  Binding.wrappedValue.getter();
  v23 = v55;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  sub_100099270(0, &qword_1000DE3B0, &type metadata accessor for Binding);
  Binding.wrappedValue.getter();

  v54 = a4;

  v53 = a3;

  v24 = *(v55 + 16);
  if (!v24)
  {

    v28 = _swiftEmptyArrayStorage;
LABEL_20:
    *a9 = v51;
    *(a9 + 8) = v52;
    *(a9 + 16) = v53;
    *(a9 + 24) = v54;
    *(a9 + 32) = a5;
    *(a9 + 40) = a6;
    *(a9 + 48) = a7;
    *(a9 + 56) = a8;
    *(a9 + 64) = a10;
    *(a9 + 72) = a11;
    *(a9 + 80) = a12 & 1;
    *(a9 + 88) = v23;
    *(a9 + 96) = 0;
    v39 = v49;
    *(a9 + 104) = v50;
    *(a9 + 112) = v39;
    *(a9 + 120) = v48;
    *(a9 + 128) = v28;
    return result;
  }

  v41 = v23;
  v42 = a5;
  v43 = a6;
  v44 = a7;
  v45 = a8;
  v46 = a9;
  v25 = *(v47 + 80);
  v40[1] = v55;
  v26 = v55 + ((v25 + 32) & ~v25);
  v27 = *(v47 + 72);
  v28 = _swiftEmptyArrayStorage;
  while (1)
  {
    result = sub_100097740(v26, v22);
    v30 = *(v22 + 2);
    v31 = *(v30 + 16);
    v32 = *(v28 + 2);
    v33 = v32 + v31;
    if (__OFADD__(v32, v31))
    {
      break;
    }

    v34 = *(v22 + 2);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v33 <= *(v28 + 3) >> 1)
    {
      if (*(v30 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v32 <= v33)
      {
        v35 = v32 + v31;
      }

      else
      {
        v35 = v32;
      }

      result = sub_100031B98(result, v35, 1, v28);
      v28 = result;
      if (*(v30 + 16))
      {
LABEL_14:
        if ((*(v28 + 3) >> 1) - *(v28 + 2) < v31)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v31)
        {
          v36 = *(v28 + 2);
          v37 = __OFADD__(v36, v31);
          v38 = v36 + v31;
          if (v37)
          {
            goto LABEL_24;
          }

          *(v28 + 2) = v38;
        }

        goto LABEL_4;
      }
    }

    if (v31)
    {
      goto LABEL_22;
    }

LABEL_4:
    sub_100097840(v22, &qword_1000DE0A8, type metadata accessor for SearchableListSection);
    v26 += v27;
    if (!--v24)
    {

      a8 = v45;
      a9 = v46;
      a6 = v43;
      a7 = v44;
      v23 = v41;
      a5 = v42;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100090DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_10008CB70(0);
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[9] = v7;
  v4[10] = type metadata accessor for MainActor();
  v4[11] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v4[12] = v8;
  *v8 = v4;
  v8[1] = sub_100090EB4;

  return sub_1000913BC(v7);
}

uint64_t sub_100090EB4()
{
  v2 = v0;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 104) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_1000911D0;
  }

  else
  {
    v8 = sub_100091010;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100091010()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);

  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  v6 = type metadata accessor for ExportDatasetView(0);
  v7 = *(v6 + 48);
  sub_10009A64C(v2, v3, sub_10008CB70);
  sub_10009A224(0, &qword_1000DE150, sub_10008CB70, &type metadata accessor for State);
  State.wrappedValue.setter();
  sub_10009A37C(v2, sub_10008CB70);
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = (*(v0 + 56) + *(v6 + 44));
  v11 = *v10;
  v12 = *(v10 + 1);
  *(v0 + 32) = v11;
  *(v0 + 40) = v12;
  *(v0 + 112) = 0;
  sub_10009A4D4(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
  State.wrappedValue.setter();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000911D0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  sub_10009A4D4(0, &qword_1000DD9C0, &type metadata for Any + 8, &type metadata accessor for _ContiguousArrayStorage);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000AE100;
  _StringGuts.grow(_:)(21);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v4._object = 0x80000001000AB070;
  v4._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v4);
  *(v0 + 48) = v1;
  sub_100008C14();
  _print_unlocked<A, B>(_:_:)();
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v3 + 56) = &type metadata for String;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  print(_:separator:terminator:)();

  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = *(v0 + 56);
  v10 = (v9 + *(type metadata accessor for ExportDatasetView(0) + 44));
  v11 = *v10;
  v12 = *(v10 + 1);
  *(v0 + 32) = v11;
  *(v0 + 40) = v12;
  *(v0 + 112) = 0;
  sub_10009A4D4(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
  State.wrappedValue.setter();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000913BC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for URL();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v10 = type metadata accessor for SampleDataEncoder();
  v2[17] = v10;
  v11 = *(v10 - 8);
  v2[18] = v11;
  v12 = *(v11 + 64) + 15;
  v2[19] = swift_task_alloc();
  sub_100099604(0, &qword_1000DB710, &qword_1000DB718, HKSample_ptr, &type metadata accessor for HKSampleQueryDescriptor);
  v2[20] = v13;
  v14 = *(v13 - 8);
  v2[21] = v14;
  v15 = *(v14 + 64) + 15;
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100091620, 0, 0);
}

uint64_t sub_100091620()
{
  v1 = v0[8];
  v2 = *v1;
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  sub_10008CE88(sub_10009966C, v3, v2);
  v5 = v4;
  v0[23] = v4;

  v6 = *(v5 + 16);
  v0[24] = v6;
  if (v6)
  {
    v7 = v0[21];
    v0[25] = _swiftEmptyArrayStorage;
    v0[26] = 0;
    v8 = v0[23];
    if (!*(v8 + 16))
    {
      __break(1u);
    }

    v9 = v0[8];
    (*(v7 + 16))(v0[22], v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v0[20]);
    v10 = *(v9 + *(type metadata accessor for SampleExporter(0) + 24));
    v11 = async function pointer to HKSampleQueryDescriptor.result(for:)[1];
    v12 = swift_task_alloc();
    v0[27] = v12;
    *v12 = v0;
    v12[1] = sub_100091B9C;
    v13 = v0[22];
    v14 = v0[20];

    return HKSampleQueryDescriptor.result(for:)(v10, v14);
  }

  else
  {
    v15 = v0[23];
    v16 = v0[19];
    v17 = v0[16];

    static Logger.general.getter();
    SampleDataEncoder.init(samples:logger:)();
    v18 = SampleDataEncoder.encodeSamples()();
    v20 = v19;
    v21 = v0[15];
    v23 = v0[11];
    v22 = v0[12];
    v25 = v0[9];
    v24 = v0[10];
    v26 = v0[8];
    UUID.init()();
    v27 = *(v26 + *(type metadata accessor for SampleExporter(0) + 28));
    v28 = [v27 temporaryDirectory];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v29 = *(v24 + 8);
    v29(v23, v25);
    URL._bridgeToObjectiveC()(v30);
    v32 = v31;
    v0[6] = 0;
    LODWORD(v22) = [v27 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:0 error:v0 + 6];

    v33 = v0[6];
    if (v22)
    {
      v34 = v0[12];
      v35 = v0[7];
      v36 = v33;
      URL.appendingPathComponent(_:)();
      Data.write(to:options:)();
      v37 = v20;
      v50 = v0[18];
      v49 = v0[19];
      v61 = v0[17];
      v63 = v0[22];
      v51 = v0[14];
      v59 = v0[15];
      v53 = v0[12];
      v52 = v0[13];
      v65 = v0[16];
      v67 = v0[11];
      v54 = v0[9];
      sub_100026CBC(v18, v37);
      v29(v53, v54);
      (*(v51 + 8))(v59, v52);
      (*(v50 + 8))(v49, v61);
    }

    else
    {
      v57 = v20;
      v58 = v29;
      v38 = v0[18];
      v64 = v0[17];
      v66 = v0[19];
      v39 = v0[14];
      v40 = v0[12];
      v60 = v0[13];
      v62 = v0[15];
      v41 = v0[9];
      v42 = v33;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100026CBC(v18, v57);
      v58(v40, v41);
      (*(v39 + 8))(v62, v60);
      (*(v38 + 8))(v66, v64);
      v43 = v0[22];
      v44 = v0[19];
      v46 = v0[15];
      v45 = v0[16];
      v48 = v0[11];
      v47 = v0[12];
    }

    v55 = v0[1];

    return v55();
  }
}

uint64_t sub_100091B9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v9 = *v2;
  v3[28] = a1;
  v3[29] = v1;

  if (v1)
  {
    v5 = v3[25];
    v6 = v3[23];
    (*(v3[21] + 8))(v3[22], v3[20]);

    v7 = sub_1000924A4;
  }

  else
  {
    (*(v3[21] + 8))(v3[22], v3[20]);
    v7 = sub_100091D28;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100091D28()
{
  v1 = *(v0 + 224);
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v80 = *(v0 + 224);
    }

    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v0 + 200);
  v5 = v4 >> 62;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v6 + v3;
    if (!__OFADD__(v6, v3))
    {
      goto LABEL_5;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v4 < 0)
  {
    v81 = *(v0 + 200);
  }

  v82 = _CocoaArrayWrapper.endIndex.getter();
  v7 = v82 + v3;
  if (__OFADD__(v82, v3))
  {
    goto LABEL_51;
  }

LABEL_5:
  v8 = *(v0 + 200);
  if (swift_isUniquelyReferenced_nonNull_bridgeObject())
  {
    if (!v5)
    {
      v9 = v4 & 0xFFFFFFFFFFFFFF8;
      v10 = *(v9 + 24) >> 1;
      if (v10 >= v7)
      {
        v11 = *(v0 + 200);
        v12 = *(v9 + 16);
        if (v2)
        {
          goto LABEL_9;
        }

LABEL_28:
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_12;
        }

        goto LABEL_29;
      }

      goto LABEL_17;
    }
  }

  else if (!v5)
  {
    v9 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v16 = *(v9 + 16);
    goto LABEL_27;
  }

  v25 = *(v0 + 200);
  if (v4 < 0)
  {
    v26 = *(v0 + 200);
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_27:
  v27 = *(v0 + 200);
  v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v9 = v11 & 0xFFFFFFFFFFFFFF8;
  v10 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_28;
  }

LABEL_9:
  v13 = *(v0 + 224);
  if (v1 < 0)
  {
    v14 = *(v0 + 224);
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (!v15)
  {
LABEL_29:
    v28 = *(v0 + 224);

    if (v3 <= 0)
    {
      goto LABEL_30;
    }

    goto LABEL_52;
  }

LABEL_12:
  if (v10 - v12 < v3)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v91 = v11;
  if (v2)
  {
    if (v15 < 1)
    {
      goto LABEL_56;
    }

    sub_100099604(0, &qword_1000DE3D0, &qword_1000DB718, HKSample_ptr, &type metadata accessor for Array);
    sub_10009968C();
    for (i = 0; i != v15; ++i)
    {
      v18 = sub_100054724((v0 + 16), i, *(v0 + 224));
      v20 = *v19;
      (v18)(v0 + 16, 0);
      *(v9 + 8 * v12 + 32 + 8 * i) = v20;
    }
  }

  else
  {
    sub_100003DDC(0, &qword_1000DB718, HKSample_ptr);
    swift_arrayInitWithCopy();
  }

  v21 = *(v0 + 224);

  v11 = v91;
  if (v3 > 0)
  {
    v22 = *(v9 + 16);
    v23 = __OFADD__(v22, v3);
    v24 = v22 + v3;
    if (v23)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
    }

    *(v9 + 16) = v24;
  }

LABEL_30:
  v29 = *(v0 + 208) + 1;
  if (v29 == *(v0 + 192))
  {
    v30 = *(v0 + 232);
    v31 = *(v0 + 184);
    v32 = *(v0 + 152);
    v33 = *(v0 + 128);

    static Logger.general.getter();
    SampleDataEncoder.init(samples:logger:)();
    v34 = SampleDataEncoder.encodeSamples()();
    if (v30)
    {
      (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    }

    else
    {
      v43 = v34;
      v44 = v35;
      v45 = *(v0 + 120);
      v47 = *(v0 + 88);
      v46 = *(v0 + 96);
      v49 = *(v0 + 72);
      v48 = *(v0 + 80);
      v50 = *(v0 + 64);
      UUID.init()();
      v51 = *(v50 + *(type metadata accessor for SampleExporter(0) + 28));
      v52 = [v51 temporaryDirectory];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v53 = *(v48 + 8);
      v53(v47, v49);
      URL._bridgeToObjectiveC()(v54);
      v56 = v55;
      *(v0 + 48) = 0;
      LODWORD(v46) = [v51 createDirectoryAtURL:v55 withIntermediateDirectories:1 attributes:0 error:v0 + 48];

      v57 = *(v0 + 48);
      if (v46)
      {
        v58 = *(v0 + 96);
        v59 = *(v0 + 56);
        v60 = v57;
        URL.appendingPathComponent(_:)();
        Data.write(to:options:)();
        v61 = v44;
        v74 = *(v0 + 144);
        v73 = *(v0 + 152);
        v88 = *(v0 + 136);
        v90 = *(v0 + 176);
        v75 = *(v0 + 112);
        v86 = *(v0 + 120);
        v77 = *(v0 + 96);
        v76 = *(v0 + 104);
        v93 = *(v0 + 128);
        v95 = *(v0 + 88);
        v78 = *(v0 + 72);
        sub_100026CBC(v43, v61);
        v53(v77, v78);
        (*(v75 + 8))(v86, v76);
        (*(v74 + 8))(v73, v88);

        v79 = *(v0 + 8);
LABEL_41:

        return v79();
      }

      v84 = v44;
      v85 = v53;
      v62 = *(v0 + 144);
      v92 = *(v0 + 136);
      v94 = *(v0 + 152);
      v63 = *(v0 + 112);
      v64 = *(v0 + 96);
      v87 = *(v0 + 104);
      v89 = *(v0 + 120);
      v65 = *(v0 + 72);
      v66 = v57;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100026CBC(v43, v84);
      v85(v64, v65);
      (*(v63 + 8))(v89, v87);
      (*(v62 + 8))(v94, v92);
    }

    v67 = *(v0 + 176);
    v68 = *(v0 + 152);
    v70 = *(v0 + 120);
    v69 = *(v0 + 128);
    v72 = *(v0 + 88);
    v71 = *(v0 + 96);

    v79 = *(v0 + 8);
    goto LABEL_41;
  }

  *(v0 + 200) = v11;
  *(v0 + 208) = v29;
  v36 = *(v0 + 184);
  if (v29 >= *(v36 + 16))
  {
    goto LABEL_54;
  }

  v37 = *(v0 + 64);
  (*(*(v0 + 168) + 16))(*(v0 + 176), v36 + ((*(*(v0 + 168) + 80) + 32) & ~*(*(v0 + 168) + 80)) + *(*(v0 + 168) + 72) * v29, *(v0 + 160));
  v38 = *(v37 + *(type metadata accessor for SampleExporter(0) + 24));
  v39 = async function pointer to HKSampleQueryDescriptor.result(for:)[1];
  v40 = swift_task_alloc();
  *(v0 + 216) = v40;
  *v40 = v0;
  v40[1] = sub_100091B9C;
  v41 = *(v0 + 176);
  v42 = *(v0 + 160);

  return HKSampleQueryDescriptor.result(for:)(v38, v42);
}

uint64_t sub_1000924A4()
{
  v1 = v0[29];
  v2 = v0[22];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[11];
  v6 = v0[12];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100092580()
{
  sub_100097D30();
  sub_100097F38();
  sub_100098FD0();
  sub_1000980A4();
  sub_100098ADC();
  sub_100098190();
  sub_100098244();
  sub_10009A2EC(&qword_1000DE320, sub_100098244);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10009A2EC(&qword_1000DE388, sub_100098ADC);
  swift_getOpaqueTypeConformance2();
  sub_100099070(255, &qword_1000DE398, type metadata accessor for SearchableListView);
  sub_100099114();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationView.init(content:)();
}

uint64_t sub_100092798(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_100099710();
  sub_100099604(0, &qword_1000DE3E8, &qword_1000DB718, HKSample_ptr, &type metadata accessor for HKSamplePredicate);
  v5 = *(*(v4 - 8) + 72);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_1000AE100;
  v7 = objc_opt_self();
  v8 = a2 + *(type metadata accessor for SampleExporter(0) + 20);
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v10 = [v7 predicateForSamplesWithinDateInterval:isa options:0];

  sub_100003DDC(0, &qword_1000DB718, HKSample_ptr);
  static HKSamplePredicate.sample(type:predicate:)();

  return HKSampleQueryDescriptor.init(predicates:sortDescriptors:limit:)();
}

Swift::Int sub_100092938()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10009299C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000929FC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_10008E82C();
}

uint64_t sub_100092A24(uint64_t a1)
{
  v2 = *(v1 + 16);
  v6 = *(v1 + 32);
  v3 = *(a1 + 32);
  v5[0] = *(a1 + 16);
  v5[1] = v3;
  v5[2] = v2;
  type metadata accessor for SearchableListSection(255, v5);
  type metadata accessor for Array();
  type metadata accessor for Binding();
  Binding.wrappedValue.getter();
  return *&v5[0];
}

uint64_t sub_100092A94(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 40);
  v7 = *(v2 + 56);
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  type metadata accessor for Set();
  type metadata accessor for Binding();
  return Binding.wrappedValue.setter();
}

uint64_t sub_100092AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

BOOL sub_100092B70()
{
  v5 = *(v0 + 104);
  v6 = *(v0 + 120);
  sub_10009A4D4(0, &qword_1000DCEB0, &type metadata for String, &type metadata accessor for State);
  State.wrappedValue.getter();

  v1 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v1 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  return v1 != 0;
}

uint64_t sub_100092C00(uint64_t a1)
{
  v5 = *(v1 + 128);
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  type metadata accessor for Array();

  swift_getWitnessTable();
  return _ArrayProtocol.filter(_:)();
}

uint64_t sub_100092CA0(uint64_t a1, uint64_t a2)
{
  dispatch thunk of CustomStringConvertible.description.getter();
  v5 = *(a2 + 104);
  v6 = *(a2 + 120);
  sub_10009A4D4(0, &qword_1000DCEB0, &type metadata for String, &type metadata accessor for State);
  State.wrappedValue.getter();
  sub_100039898();
  v3 = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();

  return v3 & 1;
}

uint64_t sub_100092D84@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Array();
  *&v58 = &type metadata for Text;
  *(&v58 + 1) = v3;
  *&v59 = &protocol witness table for Text;
  v41 = *(a1 + 32);
  v37[2] = &unk_1000B18E0;
  *&v58 = v4;
  *(&v58 + 1) = swift_getAssociatedTypeWitness();
  *&v59 = swift_getOpaqueTypeMetadata2();
  *(&v59 + 1) = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  type metadata accessor for Section();
  v38 = *(a1 + 24);
  *&v5 = v3;
  v37[1] = v3;
  *(&v5 + 1) = v38;
  v58 = v5;
  v59 = v41;
  type metadata accessor for SearchableListSection(255, &v58);
  v6 = type metadata accessor for Array();
  v7 = type metadata accessor for UUID();
  v8 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_10009A2EC(&qword_1000DE220, &type metadata accessor for UUID);
  *&v58 = v6;
  *(&v58 + 1) = v7;
  *&v59 = v8;
  *(&v59 + 1) = WitnessTable;
  AssociatedConformanceWitness = v10;
  type metadata accessor for ForEach();
  v11 = type metadata accessor for _ConditionalContent();
  *&v58 = &type metadata for Text;
  *(&v58 + 1) = v3;
  *&v59 = &protocol witness table for Text;
  *(&v59 + 1) = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = &protocol witness table for EmptyView;
  v55 = swift_getWitnessTable();
  v56 = &protocol witness table for EmptyView;
  v12 = swift_getWitnessTable();
  v51 = &protocol witness table for Text;
  v52 = v55;
  v53 = &protocol witness table for EmptyView;
  v50 = swift_getWitnessTable();
  v48 = v12;
  v49 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  *&v58 = v3;
  *(&v58 + 1) = v11;
  *&v59 = v41;
  *(&v59 + 1) = v13;
  v14 = type metadata accessor for List();
  v15 = swift_getWitnessTable();
  v16 = sub_100039898();
  *&v58 = v14;
  *(&v58 + 1) = &type metadata for String;
  *&v59 = v15;
  *(&v59 + 1) = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v58 = v14;
  *(&v58 + 1) = &type metadata for String;
  *&v59 = v15;
  *(&v59 + 1) = v16;
  v18 = swift_getOpaqueTypeConformance2();
  *&v58 = OpaqueTypeMetadata2;
  *(&v58 + 1) = v18;
  swift_getOpaqueTypeMetadata2();
  sub_10009A154(255);
  v19 = type metadata accessor for ModifiedContent();
  sub_10009A1F0(255);
  v21 = v20;
  *&v58 = OpaqueTypeMetadata2;
  *(&v58 + 1) = v18;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_10009A2EC(&qword_1000DE580, sub_10009A154);
  v22 = swift_getWitnessTable();
  v23 = sub_10009A2EC(&qword_1000DE588, sub_10009A1F0);
  *&v58 = v19;
  *(&v58 + 1) = v21;
  *&v59 = v22;
  *(&v59 + 1) = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  *&v58 = v19;
  *(&v58 + 1) = v21;
  *&v59 = v22;
  *(&v59 + 1) = v23;
  v25 = swift_getOpaqueTypeConformance2();
  *&v58 = v24;
  *(&v58 + 1) = v25;
  swift_getOpaqueTypeMetadata2();
  *&v58 = v24;
  *(&v58 + 1) = v25;
  swift_getOpaqueTypeConformance2();
  v26 = type metadata accessor for NavigationView();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = __chkstk_darwin(v26);
  v31 = v37 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = v37 - v32;
  v42 = v3;
  v43 = v38;
  v44 = v41;
  v45 = v39;
  NavigationView.init(content:)();
  swift_getWitnessTable();
  v34 = v27[2];
  v34(v33, v31, v26);
  v35 = v27[1];
  v35(v31, v26);
  v34(v40, v33, v26);
  return (v35)(v33, v26);
}

uint64_t sub_100093480@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, char *a6@<X8>)
{
  v128 = a6;
  v129 = a4;
  v133 = a3;
  v119 = a1;
  v9 = type metadata accessor for SearchFieldPlacement();
  v126 = *(v9 - 8);
  v127 = v9;
  v10 = *(v126 + 64);
  __chkstk_darwin(v9);
  v125 = v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EditMode();
  v123 = *(v12 - 8);
  v124 = v12;
  v13 = *(v123 + 64);
  __chkstk_darwin(v12);
  v122 = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009A188(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v121 = v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v118 = *(v120 - 8);
  v18 = *(v118 + 64);
  __chkstk_darwin(v120);
  v117 = v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v158 = &type metadata for Text;
  *(&v158 + 1) = a2;
  v159 = &protocol witness table for Text;
  v160 = a4;
  v116 = &unk_1000B18E0;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v132 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v158 = v20;
  *(&v158 + 1) = AssociatedTypeWitness;
  v159 = OpaqueTypeMetadata2;
  v160 = WitnessTable;
  v161 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v114 = type metadata accessor for Section();
  *&v158 = a2;
  *(&v158 + 1) = v133;
  v25 = v129;
  v159 = v129;
  v160 = a5;
  type metadata accessor for SearchableListSection(255, &v158);
  v26 = type metadata accessor for Array();
  v27 = type metadata accessor for UUID();
  v28 = type metadata accessor for Section();
  v115 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_10009A2EC(&qword_1000DE220, &type metadata accessor for UUID);
  *&v158 = v26;
  *(&v158 + 1) = v27;
  v159 = v28;
  v160 = v29;
  v161 = v30;
  type metadata accessor for ForEach();
  v31 = type metadata accessor for _ConditionalContent();
  v130 = a2;
  v131 = v31;
  *&v158 = &type metadata for Text;
  *(&v158 + 1) = a2;
  v159 = &protocol witness table for Text;
  v160 = v25;
  v32 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = swift_getWitnessTable();
  v154 = &protocol witness table for EmptyView;
  v155 = v33;
  v156 = &protocol witness table for EmptyView;
  v34 = swift_getWitnessTable();
  v151 = &protocol witness table for Text;
  v152 = v33;
  v153 = &protocol witness table for EmptyView;
  v150 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v148 = v34;
  v149 = v35;
  v36 = v131;
  v111 = swift_getWitnessTable();
  *&v158 = a2;
  *(&v158 + 1) = v36;
  v159 = v32;
  v160 = v111;
  v37 = v32;
  v38 = type metadata accessor for List();
  v114 = *(v38 - 8);
  v39 = *(v114 + 64);
  __chkstk_darwin(v38);
  v108 = v94 - v40;
  v41 = swift_getWitnessTable();
  v42 = sub_100039898();
  *&v158 = v38;
  *(&v158 + 1) = &type metadata for String;
  v159 = v41;
  v160 = v42;
  v100 = v42;
  v101 = v41;
  v43 = v42;
  v44 = swift_getOpaqueTypeMetadata2();
  v112 = *(v44 - 8);
  v45 = *(v112 + 64);
  __chkstk_darwin(v44);
  v102 = v94 - v46;
  *&v158 = v38;
  *(&v158 + 1) = &type metadata for String;
  v159 = v41;
  v160 = v43;
  v47 = swift_getOpaqueTypeConformance2();
  *&v158 = v44;
  *(&v158 + 1) = v47;
  v48 = v47;
  v94[1] = v47;
  v110 = swift_getOpaqueTypeMetadata2();
  v115 = *(v110 - 8);
  v49 = *(v115 + 64);
  __chkstk_darwin(v110);
  v98 = v94 - v50;
  sub_10009A154(255);
  v51 = type metadata accessor for ModifiedContent();
  v116 = *(v51 - 8);
  v52 = v116[8];
  __chkstk_darwin(v51);
  v106 = v94 - v53;
  sub_10009A1F0(255);
  v55 = v54;
  *&v158 = v44;
  *(&v158 + 1) = v48;
  v56 = swift_getOpaqueTypeConformance2();
  v99 = v56;
  v57 = sub_10009A2EC(&qword_1000DE580, sub_10009A154);
  v146 = v56;
  v147 = v57;
  v58 = swift_getWitnessTable();
  v59 = sub_10009A2EC(&qword_1000DE588, sub_10009A1F0);
  *&v158 = v51;
  *(&v158 + 1) = v55;
  v60 = v55;
  v94[2] = v55;
  v159 = v58;
  v160 = v59;
  v96 = v58;
  v61 = v59;
  v94[0] = v59;
  v62 = swift_getOpaqueTypeMetadata2();
  v104 = v62;
  v113 = *(v62 - 8);
  v63 = *(v113 + 64);
  __chkstk_darwin(v62);
  v95 = v94 - v64;
  *&v158 = v51;
  *(&v158 + 1) = v60;
  v159 = v58;
  v160 = v61;
  v103 = swift_getOpaqueTypeConformance2();
  *&v158 = v62;
  *(&v158 + 1) = v103;
  v109 = swift_getOpaqueTypeMetadata2();
  v107 = *(v109 - 8);
  v65 = *(v107 + 64);
  v66 = __chkstk_darwin(v109);
  v97 = v94 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v105 = v94 - v68;
  v69 = v119;
  v144 = *(v119 + 88);
  v70 = v130;
  type metadata accessor for Set();
  type metadata accessor for State();
  State.projectedValue.getter();
  v139 = v70;
  v140 = v133;
  v141 = v37;
  v142 = v132;
  v143 = v69;
  v71 = v108;
  List.init(selection:content:)();
  v158 = *v69;
  v72 = v102;
  View.navigationTitle<A>(_:)();
  (*(v114 + 8))(v71, v38);
  v73 = v117;
  v74 = v118;
  v75 = v120;
  (*(v118 + 104))(v117, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v120);
  v76 = v98;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v74 + 8))(v73, v75);
  (*(v112 + 8))(v72, v44);
  swift_getKeyPath();
  v77 = v122;
  v78 = v123;
  v79 = v124;
  (*(v123 + 104))(v122, enum case for EditMode.active(_:), v124);
  v80 = v121;
  static Binding.constant(_:)();
  (*(v78 + 8))(v77, v79);
  sub_10009A1BC(0);
  (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
  v82 = v106;
  v83 = v110;
  View.environment<A>(_:_:)();

  sub_10009A37C(v80, sub_10009A188);
  (*(v115 + 8))(v76, v83);
  v134 = v130;
  v135 = v133;
  v136 = v129;
  v137 = v132;
  v138 = v69;
  swift_checkMetadataState();
  v84 = v95;
  View.toolbar<A>(content:)();
  (v116[1])(v82, v51);
  v144 = *(v69 + 104);
  v145 = *(v69 + 15);
  sub_10009A4D4(0, &qword_1000DCEB0, &type metadata for String, &type metadata accessor for State);
  State.projectedValue.getter();
  v85 = v125;
  static SearchFieldPlacement.automatic.getter();
  v86 = v104;
  v87 = v97;
  View.searchable(text:placement:prompt:)();

  (*(v126 + 8))(v85, v127);
  (*(v113 + 8))(v84, v86);
  v88 = v107;
  v89 = *(v107 + 16);
  v90 = v105;
  v91 = v109;
  v89(v105, v87, v109);
  v92 = *(v88 + 8);
  v92(v87, v91);
  v89(v128, v90, v91);
  return (v92)(v90, v91);
}

uint64_t sub_10009428C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a3;
  v70 = a1;
  v74 = a6;
  v108 = a2;
  v109 = a3;
  v110 = a4;
  v111 = a5;
  v80 = a4;
  v66 = type metadata accessor for SearchableListSection(255, &v108);
  v9 = type metadata accessor for Array();
  v75 = type metadata accessor for UUID();
  v10 = type metadata accessor for Array();
  v68 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v108 = &type metadata for Text;
  v109 = a2;
  v110 = &protocol witness table for Text;
  v111 = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v108 = v10;
  v109 = AssociatedTypeWitness;
  v110 = OpaqueTypeMetadata2;
  v111 = WitnessTable;
  v112 = AssociatedConformanceWitness;
  v15 = type metadata accessor for ForEach();
  v16 = type metadata accessor for Section();
  v17 = swift_getWitnessTable();
  v18 = sub_10009A2EC(&qword_1000DE220, &type metadata accessor for UUID);
  v67 = v9;
  v108 = v9;
  v109 = v75;
  v78 = v16;
  v110 = v16;
  v111 = v17;
  v63[1] = v17;
  v112 = v18;
  v19 = type metadata accessor for ForEach();
  v65 = *(v19 - 8);
  v20 = *(v65 + 64);
  v21 = __chkstk_darwin(v19);
  v23 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v64 = v63 - v24;
  v77 = v15;
  v25 = v68;
  v26 = type metadata accessor for Section();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = __chkstk_darwin(v26);
  v31 = v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v63[0] = v63 - v32;
  v73 = v19;
  v33 = v69;
  v34 = type metadata accessor for _ConditionalContent();
  v71 = *(v34 - 8);
  v72 = v34;
  v35 = *(v71 + 64);
  __chkstk_darwin(v34);
  v76 = v63 - v36;
  v79 = a2;
  v108 = a2;
  v109 = v33;
  v37 = v70;
  v110 = v80;
  v111 = v25;
  v38 = type metadata accessor for SearchableListView(0, &v108);
  v39 = sub_100092B70();
  if (v39)
  {
    __chkstk_darwin(v39);
    v41 = v79;
    v40 = v80;
    v63[-6] = v79;
    v63[-5] = v33;
    v63[-4] = v40;
    v63[-3] = v25;
    v62 = v37;
    v108 = &type metadata for Text;
    v109 = v41;
    v110 = &protocol witness table for Text;
    v111 = v40;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v75 = &protocol conformance descriptor for <> ForEach<A, B, C>;
    v42 = swift_getWitnessTable();
    Section<>.init(content:)();
    v85 = &protocol witness table for EmptyView;
    v86 = v42;
    v87 = &protocol witness table for EmptyView;
    v70 = swift_getWitnessTable();
    v43 = v27[2];
    v44 = v63[0];
    v43(v63[0], v31, v26);
    v45 = v27[1];
    v45(v31, v26);
    v43(v31, v44, v26);
    v82 = &protocol witness table for Text;
    v83 = v42;
    v84 = &protocol witness table for EmptyView;
    v81 = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_10008D0F8(v31, v26);
    v45(v31, v26);
    v45(v44, v26);
  }

  else
  {
    v107 = sub_100092A24(v38);
    v46 = swift_allocObject();
    v48 = v79;
    v47 = v80;
    v46[2] = v79;
    v46[3] = v33;
    v46[4] = v47;
    v46[5] = v25;
    v108 = &type metadata for Text;
    v109 = v48;
    v110 = &protocol witness table for Text;
    v111 = v47;
    v106 = swift_getOpaqueTypeConformance2();
    v70 = swift_getWitnessTable();
    v103 = &protocol witness table for Text;
    v104 = v70;
    v105 = &protocol witness table for EmptyView;
    v69 = &protocol conformance descriptor for <> Section<A, B, C>;
    v49 = swift_getWitnessTable();
    v62 = swift_getWitnessTable();
    ForEach<>.init(_:content:)();
    v102 = v49;
    v50 = v73;
    swift_getWitnessTable();
    v52 = v64;
    v51 = v65;
    v53 = *(v65 + 16);
    v53(v64, v23, v50);
    v54 = *(v51 + 8);
    v54(v23, v50);
    v53(v23, v52, v50);
    v99 = &protocol witness table for EmptyView;
    v100 = v70;
    v101 = &protocol witness table for EmptyView;
    swift_getWitnessTable();
    sub_10008D1F0(v23, v26, v50);
    v54(v23, v50);
    v54(v52, v50);
  }

  v108 = &type metadata for Text;
  v109 = v79;
  v110 = &protocol witness table for Text;
  v111 = v80;
  v98 = swift_getOpaqueTypeConformance2();
  v55 = swift_getWitnessTable();
  v95 = &protocol witness table for EmptyView;
  v96 = v55;
  v97 = &protocol witness table for EmptyView;
  v56 = swift_getWitnessTable();
  v92 = &protocol witness table for Text;
  v93 = v55;
  v94 = &protocol witness table for EmptyView;
  v91 = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  v89 = v56;
  v90 = v57;
  v58 = v72;
  swift_getWitnessTable();
  v59 = v71;
  v60 = v76;
  (*(v71 + 16))(v74, v76, v58);
  return (*(v59 + 8))(v60, v58);
}

uint64_t sub_100094B8C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v30 = a1;
  v31 = a6;
  v28 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = &unk_1000B18E0;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v34 = v28;
  v35 = AssociatedTypeWitness;
  v36 = OpaqueTypeMetadata2;
  v37 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for ForEach();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v25 - v17;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v19 = type metadata accessor for SearchableListView(0, &v34);
  v33 = sub_100092C00(v19);
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = a5;
  v34 = &type metadata for Text;
  v35 = a2;
  v36 = &protocol witness table for Text;
  v37 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:content:)();
  v32 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v22 = v12[2];
  v22(v18, v16, v11);
  v23 = v12[1];
  v23(v16, v11);
  v22(v31, v18, v11);
  return (v23)(v18, v11);
}

uint64_t sub_100094E80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v25[0] = a4;
  v26 = a3;
  v27 = a6;
  v25[1] = &unk_1000B18E0;
  v41 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  v9 = type metadata accessor for Section();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v25 - v15;
  v17 = a1[1];
  v41 = *a1;
  AssociatedTypeWitness = v17;
  sub_100039898();

  v41 = Text.init<A>(_:)();
  AssociatedTypeWitness = v18;
  LOBYTE(OpaqueTypeMetadata2) = v19 & 1;
  WitnessTable = v20;
  v28 = a2;
  v29 = v26;
  v30 = v25[0];
  v31 = a5;
  v32 = a1;
  v37 = &type metadata for Text;
  v38 = a2;
  v39 = &protocol witness table for Text;
  v40 = v25[0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = swift_getWitnessTable();
  Section<>.init(header:content:)();
  v33 = &protocol witness table for Text;
  v34 = v21;
  v35 = &protocol witness table for EmptyView;
  swift_getWitnessTable();
  v22 = v10[2];
  v22(v16, v14, v9);
  v23 = v10[1];
  v23(v14, v9);
  v22(v27, v16, v9);
  return (v23)(v16, v9);
}

uint64_t sub_1000951E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v30 = a3;
  v31 = a6;
  v28 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = &unk_1000B18E0;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v34 = v28;
  v35 = AssociatedTypeWitness;
  v36 = OpaqueTypeMetadata2;
  v37 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for ForEach();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v25 - v17;
  v33 = *(a1 + 16);
  v19 = swift_allocObject();
  v20 = v30;
  v19[2] = a2;
  v19[3] = v20;
  v19[4] = a4;
  v19[5] = a5;

  v34 = &type metadata for Text;
  v35 = a2;
  v36 = &protocol witness table for Text;
  v37 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:content:)();
  v32 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v22 = v12[2];
  v22(v18, v16, v11);
  v23 = v12[1];
  v23(v16, v11);
  v22(v31, v18, v11);
  return (v23)(v18, v11);
}

uint64_t sub_1000954C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v24 = a1;
  v25 = a3;
  v26 = a4;
  v28 = a2;
  v27 = &type metadata for Text;
  v29 = &protocol witness table for Text;
  v30 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v6 = *(OpaqueTypeMetadata2 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(OpaqueTypeMetadata2);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v27 = dispatch thunk of CustomStringConvertible.description.getter();
  v28 = v13;
  sub_100039898();
  v14 = Text.init<A>(_:)();
  v16 = v15;
  v27 = v14;
  v28 = v15;
  v18 = v17 & 1;
  LOBYTE(v29) = v17 & 1;
  v30 = v19;
  sub_100021E70(v24, 1, &type metadata for Text, a2, &protocol witness table for Text);
  sub_1000385F4(v14, v16, v18);

  v20 = v6[2];
  v20(v12, v10, OpaqueTypeMetadata2);
  v21 = v6[1];
  v21(v10, OpaqueTypeMetadata2);
  v20(v26, v12, OpaqueTypeMetadata2);
  return (v21)(v12, OpaqueTypeMetadata2);
}

uint64_t sub_1000956D4(uint64_t a1)
{
  sub_10009A188(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10009A64C(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), sub_10009A188);
  return EnvironmentValues.editMode.setter();
}

uint64_t sub_100095770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v33 = a1;
  v35 = a6;
  sub_10009A288();
  v34 = v10;
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolbarItemPlacement();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  sub_100098BE0();
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v16);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v30 - v23;
  static ToolbarItemPlacement.cancellationAction.getter();
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v25 = v33;
  v45 = v33;
  sub_100098C6C(0, &qword_1000DCE18, &type metadata accessor for Button);
  sub_1000664E8();
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v36 = v30;
  v37 = v31;
  v38 = v32;
  v39 = a5;
  v40 = v25;
  ToolbarItem<>.init(placement:content:)();
  v26 = *(v34 + 48);
  v27 = v18[2];
  v27(v13, v24, v17);
  v27(&v13[v26], v22, v17);
  TupleToolbarContent.init(_:)();
  v28 = v18[1];
  v28(v22, v17);
  return (v28)(v24, v17);
}

uint64_t sub_100095A38(char a1, uint64_t a2)
{
  if (a1)
  {
    v8 = *(v2 + 88);
    v3 = *(a2 + 16);
    v4 = *(a2 + 32);
    type metadata accessor for Set();
    type metadata accessor for State();
    State.wrappedValue.getter();
    sub_100092A94(v7, a2);
  }

  v9 = *(v2 + 64);
  v10 = *(v2 + 80);
  sub_10009A4D4(0, &qword_1000DE590, &type metadata for Bool, &type metadata accessor for Binding);
  return Binding.wrappedValue.setter();
}

uint64_t sub_100095B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  v11 = *(a1 + 112);
  *(v10 + 144) = *(a1 + 96);
  *(v10 + 160) = v11;
  *(v10 + 176) = *(a1 + 128);
  v12 = *(a1 + 48);
  *(v10 + 80) = *(a1 + 32);
  *(v10 + 96) = v12;
  v13 = *(a1 + 80);
  *(v10 + 112) = *(a1 + 64);
  *(v10 + 128) = v13;
  v14 = *(a1 + 16);
  *(v10 + 48) = *a1;
  *(v10 + 64) = v14;
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v15 = type metadata accessor for SearchableListView(0, v17);
  (*(*(v15 - 8) + 16))(v17, a1, v15);
  return Button.init(action:label:)();
}

uint64_t sub_100095C2C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100095C8C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v10 = v2[6];
  v11 = v2[7];
  v12 = *(v2 + 16);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v4 = *v2;
  v5 = v2[1];
  return sub_100092D84(a1, a2);
}

uint64_t sub_100095CE0(uint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3, uint64_t *a4)
{
  v8 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = a2(v8);
    *a1 = v8;
  }

  v10 = *(v8 + 16);
  v12[0] = v8 + 32;
  v12[1] = v10;
  sub_100095D7C(v12, a3, a4);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_100095D7C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100003DDC(0, a2, a3);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = ((v10 & 0xFFFFFFFFFFFFFF8) + 32);
      v12[1] = v9;
      sub_100096014(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return sub_100095E98(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_100095E98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v10 = [v8 identifier];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = [v9 identifier];
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

void sub_100096014(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = &_swiftEmptyArrayStorage;
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
          sub_100096814((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
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
            v110 = sub_100033330(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_1000332A4(v4 - 1);
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
    v107 = sub_100033330(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = &_swiftEmptyArrayStorage;
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
      v15 = [v13 identifier];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = [v14 identifier];
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
          v27 = [v25 identifier];
          v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          v30 = [v26 identifier];
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
      v9 = sub_100031644(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_100031644((v61 > 1), v4 + 1, 1, v9);
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
        sub_100096814((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
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
          v103 = sub_100033330(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_1000332A4(v65);
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
    v49 = [v47 identifier];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = [v48 identifier];
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

uint64_t sub_100096814(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 identifier];
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v41 = [v36 identifier];
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = (v31 - 8);
        }

        else
        {
          v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v4 = (v31 - 8);
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 identifier];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v21 = [v16 identifier];
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * ((v54 - v13) / 8));
  }

  return 1;
}

uint64_t sub_100096C00(uint64_t a1, char a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  Hasher.init(_seed:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v25 = v2;
  v9 = ~v7;
  while (1)
  {
    v10 = *(v4 + 48) + 16 * v8;
    v11 = *v10;
    if (*(v10 + 8))
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else if (a2)
    {
      goto LABEL_3;
    }

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_16;
    }

LABEL_3:
    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_16:
  v19 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v25;
  v26 = *v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100079BBC();
    v21 = v26;
  }

  v22 = *(v21 + 48) + 16 * v8;
  v23 = *v22;
  v24 = *(v22 + 8);
  sub_100096DCC(v8);
  result = v23;
  *v25 = v26;
  return result;
}

unint64_t sub_100096DCC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      v26 = v4;
      do
      {
        v11 = 16 * v6;
        v12 = *(v3 + 40);
        v13 = v3;
        v14 = *(*(v3 + 48) + 16 * v6);
        v15 = v10;
        Hasher.init(_seed:)();
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v2;
        v17 = v14;
        String.hash(into:)();

        v18 = Hasher._finalize()();

        v2 = v16;
        v10 = v15;
        v19 = v18 & v7;
        if (v16 >= v15)
        {
          if (v19 < v15)
          {
            v4 = v26;
            v3 = v13;
          }

          else
          {
            v4 = v26;
            v3 = v13;
            if (v2 >= v19)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v4 = v26;
          v3 = v13;
          if (v19 >= v10 || v2 >= v19)
          {
LABEL_12:
            v20 = *(v3 + 48);
            v21 = (v20 + 16 * v2);
            v22 = (v20 + v11);
            if (16 * v2 != v11 || (v2 = v6, v21 >= v22 + 1))
            {
              *v21 = *v22;
              v2 = v6;
            }
          }
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100096FF0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;
      if (v4 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v6 != v7)
      {
LABEL_11:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_12;
      }

LABEL_10:
      v8 = 1;
LABEL_12:

      return v8 & 1;
    }
  }

  else if ((a4 & 1) == 0)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (v9 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v11 != v12)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t sub_1000970BC()
{
  sub_100099070(0, &qword_1000DE0A8, type metadata accessor for SearchableListSection);
  v49 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v50 = (&v47 - v6);
  v7 = _HKAllCategoryTypes();
  sub_100003DDC(0, &qword_1000DD688, HKCategoryType_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v51 = sub_100079F6C(v8);
  sub_100095CE0(&v51, sub_1000341B0, &qword_1000DD688, HKCategoryType_ptr);

  v9 = v51;
  v47 = v1;
  v48 = v5;
  if (v51 < 0 || (v51 & 0x4000000000000000) != 0)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_16:

    v12 = &_swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v10 = *(v51 + 16);
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_4:
  v51 = &_swiftEmptyArrayStorage;
  sub_10007C51C(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  v11 = 0;
  v12 = v51;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v13 = *(v9 + 8 * v11 + 32);
    }

    v14 = v13;
    v15 = [v13 identifier];
    if (!v15)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = String._bridgeToObjectiveC()();
    }

    v51 = v12;
    v17 = v12[2];
    v16 = v12[3];
    if (v17 >= v16 >> 1)
    {
      sub_10007C51C((v16 > 1), v17 + 1, 1);
      v12 = v51;
    }

    ++v11;
    v12[2] = v17 + 1;
    v18 = &v12[2 * v17];
    v18[4] = v15;
    *(v18 + 40) = 0;
  }

  while (v10 != v11);

LABEL_17:
  v19 = static HKSampleDataCodingConstants.categoryTypeIdentifierPrefix.getter();
  v20 = v49;
  v21 = v50;
  *v50 = v19;
  v21[1] = v22;
  v21[2] = v12;
  v23 = v21 + *(v20 + 56);
  UUID.init()();
  v24 = _HKAllQuantityTypes();
  sub_100003DDC(0, &qword_1000DD670, HKQuantityType_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v51 = sub_100079F40(v25);
  sub_100095CE0(&v51, sub_1000341B0, &qword_1000DD670, HKQuantityType_ptr);

  v26 = v51;
  if ((v51 & 0x8000000000000000) == 0 && (v51 & 0x4000000000000000) == 0)
  {
    v27 = *(v51 + 16);
    if (v27)
    {
      goto LABEL_20;
    }

LABEL_32:

    v29 = &_swiftEmptyArrayStorage;
LABEL_33:
    v36 = static HKSampleDataCodingConstants.quantityTypeIdentifierPrefix.getter();
    v38 = v48;
    v37 = v49;
    *v48 = v36;
    *(v38 + 8) = v39;
    *(v38 + 16) = v29;
    v40 = v38 + *(v37 + 56);
    UUID.init()();
    sub_1000976C4(0, qword_1000DE0C0, &type metadata accessor for _ContiguousArrayStorage);
    v41 = *(v47 + 72);
    v42 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1000AE110;
    v44 = v43 + v42;
    v45 = v50;
    sub_100097740(v50, v44);
    sub_1000977C0(v38, v44 + v41);
    sub_100097840(v45, &qword_1000DE0A8, type metadata accessor for SearchableListSection);
    return v43;
  }

  v27 = _CocoaArrayWrapper.endIndex.getter();
  if (!v27)
  {
    goto LABEL_32;
  }

LABEL_20:
  v51 = &_swiftEmptyArrayStorage;
  sub_10007C51C(0, v27 & ~(v27 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v28 = 0;
    v29 = v51;
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v30 = *(v26 + 8 * v28 + 32);
      }

      v31 = v30;
      v32 = [v30 identifier];
      if (!v32)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = String._bridgeToObjectiveC()();
      }

      v51 = v29;
      v34 = v29[2];
      v33 = v29[3];
      if (v34 >= v33 >> 1)
      {
        sub_10007C51C((v33 > 1), v34 + 1, 1);
        v29 = v51;
      }

      ++v28;
      v29[2] = v34 + 1;
      v35 = &v29[2 * v34];
      v35[4] = v32;
      *(v35 + 40) = 1;
    }

    while (v27 != v28);

    goto LABEL_33;
  }

LABEL_35:
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_100097604()
{
  result = qword_1000DE0B0;
  if (!qword_1000DE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE0B0);
  }

  return result;
}

unint64_t sub_100097658()
{
  result = qword_1000DE0B8;
  if (!qword_1000DE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE0B8);
  }

  return result;
}

void sub_1000976C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_100099070(255, &qword_1000DE0A8, type metadata accessor for SearchableListSection);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_100097740(uint64_t a1, uint64_t a2)
{
  sub_100099070(0, &qword_1000DE0A8, type metadata accessor for SearchableListSection);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000977C0(uint64_t a1, uint64_t a2)
{
  sub_100099070(0, &qword_1000DE0A8, type metadata accessor for SearchableListSection);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100097840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  sub_100099070(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000978A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for Array();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100097970(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100097984(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000979CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_100097A54()
{
  sub_100003DDC(319, &qword_1000DC680, HKHealthStore_ptr);
  if (v0 <= 0x3F)
  {
    sub_10009A224(319, &qword_1000DE1C0, sub_100028CB0, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10009A224(319, &qword_1000DE1C8, sub_10008CBA4, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_10009A224(319, &qword_1000DE148, &type metadata accessor for Date, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_100099270(319, &unk_1000DE1D0, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_10009A4D4(319, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_10009A224(319, &qword_1000DE150, sub_10008CB70, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_100097CB8()
{
  result = qword_1000DE228;
  if (!qword_1000DE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE228);
  }

  return result;
}

void sub_100097D30()
{
  if (!qword_1000DE230)
  {
    sub_100097F38();
    sub_100098FD0();
    sub_1000980A4();
    sub_100098ADC();
    sub_100098190();
    sub_100098244();
    sub_10009A2EC(&qword_1000DE320, sub_100098244);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10009A2EC(&qword_1000DE388, sub_100098ADC);
    swift_getOpaqueTypeConformance2();
    sub_100099070(255, &qword_1000DE398, type metadata accessor for SearchableListView);
    sub_100099114();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DE230);
    }
  }
}

void sub_100097F38()
{
  if (!qword_1000DE238)
  {
    sub_1000980A4();
    sub_100098ADC();
    sub_100098190();
    sub_100098244();
    sub_10009A2EC(&qword_1000DE320, sub_100098244);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10009A2EC(&qword_1000DE388, sub_100098ADC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DE238);
    }
  }
}

void sub_1000980A4()
{
  if (!qword_1000DE240)
  {
    sub_100098190();
    sub_100098244();
    sub_10009A2EC(&qword_1000DE320, sub_100098244);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DE240);
    }
  }
}

void sub_100098190()
{
  if (!qword_1000DE248)
  {
    sub_100098244();
    sub_10009A2EC(&qword_1000DE320, sub_100098244);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DE248);
    }
  }
}

void sub_100098244()
{
  if (!qword_1000DE250)
  {
    sub_1000982D8(255);
    sub_10009A2EC(&qword_1000DE318, sub_1000982D8);
    v0 = type metadata accessor for Form();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DE250);
    }
  }
}

void sub_10009830C()
{
  if (!qword_1000DE260)
  {
    sub_1000989E4(255, &qword_1000DE268, sub_100098400);
    sub_1000989E4(255, &qword_1000DE2E8, sub_100098930);
    sub_1000989E4(255, &qword_1000DE308, sub_100098A50);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000DE260);
    }
  }
}

void sub_100098400()
{
  if (!qword_1000DE270)
  {
    sub_100098B64(255, &qword_1000DE278, sub_100098488, sub_100098648);
    v0 = type metadata accessor for TupleView();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DE270);
    }
  }
}

void sub_100098488()
{
  if (!qword_1000DE280)
  {
    sub_10009A4D4(255, &qword_1000DE288, &type metadata for HKDataType, &type metadata accessor for Array);
    sub_100098548();
    sub_1000988B4();
    sub_10007AF48();
    v0 = type metadata accessor for ForEach();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DE280);
    }
  }
}

void sub_100098548()
{
  if (!qword_1000DE290)
  {
    sub_1000985E0();
    sub_1000987D4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DE290);
    }
  }
}

void sub_1000985E0()
{
  if (!qword_1000DE298)
  {
    sub_100098648();
    sub_100098758();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DE298);
    }
  }
}

void sub_100098648()
{
  if (!qword_1000DE2A0)
  {
    sub_1000986DC();
    sub_10009A2EC(&qword_1000DE2B0, sub_1000986DC);
    v0 = type metadata accessor for Button();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DE2A0);
    }
  }
}

void sub_1000986DC()
{
  if (!qword_1000DE2A8)
  {
    v0 = type metadata accessor for Label();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DE2A8);
    }
  }
}

void sub_100098758()
{
  if (!qword_1000DE2B8)
  {
    sub_10009A4D4(255, &qword_1000DE2C0, &type metadata for AnyShapeStyle, &type metadata accessor for Optional);
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DE2B8);
    }
  }
}

unint64_t sub_1000987D4()
{
  result = qword_1000DE2C8;
  if (!qword_1000DE2C8)
  {
    sub_1000985E0();
    sub_10009A2EC(&qword_1000DE2D0, sub_100098648);
    sub_10009A2EC(&qword_1000DE2D8, sub_100098758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE2C8);
  }

  return result;
}

unint64_t sub_1000988B4()
{
  result = qword_1000DE2E0;
  if (!qword_1000DE2E0)
  {
    sub_10009A4D4(255, &qword_1000DE288, &type metadata for HKDataType, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE2E0);
  }

  return result;
}

void sub_100098964()
{
  if (!qword_1000DE2F8)
  {
    sub_100098C6C(255, &qword_1000DE300, &type metadata accessor for DatePicker);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DE2F8);
    }
  }
}

void sub_1000989E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Section();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100098A50()
{
  if (!qword_1000DE310)
  {
    sub_100098648();
    sub_10009A4D4(255, &qword_1000DCE20, &type metadata for Bool, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DE310);
    }
  }
}

void sub_100098ADC()
{
  if (!qword_1000DE328)
  {
    sub_100098B64(255, &qword_1000DE330, sub_100098BE0, sub_100098CCC);
    v0 = type metadata accessor for TupleToolbarContent();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DE328);
    }
  }
}

void sub_100098B64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_100098BE0()
{
  if (!qword_1000DE338)
  {
    sub_100098C6C(255, &qword_1000DCE18, &type metadata accessor for Button);
    sub_1000664E8();
    v0 = type metadata accessor for ToolbarItem();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DE338);
    }
  }
}

void sub_100098C6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Text, &protocol witness table for Text);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100098D00()
{
  if (!qword_1000DE348)
  {
    sub_100098DB4();
    sub_10009A2EC(&qword_1000DE380, sub_100098DB4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DE348);
    }
  }
}

void sub_100098DB4()
{
  if (!qword_1000DE350)
  {
    sub_100098E54();
    sub_10009A2EC(&qword_1000DE378, sub_100098E54);
    v0 = type metadata accessor for ToolbarItem();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DE350);
    }
  }
}

void sub_100098E54()
{
  if (!qword_1000DE358)
  {
    sub_100098F9C(255);
    sub_1000986DC();
    sub_10009A2EC(&qword_1000DE368, sub_100098F9C);
    sub_10009A2EC(&qword_1000DE2B0, sub_1000986DC);
    sub_10009A2EC(&qword_1000DE370, &type metadata accessor for URL);
    v0 = type metadata accessor for ShareLink();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DE358);
    }
  }
}

void sub_100098FD0()
{
  if (!qword_1000DE390)
  {
    sub_100099070(255, &qword_1000DE398, type metadata accessor for SearchableListView);
    sub_100099114();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DE390);
    }
  }
}

void sub_100099070(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for HKDataType;
    v8[1] = sub_100097604();
    v8[2] = sub_10007AF48();
    v8[3] = sub_100097658();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_100099114()
{
  result = qword_1000DE3A0;
  if (!qword_1000DE3A0)
  {
    sub_100099070(255, &qword_1000DE398, type metadata accessor for SearchableListView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE3A0);
  }

  return result;
}

uint64_t sub_100099198(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100099200()
{
  v1 = *(type metadata accessor for ExportDatasetView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000907F0(v2);
}

void sub_100099270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1000976C4(255, &qword_1000DE0A0, &type metadata accessor for Array);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1000992FC()
{
  v1 = type metadata accessor for ExportDatasetView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + 8);
  if (v5)
  {
    v6 = *(v4 + 16);
    return v5();
  }

  return result;
}

unint64_t sub_100099380()
{
  result = qword_1000DE3C8;
  if (!qword_1000DE3C8)
  {
    sub_100098A50();
    sub_10009A2EC(&qword_1000DE2D0, sub_100098648);
    sub_10006655C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE3C8);
  }

  return result;
}

uint64_t sub_100099430()
{
  v1 = *(type metadata accessor for ExportDatasetView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_10008F6C4();
}

uint64_t sub_1000994B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ExportDatasetView(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SampleExporter(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100018D6C;

  return sub_100090DB8(a1, v10, v11, v1 + v6);
}

void sub_100099604(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003DDC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_10009968C()
{
  result = qword_1000DE3D8;
  if (!qword_1000DE3D8)
  {
    sub_100099604(255, &qword_1000DE3D0, &qword_1000DB718, HKSample_ptr, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE3D8);
  }

  return result;
}

void sub_100099710()
{
  if (!qword_1000DE3E0)
  {
    sub_100099604(255, &qword_1000DE3E8, &qword_1000DB718, HKSample_ptr, &type metadata accessor for HKSamplePredicate);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DE3E0);
    }
  }
}

uint64_t sub_1000997C8(uint64_t *a1)
{
  v2 = *(*(type metadata accessor for ExportDatasetView(0) - 8) + 80);

  return sub_10008E728(a1);
}

uint64_t sub_100099848()
{
  v1 = type metadata accessor for ExportDatasetView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v27 = *(*(v1 - 1) + 64);
  v4 = (v0 + v3);

  if (*(v0 + v3 + 8))
  {
    v5 = v4[2];
  }

  v6 = v4[3];

  v7 = v4[4];

  v8 = v4 + v1[7];
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 8);
  v10(v8, v9);
  sub_10009A224(0, &qword_1000DE148, &type metadata accessor for Date, &type metadata accessor for State);
  v12 = v11;
  v13 = *&v8[*(v11 + 28)];

  v14 = v4 + v1[8];
  v10(v14, v9);
  v15 = *&v14[*(v12 + 28)];

  v16 = (v4 + v1[9]);
  v17 = *v16;

  v18 = v16[1];

  v19 = *(v4 + v1[10] + 8);

  v20 = *(v4 + v1[11] + 8);

  v21 = v4 + v1[12];
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v21, 1, v22))
  {
    (*(v23 + 8))(v21, v22);
  }

  sub_10009A224(0, &qword_1000DE150, sub_10008CB70, &type metadata accessor for State);
  v25 = *&v21[*(v24 + 28)];

  return _swift_deallocObject(v0, v3 + v27, v2 | 7);
}

uint64_t sub_100099AE0()
{
  v1 = *(type metadata accessor for ExportDatasetView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10008ECD4(v2);
}

uint64_t sub_100099B4C()
{
  v1 = *(type metadata accessor for ExportDatasetView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_10008EB88(v0 + v2, v4, v5);
}

void sub_100099BE0(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

unint64_t sub_100099BF4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

void sub_100099CCC()
{
  sub_100099604(319, &qword_1000DE480, &qword_1000DE488, HKSampleType_ptr, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DateInterval();
    if (v1 <= 0x3F)
    {
      sub_100003DDC(319, &qword_1000DC680, HKHealthStore_ptr);
      if (v2 <= 0x3F)
      {
        sub_100003DDC(319, &unk_1000DE490, NSFileManager_ptr);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100099DCC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100099E14(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_100099E48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_100099E90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100099EF0()
{
  if (!qword_1000DE550)
  {
    sub_100097D30();
    sub_100097F38();
    sub_100098FD0();
    sub_1000980A4();
    sub_100098ADC();
    sub_100098190();
    sub_100098244();
    sub_10009A2EC(&qword_1000DE320, sub_100098244);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10009A2EC(&qword_1000DE388, sub_100098ADC);
    swift_getOpaqueTypeConformance2();
    sub_100099070(255, &qword_1000DE398, type metadata accessor for SearchableListView);
    sub_100099114();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for NavigationView();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DE550);
    }
  }
}

uint64_t sub_10009A110(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_10009A224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10009A288()
{
  if (!qword_1000DE578)
  {
    sub_100098BE0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DE578);
    }
  }
}

uint64_t sub_10009A2EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009A37C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10009A48C()
{
  v1 = *(v0 + 32);
  v4[0] = *(v0 + 16);
  v4[1] = v1;
  v2 = type metadata accessor for SearchableListView(0, v4);
  return sub_100095A38(1, v2);
}

void sub_10009A4D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10009A524()
{
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  v9 = v0[15];

  v10 = v0[17];

  v11 = v0[18];

  v12 = v0[20];

  v13 = v0[21];

  v14 = v0[22];

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_10009A5C4()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = v1;
  type metadata accessor for SearchableListView(0, &v3);
  v3 = *(v0 + 112);
  LOBYTE(v4) = *(v0 + 128);
  v5 = 0;
  sub_10009A4D4(0, &qword_1000DE590, &type metadata for Bool, &type metadata accessor for Binding);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10009A64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009A6D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[5];
  return sub_1000954C4(a1, v2[2], v2[4], a2);
}

uint64_t sub_10009A6F8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_100092CA0(a1, v1[6]) & 1;
}

id sub_10009A8FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityIndicatorTitleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10009A9B8(char a1)
{
  v2 = type metadata accessor for NotificationAuthorizationAnalyticsEvent.SelectedAction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NotificationAuthorizationAnalyticsEvent.Context();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NotificationAuthorizationAnalyticsEvent();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for NotificationAuthorizationAnalyticsEvent.Context.healthAppOnboarding(_:), v7);
  v17 = &enum case for NotificationAuthorizationAnalyticsEvent.SelectedAction.allowNotifications(_:);
  if ((a1 & 1) == 0)
  {
    v17 = &enum case for NotificationAuthorizationAnalyticsEvent.SelectedAction.doNotAllowNotifications(_:);
  }

  (*(v3 + 104))(v6, *v17, v2);
  NotificationAuthorizationAnalyticsEvent.init(context:featureDomain:featureName:selectedAction:)();
  v18 = type metadata accessor for AnalyticsSender();
  v19 = static AnalyticsSender.shared.getter();
  v22[3] = v18;
  v22[4] = &protocol witness table for AnalyticsSender;
  v22[0] = v19;
  sub_10009AC48();
  AnalyticsSubmitting.submit(sender:)();
  (*(v13 + 8))(v16, v12);
  return sub_100003B90(v22);
}

unint64_t sub_10009AC48()
{
  result = qword_1000DE5D0;
  if (!qword_1000DE5D0)
  {
    type metadata accessor for NotificationAuthorizationAnalyticsEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE5D0);
  }

  return result;
}

uint64_t sub_10009ACA0(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 dateFromString:v11];

  if (v12)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v9, v7, v2);
    v13 = [objc_allocWithZone(NSDateFormatter) init];
    [v13 setDateStyle:1];
    [v13 setTimeStyle:1];
    isa = Date._bridgeToObjectiveC()().super.isa;
    v15 = [v13 stringFromDate:isa];

    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v3 + 8))(v9, v2);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_10009AEB8()
{
  v80 = type metadata accessor for SectionedDataSourceContainerViewType();
  v0 = *(v80 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v80);
  v79 = v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009BE7C(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v78 = v57 - v5;
  v77 = type metadata accessor for CellDeselectionBehavior();
  v6 = *(v77 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v77);
  v76 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009BE7C(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v75 = v57 - v11;
  v74 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v12 = *(v74 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v74);
  v73 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for UICellAccessory.DisplayedState();
  v15 = *(v72 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v72);
  v71 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for UUID();
  v18 = *(v84 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v84);
  v83 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for ContentConfigurationItem();
  v21 = *(v70 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v70);
  v24 = v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = _swiftEmptyArrayStorage;
  sub_10007C53C(0, 24, 0);
  v25 = v90;
  v67 = objc_opt_self();
  v66 = 0x80000001000AB200;
  v82 = (v18 + 8);
  v65 = enum case for UICellAccessory.DisplayedState.always(_:);
  v64 = (v15 + 104);
  v63 = (v12 + 8);
  v62 = (v15 + 8);
  v61 = enum case for CellDeselectionBehavior.default(_:);
  v60 = (v6 + 104);
  v59 = enum case for SectionedDataSourceContainerViewType.collectionView(_:);
  v58 = (v0 + 104);
  v69 = v21;
  v57[2] = v21 + 32;
  v26 = &stru_100000020;
  v81 = xmmword_1000AE100;
  v27 = v71;
  do
  {
    v28 = *(&off_1000CC230 + v26);
    sub_100009238(v28);
    v87 = swift_allocObject();
    *(v87 + 16) = v28;
    v29 = v83;
    UUID.init()();
    v30 = UUID.uuidString.getter();
    v85 = v31;
    v86 = v30;
    v68 = *v82;
    v68(v29, v84);
    v89[3] = type metadata accessor for UIListContentConfiguration();
    v89[4] = &protocol witness table for UIListContentConfiguration;
    sub_10000AD4C(v89);
    static UIListContentConfiguration.cell()();

    UIListContentConfiguration.text.setter();
    v32 = [v67 labelColor];
    v33 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v33(v88, 0);
    sub_10009BE7C(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
    v34 = *(type metadata accessor for UICellAccessory() - 8);
    v35 = *(v34 + 72);
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    *(swift_allocObject() + 16) = v81;
    v37 = v72;
    (*v64)(v27, v65, v72);
    v38 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v38 - 8) + 56))(v75, 1, 1, v38);
    v39 = v24;
    v40 = v73;
    UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.disclosureIndicator(displayed:options:)();
    v41 = v40;
    v24 = v39;
    (*v63)(v41, v74);
    (*v62)(v27, v37);

    (*v60)(v76, v61, v77);
    v42 = type metadata accessor for UIBackgroundConfiguration();
    (*(*(v42 - 8) + 56))(v78, 1, 1, v42);
    (*v58)(v79, v59, v80);
    ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
    v90 = v25;
    v44 = *(v25 + 16);
    v43 = *(v25 + 24);
    if (v44 >= v43 >> 1)
    {
      sub_10007C53C(v43 > 1, v44 + 1, 1);
      v25 = v90;
    }

    *(v25 + 16) = v44 + 1;
    (*(v69 + 32))(v25 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v44, v39, v70);
    v26 += 8;
  }

  while (v26 != 224);
  sub_10009BE7C(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v45 = *(type metadata accessor for ArrayDataSourceSection() - 8);
  v46 = *(v45 + 72);
  v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  *(swift_allocObject() + 16) = v81;
  sub_10009C004(v25);

  v48 = v83;
  UUID.init()();
  UUID.uuidString.getter();
  v49 = v84;
  v50 = v68;
  v68(v48, v84);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v89[0] = 0x3C53447961727241;
  v89[1] = 0xE800000000000000;
  UUID.init()();
  v51 = UUID.uuidString.getter();
  v53 = v52;
  v50(v48, v49);
  v54._countAndFlagsBits = v51;
  v54._object = v53;
  String.append(_:)(v54);

  v55._countAndFlagsBits = 62;
  v55._object = 0xE100000000000000;
  String.append(_:)(v55);
  return ArrayDataSource.init(arrangedSections:identifier:)();
}

uint64_t sub_10009B9C8(void *a1)
{
  v2 = type metadata accessor for HKTypeGroup();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  result = UIViewController.resolvedHealthStore.getter();
  if (result)
  {
    v11 = result;
    static HKTypeGroup.typeGroup(for:)();
    (*(v3 + 16))(v7, v9, v2);
    v12 = v11;
    UIViewController.resolvedHealthExperienceStore.getter();
    UIViewController.resolvedPinnedContentManager.getter();
    v13 = objc_allocWithZone(type metadata accessor for CategoryViewController());
    v14 = CategoryViewController.init(typeGroup:healthStore:healthExperienceStore:pinnedContentManager:)();
    [a1 showViewController:v14 sender:0];

    return (*(v3 + 8))(v9, v2);
  }

  return result;
}

unint64_t sub_10009BBBC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_getWitnessTable();
  return sub_100029354(a1);
}

uint64_t sub_10009BC38(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return sub_1000290E4(a1, a2, WitnessTable);
}

unint64_t sub_10009BCAC()
{
  result = qword_1000DE5D8;
  if (!qword_1000DE5D8)
  {
    sub_10009BE7C(255, &qword_1000DE5E0, type metadata accessor for HKDisplayCategoryIdentifier, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE5D8);
  }

  return result;
}

uint64_t type metadata accessor for CategoryDataSource()
{
  result = qword_1000DE5E8;
  if (!qword_1000DE5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009BDC8(uint64_t a1)
{
  *(a1 + 8) = sub_10009BE30(&qword_1000DE638);
  result = sub_10009BE30(&qword_1000DE640);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_10009BE30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CategoryDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10009BE7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10009BEE0(void *a1)
{
  swift_getObjectType();
  v4 = dispatch thunk of PluginInternalSettingsProviding.makeInternalSettingsViewController()();
  v2 = [a1 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 pushViewController:v4 animated:1];
  }
}

uint64_t type metadata accessor for ContentKindDataSource()
{
  result = qword_1000DE648;
  if (!qword_1000DE648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10009C004(uint64_t a1)
{
  v2 = type metadata accessor for ContentConfigurationItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v22 = _swiftEmptyArrayStorage;
    sub_10007C55C(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_10007C55C((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = sub_10009D488(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem);
      v15 = sub_10000AD4C(&v19);
      v10(v15, v6, v2);
      v8 = v22;
      v22[2] = v14 + 1;
      sub_100014D24(&v19, &v8[5 * v14 + 4]);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void *sub_10009C1FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_10007C55C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_10000ACE8(v4, v16);
      sub_100009630(0, &qword_1000DB6D0);
      sub_100009630(0, &qword_1000DAC08);
      swift_dynamicCast();
      v20 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10007C55C((v5 > 1), v6 + 1, 1);
      }

      v7 = v18;
      v8 = v19;
      v9 = sub_1000190A0(v17, v18);
      v10 = *(*(v7 - 8) + 64);
      __chkstk_darwin(v9);
      v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v13 + 16))(v12);
      sub_10009D534(v6, v12, &v20, v7, v8);
      sub_100003B90(v17);
      v2 = v20;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_10009C3DC()
{
  v108 = type metadata accessor for SectionedDataSourceContainerViewType();
  v114 = *(v108 - 8);
  v0 = *(v114 + 64);
  __chkstk_darwin(v108);
  v107 = v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009D4D0(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v106 = v71 - v4;
  v105 = type metadata accessor for CellDeselectionBehavior();
  v5 = *(v105 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v105);
  v104 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009D4D0(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v103 = v71 - v10;
  v102 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v11 = *(v102 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v102);
  v101 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for UICellAccessory.DisplayedState();
  v14 = *(v100 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v100);
  v99 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for UUID();
  v17 = *(v110 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v110);
  v109 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for ContentConfigurationItem();
  v20 = *(v98 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v98);
  v23 = v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for ContentKind();
  v24 = *(v97 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v97);
  v96 = v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v95 = v71 - v27;
  v28 = static ContentKind.allCases.getter();
  v29 = &unk_1000AE000;
  if (*(v28 + 16))
  {
    v115 = *(v28 + 16);
    v30 = v28;
    v91 = objc_opt_self();
    v32 = *(v24 + 16);
    v31 = v24 + 16;
    v90 = v32;
    v33 = *(v31 + 64);
    v71[1] = v30;
    v34 = v30 + ((v33 + 32) & ~v33);
    v88 = *(v31 + 56);
    v89 = v33;
    v87 = (v33 + 16) & ~v33;
    v86 = v87 + v25;
    v85 = (v31 + 16);
    v84 = (v17 + 8);
    v83 = enum case for UICellAccessory.DisplayedState.always(_:);
    v82 = (v14 + 104);
    v81 = (v11 + 8);
    v80 = (v14 + 8);
    v79 = enum case for CellDeselectionBehavior.default(_:);
    v78 = (v5 + 104);
    v77 = enum case for SectionedDataSourceContainerViewType.collectionView(_:);
    v76 = (v114 + 104);
    v92 = v31;
    v75 = (v31 - 8);
    v74 = v20 + 32;
    v35 = _swiftEmptyArrayStorage;
    v73 = xmmword_1000AE100;
    v94 = v17;
    v93 = v20;
    v72 = v23;
    v36 = v99;
    do
    {
      v37 = v95;
      v114 = v34;
      v38 = v97;
      v39 = v90;
      (v90)(v95);
      v40 = v96;
      v39(v96, v37, v38);
      String.init<A>(describing:)();
      v39(v40, v37, v38);
      v113 = swift_allocObject();
      (*v85)(v113 + v87, v40, v38);
      v41 = v109;
      UUID.init()();
      v42 = UUID.uuidString.getter();
      v111 = v43;
      v112 = v42;
      (*v84)(v41, v110);
      v117[3] = type metadata accessor for UIListContentConfiguration();
      v117[4] = &protocol witness table for UIListContentConfiguration;
      sub_10000AD4C(v117);
      static UIListContentConfiguration.cell()();

      UIListContentConfiguration.text.setter();
      v44 = [v91 labelColor];
      v45 = UIListContentConfiguration.textProperties.modify();
      UIListContentConfiguration.TextProperties.color.setter();
      v45(v116, 0);
      sub_10009D4D0(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
      v46 = *(type metadata accessor for UICellAccessory() - 8);
      v47 = *(v46 + 72);
      v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      *(swift_allocObject() + 16) = v73;
      v49 = v35;
      v50 = v100;
      (*v82)(v36, v83, v100);
      v51 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v51 - 8) + 56))(v103, 1, 1, v51);
      v52 = v101;
      UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
      static UICellAccessory.disclosureIndicator(displayed:options:)();
      (*v81)(v52, v102);
      v53 = v50;
      v35 = v49;
      (*v80)(v36, v53);

      (*v78)(v104, v79, v105);
      v54 = type metadata accessor for UIBackgroundConfiguration();
      (*(*(v54 - 8) + 56))(v106, 1, 1, v54);
      (*v76)(v107, v77, v108);
      v55 = v72;
      ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
      (*v75)(v37, v38);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_100031774(0, v49[2] + 1, 1, v49);
      }

      v57 = v35[2];
      v56 = v35[3];
      v17 = v94;
      v58 = v93;
      if (v57 >= v56 >> 1)
      {
        v35 = sub_100031774(v56 > 1, v57 + 1, 1, v35);
      }

      v35[2] = v57 + 1;
      (*(v58 + 32))(v35 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v57, v55, v98);
      v34 = v114 + v88;
      --v115;
    }

    while (v115);

    v29 = &unk_1000AE000;
  }

  else
  {

    v35 = _swiftEmptyArrayStorage;
  }

  sub_10009D4D0(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v59 = *(type metadata accessor for ArrayDataSourceSection() - 8);
  v60 = *(v59 + 72);
  v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  *(swift_allocObject() + 16) = v29[16];
  sub_10009C004(v35);

  v62 = v109;
  UUID.init()();
  UUID.uuidString.getter();
  v63 = *(v17 + 8);
  v64 = v110;
  v63(v62, v110);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v117[0] = 0x3C53447961727241;
  v117[1] = 0xE800000000000000;
  UUID.init()();
  v65 = UUID.uuidString.getter();
  v67 = v66;
  v63(v62, v64);
  v68._countAndFlagsBits = v65;
  v68._object = v67;
  String.append(_:)(v68);

  v69._countAndFlagsBits = 62;
  v69._object = 0xE100000000000000;
  String.append(_:)(v69);
  return ArrayDataSource.init(arrangedSections:identifier:)();
}

void sub_10009D0F8(void *a1, uint64_t a2)
{
  sub_10009D4D0(0, &qword_1000DBAA8, &type metadata accessor for ContentKind, &type metadata accessor for _ContiguousArrayStorage);
  v4 = type metadata accessor for ContentKind();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000AE100;
  (*(v5 + 16))(v8 + v7, a2, v4);
  v9 = objc_allocWithZone(type metadata accessor for InternalFeedItemListViewController());
  v10 = InternalFeedItemListViewController.init(contentKinds:)();
  [a1 showViewController:v10 sender:0];
}

unint64_t sub_10009D2B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_getWitnessTable();
  return sub_100029354(a1);
}

uint64_t sub_10009D334(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return sub_1000290E4(a1, a2, WitnessTable);
}

uint64_t sub_10009D394(uint64_t a1)
{
  *(a1 + 8) = sub_10009D488(&qword_1000DE698, type metadata accessor for ContentKindDataSource);
  result = sub_10009D488(&qword_1000DE6A0, type metadata accessor for ContentKindDataSource);
  *(a1 + 24) = result;
  return result;
}

void sub_10009D418(void *a1)
{
  v3 = *(type metadata accessor for ContentKind() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_10009D0F8(a1, v4);
}

uint64_t sub_10009D488(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10009D4D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10009D534(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_10000AD4C(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100014D24(&v12, v10 + 40 * a1 + 32);
}

uint64_t type metadata accessor for AllFeedItemsDataSource()
{
  result = qword_1000DE6A8;
  if (!qword_1000DE6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009D658()
{
  v0 = type metadata accessor for SectionedDataSourceContainerViewType();
  v61 = *(v0 - 8);
  v62 = v0;
  v1 = *(v61 + 64);
  __chkstk_darwin(v0);
  v60 = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009E288(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v59 = v46 - v5;
  v6 = type metadata accessor for CellDeselectionBehavior();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  __chkstk_darwin(v6);
  v56 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009E288(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v52 = v46 - v11;
  v12 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v54 = *(v12 - 8);
  v55 = v12;
  v13 = *(v54 + 64);
  __chkstk_darwin(v12);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for UICellAccessory.DisplayedState();
  v16 = *(v50 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v50);
  v19 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UUID();
  v47 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009E288(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v25 = *(type metadata accessor for ArrayDataSourceSection() - 8);
  v26 = *(v25 + 72);
  v53 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v51 = swift_allocObject();
  v63 = xmmword_1000AE100;
  *(v51 + 16) = xmmword_1000AE100;
  sub_10009E288(0, &qword_1000DAC00, sub_1000199DC, &type metadata accessor for _ContiguousArrayStorage);
  v27 = swift_allocObject();
  *(v27 + 16) = v63;
  *(v27 + 56) = type metadata accessor for ContentConfigurationItem();
  *(v27 + 64) = sub_10009E240(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem);
  v46[2] = sub_10000AD4C((v27 + 32));
  UUID.init()();
  v46[1] = UUID.uuidString.getter();
  v46[0] = v28;
  v29 = *(v21 + 8);
  v48 = v21 + 8;
  v49 = v29;
  v29(v24, v20);
  v65[3] = type metadata accessor for UIListContentConfiguration();
  v65[4] = &protocol witness table for UIListContentConfiguration;
  sub_10000AD4C(v65);
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.text.setter();
  v30 = [objc_opt_self() labelColor];
  v31 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v31(v64, 0);
  sub_10009E288(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
  v32 = *(type metadata accessor for UICellAccessory() - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  *(swift_allocObject() + 16) = v63;
  v35 = v50;
  (*(v16 + 104))(v19, enum case for UICellAccessory.DisplayedState.always(_:), v50);
  v36 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v36 - 8) + 56))(v52, 1, 1, v36);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v54 + 8))(v15, v55);
  (*(v16 + 8))(v19, v35);
  (*(v57 + 104))(v56, enum case for CellDeselectionBehavior.default(_:), v58);
  v37 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v37 - 8) + 56))(v59, 1, 1, v37);
  (*(v61 + 104))(v60, enum case for SectionedDataSourceContainerViewType.collectionView(_:), v62);
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
  UUID.init()();
  UUID.uuidString.getter();
  v38 = v47;
  v39 = v49;
  v49(v24, v47);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v65[0] = 0x3C53447961727241;
  v65[1] = 0xE800000000000000;
  UUID.init()();
  v40 = UUID.uuidString.getter();
  v42 = v41;
  v39(v24, v38);
  v43._countAndFlagsBits = v40;
  v43._object = v42;
  String.append(_:)(v43);

  v44._countAndFlagsBits = 62;
  v44._object = 0xE100000000000000;
  String.append(_:)(v44);
  return ArrayDataSource.init(arrangedSections:identifier:)();
}

void sub_10009DF70(void *a1)
{
  type metadata accessor for DiskHealthExperienceStore();
  static DiskHealthExperienceStore.shared.getter();
  v2 = type metadata accessor for AllFeedItemsListDataSourceProvider();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  AllFeedItemsListDataSourceProvider.init(for:)();
  dispatch thunk of AllFeedItemsListDataSourceProvider.selectedDataSources(for:)();
  v5 = type metadata accessor for CompoundSectionedDataSource();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  CompoundSectionedDataSource.init(_:)();
  v8 = objc_allocWithZone(type metadata accessor for CompoundDataSourceCollectionViewController());

  v9 = CompoundDataSourceCollectionViewController.init(dataSource:)();
  [a1 showViewController:v9 sender:0];
}

unint64_t sub_10009E0E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_getWitnessTable();
  return sub_100029354(a1);
}

uint64_t sub_10009E15C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return sub_1000290E4(a1, a2, WitnessTable);
}

uint64_t sub_10009E1BC(uint64_t a1)
{
  *(a1 + 8) = sub_10009E240(&qword_1000DE6F8, type metadata accessor for AllFeedItemsDataSource);
  result = sub_10009E240(&qword_1000DE700, type metadata accessor for AllFeedItemsDataSource);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_10009E240(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10009E288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for UserDefaultsDataSource()
{
  result = qword_1000DE708;
  if (!qword_1000DE708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009E378()
{
  v0 = type metadata accessor for SectionedDataSourceContainerViewType();
  v38 = *(v0 - 8);
  v39 = v0;
  v1 = *(v38 + 64);
  __chkstk_darwin(v0);
  v37 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009ED00(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v36 = v29 - v5;
  v35 = type metadata accessor for CellDeselectionBehavior();
  v33 = *(v35 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v35);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v31 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009ED00(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v14 = *(type metadata accessor for ArrayDataSourceSection() - 8);
  v15 = *(v14 + 72);
  v34 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v32 = swift_allocObject();
  v30 = xmmword_1000AE100;
  *(v32 + 16) = xmmword_1000AE100;
  sub_10009ED00(0, &qword_1000DAC00, sub_1000199DC, &type metadata accessor for _ContiguousArrayStorage);
  v16 = swift_allocObject();
  *(v16 + 16) = v30;
  type metadata accessor for HealthAppPluginSource();
  static HealthAppPluginSource.disabledHealthPluginsDefaultsKey.getter();
  *(v16 + 56) = type metadata accessor for ContentConfigurationItem();
  *(v16 + 64) = sub_10009ED64(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem);
  *&v30 = sub_10000AD4C((v16 + 32));
  UUID.init()();
  v29[1] = UUID.uuidString.getter();
  v29[0] = v17;
  v18 = *(v10 + 8);
  v18(v13, v9);
  v41[3] = type metadata accessor for UIListContentConfiguration();
  v41[4] = &protocol witness table for UIListContentConfiguration;
  sub_10000AD4C(v41);
  static UIListContentConfiguration.cell()();

  UIListContentConfiguration.text.setter();
  v19 = [objc_opt_self() tintColor];
  v20 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v20(v40, 0);

  *v8 = 1;
  (*(v33 + 104))(v8, enum case for CellDeselectionBehavior.deselectOnDidSelect(_:), v35);
  v21 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v21 - 8) + 56))(v36, 1, 1, v21);
  (*(v38 + 104))(v37, enum case for SectionedDataSourceContainerViewType.collectionView(_:), v39);
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
  UUID.init()();
  UUID.uuidString.getter();
  v22 = v31;
  v18(v13, v31);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v41[0] = 0x3C53447961727241;
  v41[1] = 0xE800000000000000;
  UUID.init()();
  v23 = UUID.uuidString.getter();
  v25 = v24;
  v18(v13, v22);
  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);

  v27._countAndFlagsBits = 62;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  return ArrayDataSource.init(arrangedSections:identifier:)();
}

void sub_10009E9B0(void *a1)
{
  type metadata accessor for HealthAppPluginSource();
  static HealthAppPluginSource.disabledHealthPluginsDefaultsKey.getter();
  type metadata accessor for FoundationPluginBundleProvider();
  static FoundationPluginBundleProvider.sharedInstance.getter();
  dispatch thunk of PluginBundleProvider.disabledPlugins.getter();

  Array.description.getter();

  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() actionWithTitle:v5 style:0 handler:0];

  [v4 addAction:v6];
  [a1 presentViewController:v4 animated:1 completion:0];
}

unint64_t sub_10009EBA0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_getWitnessTable();
  return sub_100029354(a1);
}

uint64_t sub_10009EC1C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return sub_1000290E4(a1, a2, WitnessTable);
}

uint64_t sub_10009EC7C(uint64_t a1)
{
  *(a1 + 8) = sub_10009ED64(&qword_1000DE758, type metadata accessor for UserDefaultsDataSource);
  result = sub_10009ED64(&qword_1000DE760, type metadata accessor for UserDefaultsDataSource);
  *(a1 + 24) = result;
  return result;
}

void sub_10009ED00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10009ED64(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10009EDAC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  __chkstk_darwin(v8);
  v10 = v29 - v9;
  v11 = type metadata accessor for HKTCategoryViewFactory();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 tabBarController];
  if (v16)
  {
    v29[2] = a3;
    v17 = v16;
    v18 = UIViewController.resolvedHealthStore.getter();
    if (v18)
    {
      v19 = v18;
      v29[1] = v5;
      HKTCategoryViewFactory.init()();
      v20 = v19;
      UIViewController.resolvedPinnedContentManager.getter();
      UIViewController.resolvedHealthExperienceStore.getter();

      v21 = type metadata accessor for ProvidedViewContext();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      ProvidedViewContext.init(healthStore:pinnedContentManagerProvider:pinnedContentManager:healthExperienceStore:)();
      v27 = HKTCategoryViewFactory.makeViewController(typeGroup:context:)();
      (*(v12 + 8))(v15, v11);

      return v27;
    }
  }

  static Logger.view.getter();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Somehow we don't have a tab bar controller or health store for the top level entry point", v26, 2u);
  }

  (*(v6 + 8))(v10, v5);
  return [objc_allocWithZone(UIViewController) init];
}

id sub_10009F280()
{
  v2.receiver = v0;
  v2.super_class = _s15CategoriesGroupCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10009F2B4(void *a1)
{
  v3 = *(type metadata accessor for HKTypeGroup() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10009EDAC(a1, v1 + v4, v5);
}

uint64_t sub_10009F37C(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1000E3CB8 == -1)
  {
    if (qword_1000E3CC0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10009F844();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1000E3CC0)
    {
      return _availability_version_check();
    }
  }

  if (qword_1000E3CB0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10009F85C();
    a3 = v10;
    a4 = v9;
    v8 = dword_1000E3CA0 < v11;
    if (dword_1000E3CA0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1000E3CA4 > a3)
      {
        return 1;
      }

      if (dword_1000E3CA4 >= a3)
      {
        return dword_1000E3CA8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1000E3CA0 < a2;
  if (dword_1000E3CA0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10009F510(uint64_t result)
{
  v1 = qword_1000E3CC0;
  if (qword_1000E3CC0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_1000E3CC0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1000E3CA0, &dword_1000E3CA4, &dword_1000E3CA8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = PersonNameComponents._bridgeToObjectiveC()();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

uint64_t static HKTypeGroup.typeGroup(for:)()
{
  return static HKTypeGroup.typeGroup(for:)();
}

{
  return static HKTypeGroup.typeGroup(for:)();
}

uint64_t SnapshotDataSource.withLayoutSectionProvider(collapseEmptySections:_:)()
{
  return SnapshotDataSource.withLayoutSectionProvider(collapseEmptySections:_:)();
}

{
  return SnapshotDataSource.withLayoutSectionProvider(collapseEmptySections:_:)();
}

UIBarButtonItem_optional __swiftcall TapToRadarButtonDisplaying.makeTapToRadarButtonIfNeeded()()
{
  v0 = TapToRadarButtonDisplaying.makeTapToRadarButtonIfNeeded()();
  result.value.super.super.isa = v0;
  result.is_nil = v1;
  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

Swift::Int_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HKKeyValueDomain.integer(for:)(Swift::String a1)
{
  v1 = HKKeyValueDomain.integer(for:)(a1._countAndFlagsBits, a1._object);
  result.value = v1;
  result.is_nil = v2;
  return result;
}

UIViewController_optional __swiftcall UINavigationController.rootViewController()()
{
  v0 = UINavigationController.rootViewController()();
  result.value.super.super.isa = v0;
  result.is_nil = v1;
  return result;
}