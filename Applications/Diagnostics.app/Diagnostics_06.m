uint64_t sub_1000BECA8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001FC7D0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10003DAAC(v9, qword_10020A528);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Timed out while discovering devices", v12, 2u);
  }

  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.stopDeviceDiscovery()();
  }

  sub_10003E110(0, &qword_1001FD040);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  aBlock[4] = sub_1000CB18C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C4700;
  v15 = _Block_copy(aBlock);
  v16 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000C5A68(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v19 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v18);
}

void sub_1000BF08C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(type metadata accessor for IntrinsicSizeAdjustingTableView()) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v4 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView;
  v5 = *&v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView];
  *&v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView] = v3;
  v6 = v3;

  v7 = [objc_opt_self() clearColor];
  [v6 setBackgroundColor:v7];

  v8 = *&v1[v4];
  if (!v8)
  {
    __break(1u);
    goto LABEL_20;
  }

  [v8 setDelegate:v1];
  v9 = *&v1[v4];
  if (!v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  type metadata accessor for DeviceSelectorCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = v9;
  v12 = String._bridgeToObjectiveC()();
  [v11 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v12];

  v13 = *&v1[v4];
  if (!v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_10003E110(0, &qword_1001FD920);
  v14 = swift_getObjCClassFromMetadata();
  v15 = v13;
  v16 = String._bridgeToObjectiveC()();
  [v15 registerClass:v14 forCellReuseIdentifier:v16];

  v17 = *&v1[v4];
  if (!v17)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_10003E110(0, &qword_1001FFEA0);
  v18 = swift_getObjCClassFromMetadata();
  v19 = v17;
  v20 = String._bridgeToObjectiveC()();
  [v19 registerClass:v18 forHeaderFooterViewReuseIdentifier:v20];

  v21 = *&v1[v4];
  if (!v21)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v21 setSeparatorStyle:1];
  v22 = *&v1[v4];
  if (!v22)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v22 setAllowsSelection:1];
  v23 = *&v1[v4];
  if (!v23)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v23 setAllowsMultipleSelection:1];
  v24 = *&v1[v4];
  if (!v24)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v24 setAlwaysBounceVertical:1];
  v25 = *&v1[v4];
  if (!v25)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v25 setScrollEnabled:0];
  v26 = *&v1[v4];
  if (!v26)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v26 setShowsVerticalScrollIndicator:0];
  v27 = *&v1[v4];
  if (!v27)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v27 setRowHeight:80.0];
  v28 = *&v1[v4];
  if (!v28)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v28 setEstimatedSectionFooterHeight:0.0];
  v29 = *&v1[v4];
  if (!v29)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v29 setHidden:1];
  v30 = *&v1[v4];
  if (!v30)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v31 = swift_allocObject();
  *(v31 + 16) = v1;
  *(v31 + 24) = ObjectType;
  v32 = objc_allocWithZone(sub_10003C49C(&qword_1001FFEA8));
  v33 = v1;
  v34 = v30;
  v35 = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
  v36 = *&v33[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource];
  *&v33[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource] = v35;

  v37 = [v33 contentView];
  if (!*&v1[v4])
  {
LABEL_33:
    __break(1u);
    return;
  }

  v38 = v37;
  [v37 addSubview:?];

  v39 = [v33 contentView];
  [v39 addSubview:*&v33[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryActivityView]];

  v40 = [v33 contentView];
  [v40 addSubview:*&v33[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_noDevicesView]];
}

id sub_1000BF4F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v67 = a1;
  v68 = a2;
  v5 = sub_10003C49C(&qword_1001FFE10);
  __chkstk_darwin(v5 - 8);
  v7 = &v62 - v6;
  v8 = type metadata accessor for TargetDevice();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10003C49C(&unk_1001FFEB0);
  __chkstk_darwin(v12 - 8);
  v65 = &v62 - v13;
  v66 = type metadata accessor for UIBackgroundConfiguration();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UIListContentConfiguration();
  v63 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DeviceSelector.DataSourceItemState();
  __chkstk_darwin(v19);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5A04(a3, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    static UIListContentConfiguration.subtitleCell()();
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000002BLL, 0x8000000100190560);
    UIListContentConfiguration.text.setter();
    v22 = String._bridgeToObjectiveC()();
    v23 = [objc_opt_self() systemImageNamed:v22];

    UIListContentConfiguration.image.setter();
    UIListContentConfiguration.imageToTextPadding.setter();
    v24 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.reservedLayoutSize.setter();
    v24(v69, 0);
    v25 = objc_opt_self();
    v26 = [v25 configurationWithScale:3];
    v27 = objc_opt_self();
    v28 = [v27 systemDarkGrayTintColor];
    v29 = [v25 configurationWithHierarchicalColor:v28];

    v30 = [v26 configurationByApplyingConfiguration:v29];
    v31 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.setter();
    v31(v69, 0);
    static UIBackgroundConfiguration.listCell()();
    v32 = [v27 systemGroupedBackgroundColor];
    UIBackgroundConfiguration.backgroundColor.setter();
    v33 = String._bridgeToObjectiveC()();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v35 = [v67 dequeueReusableCellWithIdentifier:v33 forIndexPath:isa];

    v69[3] = v16;
    v69[4] = &protocol witness table for UIListContentConfiguration;
    v36 = sub_10005BAD0(v69);
    v37 = v63;
    (*(v63 + 16))(v36, v18, v16);
    v38 = v35;
    UITableViewCell.contentConfiguration.setter();
    v40 = v64;
    v39 = v65;
    v41 = v66;
    (*(v64 + 16))(v65, v15, v66);
    (*(v40 + 56))(v39, 0, 1, v41);
    UITableViewCell.backgroundConfiguration.setter();

    (*(v40 + 8))(v15, v41);
    (*(v37 + 8))(v18, v16);
    sub_1000CA060(v21);
    return v38;
  }

  (*(v9 + 32))(v11, v21, v8);
  v42 = String._bridgeToObjectiveC()();
  v43 = v68;
  v44 = IndexPath._bridgeToObjectiveC()().super.isa;
  v45 = [v67 dequeueReusableCellWithIdentifier:v42 forIndexPath:v44];

  type metadata accessor for DeviceSelectorCell();
  v46 = swift_dynamicCastClass();
  if (!v46)
  {
    v52 = qword_1001FC7D0;
    v53 = v45;
    if (v52 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_10003DAAC(v54, qword_10020A528);
    v38 = v53;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v69[0] = swift_slowAlloc();
      *v57 = 136315394;
      *(v57 + 4) = sub_100056B7C(0xD000000000000012, 0x8000000100190540, v69);
      *(v57 + 12) = 2080;
      swift_getObjectType();

      v58 = _typeName(_:qualified:)();
      v60 = sub_100056B7C(v58, v59, v69);

      *(v57 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v55, v56, "Device selector dequeued reusable cell and expected %s but got %s", v57, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_14;
  }

  v38 = v46;
  (*(v9 + 16))(v7, v11, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v47 = OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_device;
  swift_beginAccess();
  sub_10008CF1C(v7, v38 + v47);
  swift_endAccess();
  sub_1000CB3D4();
  sub_10003DD84(v7, &qword_1001FFE10);
  result = *(v62 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView);
  if (result)
  {
    v49 = [result indexPathsForSelectedRows];
    if (v49)
    {
      v50 = v49;
      type metadata accessor for IndexPath();
      v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v51 = _swiftEmptyArrayStorage;
    }

    v61 = sub_100088D3C(v43, v51);

    [v38 setSelected:v61];
LABEL_14:
    (*(v9 + 8))(v11, v8);
    return v38;
  }

  __break(1u);
  return result;
}

void sub_1000BFE00()
{
  v1 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_19;
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryActivityView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_noDevicesView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10003C49C(&unk_1001FD020);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001823C0;
  v6 = *&v0[v1];
  if (!v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = [v6 topAnchor];
  v8 = [v0 contentView];
  v9 = [v8 safeAreaLayoutGuide];

  v10 = [v9 topAnchor];
  v11 = [v7 constraintEqualToAnchor:v10];

  *(v5 + 32) = v11;
  v12 = *&v0[v1];
  if (!v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = [v12 bottomAnchor];
  v14 = [v0 contentView];
  v15 = [v14 bottomAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  *(v5 + 40) = v16;
  v17 = [v3 centerXAnchor];
  v18 = [v0 view];
  if (!v18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = v18;
  v20 = [v18 safeAreaLayoutGuide];

  v21 = [v20 centerXAnchor];
  v22 = [v17 constraintEqualToAnchor:v21];

  *(v5 + 48) = v22;
  v23 = [v3 centerYAnchor];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = v24;
  v26 = [v24 centerYAnchor];

  v27 = [v23 constraintEqualToAnchor:v26];
  *(v5 + 56) = v27;
  v28 = [v3 leftAnchor];
  v29 = [v0 view];
  if (!v29)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v30 = v29;
  v31 = [v29 safeAreaLayoutGuide];

  v32 = [v31 leftAnchor];
  v33 = [v28 constraintEqualToAnchor:v32 constant:32.0];

  *(v5 + 64) = v33;
  v34 = [v3 rightAnchor];
  v35 = [v0 view];
  if (!v35)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v36 = v35;
  v37 = [v35 safeAreaLayoutGuide];

  v38 = [v37 rightAnchor];
  v39 = [v34 constraintEqualToAnchor:v38 constant:-32.0];

  *(v5 + 72) = v39;
  v40 = [v4 centerXAnchor];
  v41 = [v0 view];
  if (!v41)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v42 = v41;
  v43 = [v41 safeAreaLayoutGuide];

  v44 = [v43 centerXAnchor];
  v45 = [v40 constraintEqualToAnchor:v44];

  *(v5 + 80) = v45;
  v46 = [v4 centerYAnchor];
  v47 = [v0 view];
  if (!v47)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v48 = v47;
  v49 = [v47 centerYAnchor];

  v50 = [v46 constraintEqualToAnchor:v49];
  *(v5 + 88) = v50;
  v51 = [v4 leftAnchor];
  v52 = [v0 view];
  if (!v52)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v53 = v52;
  v54 = [v52 safeAreaLayoutGuide];

  v55 = [v54 leftAnchor];
  v56 = [v51 constraintEqualToAnchor:v55 constant:32.0];

  *(v5 + 96) = v56;
  v57 = [v4 rightAnchor];
  v58 = [v0 view];
  if (!v58)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v59 = v58;
  v60 = [v58 safeAreaLayoutGuide];

  v61 = [v60 rightAnchor];
  v62 = [v57 constraintEqualToAnchor:v61 constant:-32.0];

  *(v5 + 104) = v62;
  v63 = sub_10014FCF8(&off_1001BDCC8);
  v64 = [objc_opt_self() currentDevice];
  v65 = [v64 userInterfaceIdiom];

  LOBYTE(v64) = sub_1000743A4(v65, v63);

  if (v64)
  {
    v66 = sub_1000C05A4(v0);
  }

  else
  {
    v66 = sub_1000C0730(v0);
  }

  v67 = v66;
  v68 = objc_opt_self();
  sub_100074470(v67);
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v68 activateConstraints:isa];
}

id sub_1000C05A4(char *a1)
{
  sub_10003C49C(&unk_1001FD020);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017ED90;
  v3 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView;
  result = *&a1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = [result widthAnchor];
  result = [a1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  v7 = [result widthAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 multiplier:0.625];
  *(v2 + 32) = v8;
  result = *&a1[v3];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = [result centerXAnchor];
  result = [a1 view];
  if (result)
  {
    v10 = result;
    v11 = [result centerXAnchor];

    v12 = [v9 constraintEqualToAnchor:v11];
    *(v2 + 40) = v12;
    return v2;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1000C0730(char *a1)
{
  sub_10003C49C(&unk_1001FD020);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017ED80;
  v3 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView;
  result = *&a1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = [result leadingAnchor];
  v6 = [a1 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor:v7];
  *(v2 + 32) = v8;
  result = *&a1[v3];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = [result leftAnchor];
  v10 = [a1 contentView];
  v11 = [v10 leftAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:18.0];
  *(v2 + 40) = v12;
  result = *&a1[v3];
  if (result)
  {
    v13 = [result rightAnchor];
    v14 = [a1 contentView];
    v15 = [v14 rightAnchor];

    v16 = [v13 constraintEqualToAnchor:v15 constant:-18.0];
    *(v2 + 48) = v16;
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1000C092C()
{
  v1 = v0;
  v2 = sub_10003C49C(&qword_1001FFE18);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;

  v7 = sub_1000CA5DC(v6);

  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    v8 = Session.targetedDeviceTypes.getter();

    sub_10003C49C(&qword_1001FFE70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10017EC10;
    v10 = ELSDeviceSelectionRequirementTypeRequired;
    *(inited + 32) = ELSDeviceSelectionRequirementTypeRequired;
    v11 = ELSDeviceSelectionRequirementTypeRequiredWhenOrigin;
    *(inited + 40) = ELSDeviceSelectionRequirementTypeRequiredWhenOrigin;
    v12 = v10;
    v13 = v11;
    v14 = sub_1000CAC78(v8, inited);
    swift_setDeallocating();
    type metadata accessor for ELSDeviceSelectionRequirementType(0);
    swift_arrayDestroy();
  }

  else
  {
    v14 = &_swiftEmptySetSingleton;
  }

  sub_1000C0BD8(v14, v7, v5);

  v15 = *(v1 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource);
  if (!v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v15;
  dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  v17 = *(v1 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView);
  if (!v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v18 = v17;

  [v18 invalidateIntrinsicContentSize];

  v19 = *(v1 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_continueButton);
  if (v19)
  {
    v20 = v19;
    [v20 setEnabled:sub_1000C19B0() & 1];

    (*(v3 + 8))(v5, v2);
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1000C0BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DeviceSelector.DataSourceItemState();
  v92 = *(v6 - 8);
  __chkstk_darwin(v6);
  v70 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003C49C(&unk_1001FFDF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v68 - v9;
  v11 = type metadata accessor for TargetDevice.DeviceType();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v69 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v86 = &v68 - v15;
  v16 = sub_10003C49C(&qword_1001FFE78);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v76 = &v68 - v20;
  sub_1000C5A68(&unk_1001FFDD0, &type metadata accessor for TargetDevice.DeviceType);
  sub_1000C5A68(&qword_1001FFE80, type metadata accessor for DeviceSelector.DataSourceItemState);
  v89 = a3;
  v81 = v6;
  NSDiffableDataSourceSnapshot.init()();
  v21 = sub_1000C5B8C(a2);
  v94 = a1;
  v22 = *(v21 + 16);
  v82 = (v12 + 56);
  v77 = v12;
  v72 = (v12 + 8);

  v23 = 0;
  v87 = 0;
  v90 = xmmword_10017EC00;
  v73 = v22;
  v80 = v10;
  v71 = v11;
  v88 = (v12 + 32);
  v83 = v12 + 16;
  v75 = v19;
  v74 = v21;
  while (1)
  {
    if (v23 == v22)
    {
      v25 = sub_10003C49C(&unk_100201EF0);
      (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
      v85 = v22;
    }

    else
    {
      if ((v23 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= *(v21 + 16))
      {
        goto LABEL_27;
      }

      v26 = v10;
      v27 = v11;
      v28 = v23;
      v29 = sub_10003C49C(&unk_100201EF0);
      v30 = *(v29 - 8);
      sub_1000CB048(v21 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v28, v19);
      v85 = (v28 + 1);
      v11 = v27;
      v10 = v26;
      (*(v30 + 56))(v19, 0, 1, v29);
    }

    v31 = v76;
    sub_10009DDBC(v19, v76, &qword_1001FFE78);
    v32 = sub_10003C49C(&unk_100201EF0);
    if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
    {
      break;
    }

    v33 = *(v31 + *(v32 + 48));
    v34 = v77;
    v35 = v86;
    (*(v77 + 32))(v86, v31, v11);
    sub_100127D54(v35, v10);
    sub_10003DD84(v10, &unk_1001FFDF0);
    sub_10003C49C(&unk_1001FDEA0);
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = v90;
    v38 = *(v34 + 16);
    (v38)(v37 + v36, v35, v11);
    v39 = sub_10003C49C(&qword_1001FFE18);
    NSDiffableDataSourceSnapshot.appendSections(_:)(v37);

    v93 = v33;

    v40 = v87;
    sub_1000C6514(sub_100124B0C, 0, &type metadata accessor for TargetDevice, sub_1000658B8, &type metadata accessor for TargetDevice);
    if (v40)
    {
      goto LABEL_28;
    }

    v84 = v38;
    v87 = 0;

    v41 = v93;
    v42 = *(v93 + 2);
    if (v42)
    {
      v79 = v39;
      v93 = _swiftEmptyArrayStorage;
      sub_1000B7CFC(0, v42, 0);
      v43 = v93;
      v91 = type metadata accessor for TargetDevice();
      v44 = *(v91 - 8);
      v45 = *(v44 + 16);
      v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v78 = v41;
      v47 = v41 + v46;
      v48 = *(v44 + 72);
      v49 = v70;
      do
      {
        v45(v49, v47, v91);
        swift_storeEnumTagMultiPayload();
        v93 = v43;
        v51 = *(v43 + 2);
        v50 = *(v43 + 3);
        if (v51 >= v50 >> 1)
        {
          sub_1000B7CFC(v50 > 1, v51 + 1, 1);
          v43 = v93;
        }

        *(v43 + 2) = v51 + 1;
        sub_1000CA578(v49, &v43[((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v51]);
        v47 += v48;
        --v42;
      }

      while (v42);

      v10 = v80;
      v11 = v71;
    }

    else
    {
    }

    v24 = v86;
    (v84)(v10, v86, v11);
    (*v82)(v10, 0, 1, v11);
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    sub_10003DD84(v10, &unk_1001FFDF0);
    (*v72)(v24, v11);
    v19 = v75;
    v21 = v74;
    v22 = v73;
    v23 = v85;
  }

  v52 = v94;
  v53 = *(v94 + 16);
  if (!v53)
  {
    goto LABEL_20;
  }

  v54 = sub_1000649E0(*(v94 + 16), 0);
  v91 = sub_1000C9940(&v93, &v54[(*(v77 + 80) + 32) & ~*(v77 + 80)], v53, v52);

  sub_10004A320();
  if (v91 != v53)
  {
    __break(1u);
LABEL_20:
    v54 = _swiftEmptyArrayStorage;
  }

  v55 = v69;
  v93 = v54;
  v56 = v87;
  sub_1000C6514(sub_100121E24, 0, &type metadata accessor for TargetDevice.DeviceType, sub_1000658E0, &type metadata accessor for TargetDevice.DeviceType);
  if (v56)
  {
LABEL_28:

    __break(1u);
    return result;
  }

  v57 = *(v93 + 2);
  if (v57)
  {
    v58 = *(v77 + 80);
    v86 = ((v58 + 32) & ~v58);
    v87 = v58;
    v59 = &v86[v93];
    v91 = *(v77 + 72);
    v60 = *(v77 + 16);
    v84 = v93;
    v85 = v60;
    do
    {
      v61 = v85;
      v85(v55, v59, v11);
      sub_10003C49C(&unk_1001FDEA0);
      v62 = v86;
      v63 = swift_allocObject();
      *(v63 + 16) = v90;
      v61(&v62[v63], v55, v11);
      sub_10003C49C(&qword_1001FFE18);
      NSDiffableDataSourceSnapshot.appendSections(_:)(v63);

      sub_10003C49C(&qword_1001FFB18);
      v64 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v65 = swift_allocObject();
      *(v65 + 16) = v90;
      v61((v65 + v64), v55, v11);
      swift_storeEnumTagMultiPayload();
      v66 = v80;
      (*v88)(v80, v55, v11);
      (*v82)(v66, 0, 1, v11);
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

      sub_10003DD84(v66, &unk_1001FFDF0);
      v59 += v91;
      --v57;
    }

    while (v57);
  }
}

id sub_1000C1734(char a1, char a2)
{
  v5 = [v2 headerView];
  [v5 setHidden:1];

  result = *&v2[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  [result setHidden:1];
  [*&v2[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryActivityView] setHidden:a1 & 1];
  [*&v2[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_noDevicesView] setHidden:a2 & 1];
  result = *&v2[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_continueButton];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [result setHidden:1];
  v7 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_tryAgainButton;
  result = *&v2[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_tryAgainButton];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [result setHidden:0];
  result = *&v2[v7];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return [result setEnabled:a1 & 1];
}

id sub_1000C1850()
{
  v1 = [v0 headerView];
  [v1 setHidden:0];

  result = *&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  [result setHidden:0];
  [*&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryActivityView] setHidden:1];
  [*&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_noDevicesView] setHidden:1];
  result = *&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_continueButton];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [result setHidden:0];
  result = *&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_tryAgainButton];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return [result setHidden:1];
}

void sub_1000C1940()
{
  v1 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryTimeoutTimer;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryTimeoutTimer);
  if (v2 && [v2 isValid])
  {
    [*(v0 + v1) invalidate];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

uint64_t sub_1000C19B0()
{
  v3 = type metadata accessor for TargetDevice.DeviceType();
  v25 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v0;
  v6 = *(v0 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView);
  if (v6)
  {
    v7 = [v6 indexPathsForSelectedRows];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for IndexPath();
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    v10 = v9[2];

    if (v10)
    {
      if (qword_1001FC7E8 != -1)
      {
        goto LABEL_23;
      }

      while (SessionManager.currentSession.getter())
      {
        v23 = v3;
        v11 = Session.targetedDeviceTypes.getter();

        v12 = 1 << *(v11 + 32);
        v13 = -1;
        if (v12 < 64)
        {
          v13 = ~(-1 << v12);
        }

        v3 = v13 & *(v11 + 56);
        v14 = (v12 + 63) >> 6;
        v22[1] = v25 + 16;
        v15 = (v25 + 8);

        v16 = 0;
        while (v3)
        {
LABEL_16:
          v18 = v23;
          (*(v25 + 16))(v5, *(v11 + 48) + *(v25 + 72) * (__clz(__rbit64(v3)) | (v16 << 6)), v23);
          sub_1000C1C70(v5, v24);
          v20 = v19;
          v3 &= v3 - 1;
          (*v15)(v5, v18);
          if ((v20 & 1) == 0)
          {
            v10 = 0;
LABEL_19:

            return v10;
          }
        }

        while (1)
        {
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v17 >= v14)
          {
            v10 = 1;
            goto LABEL_19;
          }

          v3 = *(v11 + 56 + 8 * v17);
          ++v16;
          if (v3)
          {
            v16 = v17;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_23:
        swift_once();
      }

      return 0;
    }

    return v10;
  }

  else
  {
    __break(1u);

    result = (*v2)(v5, v1);
    __break(1u);
  }

  return result;
}

void sub_1000C1C70(uint64_t a1, uint64_t a2)
{
  v74 = type metadata accessor for IndexPath();
  v78 = *(v74 - 8);
  v4 = __chkstk_darwin(v74);
  v77 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v73 = &v67 - v6;
  v7 = sub_10003C49C(&qword_1001FFE18);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v67 - v9;
  v11 = sub_1000BDC64();
  v13 = *(a2 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource);
  if (!v13)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v14 = v11;
  v15 = v12;
  v16 = v13;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();

  v76 = NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  LOBYTE(v16) = v17;
  (*(v8 + 8))(v10, v7);
  if (v16)
  {
LABEL_20:
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
    if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
    {
    }

    else
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v38 & 1) == 0)
      {
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;
        if (v39 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v41 != v42)
        {
          v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v52)
          {
LABEL_38:
            v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v55 = v54;
            if (v53 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56)
            {
LABEL_31:

LABEL_43:

              return;
            }

            v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v57 & 1) == 0)
            {
              v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v65 = v64;
              if (v63 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v65 != v66)
              {
                _stringCompareWithSmolCheck(_:_:expecting:)();

                goto LABEL_43;
              }

              goto LABEL_31;
            }

LABEL_42:

            goto LABEL_43;
          }

          v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v59;
          if (v58 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v60 != v61)
          {
            v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v62 & 1) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_38;
          }
        }

        goto LABEL_38;
      }
    }

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;
    if (v43 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v45 == v46)
    {
      goto LABEL_31;
    }

    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v47 & 1) == 0)
    {

      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;
      if (v48 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v50 != v51)
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v18 = *(a2 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView);
  if (v18)
  {
    v19 = [v18 indexPathsForSelectedRows];
    v20 = v74;
    if (v19)
    {
      v21 = v19;
      v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v22 = _swiftEmptyArrayStorage;
    }

    v67 = v15;
    v68 = v14;
    v69 = v2;
    v23 = *(v22 + 2);
    if (v23)
    {
      v24 = 0;
      v70 = (v78 + 8);
      v75 = (v78 + 32);
      v25 = _swiftEmptyArrayStorage;
      v26 = v73;
      v71 = v78 + 16;
      v72 = v23;
      while (v24 < *(v22 + 2))
      {
        v27 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        v28 = *(v78 + 72);
        (*(v78 + 16))(v26, &v22[v27 + v28 * v24], v20);
        if (IndexPath.section.getter() == v76)
        {
          v29 = *v75;
          (*v75)(v77, v26, v20);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v79 = v25;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1000B7D60(0, v25[2] + 1, 1);
            v25 = v79;
          }

          v32 = v25[2];
          v31 = v25[3];
          if (v32 >= v31 >> 1)
          {
            sub_1000B7D60(v31 > 1, v32 + 1, 1);
            v25 = v79;
          }

          v25[2] = v32 + 1;
          v20 = v74;
          v29(v25 + v27 + v32 * v28, v77, v74);
          v23 = v72;
          v26 = v73;
        }

        else
        {
          (*v70)(v26, v20);
        }

        if (v23 == ++v24)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_52;
    }

    v25 = _swiftEmptyArrayStorage;
LABEL_19:

    sub_10014B66C(v25);

    v14 = v68;
    v15 = v67;
    goto LABEL_20;
  }

LABEL_53:
  __break(1u);
}

uint64_t sub_1000C2404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10003C49C(&qword_1001FFE10);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for TargetDevice();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4FA0(a3, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10003DD84(v6, &qword_1001FFE10);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_10003C49C(&qword_1001FFB18);
  v12 = *(type metadata accessor for DeviceSelector.DataSourceItemState() - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10017EC00;
  (*(v8 + 16))(v14 + v13, v10, v7);
  swift_storeEnumTagMultiPayload();
  sub_10003C49C(&qword_1001FFE18);
  NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v14);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000C2688(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  sub_1000CB1B0(v8);

  return (*(v6 + 8))(v8, v5);
}

void sub_1000C2780(void *a1@<X1>, uint64_t a2@<X8>)
{
  v124 = a2;
  v4 = type metadata accessor for TargetDevice();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v128 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DeviceSelector.DataSourceItemState();
  v126 = *(v7 - 8);
  v127 = v7;
  v8 = __chkstk_darwin(v7);
  v125 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v136 = &v113 - v10;
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  v138 = v11;
  v139 = v12;
  v13 = __chkstk_darwin(v11);
  v135 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v113 - v15;
  v118 = sub_10003C49C(&qword_1001FFE18);
  v122 = *(v118 - 8);
  v17 = __chkstk_darwin(v118);
  v131 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v117 = &v113 - v20;
  __chkstk_darwin(v19);
  v22 = &v113 - v21;
  v121 = type metadata accessor for TargetDevice.DeviceType();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TargetDevice.Status();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10003C49C(&qword_1001FFE10);
  v29 = __chkstk_darwin(v28 - 8);
  v134 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v113 - v31;
  v123 = a1;
  v33 = a1;
  v34 = v5;
  v140 = v2;
  sub_1000C4FA0(v33, &v113 - v31);
  v35 = *(v5 + 48);
  v137 = v4;
  v132 = v35;
  v133 = v5 + 48;
  if (v35(v32, 1, v4) == 1)
  {
    sub_10003DD84(v32, &qword_1001FFE10);
    v36 = v124;
LABEL_15:
    (*(v139 + 56))(v36, 1, 1, v138);
    return;
  }

  TargetDevice.status.getter();
  v37 = (*(v25 + 88))(v27, v24);
  if (v37 != enum case for TargetDevice.Status.ready(_:))
  {
    v52 = v124;
    if (v37 != enum case for TargetDevice.Status.waiting(_:) && v37 != enum case for TargetDevice.Status.unavailable(_:) && v37 != enum case for TargetDevice.Status.unsupported(_:))
    {
      (*(v25 + 8))(v27, v24);
    }

    (*(v5 + 8))(v32, v137);
    v36 = v52;
    goto LABEL_15;
  }

  (*(v5 + 8))(v32, v137);
  v38 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource;
  v39 = *(v140 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource);
  if (!v39)
  {
    goto LABEL_59;
  }

  v40 = v39;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();

  v41 = v118;
  v42 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v44 = v122 + 8;
  v43 = *(v122 + 8);
  v43(v22, v41);
  v45 = IndexPath.section.getter();
  if ((v45 & 0x8000000000000000) != 0)
  {
    goto LABEL_56;
  }

  if (v45 >= *(v42 + 16))
  {
    goto LABEL_57;
  }

  (*(v120 + 16))(v119, v42 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v45, v121);

  v46 = sub_1000BDC64();

  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;
  if (v48 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v50 == v51)
  {

LABEL_17:
    v54 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView;
    v55 = *(v140 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView);
    if (!v55)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v115 = v34;
    v56 = [v55 indexPathsForSelectedRows];
    v57 = v138;
    v122 = v44;
    v114 = v43;
    v116 = v38;
    v113 = v46;
    if (v56)
    {
      v58 = v56;
      v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v59 = _swiftEmptyArrayStorage;
    }

    __chkstk_darwin(v56);
    *(&v113 - 2) = v123;
    v60 = sub_1000BCE1C(sub_1000CA558, (&v113 - 4), v59);
    v61 = *(v60 + 16);
    if (v61)
    {
      v62 = 0;
      v63 = (v139 + 8);
      while (1)
      {
        v64 = v140;
        if (v62 >= *(v60 + 16))
        {
          break;
        }

        (*(v139 + 16))(v16, v60 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v62, v57);
        v65 = *(v64 + v54);
        if (!v65)
        {
          goto LABEL_58;
        }

        ++v62;
        v66 = v65;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v66 deselectRowAtIndexPath:isa animated:{1, v113, v114}];

        (*v63)(v16, v57);
        if (v61 == v62)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

LABEL_26:
    v68 = *(v140 + v116);
    if (!v68)
    {
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v69 = v68;
    dispatch thunk of UITableViewDiffableDataSource.snapshot()();

    if (v61)
    {
      v130 = *(v139 + 16);
      v131 = (v139 + 16);
      v70 = v60 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
      v129 = *(v139 + 72);
      v71 = (v139 + 8);
      v72 = (v115 + 32);
      v73 = _swiftEmptyArrayStorage;
      do
      {
        v74 = v135;
        v75 = v138;
        v130(v135, v70, v138);
        v76 = v134;
        sub_1000C4FA0(v74, v134);
        v77 = v74;
        v78 = v76;
        (*v71)(v77, v75);
        v79 = v137;
        if (v132(v76, 1, v137) == 1)
        {
          sub_10003DD84(v76, &qword_1001FFE10);
        }

        else
        {
          v80 = *v72;
          v81 = v128;
          (*v72)(v128, v78, v79);
          v82 = v125;
          v80(v125, v81, v79);
          swift_storeEnumTagMultiPayload();
          sub_1000CA578(v82, v136);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v73 = sub_1000D510C(0, v73[2] + 1, 1, v73);
          }

          v84 = v73[2];
          v83 = v73[3];
          if (v84 >= v83 >> 1)
          {
            v73 = sub_1000D510C(v83 > 1, v84 + 1, 1, v73);
          }

          v73[2] = v84 + 1;
          sub_1000CA578(v136, v73 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v84);
        }

        v70 += v129;
        --v61;
      }

      while (v61);
    }

    else
    {
      v73 = _swiftEmptyArrayStorage;
    }

    v85 = v118;
    v86 = v117;
    NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v73);

    v87 = *(v140 + v116);
    if (!v87)
    {
      goto LABEL_62;
    }

    v88 = v87;

    dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    v114(v86, v85);
    (*(v120 + 8))(v119, v121);
    v89 = v124;
    v90 = v138;
LABEL_40:
    v91 = v139;
    (*(v139 + 16))(v89, v123, v90);
    (*(v91 + 56))(v89, 0, 1, v90);
    return;
  }

  v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v53)
  {
    goto LABEL_17;
  }

  v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v94 = v93;
  if (v92 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v94 == v95)
  {

    v90 = v138;
  }

  else
  {
    v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v90 = v138;
    if ((v96 & 1) == 0)
    {
LABEL_54:
      (*(v120 + 8))(v119, v121);

      v89 = v124;
      goto LABEL_40;
    }
  }

  v97 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView;
  v98 = *(v140 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView);
  if (!v98)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v99 = [v98 indexPathsForSelectedRows];
  if (v99)
  {
    v100 = v99;
    v101 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v101 = _swiftEmptyArrayStorage;
  }

  v102 = sub_100088D3C(v123, v101);

  if (!v102)
  {
    goto LABEL_54;
  }

  v103 = v140;
  v104 = *(v140 + v97);
  if (!v104)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v105 = v104;
  v106 = v123;
  v107 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v105 deselectRowAtIndexPath:v107 animated:1];

  v108 = *(v103 + v38);
  if (!v108)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v109 = v108;
  v110 = v131;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();

  sub_1000C2404(v110, v103, v106);
  v111 = *(v103 + v38);
  if (v111)
  {
    v112 = v111;
    dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    v43(v110, v118);
    (*(v120 + 8))(v119, v121);
    (*(v139 + 56))(v124, 1, 1, v90);
    return;
  }

LABEL_66:
  __break(1u);
}

BOOL sub_1000C3514()
{
  type metadata accessor for IndexPath();
  sub_1000C5A68(&unk_1001FFE60, &type metadata accessor for IndexPath);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return 0;
  }

  v1 = IndexPath.section.getter();
  return v1 == IndexPath.section.getter();
}

unint64_t sub_1000C35DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35[0] = a2;
  v5 = sub_10003C49C(&qword_1001FFE18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v35 - v7;
  v9 = type metadata accessor for TargetDevice.DeviceType();
  v10 = *(v9 - 8);
  result = __chkstk_darwin(v9);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource);
  if (!v14)
  {
    goto LABEL_21;
  }

  v15 = v14;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();

  v16 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v6 + 8))(v8, v5);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (result >= *(v16 + 16))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  (*(v10 + 16))(v13, v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * result, v9);

  v17 = sub_1000BDC64();
  v19 = v18;

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      result = *(v3 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView);
      if (result)
      {
        v26 = [result indexPathsForSelectedRows];
        if (v26)
        {
          v27 = v26;
          type metadata accessor for IndexPath();
          v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v28 = _swiftEmptyArrayStorage;
        }

        __chkstk_darwin(v26);
        v35[-2] = a1;
        v32 = sub_1000BCE1C(sub_1000CA50C, &v35[-4], v28);

        (*(v10 + 8))(v13, v9);
        v33 = *(v32 + 16);

        if (v33 == 1)
        {
          v34 = type metadata accessor for IndexPath();
          return (*(*(v34 - 8) + 56))(v35[0], 1, 1, v34);
        }

        goto LABEL_14;
      }

LABEL_22:
      __break(1u);
      return result;
    }
  }

  (*(v10 + 8))(v13, v9);

LABEL_14:
  v29 = type metadata accessor for IndexPath();
  v30 = *(v29 - 8);
  v31 = v35[0];
  (*(v30 + 16))(v35[0], a1, v29);
  return (*(v30 + 56))(v31, 0, 1, v29);
}

Class sub_1000C3A34(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10003C49C(&unk_1001FFEC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a3;
  v16 = a1;
  a5();

  v17 = *(v9 + 8);
  v17(v11, v8);
  v18 = (*(v9 + 48))(v14, 1, v8);
  v19 = 0;
  if (v18 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v17(v14, v8);
    v19 = isa;
  }

  return v19;
}

uint64_t sub_1000C3BF0(void *a1, unint64_t a2)
{
  v25 = a2;
  v24 = type metadata accessor for TargetDevice.DeviceType();
  v4 = *(v24 - 8);
  __chkstk_darwin(v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10003C49C(&qword_1001FFE18);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for UIListContentConfiguration();
  v23 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = String._bridgeToObjectiveC()();
  v15 = [a1 dequeueReusableHeaderFooterViewWithIdentifier:v14];

  if (!v15)
  {
    return v15;
  }

  result = static UIListContentConfiguration.header()();
  v17 = *(v2 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource);
  if (v17)
  {
    v18 = v17;
    dispatch thunk of UITableViewDiffableDataSource.snapshot()();

    v19 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    result = (*(v8 + 8))(v10, v7);
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v19 + 16) > v25)
    {
      v20 = v24;
      (*(v4 + 16))(v6, v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25, v24);

      sub_1000C3F34();
      (*(v4 + 8))(v6, v20);
      UIListContentConfiguration.text.setter();
      v26[3] = v11;
      v26[4] = &protocol witness table for UIListContentConfiguration;
      v21 = sub_10005BAD0(v26);
      v22 = v23;
      (*(v23 + 16))(v21, v13, v11);
      UITableViewHeaderFooterView.contentConfiguration.setter();
      (*(v22 + 8))(v13, v11);
      return v15;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C3F34()
{
  v1 = v0;
  v2 = type metadata accessor for TargetDevice.DeviceType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  result = 0;
  if (v6 != enum case for TargetDevice.DeviceType.unknown(_:))
  {
    if (v6 == enum case for TargetDevice.DeviceType.mac(_:))
    {
      v8 = "TOR_DEVICES_IPHONE_IPAD";
      v9 = 0xD00000000000001FLL;
    }

    else if (v6 == enum case for TargetDevice.DeviceType.iOS(_:))
    {
      v8 = "ELS_DEVICE_SELECTOR_DEVICES_TV";
      v9 = 0xD000000000000027;
    }

    else
    {
      if (v6 == enum case for TargetDevice.DeviceType.appleTV(_:))
      {
        v10 = 0x8000000100190480;
        v9 = 0xD00000000000001ELL;
        return sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v9, v10);
      }

      if (v6 == enum case for TargetDevice.DeviceType.watch(_:))
      {
        v8 = "TOR_DEVICES_HOMEPOD";
        v9 = 0xD000000000000021;
      }

      else if (v6 == enum case for TargetDevice.DeviceType.audioAccessory(_:))
      {
        v8 = "TOR_DEVICES_VISION";
        v9 = 0xD000000000000023;
      }

      else
      {
        if (v6 != enum case for TargetDevice.DeviceType.reality(_:))
        {
          (*(v3 + 8))(v5, v2);
          return 0;
        }

        v8 = "TOR_DEVICE_DISCOVERY";
        v9 = 0xD000000000000022;
      }
    }

    v10 = (v8 | 0x8000000000000000);
    return sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v9, v10);
  }

  return result;
}

uint64_t sub_1000C4224()
{
  v1 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v1 - 8);
  v22 = &v20 - v2;
  v3 = type metadata accessor for Session.CollectOptions();
  v21 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v20 = &v20 - v7;
  v8 = v0;
  v9 = [v0 buttonTray];
  [v9 showButtonsBusy];

  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.stopDeviceDiscovery()();
  }

  v10 = swift_allocBox();
  v23 = _swiftEmptyArrayStorage;
  sub_1000C5A68(&qword_100202930, &type metadata accessor for Session.CollectOptions);
  sub_10003C49C(&unk_1001FFE30);
  sub_10003E278(&qword_100202940, &unk_1001FFE30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  if (!SessionManager.currentSession.getter() || (v11 = Session.requiresFollowUpQuestion.getter(), , (v11 & 1) == 0))
  {
    if (v8[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_consentState] == 1)
    {
      static Session.CollectOptions.upload.getter();
      v12 = v20;
      sub_1000BCB18(v20, v6);
      v13 = *(v21 + 8);
      v13(v6, v3);
      v13(v12, v3);
    }
  }

  v14 = type metadata accessor for TaskPriority();
  v15 = v22;
  (*(*(v14 - 8) + 56))(v22, 1, 1, v14);
  type metadata accessor for MainActor();
  v16 = v8;

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v16;
  v18[5] = v10;
  sub_1000539D8(0, 0, v15, &unk_1001824A8, v18);
}

uint64_t sub_1000C45CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for Session.CollectOptions();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_projectBox();
  type metadata accessor for MainActor();
  v4[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[12] = v7;
  v4[13] = v6;

  return _swift_task_switch(sub_1000C46D0, v7, v6);
}

uint64_t sub_1000C46D0()
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  v1 = SessionManager.currentSession.getter();
  v0[14] = v1;
  if (v1)
  {
    v3 = v0[9];
    v2 = v0[10];
    v4 = v0[7];
    v5 = v0[8];
    v6 = sub_1000C53A0();
    v0[15] = v6;
    swift_beginAccess();
    (*(v5 + 16))(v3, v2, v4);
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_1000C49C0;
    v8 = v0[9];

    return Session.startCollecting(from:options:)(v6, v8);
  }

  else
  {

    sub_10008CDB0();
    v9 = swift_allocError();
    swift_willThrow();
    v0[5] = v9;
    swift_errorRetain();
    sub_10003C49C(&qword_100201C30);
    if (swift_dynamicCast() & 1) != 0 || (static SessionError.isSessionError(_:)())
    {
      v10 = v0[6];
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      v12 = v10;
      v13 = sub_1000B99C8(v9, sub_1000CA504, v11);
    }

    else
    {
      v14 = v0[6];
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      v16 = v14;
      v13 = sub_1000B9DF8(v9, sub_1000CA4E0, v15);
    }

    v17 = v13;
    v18 = v0[6];

    [v18 presentViewController:v17 animated:1 completion:0];
    v19 = [v18 buttonTray];
    [v19 showButtonsAvailable];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1000C49C0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);

  v3 = v2[13];
  v4 = v2[12];
  if (v0)
  {
    v5 = sub_1000C4C58;
  }

  else
  {
    v5 = sub_1000C4B64;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000C4B64()
{
  v1 = *(v0 + 48);

  v2 = [v1 parentViewController];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100125854(1, 0, 1, 0, 0);

      goto LABEL_7;
    }
  }

LABEL_7:

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000C4C58()
{

  v1 = v0[17];
  v0[5] = v1;
  swift_errorRetain();
  sub_10003C49C(&qword_100201C30);
  if (swift_dynamicCast() & 1) != 0 || (static SessionError.isSessionError(_:)())
  {
    v2 = v0[6];
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = v2;
    v5 = sub_1000B99C8(v1, sub_1000CA504, v3);
  }

  else
  {
    v6 = v0[6];
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = v6;
    v5 = sub_1000B9DF8(v1, sub_1000CA4E0, v7);
  }

  v9 = v5;
  v10 = v0[6];

  [v10 presentViewController:v9 animated:1 completion:0];
  v11 = [v10 buttonTray];
  [v11 showButtonsAvailable];

  v12 = v0[1];

  return v12();
}

void sub_1000C4E14(void *a1)
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.cancel()();
  }

  v2 = [a1 parentViewController];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100125854(1, 0, 1, 0, 0);
    }
  }
}

unint64_t sub_1000C4FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v34 = a2;
  v3 = type metadata accessor for DeviceSelector.DataSourceItemState();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10003C49C(&qword_1001FFE18);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  v36 = type metadata accessor for TargetDevice.DeviceType();
  v12 = *(v36 - 8);
  result = __chkstk_darwin(v36);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource;
  v35 = v2;
  v17 = *(v2 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource);
  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = v17;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();

  v19 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v20 = *(v6 + 8);
  v20(v11, v5);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (result >= *(v19 + 16))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  (*(v12 + 16))(v15, v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * result, v36);

  v21 = *(v35 + v16);
  if (!v21)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v22 = v21;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();

  v23 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
  v20(v9, v5);
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if (result >= *(v23 + 16))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = v33;
  sub_1000C5A04(v23 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * result, v33);

  (*(v12 + 8))(v15, v36);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v26 = type metadata accessor for TargetDevice();
  v27 = *(v26 - 8);
  v28 = v27;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v27 + 56))(v34, 1, 1, v26);
    return sub_1000CA060(v24);
  }

  else
  {
    v29 = v34;
    (*(v27 + 32))(v34, v24, v26);
    return (*(v28 + 56))(v29, 0, 1, v26);
  }
}

char *sub_1000C53A0()
{
  v1 = sub_10003C49C(&qword_1001FFE10);
  __chkstk_darwin(v1 - 8);
  v3 = &v26 - v2;
  v4 = type metadata accessor for TargetDevice();
  v29 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v0;
  result = *(v0 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView);
  if (result)
  {
    v11 = [result indexPathsForSelectedRows];
    v28 = v4;
    if (v11)
    {
      v12 = v11;
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v4 = v28;
      v14 = v13[2];
      if (v14)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
      v14 = _swiftEmptyArrayStorage[2];
      if (v14)
      {
LABEL_4:
        v16 = *(v7 + 16);
        v15 = v7 + 16;
        v17 = *(v15 + 64);
        v26 = v13;
        v18 = v13 + ((v17 + 32) & ~v17);
        v31 = *(v15 + 56);
        v32 = v16;
        v33 = v15;
        v19 = (v15 - 8);
        v20 = (v29 + 48);
        v30 = (v29 + 32);
        v21 = _swiftEmptyArrayStorage;
        v27 = v3;
        v16(v9, v18, v6);
        while (1)
        {
          sub_1000C4FA0(v9, v3);
          (*v19)(v9, v6);
          if ((*v20)(v3, 1, v4) == 1)
          {
            sub_10003DD84(v3, &qword_1001FFE10);
          }

          else
          {
            v22 = v6;
            v23 = *v30;
            (*v30)(v35, v3, v4);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_1000D50E4(0, *(v21 + 2) + 1, 1, v21);
            }

            v25 = *(v21 + 2);
            v24 = *(v21 + 3);
            if (v25 >= v24 >> 1)
            {
              v21 = sub_1000D50E4(v24 > 1, v25 + 1, 1, v21);
            }

            *(v21 + 2) = v25 + 1;
            v4 = v28;
            v23(&v21[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25], v35, v28);
            v3 = v27;
            v6 = v22;
          }

          v18 += v31;
          if (!--v14)
          {
            break;
          }

          v32(v9, v18, v6);
        }

        return v21;
      }
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

id sub_1000C57A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceSelector();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DeviceSelector.DataSourceItemState()
{
  result = qword_1001FFD90;
  if (!qword_1001FFD90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C5948()
{
  result = type metadata accessor for TargetDevice();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TargetDevice.DeviceType();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000C5A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceSelector.DataSourceItemState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C5A68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C5AD4()
{
  if (TargetDevice.isPrimaryHomeHub.getter())
  {
    v0 = 1;
  }

  else if (TargetDevice.isPrimaryHomeHub.getter())
  {
    v0 = 0;
  }

  else
  {
    v1 = TargetDevice.userAssignedName.getter();
    v3 = v2;
    if (v1 == TargetDevice.userAssignedName.getter() && v3 == v4)
    {
      v0 = 0;
    }

    else
    {
      v0 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v0 & 1;
}

uint64_t sub_1000C5B8C(uint64_t a1)
{
  v2 = sub_10003C49C(&unk_100201EF0);
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = __chkstk_darwin(v2);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v35 - v5;
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v43 = _swiftEmptyArrayStorage;
    sub_1000B7CDC(0, v7, 0);
    v8 = v43;
    v9 = a1 + 64;
    v10 = _HashTable.startBucket.getter();
    v11 = 0;
    v35 = a1 + 72;
    v36 = v7;
    v37 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v14 = *(a1 + 36);
      v41 = v11;
      v42 = v14;
      v15 = *(a1 + 48);
      v16 = type metadata accessor for TargetDevice.DeviceType();
      v17 = *(v16 - 8);
      v18 = v8;
      v19 = v17;
      v20 = v15 + *(v17 + 72) * v10;
      v21 = v38;
      (*(v17 + 16))(v38, v20, v16);
      v22 = a1;
      v23 = *(*(a1 + 56) + 8 * v10);
      (*(v19 + 32))(v6, v21, v16);
      *&v6[*(v40 + 48)] = v23;
      v43 = v18;
      v25 = v18[2];
      v24 = v18[3];

      if (v25 >= v24 >> 1)
      {
        sub_1000B7CDC(v24 > 1, v25 + 1, 1);
        v18 = v43;
      }

      v18[2] = v25 + 1;
      sub_10009DDBC(v6, v18 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v25, &unk_100201EF0);
      v12 = 1 << *(v22 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      a1 = v22;
      v9 = v37;
      v26 = *(v37 + 8 * v13);
      if ((v26 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      if (v42 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v8 = v18;
      v27 = v26 & (-2 << (v10 & 0x3F));
      if (v27)
      {
        v12 = __clz(__rbit64(v27)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = a1;
        v29 = v13 << 6;
        v30 = v13 + 1;
        v31 = (v35 + 8 * v13);
        while (v30 < (v12 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            sub_1000B2714(v10, v42, 0);
            v12 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        sub_1000B2714(v10, v42, 0);
LABEL_19:
        a1 = v28;
      }

      v11 = v41 + 1;
      v10 = v12;
      if (v41 + 1 == v36)
      {
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
LABEL_25:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_20:
    v43 = v8;

    sub_1000C6448(sub_100124D70, 0);

    return v43;
  }

  return result;
}

uint64_t sub_1000C5F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10003C49C(&unk_100201EF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  sub_1000CB048(a1, &v9 - v5);

  v7 = type metadata accessor for TargetDevice.DeviceType();
  return (*(*(v7 - 8) + 32))(a2, v6, v7);
}

BOOL sub_1000C6060(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&unk_100201EF0);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  sub_1000CB048(a1, &v17 - v9);
  v11 = *(*&v10[*(v5 + 56)] + 16);

  sub_1000CB048(a2, v8);
  v12 = *(*&v8[*(v5 + 56)] + 16);

  v13 = v11 < v12;
  v14 = type metadata accessor for TargetDevice.DeviceType();
  v15 = *(*(v14 - 8) + 8);
  v15(v8, v14);
  v15(v10, v14);
  return v13;
}

id sub_1000C61A0()
{
  v1 = v0;
  v2 = type metadata accessor for TargetDevice.DeviceType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for TargetDevice.DeviceType.mac(_:))
  {
    v7 = &ELSPlatformMacOS;
  }

  else if (v6 == enum case for TargetDevice.DeviceType.iOS(_:))
  {
    v7 = &ELSPlatformIOS;
  }

  else if (v6 == enum case for TargetDevice.DeviceType.appleTV(_:))
  {
    v7 = &ELSPlatformAppleTV;
  }

  else if (v6 == enum case for TargetDevice.DeviceType.watch(_:))
  {
    v7 = &ELSPlatformWatchOS;
  }

  else if (v6 == enum case for TargetDevice.DeviceType.audioAccessory(_:))
  {
    v7 = &ELSPlatformHomePod;
  }

  else
  {
    if (v6 != enum case for TargetDevice.DeviceType.reality(_:))
    {
      (*(v3 + 8))(v5, v2);
      return 0;
    }

    v7 = &ELSPlatformVisionOS;
  }

  v8 = *v7;
  v9 = *v7;
  return v8;
}

unint64_t *sub_1000C6368(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1000CA9EC(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

Swift::Int sub_1000C6448(uint64_t (*a1)(uint64_t, char *), uint64_t a2)
{
  sub_10003C49C(&unk_100201EF0);
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1000658CC(v5);
  }

  result = sub_1000C65F4(a1, a2);
  *v2 = v5;
  return result;
}

Swift::Int sub_1000C6514(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), void (*a5)(void))
{
  a3(0);
  v10 = *v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a4(v10);
  }

  result = sub_1000C6748(a1, a2, a5, a5);
  *v5 = v10;
  return result;
}

Swift::Int sub_1000C65F4(uint64_t (*a1)(uint64_t, char *), uint64_t a2)
{
  v5 = *(v2 + 8);
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10003C49C(&unk_100201EF0);
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v9[2] = v8;
      }

      v10 = *(sub_10003C49C(&unk_100201EF0) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_1000C6E3C(v11, v12, v2, a1, a2, v7);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1000C68B0(0, v5, 1, a1);
  }

  return result;
}

Swift::Int sub_1000C6748(uint64_t (*a1)(char *, uint64_t), uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  v9 = v4[1];
  result = _minimumMergeRunLength(_:)(v9);
  if (result < v9)
  {
    if (v9 >= -1)
    {
      v11 = result;
      v12 = v9 / 2;
      if (v9 < 2)
      {
        v13 = _swiftEmptyArrayStorage;
      }

      else
      {
        a3(0);
        v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v13[2] = v12;
      }

      v14 = *((a3)(0) - 8);
      v15[0] = v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v15[1] = v12;
      sub_1000C7930(v15, v16, v4, a1, a2, v11, a4, a4);
      v13[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v9 < 0)
  {
    goto LABEL_12;
  }

  if (v9)
  {
    return sub_1000C6B4C(0, v9, 1, a1, a2, a4);
  }

  return result;
}

uint64_t sub_1000C68B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = v5;
  v50 = a4;
  v47 = sub_10003C49C(&unk_100201EF0);
  v10 = __chkstk_darwin(v47);
  v46 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v49 = &v37 - v13;
  result = __chkstk_darwin(v12);
  v48 = &v37 - v16;
  v39 = a2;
  if (a3 != a2)
  {
    v17 = *v4;
    v18 = *(v15 + 72);
    v19 = *v4 + v18 * (a3 - 1);
    v44 = -v18;
    v45 = v17;
    v20 = a1 - a3;
    v38 = v18;
    v21 = v17 + v18 * a3;
    v22 = &unk_100201EF0;
    v23 = &unk_100182338;
LABEL_4:
    v42 = v19;
    v43 = a3;
    v40 = v21;
    v41 = v20;
    v24 = v20;
    while (1)
    {
      v51 = v24;
      v25 = v48;
      sub_1000CB048(v21, v48);
      v26 = v49;
      sub_1000CB048(v19, v49);
      v27 = v6;
      v28 = v23;
      v29 = v50(v25, v26);
      sub_10003DD84(v26, v22);
      v30 = v25;
      v31 = v22;
      v32 = v28;
      result = sub_10003DD84(v30, v22);
      v6 = v27;
      if (v27)
      {
        break;
      }

      if ((v29 & 1) == 0)
      {
        v23 = v32;
LABEL_12:
        a3 = v43 + 1;
        v19 = v42 + v38;
        v20 = v41 - 1;
        v21 = v40 + v38;
        if (v43 + 1 != v39)
        {
          goto LABEL_4;
        }

        return result;
      }

      v33 = v51;
      if (!v45)
      {
        __break(1u);
        return result;
      }

      v34 = v46;
      v23 = v32;
      sub_10009DDBC(v21, v46, v31);
      swift_arrayInitWithTakeFrontToBack();
      v35 = v34;
      v22 = v31;
      result = sub_10009DDBC(v35, v19, v31);
      v19 += v44;
      v21 += v44;
      v36 = __CFADD__(v33, 1);
      v24 = v33 + 1;
      if (v36)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1000C6B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t (*a6)(void))
{
  v8 = v7;
  v53 = a5;
  v54 = a4;
  v12 = a6(0);
  v13 = __chkstk_darwin(v12);
  v48 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v55 = &v39 - v16;
  result = __chkstk_darwin(v15);
  v40 = a2;
  if (a3 != a2)
  {
    v51 = &v39 - v18;
    v20 = *v6;
    v22 = *(v19 + 16);
    v21 = v19 + 16;
    v23 = *(v21 + 56);
    v49 = v22;
    v50 = (v21 - 8);
    v52 = v21;
    v46 = (v21 + 16);
    v47 = v20;
    v24 = v20 + v23 * (a3 - 1);
    v45 = -v23;
    v25 = a1 - a3;
    v39 = v23;
    v26 = v20 + v23 * a3;
    v27 = v55;
    while (2)
    {
      v43 = v24;
      v44 = a3;
      v41 = v26;
      v42 = v25;
      v28 = v24;
      while (1)
      {
        v29 = v51;
        v30 = v49;
        v49(v51, v26, v12);
        v30(v27, v28, v12);
        v31 = v54(v29, v27);
        if (v8)
        {
          v38 = *v50;
          (*v50)(v27, v12);
          return (v38)(v29, v12);
        }

        v32 = v31;
        v33 = v27;
        v34 = *v50;
        (*v50)(v33, v12);
        result = (v34)(v29, v12);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v47)
        {
          __break(1u);
          return result;
        }

        v35 = *v46;
        v36 = v48;
        (*v46)(v48, v26, v12);
        swift_arrayInitWithTakeFrontToBack();
        result = (v35)(v28, v36, v12);
        v28 += v45;
        v26 += v45;
        v37 = __CFADD__(v25++, 1);
        v27 = v55;
        v8 = 0;
        if (v37)
        {
          goto LABEL_11;
        }
      }

      v27 = v55;
      v8 = 0;
LABEL_11:
      a3 = v44 + 1;
      v24 = v43 + v39;
      v25 = v42 - 1;
      v26 = v41 + v39;
      if (v44 + 1 != v40)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1000C6E3C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v139 = a5;
  v140 = a4;
  v128 = a1;
  v133 = sub_10003C49C(&unk_100201EF0);
  v138 = *(v133 - 8);
  v10 = __chkstk_darwin(v133);
  v130 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v132 = &v118 - v13;
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  v17 = &v118 - v16;
  v18 = __chkstk_darwin(v15);
  v19 = __chkstk_darwin(v18);
  v21 = &v118 - v20;
  v22 = __chkstk_darwin(v19);
  result = __chkstk_darwin(v22);
  v28 = *(a3 + 8);
  v134 = a3;
  if (v28 < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_103:
    v31 = v139;
    v17 = *v128;
    if (*v128)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_135;
      }

      goto LABEL_105;
    }

    goto LABEL_144;
  }

  v123 = &v118 - v24;
  v124 = v27;
  v135 = v26;
  v131 = v25;
  v121 = a6;
  v29 = 0;
  v30 = _swiftEmptyArrayStorage;
  v126 = v21;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    if (v32 >= v28)
    {
      v46 = v32;
    }

    else
    {
      v129 = v28;
      v137 = v7;
      v33 = *a3;
      v34 = *(v138 + 72);
      v35 = v31;
      v36 = v33 + v34 * v32;
      v37 = v123;
      sub_1000CB048(v36, v123);
      v127 = v34;
      v38 = v124;
      sub_1000CB048(v33 + v34 * v35, v124);
      v39 = v137;
      LODWORD(v137) = v140(v37, v38);
      if (v39)
      {
        sub_10003DD84(v38, &unk_100201EF0);
        sub_10003DD84(v37, &unk_100201EF0);
      }

      v122 = v30;
      v120 = v17;
      sub_10003DD84(v38, &unk_100201EF0);
      result = sub_10003DD84(v37, &unk_100201EF0);
      v119 = v129 - 1;
      v136 = v129 - 2;
      v40 = v33 + v127 * (v35 + 2);
      v125 = v35;
      v41 = v35;
      v7 = 0;
      v42 = v127;
      while (v136 != v41)
      {
        sub_1000CB048(v40, v21);
        v43 = v21;
        v44 = v135;
        sub_1000CB048(v36, v135);
        v45 = v140(v43, v44);
        sub_10003DD84(v44, &unk_100201EF0);
        v7 = 0;
        result = sub_10003DD84(v43, &unk_100201EF0);
        ++v41;
        v40 += v42;
        v36 += v42;
        v21 = v43;
        if ((v137 ^ v45))
        {
          v129 = v41 + 1;
          goto LABEL_11;
        }
      }

      v41 = v119;
LABEL_11:
      v17 = v120;
      v31 = v125;
      if (v137)
      {
        if (v129 < v125)
        {
          goto LABEL_138;
        }

        v30 = v122;
        if (v125 <= v41)
        {
          v47 = v129;
          v48 = v42 * (v129 - 1);
          v49 = v129 * v42;
          v50 = v125;
          v51 = v125 * v42;
          do
          {
            if (v50 != --v47)
            {
              v137 = v7;
              v52 = *v134;
              if (!*v134)
              {
                goto LABEL_142;
              }

              sub_10009DDBC(v52 + v51, v130, &unk_100201EF0);
              if (v51 < v48 || v52 + v51 >= (v52 + v49))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v51 != v48)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10009DDBC(v130, v52 + v48, &unk_100201EF0);
              v7 = v137;
            }

            ++v50;
            v48 -= v42;
            v49 -= v42;
            v51 += v42;
          }

          while (v50 < v47);
          a3 = v134;
          v17 = v120;
          v31 = v125;
        }

        else
        {
          a3 = v134;
        }

        v46 = v129;
      }

      else
      {
        a3 = v134;
        v46 = v129;
        v30 = v122;
      }
    }

    v53 = *(a3 + 8);
    if (v46 >= v53)
    {
      goto LABEL_38;
    }

    if (__OFSUB__(v46, v31))
    {
      goto LABEL_134;
    }

    if (v46 - v31 >= v121)
    {
      goto LABEL_38;
    }

    if (__OFADD__(v31, v121))
    {
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v129 = v46;
    if (v31 + v121 >= v53)
    {
      v54 = v53;
    }

    else
    {
      v54 = v31 + v121;
    }

    if (v54 < v31)
    {
      goto LABEL_137;
    }

    if (v129 == v54)
    {
      v46 = v129;
LABEL_38:
      if (v46 < v31)
      {
        goto LABEL_133;
      }

      goto LABEL_39;
    }

    v102 = *a3;
    v103 = *(v138 + 72);
    v104 = *a3 + v103 * (v129 - 1);
    v136 = -v103;
    v137 = v102;
    v125 = v31;
    v105 = (v31 - v129);
    v118 = v103;
    v106 = v102 + v129 * v103;
    v127 = v54;
    do
    {
      v119 = v106;
      v120 = v105;
      v107 = v105;
      v122 = v104;
      do
      {
        sub_1000CB048(v106, v17);
        v108 = v17;
        v109 = v131;
        sub_1000CB048(v104, v131);
        v110 = v140(v108, v109);
        if (v7)
        {
          sub_10003DD84(v109, &unk_100201EF0);
          sub_10003DD84(v108, &unk_100201EF0);
        }

        v111 = v110;
        sub_10003DD84(v109, &unk_100201EF0);
        result = sub_10003DD84(v108, &unk_100201EF0);
        v17 = v108;
        if ((v111 & 1) == 0)
        {
          break;
        }

        if (!v137)
        {
          goto LABEL_140;
        }

        v112 = v132;
        sub_10009DDBC(v106, v132, &unk_100201EF0);
        swift_arrayInitWithTakeFrontToBack();
        sub_10009DDBC(v112, v104, &unk_100201EF0);
        v104 += v136;
        v106 += v136;
      }

      while (!__CFADD__(v107++, 1));
      v104 = &v122[v118];
      v105 = v120 - 1;
      v106 = v119 + v118;
      v46 = v127;
      ++v129;
    }

    while (v129 != v127);
    a3 = v134;
    v31 = v125;
    if (v127 < v125)
    {
      goto LABEL_133;
    }

LABEL_39:
    result = swift_isUniquelyReferenced_nonNull_native();
    v55 = v7;
    if ((result & 1) == 0)
    {
      result = sub_1000C94C8(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v57 = *(v30 + 2);
    v56 = *(v30 + 3);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      result = sub_1000C94C8((v56 > 1), v57 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v58;
    v59 = &v30[16 * v57];
    *(v59 + 4) = v31;
    *(v59 + 5) = v46;
    v60 = *v128;
    if (!*v128)
    {
      goto LABEL_143;
    }

    v127 = v46;
    if (v57)
    {
      break;
    }

    v7 = v55;
LABEL_90:
    v28 = *(a3 + 8);
    v21 = v126;
    v29 = v127;
    if (v127 >= v28)
    {
      goto LABEL_103;
    }
  }

  v7 = v55;
  while (1)
  {
    v31 = v58 - 1;
    if (v58 >= 4)
    {
      v65 = &v30[16 * v58 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_120;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_121;
      }

      v72 = &v30[16 * v58];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_123;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_126;
      }

      if (v76 >= v68)
      {
        v94 = &v30[16 * v31 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_132;
        }

        if (v63 < v97)
        {
          v31 = v58 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v58 == 3)
    {
      v61 = *(v30 + 4);
      v62 = *(v30 + 5);
      v71 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      v64 = v71;
LABEL_59:
      if (v64)
      {
        goto LABEL_122;
      }

      v77 = &v30[16 * v58];
      v79 = *v77;
      v78 = *(v77 + 1);
      v80 = __OFSUB__(v78, v79);
      v81 = v78 - v79;
      v82 = v80;
      if (v80)
      {
        goto LABEL_125;
      }

      v83 = &v30[16 * v31 + 32];
      v85 = *v83;
      v84 = *(v83 + 1);
      v71 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v71)
      {
        goto LABEL_128;
      }

      if (__OFADD__(v81, v86))
      {
        goto LABEL_129;
      }

      if (v81 + v86 >= v63)
      {
        if (v63 < v86)
        {
          v31 = v58 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v87 = &v30[16 * v58];
    v89 = *v87;
    v88 = *(v87 + 1);
    v71 = __OFSUB__(v88, v89);
    v81 = v88 - v89;
    v82 = v71;
LABEL_73:
    if (v82)
    {
      goto LABEL_124;
    }

    v90 = &v30[16 * v31];
    v92 = *(v90 + 4);
    v91 = *(v90 + 5);
    v71 = __OFSUB__(v91, v92);
    v93 = v91 - v92;
    if (v71)
    {
      goto LABEL_127;
    }

    if (v93 < v81)
    {
      goto LABEL_90;
    }

LABEL_80:
    v98 = v31 - 1;
    if (v31 - 1 >= v58)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_139;
    }

    v99 = *&v30[16 * v98 + 32];
    v100 = *&v30[16 * v31 + 40];
    sub_1000C856C(*a3 + *(v138 + 72) * v99, *a3 + *(v138 + 72) * *&v30[16 * v31 + 32], *a3 + *(v138 + 72) * v100, v60, v140, v139);
    if (v7)
    {
    }

    if (v100 < v99)
    {
      goto LABEL_118;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1000C92DC(v30);
    }

    if (v98 >= *(v30 + 2))
    {
      goto LABEL_119;
    }

    v101 = &v30[16 * v98];
    *(v101 + 4) = v99;
    *(v101 + 5) = v100;
    v141 = v30;
    result = sub_1000C9250(v31);
    v30 = v141;
    v58 = *(v141 + 2);
    if (v58 <= 1)
    {
      goto LABEL_90;
    }
  }

  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
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
  result = sub_1000C92DC(v30);
  v30 = result;
LABEL_105:
  v141 = v30;
  v114 = *(v30 + 2);
  if (v114 < 2)
  {
  }

  while (1)
  {
    v115 = *a3;
    if (!*a3)
    {
      break;
    }

    v116 = *&v30[16 * v114];
    a3 = *&v30[16 * v114 + 24];
    sub_1000C856C(v115 + *(v138 + 72) * v116, v115 + *(v138 + 72) * *&v30[16 * v114 + 16], v115 + *(v138 + 72) * a3, v17, v140, v31);
    if (v7)
    {
    }

    if (a3 < v116)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1000C92DC(v30);
    }

    if (v114 - 2 >= *(v30 + 2))
    {
      goto LABEL_131;
    }

    v117 = &v30[16 * v114];
    *v117 = v116;
    *(v117 + 1) = a3;
    v141 = v30;
    result = sub_1000C9250(v114 - 1);
    v30 = v141;
    v114 = *(v141 + 2);
    a3 = v134;
    if (v114 <= 1)
    {
    }
  }

LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1000C7930(int64_t *a1, uint64_t a2, int64_t *a3, uint64_t (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v10 = v8;
  v169 = a4;
  v149 = a1;
  v168 = a7(0);
  v14 = __chkstk_darwin(v168);
  v151 = &v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v154 = &v140 - v17;
  v18 = __chkstk_darwin(v16);
  v19 = __chkstk_darwin(v18);
  v20 = __chkstk_darwin(v19);
  v22 = &v140 - v21;
  __chkstk_darwin(v20);
  v24 = __chkstk_darwin(&v140 - v23);
  result = __chkstk_darwin(v24);
  v166 = v28;
  v167 = a3;
  v31 = a3[1];
  if (v31 < 1)
  {
    v33 = _swiftEmptyArrayStorage;
    v34 = a5;
LABEL_104:
    v35 = *v149;
    if (*v149)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v147 = &v140 - v27;
  v145 = v26;
  v156 = result;
  v157 = v22;
  v152 = v30;
  v153 = v29;
  v144 = a6;
  v32 = 0;
  v164 = (v28 + 8);
  v165 = v28 + 16;
  v161 = (v28 + 32);
  v33 = _swiftEmptyArrayStorage;
  v162 = a5;
  v34 = a5;
  v143 = a8;
  while (1)
  {
    v35 = v32;
    v150 = v33;
    if ((v32 + 1) >= v31)
    {
      v59 = (v32 + 1);
      v33 = v168;
    }

    else
    {
      v148 = v31;
      v36 = *v167;
      v37 = *(v166 + 72);
      v38 = v32;
      v39 = *v167 + v37 * (v32 + 1);
      v40 = *(v166 + 16);
      v41 = v168;
      v40(v147, v39, v168);
      v163 = v37;
      v146 = v36;
      v42 = v36 + v37 * v38;
      v43 = v145;
      v158 = v40;
      v40(v145, v42, v41);
      v44 = v147;
      LODWORD(v160) = v169(v147, v43);
      if (v10)
      {
        v139 = *v164;
        (*v164)(v43, v41);
        (v139)(v44, v41);
      }

      v170 = 0;
      v45 = *v164;
      (*v164)(v43, v41);
      v155 = v45;
      result = (v45)(v44, v41);
      v142 = v148 - 1;
      v159 = v148 - 2;
      v46 = v163;
      v47 = v146 + v163 * (v38 + 2);
      v146 = v38;
      v48 = v38;
      v34 = v162;
      while (v159 != v48)
      {
        v49 = v156;
        v50 = v34;
        v51 = v168;
        v52 = v158;
        (v158)(v156, v47, v168);
        v53 = v157;
        (v52)(v157, v39, v51);
        v54 = v50;
        v55 = v170;
        v56 = v169(v49, v53);
        v170 = v55;
        if (v55)
        {
          v137 = v155;
          (v155)(v53, v51);
          v137(v49, v51);
        }

        v57 = v56;
        v58 = v155;
        (v155)(v53, v51);
        result = v58(v49, v51);
        ++v48;
        v46 = v163;
        v47 += v163;
        v39 += v163;
        v34 = v54;
        if ((v160 ^ v57))
        {
          v59 = v48 + 1;
          goto LABEL_12;
        }
      }

      v48 = v142;
      v59 = v148;
LABEL_12:
      a8 = v143;
      v35 = v146;
      if (v160)
      {
        if (v59 < v146)
        {
          goto LABEL_141;
        }

        v33 = v168;
        if (v146 <= v48)
        {
          v60 = v46 * (v59 - 1);
          v61 = v59 * v46;
          v62 = v59;
          v63 = v146;
          v64 = v146 * v46;
          do
          {
            if (v63 != --v59)
            {
              v66 = *v167;
              if (!*v167)
              {
                goto LABEL_145;
              }

              v67 = *v161;
              (*v161)(v151, v66 + v64, v168);
              if (v64 < v60 || v66 + v64 >= (v66 + v61))
              {
                v65 = v168;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v65 = v168;
                if (v64 != v60)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v67)(v66 + v60, v151, v65);
              v34 = v162;
              v46 = v163;
              v33 = v65;
            }

            ++v63;
            v60 -= v46;
            v61 -= v46;
            v64 += v46;
          }

          while (v63 < v59);
          v10 = v170;
          a8 = v143;
          v35 = v146;
          v59 = v62;
        }

        else
        {
          v10 = v170;
        }
      }

      else
      {
        v10 = v170;
        v33 = v168;
      }
    }

    v68 = v167[1];
    if (v59 >= v68)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v59, v35))
    {
      goto LABEL_137;
    }

    if (v59 - v35 >= v144)
    {
LABEL_37:
      v70 = v59;
      goto LABEL_38;
    }

    if (__OFADD__(v35, v144))
    {
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (v35 + v144 >= v68)
    {
      v69 = v167[1];
    }

    else
    {
      v69 = (v35 + v144);
    }

    if (v69 < v35)
    {
      goto LABEL_140;
    }

    if (v59 == v69)
    {
      goto LABEL_37;
    }

    v170 = v10;
    v117 = *v167;
    v118 = *(v166 + 72);
    v163 = *(v166 + 16);
    v119 = (v117 + v118 * (v59 - 1));
    v159 = -v118;
    v146 = v35;
    v120 = v35 - v59;
    v160 = v117;
    v140 = v118;
    v121 = v117 + v59 * v118;
    v158 = v69;
    do
    {
      v148 = v59;
      v141 = v121;
      v142 = v120;
      v155 = v119;
      v122 = v119;
      while (1)
      {
        v123 = v152;
        v124 = v163;
        (v163)(v152, v121, v33);
        v125 = v153;
        v124(v153, v122, v33);
        v126 = v170;
        v127 = v169(v123, v125);
        v170 = v126;
        if (v126)
        {
          v138 = *v164;
          (*v164)(v125, v33);
          (v138)(v123, v33);
        }

        v128 = v127;
        v129 = *v164;
        (*v164)(v125, v33);
        result = (v129)(v123, v33);
        if ((v128 & 1) == 0)
        {
          break;
        }

        if (!v160)
        {
          goto LABEL_143;
        }

        v130 = *v161;
        v131 = v154;
        v33 = v168;
        (*v161)(v154, v121, v168);
        swift_arrayInitWithTakeFrontToBack();
        v130(v122, v131, v33);
        v122 += v159;
        v121 += v159;
        v132 = __CFADD__(v120++, 1);
        v34 = v162;
        if (v132)
        {
          goto LABEL_101;
        }
      }

      v34 = v162;
      v33 = v168;
LABEL_101:
      v59 = v148 + 1;
      v119 = &v155[v140];
      v120 = v142 - 1;
      v121 = v141 + v140;
      v70 = v158;
    }

    while ((v148 + 1) != v158);
    a8 = v143;
    v10 = v170;
    v35 = v146;
LABEL_38:
    v33 = v150;
    if (v70 < v35)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000C94C8(0, *(v33 + 2) + 1, 1, v33);
      v33 = result;
    }

    v72 = *(v33 + 2);
    v71 = *(v33 + 3);
    v73 = v72 + 1;
    if (v72 >= v71 >> 1)
    {
      result = sub_1000C94C8((v71 > 1), v72 + 1, 1, v33);
      v33 = result;
    }

    *(v33 + 2) = v73;
    v74 = &v33[16 * v72];
    *(v74 + 4) = v35;
    *(v74 + 5) = v70;
    v35 = *v149;
    if (!*v149)
    {
      goto LABEL_146;
    }

    v158 = v70;
    if (v72)
    {
      break;
    }

    v34 = v162;
LABEL_90:
    v31 = v167[1];
    v32 = v158;
    if (v158 >= v31)
    {
      goto LABEL_104;
    }
  }

  v34 = v162;
  while (1)
  {
    v75 = v73 - 1;
    if (v73 >= 4)
    {
      v80 = &v33[16 * v73 + 32];
      v81 = *(v80 - 64);
      v82 = *(v80 - 56);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_123;
      }

      v85 = *(v80 - 48);
      v84 = *(v80 - 40);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_124;
      }

      v87 = &v33[16 * v73];
      v89 = *v87;
      v88 = *(v87 + 1);
      v86 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v86)
      {
        goto LABEL_126;
      }

      v86 = __OFADD__(v78, v90);
      v91 = v78 + v90;
      if (v86)
      {
        goto LABEL_129;
      }

      if (v91 >= v83)
      {
        v109 = &v33[16 * v75 + 32];
        v111 = *v109;
        v110 = *(v109 + 1);
        v86 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v86)
        {
          goto LABEL_135;
        }

        if (v78 < v112)
        {
          v75 = v73 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v73 == 3)
    {
      v76 = *(v33 + 4);
      v77 = *(v33 + 5);
      v86 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      v79 = v86;
LABEL_59:
      if (v79)
      {
        goto LABEL_125;
      }

      v92 = &v33[16 * v73];
      v94 = *v92;
      v93 = *(v92 + 1);
      v95 = __OFSUB__(v93, v94);
      v96 = v93 - v94;
      v97 = v95;
      if (v95)
      {
        goto LABEL_128;
      }

      v98 = &v33[16 * v75 + 32];
      v100 = *v98;
      v99 = *(v98 + 1);
      v86 = __OFSUB__(v99, v100);
      v101 = v99 - v100;
      if (v86)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v96, v101))
      {
        goto LABEL_132;
      }

      if (v96 + v101 >= v78)
      {
        if (v78 < v101)
        {
          v75 = v73 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v102 = &v33[16 * v73];
    v104 = *v102;
    v103 = *(v102 + 1);
    v86 = __OFSUB__(v103, v104);
    v96 = v103 - v104;
    v97 = v86;
LABEL_73:
    if (v97)
    {
      goto LABEL_127;
    }

    v105 = &v33[16 * v75];
    v107 = *(v105 + 4);
    v106 = *(v105 + 5);
    v86 = __OFSUB__(v106, v107);
    v108 = v106 - v107;
    if (v86)
    {
      goto LABEL_130;
    }

    if (v108 < v96)
    {
      goto LABEL_90;
    }

LABEL_80:
    v113 = v75 - 1;
    if (v75 - 1 >= v73)
    {
      break;
    }

    if (!*v167)
    {
      goto LABEL_142;
    }

    v114 = *&v33[16 * v113 + 32];
    v115 = *&v33[16 * v75 + 40];
    sub_1000C8B64(*v167 + *(v166 + 72) * v114, *v167 + *(v166 + 72) * *&v33[16 * v75 + 32], *v167 + *(v166 + 72) * v115, v35, v169, v34, a8, a8);
    if (v10)
    {
    }

    if (v115 < v114)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_1000C92DC(v33);
    }

    if (v113 >= *(v33 + 2))
    {
      goto LABEL_122;
    }

    v116 = &v33[16 * v113];
    *(v116 + 4) = v114;
    *(v116 + 5) = v115;
    v171 = v33;
    result = sub_1000C9250(v75);
    v33 = v171;
    v73 = *(v171 + 2);
    if (v73 <= 1)
    {
      goto LABEL_90;
    }
  }

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
  result = sub_1000C92DC(v33);
  v33 = result;
LABEL_106:
  v171 = v33;
  v133 = *(v33 + 2);
  if (v133 < 2)
  {
  }

  while (*v167)
  {
    v134 = *&v33[16 * v133];
    v135 = *&v33[16 * v133 + 24];
    sub_1000C8B64(*v167 + *(v166 + 72) * v134, *v167 + *(v166 + 72) * *&v33[16 * v133 + 16], *v167 + *(v166 + 72) * v135, v35, v169, v34, a8, a8);
    if (v10)
    {
    }

    if (v135 < v134)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_1000C92DC(v33);
    }

    if (v133 - 2 >= *(v33 + 2))
    {
      goto LABEL_134;
    }

    v136 = &v33[16 * v133];
    *v136 = v134;
    *(v136 + 1) = v135;
    v171 = v33;
    result = sub_1000C9250(v133 - 1);
    v33 = v171;
    v133 = *(v171 + 2);
    if (v133 <= 1)
    {
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_1000C856C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, char *), uint64_t a6)
{
  v7 = v6;
  v60 = a6;
  v61 = a5;
  v59 = sub_10003C49C(&unk_100201EF0);
  v12 = __chkstk_darwin(v59);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v56 = &v50 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v50 - v18;
  result = __chkstk_darwin(v17);
  v22 = &v50 - v21;
  v58 = *(v23 + 72);
  if (!v58)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v58 == -1)
  {
    goto LABEL_65;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v58 == -1)
  {
    goto LABEL_66;
  }

  v57 = a3;
  v25 = (a2 - a1) / v58;
  v64 = a1;
  v63 = a4;
  if (v25 >= v24 / v58)
  {
    v28 = v24 / v58 * v58;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v29 = v56;
      v30 = a4;
    }

    else
    {
      v29 = v56;
      v30 = a4;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v36 = v30 + v28;
    if (v28 >= 1)
    {
      v37 = v57;
      v38 = -v58;
      v39 = v36;
      v52 = v14;
      v53 = a1;
      do
      {
        v50 = v36;
        v40 = a2;
        v54 = a2;
        v55 = a2 + v38;
        while (1)
        {
          if (v40 <= a1)
          {
            v64 = v40;
            v36 = v50;
            goto LABEL_62;
          }

          v43 = v37;
          v51 = v36;
          v57 = v39 + v38;
          v58 = v39;
          sub_1000CB048(v39 + v38, v29);
          sub_1000CB048(v55, v14);
          v44 = v61(v29, v14);
          if (v7)
          {
            sub_10003DD84(v14, &unk_100201EF0);
            sub_10003DD84(v29, &unk_100201EF0);
            v64 = v54;
            v36 = v51;
            goto LABEL_62;
          }

          v45 = v44;
          v56 = 0;
          v46 = v43 + v38;
          sub_10003DD84(v14, &unk_100201EF0);
          sub_10003DD84(v29, &unk_100201EF0);
          if (v45)
          {
            break;
          }

          v47 = v57;
          v36 = v57;
          v37 = v43 + v38;
          if (v43 < v58 || v46 >= v58)
          {
            v41 = v57;
            swift_arrayInitWithTakeFrontToBack();
            v36 = v41;
          }

          else if (v43 != v58)
          {
            v48 = v57;
            swift_arrayInitWithTakeBackToFront();
            v36 = v48;
          }

          v39 = v36;
          v42 = v47 > v30;
          v7 = v56;
          v14 = v52;
          a1 = v53;
          v40 = v54;
          if (!v42)
          {
            a2 = v54;
            goto LABEL_61;
          }
        }

        v37 = v43 + v38;
        if (v43 < v54 || v46 >= v54)
        {
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v49 = v43 == v54;
          a2 = v55;
          if (!v49)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v39 = v58;
        v7 = v56;
        v14 = v52;
        a1 = v53;
        v36 = v51;
      }

      while (v58 > v30);
    }

LABEL_61:
    v64 = a2;
LABEL_62:
    v62 = v36;
  }

  else
  {
    v26 = v25 * v58;
    v27 = a4;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = (a4 + v26);
    v62 = a4 + v26;
    if (v26 >= 1 && a2 < v57)
    {
      while (1)
      {
        sub_1000CB048(a2, v22);
        sub_1000CB048(v27, v19);
        v32 = v61(v22, v19);
        if (v6)
        {
          break;
        }

        v33 = v32;
        sub_10003DD84(v19, &unk_100201EF0);
        sub_10003DD84(v22, &unk_100201EF0);
        if (v33)
        {
          v34 = v58;
          if (a1 < a2 || a1 >= a2 + v58)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v34;
        }

        else
        {
          v34 = v58;
          v35 = v27 + v58;
          if (a1 < v27 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v63 = v35;
          v27 += v34;
        }

        a1 += v34;
        v64 = a1;
        if (v27 >= v56 || a2 >= v57)
        {
          goto LABEL_63;
        }
      }

      sub_10003DD84(v19, &unk_100201EF0);
      sub_10003DD84(v22, &unk_100201EF0);
    }
  }

LABEL_63:
  sub_1000C92F0(&v64, &v63, &v62);
  return 1;
}

uint64_t sub_1000C8B64(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v10 = v8;
  v83 = a5;
  v80 = a4;
  v15 = a7(0);
  v82 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v17 = __chkstk_darwin(v16);
  v19 = &v69 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v69 - v21;
  result = __chkstk_darwin(v20);
  v85 = &v69 - v25;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (a2 - a1 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_69;
  }

  v28 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v27 != -1)
  {
    v81 = a3;
    v29 = (a2 - a1) / v27;
    v89 = a1;
    v30 = v80;
    v88 = v80;
    v84 = v27;
    v71 = a8;
    if (v29 < v28 / v27)
    {
      v31 = v10;
      v32 = a2;
      v33 = v29 * v27;
      v79 = v22;
      if (v80 < a1 || a1 + v33 <= v80)
      {
        v34 = v15;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v34 = v15;
        if (v80 != a1)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v78 = v30 + v33;
      v86 = v31;
      v87 = v30 + v33;
      v36 = v32;
      v37 = v33 < 1 || v32 >= v81;
      v38 = v85;
      if (!v37)
      {
        v39 = *(v82 + 16);
        v82 += 16;
        v76 = v39;
        v77 = (v82 - 8);
        while (1)
        {
          v85 = v36;
          v40 = v76;
          (v76)(v38);
          v41 = v79;
          v40(v79, v30, v34);
          v42 = v86;
          v43 = v83(v38, v41);
          v86 = v42;
          if (v42)
          {
            v67 = *v77;
            (*v77)(v41, v34);
            v67(v38, v34);
            goto LABEL_67;
          }

          v44 = v43;
          v45 = v30;
          v46 = *v77;
          (*v77)(v41, v34);
          v46(v38, v34);
          if (v44)
          {
            v47 = v84;
            v48 = &v85[v84];
            v30 = v45;
            if (a1 < v85 || a1 >= v48)
            {
              swift_arrayInitWithTakeFrontToBack();
LABEL_32:
              v47 = v84;
            }

            else if (a1 != v85)
            {
              swift_arrayInitWithTakeBackToFront();
              goto LABEL_32;
            }

            v36 = v48;
            goto LABEL_37;
          }

          v47 = v84;
          v30 = v45 + v84;
          if (a1 < v45 || a1 >= v30)
          {
            break;
          }

          if (a1 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_35:
            v47 = v84;
          }

          v88 = v30;
          v36 = v85;
LABEL_37:
          a1 += v47;
          v89 = a1;
          if (v30 >= v78 || v36 >= v81)
          {
            goto LABEL_67;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_35;
      }

      goto LABEL_67;
    }

    v35 = v28 / v27 * v27;
    v78 = v24;
    if (v80 < a2 || a2 + v35 <= v80)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v80 == a2)
      {
LABEL_42:
        v49 = v30 + v35;
        if (v35 >= 1)
        {
          v50 = -v27;
          v51 = v81;
          v75 = (v82 + 16);
          v76 = (v82 + 8);
          v52 = v49;
          v73 = a1;
          v74 = a6;
          v72 = -v27;
          do
          {
            v79 = v49;
            v70 = v49;
            v53 = (a2 + v50);
            v85 = (a2 + v50);
            v77 = a2;
            while (1)
            {
              v86 = v10;
              if (a2 <= a1)
              {
                v89 = a2;
                v49 = v70;
                goto LABEL_66;
              }

              v82 = v51;
              v84 = v52;
              v55 = *v75;
              v81 = v52 + v50;
              v56 = v15;
              v57 = v50;
              v55(v19);
              v58 = v78;
              (v55)(v78, v53, v56);
              v59 = v86;
              v60 = v83(v19, v58);
              if (v59)
              {
                v68 = *v76;
                (*v76)(v58, v56);
                v68(v19, v56);
                v89 = v77;
                v87 = v79;
                goto LABEL_67;
              }

              v61 = v60;
              v86 = 0;
              v62 = v82;
              v63 = v82 + v57;
              v64 = *v76;
              (*v76)(v58, v56);
              v15 = v56;
              v64(v19, v56);
              if (v61)
              {
                break;
              }

              v65 = v81;
              v66 = v81;
              v51 = v63;
              if (v62 < v84 || v63 >= v84)
              {
                swift_arrayInitWithTakeFrontToBack();
                v53 = v85;
              }

              else
              {
                v53 = v85;
                if (v62 != v84)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v79 = v66;
              v52 = v66;
              v54 = v65 > v80;
              v10 = v86;
              a1 = v73;
              v50 = v72;
              a2 = v77;
              if (!v54)
              {
                v49 = v79;
                goto LABEL_65;
              }
            }

            v51 = v63;
            if (v62 < v77 || v63 >= v77)
            {
              a2 = v85;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              a2 = v85;
              if (v62 != v77)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v49 = v79;
            v52 = v84;
            v10 = v86;
            a1 = v73;
            v50 = v72;
          }

          while (v84 > v80);
        }

LABEL_65:
        v86 = v10;
        v89 = a2;
LABEL_66:
        v87 = v49;
LABEL_67:
        sub_1000C93E0(&v89, &v88, &v87, v71);
        return 1;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v27 = v84;
    goto LABEL_42;
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_1000C9250(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000C92DC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1000C92F0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10003C49C(&unk_100201EF0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1000C93E0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1000C94C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10003C49C(&qword_1001FFE88);
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

id sub_1000C95CC(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_10003E110(0, &qword_100202990);
  sub_1000CB328();
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_10003E110(0, &qword_100202990);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_1000C97E8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000C9940(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for TargetDevice.DeviceType();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1000C9BE4()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_1000C9C74(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = type metadata accessor for TargetDevice.DeviceType();
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TargetDevice();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DeviceSelector.DataSourceItemState();
  v10 = __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_10003C49C(&qword_1001FFDE0);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v27 - v17;
  v19 = *(v16 + 56);
  sub_1000C5A04(a1, &v27 - v17);
  sub_1000C5A04(v30, &v18[v19]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000C5A04(v18, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v29;
      v21 = &v18[v19];
      v22 = v28;
      (*(v29 + 32))(v28, v21, v3);
      sub_1000C5A68(&qword_1001FFDE8, &type metadata accessor for TargetDevice.DeviceType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v23 = *(v20 + 8);
      v23(v22, v3);
      v24 = v32 == v31;
      v23(v12, v3);
LABEL_9:
      sub_1000CA060(v18);
      return v24 & 1;
    }

    (*(v29 + 8))(v12, v3);
  }

  else
  {
    sub_1000C5A04(v18, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v6 + 32))(v8, &v18[v19], v5);
      v24 = static TargetDevice.== infix(_:_:)();
      v25 = *(v6 + 8);
      v25(v8, v5);
      v25(v14, v5);
      goto LABEL_9;
    }

    (*(v6 + 8))(v14, v5);
  }

  sub_10003DD84(v18, &qword_1001FFDE0);
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1000CA060(uint64_t a1)
{
  v2 = type metadata accessor for DeviceSelector.DataSourceItemState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000CA0BC()
{
  v0 = sub_10003C49C(&unk_1001FFDF0);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    v3 = *(Session.targetedDeviceTypes.getter() + 16);

    if (v3 < 2)
    {
      v5 = Session.targetedDeviceTypes.getter();
      sub_1001255F8(v5, v2);

      v6 = type metadata accessor for TargetDevice.DeviceType();
      v7 = *(v6 - 8);
      if ((*(v7 + 48))(v2, 1, v6) == 1)
      {
        sub_10003DD84(v2, &unk_1001FFDF0);

        v4 = 0;
      }

      else
      {
        v8 = sub_1000BDC64();

        (*(v7 + 8))(v2, v6);
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;
        if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
        {
          v4 = 1;
        }

        else
        {
          v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }
    }

    else
    {

      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_1000CA2EC()
{
  result = qword_1001FFE08;
  if (!qword_1001FFE08)
  {
    sub_10003C4E4(&qword_1001FFE00);
    sub_1000C5A68(&qword_1001FCD20, type metadata accessor for ELSPlatform);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FFE08);
  }

  return result;
}

uint64_t sub_1000CA3A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000CA3E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003DEC8;

  return sub_1000C45CC(a1, v4, v5, v6);
}

uint64_t sub_1000CA4A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000CA578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceSelector.DataSourceItemState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CA5DC(uint64_t a1)
{
  v2 = type metadata accessor for TargetDevice.DeviceType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TargetDevice();
  v6 = *(v54 - 8);
  v7 = __chkstk_darwin(v54);
  v51 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v53 = &v39 - v9;
  v10 = _swiftEmptyDictionarySingleton;
  v55 = _swiftEmptyDictionarySingleton;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v13 = *(v6 + 16);
  v12 = v6 + 16;
  v14 = *(v12 + 64);
  v15 = *(v12 + 56);
  v49 = (v14 + 32) & ~v14;
  v50 = v13;
  v16 = a1 + v49;
  v52 = (v12 + 16);
  v42 = v3 + 32;
  v43 = v14;
  v41 = (v3 + 8);
  v40 = xmmword_10017EC00;
  v45 = v3;
  v46 = v2;
  v17 = v2;
  v47 = v5;
  v48 = v15;
  v44 = v12;
  v13(v53, a1 + v49, v54);
  while (1)
  {
    TargetDevice.deviceType.getter();
    v20 = sub_100064D40(v5);
    v21 = v10[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      break;
    }

    v24 = v19;
    if (v10[3] < v23)
    {
      sub_100140F7C(v23, 1);
      v10 = v55;
      v25 = sub_100064D40(v5);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_20;
      }

      v20 = v25;
    }

    if (v24)
    {
      (*v41)(v5, v17);
      v27 = v10[7];
      v28 = *v52;
      (*v52)(v51, v53, v54);
      v29 = *(v27 + 8 * v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 8 * v20) = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_1000D50E4(0, *(v29 + 2) + 1, 1, v29);
        *(v27 + 8 * v20) = v29;
      }

      v32 = *(v29 + 2);
      v31 = *(v29 + 3);
      if (v32 >= v31 >> 1)
      {
        v29 = sub_1000D50E4(v31 > 1, v32 + 1, 1, v29);
        *(v27 + 8 * v20) = v29;
      }

      *(v29 + 2) = v32 + 1;
      v5 = v47;
      v18 = v48;
      v28(&v29[v49 + v32 * v48], v51, v54);
      v17 = v46;
    }

    else
    {
      sub_10003C49C(&unk_1001FFE90);
      v33 = v49;
      v34 = swift_allocObject();
      *(v34 + 16) = v40;
      (*v52)((v34 + v33), v53, v54);
      v10[(v20 >> 6) + 8] |= 1 << v20;
      (*(v45 + 32))(v10[6] + *(v45 + 72) * v20, v5, v17);
      *(v10[7] + 8 * v20) = v34;
      v35 = v10[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_19;
      }

      v10[2] = v37;
      v18 = v48;
    }

    v16 += v18;
    if (!--v11)
    {
      return v10;
    }

    v50(v53, v16, v54);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000CA9EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v34 = a2;
  v35 = a1;
  v42 = type metadata accessor for TargetDevice.DeviceType();
  result = __chkstk_darwin(v42);
  v40 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v6;
  v36 = 0;
  v8 = 0;
  v44 = a3;
  v11 = *(a3 + 56);
  v10 = a3 + 56;
  v9 = v11;
  v12 = 1 << *(v10 - 24);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v38 = v6 + 8;
  v39 = v6 + 16;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v45 = (v14 - 1) & v14;
LABEL_11:
    v19 = v16 | (v8 << 6);
    v20 = *(v44 + 48);
    v21 = v40;
    v22 = v41;
    v23 = *(v41 + 72);
    v37 = v19;
    v24 = v42;
    (*(v41 + 16))(v40, v20 + v23 * v19, v42);
    v25 = sub_1000BDC64();
    v27 = v26;

    v47 = v27;
    __chkstk_darwin(v28);
    *(&v33 - 2) = &v47;
    v29 = v46;
    v30 = sub_100075550(sub_1000CB3B0, (&v33 - 4), v43);
    v46 = v29;

    result = (*(v22 + 8))(v21, v24);
    v14 = v45;
    if (v30)
    {
      *(v35 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
LABEL_15:
        v32 = v44;

        return sub_10012AC48(v35, v34, v36, v32);
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_15;
    }

    v18 = *(v10 + 8 * v8);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v45 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CAC78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = type metadata accessor for TargetDevice.DeviceType();
  v6 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v43 = a2;

  if (v8 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v45 = v3;
    v33[1] = v33;
    v34 = v9;
    __chkstk_darwin(v11);
    v35 = v33 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v35, v10);
    v36 = 0;
    v37 = v6;
    v9 = 0;
    v42 = a1;
    v13 = *(a1 + 56);
    a1 += 56;
    v12 = v13;
    v14 = 1 << *(a1 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v17 = (v14 + 63) >> 6;
    v38 = v6 + 8;
    v39 = v6 + 16;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v44 = (v16 - 1) & v16;
LABEL_12:
      v21 = v41;
      v3 = v18 | (v9 << 6);
      v22 = v40;
      (*(v6 + 16))(v40, *(v42 + 48) + *(v6 + 72) * v3, v41);
      v23 = sub_1000BDC64();
      v25 = v24;

      v46 = v25;
      __chkstk_darwin(v26);
      v33[-2] = &v46;
      v27 = v45;
      v10 = sub_100075550(sub_1000CB028, &v33[-4], v43);
      v45 = v27;

      v6 = v37;
      (*(v37 + 8))(v22, v21);
      v16 = v44;
      if (v10)
      {
        *&v35[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_16:
          v29 = sub_10012AC48(v35, v34, v36, v42);

          return v29;
        }
      }
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(a1 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v44 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v31 = swift_slowAlloc();
  v32 = v43;

  v29 = sub_1000C6368(v31, v9, a1, v32);

  return v29;
}

uint64_t sub_1000CB048(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&unk_100201EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CB0B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000CB100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000CB120()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000CB1B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10003C49C(&qword_1001FFE18);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource;
  v9 = *(v1 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource);
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = v9;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();

  sub_1000C2404(v7, v2, a1);
  v11 = *(v2 + v8);
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = v11;
  dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  (*(v5 + 8))(v7, v4);
  v13 = *(v2 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_continueButton);
  if (v13)
  {
    v14 = v13;
    [v14 setEnabled:sub_1000C19B0() & 1];

    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t sub_1000CB328()
{
  result = qword_1001FFED0;
  if (!qword_1001FFED0)
  {
    sub_10003E110(255, &qword_100202990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FFED0);
  }

  return result;
}

void sub_1000CB3D4()
{
  v1 = v0;
  v2 = type metadata accessor for TargetDevice.Status();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TargetDevice();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10003C49C(&qword_1001FFE10);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView);
  if (v15)
  {
    v16 = OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_device;
    swift_beginAccess();
    sub_10008CEAC(v1 + v16, v14);
    v29 = v6;
    v17 = v7;
    v18 = v5;
    v19 = v3;
    v20 = v2;
    v21 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_device;
    swift_beginAccess();
    sub_10008CEAC(v15 + v21, v12);
    swift_beginAccess();
    v22 = v15;
    v23 = v15 + v21;
    v2 = v20;
    v3 = v19;
    v5 = v18;
    v7 = v17;
    v6 = v29;
    sub_10008CF1C(v14, v23);
    swift_endAccess();
    sub_100122594(v12);

    sub_10008CF8C(v12);
    sub_10008CF8C(v14);
  }

  v24 = OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_device;
  swift_beginAccess();
  v25 = 1;
  if (!(*(v7 + 48))(v1 + v24, 1, v6))
  {
    v26 = v30;
    (*(v7 + 16))(v30, v1 + v24, v6);
    TargetDevice.status.getter();
    (*(v7 + 8))(v26, v6);
    v27 = (*(v3 + 88))(v5, v2);
    if (v27 == enum case for TargetDevice.Status.ready(_:))
    {
      v25 = 0;
    }

    else
    {
      v25 = 1;
      if (v27 != enum case for TargetDevice.Status.waiting(_:) && v27 != enum case for TargetDevice.Status.unavailable(_:) && v27 != enum case for TargetDevice.Status.unsupported(_:))
      {
        (*(v3 + 8))(v5, v2);
      }
    }
  }

  sub_1000CB850(v25);
}

void sub_1000CB850(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_isDisabled);
  *(v1 + OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_isDisabled) = a1;
  if (v2 != (a1 & 1))
  {
    v3 = *(v1 + OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView);
    if (v3)
    {
      if (a1)
      {
        v4 = qword_1001FC768;
        v5 = v3;
        if (v4 != -1)
        {
          swift_once();
        }

        v6 = &xmmword_10020A438;
      }

      else
      {
        v7 = qword_1001FC760;
        v8 = v3;
        if (v7 != -1)
        {
          swift_once();
        }

        v6 = &xmmword_10020A3F0;
      }

      *&v27[32] = *(v6 + 8);
      v9 = v6[3];
      *v27 = v6[2];
      *&v27[16] = v9;
      v10 = v6[1];
      v25 = *v6;
      v26 = v10;
      v20 = *&v27[8];
      v21 = *&v27[24];
      v11 = *v27;
      v18 = v25;
      v19 = v10;
      sub_1000CC778(&v25, v23);
      v23[0] = v18;
      v23[1] = v19;
      *v24 = v11;
      *&v24[24] = v21;
      *&v24[8] = v20;
      v12 = &v3[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration];
      v25 = *&v3[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration];
      v13 = *&v3[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 16];
      v14 = *&v3[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 32];
      v15 = *&v3[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 48];
      *&v27[32] = *&v3[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 64];
      *v27 = v14;
      *&v27[16] = v15;
      v26 = v13;
      v16 = *v24;
      v17 = *&v24[16];
      *(v12 + 8) = *(&v21 + 1);
      *(v12 + 2) = v16;
      *(v12 + 3) = v17;
      *v12 = v23[0];
      *(v12 + 1) = v19;
      sub_1000CC778(v23, v22);
      sub_1000CC900(&v25);
      sub_100122E00();
      sub_1000CC900(v23);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000CB9F4()
{
  v1 = v0;
  [v0 setSelectionStyle:0];
  v2 = [objc_opt_self() systemGroupedBackgroundColor];
  [v1 setBackgroundColor:v2];

  if (qword_1001FC760 != -1)
  {
    swift_once();
  }

  v18 = unk_10020A420;
  v19 = qword_10020A430;
  v16 = *&qword_10020A400;
  v17 = xmmword_10020A410;
  v15 = xmmword_10020A3F0;
  v3 = type metadata accessor for TargetDeviceDescriptionView();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_device;
  v6 = type metadata accessor for TargetDevice();
  (*(*(v6 - 8) + 56))(&v4[v5], 1, 1, v6);
  *&v4[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView] = 0;
  *&v4[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_detailsStackView] = 0;
  *&v4[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView] = 0;
  v7 = &v4[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration];
  *v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  *(v7 + 8) = v19;
  *(v7 + 2) = v9;
  *(v7 + 3) = v10;
  *(v7 + 1) = v8;
  sub_1000CC778(&v15, v14);
  sub_1000CC778(&v15, v14);
  v13.receiver = v4;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1001229B0();
  if (*&v11[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView])
  {
    [v11 addSubview:?];
    sub_100122AFC();
    sub_100122E00();
    sub_1000CC900(&v15);

    v12 = *&v1[OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView];
    *&v1[OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView] = v11;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000CBC28()
{
  v1 = [v0 contentView];
  if (*&v0[OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView])
  {
    v2 = v1;
    [v1 addSubview:?];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000CBC94()
{
  v1 = OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10003C49C(&unk_1001FD020);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10017ED60;
  v4 = *&v0[v1];
  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = [v4 leadingAnchor];
  v6 = [v0 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor:v7];
  *(v3 + 32) = v8;
  v9 = *&v0[v1];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = [v9 trailingAnchor];
  v11 = [v0 contentView];
  v12 = [v11 trailingAnchor];

  v13 = [v10 constraintEqualToAnchor:v12];
  *(v3 + 40) = v13;
  v14 = *&v0[v1];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = [v14 topAnchor];
  v16 = [v0 contentView];
  v17 = [v16 topAnchor];

  v18 = [v15 constraintEqualToAnchor:v17];
  *(v3 + 48) = v18;
  v19 = *&v0[v1];
  if (!v19)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v20 = objc_opt_self();
  v21 = [v19 heightAnchor];
  v22 = [v0 contentView];
  v23 = [v22 heightAnchor];

  v24 = [v21 constraintEqualToAnchor:v23];
  *(v3 + 56) = v24;
  sub_10007E540();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 activateConstraints:isa];
}

void sub_1000CBF78()
{
  v1 = sub_10003C49C(&qword_1001FFE10);
  __chkstk_darwin(v1 - 8);
  v3 = &v15[-v2 - 8];
  v4 = type metadata accessor for DeviceSelectorCell();
  v20.receiver = v0;
  v20.super_class = v4;
  objc_msgSendSuper2(&v20, "prepareForReuse");
  v5 = type metadata accessor for TargetDevice();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_device;
  swift_beginAccess();
  sub_10008CF1C(v3, &v0[v6]);
  swift_endAccess();
  sub_1000CB3D4();
  sub_10008CF8C(v3);
  [v0 setSelected:0];
  v7 = v0[OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_isDisabled];
  v0[OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_isDisabled] = 0;
  if (v7 == 1)
  {
    v8 = *&v0[OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView];
    if (v8)
    {
      v9 = qword_1001FC760;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v16[2] = xmmword_10020A410;
      v16[3] = unk_10020A420;
      v17 = qword_10020A430;
      v16[0] = xmmword_10020A3F0;
      v16[1] = *&qword_10020A400;
      v12 = *&v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 32];
      v11 = *&v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 48];
      v13 = *&v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 16];
      v19 = *&v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 64];
      v18[2] = v12;
      v18[3] = v11;
      v18[1] = v13;
      v18[0] = *&v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration];
      memmove(&v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration], &xmmword_10020A3F0, 0x48uLL);
      sub_1000CC778(v16, v15);
      sub_1000CC900(v18);
      sub_100122E00();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000CC3AC()
{
  sub_10008CF8C(v0 + OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_device);
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView);
}

id sub_1000CC3EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceSelectorCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DeviceSelectorCell()
{
  result = qword_1001FFF08;
  if (!qword_1001FFF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000CC4C4()
{
  sub_1000CC568();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000CC568()
{
  if (!qword_100201EB0)
  {
    type metadata accessor for TargetDevice();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100201EB0);
    }
  }
}

double sub_1000CC5C0()
{
  v0 = sub_10014FFA0(&off_1001BDD20);
  v1 = objc_opt_self();
  v2 = UIFontTextStyleHeadline;
  v3 = [v1 preferredFontForTextStyle:v2];

  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithSymbolicTraits:2];

  if (!v5)
  {
    v5 = [v3 fontDescriptor];
  }

  [v3 pointSize];
  v6 = [v1 fontWithDescriptor:v5 size:?];

  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  v9 = UIFontTextStyleBody;
  v10 = [v1 preferredFontForTextStyle:v9];

  v11 = [v7 labelColor];
  *&xmmword_10020A3F0 = v0;
  *(&xmmword_10020A3F0 + 1) = v6;
  qword_10020A400 = v8;
  unk_10020A408 = v10;
  *&xmmword_10020A410 = v11;
  *(&xmmword_10020A410 + 8) = xmmword_100182510;
  result = 1.0;
  unk_10020A428 = xmmword_100182520;
  return result;
}

double sub_1000CC7D4()
{
  v0 = sub_10014FFA0(&off_1001BDCF8);
  v1 = objc_opt_self();
  v2 = UIFontTextStyleHeadline;
  v3 = [v1 preferredFontForTextStyle:v2];

  v4 = objc_opt_self();
  v5 = [v4 secondaryLabelColor];
  v6 = UIFontTextStyleSubheadline;
  v7 = [v1 preferredFontForTextStyle:v6];

  v8 = [v4 tertiaryLabelColor];
  *&xmmword_10020A438 = v0;
  *(&xmmword_10020A438 + 1) = v3;
  qword_10020A448 = v5;
  unk_10020A450 = v7;
  *&xmmword_10020A458 = v8;
  *(&xmmword_10020A458 + 8) = xmmword_100182530;
  result = 0.6;
  unk_10020A470 = xmmword_100182540;
  return result;
}

id sub_1000CC954()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleBody];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    v2 = v5;
  }

  [v0 setFont:v2];
  [v0 setNumberOfLines:0];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];

  return v0;
}

unint64_t sub_1000CCA94()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progressView);
  v2 = [v1 layer];
  [v2 setCornerRadius:2.5];

  [v1 setClipsToBounds:1];
  v3 = [v1 layer];
  v4 = [v3 sublayers];

  if (!v4)
  {
    goto LABEL_10;
  }

  sub_10003E110(0, &qword_1001FFF80);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_23;
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (result <= 1)
  {

    while (1)
    {
LABEL_10:
      v9 = [v1 subviews];
      sub_10003E110(0, &qword_1001FF090);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v5 >> 62))
      {
        v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_12;
      }

      v10 = _CocoaArrayWrapper.endIndex.getter();
      if ((v10 & 0x8000000000000000) != 0)
      {
        break;
      }

LABEL_12:
      if (v10 <= 1)
      {

        goto LABEL_18;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        goto LABEL_25;
      }

      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
      {
        v11 = *(v5 + 40);
        goto LABEL_16;
      }

      __break(1u);
LABEL_27:
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
      v8 = v7;

      [v8 setCornerRadius:2.5];
    }

    __break(1u);
LABEL_23:
    result = _CocoaArrayWrapper.endIndex.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_25:
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
      v12 = v11;

      [v12 setClipsToBounds:1];

LABEL_18:
      [*(v0 + OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleLabel) setTranslatesAutoresizingMaskIntoConstraints:0];
      [*(v0 + OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleLabel) setTranslatesAutoresizingMaskIntoConstraints:0];

      return [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    }
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_27;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v7 = *(v5 + 40);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_1000CCD2C()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleLabel]];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progressView]];
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleLabel];

  return [v0 addSubview:v1];
}

void sub_1000CCDA0()
{
  v34 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1001823C0;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progressView];
  v3 = [v2 centerYAnchor];
  v4 = [v0 centerYAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  *(v1 + 32) = v5;
  v6 = [v2 leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v1 + 40) = v8;
  v9 = [v2 trailingAnchor];
  v10 = [v0 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v1 + 48) = v11;
  v12 = [v2 heightAnchor];
  v13 = [v12 constraintEqualToConstant:5.0];

  *(v1 + 56) = v13;
  v14 = OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleLabel;
  v15 = [*&v0[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleLabel] leadingAnchor];
  v16 = [v2 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v1 + 64) = v17;
  v18 = [*&v0[v14] trailingAnchor];
  v19 = [v2 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v1 + 72) = v20;
  v21 = [*&v0[v14] bottomAnchor];
  v22 = [v2 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:-8.0];

  *(v1 + 80) = v23;
  v24 = OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleLabel;
  v25 = [*&v0[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleLabel] topAnchor];
  v26 = [v2 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:8.0];

  *(v1 + 88) = v27;
  v28 = [*&v0[v24] leadingAnchor];
  v29 = [v2 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v1 + 96) = v30;
  v31 = [*&v0[v24] trailingAnchor];
  v32 = [v2 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v1 + 104) = v33;
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v34 activateConstraints:isa];
}

id sub_1000CD234(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_textSpacing] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progressViewHeight] = 0x4014000000000000;
  v9 = OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progressView;
  type metadata accessor for FluidProgressView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progress] = 0;
  v10 = OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleLabel;
  *&v4[v10] = sub_1000CC954();
  v11 = &v4[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleText];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleLabel;
  v13 = [objc_allocWithZone(UILabel) init];
  v14 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  [v13 setFont:v14];

  [v13 setNumberOfLines:0];
  [v13 setTextAlignment:1];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 setAdjustsFontForContentSizeCategory:1];
  *&v4[v12] = v13;
  v15 = &v4[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleText];
  v16 = type metadata accessor for BaseProgressView();
  *v15 = 0;
  *(v15 + 1) = 0;
  v18.receiver = v4;
  v18.super_class = v16;
  return objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1000CD40C(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_textSpacing] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progressViewHeight] = 0x4014000000000000;
  v3 = OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progressView;
  type metadata accessor for FluidProgressView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progress] = 0;
  v4 = OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleLabel;
  *&v1[v4] = sub_1000CC954();
  v5 = &v1[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleText];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleLabel;
  v7 = [objc_allocWithZone(UILabel) init];
  v8 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  [v7 setFont:v8];

  [v7 setNumberOfLines:0];
  [v7 setTextAlignment:1];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setAdjustsFontForContentSizeCategory:1];
  *&v1[v6] = v7;
  v9 = &v1[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleText];
  v10 = type metadata accessor for BaseProgressView();
  *v9 = 0;
  *(v9 + 1) = 0;
  v13.receiver = v1;
  v13.super_class = v10;
  v11 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);

  if (v11)
  {
  }

  return v11;
}

uint64_t sub_1000CD5E4()
{
}

id sub_1000CD65C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseProgressView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_1000CD738(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000CD754(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CD79C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1000CD818@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static VerticalAlignment.center.getter();
  LOBYTE(v29[0]) = 0;
  sub_1000CDA5C(v2, __src);
  memcpy(__dst, __src, 0x181uLL);
  memcpy(v28, __src, 0x181uLL);
  sub_100044704(__dst, v24, &qword_100200038);
  sub_10003DD84(v28, &qword_100200038);
  memcpy(&v26[7], __dst, 0x181uLL);
  v5 = v29[0];
  v6 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  LOBYTE(__src[0]) = 0;
  v15 = [objc_opt_self() secondarySystemBackgroundColor];
  v16 = Color.init(_:)();
  v17 = static Edge.Set.all.getter();
  v18 = *(v2 + 16);
  v19 = (a1 + *(sub_10003C49C(&qword_100200040) + 36));
  v20 = *(type metadata accessor for RoundedRectangle() + 20);
  v21 = enum case for RoundedCornerStyle.continuous(_:);
  v22 = type metadata accessor for RoundedCornerStyle();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  *v19 = v18;
  *(v19 + 1) = v18;
  *&v19[*(sub_10003C49C(&qword_100200048) + 36)] = 256;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  result = memcpy((a1 + 17), v26, 0x188uLL);
  *(a1 + 409) = __src[0];
  *(a1 + 412) = *(__src + 3);
  *(a1 + 416) = v6;
  *(a1 + 417) = v24[0];
  *(a1 + 420) = *(v24 + 3);
  *(a1 + 424) = v8;
  *(a1 + 432) = v10;
  *(a1 + 440) = v12;
  *(a1 + 448) = v14;
  *(a1 + 456) = 0;
  *(a1 + 460) = *(v29 + 3);
  *(a1 + 457) = v29[0];
  *(a1 + 464) = v16;
  *(a1 + 472) = v17;
  return result;
}

uint64_t sub_1000CDA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = *(a1 + 48);
  v3 = [v65 assetLocator];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  v76 = v7;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v75 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v65 name];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *&v96 = v17;
  *(&v96 + 1) = v19;
  sub_100079A64();
  v20 = Text.init<A>(_:)();
  v22 = v21;
  LOBYTE(v19) = v23;
  static Font.title3.getter();
  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;

  sub_10007C874(v20, v22, v19 & 1);

  static Font.Weight.semibold.getter();
  v29 = Text.fontWeight(_:)();
  v67 = v30;
  v68 = v29;
  v32 = v31;
  v69 = v33;
  sub_10007C874(v24, v26, v28 & 1);

  v34 = [v65 status];
  sub_1000B7164(v34, &v96);

  v35 = v96;
  v72 = v97;
  v73 = *(&v96 + 1);
  v71 = *(&v97 + 1);
  v70 = v98;
  v36 = BYTE2(v98);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v74 = v36;
  LOBYTE(v96) = v36;
  *&v135[5] = v136;
  *&v135[21] = v137;
  *&v135[37] = v138;
  v66 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [v65 sections];
  sub_10003E110(0, &qword_1001FF298);
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v46 >> 62)
  {
    v47 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v47)
  {
    v47 = Image.init(systemName:)();
    v48 = [objc_opt_self() systemGrayColor];
    v49 = Color.init(uiColor:)();
    v50 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v96) = 0;
    v55 = v50;
    v56 = 1;
  }

  else
  {
    v49 = 0;
    v55 = 0;
    v56 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
  }

  *&v79 = sub_1000CF708;
  *(&v79 + 1) = v76;
  LOBYTE(v80) = 0;
  *(&v80 + 1) = *v143;
  DWORD1(v80) = *&v143[3];
  *(&v80 + 1) = sub_10005C298;
  *v81 = 0;
  *&v81[8] = v140;
  *&v81[24] = v141;
  *&v81[40] = v142;
  v81[56] = v75;
  *&v81[60] = *&v139[3];
  *&v81[57] = *v139;
  *&v82 = v9;
  *(&v82 + 1) = v11;
  *&v83 = v13;
  *(&v83 + 1) = v15;
  v84 = 0;
  LOBYTE(v104) = 0;
  v102 = v82;
  v103 = v83;
  v100 = *&v81[32];
  v101 = *&v81[48];
  v98 = *v81;
  v99 = *&v81[16];
  v96 = v79;
  v97 = v80;
  *&v85 = v35;
  *(&v85 + 1) = v73;
  *&v86 = v72;
  *(&v86 + 1) = v71;
  *v87 = v70;
  v87[2] = v74;
  *&v87[3] = *v135;
  *&v87[19] = *&v135[16];
  *&v87[35] = *&v135[32];
  *&v87[48] = *&v135[45];
  v87[56] = v66;
  *&v87[60] = *(v144 + 3);
  *&v87[57] = v144[0];
  *&v88 = v38;
  *(&v88 + 1) = v40;
  *&v89 = v42;
  *(&v89 + 1) = v44;
  v90 = 0;
  v78[135] = 0;
  *&v78[7] = v85;
  *&v78[71] = *&v87[32];
  *&v78[55] = *&v87[16];
  *&v78[39] = *v87;
  *&v78[23] = v86;
  *&v78[119] = v89;
  *&v78[103] = v88;
  *&v78[87] = *&v87[48];
  *&v91 = v47;
  *(&v91 + 1) = v56;
  *&v92 = v49;
  *(&v92 + 1) = v55;
  *&v93 = v51;
  *(&v93 + 1) = v52;
  *&v94 = v53;
  *(&v94 + 1) = v54;
  v95 = 0;
  v77[71] = 0;
  *&v77[23] = v92;
  *&v77[39] = v93;
  *&v77[55] = v94;
  *&v77[7] = v91;
  v57 = v79;
  v58 = v80;
  v59 = *&v81[16];
  *(a2 + 32) = *v81;
  *(a2 + 48) = v59;
  *a2 = v57;
  *(a2 + 16) = v58;
  v60 = v100;
  v61 = v101;
  v62 = v103;
  v63 = v104;
  *(a2 + 96) = v102;
  *(a2 + 112) = v62;
  *(a2 + 64) = v60;
  *(a2 + 80) = v61;
  *(a2 + 128) = v63;
  *(a2 + 136) = v68;
  *(a2 + 144) = v67;
  *(a2 + 152) = v32 & 1;
  *(a2 + 160) = v69;
  *(a2 + 168) = 0;
  *(a2 + 176) = 1;
  *(a2 + 257) = *&v78[80];
  *(a2 + 273) = *&v78[96];
  *(a2 + 289) = *&v78[112];
  *(a2 + 305) = *&v78[128];
  *(a2 + 193) = *&v78[16];
  *(a2 + 209) = *&v78[32];
  *(a2 + 225) = *&v78[48];
  *(a2 + 241) = *&v78[64];
  *(a2 + 177) = *v78;
  *(a2 + 345) = *&v77[32];
  *(a2 + 361) = *&v77[48];
  *(a2 + 377) = *&v77[64];
  *(a2 + 313) = *v77;
  *(a2 + 329) = *&v77[16];
  v105[0] = v47;
  v105[1] = v56;
  v105[2] = v49;
  v105[3] = v55;
  v105[4] = v51;
  v105[5] = v52;
  v105[6] = v53;
  v105[7] = v54;
  v106 = 0;
  sub_100044704(&v79, v120, &qword_100200050);
  sub_10007C884(v68, v67, v32 & 1);

  sub_100044704(&v85, v120, &qword_100200058);
  sub_100044704(&v91, v120, &qword_100200060);
  sub_10003DD84(v105, &qword_100200060);
  v110 = *v135;
  v107[0] = v35;
  v107[1] = v73;
  v107[2] = v72;
  v107[3] = v71;
  v108 = v70;
  v109 = v74;
  v111 = *&v135[16];
  *v112 = *&v135[32];
  *&v112[13] = *&v135[45];
  v113 = v66;
  *v114 = v144[0];
  *&v114[3] = *(v144 + 3);
  v115 = v38;
  v116 = v40;
  v117 = v42;
  v118 = v44;
  v119 = 0;
  sub_10003DD84(v107, &qword_100200058);
  sub_10007C874(v68, v67, v32 & 1);

  v120[0] = sub_1000CF708;
  v120[1] = v76;
  v121 = 0;
  *v122 = *v143;
  *&v122[3] = *&v143[3];
  v123 = sub_10005C298;
  v124 = 0;
  v125 = v140;
  v126 = v141;
  v127 = v142;
  v128 = v75;
  *&v129[3] = *&v139[3];
  *v129 = *v139;
  v130 = v9;
  v131 = v11;
  v132 = v13;
  v133 = v15;
  v134 = 0;
  return sub_10003DD84(v120, &qword_100200050);
}

uint64_t sub_1000CE2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ScrollBounceBehavior();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v77 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for ScrollIndicatorVisibility();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v85 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10003C49C(&qword_1001FFFA0);
  v71 = *(v75 - 8);
  __chkstk_darwin(v75);
  v84 = &v68 - v8;
  v9 = sub_10003C49C(&qword_1001FFFA8);
  v76 = *(v9 - 8);
  __chkstk_darwin(v9);
  v86 = &v68 - v10;
  v11 = sub_10003C49C(&qword_1001FFFB0);
  v78 = *(v11 - 8);
  v79 = v11;
  __chkstk_darwin(v11);
  v73 = &v68 - v12;
  v13 = sub_10003C49C(&qword_1001FFFB8);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v68 - v17;
  v19 = *(a1 + 40);
  *&v83 = *(a1 + 32);
  *(&v83 + 1) = v19;

  v82 = static Font.title2.getter();
  v81 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  LOBYTE(v95) = 0;
  v80 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [*(a1 + 48) components];
  sub_10003E110(0, &qword_1001FD530);
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v37 >> 62)
  {
    v54 = _CocoaArrayWrapper.endIndex.getter();

    if (v54)
    {
      goto LABEL_3;
    }

LABEL_11:
    (*(v78 + 56))(v18, 1, 1, v79);
    goto LABEL_12;
  }

  v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v38)
  {
    goto LABEL_11;
  }

LABEL_3:
  v68 = v16;
  v69 = v5;
  v70 = v4;
  __chkstk_darwin(v39);
  *(&v68 - 2) = a1;
  static Axis.Set.vertical.getter();
  sub_10003C49C(&qword_1001FFFC0);
  sub_10005C71C(&qword_1001FFFC8, &qword_1001FFFC0);
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollIndicatorVisibility.never.getter();
  sub_10003C49C(&qword_1001FF278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC10;
  v41 = static Axis.Set.vertical.getter();
  *(inited + 32) = v41;
  v42 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v42;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v41)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  v43 = Axis.Set.init(rawValue:)();
  v44 = v69;
  if (v43 != v42)
  {
    Axis.Set.init(rawValue:)();
  }

  v45 = v77;
  v46 = sub_10005C71C(&qword_1001FFFD0, &qword_1001FFFA0);
  v47 = v85;
  v48 = v75;
  v49 = v84;
  View.scrollIndicators(_:axes:)();
  (*(v72 + 8))(v47, v74);
  (*(v71 + 8))(v49, v48);
  static ScrollBounceBehavior.basedOnSize.getter();
  LOBYTE(v47) = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v47)
  {
    Axis.Set.init(rawValue:)();
  }

  *&v95 = v48;
  *(&v95 + 1) = v46;
  swift_getOpaqueTypeConformance2();
  v50 = v73;
  v51 = v86;
  View.scrollBounceBehavior(_:axes:)();
  (*(v44 + 8))(v45, v70);
  (*(v76 + 8))(v51, v9);
  v53 = v78;
  v52 = v79;
  (*(v78 + 32))(v18, v50, v79);
  (*(v53 + 56))(v18, 0, 1, v52);
  v16 = v68;
LABEL_12:
  sub_1000CF228(v18, v16);
  v55 = v83;
  v87 = v83;
  v56 = v82;
  *&v88 = v82;
  v57 = v81;
  BYTE8(v88) = v81;
  *(&v88 + 9) = v114[0];
  HIDWORD(v88) = *(v114 + 3);
  *&v89 = v21;
  *(&v89 + 1) = v23;
  *&v90 = v25;
  *(&v90 + 1) = v27;
  LOBYTE(v91) = 0;
  *(&v91 + 1) = *v113;
  DWORD1(v91) = *&v113[3];
  v58 = v18;
  v59 = v80;
  BYTE8(v91) = v80;
  HIDWORD(v91) = *&v112[3];
  *(&v91 + 9) = *v112;
  *&v92 = v29;
  *(&v92 + 1) = v31;
  *&v93 = v33;
  *(&v93 + 1) = v35;
  v94 = 0;
  v60 = v91;
  v61 = v92;
  v62 = v93;
  *(a2 + 112) = 0;
  *(a2 + 80) = v61;
  *(a2 + 96) = v62;
  v63 = v87;
  v64 = v88;
  v65 = v89;
  *(a2 + 48) = v90;
  *(a2 + 64) = v60;
  *(a2 + 16) = v64;
  *(a2 + 32) = v65;
  *a2 = v63;
  v66 = sub_10003C49C(&qword_1001FFFD8);
  sub_1000CF228(v16, a2 + *(v66 + 48));
  sub_100044704(&v87, &v95, &qword_1001FFFE0);
  sub_1000CF298(v58);
  sub_1000CF298(v16);
  v95 = v55;
  v96 = v56;
  v97 = v57;
  *v98 = v114[0];
  *&v98[3] = *(v114 + 3);
  v99 = v21;
  v100 = v23;
  v101 = v25;
  v102 = v27;
  v103 = 0;
  *v104 = *v113;
  *&v104[3] = *&v113[3];
  v105 = v59;
  *&v106[3] = *&v112[3];
  *v106 = *v112;
  v107 = v29;
  v108 = v31;
  v109 = v33;
  v110 = v35;
  v111 = 0;
  return sub_10003DD84(&v95, &qword_1001FFFE0);
}

uint64_t sub_1000CEB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_10003C49C(&qword_1001FFFE8);
  v4 = [*(a1 + 48) components];
  sub_10003E110(0, &qword_1001FD530);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11[8] = v5;
  swift_getKeyPath();
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  v6[1] = *a1;
  v6[2] = v7;
  v6[3] = *(a1 + 32);
  *(v6 + 57) = *(a1 + 41);
  sub_1000CF3C4(a1, v11);
  sub_10003C49C(&qword_1001FFFF0);
  sub_10003C49C(&qword_1001FFFF8);
  sub_10005C71C(&qword_100200000, &qword_1001FFFF0);
  v8 = sub_10003C4E4(&qword_100200008);
  v9 = sub_1000CF3FC();
  v11[0] = v8;
  v11[1] = v9;
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

void sub_1000CED5C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1000CEDB4(void **a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  *&v13 = v3;
  BYTE8(v13) = v4;
  *&v14 = v5;
  *(&v14 + 1) = v6;
  *&v15 = v7;
  *(&v15 + 1) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v10 = a2[1];
  *(v9 + 24) = *a2;
  *(v9 + 40) = v10;
  *(v9 + 56) = a2[2];
  *(v9 + 65) = *(a2 + 41);
  v11 = v3;
  sub_1000CF3C4(a2, v16);
  sub_10003C49C(&qword_100200008);
  sub_1000CF3FC();
  View.onTapGesture(count:perform:)();

  v16[4] = v14;
  v16[5] = v15;
  v17 = 0;
  v16[0] = xmmword_1001825E0;
  v16[1] = xmmword_1001825F0;
  v16[2] = xmmword_100182600;
  v16[3] = v13;
  return sub_10003DD84(v16, &qword_100200008);
}

void sub_1000CEF1C(void *a1, uint64_t a2)
{
  v4 = [a1 sections];
  sub_10003E110(0, &qword_1001FF298);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = *(a2 + 24);
    if (v7)
    {
      _UISolariumEnabled();
      _UISolariumEnabled();
      __asm { FMOV            V0.2D, #16.0 }

      v13 = objc_allocWithZone(sub_10003C49C(&qword_100200020));
      v14 = a1;
      v15 = UIHostingController.init(rootView:)();
      [v7 pushViewController:v15 animated:1];
    }
  }
}

uint64_t sub_1000CF05C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10003C49C(&qword_1001FFF88);
  __chkstk_darwin(v3 - 8);
  v5 = v19 - v4;
  v6 = v1[1];
  v19[0] = *v1;
  v19[1] = v6;
  *v20 = v1[2];
  *&v20[9] = *(v1 + 41);
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v7 = sub_10003C49C(&qword_1001FFF90);
  sub_1000CE2A0(v19, &v5[*(v7 + 44)]);
  v8 = static Edge.Set.horizontal.getter();
  _UISolariumEnabled();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1000CF1B0(v5, a1);
  result = sub_10003C49C(&qword_1001FFF98);
  v18 = a1 + *(result + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_1000CF1B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FFF88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CF228(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FFFB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CF298(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FFFB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000CF310(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = String._bridgeToObjectiveC()();
  [v2 setName:v3];
}

uint64_t sub_1000CF374()
{

  return _swift_deallocObject(v0, 73, 7);
}

unint64_t sub_1000CF3FC()
{
  result = qword_100200010;
  if (!qword_100200010)
  {
    sub_10003C4E4(&qword_100200008);
    sub_1000CF488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200010);
  }

  return result;
}

unint64_t sub_1000CF488()
{
  result = qword_100200018;
  if (!qword_100200018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200018);
  }

  return result;
}

uint64_t sub_1000CF4DC()
{

  return _swift_deallocObject(v0, 81, 7);
}

__n128 sub_1000CF538(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000CF554(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CF59C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000CF5FC()
{
  result = qword_100200028;
  if (!qword_100200028)
  {
    sub_10003C4E4(&qword_1001FFF98);
    sub_10005C71C(&qword_100200030, &qword_1001FFF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200028);
  }

  return result;
}

uint64_t sub_1000CF6D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000CF714()
{
  result = qword_100200068;
  if (!qword_100200068)
  {
    sub_10003C4E4(&qword_100200040);
    sub_1000CF7CC();
    sub_10005C71C(&qword_1002000B0, &qword_100200048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200068);
  }

  return result;
}

unint64_t sub_1000CF7CC()
{
  result = qword_100200070;
  if (!qword_100200070)
  {
    sub_10003C4E4(&qword_100200078);
    sub_1000CF884();
    sub_10005C71C(&qword_1002000A0, &qword_1002000A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200070);
  }

  return result;
}

unint64_t sub_1000CF884()
{
  result = qword_100200080;
  if (!qword_100200080)
  {
    sub_10003C4E4(&qword_100200088);
    sub_10005C71C(&qword_100200090, &qword_100200098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200080);
  }

  return result;
}

id UIColor.init(hexCode:)(int a1, char a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  if (a2)
  {
    v5 = HIBYTE(a1) / 255.0;
    v6 = BYTE2(a1) / 255.0;
    v7 = BYTE1(a1) / 255.0;
    v8 = a1 / 255.0;
  }

  else
  {
    v5 = BYTE2(a1) / 255.0;
    v6 = BYTE1(a1) / 255.0;
    v7 = a1 / 255.0;
    v8 = 1.0;
  }

  return [v4 initWithRed:v5 green:v6 blue:v7 alpha:v8];
}

uint64_t *Color.background.unsafeMutableAddressor()
{
  if (qword_1001FC770 != -1)
  {
    swift_once();
  }

  return &static Color.background;
}

uint64_t *Color.secondaryBackground.unsafeMutableAddressor()
{
  if (qword_1001FC778 != -1)
  {
    swift_once();
  }

  return &static Color.secondaryBackground;
}

uint64_t *Color.tertiaryBackground.unsafeMutableAddressor()
{
  if (qword_1001FC780 != -1)
  {
    swift_once();
  }

  return &static Color.tertiaryBackground;
}

uint64_t *Color.systemGray.unsafeMutableAddressor()
{
  if (qword_1001FC788 != -1)
  {
    swift_once();
  }

  return &static Color.systemGray;
}

uint64_t *Color.systemBlue.unsafeMutableAddressor()
{
  if (qword_1001FC790 != -1)
  {
    swift_once();
  }

  return &static Color.systemBlue;
}

uint64_t sub_1000CFCD0(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = Color.init(_:)();
  *a3 = result;
  return result;
}

uint64_t *Color.systemGray6.unsafeMutableAddressor()
{
  if (qword_1001FC798 != -1)
  {
    swift_once();
  }

  return &static Color.systemGray6;
}

uint64_t sub_1000CFD8C(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t _s7HexCodeOwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s7HexCodeOwet(uint64_t a1, unsigned int a2)
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

uint64_t _s7HexCodeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1000CFFCC()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for CosmeticAssessmentCheckingDamageViewController();
  objc_msgSendSuper2(&v13, "viewDidLoad");
  v2 = [v0 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 setNavigationBarHidden:0 animated:1];
  }

  v4 = [v1 navigationItem];
  [v4 setHidesBackButton:1];

  sub_10003E110(0, &qword_1001FD3B8);
  sub_10003E110(0, &qword_1002023B0);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = v5;
  v14.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v14.is_nil = 0;
  v6.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemCancel, v14, v15).super.super.isa;
  v7 = OBJC_IVAR____TtC11Diagnostics46CosmeticAssessmentCheckingDamageViewController_barButton;
  v8 = *&v1[OBJC_IVAR____TtC11Diagnostics46CosmeticAssessmentCheckingDamageViewController_barButton];
  *&v1[OBJC_IVAR____TtC11Diagnostics46CosmeticAssessmentCheckingDamageViewController_barButton] = v6;

  LODWORD(v4) = _UISolariumEnabled();
  v9 = [v1 navigationItem];
  v10 = *&v1[v7];
  v11 = &selRef_setLeftBarButtonItem_;
  if (!v4)
  {
    v11 = &selRef_setRightBarButtonItem_;
  }

  [v9 *v11];
}

void sub_1000D01A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000EC128(4);
    *(swift_allocObject() + 16) = v1;
    v2 = v1;
    v3 = [v2 navigationItem];
    v4 = [v3 rightBarButtonItem];

    sub_100088E48(0, v4);

    v5 = *&v2[OBJC_IVAR____TtC11Diagnostics46CosmeticAssessmentCheckingDamageViewController_barButton];
    if (v5)
    {
      v6 = v5;
      [v6 setEnabled:0];
    }
  }
}

uint64_t sub_1000D02D8()
{
  v0 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  sub_1000EC128(5);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &protocol witness table for MainActor;
  sub_1000EC574(0, 0, v2, &unk_1001828C0, v5);
}

id sub_1000D0464()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CosmeticAssessmentCheckingDamageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000D04CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000D050C()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000D0544()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC11Diagnostics46CosmeticAssessmentCheckingDamageViewController_barButton);
  if (result)
  {
    return [result setEnabled:1];
  }

  return result;
}

uint64_t sub_1000D056C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000D05A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_10006A96C();
}

void CGContextRef.usingGState(stateBlock:)(void (*a1)(CGContext *))
{
  CGContextSaveGState(v1);
  a1(v1);
  CGContextRestoreGState(v1);
}

CGPathRef sub_1000D06AC(char a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v7 = *(*(v5 + 24) + 24);
  if (v7)
  {
    if (a5 >= a4)
    {
      v12 = a4;
    }

    else
    {
      v12 = a5;
    }

    v95 = v12;
    v13 = v12 / v7;
    CGAffineTransformMakeTranslation(&transform, (a4 - v13 * v7) * 0.5 + 15.0, (a5 - v13 * v7) * 0.5 + 15.0);
    a = transform.a;
    b = transform.b;
    c = transform.c;
    d = transform.d;
    tx = transform.tx;
    ty = transform.ty;
    v113 = v13;
    v121.a = 1.0;
    v121.b = 0.0;
    v121.c = 0.0;
    v121.d = 1.0;
    v121.tx = 0.0;
    v121.ty = 0.0;
    transform.a = 1.0;
    transform.b = 0.0;
    transform.c = 0.0;
    transform.d = 1.0;
    v110 = v13 * 9.0;
    transform.tx = 0.0;
    transform.ty = 0.0;
    CGAffineTransformScale(&t1, &transform, v13 * 9.0 / 90.0, v13 * 9.0 / 90.0);
    v16 = t1.a;
    v15 = t1.b;
    v18 = t1.c;
    v17 = t1.d;
    v20 = t1.tx;
    v19 = t1.ty;
    Mutable = CGPathCreateMutable();
    swift_beginAccess();
    sub_10004476C(a2 + 24, v122);
    if (!a1)
    {
      v30 = v123;
      v31 = v124;
      sub_1000442A0(v122, v123);
      v24 = (*(v31 + 8))(v30, v31);
      goto LABEL_12;
    }

    if (a1 == 1)
    {
      swift_beginAccess();
      sub_10004476C(a2 + 64, &transform);
      v22 = transform.d;
      v23 = transform.tx;
      sub_1000442A0(&transform, *&transform.d);
      v24 = (*(*&v23 + 8))(COERCE_CGFLOAT(*&v22), COERCE_CGFLOAT(*&v23));
      sub_100044554(&transform);
LABEL_12:
      t1.a = v16;
      t1.b = v15;
      t1.c = v18;
      t1.d = v17;
      t1.tx = v20;
      t1.ty = v19;
      t2.a = a;
      t2.b = b;
      t2.c = c;
      t2.d = d;
      t2.tx = tx;
      t2.ty = ty;
      CGAffineTransformConcat(&transform, &t1, &t2);
      v32 = CGPathCreateCopyByTransformingPath(v24, &transform);
      if (v32)
      {
        v33 = v32;
        CGMutablePathRef.addPath(_:transform:)(v32, &v121);
      }

      CGAffineTransformMakeScale(&t1, 1.0, -1.0);
      v34 = t1.tx;
      v35 = t1.ty;
      v102 = *&t1.c;
      v106 = *&t1.a;
      CGAffineTransformMakeTranslation(&t1, 0.0, 90.0);
      v36 = *&t1.a;
      v37 = *&t1.c;
      v38 = *&t1.tx;
      *&t1.a = v106;
      *&t1.c = v102;
      t1.tx = v34;
      t1.ty = v35;
      *&t2.a = v36;
      *&t2.c = v37;
      *&t2.tx = v38;
      CGAffineTransformConcat(&v118, &t1, &t2);
      t2 = v118;
      v118 = transform;
      CGAffineTransformConcat(&t1, &t2, &v118);
      v39 = CGPathCreateCopyByTransformingPath(v24, &t1);
      v40 = v113;
      v41 = v110;
      CGAffineTransformMakeTranslation(&t2, 0.0, v113 * *(*(v6 + 3) + 24) - v110);
      if (v39)
      {
        v42 = CGPathCreateCopyByTransformingPath(v39, &t2);

        if (v42)
        {
          CGMutablePathRef.addPath(_:transform:)(v42, &v121);
        }
      }

      else
      {
LABEL_58:
        v42 = 0;
      }

      CGAffineTransformMakeScale(&v118, -1.0, 1.0);
      v68 = v118.tx;
      v69 = v118.ty;
      v104 = *&v118.c;
      v109 = *&v118.a;
      CGAffineTransformMakeTranslation(&v118, 90.0, 0.0);
      v70 = *&v118.a;
      v71 = *&v118.c;
      v72 = *&v118.tx;
      *&v118.a = v109;
      *&v118.c = v104;
      v118.tx = v68;
      v118.ty = v69;
      *&v117.a = v70;
      *&v117.c = v71;
      *&v117.tx = v72;
      CGAffineTransformConcat(&v116, &v118, &v117);
      v117 = v116;
      v116 = transform;
      CGAffineTransformConcat(&v118, &v117, &v116);
      v73 = CGPathCreateCopyByTransformingPath(v24, &v118);
      CGAffineTransformMakeTranslation(&v117, v40 * *(*(v6 + 3) + 24) - v41, 0.0);
      if (v73)
      {
        v74 = CGPathCreateCopyByTransformingPath(v73, &v117);

        if (v74)
        {
          CGMutablePathRef.addPath(_:transform:)(v74, &v121);
        }
      }

      goto LABEL_63;
    }

    if (!a3)
    {
LABEL_63:
      sub_100044554(v122);
      return Mutable;
    }

    CGAffineTransformMakeScale(&transform, a4, a4);
    v43 = transform.tx;
    v40 = transform.ty;
    v111 = *&transform.c;
    v114 = *&transform.a;
    CGAffineTransformMakeScale(&transform, 1.0, -1.0);
    v44 = transform.tx;
    v45 = transform.ty;
    v103 = *&transform.c;
    v107 = *&transform.a;
    CGAffineTransformMakeTranslation(&transform, 0.0, 1.0);
    v46 = *&transform.a;
    v47 = *&transform.c;
    v48 = *&transform.tx;
    *&transform.a = v107;
    *&transform.c = v103;
    transform.tx = v44;
    transform.ty = v45;
    *&t1.a = v46;
    *&t1.c = v47;
    *&t1.tx = v48;
    CGAffineTransformConcat(&t2, &transform, &t1);
    t1 = t2;
    *&t2.a = v114;
    *&t2.c = v111;
    t2.tx = v43;
    t2.ty = v40;
    CGAffineTransformConcat(&transform, &t1, &t2);

    v49 = CGPathCreateMutable();
    v50 = *(a3 + 16);
    CGMutablePathRef.addPath(_:transform:)(v50, &transform);

    PathBoundingBox = CGPathGetPathBoundingBox(v49);
    v128 = CGRectInset(PathBoundingBox, *(a3 + 24), *(a3 + 24));
    x = v128.origin.x;
    y = v128.origin.y;
    width = v128.size.width;
    height = v128.size.height;
    v55 = CGRectGetWidth(v128);
    v129.origin.x = x;
    v129.origin.y = y;
    v129.size.width = width;
    v129.size.height = height;
    v56 = CGRectGetHeight(v129);
    if (v55 > v56)
    {
      v41 = v55;
    }

    else
    {
      v41 = v56;
    }

    v57 = *(v6 + 3);
    v58 = *(v57 + 24);
    v6 = *(v57 + 32);
    type metadata accessor for BoolMatrix();
    inited = swift_initStackObject();
    inited[2] = 0;
    inited[3] = 0;
    inited[4] = _swiftEmptyArrayStorage;
    if ((v58 * v58) >> 64 != (v58 * v58) >> 63)
    {
      goto LABEL_99;
    }

    if (v58 * v58 == *(v6 + 2))
    {
      v60 = inited;
      inited[2] = v58;
      inited[3] = v58;
      inited[4] = v6;

      if ((v58 & 0x8000000000000000) == 0)
      {
        v112 = v49;
        if (v58)
        {
          v100 = a2;
          v108 = Mutable;
          Mutable = 0;
          v61 = (v58 - 1);
          v62 = v58 - 9;
          do
          {
            v24 = 0;
            v115 = Mutable + 1;
            v63 = Mutable * v58;
            do
            {
              if (!Mutable || Mutable == v61 || !v24 || v61 == v24 || Mutable <= 8 && v24 < 9 || (Mutable < 9 ? (v65 = v24 < v62) : (v65 = 1), v65 ? (v66 = 0) : (v66 = 1), Mutable >= v62 ? (v67 = v24 >= 9) : (v67 = 1), !v67 || (v66 & 1) != 0))
              {
                if (v24 >= v58)
                {
                  __break(1u);
LABEL_90:
                  __break(1u);
LABEL_91:
                  __break(1u);
LABEL_92:
                  __break(1u);
LABEL_93:
                  __break(1u);
LABEL_94:
                  __break(1u);
LABEL_95:
                  __break(1u);
LABEL_96:
                  __break(1u);
LABEL_97:
                  __break(1u);
LABEL_98:
                  __break(1u);
LABEL_99:
                  __break(1u);
                  goto LABEL_100;
                }

                if ((Mutable * v58) >> 64 != (Mutable * v58) >> 63)
                {
                  goto LABEL_90;
                }

                v64 = v24 + v63;
                if (__OFADD__(v63, v24))
                {
                  goto LABEL_91;
                }

                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  if ((v64 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_57;
                  }
                }

                else
                {
                  v6 = sub_10003B9AC(v6);
                  if ((v64 & 0x8000000000000000) != 0)
                  {
LABEL_57:
                    __break(1u);
                    goto LABEL_58;
                  }
                }

                if (v64 >= *(v6 + 2))
                {
                  goto LABEL_92;
                }

                v6[v64 + 32] = 0;
                v60[4] = v6;
              }

              v24 = (v24 + 1);
            }

            while (v58 != v24);
            ++Mutable;
          }

          while (v115 != v58);

          Mutable = v108;
          a2 = v100;
        }

        else
        {
        }

        sub_1000D63A4(v41 / 1.41421356 / a4);

        v76 = sub_1000D1C0C(v75, v95);

        v77 = *(a2 + 16);
        v78 = v76[3];
        if (a5 / v78 >= a4 / v78)
        {
          v79 = a4 / v78;
        }

        else
        {
          v79 = a5 / v78;
        }

        v80 = CGPathCreateMutable();
        v81 = v76[3];
        if ((v81 & 0x8000000000000000) == 0)
        {
          v82 = v80;
          if (v81)
          {
            v83 = 0;
            v84 = (a4 - v79 * v78) * 0.5 + 15.0;
            v85 = (a5 - v79 * v78) * 0.5 + 15.0;
            while (1)
            {
              v86 = v76[3];
              if (v86 < 0)
              {
                goto LABEL_98;
              }

              if (v86)
              {
                break;
              }

LABEL_72:
              if (++v83 == v81)
              {
                goto LABEL_88;
              }
            }

            v87 = 0;
            while (1)
            {
              v88 = v76[2];
              if (v87 >= v88 || v83 >= v76[3])
              {
                goto LABEL_93;
              }

              v90 = v83 * v88;
              if ((v83 * v88) >> 64 != (v83 * v88) >> 63)
              {
                goto LABEL_94;
              }

              v91 = v90 + v87;
              if (__OFADD__(v90, v87))
              {
                goto LABEL_95;
              }

              if ((v91 & 0x8000000000000000) != 0)
              {
                goto LABEL_96;
              }

              v92 = v76[4];
              if (v91 >= *(v92 + 16))
              {
                goto LABEL_97;
              }

              if (*(v92 + v91 + 32) == 1)
              {
                v130.origin.x = v84 + v79 * v87;
                v130.origin.y = v85 + v79 * v83;
                v130.size.width = v79;
                v130.size.height = v79;
                v93 = v77 * (CGRectGetHeight(v130) * 0.5);
                v131.origin.x = v84 + v79 * v87;
                v131.origin.y = v85 + v79 * v83;
                v131.size.width = v79;
                v131.size.height = v79;
                v132 = CGRectInset(v131, v93, v93);
                v94 = CGPathCreateWithEllipseInRect(v132, 0);
                CGMutablePathRef.addPath(_:transform:)(v94, &v121);
              }

              if (v86 == ++v87)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_88:

          CGMutablePathRef.addPath(_:transform:)(v82, &v121);

          goto LABEL_63;
        }

LABEL_102:
        __break(1u);
      }
    }

    else
    {
LABEL_100:
      __break(1u);
    }

    __break(1u);
    goto LABEL_102;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;

  return CGPathCreateWithRect(*&v25, 0);
}

CGPath *sub_1000D106C()
{
  Mutable = CGPathCreateMutable();
  CGMutablePathRef.move(to:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGPathCloseSubpath(Mutable);
  CGMutablePathRef.move(to:transform:)();
  CGMutablePathRef.addCurve(to:control1:control2:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

CGPath *sub_1000D119C()
{
  Mutable = CGPathCreateMutable();
  CGMutablePathRef.move(to:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addCurve(to:control1:control2:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addCurve(to:control1:control2:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addCurve(to:control1:control2:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addCurve(to:control1:control2:transform:)();
  CGPathCloseSubpath(Mutable);
  CGMutablePathRef.move(to:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addCurve(to:control1:control2:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addCurve(to:control1:control2:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addCurve(to:control1:control2:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addCurve(to:control1:control2:transform:)();
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

uint64_t sub_1000D13DC()
{
  if (*(v0 + 144) == 1)
  {
    v5 = &_s19EyeShapeRoundedRectVN;
    v6 = &off_1001C4A18;
    swift_beginAccess();
    sub_100044554(v0 + 24);
    sub_100049F74(&v4, v0 + 24);
    swift_endAccess();
    v1 = &_s16PupilRoundedRectVN;
    v2 = &off_1001C4C00;
  }

  else
  {
    v5 = &_s14EyeShapeSquareVN;
    v6 = &off_1001C4A28;
    swift_beginAccess();
    sub_100044554(v0 + 24);
    sub_100049F74(&v4, v0 + 24);
    swift_endAccess();
    v1 = &_s11PupilSquareVN;
    v2 = &off_1001C4C10;
  }

  v5 = v1;
  v6 = v2;
  swift_beginAccess();
  sub_100044554(v0 + 64);
  sub_100049F74(&v4, v0 + 64);
  return swift_endAccess();
}

uint64_t sub_1000D14E4()
{
  *(v0 + 16) = 0x3FB999999999999ALL;
  *(v0 + 48) = &_s14EyeShapeSquareVN;
  *(v0 + 56) = &off_1001C4A28;
  *(v0 + 88) = &_s11PupilSquareVN;
  *(v0 + 96) = &off_1001C4C10;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 CGColor];

  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = v3;
  v4 = [v1 clearColor];
  v5 = [v4 CGColor];

  *(v0 + 128) = v5;
  *(v0 + 136) = [v1 whiteColor];
  *(v0 + 144) = 0;
  return v0;
}

uint64_t sub_1000D15F0()
{
  sub_100044554((v0 + 3));
  sub_100044554((v0 + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_1000D1680()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000D16BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000D1704(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000D1760()
{
  result = qword_100200308;
  if (!qword_100200308)
  {
    type metadata accessor for AppleQRCodeConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200308);
  }

  return result;
}

uint64_t _s11Diagnostics12QRCodeUIViewV15qrConfiguration33_C7C14CBB962F1E7E5AB03E239F04C1D1LLAA05ApplebE0CvpfP_0(uint64_t a1)
{
  v2 = type metadata accessor for AppleQRCodeConfiguration();
  v3 = sub_1000D1760();

  return ObservedObject.init(wrappedValue:)(a1, v2, v3);
}

id QRCodeUIView.makeUIView(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for QRCodeView();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC11Diagnostics10QRCodeView_qrConfiguration] = a3;
  v8.receiver = v5;
  v8.super_class = v4;

  v6 = objc_msgSendSuper2(&v8, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v6 setOpaque:{0, v8.receiver, v8.super_class}];
  [v6 setNeedsDisplay];

  return v6;
}

id QRCodeUIView.updateUIView(_:context:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&a1[OBJC_IVAR____TtC11Diagnostics10QRCodeView_qrConfiguration] = a4;
  swift_retain_n();

  [a1 setNeedsDisplay];

  return [a1 setNeedsDisplay];
}

id sub_1000D1930()
{
  v1 = *(v0 + 8);
  v2 = type metadata accessor for QRCodeView();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC11Diagnostics10QRCodeView_qrConfiguration] = v1;
  v6.receiver = v3;
  v6.super_class = v2;

  v4 = objc_msgSendSuper2(&v6, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v4 setOpaque:{0, v6.receiver, v6.super_class}];
  [v4 setNeedsDisplay];

  return v4;
}

id sub_1000D19D8(char *a1)
{
  *&a1[OBJC_IVAR____TtC11Diagnostics10QRCodeView_qrConfiguration] = *(v1 + 8);
  swift_retain_n();

  [a1 setNeedsDisplay];

  return [a1 setNeedsDisplay];
}

uint64_t sub_1000D1A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000D1BB4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000D1AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000D1BB4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000D1B24()
{
  sub_1000D1BB4();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000D1B50()
{
  result = qword_100200310;
  if (!qword_100200310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200310);
  }

  return result;
}

unint64_t sub_1000D1BB4()
{
  result = qword_100200318;
  if (!qword_100200318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200318);
  }

  return result;
}

uint64_t sub_1000D1C0C(void *a1, CGFloat a2)
{
  v3 = v2;
  v35 = type metadata accessor for CGPathFillRule();
  v6 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGAffineTransformMakeScale(&transform, a2, a2);
  Mutable = CGPathCreateMutable();
  v10 = *(v3 + 16);
  CGMutablePathRef.addPath(_:transform:)(v10, &transform);

  v39 = a1;
  v11 = a1[3];
  type metadata accessor for BoolMatrix();
  result = swift_allocObject();
  v36 = result;
  v13 = v11 * v11;
  if ((v11 * v11) >> 64 != (v11 * v11) >> 63)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    if (v13)
    {
      v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v14[2] = v13;
      bzero(v14 + 4, v11 * v11);
    }

    else
    {
      v14 = _swiftEmptyArrayStorage;
    }

    v15 = v36;
    *(v36 + 16) = v11;
    *(v15 + 24) = v11;
    *(v15 + 32) = v14;

    v16 = v39[3];
    if (v16 < 0)
    {
      goto LABEL_48;
    }

    if (!v16)
    {
LABEL_35:

      return v36;
    }

    v17 = 0;
    v18 = 0;
    v34 = enum case for CGPathFillRule.winding(_:);
    v38 = (v6 + 104);
    v19 = (v6 + 8);
    v32 = v16;
    while (1)
    {
      v20 = v39[3];
      if (v20 < 0)
      {
        goto LABEL_43;
      }

      v33 = v18;
      if (v20)
      {
        break;
      }

LABEL_9:
      v18 = v33 + 1;
      v17 += v11;
      if (v33 + 1 == v32)
      {
        goto LABEL_35;
      }
    }

    v41 = 0;
    v42 = 0;
    v40 = 0x3FF0000000000000;
    v43 = 0x3FF0000000000000;
    v44 = 0;
    v45 = 0;
    if (v18 >= v11)
    {
      goto LABEL_44;
    }

    if ((v18 * v11) >> 64 == (v18 * v11) >> 63)
    {
      v21 = 0;
      v37 = *v38;
      while (1)
      {
        v22 = v11;
        v23 = v35;
        v37(v8, v34, v35);
        v24 = CGPathRef.contains(_:using:transform:)();
        result = (*v19)(v8, v23);
        if (v24)
        {
          v25 = 0;
          if (v22 == v21)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v26 = v39[2];
          if (v21 >= v26 || v33 >= v39[3])
          {
            goto LABEL_38;
          }

          v28 = v33 * v26;
          if ((v33 * v26) >> 64 != (v33 * v26) >> 63)
          {
            goto LABEL_39;
          }

          v29 = v28 + v21;
          if (__OFADD__(v28, v21))
          {
            goto LABEL_40;
          }

          if ((v29 & 0x8000000000000000) != 0)
          {
            goto LABEL_41;
          }

          v30 = v39[4];
          if (v29 >= *(v30 + 16))
          {
            goto LABEL_42;
          }

          v25 = *(v30 + v29 + 32);
          if (v22 == v21)
          {
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
            break;
          }
        }

        v11 = v22;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if (v17 < 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          result = sub_10003B9AC(v14);
          v14 = result;
          if (v17 < 0)
          {
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }
        }

        if ((v17 + v21) >= v14[2])
        {
          goto LABEL_37;
        }

        *(v14 + v17 + v21 + 32) = v25;
        *(v36 + 32) = v14;
        if (v20 == ++v21)
        {
          goto LABEL_9;
        }
      }
    }

    __break(1u);
    goto LABEL_46;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1000D1FDC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000D2040()
{
  type metadata accessor for FargoQRCodeGenerator();
  v1 = swift_allocObject();
  *(v1 + 16) = [objc_allocWithZone(CIContext) init];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() filterWithName:v2];

  *(v1 + 24) = v3;
  *(v0 + 16) = v1;
  type metadata accessor for BoolMatrix();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = &_swiftEmptyArrayStorage;
  *(v0 + 24) = v4;
  *(v0 + 32) = 3;
  return v0;
}

uint64_t sub_1000D2120(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  type metadata accessor for FargoQRCodeGenerator();
  v6 = swift_allocObject();
  *(v6 + 16) = [objc_allocWithZone(CIContext) init];
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() filterWithName:v7];

  *(v6 + 24) = v8;
  *(v4 + 16) = v6;
  type metadata accessor for BoolMatrix();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = _swiftEmptyArrayStorage;
  *(v4 + 24) = v9;
  *(v4 + 32) = a3;

  sub_1000D6724();
  v11 = v10;

  if (v11)
  {
    *(v4 + 24) = v11;
  }

  return v4;
}

uint64_t sub_1000D225C()
{

  return swift_deallocClassInstance();
}

void sub_1000D22C0(CGContext *a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v63 = a3;
  v62 = type metadata accessor for CGPathFillRule();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68.origin.x = a4;
  v68.origin.y = a5;
  v68.size.width = a6;
  v68.size.height = a7;
  Width = CGRectGetWidth(v68);
  v69.origin.x = a4;
  v69.origin.y = a5;
  v69.size.width = a6;
  v69.size.height = a7;
  Height = CGRectGetHeight(v69);
  if (Height >= Width)
  {
    v18 = Width;
  }

  else
  {
    v18 = Height;
  }

  v19 = (v18 - v18 / *(*(v7 + 3) + 24) * *(*(v7 + 3) + 24)) * 0.5;
  v20 = *(a2 + 128);
  CGContextSaveGState(a1);
  CGContextSetFillColorWithColor(a1, v20);
  v70.origin.x = v19;
  v70.origin.y = v19;
  v70.size.width = v18;
  v70.size.height = v18;
  CGContextFillRect(a1, v70);
  CGContextRestoreGState(a1);
  CGContextSaveGState(a1);
  v21 = objc_opt_self();
  v22 = [v21 bezierPathWithRoundedRect:v19 + 6.0 cornerRadius:{v19 + 6.0, v18 + -12.0, v18 + -12.0, 15.0}];
  v23 = [v22 CGPath];
  CGContextAddPath(a1, v23);

  v24 = [*(a2 + 136) CGColor];
  CGContextSetFillColorWithColor(a1, v24);

  CGContextDrawPath(a1, kCGPathFill);
  CGContextRestoreGState(a1);
  v25 = *(a2 + 112);
  if (v25)
  {
    v26 = [v25 CGColor];
    if (v26)
    {
      v27 = v26;
      CGContextSaveGState(a1);
      v71.origin.x = v19;
      v71.origin.y = v19;
      v71.size.width = v18;
      v71.size.height = v18;
      v72 = CGRectInset(v71, 6.0, 6.0);
      v28 = [v21 bezierPathWithRoundedRect:v72.origin.x cornerRadius:{v72.origin.y, v72.size.width, v72.size.height, 15.0}];
      CGContextSetLineWidth(a1, 6.0);
      v29 = [v28 CGPath];
      CGContextAddPath(a1, v29);

      CGContextSetStrokeColorWithColor(a1, v27);
      CGContextDrawPath(a1, kCGPathStroke);

      CGContextRestoreGState(a1);
    }
  }

  v59 = v7;
  v30 = sub_1000D06AC(0, a2, 0, v18 + -30.0, v18 + -30.0);
  CGContextSaveGState(a1);
  v31 = *(a2 + 104);
  CGContextSetFillColorWithColor(a1, v31);
  v60 = v30;
  CGContextAddPath(a1, v30);
  v64 = enum case for CGPathFillRule.winding(_:);
  v32 = v61;
  v34 = (v61 + 13);
  v33 = v61[13];
  v35 = v62;
  v33(v15);
  CGContextRef.fillPath(using:)();

  v36 = v32[1];
  v36(v15, v35);
  CGContextRestoreGState(a1);
  v37 = sub_1000D06AC(1, a2, 0, v18 + -30.0, v18 + -30.0);
  CGContextSaveGState(a1);
  v38 = *(a2 + 104);
  CGContextSetFillColorWithColor(a1, v38);
  v61 = v37;
  CGContextAddPath(a1, v37);
  (v33)(v15, v64, v35);
  CGContextRef.fillPath(using:)();

  v36(v15, v35);
  CGContextRestoreGState(a1);
  v39 = v63;
  v40 = sub_1000D06AC(2, a2, v63, v18 + -30.0, v18 + -30.0);
  CGContextSaveGState(a1);
  v41 = *(a2 + 104);
  CGContextSetFillColorWithColor(a1, v41);
  v59 = v40;
  CGContextAddPath(a1, v40);
  v58 = v33;
  v57 = v34;
  (v33)(v15, v64, v35);
  CGContextRef.fillPath(using:)();

  v36(v15, v35);
  CGContextRestoreGState(a1);
  if (v39)
  {

    CGContextSaveGState(a1);
    CGAffineTransformMakeScale(&t1, v18, v18);
    tx = t1.tx;
    ty = t1.ty;
    v56 = *&t1.a;
    v55 = *&t1.c;
    CGAffineTransformMakeScale(&t1, 1.0, -1.0);
    v44 = t1.tx;
    v45 = t1.ty;
    v54 = *&t1.a;
    v53 = *&t1.c;
    CGAffineTransformMakeTranslation(&t1, 0.0, 1.0);
    v46 = *&t1.a;
    v47 = *&t1.c;
    v48 = *&t1.tx;
    *&t1.a = v54;
    *&t1.c = v53;
    t1.tx = v44;
    t1.ty = v45;
    *&t2.a = v46;
    *&t2.c = v47;
    *&t2.tx = v48;
    CGAffineTransformConcat(&v65, &t1, &t2);
    t2 = v65;
    *&v65.c = v55;
    *&v65.a = v56;
    v65.tx = tx;
    v65.ty = ty;
    CGAffineTransformConcat(&t1, &t2, &v65);
    Mutable = CGPathCreateMutable();
    v50 = v39;
    v51 = *(v39 + 16);
    CGMutablePathRef.addPath(_:transform:)(v51, &t1);

    CGContextScaleCTM(a1, 1.0, -1.0);
    CGContextTranslateCTM(a1, v19, v19 - v18);
    CGContextAddPath(a1, Mutable);
    (v58)(v15, v64, v35);
    CGContextRef.clip(using:)();
    v36(v15, v35);
    v52 = *(v50 + 32);
    PathBoundingBox = CGPathGetPathBoundingBox(Mutable);
    CGRectInset(PathBoundingBox, *(v50 + 24), *(v50 + 24));
    CGContextRef.draw(_:in:byTiling:)();

    CGContextRestoreGState(a1);
  }
}

double CGPoint.rotated(around:byDegrees:)(double a1, double a2, double a3, double a4, double a5)
{
  v7 = sqrt((a4 - a1) * (a4 - a1) + (a5 - a2) * (a5 - a2));
  v8 = atan2(a5 - a2, a4 - a1);
  return v7 * __sincos_stret(a3 * 3.14159265 / 180.0 + v8).__cosval + a1;
}

id sub_1000D2AE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

CGPathRef sub_1000D2B60()
{
  v1.origin.x = 30.0;
  v1.origin.y = 30.0;
  v1.size.width = 30.0;
  v1.size.height = 30.0;
  return CGPathCreateWithRect(v1, 0);
}

CGPathRef sub_1000D2B78()
{
  v1.origin.x = 30.0;
  v1.origin.y = 30.0;
  v1.size.width = 30.0;
  v1.size.height = 30.0;
  return CGPathCreateWithRoundedRect(v1, 4.0, 4.0, 0);
}

id QRCodeView.__allocating_init(qrConfiguration:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11Diagnostics10QRCodeView_qrConfiguration] = a1;
  v6.receiver = v3;
  v6.super_class = v1;

  v4 = objc_msgSendSuper2(&v6, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v4 setOpaque:{0, v6.receiver, v6.super_class}];
  [v4 setNeedsDisplay];

  return v4;
}

id QRCodeView.init(qrConfiguration:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics10QRCodeView_qrConfiguration] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for QRCodeView();

  v2 = objc_msgSendSuper2(&v4, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v2 setOpaque:{0, v4.receiver, v4.super_class}];
  [v2 setNeedsDisplay];

  return v2;
}

Swift::Void __swiftcall QRCodeView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for QRCodeView();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  [v0 setNeedsDisplay];
}

id QRCodeView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id QRCodeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QRCodeView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void _s11Diagnostics10QRCodeViewC4drawyySo6CGRectVF_0()
{
  v1 = UIGraphicsGetCurrentContext();
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC11Diagnostics10QRCodeView_qrConfiguration];
    if (v2)
    {
      v13 = v1;

      [v0 bounds];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v11 = *(v2 + 48);
      v12 = *(v2 + 40);

      sub_1000D22C0(v13, v12, v11, v4, v6, v8, v10);
    }

    else
    {
    }
  }
}

uint64_t AppleQRCodeConfiguration.__allocating_init(utf8String:errorCorrection:style:roundedEye:)(uint64_t a1, uint64_t a2, char a3, void *a4, void *a5, void *a6, char a7, char a8)
{
  v16 = swift_allocObject();
  AppleQRCodeConfiguration.init(utf8String:errorCorrection:style:roundedEye:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

void AppleQRCodeConfiguration.init(utf8String:errorCorrection:style:roundedEye:)(uint64_t a1, uint64_t a2, char a3, void *a4, void *a5, void *a6, char a7, char a8)
{
  v9 = v8;
  *(v8 + 16) = 3;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0xE000000000000000;
  _s6DesignCMa();
  swift_allocObject();
  *(v8 + 40) = sub_1000D14E4();
  *(v8 + 48) = 0;
  type metadata accessor for AppleQRCode();
  swift_allocObject();
  *(v8 + 56) = sub_1000D2040();
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;

  *(v8 + 16) = a3;
  swift_allocObject();

  *(v8 + 56) = sub_1000D2120(a1, a2, a3);

  v17 = *(v8 + 40);
  v18 = objc_allocWithZone(UIColor);

  v19 = [v18 initWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
  v20 = [v19 CGColor];

  v21 = *(v17 + 104);
  *(v17 + 104) = v20;

  v22 = *(v9 + 40);

  v23 = sub_1000D6DA4(a4, a5, a6, a7);
  v25 = v24;
  v27 = v26;

  v28 = *(v22 + 112);
  *(v22 + 112) = v25;

  v29 = *(v9 + 40);

  v30 = sub_1000D6DA4(a4, a5, a6, a7);
  v32 = v31;

  v34 = *(v29 + 120);
  *(v29 + 120) = v32;

  v35 = *(v9 + 40);

  v36 = sub_1000D6DA4(a4, a5, a6, a7);
  v38 = v37;

  v40 = *(v35 + 136);
  *(v35 + 136) = v36;

  *(*(v9 + 40) + 144) = a8;

  sub_1000D13DC();

  v41 = [objc_opt_self() configurationWithPointSize:200.0];
  v42 = String._bridgeToObjectiveC()();
  v43 = [objc_opt_self() _systemImageNamed:v42 withConfiguration:v41];

  if (v43)
  {

    v44 = *(*(v9 + 40) + 120);
    if (v44)
    {
      v45 = *(*(v9 + 40) + 120);
    }

    else
    {
      v45 = [objc_opt_self() lightGrayColor];
      v44 = 0;
    }

    v46 = v44;
    v47.super.isa = UIImage.tinted(_:)(v45).super.isa;

    v48 = [(objc_class *)v47.super.isa CGImage];
    if (v48)
    {
      v49 = v48;
      v53.origin.x = 0.371;
      v53.origin.y = 0.35;
      v53.size.width = 0.24;
      v53.size.height = 0.28;
      v50 = CGPathCreateWithEllipseInRect(v53, 0);
      _s12LogoTemplateCMa();
      v51 = swift_allocObject();
      CGPathGetPathBoundingBox(v50);

      sub_1000D3594(a4, a5, a6, a7);
      v51[2] = v50;
      v51[3] = 0x4014000000000000;
      v51[4] = v49;
      *(v9 + 48) = v51;
    }

    else
    {

      sub_1000D3594(a4, a5, a6, a7);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000D3594(void *a1, void *a2, void *a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return;
    }

    a1 = a2;
  }

  else
  {
    a3 = a2;
  }
}