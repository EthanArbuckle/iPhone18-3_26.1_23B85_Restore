void sub_1007B1098(char a1)
{
  v3 = type metadata accessor for MainAction();
  __chkstk_darwin(v3);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007B3490(a1, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_);
  v6 = *(v1 + 16);
  type metadata accessor for PerformanceTestAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_10004F034(v5, v7, v6);
  sub_1000180EC(v7, &unk_100CD81B0);
  sub_10004FB48(v5, type metadata accessor for MainAction);
  sub_1007B3490(a1, &static os_log_type_t.default.getter, "Finished test: %{public}s", &selRef_finishedTest_);
}

void sub_1007B11F0(char a1, uint64_t a2)
{
  v5 = type metadata accessor for MainAction();
  __chkstk_darwin(v5);
  v7 = (v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1007B3490(a1, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_);
  v8 = *(v2 + 16);
  *v7 = a2;
  type metadata accessor for PerformanceTestAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_10004F034(v7, v9, v8);
  sub_1000180EC(v9, &unk_100CD81B0);
  sub_10004FB48(v7, type metadata accessor for MainAction);
  sub_1007B3490(a1, &static os_log_type_t.default.getter, "Finished test: %{public}s", &selRef_finishedTest_);
}

void sub_1007B1350(char a1)
{
  sub_1007B3490(a1, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_);
  v2 = sub_100381434(a1);
  v4 = v3;
  v5 = [objc_opt_self() sharedApplication];
  UIApplication.expectedWindow.getter();

  sub_1000161C0(v20, v21);
  dispatch thunk of WindowType.bounds.getter();
  v6 = CGRectGetHeight(v24) * 0.7;
  sub_100006F14(v20);
  v7 = objc_allocWithZone(RPTDirectionalSwipeTestParameters);
  v8 = sub_1007B9C24(40.0, v6, 300.0, 10.0, v2, v4, 5, 6, 0, 0);
  v9 = objc_opt_self();
  v10 = sub_100381434(a1);
  v12 = v11;
  sub_10022C350(&unk_100CE49D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100A3BD20;
  *(v13 + 32) = v8;
  v14 = v8;
  sub_10022C350(&qword_100CD81E0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  v22 = sub_1007BA3C4;
  v23 = v17;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1000742F0;
  v21 = &unk_100C6C370;
  v18 = _Block_copy(v20);

  v19 = sub_1007B9DC4(v10, v12, isa, v18, v9);
  _Block_release(v18);

  [objc_opt_self() runTestWithParameters:v19];
}

void sub_1007B160C(char a1)
{
  sub_1007B3490(a1, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_);
  v2 = [objc_opt_self() sharedApplication];
  UIApplication.expectedWindow.getter();

  sub_1000161C0(v23, v24);
  dispatch thunk of WindowType.bounds.getter();
  v28 = CGRectInset(v27, 10.0, 90.0);
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  sub_100006F14(v23);
  v7 = sub_100381434(a1);
  v9 = v8;
  v10 = objc_allocWithZone(RPTDirectionalSwipeTestParameters);
  v11 = sub_1007B9C24(x, y, width, height, v7, v9, 3, 3, 0, 0);
  v12 = objc_opt_self();
  v13 = sub_100381434(a1);
  v15 = v14;
  sub_10022C350(&unk_100CE49D0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100A3BD20;
  *(v16 + 32) = v11;
  v17 = v11;
  sub_10022C350(&qword_100CD81E0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a1;
  v25 = sub_1007BA3C4;
  v26 = v20;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_1000742F0;
  v24 = &unk_100C6C3C0;
  v21 = _Block_copy(v23);

  v22 = sub_1007B9DC4(v13, v15, isa, v21, v12);
  _Block_release(v21);

  [objc_opt_self() runTestWithParameters:v22];
}

void sub_1007B18DC(int a1, int a2)
{
  LODWORD(v143) = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v137 = *(v4 - 8);
  v138 = v4;
  __chkstk_darwin(v4);
  v135 = &v115[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v136 = type metadata accessor for DispatchQoS();
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v133 = &v115[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v132 = type metadata accessor for DispatchTime();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v129 = &v115[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v130 = &v115[-v9];
  v144 = type metadata accessor for ConditionCode();
  v148 = *(v144 - 8);
  __chkstk_darwin(v144);
  v128 = &v115[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Location.Identifier();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v127 = &v115[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v140 = &v115[-v15];
  __chkstk_darwin(v16);
  v141 = &v115[-v17];
  __chkstk_darwin(v18);
  v20 = &v115[-v19];
  v21 = type metadata accessor for SavedLocation();
  v142 = *(v21 - 8);
  __chkstk_darwin(v21 - 8);
  v126 = &v115[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v139 = &v115[-v24];
  __chkstk_darwin(v25);
  v27 = &v115[-v26];
  __chkstk_darwin(v28);
  v30 = &v115[-v29];
  sub_1007B3490(a1, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_);
  sub_1000161C0(v2 + 10, v2[13]);
  v31 = dispatch thunk of SavedLocationsManagerType.savedLocations.getter();
  if (*(v31 + 16) < 5uLL)
  {

    sub_1007B3490(a1, &static os_log_type_t.error.getter, "Failed test: %{public}s", &selRef_failedTest_);
    return;
  }

  v121 = a1;
  v122 = v2;
  v120 = v2[6];
  sub_10022C350(&qword_100CD81F0);
  v32 = sub_10022C350(&qword_100CD81F8);
  v33 = (*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80);
  v146 = *(*(v32 - 8) + 72);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100A3B020;
  v119 = v34;
  v35 = v34 + v33;
  v147 = v32;
  v36 = *(v32 + 48);
  v37 = v142;
  v124 = v31 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
  sub_1001A30C4(v124, v30);
  SavedLocation.identifier.getter();
  sub_10004FB48(v30, &type metadata accessor for SavedLocation);
  Location.Identifier.coordinate.getter();
  v39 = v38;
  v41 = v40;
  v42 = *(v12 + 8);
  v145 = v11;
  v125 = v42;
  v42(v20, v11);
  sub_1007B4424(v39, v41);
  v43 = *(v148 + 104);
  v44 = v12 + 8;
  v123 = v148 + 104;
  if (v143)
  {
    v45 = enum case for ConditionCode.clear(_:);
    v46 = v144;
    (v43)(v35 + v36, enum case for ConditionCode.clear(_:), v144);
    if (*(v31 + 16) >= 2uLL)
    {
      v116 = v45;
      v118 = v43;
      v47 = v35 + v146;
      v117 = *(v147 + 48);
      v48 = v44;
      v49 = *(v37 + 72);
      v50 = v124;
      v143 = v49;
      sub_1001A30C4(v124 + v49, v27);
      v51 = v141;
      SavedLocation.identifier.getter();
      sub_10004FB48(v27, &type metadata accessor for SavedLocation);
      Location.Identifier.coordinate.getter();
      v53 = v52;
      v55 = v54;
      v142 = v48;
      v125(v51, v145);
      sub_1007B4424(v53, v55);
      v56 = v47 + v117;
      v57 = v118;
      (v118)(v56, enum case for ConditionCode.snow(_:), v46);
      if (*(v31 + 16) >= 3uLL)
      {
        v58 = v35 + 2 * v146;
        v59 = *(v147 + 48);
        v60 = v139;
        sub_1001A30C4(v50 + 2 * v143, v139);
        v61 = v140;
        SavedLocation.identifier.getter();
        sub_10004FB48(v60, &type metadata accessor for SavedLocation);
        Location.Identifier.coordinate.getter();
        v63 = v62;
        v65 = v64;
        v66 = v61;
        v67 = v125;
        v125(v66, v145);
        sub_1007B4424(v63, v65);
        v57(v58 + v59, enum case for ConditionCode.thunderstorms(_:), v46);
        if (*(v31 + 16) >= 4uLL)
        {
          v68 = v35 + 3 * v146;
          v69 = *(v147 + 48);
          v70 = v126;
          sub_1001A30C4(v50 + 3 * v143, v126);

          v71 = v127;
          SavedLocation.identifier.getter();
          sub_10004FB48(v70, &type metadata accessor for SavedLocation);
          Location.Identifier.coordinate.getter();
          v73 = v72;
          v75 = v74;
          v67(v71, v145);
          sub_1007B4424(v73, v75);
          v57(v68 + v69, enum case for ConditionCode.strongStorms(_:), v46);
          type metadata accessor for StubPPTWeatherDataManager.CoordinateString();
          sub_1000674D4(&unk_100CD8200, &type metadata accessor for StubPPTWeatherDataManager.CoordinateString);
          Dictionary.init(dictionaryLiteral:)();
          v76 = v116;
LABEL_12:
          v104 = v128;
          v57(v128, v76, v46);
          StubPPTWeatherDataManager.setupStubData(for:defaultCondition:)();

          (*(v148 + 8))(v104, v46);
          v105 = v122;
          sub_1008A5EC4(1, 1);
          sub_10000C70C(0, &qword_100CB4670);
          v106 = static OS_dispatch_queue.main.getter();
          v107 = v129;
          static DispatchTime.now()();
          v108 = v130;
          + infix(_:_:)();
          v148 = *(v131 + 8);
          v109 = v132;
          (v148)(v107, v132);
          v110 = swift_allocObject();
          *(v110 + 16) = v105;
          *(v110 + 24) = v121;
          aBlock[4] = sub_1007BA01C;
          aBlock[5] = v110;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000742F0;
          aBlock[3] = &unk_100C6C410;
          v111 = _Block_copy(aBlock);

          v112 = v133;
          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
          sub_10022C350(&qword_100CB4680);
          sub_1000743E8();
          v113 = v135;
          v114 = v138;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v111);

          (*(v137 + 8))(v113, v114);
          (*(v134 + 8))(v112, v136);
          (v148)(v108, v109);
          return;
        }

        goto LABEL_17;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  LODWORD(v143) = enum case for ConditionCode.cloudy(_:);
  v46 = v144;
  (v43)(v35 + v36);
  if (*(v31 + 16) < 2uLL)
  {
    goto LABEL_14;
  }

  v77 = v35 + v146;
  v118 = *(v147 + 48);
  v142 = *(v37 + 72);
  sub_1001A30C4(v124 + v142, v27);
  v78 = v141;
  SavedLocation.identifier.getter();
  sub_10004FB48(v27, &type metadata accessor for SavedLocation);
  Location.Identifier.coordinate.getter();
  v80 = v79;
  v82 = v81;
  v125(v78, v145);
  sub_1007B4424(v80, v82);
  v83 = &v118[v77];
  v84 = v43;
  (v43)(v83, v143, v46);
  if (*(v31 + 16) < 3uLL)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v85 = v35 + 2 * v146;
  v86 = *(v147 + 48);
  v87 = v139;
  sub_1001A30C4(v124 + 2 * v142, v139);
  v88 = v140;
  SavedLocation.identifier.getter();
  sub_10004FB48(v87, &type metadata accessor for SavedLocation);
  Location.Identifier.coordinate.getter();
  v90 = v89;
  v92 = v91;
  v93 = v88;
  v94 = v145;
  v95 = v125;
  v125(v93, v145);
  sub_1007B4424(v90, v92);
  v84(v85 + v86, v143, v46);
  if (*(v31 + 16) >= 4uLL)
  {
    v96 = v35 + 3 * v146;
    v97 = *(v147 + 48);
    v98 = v126;
    sub_1001A30C4(v124 + 3 * v142, v126);

    v99 = v127;
    SavedLocation.identifier.getter();
    sub_10004FB48(v98, &type metadata accessor for SavedLocation);
    Location.Identifier.coordinate.getter();
    v101 = v100;
    v103 = v102;
    v95(v99, v94);
    sub_1007B4424(v101, v103);
    v57 = v84;
    v84(v96 + v97, enum case for ConditionCode.partlyCloudy(_:), v46);
    type metadata accessor for StubPPTWeatherDataManager.CoordinateString();
    sub_1000674D4(&unk_100CD8200, &type metadata accessor for StubPPTWeatherDataManager.CoordinateString);
    Dictionary.init(dictionaryLiteral:)();
    v76 = enum case for ConditionCode.clear(_:);
    goto LABEL_12;
  }

LABEL_18:
  __break(1u);
}

void sub_1007B27E0(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MainAction();
  __chkstk_darwin(v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  if ([v9 isRecapAvailable])
  {
    v10 = *(v3 + 16);
    v11 = sub_10022C350(&unk_100CD8210);
    v43 = v9;
    v12 = *(v11 + 48);
    v13 = *(v11 + 64);
    *v8 = 2;
    v14 = type metadata accessor for WeatherMapOverlayKind();
    (*(*(v14 - 8) + 16))(&v8[v12], a2, v14);
    v8[v13] = 1;
    type metadata accessor for PerformanceTestAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v46 = 0;
    aBlock = 0u;
    v45 = 0u;
    sub_10004F034(v8, &aBlock, v10);
    sub_1000180EC(&aBlock, &unk_100CD81B0);
    sub_10004FB48(v8, type metadata accessor for MainAction);
    v15 = sub_100381434(a1);
    v17 = v16;
    v18 = objc_opt_self();
    v19 = [v18 sharedApplication];
    UIApplication.expectedWindow.getter();

    sub_1000161C0(&aBlock, *(&v45 + 1));
    dispatch thunk of WindowType.bounds.getter();
    v20 = CGRectGetHeight(v48) * 0.7;
    sub_100006F14(&aBlock);
    v21 = objc_allocWithZone(RPTDirectionalSwipeTestParameters);
    v22 = sub_1007B9C24(40.0, v20, 300.0, 10.0, v15, v17, 3, 6, 0, 0);
    v23 = sub_100381434(a1);
    v25 = v24;
    v26 = [v18 sharedApplication];
    UIApplication.expectedWindow.getter();

    sub_1000161C0(&aBlock, *(&v45 + 1));
    dispatch thunk of WindowType.bounds.getter();
    v27 = CGRectGetHeight(v49) * 0.7;
    sub_100006F14(&aBlock);
    v28 = objc_allocWithZone(RPTDirectionalSwipeTestParameters);
    v29 = sub_1007B9C24(40.0, v27, 300.0, 10.0, v23, v25, 6, 5, 0, 0);
    v30 = objc_opt_self();
    v31 = sub_100381434(a1);
    v33 = v32;
    sub_10022C350(&unk_100CE49D0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100A81FA0;
    *(v34 + 32) = v22;
    *(v34 + 40) = v29;
    *(v34 + 48) = v22;
    v35 = v22;
    v36 = v29;
    sub_10022C350(&qword_100CD81E0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v38 = swift_allocObject();
    swift_weakInit();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = a1;
    v46 = sub_1007BA05C;
    v47 = v39;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v45 = sub_1000742F0;
    *(&v45 + 1) = &unk_100C6C460;
    v40 = _Block_copy(&aBlock);

    v41 = sub_1007B9DC4(v31, v33, isa, v40, v30);
    _Block_release(v40);

    [v43 runTestWithParameters:v41];
  }

  else
  {
    sub_1007B3490(a1, &static os_log_type_t.error.getter, "Failed test: %{public}s", &selRef_failedTest_);
  }
}

uint64_t sub_1007B2CC4(char a1)
{
  v2 = sub_10022C350(&qword_100CA3538);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  sub_10001B350(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v6;
  *(v7 + 40) = a1;
  sub_1007B6A20(v4, &unk_100A820B0, v7);

  return sub_1000180EC(v4, &qword_100CA3538);
}

uint64_t sub_1007B2DE4(int a1)
{
  v2 = v1;
  LODWORD(v45) = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v38 = *(v46 - 8);
  __chkstk_darwin(v46);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v37 = &v35 - v9;
  v36 = type metadata accessor for MainAction();
  __chkstk_darwin(v36);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  sub_1008A5EC4(1, *(v1 + 120));
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.VFX.animatedBackgrounds.getter();
  Settings.VFX.AnimatedBackgrounds.locationAnimationKind.getter();

  SettingReader.read<A>(_:)();

  static Settings.VFX.animatedBackgrounds.getter();
  v19 = dispatch thunk of SettingGroup.isEnabled.getter();

  (*(v13 + 104))(v15, enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.mica(_:), v12);
  v20 = sub_1001497E4(v18, v15);
  v21 = *(v13 + 8);
  v21(v15, v12);
  if (v20 & 1) != 0 && (v19)
  {
    v22 = [objc_opt_self() standardUserDefaults];
    LOBYTE(aBlock) = 0;
    NSUserDefaults.set<A>(_:for:)();

    v35 = v12;
    v23 = *(v2 + 16);
    type metadata accessor for PerformanceTestAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v49 = 0;
    aBlock = 0u;
    v48 = 0u;
    sub_10004F034(v11, &aBlock, v23);
    sub_1000180EC(&aBlock, &unk_100CD81B0);
    sub_10004FB48(v11, type metadata accessor for MainAction);
    sub_10000C70C(0, &qword_100CB4670);
    v36 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v24 = v37;
    + infix(_:_:)();
    v38 = *(v38 + 8);
    (v38)(v7, v46);
    v25 = swift_allocObject();
    *(v25 + 16) = v2;
    *(v25 + 24) = v45;
    *(v25 + 25) = 1;
    v49 = sub_1007BA228;
    v50 = v25;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v48 = sub_1000742F0;
    *(&v48 + 1) = &unk_100C6C6B8;
    v26 = _Block_copy(&aBlock);

    v45 = v21;
    v27 = v39;
    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
    sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680);
    sub_1000743E8();
    v28 = v41;
    v29 = v44;
    v30 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v31 = v36;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v26);

    (*(v43 + 8))(v28, v29);
    v32 = v27;
    v33 = v45;
    (*(v40 + 8))(v32, v42);
    (v38)(v24, v46);
    return v33(v18, v30);
  }

  else
  {
    sub_1007B6BF0(0, 0, v2, v45);
    return (v21)(v18, v12);
  }
}

void sub_1007B3490(char a1, uint64_t (*a2)(void), const char *a3, SEL *a4)
{
  v8 = type metadata accessor for Logger();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  static Logger.automation.getter();
  v15 = Logger.logObject.getter();
  v16 = a2();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = a4;
    v26 = swift_slowAlloc();
    v18 = v26;
    *v17 = 136446210;
    v19 = sub_100381434(a1);
    v21 = sub_100078694(v19, v20, &v26);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, a3, v17, 0xCu);
    sub_100006F14(v18);
    a4 = v25;
    sub_100003884();
    sub_100003884();

    (*(v10 + 8))(v14, v8);
  }

  else
  {

    (*(v10 + 8))(v14, v8);
  }

  v22 = [objc_opt_self() sharedApplication];
  v23 = sub_100381434(a1);
  sub_10016941C(v23, v24, v22, a4);
}

uint64_t sub_1007B367C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a7;
  v38 = a6;
  v39 = a2;
  v37 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v10 - 8);
  v46 = v10;
  __chkstk_darwin(v10);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v43 = *(v12 - 8);
  v44 = v12;
  __chkstk_darwin(v12);
  v40 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTime();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v35 - v19;
  v21 = type metadata accessor for MainAction();
  __chkstk_darwin(v21);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v24 = 1;
  }

  else
  {
    v24 = *(a3 + 120);
  }

  sub_1008A5EC4(1, v24);
  v25 = *(a3 + 16);
  type metadata accessor for PerformanceTestAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v49 = 0;
  aBlock = 0u;
  v48 = 0u;
  sub_10004F034(v23, &aBlock, v25);
  sub_1000180EC(&aBlock, &unk_100CD81B0);
  sub_10004FB48(v23, type metadata accessor for MainAction);
  sub_10000C70C(0, &qword_100CB4670);
  v26 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v36 = *(v15 + 8);
  v36(v17, v14);
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  *(v27 + 24) = v37;
  v28 = v20;
  v29 = v41;
  *(v27 + 32) = v38;
  *(v27 + 40) = v29;
  *(v27 + 48) = a1;
  *(v27 + 56) = v39;
  v49 = sub_1007B9D7C;
  v50 = v27;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v48 = sub_1000742F0;
  *(&v48 + 1) = &unk_100C6BE70;
  v30 = _Block_copy(&aBlock);

  sub_10007A47C(a1);

  v31 = v40;
  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680);
  sub_1000743E8();
  v32 = v42;
  v33 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v30);

  (*(v45 + 8))(v32, v33);
  (*(v43 + 8))(v31, v44);
  return (v36)(v28, v14);
}

void sub_1007B3B80(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1007B3490(a2, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_);
  v10 = [objc_opt_self() sharedApplication];
  UIApplication.expectedWindow.getter();

  sub_1000161C0(aBlock, v32);
  dispatch thunk of WindowType.bounds.getter();
  v36 = CGRectInset(v35, 10.0, 120.0);
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  sub_100006F14(aBlock);

  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v15 = CGRectGetHeight(v37) * 3.0;
  v16 = objc_allocWithZone(RPTScrollViewTestParameters);

  v17 = sub_1007B9B14(x, y, width, height, v15, a3, a4, 1, 0, 0);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v18 = CGRectGetHeight(v38) * 3.0;
  v19 = objc_allocWithZone(RPTScrollViewTestParameters);
  v20 = sub_1007B9B14(x, y, width, height, v18, a3, a4, 0, 0, 0);
  v21 = objc_opt_self();
  sub_10022C350(&unk_100CE49D0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100A3AEB0;
  *(v22 + 32) = v17;
  *(v22 + 40) = v20;
  v23 = v17;
  v24 = v20;
  sub_10022C350(&qword_100CD81E0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = a2;
  *(v27 + 32) = a5;
  *(v27 + 40) = a6;
  v33 = sub_1007B9D90;
  v34 = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  v32 = &unk_100C6BEE8;
  v28 = _Block_copy(aBlock);
  sub_10007A47C(a5);

  v29 = sub_1007B9E38(a3, a4, isa, v28, v21);
  _Block_release(v28);

  [objc_opt_self() runTestWithParameters:v29];
}

uint64_t sub_1007B3EF0(uint64_t a1, char a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  sub_1007B367C(sub_1007B9D60, v12, a1, a2, a3, a4, a5);
}

void sub_1007B3F9C(char a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_100381434(a1);
  v8 = v7;
  v9 = objc_opt_self();
  if ([v9 isRecapAvailable])
  {
    sub_1007B3490(a1, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_);
    v10 = [objc_opt_self() sharedApplication];
    UIApplication.expectedWindow.getter();

    v30 = a3;
    sub_1000161C0(aBlock, v32);
    dispatch thunk of WindowType.bounds.getter();
    v36 = CGRectInset(v35, 10.0, 90.0);
    x = v36.origin.x;
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
    sub_100006F14(aBlock);

    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v15 = CGRectGetHeight(v37) * 3.0;
    v16 = objc_allocWithZone(RPTScrollViewTestParameters);

    v17 = sub_1007B9B14(x, y, width, height, v15, v6, v8, 1, 0, 0);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v18 = CGRectGetHeight(v38) * 3.0;
    v19 = objc_allocWithZone(RPTScrollViewTestParameters);
    v20 = sub_1007B9B14(x, y, width, height, v18, v6, v8, 0, 0, 0);
    v29 = objc_opt_self();
    sub_10022C350(&unk_100CE49D0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100A3AEB0;
    *(v21 + 32) = v17;
    *(v21 + 40) = v20;
    v22 = v17;
    v23 = v20;
    sub_10022C350(&qword_100CD81E0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = a1;
    *(v26 + 32) = a2;
    *(v26 + 40) = v30;
    v33 = sub_1007BA454;
    v34 = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000742F0;
    v32 = &unk_100C6C050;
    v27 = _Block_copy(aBlock);
    sub_10007A47C(a2);

    v28 = sub_1007B9DC4(v6, v8, isa, v27, v29);
    _Block_release(v27);

    [v9 runTestWithParameters:v28];
  }

  else
  {

    sub_1007B3490(a1, &static os_log_type_t.error.getter, "Failed test: %{public}s", &selRef_failedTest_);
    if (a2)
    {
      a2();
    }
  }
}

uint64_t sub_1007B4378(uint64_t a1, int a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  sub_1007B4590(sub_1007BA3EC, v6, a1, a2, 6, &unk_100C6BFC0, sub_1007B9EA8, &unk_100C6BFD8);
}

uint64_t sub_1007B4424(double a1, double a2)
{
  sub_10022C350(&qword_100CA40C8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2C3F0;
  *(v4 + 56) = &type metadata for Double;
  *(v4 + 64) = &protocol witness table for Double;
  *(v4 + 32) = a1;
  v5 = String.init(format:_:)();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100A2C3F0;
  *(v8 + 56) = &type metadata for Double;
  *(v8 + 64) = &protocol witness table for Double;
  *(v8 + 32) = a2;
  v10 = String.init(format:_:)();

  return StubPPTWeatherDataManager.CoordinateString.init(latitude:longitude:)(v5, v7, v10, v9);
}

uint64_t sub_1007B452C(uint64_t a1, char a2)
{
  sub_100021698();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100014E5C();
    sub_1007B3490(a2, v4, v5, v6);
  }

  return result;
}

uint64_t sub_1007B4590(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a7;
  v46 = a8;
  v41 = a6;
  v42 = a1;
  v39[3] = a5;
  v44 = a4;
  v43 = a2;
  v48 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v51 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v47 = v12 - v11;
  type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v49 = v14;
  v50 = v13;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for DispatchTime();
  v40 = v18;
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v39 - v23;
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_1000037D8();
  v28 = v27 - v26;
  v29 = *(a3 + 16);
  type metadata accessor for PerformanceTestAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v54 = 0;
  aBlock = 0u;
  v53 = 0u;
  sub_10004F034(v28, &aBlock, v29);
  sub_1000180EC(&aBlock, &unk_100CD81B0);
  sub_10004FB48(v28, type metadata accessor for MainAction);
  sub_10000C70C(0, &qword_100CB4670);
  v30 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v31 = *(v19 + 8);
  v31(v21, v18);
  v32 = swift_allocObject();
  *(v32 + 16) = a3;
  *(v32 + 24) = v44;
  v34 = v42;
  v33 = v43;
  *(v32 + 32) = v42;
  *(v32 + 40) = v33;
  v54 = v45;
  v55 = v32;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v53 = sub_1000742F0;
  *(&v53 + 1) = v46;
  v35 = _Block_copy(&aBlock);

  sub_10007A47C(v34);

  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680);
  sub_1000743E8();
  v36 = v47;
  v37 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v35);

  (*(v51 + 8))(v36, v37);
  (*(v49 + 8))(v17, v50);
  return (v31)(v24, v40);
}

uint64_t sub_1007B49F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  sub_10007A47C(a3);
  a7(a2, a6, v12);
}

void sub_1007B4A8C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100381434(a1);
  v10 = v9;
  v11 = objc_opt_self();
  if ([v11 isRecapAvailable])
  {
    v42 = a3;
    sub_1007B3490(a1, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_);
    v12 = objc_opt_self();
    v13 = [v12 sharedApplication];
    UIApplication.expectedWindow.getter();

    sub_1000161C0(aBlock, v44);
    dispatch thunk of WindowType.bounds.getter();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = objc_allocWithZone(RPTDirectionalSwipeTestParameters);

    v23 = sub_1007B9C24(v15, v17, v19, v21, v8, v10, 1, 6, 0, 0);
    sub_100006F14(aBlock);
    v24 = [v12 sharedApplication];
    UIApplication.expectedWindow.getter();

    sub_1000161C0(aBlock, v44);
    dispatch thunk of WindowType.bounds.getter();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = objc_allocWithZone(RPTDirectionalSwipeTestParameters);
    v34 = sub_1007B9C24(v26, v28, v30, v32, v8, v10, 1, 5, 0, 0);
    sub_100006F14(aBlock);
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v23;
    *(v35 + 32) = v4;
    *(v35 + 40) = a1;
    v36 = a2;
    *(v35 + 48) = a2;
    *(v35 + 56) = v42;
    v37 = sub_10000C70C(0, &qword_100CD81E8);
    v38 = swift_allocObject();
    v38[2] = 0x3FF0000000000000;
    v38[3] = v37;
    v38[4] = 2;
    v38[5] = v23;
    v38[6] = sub_1007B9FBC;
    v38[7] = v35;
    v45 = sub_1007B9FD0;
    v46 = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1007AEBB4;
    v44 = &unk_100C6C1B8;
    v39 = _Block_copy(aBlock);
    v40 = v23;
    v41 = v34;

    sub_10007A47C(v36);

    [v11 runTestWithParameters:v40 resultHandler:v39];
    _Block_release(v39);
  }

  else
  {

    sub_1007B3490(a1, &static os_log_type_t.error.getter, "Failed test: %{public}s", &selRef_failedTest_);
  }
}

uint64_t sub_1007B4E38(uint64_t a1, int a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  sub_1007B4590(sub_1007BA3EC, v6, a1, a2, 7, &unk_100C6C100, sub_1007B9F08, &unk_100C6C118);
}

uint64_t sub_1007B4EE4(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  v13 = sub_10000C70C(0, &qword_100CD81E8);
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  v15[2] = 0x3FF0000000000000;
  v15[3] = v13;
  v15[4] = 4;
  v15[5] = a1;
  v15[6] = sub_1007B9FD4;
  v15[7] = v12;
  v20[4] = sub_1007BA44C;
  v20[5] = v15;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1007AEBB4;
  v20[3] = &unk_100C6C230;
  v16 = _Block_copy(v20);
  v17 = a2;

  sub_10007A47C(a5);
  v18 = a1;

  [v14 runTestWithParameters:v18 resultHandler:v16];
  _Block_release(v16);
}

uint64_t sub_1007B5088(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  v11 = sub_10000C70C(0, &qword_100CD81E8);
  v12 = objc_opt_self();
  v13 = swift_allocObject();
  v13[2] = 0x3FF0000000000000;
  v13[3] = v11;
  v13[4] = 2;
  v13[5] = a1;
  v13[6] = sub_1007BA454;
  v13[7] = v10;
  v17[4] = sub_1007BA44C;
  v17[5] = v13;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1007AEBB4;
  v17[3] = &unk_100C6C2A8;
  v14 = _Block_copy(v17);

  sub_10007A47C(a4);
  v15 = a1;

  [v12 runTestWithParameters:v15 resultHandler:v14];
  _Block_release(v14);
}

uint64_t sub_1007B5248(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  sub_100021698();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100014E5C();
    sub_1007B3490(a2, v6, v7, v8);
  }

  if (a3)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1007B52D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 241) = a5;
  *(v5 + 88) = a4;
  v6 = type metadata accessor for Logger();
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_1007B53A0, 0, 0);
}

uint64_t sub_1007B53A0()
{
  v17 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    *(v0 + 242) = sub_1007B62DC() & 1;
    v2 = swift_task_alloc();
    *(v0 + 136) = v2;
    *v2 = v0;
    v2[1] = sub_1007B55B4;

    return sub_1007B64D8();
  }

  else
  {
    static Logger.automation.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 120);
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      v12 = String.init<A>(describing:)();
      v14 = sub_100078694(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to run list view to location view transition test with error: %{public}s", v10, 0xCu);
      sub_100006F14(v11);
      sub_100003884();
      sub_100003884();
    }

    (*(v9 + 8))(v7, v8);

    sub_100003B14();

    return v15();
  }
}

uint64_t sub_1007B55B4()
{
  sub_100003B08();
  sub_10000C7E4();
  v3 = v2;
  sub_10000CCF8();
  *v4 = v3;
  v5 = *v1;
  sub_100003AF8();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    sub_10000E700();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 152) = v10;
    *v10 = v5;
    v10[1] = sub_1007B570C;

    return sub_1007B6688(2);
  }
}

uint64_t sub_1007B570C()
{
  sub_100003B08();
  sub_10000C7E4();
  v3 = v2;
  sub_10000CCF8();
  *v4 = v3;
  v5 = *v1;
  sub_100003AF8();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (v0)
  {
    sub_10000E700();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 168) = v10;
    *v10 = v5;
    v10[1] = sub_1007B5860;

    return sub_1007B64D8();
  }
}

uint64_t sub_1007B5860()
{
  sub_100003B08();
  sub_10000C7E4();
  sub_10000CCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100003AF8();
  *v5 = v4;
  *(v6 + 176) = v0;

  sub_10000E700();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1007B595C()
{
  sub_100003B08();
  v0[23] = objc_opt_self();
  v0[24] = type metadata accessor for MainActor();
  v0[25] = static MainActor.shared.getter();
  sub_100037034();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007B59FC, v2, v1);
}

uint64_t sub_1007B59FC()
{
  sub_100003B08();
  v1 = *(v0 + 184);

  *(v0 + 208) = [v1 sharedApplication];
  sub_10000E700();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1007B5A7C()
{
  sub_100003B08();
  *(v0 + 216) = static MainActor.shared.getter();
  sub_100037034();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007B5B00, v2, v1);
}

uint64_t sub_1007B5B00()
{
  sub_100003B08();
  v1 = *(v0 + 208);

  UIApplication.expectedWindow.getter();

  sub_10000E700();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1007B5B6C()
{
  sub_100013494();
  sub_1000161C0((v0 + 16), *(v0 + 40));
  sub_100037034();
  dispatch thunk of WindowType.bounds.getter();
  v1 = CGRectGetWidth(v6) * 0.5;
  sub_100006F14(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = sub_1007B5C44;
  v3 = *(v0 + 241);

  return sub_1007B6748(v3, v1, 200.0);
}

uint64_t sub_1007B5C44()
{
  sub_100003B08();
  sub_10000C7E4();
  sub_10000CCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100003AF8();
  *v5 = v4;
  *(v6 + 232) = v0;

  sub_10000E700();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1007B5D40()
{
  sub_100013494();
  v1 = *(v0 + 242);
  v2 = [objc_opt_self() standardUserDefaults];
  *(v0 + 240) = v1;
  NSUserDefaults.set<A>(_:for:)();

  sub_100003B14();

  return v3();
}

uint64_t sub_1007B62DC()
{
  v0 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v12[-v5];
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.VFX.animatedBackgrounds.getter();
  Settings.VFX.AnimatedBackgrounds.locationAnimationKind.getter();

  SettingReader.read<A>(_:)();

  static Settings.VFX.animatedBackgrounds.getter();
  v7 = dispatch thunk of SettingGroup.isEnabled.getter();

  (*(v1 + 104))(v3, enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.mica(_:), v0);
  v8 = sub_1001497E4(v6, v3);
  v9 = *(v1 + 8);
  v9(v3, v0);
  if (v8 & 1) != 0 && (v7)
  {
    v10 = [objc_opt_self() standardUserDefaults];
    v12[15] = 0;
    NSUserDefaults.set<A>(_:for:)();
  }

  v9(v6, v0);
  return v7 & 1;
}

uint64_t sub_1007B64F8()
{
  sub_100003B08();
  v1 = v0[10];
  v0[2] = v0;
  v0[3] = sub_1007B658C;
  v2 = swift_continuation_init();
  sub_1007B7630(v2, v1);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1007B658C()
{
  sub_100013494();
  sub_10000C7E4();
  v1 = *v0;
  sub_10000CCF8();
  *v2 = v1;
  if (*(v3 + 48))
  {
    swift_willThrow();
  }

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1007B6688(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return _swift_task_switch(sub_1007B66A8, 0, 0);
}

uint64_t sub_1007B66A8()
{
  sub_100013494();
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = sub_1007BA450;
  v3 = swift_continuation_init();
  sub_1007B7CE4(v3, v1, v2);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1007B6748(char a1, double a2, double a3)
{
  *(v4 + 104) = v3;
  *(v4 + 88) = a2;
  *(v4 + 96) = a3;
  *(v4 + 120) = a1;
  return _swift_task_switch(sub_1007B6770, 0, 0);
}

uint64_t sub_1007B6770()
{
  sub_100003B08();
  swift_weakInit();
  sub_10000E700();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1007B67D4()
{
  sub_100013494();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1007B6880;
  v3 = *(v0 + 120);
  v4 = swift_continuation_init();
  sub_1007B83D8(v4, v2, v1, v0 + 80, v3);

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1007B6880()
{
  sub_100013494();
  sub_10000CCF8();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  v5 = *(v4 + 48);
  *(v1 + 112) = v5;
  if (v5)
  {
    swift_willThrow();
    sub_10000E700();

    return _swift_task_switch(v6, v7, v8);
  }

  else
  {
    swift_weakDestroy();
    v9 = *(v3 + 8);

    return v9();
  }
}

uint64_t sub_1007B69C4()
{
  sub_100003B08();
  swift_weakDestroy();
  sub_100003B14();

  return v0();
}

uint64_t sub_1007B6A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CA3538);
  __chkstk_darwin(v6 - 8);
  v8 = v15 - v7;
  sub_100386B2C(a1, v15 - v7);
  v9 = type metadata accessor for TaskPriority();
  if (sub_100024D10(v8, 1, v9) == 1)
  {
    sub_1000180EC(v8, &qword_100CA3538);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  if (v12 | v10)
  {
    v15[0] = 0;
    v15[1] = 0;
    v15[2] = v10;
    v15[3] = v12;
  }

  return swift_task_create();
}

uint64_t sub_1007B6BF0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v29 = a4;
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v28 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v16 = type metadata accessor for MainAction();
  __chkstk_darwin(v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 + 16);
  type metadata accessor for PerformanceTestAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v37 = 0;
  aBlock = 0u;
  v36 = 0u;
  sub_10004F034(v18, &aBlock, v19);
  sub_1000180EC(&aBlock, &unk_100CD81B0);
  sub_10004FB48(v18, type metadata accessor for MainAction);
  sub_10000C70C(0, &qword_100CB4670);
  v20 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v21 = *(v10 + 8);
  v21(v12, v9);
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = v29;
  v37 = sub_1007BA238;
  v38 = v22;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v36 = sub_1000742F0;
  *(&v36 + 1) = &unk_100C6C730;
  v23 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680);
  sub_1000743E8();
  v24 = v30;
  v25 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v23);

  (*(v34 + 8))(v24, v25);
  (*(v32 + 8))(v8, v33);
  return (v21)(v15, v28);
}

uint64_t sub_1007B7078(uint64_t a1, char a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v4 - 8);
  __chkstk_darwin(v4);
  v30 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v29 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v28 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v27 - v13;
  sub_1007B3490(a2, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_);
  v15 = [objc_opt_self() sharedApplication];
  UIApplication.expectedWindow.getter();

  sub_1000161C0(aBlock, v35);
  dispatch thunk of WindowType.bounds.getter();
  v16 = CGRectGetWidth(v38) * 0.5;
  sub_100006F14(aBlock);
  v17 = objc_allocWithZone(type metadata accessor for FastScrollParameters());
  v18 = sub_1007B9394(v16, 400.0, 200.0, 0.1);
  [objc_opt_self() runTestWithParameters:v18];
  sub_10000C70C(0, &qword_100CB4670);
  v19 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = v9 + 8;
  v21 = *(v9 + 8);
  v27[1] = v20;
  v21(v11, v8);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  v36 = sub_1007BA3C8;
  v37 = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  v35 = &unk_100C6C780;
  v23 = _Block_copy(aBlock);

  v24 = v29;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680);
  sub_1000743E8();
  v25 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v23);

  (*(v33 + 8))(v25, v4);
  (*(v31 + 8))(v24, v32);
  return (v21)(v14, v28);
}

uint64_t sub_1007B7530(uint64_t a1, int a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  sub_1007B6BF0(sub_1007BA3EC, v6, a1, a2);
}

void sub_1007B75B4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.set<A>(_:for:)();
}

uint64_t sub_1007B7630(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v39 = type metadata accessor for DispatchTime();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = v30 - v5;
  v36 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v36 - 8);
  __chkstk_darwin(v36);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  v41 = v13;
  v42 = v14;
  __chkstk_darwin(v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[1] = sub_10000C70C(0, &qword_100CB4670);
  v17 = static OS_dispatch_queue.main.getter();
  v49 = sub_1007BA220;
  v50 = a2;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v35 = &v47;
  v47 = sub_1000742F0;
  v48 = &unk_100C6C618;
  v18 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  v34 = sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
  v33 = sub_10022C350(&qword_100CB4680);
  v32 = sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  v19 = *(v10 + 8);
  v30[2] = v10 + 8;
  v31 = v19;
  v19(v12, v9);
  v20 = *(v42 + 8);
  v42 += 8;
  v20(v16, v41);

  v21 = v36;
  (*(v6 + 104))(v8, enum case for DispatchQoS.QoSClass.default(_:), v36);
  v22 = static OS_dispatch_queue.global(qos:)();
  (*(v6 + 8))(v8, v21);
  v23 = v37;
  static DispatchTime.now()();
  v24 = v38;
  + infix(_:_:)();
  v25 = *(v43 + 8);
  v43 += 8;
  v26 = v39;
  v25(v23, v39);
  v27 = swift_allocObject();
  *(v27 + 16) = v40;
  v49 = sub_100348F3C;
  v50 = v27;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_1000742F0;
  v48 = &unk_100C6C668;
  v28 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v28);

  v31(v12, v9);
  v20(v16, v41);
  v25(v24, v26);
}

uint64_t sub_1007B7BE8(uint64_t a1)
{
  v2 = type metadata accessor for MainAction();
  __chkstk_darwin(v2);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  type metadata accessor for PerformanceTestAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_10004F034(v4, v7, v5);
  sub_1000180EC(v7, &unk_100CD81B0);
  return sub_10004FB48(v4, type metadata accessor for MainAction);
}

uint64_t sub_1007B7CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a1;
  v42 = type metadata accessor for DispatchTime();
  v46 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v41 = &v31 - v7;
  v39 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v39 - 8);
  __chkstk_darwin(v39);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v32 = v14;
  v44 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10000C70C(0, &qword_100CB4670);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v52 = sub_1007BA218;
  v53 = v18;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v38 = &v50;
  v50 = sub_1000742F0;
  v51 = &unk_100C6C5A0;
  v19 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v47 = _swiftEmptyArrayStorage;
  v36 = sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
  v35 = sub_10022C350(&qword_100CB4680);
  v34 = sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  v20 = *(v45 + 8);
  v45 += 8;
  v33 = v20;
  v20(v13, v11);
  v21 = *(v44 + 8);
  v44 += 8;
  v21(v16, v14);

  v22 = v39;
  (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v39);
  v23 = static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v10, v22);
  v24 = v40;
  static DispatchTime.now()();
  v25 = v41;
  + infix(_:_:)();
  v26 = *(v46 + 8);
  v46 += 8;
  v27 = v42;
  v26(v24, v42);
  v28 = swift_allocObject();
  *(v28 + 16) = v43;
  v52 = sub_1007BA438;
  v53 = v28;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_1000742F0;
  v51 = &unk_100C6C5F0;
  v29 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  v47 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v29);

  v33(v13, v11);
  v21(v16, v32);
  v26(v25, v27);
}

uint64_t sub_1007B82CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainAction();
  __chkstk_darwin(v4);
  v6 = (v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  *v6 = a2;
  type metadata accessor for PerformanceTestAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_10004F034(v6, v9, v7);
  sub_1000180EC(v9, &unk_100CD81B0);
  return sub_10004FB48(v6, type metadata accessor for MainAction);
}

uint64_t sub_1007B83D8(uint64_t a1, double a2, double a3, uint64_t a4, char a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C70C(0, &qword_100CB4670);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a5;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  *(v17 + 48) = a1;
  aBlock[4] = sub_1007BA1F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C6C500;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680);
  sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v21 + 8))(v11, v9);
  (*(v12 + 8))(v14, v20);
}

uint64_t sub_1007B871C(double a1, double a2, uint64_t a3, int a4, uint64_t a5)
{
  v54 = a5;
  LODWORD(v7) = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v8 - 8);
  v58 = v8;
  __chkstk_darwin(v8);
  v10 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v56 = &v45[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = type metadata accessor for DispatchTime();
  v14 = *(v55 - 8);
  __chkstk_darwin(v55);
  v16 = &v45[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v45[-v18];
  v53 = type metadata accessor for Logger();
  v20 = *(v53 - 1);
  __chkstk_darwin(v53);
  v22 = &v45[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v50 = v12;
    v51 = v10;
    v52 = v11;
    v49 = result;
    sub_1007B3490(v7, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_);
    v24 = objc_allocWithZone(type metadata accessor for TapParameters());
    v25 = sub_1007B8EB4(a1, a2);
    v26 = objc_opt_self();
    v48 = v25;
    [v26 runTestWithParameters:v25];
    static Logger.automation.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v46 = v7;
      v30 = v29;
      v31 = swift_slowAlloc();
      v47 = v19;
      v32 = v31;
      *v30 = 136446210;
      v59 = v31;
      aBlock = 40;
      v61 = 0xE100000000000000;
      v33._countAndFlagsBits = Double.description.getter();
      v7 = v14;
      String.append(_:)(v33);

      v34._countAndFlagsBits = 44;
      v34._object = 0xE100000000000000;
      String.append(_:)(v34);
      v35._countAndFlagsBits = Double.description.getter();
      String.append(_:)(v35);

      v36._countAndFlagsBits = 41;
      v36._object = 0xE100000000000000;
      String.append(_:)(v36);
      v37 = sub_100078694(aBlock, v61, &v59);

      *(v30 + 4) = v37;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v27, v28, "Tap at %{public}s", v30, 0xCu);
      sub_100006F14(v32);
      v19 = v47;

      LOBYTE(v7) = v46;
    }

    (*(v20 + 8))(v22, v53);
    sub_10000C70C(0, &qword_100CB4670);
    v38 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v53 = *(v14 + 8);
    v47 = (v14 + 8);
    v39 = v55;
    (v53)(v16, v55);
    v40 = swift_allocObject();
    *(v40 + 16) = v49;
    *(v40 + 24) = v7;
    *(v40 + 32) = v54;
    v64 = sub_1007BA208;
    v65 = v40;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_1000742F0;
    v63 = &unk_100C6C550;
    v41 = _Block_copy(&aBlock);

    v42 = v56;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680);
    sub_1000743E8();
    v43 = v51;
    v44 = v58;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v41);

    (*(v57 + 8))(v43, v44);
    (*(v50 + 8))(v42, v52);
    return (v53)(v19, v39);
  }

  return result;
}

uint64_t sub_1007B8DB8(uint64_t a1, char a2, uint64_t a3)
{
  sub_1007B3490(a2, &static os_log_type_t.default.getter, "Finished test: %{public}s", &selRef_finishedTest_);

  return _swift_continuation_throwingResume(a3);
}

uint64_t sub_1007B8E1C()
{

  sub_100006F14(v0 + 80);
  return v0;
}

uint64_t sub_1007B8E5C()
{
  sub_1007B8E1C();

  return swift_deallocClassInstance();
}

id sub_1007B8EB4(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4913TapParameters_completionHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v2[OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4913TapParameters_testName];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v2[OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4913TapParameters_point];
  *v8 = a1;
  v8[1] = a2;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_1007B8F4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4913TapParameters_completionHandler);
  sub_10007A47C(v1);
  return v1;
}

uint64_t sub_1007B9034(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4913TapParameters_completionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4913TapParameters_completionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_10002B028(v4);
}

uint64_t sub_1007B906C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4913TapParameters_testName);

  return v1;
}

uint64_t sub_1007B90C0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4913TapParameters_testName);
  *v3 = a1;
  v3[1] = a2;
}

void (*sub_1007B9104())(void *a1)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1007B9D40;
}

void sub_1007B915C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [a1 pointerOrFingerTap:{*(Strong + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4913TapParameters_point), *(Strong + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4913TapParameters_point + 8)}];
  }

  else
  {
    static Logger.automation.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to run tap due to instance deallocated", v10, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }
}

id sub_1007B9394(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_completionHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_testName];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v4[OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_point];
  *v12 = a1;
  v12[1] = a2;
  *&v4[OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_distance] = a3;
  *&v4[OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_duration] = a4;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_1007B9454()
{
  sub_1000210F4();
  v2 = v1();
  if (v2)
  {
    v7[4] = v2;
    v7[5] = v3;
    sub_10001CD34();
    sub_100008EAC();
    v7[2] = v4;
    v7[3] = v0;
    v5 = _Block_copy(v7);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1007B94D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_completionHandler);
  sub_10007A47C(v1);
  return v1;
}

uint64_t sub_1007B95B8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_completionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_completionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_10002B028(v4);
}

id sub_1007B95F0(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v4)
  {
    String._bridgeToObjectiveC()();
    sub_100037034();
  }

  else
  {
    a1 = 0;
  }

  return a1;
}

uint64_t sub_1007B9648()
{
  v1 = *(v0 + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_testName);

  return v1;
}

void sub_1007B969C()
{
  sub_1000210F4();
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

  v6 = v1;
  v0(v3, v5);
}

uint64_t sub_1007B9720(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_testName);
  *v3 = a1;
  v3[1] = a2;
}

void (*sub_1007B9764())(void *a1)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1007B9B0C;
}

void sub_1007B97BC(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = (Strong + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_point);
    [a1 pointerOrFingerTapDown:{*(Strong + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_point), *(Strong + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_point + 8)}];
    v9 = OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_distance;
    [a1 pointerOrFingerMoveToPoint:*v8 duration:{v8[1] - *&v7[OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_distance], *&v7[OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_duration]}];
    [a1 pointerOrFingerTapUp:{*v8, v8[1] - *&v7[v9]}];
  }

  else
  {
    static Logger.automation.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to run scroll due to instance deallocated", v12, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }
}

id sub_1007B99B4()
{
  sub_1000210F4();
  v7 = v1();
  v8 = v2;
  sub_10001CD34();
  v5[1] = 1107296256;
  v5[2] = sub_100952598;
  v6 = v0;
  v3 = _Block_copy(v5);

  return v3;
}

uint64_t sub_1007B9A9C()
{
  sub_1000210F4();
  sub_10002B028(*(v1 + *v0));
}

id sub_1007B9B14(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a7)
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v21 = 0;
    goto LABEL_6;
  }

  v19 = String._bridgeToObjectiveC()();

  if (!a9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v24[4] = a9;
  v24[5] = a10;
  sub_10001CD34();
  sub_100008EAC();
  v24[2] = v20;
  v24[3] = &unk_100C6BF10;
  v21 = _Block_copy(v24);

LABEL_6:
  v22 = [v10 initWithTestName:v19 scrollBounds:a8 amplitude:v21 direction:a1 completionHandler:{a2, a3, a4, a5}];
  _Block_release(v21);

  return v22;
}

id sub_1007B9C24(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  if (!a6)
  {
    v20 = 0;
    if (a9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v22 = 0;
    goto LABEL_6;
  }

  v20 = String._bridgeToObjectiveC()();

  if (!a9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v25[4] = a9;
  v25[5] = a10;
  sub_10001CD34();
  sub_100008EAC();
  v25[2] = v21;
  v25[3] = &unk_100C6C2D0;
  v22 = _Block_copy(v25);

LABEL_6:
  v23 = [v11 initWithTestName:v20 scrollingBounds:a7 swipeCount:a8 direction:v22 completionHandler:{a1, a2, a3, a4}];
  _Block_release(v22);

  return v23;
}

id sub_1007B9DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = String._bridgeToObjectiveC()();

  v9 = [a5 newWithTestName:v8 parameters:a3 completionHandler:a4];

  return v9;
}

id sub_1007B9E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = String._bridgeToObjectiveC()();
  v9 = [a5 newWithTestName:v8 parameters:a3 completionHandler:a4];

  return v9;
}

uint64_t sub_1007B9F54()
{
  if (*(v0 + 16))
  {
  }

  sub_100018584();

  return swift_deallocObject();
}

uint64_t sub_1007B9F8C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1007B9FE4()
{
  swift_unknownObjectRelease();

  sub_100011824();

  return swift_deallocObject();
}

uint64_t sub_1007BA07C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10006D0B0;

  return sub_1007B52D0(a1, v4, v5, v6, v7);
}

uint64_t sub_1007BA140()
{
  sub_100013494();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10006D0B0;

  return sub_10027EEA8(v3, v4);
}

_BYTE *storeEnumTagSinglePayload for LegacyPerformanceTestRunner.LegacyPerformanceTestError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1007BA2F4()
{
  result = qword_100CD8228;
  if (!qword_100CD8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8228);
  }

  return result;
}

id sub_1007BA458()
{
  v1 = OBJC_IVAR____TtC7Weather47DebugNotificationDeliveryScheduleViewController____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC7Weather47DebugNotificationDeliveryScheduleViewController____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Weather47DebugNotificationDeliveryScheduleViewController____lazy_storage___dateFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(NSDateFormatter) init];
    [v4 setDateStyle:1];
    [v4 setTimeStyle:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1007BA4F4()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for PrecipitationNotification();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  *&v0[OBJC_IVAR____TtC7Weather47DebugNotificationDeliveryScheduleViewController____lazy_storage___dateFormatter] = 0;
  v11 = OBJC_IVAR____TtC7Weather47DebugNotificationDeliveryScheduleViewController_deliverySchedule;
  v12 = type metadata accessor for DeliveryScheduleEntity();
  v13 = *(v12 - 8);
  v14 = v12;
  (*(v13 + 16))(&v1[v11], v3);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  DeliveryScheduleEntity.notification.getter();
  dispatch thunk of Column.value.getter();

  if (v17 >> 60 == 15)
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1007BBB0C(&qword_100CD8288, &type metadata accessor for PrecipitationNotification);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    sub_1003B3404(v16, v17);
    (*(v6 + 32))(&v1[OBJC_IVAR____TtC7Weather47DebugNotificationDeliveryScheduleViewController_notification], v10, v4);
    v15.receiver = v1;
    v15.super_class = type metadata accessor for DebugNotificationDeliveryScheduleViewController();
    objc_msgSendSuper2(&v15, "initWithStyle:", 2);
    (*(v13 + 8))(v3, v14);
    sub_10000536C();
  }
}

void sub_1007BA744()
{
  *(v0 + OBJC_IVAR____TtC7Weather47DebugNotificationDeliveryScheduleViewController____lazy_storage___dateFormatter) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1007BA7BC()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DebugNotificationDeliveryScheduleViewController();
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v2 = [v0 tableView];
  if (v2)
  {
    v3 = v2;
    sub_1003B3418();
    swift_getObjCClassFromMetadata();
    v4 = sub_100005ECC();
    [v3 registerClass:v1 forCellReuseIdentifier:v4];

    sub_1003C1790(0xD000000000000011, 0x8000000100ADEC80, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1007BA8CC(uint64_t a1, unint64_t a2)
{
  if (a2 > 2)
  {
    return 0;
  }

  else
  {
    return qword_100A82210[a2];
  }
}

unint64_t sub_1007BA908(uint64_t a1, uint64_t a2)
{
  v2 = 0x6163696669746F4ELL;
  v3 = 0x656C756465686353;
  if (a2)
  {
    v3 = 0;
  }

  if (a2 != 1)
  {
    v2 = v3;
  }

  if (a2 == 2)
  {
    return 0xD000000000000012;
  }

  else
  {
    return v2;
  }
}

id sub_1007BA9D0()
{
  v1 = sub_100005ECC();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [v0 dequeueReusableCellWithIdentifier:v1 forIndexPath:isa];

  if (IndexPath.section.getter())
  {
    if (IndexPath.section.getter() == 1)
    {
      IndexPath.row.getter();
      sub_1007BB064();
    }

    else if (IndexPath.section.getter() == 2)
    {
      sub_1007BB554();
    }
  }

  else
  {
    IndexPath.row.getter();
    sub_1007BABB4();
  }

  return v3;
}

void sub_1007BABB4()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v4 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v37[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37[-1] - v8;
  __chkstk_darwin(v10);
  v12 = &v37[-1] - v11;
  v13 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  static UIListContentConfiguration.valueCell()();
  switch(v1)
  {
    case 0:
      sub_100006774();
      v20 = DeliveryScheduleEntity.id.getter();
      goto LABEL_11;
    case 1:
      UIListContentConfiguration.text.setter();
      v20 = DeliveryScheduleEntity.state.getter();
LABEL_11:
      v37[0] = v20;
      sub_10022C350(&qword_100CC6BC8);
      sub_10058D440();
      dispatch thunk of CustomStringConvertible.description.getter();

      goto LABEL_12;
    case 2:
      UIListContentConfiguration.text.setter();
      v27 = sub_1007BA458();
      DeliveryScheduleEntity.created.getter();
      dispatch thunk of Column.value.getter();
      v28 = type metadata accessor for Date();
      sub_100003BFC(v12);
      if (v23)
      {
        goto LABEL_15;
      }

      v29 = v12;
      Date._bridgeToObjectiveC()();
      sub_100010B24();
      (*(v30 + 8))(v12, v28);
      v31 = [v27 stringFromDate:v12];
      goto LABEL_9;
    case 3:
      sub_100014978();
      v27 = sub_1007BA458();
      DeliveryScheduleEntity.modified.getter();
      dispatch thunk of Column.value.getter();
      v32 = type metadata accessor for Date();
      sub_100003BFC(v9);
      if (v23)
      {
        goto LABEL_16;
      }

      v29 = v9;
      Date._bridgeToObjectiveC()();
      sub_100010B24();
      (*(v33 + 8))(v9, v32);
      v31 = [v27 stringFromDate:v9];
LABEL_9:
      v34 = v31;

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      goto LABEL_12;
    case 4:
      sub_100004A98();
      v21 = sub_1007BA458();
      DeliveryScheduleEntity.date.getter();
      dispatch thunk of Column.value.getter();
      v22 = type metadata accessor for Date();
      sub_100003BFC(v6);
      if (v23)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      else
      {

        v24 = v6;
        Date._bridgeToObjectiveC()();
        sub_100010B24();
        (*(v25 + 8))(v6, v22);
        v26 = [v21 stringFromDate:v6];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_12:
        UIListContentConfiguration.secondaryText.setter();
LABEL_13:
        v37[3] = v13;
        v37[4] = &protocol witness table for UIListContentConfiguration;
        v35 = sub_100042FB0(v37);
        (*(v15 + 16))(v35, v19, v13);
        UITableViewCell.contentConfiguration.setter();
        [v3 setSelectionStyle:0];
        (*(v15 + 8))(v19, v13);
        sub_10000536C();
      }

      return;
    default:
      goto LABEL_13;
  }
}

void sub_1007BB064()
{
  sub_10000C778();
  v1 = v0;
  v42 = v2;
  type metadata accessor for Date();
  sub_1000037C4();
  v38 = v4;
  v39 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for ForecastSummary.Intensity();
  sub_1000037C4();
  v37 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = type metadata accessor for PrecipitationType();
  sub_1000037C4();
  v40 = v15;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  v20 = type metadata accessor for PrecipitationNotification.Kind();
  sub_1000037C4();
  v36 = v21;
  __chkstk_darwin(v22);
  sub_1000037D8();
  v25 = v24 - v23;
  v41 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_1000037D8();
  v31 = v30 - v29;
  static UIListContentConfiguration.valueCell()();
  switch(v1)
  {
    case 0:
      sub_100006774();
      sub_100008EC4();
      PrecipitationNotification.identifier.getter();
      goto LABEL_8;
    case 1:
      sub_100004A98();
      sub_100018530();
      sub_100008EC4();
      PrecipitationNotification.kind.getter();
      _print_unlocked<A, B>(_:_:)();
      (*(v36 + 8))(v25, v20);
      goto LABEL_8;
    case 2:
      sub_100014978();
      sub_100018530();
      sub_100008EC4();
      PrecipitationNotification.starting.getter();
      goto LABEL_6;
    case 3:
      sub_100014978();
      sub_100018530();
      sub_100008EC4();
      PrecipitationNotification.stopping.getter();
LABEL_6:
      _print_unlocked<A, B>(_:_:)();
      (*(v40 + 8))(v19, v14);
      goto LABEL_8;
    case 4:
      UIListContentConfiguration.text.setter();
      sub_100018530();
      sub_100008EC4();
      PrecipitationNotification.intensity.getter();
      _print_unlocked<A, B>(_:_:)();
      (*(v37 + 8))(v13, v8);
      goto LABEL_8;
    case 5:
      sub_100004A98();
      v33 = sub_1007BA458();
      PrecipitationNotification.date.getter();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v38 + 8))(v7, v39);
      v35 = [v33 stringFromDate:isa];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_8:
      UIListContentConfiguration.secondaryText.setter();
      break;
    default:
      break;
  }

  v43[3] = v41;
  v43[4] = &protocol witness table for UIListContentConfiguration;
  v32 = sub_100042FB0(v43);
  (*(v27 + 16))(v32, v31, v41);
  UITableViewCell.contentConfiguration.setter();
  [v42 setSelectionStyle:0];
  (*(v27 + 8))(v31, v41);
  sub_10000536C();
}

void sub_1007BB554()
{
  sub_10000C778();
  v21 = v0;
  v1 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v1 - 8);
  sub_1000037D8();
  v20 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  HourForecast = type metadata accessor for NextHourForecast();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = type metadata accessor for JSONEncoder.OutputFormatting();
  __chkstk_darwin(v15 - 8);
  sub_1000037D8();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  PrecipitationNotification.forecast.getter();
  sub_1007BBB0C(&qword_100CD8280, &type metadata accessor for NextHourForecast);
  v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v18 = v17;
  (*(v10 + 8))(v14, HourForecast);
  static UIListContentConfiguration.cell()();
  static String.Encoding.utf8.getter();
  String.init(data:encoding:)();
  UIListContentConfiguration.text.setter();
  v22[3] = v20;
  v22[4] = &protocol witness table for UIListContentConfiguration;
  v19 = sub_100042FB0(v22);
  (*(v3 + 16))(v19, v7, v20);
  UITableViewCell.contentConfiguration.setter();
  [v21 setSelectionStyle:0];
  sub_10030F778(v16, v18);

  (*(v3 + 8))(v7, v20);
  sub_10000536C();
}

id sub_1007BB908()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugNotificationDeliveryScheduleViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DebugNotificationDeliveryScheduleViewController()
{
  result = qword_100CD8270;
  if (!qword_100CD8270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1007BBA38()
{
  result = type metadata accessor for DeliveryScheduleEntity();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PrecipitationNotification();
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

uint64_t sub_1007BBB0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007BBB9C()
{
  result = type metadata accessor for SearchResultsViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1007BBC50()
{
  sub_1007BBD34(319, &unk_100CB0F30, &type metadata accessor for LocationOfInterest);
  if (v0 <= 0x3F)
  {
    sub_1007BBD34(319, &qword_100CB0100, type metadata accessor for SearchLocation);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SelectedSearchResult();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1007BBD34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1007BBD88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultsViewModel(0);
  __chkstk_darwin(v4 - 8);
  v6 = &__dst[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v9 = &__dst[-v8 - 8];
  v10 = type metadata accessor for SearchViewModel(0);
  v11 = v10;
  __chkstk_darwin(v10);
  v13 = &__dst[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v14);
  v16 = &__dst[-v15 - 8];
  __chkstk_darwin(v17);
  v19 = &__dst[-v18 - 8];
  v20 = sub_10022C350(&qword_100CD8468);
  __chkstk_darwin(v20 - 8);
  v22 = &__dst[-v21 - 8];
  v24 = *(v23 + 56);
  sub_1007BC178(a1, &__dst[-v21 - 8]);
  sub_1007BC178(a2, &v22[v24]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1007BC178(v22, v16);
      memcpy(__dst, v16, sizeof(__dst));
      if (sub_1000067A4() == 1)
      {
        memcpy(v36, &v22[v24], 0x60uLL);
        v11 = sub_1005F7E98(__dst, v36);
        sub_100517C40(__dst);
        sub_100517C40(v36);
        goto LABEL_18;
      }

      sub_100517C40(__dst);
      goto LABEL_15;
    case 2u:
      sub_1007BC178(v22, v13);
      if (sub_1000067A4() == 2)
      {
        sub_1007BC2A4(&v22[v24], v6);
        sub_1007BC0B8(v13, v6);
        sub_10001CD54();
        v28 = v27;
        sub_1007BC244(v6, v27);
        v29 = v13;
        v30 = v28;
        goto LABEL_17;
      }

      sub_10001F7C4();
      v26 = v13;
      goto LABEL_13;
    case 3u:
      if (sub_1000067A4() == 3)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    case 4u:
      if (sub_1000067A4() != 4)
      {
        goto LABEL_15;
      }

LABEL_9:
      sub_100010B38();
      v11 = 1;
      return v11 & 1;
    default:
      sub_1007BC178(v22, v19);
      if (sub_1000067A4())
      {
        sub_10001F7C4();
        v26 = v19;
LABEL_13:
        sub_1007BC244(v26, v25);
LABEL_15:
        sub_1007BC1DC(v22);
        v11 = 0;
      }

      else
      {
        sub_1007BC2A4(&v22[v24], v9);
        sub_1007BC0B8(v19, v9);
        sub_10001CD54();
        v32 = v31;
        sub_1007BC244(v9, v31);
        v29 = v19;
        v30 = v32;
LABEL_17:
        sub_1007BC244(v29, v30);
LABEL_18:
        sub_100010B38();
      }

      return v11 & 1;
  }
}

uint64_t sub_1007BC178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007BC1DC(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CD8468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1007BC244(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007BC2A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultsViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1007BC308(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CA3588);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  static CurrentLocation.placeholderIdentifier.getter();
  v15 = static Location.Identifier.== infix(_:_:)();
  (*(v10 + 8))(v14, v8);
  if (v15)
  {
    sub_10022C350(&qword_100CA38C0);
    sub_10003BBC0();
    type metadata accessor for CurrentLocation();
    swift_storeEnumTagMultiPayload();
    v16 = type metadata accessor for LocationOfInterest();
    sub_10001B350(v7, 1, 1, v16);
    LocationModelData.init(locationOfInterest:isPredictedLocation:)();
    v17 = enum case for LocationModel.current(_:);
    v18 = type metadata accessor for LocationModel();
    sub_1000037E8();
    (*(v19 + 104))(a2, v17, v18);
    sub_10001B350(a2, 0, 1, v18);
  }

  else
  {
    v20 = type metadata accessor for LocationsState();
    __chkstk_darwin(v20);
    sub_100003F28();
    *(v21 - 16) = a1;
    sub_100030C98();
  }
}

void *sub_1007BC530(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_1006A05E4(*(a1 + 16), 0);
  v4 = v3;
  v5 = *(type metadata accessor for Location() - 8);
  v6 = sub_1007C01D8(&v8, (v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80))), v2, a1);
  sub_10027FAE8();
  if (v6 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v4;
}

void sub_1007BC5F8()
{
  sub_10000C778();
  v65 = type metadata accessor for LocationOfInterestType();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v4);
  sub_100020374();
  v64 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100003848();
  v54 = v8;
  sub_10000386C();
  v10 = __chkstk_darwin(v9);
  v12 = v48 - v11;
  __chkstk_darwin(v10);
  v14 = v48 - v13;
  v15 = type metadata accessor for LocationsState();
  v66 = v0;
  sub_100744464();
  v56 = v16;
  v48[0] = 0;
  v17 = 0;
  v18 = *(v0 + *(v15 + 28));
  v19 = v14;
  v55 = *(v18 + 16);
  v61 = (v6 + 8);
  v62 = v6 + 16;
  v60 = v2 + 32;
  v50 = v2 + 8;
  v52 = v6;
  v53 = (v6 + 32);
  v57 = _swiftEmptyArrayStorage;
  v49 = v14;
  v51 = v18;
  while (1)
  {
    v20 = v48[1];
    v21 = v56;
LABEL_3:
    if (v17 == v55)
    {

      sub_10000536C();
      return;
    }

    if (v17 >= *(v18 + 16))
    {
      break;
    }

    v22 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v23 = *(v52 + 72);
    v59 = v17;
    v63 = v23;
    v24 = v18 + v22 + v23 * v17;
    v25 = *(v52 + 16);
    v25(v19, v24, v64);
    v26 = *(v21 + 16);
    v58 = v22;
    if (v26)
    {
      v67 = _swiftEmptyArrayStorage;
      sub_1006A771C();
      v27 = v67;
      v28 = v21 + v22;
      do
      {
        v29 = v64;
        v25(v12, v28, v64);
        LocationOfInterest.type.getter();
        (*v61)(v12, v29);
        v67 = v27;
        v31 = v27[2];
        v30 = v27[3];
        if (v31 >= v30 >> 1)
        {
          sub_100031C84(v30);
          sub_1006A771C();
          v27 = v67;
        }

        v27[2] = v31 + 1;
        sub_100011468();
        (*(v2 + 32))(v27 + v32 + *(v2 + 72) * v31, v20, v65);
        v28 += v63;
        --v26;
      }

      while (v26);
      v19 = v49;
    }

    else
    {
      v27 = _swiftEmptyArrayStorage;
    }

    v17 = v59 + 1;
    LocationOfInterest.type.getter();
    v33 = 0;
    v34 = v27[2];
    while (v34 != v33)
    {
      v35 = v33 + 1;
      sub_1007C10C8(&qword_100CA35B0, &type metadata accessor for LocationOfInterestType);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = v35;
      if (v36)
      {

        v37 = sub_100071E2C();
        v38(v37);
        (*v61)(v19, v64);
        v21 = v56;
        v18 = v51;
        goto LABEL_3;
      }
    }

    v39 = sub_100071E2C();
    v40(v39);
    v41 = *v53;
    (*v53)(v54, v19, v64);
    v42 = v57;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v42;
    v68 = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100037C8C();
      sub_1006A7C64();
      v44 = v68;
    }

    v18 = v51;
    v45 = v58;
    v47 = v44[2];
    v46 = v44[3];
    if (v47 >= v46 >> 1)
    {
      sub_100031C84(v46);
      sub_1006A7C64();
      v45 = v58;
      v44 = v68;
    }

    v44[2] = v47 + 1;
    v57 = v44;
    v41(v44 + v45 + v47 * v63, v54, v64);
  }

  __break(1u);
}

void sub_1007BCB1C()
{
  sub_10000C778();
  v103 = v2;
  v3 = sub_10022C350(&qword_100CA65D8);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100003848();
  v108 = v5;
  sub_10000386C();
  __chkstk_darwin(v6);
  sub_10000E70C();
  v107 = v7;
  sub_1000038CC();
  v118 = type metadata accessor for Location();
  sub_1000037C4();
  v113 = v8;
  __chkstk_darwin(v9);
  sub_100003848();
  v112 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_10000E70C();
  v110 = v12;
  sub_1000038CC();
  v13 = type metadata accessor for SavedLocation();
  v14 = sub_100003AE8(v13);
  v99 = v15;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v111 = v17 - v16;
  sub_1000038CC();
  v18 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_100003848();
  v105 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  v25 = &v97 - v24;
  __chkstk_darwin(v26);
  sub_100003878();
  v109 = v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  sub_100020374();
  v29 = 0;
  v101 = type metadata accessor for LocationsState();
  v102 = v0;
  v30 = *(v0 + *(v101 + 24));
  v117 = *(v30 + 16);
  v120 = v20 + 16;
  v116 = v20 + 88;
  v115 = enum case for LocationModel.current(_:);
  v119 = (v20 + 8);
  v114 = v20 + 96;
  v104 = (v20 + 32);
  v106 = _swiftEmptyArrayStorage;
  v100 = enum case for LocationModel.saved(_:);
  while (v117 != v29)
  {
    if (v29 >= *(v30 + 16))
    {
      __break(1u);
      return;
    }

    v31 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v32 = *(v20 + 72);
    v33 = *(v20 + 16);
    v33(v1, v30 + v31 + v32 * v29, v18);
    v33(v25, v1, v18);
    v34 = (*(v20 + 88))(v25, v18);
    if (v34 == v115)
    {
      v35 = sub_10001650C();
      v36(v35);
      sub_10022C350(&qword_100CA38C0);
      sub_10003BBC0();
      type metadata accessor for LocationModelData();
      sub_1000037E8();
      (*(v37 + 8))(v33 + v25);
      sub_100010B60();
      sub_1000311F8(v25, v38);
      (*v119)(v1, v18);
      ++v29;
    }

    else
    {
      if (v34 == v100)
      {
        v39 = sub_10001650C();
        v40(v39);
        sub_10022C350(&qword_100CA38B8);
        sub_10003BBC0();
        type metadata accessor for LocationModelData();
        sub_1000037E8();
        (*(v41 + 8))(v33 + v25);
        sub_10001F7DC();
        sub_1000311F8(v25, v42);
      }

      else
      {
        v43 = sub_10001650C();
        v44(v43);
      }

      v45 = *v104;
      (*v104)(v105, v1, v18);
      v46 = v106;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v121 = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100037C8C();
        sub_1006A77CC();
        v46 = v121;
      }

      v49 = v46[2];
      v48 = v46[3];
      v50 = (v49 + 1);
      if (v49 >= v48 >> 1)
      {
        sub_100031C84(v48);
        v106 = v51;
        v98 = v52;
        sub_1006A77CC();
        v50 = v106;
        v49 = v98;
        v46 = v121;
      }

      ++v29;
      v46[2] = v50;
      v106 = v46;
      v45(v46 + v31 + v49 * v32, v105, v18);
    }
  }

  v53 = v106[2];
  if (v53)
  {
    sub_100011468();
    v56 = v54 + v55;
    v57 = *(v20 + 72);
    v58 = *(v20 + 16);
    v59 = (v113 + 32);
    v60 = _swiftEmptyArrayStorage;
    v61 = v107;
    do
    {
      v62 = v109;
      v63 = sub_100003B2C();
      v58(v63);
      LocationModel.location.getter();
      (*v119)(v62, v18);
      v64 = v118;
      sub_1000038B4(v61, 1, v118);
      if (v65)
      {
        sub_1000180EC(v61, &qword_100CA65D8);
      }

      else
      {
        v66 = *v59;
        (*v59)(v110, v61, v64);
        v67 = swift_isUniquelyReferenced_nonNull_native();
        if ((v67 & 1) == 0)
        {
          sub_1000066AC();
          sub_10003C154();
          v60 = v72;
        }

        v69 = v60[2];
        v68 = v60[3];
        if (v69 >= v68 >> 1)
        {
          sub_100023218(v68);
          sub_10003C154();
          v60 = v73;
        }

        v60[2] = v69 + 1;
        sub_10000C7B8();
        v66(v60 + v70 + *(v71 + 72) * v69, v110, v118);
        v61 = v107;
      }

      v56 += v57;
      --v53;
    }

    while (v53);
  }

  else
  {

    v60 = _swiftEmptyArrayStorage;
  }

  v74 = *(v102 + *(v101 + 20));
  v75 = *(v74 + 16);
  v76 = v108;
  v77 = v118;
  if (v75)
  {
    v78 = v74 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
    v79 = *(v99 + 72);
    v80 = (v113 + 32);
    v81 = _swiftEmptyArrayStorage;
    do
    {
      sub_10001CD6C();
      v82 = v111;
      sub_1000312D4();
      SavedLocation.location.getter();
      sub_10001F7DC();
      sub_1000311F8(v82, v83);
      sub_1000038B4(v76, 1, v77);
      if (v65)
      {
        sub_1000180EC(v76, &qword_100CA65D8);
      }

      else
      {
        v84 = v77;
        v85 = *v80;
        (*v80)(v112, v76, v84);
        v86 = swift_isUniquelyReferenced_nonNull_native();
        if ((v86 & 1) == 0)
        {
          sub_1000066AC();
          sub_10003C154();
          v81 = v92;
        }

        v88 = *(v81 + 2);
        v87 = *(v81 + 3);
        if (v88 >= v87 >> 1)
        {
          sub_100023218(v87);
          sub_10003C154();
          v81 = v93;
        }

        *(v81 + 2) = v88 + 1;
        sub_10000C7B8();
        v91 = v118;
        v85(&v81[v89 + *(v90 + 72) * v88]);
        v77 = v91;
        v76 = v108;
      }

      v78 += v79;
      --v75;
    }

    while (v75);
  }

  sub_10069AB80();
  v95 = sub_1007BEF9C(v60, v94);

  v96 = sub_1007BC530(v95);
  sub_1003DF98C(v96, v103);

  sub_10000536C();
}

void sub_1007BD314()
{
  sub_10000C778();
  v2 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100003848();
  v38 = v6;
  sub_10000386C();
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  __chkstk_darwin(v10);
  v11 = 0;
  v12 = *(v0 + *(sub_100087E64() + 24));
  v13 = *(v12 + 16);
  v44 = v4 + 16;
  v45 = v13;
  v43 = v4 + 88;
  v42 = enum case for LocationModel.current(_:);
  v37 = (v4 + 32);
  v40 = (v4 + 8);
  v41 = v4 + 96;
  v39 = _swiftEmptyArrayStorage;
  v36 = enum case for LocationModel.saved(_:);
  while (1)
  {
    if (v45 == v11)
    {
      sub_10000536C();
      return;
    }

    if (v11 >= *(v12 + 16))
    {
      break;
    }

    v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v15 = v12;
    v16 = *(v4 + 72);
    v17 = *(v4 + 16);
    v17(v1, v12 + v14 + v16 * v11, v2);
    v17(v9, v1, v2);
    v18 = (*(v4 + 88))(v9, v2);
    if (v18 == v42)
    {
      v19 = sub_1000715F4();
      v20(v19);
      sub_10022C350(&qword_100CA38C0);
      sub_10003BBC0();
      type metadata accessor for LocationModelData();
      sub_1000037E8();
      (*(v21 + 8))(v17 + v9);
      sub_100010B60();
      sub_1000311F8(v9, v22);
      (*v40)(v1, v2);
      ++v11;
      v12 = v15;
    }

    else
    {
      if (v18 != v36)
      {
        goto LABEL_14;
      }

      v23 = sub_1000715F4();
      v24(v23);
      sub_10022C350(&qword_100CA38B8);
      sub_10003BBC0();
      type metadata accessor for LocationModelData();
      sub_1000037E8();
      (*(v25 + 8))(v17 + v9);
      sub_10001F7DC();
      sub_1000311F8(v9, v26);
      v27 = *v37;
      (*v37)(v38, v1, v2);
      v28 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100037C8C();
        sub_1006A77CC();
        v28 = v46;
      }

      v31 = v28[2];
      v30 = v28[3];
      v32 = (v31 + 1);
      if (v31 >= v30 >> 1)
      {
        sub_100031C84(v30);
        v39 = v33;
        v35 = v34;
        sub_1006A77CC();
        v32 = v39;
        v31 = v35;
        v28 = v46;
      }

      ++v11;
      v28[2] = v32;
      v39 = v28;
      v27(v28 + v14 + v31 * v16, v38, v2);
      v12 = v15;
    }
  }

  __break(1u);
LABEL_14:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_1007BD690()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for SavedLocation();
  v5 = sub_100003AE8(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  if (!__OFSUB__(v3, 1))
  {
    v9 = *(v1 + *(type metadata accessor for LocationsState() + 20));
    v10 = *(v9 + 16) - 2;
    if (v10 >= v3 - 1)
    {
      v10 = v3 - 1;
    }

    v11 = v10 & ~(v10 >> 63);
    if ((v11 & 0x8000000000000000) != 0)
    {
LABEL_10:
      sub_10000536C();
      return;
    }

    while (v11 < *(v9 + 16))
    {
      sub_100011468();
      sub_10001CD6C();
      sub_1000312D4();
      sub_1000E0A64();
      v13 = v12;
      __chkstk_darwin(v12);
      sub_100003F28();
      *(v14 - 16) = v8;
      v16 = sub_100032A70(sub_1007C048C, v15, v13);

      if (!v16)
      {
        sub_10001F7DC();
        sub_1000311F8(v8, v18);
        goto LABEL_10;
      }

      --v11;
      sub_10001F7DC();
      sub_1000311F8(v8, v17);
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1007BD820(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465766173 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7105633 && a2 == 0xE300000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x8000000100ADECA0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x8000000100ADECC0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x746E6564496C6C61 && a2 == 0xEE00737265696669;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x64657070616DLL && a2 == 0xE600000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x8000000100ADECE0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000018 && 0x8000000100ADED00 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000018 && 0x8000000100ADED20 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_1007BDB30(char a1)
{
  result = 0x746E6572727563;
  switch(a1)
  {
    case 1:
      result = 0x6465766173;
      break;
    case 2:
      result = 7105633;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0x746E6564496C6C61;
      break;
    case 6:
      result = 0x64657070616DLL;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1007BDC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007BD820(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007BDC7C(uint64_t a1)
{
  v2 = sub_1007C04AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007BDCB8(uint64_t a1)
{
  v2 = sub_1007C04AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1007BDCF4()
{
  sub_10000C778();
  v1 = type metadata accessor for SavedLocation();
  v2 = sub_100003AE8(v1);
  v4 = v3;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = *(v0 + *(type metadata accessor for LocationsState() + 20));
  v9 = *(v8 + 16);
  if (v9)
  {
    sub_10000369C(0, v9, 0);
    sub_100011468();
    v11 = v8 + v10;
    v12 = *(v4 + 72);
    do
    {
      sub_10001CD6C();
      sub_1000312D4();
      v13 = SavedLocation.id.getter();
      v15 = v14;
      sub_10001F7DC();
      sub_1000311F8(v7, v16);
      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        v20 = sub_100031C84(v17);
        sub_10000369C(v20, v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      v19 = &_swiftEmptyArrayStorage[2 * v18];
      v19[4] = v13;
      v19[5] = v15;
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  v21 = sub_1000D409C(_swiftEmptyArrayStorage);
  v22 = Location.id.getter();
  sub_1001B10E0(v22, v23, v21);

  sub_10000536C();
}

uint64_t sub_1007BDE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for LocationModelData();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = type metadata accessor for LocationModel();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == enum case for LocationModel.current(_:))
  {
    (*(v11 + 96))(v13, v10);
    v15 = sub_10022C350(&qword_100CA38C0);
    (*(v4 + 32))(v9, &v13[*(v15 + 48)], v3);
    sub_1000E0A64();
    v17 = *(v16 + 16);

    if (v17)
    {
      LocationModelData.locationOfInterest.getter();
      (*(v4 + 8))(v9, v3);
    }

    else
    {
      (*(v4 + 8))(v9, v3);
      v22 = type metadata accessor for LocationOfInterest();
      sub_10001B350(v24, 1, 1, v22);
    }

    v19 = &type metadata accessor for CurrentLocation;
  }

  else
  {
    if (v14 != enum case for LocationModel.saved(_:))
    {
      v20 = type metadata accessor for LocationOfInterest();
      sub_10001B350(v24, 1, 1, v20);
      return (*(v11 + 8))(v13, v10);
    }

    (*(v11 + 96))(v13, v10);
    v18 = sub_10022C350(&qword_100CA38B8);
    (*(v4 + 32))(v7, &v13[*(v18 + 48)], v3);
    LocationModelData.locationOfInterest.getter();
    (*(v4 + 8))(v7, v3);
    v19 = &type metadata accessor for SavedLocation;
  }

  return sub_1000311F8(v13, v19);
}

uint64_t sub_1007BE1F0()
{
  v0 = type metadata accessor for Location.Identifier();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  SavedLocation.identifier.getter();
  SavedLocation.identifier.getter();
  v7 = static Location.Identifier.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_1007BE324(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CD85D8);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1007C04AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  type metadata accessor for CurrentLocation();
  sub_100020B68();
  sub_1007C10C8(v11, v12);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for LocationsState();
    sub_100011834(v13[5]);
    v19 = 1;
    sub_10022C350(&qword_100CCC9D0);
    sub_1007C0B0C();
    sub_100004AB4();
    sub_100011834(v13[6]);
    v19 = 2;
    sub_10022C350(&qword_100CD8568);
    sub_1007C0BC0();
    sub_100004AB4();
    sub_100011834(v13[7]);
    v19 = 3;
    sub_10022C350(&qword_100CA64A8);
    sub_10060C7A4();
    sub_100004AB4();
    sub_100011834(v13[8]);
    v19 = 4;
    sub_10022C350(&qword_100CD8580);
    sub_1007C0C74();
    sub_100004AB4();
    sub_100011834(v13[9]);
    v19 = 5;
    sub_10022C350(&qword_100CD8590);
    sub_1007C0D28();
    sub_100004AB4();
    sub_100011834(v13[10]);
    v19 = 6;
    sub_10022C350(&qword_100CD85A0);
    sub_1007C0DDC();
    sub_100004AB4();
    sub_100011834(v13[11]);
    v19 = 7;
    sub_10022C350(&qword_100CD85B0);
    sub_1007C0E98();
    sub_100004AB4();
    v14 = (v3 + v13[12]);
    v15 = *(v14 + 16);
    v17 = *v14;
    v18 = v15;
    v19 = 8;
    sub_1007C0F54();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100011834(v13[13]);
    v19 = 9;
    sub_10022C350(&qword_100CCC9D8);
    sub_1007C0FA8();
    sub_100004AB4();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1007BE6A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10022C350(&unk_100CE49F0);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  v27 = sub_10022C350(&qword_100CD8540);
  sub_1000037C4();
  v10 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = v26 - v12;
  v30 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = a1[3];
  v28 = a1;
  sub_1000161C0(a1, v18);
  sub_1007C04AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v29 = v2;
    result = sub_100006F14(v28);
    v33 = 0;
  }

  else
  {
    v26[1] = a2;
    v19 = v10;
    type metadata accessor for CurrentLocation();
    LOBYTE(v31) = 0;
    sub_100020B68();
    sub_1007C10C8(v20, v21);
    sub_1000C883C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10011C0F0(v8, v17, &unk_100CE49F0);
    sub_10022C350(&qword_100CCC9D0);
    v34 = 1;
    sub_1007C0500();
    sub_1000C883C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v23 = v30;
    *(v17 + *(v30 + 20)) = v31;
    sub_10022C350(&qword_100CD8568);
    v34 = 2;
    sub_1007C05B4();
    sub_100014E74();
    *(v17 + v23[6]) = v31;
    sub_10022C350(&qword_100CA64A8);
    v34 = 3;
    sub_1007C0668();
    sub_100014E74();
    *(v17 + v23[7]) = v31;
    sub_10022C350(&qword_100CD8580);
    v34 = 4;
    sub_1007C071C();
    sub_100014E74();
    *(v17 + v23[8]) = v31;
    sub_10022C350(&qword_100CD8590);
    v34 = 5;
    sub_1007C07D0();
    sub_100014E74();
    *(v17 + v23[9]) = v31;
    sub_10022C350(&qword_100CD85A0);
    v34 = 6;
    sub_1007C0884();
    sub_100014E74();
    v33 = 1;
    *(v17 + v23[10]) = v31;
    sub_10022C350(&qword_100CD85B0);
    v34 = 7;
    sub_1007C0940();
    sub_100014E74();
    *(v17 + v23[11]) = v31;
    v34 = 8;
    sub_1007C09FC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v32;
    v25 = v17 + v23[12];
    *v25 = v31;
    *(v25 + 16) = v24;
    sub_10022C350(&qword_100CCC9D8);
    v34 = 9;
    sub_1007C0A50();
    sub_100014E74();
    v29 = 0;
    (*(v19 + 8))(v13, v27);
    *(v17 + *(v30 + 52)) = v31;
    sub_1000312D4();
    sub_100006F14(v28);
    return sub_1000311F8(v17, type metadata accessor for LocationsState);
  }

  return result;
}

uint64_t sub_1007BEDF0@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CD8638);
  a1[4] = sub_1007C1064();
  sub_100042FB0(a1);
  type metadata accessor for LocationsState();
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1007BEEB8()
{
  sub_1007C10C8(&qword_100CD8648, type metadata accessor for LocationsState);

  return ShortDescribable.description.getter();
}

void *sub_1007BEF9C(uint64_t a1, void *a2)
{
  v39 = 0;
  v4 = type metadata accessor for Location();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v50 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  __chkstk_darwin(v10);
  v47 = &v38 - v11;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v55[0] = a1;
  v12 = *(a1 + 16);
  v49 = a2 + 7;
  v53 = (v5 + 8);
  v54 = v5 + 16;

  v13 = 0;
  v41 = v12;
  v42 = v5;
LABEL_3:
  if (v13 == v12)
  {
LABEL_24:

    return a2;
  }

  v14 = *(v5 + 72);
  v45 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v48 = v13 + 1;
  v55[1] = v13 + 1;
  v51 = *(v5 + 16);
  v52 = v14;
  v51(v47, v45 + v14 * v13, v4);
  v44 = sub_1007C10C8(&qword_100CA39F8, &type metadata accessor for Location);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v46 = ~(-1 << *(a2 + 32));
  while (1)
  {
    v16 = v15 & v46;
    v17 = (v15 & v46) >> 6;
    v18 = 1 << (v15 & v46);
    if ((v18 & v49[v17]) == 0)
    {
      (*v53)(v47, v4);
      v13 = v48;
      v12 = v41;
      v5 = v42;
      goto LABEL_3;
    }

    v51(v9, a2[6] + v16 * v52, v4);
    sub_1007C10C8(&qword_100CA3A00, &type metadata accessor for Location);
    v19 = dispatch thunk of static Equatable.== infix(_:_:)();
    v20 = *v53;
    (*v53)(v9, v4);
    if (v19)
    {
      break;
    }

    v15 = v16 + 1;
  }

  v21 = (v20)(v47, v4);
  v22 = *(a2 + 32);
  v40 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v40;
  if ((v22 & 0x3Fu) > 0xD)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v41 = &v38;
    __chkstk_darwin(v21);
    v16 = &v38 - ((v23 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v16, v49, v23);
    v24 = a2[2];
    *(v16 + 8 * v17) &= ~v18;
    v25 = v24 - 1;
    v26 = *(a1 + 16);
    v46 = v16;
    v47 = v26;
    v27 = v48;
    v43 = a1;
    while (1)
    {
      v42 = v25;
      v28 = v27;
LABEL_12:
      if (v28 == v47)
      {
        a2 = sub_1007BF984(v46, v40, v42, a2);
        goto LABEL_24;
      }

      if (v28 >= *(a1 + 16))
      {
        break;
      }

      v48 = v28 + 1;
      v23 = v50;
      v51(v50, v45 + v28 * v52, v4);
      v29 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = a2;
      v18 = ~(-1 << *(a2 + 32));
      do
      {
        v31 = v29 & v18;
        v17 = (v29 & v18) >> 6;
        v16 = 1 << (v29 & v18);
        if ((v16 & v49[v17]) == 0)
        {
          v20(v50, v4);
          v28 = v48;
          a2 = v30;
          a1 = v43;
          goto LABEL_12;
        }

        v51(v9, v30[6] + v31 * v52, v4);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        v20(v9, v4);
        v29 = v31 + 1;
      }

      while ((v23 & 1) == 0);
      v20(v50, v4);
      v32 = *(v46 + 8 * v17);
      *(v46 + 8 * v17) = v32 & ~v16;
      v27 = v48;
      v28 = v48;
      a2 = v30;
      a1 = v43;
      if ((v32 & v16) == 0)
      {
        goto LABEL_12;
      }

      v25 = v42 - 1;
      if (__OFSUB__(v42, 1))
      {
        __break(1u);
      }

      if (v42 == 1)
      {

        a2 = &_swiftEmptySetSingleton;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v34 = swift_slowAlloc();
  v35 = v39;
  v36 = sub_1007BF8FC(v34, v40, v49, v40, a2, v16, v55);
  if (!v35)
  {
    v37 = v36;

    a2 = v37;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

void sub_1007BF5B4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v36 = a2;
  v9 = type metadata accessor for Location();
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v46 = &v35 - v14;
  v15 = *(a3 + 16);
  v16 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v17 = *(a1 + v16) & ((-1 << a4) - 1);
  v38 = a1;
  v39 = v18;
  *(a1 + v16) = v17;
  v19 = v15 - 1;
  v44 = v18 + 16;
  v45 = a3;
  v40 = a5;
  v41 = a3 + 56;
  v20 = (v18 + 8);
  while (1)
  {
    v37 = v19;
LABEL_3:
    v21 = *a5;
    v22 = a5[1];
    v23 = *(*a5 + 16);
    if (v22 == v23)
    {
      v34 = v45;

      sub_1007BF984(v38, v36, v37, v34);
      return;
    }

    if (v22 >= v23)
    {
      break;
    }

    v24 = *(v39 + 80);
    v43 = *(v39 + 72);
    v42 = *(v39 + 16);
    v42(v46, v21 + ((v24 + 32) & ~v24) + v43 * v22, v9, v13);
    a5[1] = v22 + 1;
    v25 = v45;
    sub_1007C10C8(&qword_100CA39F8, &type metadata accessor for Location);
    v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v27 = ~(-1 << *(v25 + 32));
    do
    {
      v28 = v26 & v27;
      v29 = (v26 & v27) >> 6;
      v30 = 1 << (v26 & v27);
      if ((v30 & *(v41 + 8 * v29)) == 0)
      {
        (*v20)(v46, v9);
        a5 = v40;
        goto LABEL_3;
      }

      (v42)(v11, *(v45 + 48) + v28 * v43, v9);
      sub_1007C10C8(&qword_100CA3A00, &type metadata accessor for Location);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32 = *v20;
      (*v20)(v11, v9);
      v26 = v28 + 1;
    }

    while ((v31 & 1) == 0);
    v32(v46, v9);
    v33 = v38[v29];
    v38[v29] = v33 & ~v30;
    a5 = v40;
    if ((v33 & v30) == 0)
    {
      goto LABEL_3;
    }

    v19 = v37 - 1;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_16;
    }

    if (v37 == 1)
    {
      return;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_1007BF8FC(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1007BF5B4(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1007BF984(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for Location();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10022C350(&qword_100CD11E0);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1007C10C8(&qword_100CA39F8, &type metadata accessor for Location);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_27:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_27;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1007BFCA4()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v33 = sub_10022C350(&qword_100CAC4D8);
  sub_1000037C4();
  v31 = v9;
  __chkstk_darwin(v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  sub_10000E70C();
  v32 = v14;
  v35 = v2;
  sub_10001871C();
  if (!v6)
  {
    v17 = 0;
LABEL_18:
    *v8 = v35;
    v8[1] = v2;
    sub_1000D3FCC(v17);
    sub_10000536C();
    return;
  }

  if (!v4)
  {
    v17 = 0;
    goto LABEL_18;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v28 = v15;
    v29 = v8;
    v16 = 0;
    v17 = 0;
    v18 = (63 - v15) >> 6;
    v30 = v4;
    while (1)
    {
      if (v16 >= v4)
      {
        goto LABEL_21;
      }

      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_22;
      }

      if (!v0)
      {
        while (1)
        {
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v20 >= v18)
          {
            goto LABEL_16;
          }

          v0 = *(v2 + 8 * v20);
          ++v17;
          if (v0)
          {
            v34 = v6;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v34 = v6;
      v20 = v17;
LABEL_13:
      sub_100086718();
      v22 = v21 | (v20 << 6);
      v23 = *(v35 + 48);
      type metadata accessor for Date();
      sub_1000037E8();
      (*(v24 + 16))(v12, v23 + *(v24 + 72) * v22);
      v25 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
      sub_100003810(v25);
      sub_1000312D4();
      v26 = v32;
      sub_10011C0F0(v12, v32, &qword_100CAC4D8);
      v27 = v34;
      sub_10011C0F0(v26, v34, &qword_100CAC4D8);
      v4 = v30;
      if (v19 == v30)
      {
        break;
      }

      v6 = v27 + *(v31 + 72);
      v16 = v19;
      v17 = v20;
    }

    v17 = v20;
LABEL_16:
    v8 = v29;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_1007BFF24()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v29 = sub_10022C350(&qword_100CAC4D0);
  sub_1000037C4();
  v26 = v9;
  __chkstk_darwin(v10);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_10000E70C();
  v28 = v12;
  sub_10001871C();
  if (!v6)
  {
    v15 = 0;
LABEL_18:
    *v8 = v2;
    v8[1] = v2;
    sub_1000D3FCC(v15);
    sub_10000536C();
    return;
  }

  if (!v4)
  {
    v15 = 0;
    goto LABEL_18;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v24 = v8;
    v14 = 0;
    v15 = 0;
    v16 = (63 - v13) >> 6;
    v25 = v4;
    while (1)
    {
      if (v14 >= v4)
      {
        goto LABEL_21;
      }

      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_22;
      }

      if (!v0)
      {
        while (1)
        {
          v18 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v18 >= v16)
          {
            goto LABEL_16;
          }

          v0 = *(v2 + 8 * v18);
          ++v15;
          if (v0)
          {
            v30 = v6;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v30 = v6;
      v18 = v15;
LABEL_13:
      sub_100086718();
      v20 = v19 | (v18 << 6);
      v21 = *(v2 + 48);
      type metadata accessor for Date();
      sub_1000037E8();
      (*(v22 + 16))(v27, v21 + *(v22 + 72) * v20);
      v23 = (*(v2 + 56) + 80 * v20);
      memcpy(v32, v23, 0x50uLL);
      memmove((v27 + *(v29 + 48)), v23, 0x50uLL);
      sub_10011C0F0(v27, v28, &qword_100CAC4D0);
      sub_10011C0F0(v28, v30, &qword_100CAC4D0);
      v4 = v25;
      if (v17 == v25)
      {
        break;
      }

      v6 = v30 + *(v26 + 72);
      sub_1007C12F4(v32, &v31);
      v14 = v17;
      v15 = v18;
    }

    sub_1007C12F4(v32, &v31);
    v15 = v18;
LABEL_16:
    v8 = v24;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

unint64_t sub_1007C01D8(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Location();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  __chkstk_darwin(v8);
  v41 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v40 = &v33 - v13;
  v15 = a4 + 56;
  v14 = *(a4 + 56);
  v39 = -1 << *(a4 + 32);
  if (-v39 < 64)
  {
    v16 = ~(-1 << -v39);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!a2)
  {
    v20 = 0;
    result = 0;
LABEL_22:
    v32 = ~v39;
    *a1 = a4;
    a1[1] = v15;
    a1[2] = v32;
    a1[3] = v20;
    a1[4] = v17;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a4 + 56;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v39) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = result;
    while (v19 < result)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v35;
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
            v17 = 0;
            result = v19;
            a1 = v34;
            goto LABEL_22;
          }

          v17 = *(v35 + 8 * v22);
          ++v20;
          if (v17)
          {
            v44 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v44 = v19 + 1;
      v22 = v20;
LABEL_17:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = a4;
      v25 = *(a4 + 48);
      v27 = v42;
      v26 = v43;
      v28 = *(v43 + 72);
      v29 = v41;
      (*(v43 + 16))(v41, v25 + v28 * (v23 | (v22 << 6)), v42, v12);
      v30 = *(v26 + 32);
      v31 = v40;
      v30(v40, v29, v27);
      v30(a2, v31, v27);
      result = v38;
      v19 = v44;
      if (v44 == v38)
      {
        v20 = v22;
        a1 = v34;
        v15 = v35;
        a4 = v24;
        goto LABEL_22;
      }

      a2 += v28;
      v20 = v22;
      a4 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1007C04AC()
{
  result = qword_100CD8548;
  if (!qword_100CD8548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8548);
  }

  return result;
}

unint64_t sub_1007C0500()
{
  result = qword_100CD8558;
  if (!qword_100CD8558)
  {
    sub_10022E824(&qword_100CCC9D0);
    sub_1007C10C8(&qword_100CD8560, &type metadata accessor for SavedLocation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8558);
  }

  return result;
}

unint64_t sub_1007C05B4()
{
  result = qword_100CD8570;
  if (!qword_100CD8570)
  {
    sub_10022E824(&qword_100CD8568);
    sub_1007C10C8(&qword_100CBBE18, &type metadata accessor for LocationModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8570);
  }

  return result;
}

unint64_t sub_1007C0668()
{
  result = qword_100CD8578;
  if (!qword_100CD8578)
  {
    sub_10022E824(&qword_100CA64A8);
    sub_1007C10C8(&qword_100CC7E10, &type metadata accessor for LocationOfInterest);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8578);
  }

  return result;
}

unint64_t sub_1007C071C()
{
  result = qword_100CD8588;
  if (!qword_100CD8588)
  {
    sub_10022E824(&qword_100CD8580);
    sub_1007C10C8(&qword_100CAF9E0, &type metadata accessor for Location);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8588);
  }

  return result;
}

unint64_t sub_1007C07D0()
{
  result = qword_100CD8598;
  if (!qword_100CD8598)
  {
    sub_10022E824(&qword_100CD8590);
    sub_1007C10C8(&qword_100CBBDC0, &type metadata accessor for Location.Identifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8598);
  }

  return result;
}

unint64_t sub_1007C0884()
{
  result = qword_100CD85A8;
  if (!qword_100CD85A8)
  {
    sub_10022E824(&qword_100CD85A0);
    sub_1007C10C8(&qword_100CBBE18, &type metadata accessor for LocationModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD85A8);
  }

  return result;
}

unint64_t sub_1007C0940()
{
  result = qword_100CD85B8;
  if (!qword_100CD85B8)
  {
    sub_10022E824(&qword_100CD85B0);
    sub_1007C10C8(&qword_100CAF9E0, &type metadata accessor for Location);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD85B8);
  }

  return result;
}

unint64_t sub_1007C09FC()
{
  result = qword_100CD85C0;
  if (!qword_100CD85C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD85C0);
  }

  return result;
}

unint64_t sub_1007C0A50()
{
  result = qword_100CD85C8;
  if (!qword_100CD85C8)
  {
    sub_10022E824(&qword_100CCC9D8);
    sub_1007C10C8(&qword_100CD85D0, &type metadata accessor for LocationDisplayContext);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD85C8);
  }

  return result;
}

unint64_t sub_1007C0B0C()
{
  result = qword_100CD85E8;
  if (!qword_100CD85E8)
  {
    sub_10022E824(&qword_100CCC9D0);
    sub_1007C10C8(&qword_100CD85F0, &type metadata accessor for SavedLocation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD85E8);
  }

  return result;
}

unint64_t sub_1007C0BC0()
{
  result = qword_100CD85F8;
  if (!qword_100CD85F8)
  {
    sub_10022E824(&qword_100CD8568);
    sub_1007C10C8(&qword_100CBBEE0, &type metadata accessor for LocationModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD85F8);
  }

  return result;
}

unint64_t sub_1007C0C74()
{
  result = qword_100CD8600;
  if (!qword_100CD8600)
  {
    sub_10022E824(&qword_100CD8580);
    sub_1007C10C8(&qword_100CAFA08, &type metadata accessor for Location);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8600);
  }

  return result;
}

unint64_t sub_1007C0D28()
{
  result = qword_100CD8608;
  if (!qword_100CD8608)
  {
    sub_10022E824(&qword_100CD8590);
    sub_1007C10C8(&qword_100CBBED8, &type metadata accessor for Location.Identifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8608);
  }

  return result;
}

unint64_t sub_1007C0DDC()
{
  result = qword_100CD8610;
  if (!qword_100CD8610)
  {
    sub_10022E824(&qword_100CD85A0);
    sub_1007C10C8(&qword_100CBBEE0, &type metadata accessor for LocationModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8610);
  }

  return result;
}

unint64_t sub_1007C0E98()
{
  result = qword_100CD8618;
  if (!qword_100CD8618)
  {
    sub_10022E824(&qword_100CD85B0);
    sub_1007C10C8(&qword_100CAFA08, &type metadata accessor for Location);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8618);
  }

  return result;
}

unint64_t sub_1007C0F54()
{
  result = qword_100CD8620;
  if (!qword_100CD8620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8620);
  }

  return result;
}

unint64_t sub_1007C0FA8()
{
  result = qword_100CD8628;
  if (!qword_100CD8628)
  {
    sub_10022E824(&qword_100CCC9D8);
    sub_1007C10C8(&qword_100CD8630, &type metadata accessor for LocationDisplayContext);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8628);
  }

  return result;
}

unint64_t sub_1007C1064()
{
  result = qword_100CD8640;
  if (!qword_100CD8640)
  {
    sub_10022E824(&qword_100CD8638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8640);
  }

  return result;
}

uint64_t sub_1007C10C8(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for LocationsState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1007C11F0()
{
  result = qword_100CD8650;
  if (!qword_100CD8650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8650);
  }

  return result;
}

unint64_t sub_1007C1248()
{
  result = qword_100CD8658;
  if (!qword_100CD8658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8658);
  }

  return result;
}

unint64_t sub_1007C12A0()
{
  result = qword_100CD8660;
  if (!qword_100CD8660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8660);
  }

  return result;
}

uint64_t sub_1007C1394@<X0>(uint64_t a1@<X8>)
{
  v105 = a1;
  v88 = sub_10022C350(&qword_100CD8708);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v1);
  sub_1000039BC();
  v86 = v2;
  v90 = sub_10022C350(&qword_100CD8710);
  sub_1000037C4();
  v89 = v3;
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v87 = v5;
  sub_10022C350(&qword_100CD8718);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v92 = v7;
  v104 = sub_10022C350(&qword_100CD8720);
  sub_1000037E8();
  __chkstk_darwin(v8);
  v91 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v85 - v11;
  v102 = sub_10022C350(&qword_100CD8728);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v103 = v13;
  v99 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000038E4();
  v100 = v15;
  type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v97 = v17;
  v98 = v16;
  __chkstk_darwin(v16);
  sub_1000038E4();
  v96 = v18;
  v19 = sub_10022C350(&qword_100CD8730);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v85 - v21;
  sub_10022C350(&qword_100CD8738);
  sub_1000037C4();
  v94 = v24;
  v95 = v23;
  sub_100003828();
  __chkstk_darwin(v25);
  v27 = &v85 - v26;
  v101 = sub_10022C350(&qword_100CD8740);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v28);
  v30 = &v85 - v29;
  v31 = type metadata accessor for ContentSizeCategory();
  sub_1000037C4();
  v33 = v32;
  __chkstk_darwin(v34);
  v36 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v85 - v38;
  v40 = [objc_opt_self() currentDevice];
  v41 = [v40 userInterfaceIdiom];

  if (!v41)
  {
    goto LABEL_40;
  }

  type metadata accessor for SunriseSunsetComponentView();
  sub_10009ECC8();
  (*(v33 + 32))(v36, v39, v31);
  v42 = (*(v33 + 88))(v36, v31);
  v43 = v42 == enum case for ContentSizeCategory.extraSmall(_:) || v42 == enum case for ContentSizeCategory.small(_:);
  v44 = v43 || v42 == enum case for ContentSizeCategory.medium(_:);
  v45 = v44 || v42 == enum case for ContentSizeCategory.large(_:);
  v46 = v45 || v42 == enum case for ContentSizeCategory.extraLarge(_:);
  v47 = v46 || v42 == enum case for ContentSizeCategory.extraExtraLarge(_:);
  if (v47 || v42 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    goto LABEL_40;
  }

  if (v42 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v42 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v42 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v42 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v42 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    (*(v33 + 8))(v36, v31);
LABEL_40:
    *v22 = static HorizontalAlignment.leading.getter();
    *(v22 + 1) = 0;
    v22[16] = 0;
    v75 = sub_10022C350(&qword_100CD8748);
    sub_1007C1E4C(v106, &v22[*(v75 + 44)]);
    v76 = v96;
    static AccessibilityChildBehavior.combine.getter();
    v77 = sub_1005F6F6C(&unk_100CD8750);
    View.accessibilityElement(children:)();
    (*(v97 + 8))(v76, v98);
    sub_10003FDA0(v22, &qword_100CD8730);
    v107 = v19;
    v108 = v77;
    sub_100014EA4();
    v78 = v95;
    View.accessibilityRespondsToUserInteraction(_:)();
    (*(v94 + 8))(v27, v78);
    type metadata accessor for AutomationCellInfo(0);
    sub_100069A30();
    swift_storeEnumTagMultiPayload();
    v79 = &v30[*(v101 + 36)];
    type metadata accessor for AutomationInfoProperty();
    sub_100010B78();
    sub_1007C50D0(v19, &v79[v80], v81);
    sub_1007C512C(v19, v78);
    *v79 = 0;
    *(v79 + 1) = 0xE000000000000000;
    *(v79 + 2) = swift_getKeyPath();
    v79[24] = 0;
    v69 = &qword_100CD8740;
    sub_1000302D8(v30, v103, &qword_100CD8740);
    swift_storeEnumTagMultiPayload();
    sub_100008ED0();
    sub_1007C4F14(v82);
    sub_1000067BC();
    sub_1007C4F14(v83);
    _ConditionalContent<>.init(storage:)();
    v74 = v30;
    return sub_10003FDA0(v74, v69);
  }

  sub_10022C350(&qword_100CB59A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v54 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v54;
  v55 = static Axis.Set.vertical.getter();
  *(inited + 33) = v55;
  v56 = Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v54)
  {
    v56 = Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v55)
  {
    v56 = Axis.Set.init(rawValue:)();
  }

  v57 = v86;
  *v86 = v56;
  v58 = sub_10022C350(&qword_100CD8788);
  sub_1007C38B0(v57 + *(v58 + 44));
  v59 = v96;
  static AccessibilityChildBehavior.combine.getter();
  v60 = sub_1005F6F6C(&unk_100CD8780);
  v61 = v87;
  v62 = v88;
  View.accessibilityElement(children:)();
  (*(v97 + 8))(v59, v98);
  sub_10003FDA0(v57, &qword_100CD8708);
  v107 = v62;
  v108 = v60;
  sub_100014EA4();
  v63 = v92;
  v64 = v90;
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v89 + 8))(v61, v64);
  type metadata accessor for AutomationCellInfo(0);
  sub_100069A30();
  swift_storeEnumTagMultiPayload();
  v65 = v91;
  v66 = &v91[*(v104 + 36)];
  type metadata accessor for AutomationInfoProperty();
  sub_100010B78();
  sub_1007C50D0(&unk_100A82640, &v66[v67], v68);
  sub_1007C512C(&unk_100A82640, v64);
  *v66 = 0;
  *(v66 + 1) = 0xE000000000000000;
  *(v66 + 2) = swift_getKeyPath();
  v66[24] = 0;
  sub_10011C0F0(v63, v65, &qword_100CD8718);
  v69 = &qword_100CD8720;
  v70 = v65;
  v71 = v93;
  sub_10011C0F0(v70, v93, &qword_100CD8720);
  sub_1000302D8(v71, v103, &qword_100CD8720);
  swift_storeEnumTagMultiPayload();
  sub_100008ED0();
  sub_1007C4F14(v72);
  sub_1000067BC();
  sub_1007C4F14(v73);
  _ConditionalContent<>.init(storage:)();
  v74 = v71;
  return sub_10003FDA0(v74, v69);
}

uint64_t sub_1007C1E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v3 = sub_10022C350(&qword_100CD87B8);
  __chkstk_darwin(v3 - 8);
  v124 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v123 = &v109 - v6;
  v130 = sub_10022C350(&qword_100CD87C0);
  __chkstk_darwin(v130);
  v122 = (&v109 - v7);
  v8 = sub_10022C350(&qword_100CD87C8);
  __chkstk_darwin(v8 - 8);
  v132 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v131 = &v109 - v11;
  v128 = sub_10022C350(&qword_100CD8848);
  __chkstk_darwin(v128);
  v118 = (&v109 - v12);
  v114 = sub_10022C350(&qword_100CD8850);
  __chkstk_darwin(v114);
  v117 = &v109 - v13;
  v116 = sub_10022C350(&qword_100CD8858);
  __chkstk_darwin(v116);
  v111 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v112 = &v109 - v16;
  v113 = sub_10022C350(&qword_100CD8860);
  __chkstk_darwin(v113);
  v109 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v110 = &v109 - v19;
  v20 = sub_10022C350(&qword_100CD8868);
  __chkstk_darwin(v20 - 8);
  v115 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v125 = &v109 - v23;
  v24 = type metadata accessor for EnvironmentValues();
  v120 = *(v24 - 8);
  v121 = v24;
  __chkstk_darwin(v24);
  v119 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ContentSizeCategory();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v109 - v31;
  v33 = sub_10022C350(&qword_100CD8870);
  __chkstk_darwin(v33 - 8);
  v129 = &v109 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v127 = &v109 - v36;
  v37 = sub_10022C350(&qword_100CD87D0);
  __chkstk_darwin(v37 - 8);
  v39 = &v109 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v109 - v41;
  v43 = sub_10022C350(&qword_100CD87D8);
  __chkstk_darwin(v43 - 8);
  v126 = &v109 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v109 - v46;
  *v47 = static VerticalAlignment.center.getter();
  *(v47 + 1) = 0;
  v47[16] = 1;
  v48 = *(sub_10022C350(&qword_100CD87E0) + 44);
  v134 = v47;
  v49 = &v47[v48];
  sub_1007C2CF0(v42);
  sub_1000302D8(v42, v39, &qword_100CD87D0);
  sub_1000302D8(v39, v49, &qword_100CD87D0);
  v50 = v49 + *(sub_10022C350(&qword_100CD87E8) + 48);
  v51 = a1;
  *v50 = 0;
  *(v50 + 8) = 0;
  sub_10003FDA0(v42, &qword_100CD87D0);
  sub_10003FDA0(v39, &qword_100CD87D0);
  v52 = type metadata accessor for SunriseSunsetComponentView();
  sub_10009ECC8();
  (*(v27 + 32))(v29, v32, v26);
  v53 = (*(v27 + 88))(v29, v26);
  if (v53 != enum case for ContentSizeCategory.extraSmall(_:) && v53 != enum case for ContentSizeCategory.small(_:) && v53 != enum case for ContentSizeCategory.medium(_:) && v53 != enum case for ContentSizeCategory.large(_:) && v53 != enum case for ContentSizeCategory.extraLarge(_:) && v53 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v53 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    if (v53 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v53 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v53 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v53 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v53 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      v64 = 1;
      v65 = v131;
      v66 = v127;
      goto LABEL_48;
    }

    (*(v27 + 8))(v29, v26);
  }

  v67 = a1 + *(v52 + 24);
  v68 = *v67;
  if (*(v67 + 8) == 1)
  {
    v65 = v131;
    v66 = v127;
    v69 = v125;
    if ((v68 & 0x100) == 0)
    {
LABEL_37:
      v64 = 1;
      goto LABEL_48;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v70 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v71 = v119;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v68, 0);
    (*(v120 + 8))(v71, v121);
    v65 = v131;
    v66 = v127;
    v69 = v125;
    if (v136 != 1)
    {
      goto LABEL_37;
    }
  }

  v72 = [objc_opt_self() currentDevice];
  v73 = [v72 userInterfaceIdiom];

  if (v73)
  {
    v74 = v111;
    sub_1007C3240(v111);
    v75 = &qword_100CD8858;
    sub_1000302D8(v74, v117, &qword_100CD8858);
    swift_storeEnumTagMultiPayload();
    sub_1007C51E4();
    sub_1007C5270();
    _ConditionalContent<>.init(storage:)();
    v76 = v74;
  }

  else
  {
    sub_1007C3240(v112);
    v77 = v51 + *(v52 + 32);
    v78 = *v77;
    if (*(v77 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v79 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v80 = v119;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v78, 0);
      (*(v120 + 8))(v80, v121);
      LOBYTE(v78) = v135;
    }

    v81 = v78 & 1;
    if (v81)
    {
      v82 = 0;
    }

    else
    {
      v82 = 0x4010000000000000;
    }

    v83 = v109;
    sub_10011C0F0(v112, v109, &qword_100CD8858);
    v84 = v83 + *(v113 + 36);
    *v84 = v82;
    *(v84 + 8) = v81;
    *(v84 + 9) = 0;
    v75 = &qword_100CD8860;
    v85 = v110;
    sub_10011C0F0(v83, v110, &qword_100CD8860);
    sub_1000302D8(v85, v117, &qword_100CD8860);
    swift_storeEnumTagMultiPayload();
    sub_1007C51E4();
    sub_1007C5270();
    _ConditionalContent<>.init(storage:)();
    v76 = v85;
  }

  sub_10003FDA0(v76, v75);
  v86 = v115;
  sub_1000302D8(v69, v115, &qword_100CD8868);
  v87 = v118;
  *v118 = 0;
  *(v87 + 8) = 1;
  v88 = sub_10022C350(&qword_100CD88B8);
  sub_1000302D8(v86, v87 + *(v88 + 48), &qword_100CD8868);
  v89 = v87 + *(v88 + 64);
  *v89 = 0;
  *(v89 + 8) = 1;
  sub_10003FDA0(v69, &qword_100CD8868);
  sub_10003FDA0(v86, &qword_100CD8868);
  sub_10011C0F0(v87, v66, &qword_100CD8848);
  v64 = 0;
LABEL_48:
  v90 = 1;
  sub_10001B350(v66, v64, 1, v128);
  v91 = SunriseSunsetViewModel.description.getter();
  v93 = v92;

  v94 = HIBYTE(v93) & 0xF;
  if ((v93 & 0x2000000000000000) == 0)
  {
    v94 = v91 & 0xFFFFFFFFFFFFLL;
  }

  if (v94)
  {
    v95 = static VerticalAlignment.center.getter();
    v96 = v122;
    *v122 = v95;
    *(v96 + 8) = 0;
    *(v96 + 16) = 1;
    v97 = v96 + *(sub_10022C350(&qword_100CD87F0) + 44);
    v98 = v123;
    sub_1007C35B8(v123);
    v99 = v124;
    sub_1000302D8(v98, v124, &qword_100CD87B8);
    sub_1000302D8(v99, v97, &qword_100CD87B8);
    v100 = v97 + *(sub_10022C350(&qword_100CD87F8) + 48);
    *v100 = 0;
    *(v100 + 8) = 0;
    sub_10003FDA0(v98, &qword_100CD87B8);
    sub_10003FDA0(v99, &qword_100CD87B8);
    sub_10011C0F0(v96, v65, &qword_100CD87C0);
    v90 = 0;
  }

  sub_10001B350(v65, v90, 1, v130);
  v101 = v126;
  sub_1000302D8(v134, v126, &qword_100CD87D8);
  v102 = v66;
  v103 = v65;
  v104 = v129;
  sub_1000302D8(v66, v129, &qword_100CD8870);
  v105 = v132;
  sub_1000302D8(v103, v132, &qword_100CD87C8);
  v106 = v133;
  sub_1000302D8(v101, v133, &qword_100CD87D8);
  v107 = sub_10022C350(&qword_100CD8878);
  sub_1000302D8(v104, v106 + *(v107 + 48), &qword_100CD8870);
  sub_1000302D8(v105, v106 + *(v107 + 64), &qword_100CD87C8);
  sub_10003FDA0(v103, &qword_100CD87C8);
  sub_10003FDA0(v102, &qword_100CD8870);
  sub_10003FDA0(v134, &qword_100CD87D8);
  sub_10003FDA0(v105, &qword_100CD87C8);
  sub_10003FDA0(v104, &qword_100CD8870);
  return sub_10003FDA0(v101, &qword_100CD87D8);
}

uint64_t sub_1007C2CF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v49 = type metadata accessor for EnvironmentValues();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SunriseSunsetComponentView();
  __chkstk_darwin(v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.sunriseSunset.getter();
  sub_1007C50D0(v1, v6, type metadata accessor for SunriseSunsetComponentView);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v45 = v7;
    v14 = v13;
    v15 = swift_slowAlloc();
    __dst[0] = v15;
    *v14 = 136446210;
    v16 = SunriseSunsetViewModel.title.getter();
    v46 = v2;
    v17 = v4;
    v19 = v18;
    sub_1007C512C(v6, type metadata accessor for SunriseSunsetComponentView);
    v20 = sub_100078694(v16, v19, __dst);
    v4 = v17;
    v2 = v46;

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "SunriseSunsetComponentView: next sun event is %{public}s", v14, 0xCu);
    sub_100006F14(v15);

    (*(v8 + 8))(v10, v45);
  }

  else
  {

    sub_1007C512C(v6, type metadata accessor for SunriseSunsetComponentView);
    (*(v8 + 8))(v10, v7);
  }

  v21 = SunriseSunsetViewModel.title.getter();
  v23 = v22;
  v24 = SunriseSunsetViewModel.timePeriodSymbols.getter();
  v25 = sub_1007C42D4(v21, v23, v24);
  v27 = v26;
  v29 = v28;
  v31 = v30;

  KeyPath = swift_getKeyPath();
  v33 = static Edge.Set.horizontal.getter();
  v34 = v2 + *(v4 + 28);
  v35 = *v34;
  if (*(v34 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v37 = v47;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v35, 0);
    (*(v48 + 8))(v37, v49);
  }

  EdgeInsets.init(_all:)();
  v56 = v29 & 1;
  v55 = 0;
  __src[0] = v25;
  __src[1] = v27;
  LOBYTE(__src[2]) = v29 & 1;
  __src[3] = v31;
  __src[4] = KeyPath;
  __src[5] = 0x3FE0000000000000;
  LOBYTE(__src[6]) = v33;
  __src[7] = v38;
  __src[8] = v39;
  __src[9] = v40;
  __src[10] = v41;
  LOBYTE(__src[11]) = 0;
  v51 = SunriseSunsetViewModel.title.getter();
  v52 = v42;
  sub_10022C350(&qword_100CD8818);
  sub_1007C5184(&unk_100CD8820);
  sub_10002D5A4();
  View.accessibilityLabel<A>(_:)();

  memcpy(__dst, __src, 0x59uLL);
  return sub_10003FDA0(__dst, &qword_100CD8818);
}

uint64_t sub_1007C3240@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v24 = type metadata accessor for EnvironmentValues();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SunriseSunsetViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SunriseSunsetChartView();
  v10 = *(v25 - 8);
  __chkstk_darwin(v25);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CD8898);
  v14 = __chkstk_darwin(v13);
  v16 = &v24 - v15;
  (*(v7 + 16))(v9, v2, v6, v14);
  SunriseSunsetChartView.init(model:)();
  KeyPath = swift_getKeyPath();
  v18 = v2 + *(type metadata accessor for SunriseSunsetComponentView() + 36);
  v19 = *v18;
  if (*(v18 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v19, 0);
    (*(v3 + 8))(v5, v24);
    if (v27 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    static Color.white.getter();
    goto LABEL_6;
  }

  if (v19)
  {
    goto LABEL_5;
  }

LABEL_3:
  static Color.black.getter();
LABEL_6:
  v21 = Color.opacity(_:)();

  (*(v10 + 32))(v16, v12, v25);
  v22 = &v16[*(v13 + 36)];
  *v22 = KeyPath;
  v22[1] = v21;
  sub_1007C532C();
  View.accessibilityHidden(_:)();
  return sub_10003FDA0(v16, &qword_100CD8898);
}

uint64_t sub_1007C35B8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = SunriseSunsetViewModel.description.getter();
  v7 = v6;
  v8 = SunriseSunsetViewModel.timePeriodSymbols.getter();
  v9 = sub_1007C48B8(v15, v7, v8);
  v11 = v10;
  LOBYTE(v15) = v12;
  v30 = v13;

  KeyPath = swift_getKeyPath();
  v28 = swift_getKeyPath();
  v14 = v15 & 1;
  v35[128] = v15 & 1;
  v35[120] = 0;
  LODWORD(v15) = static Edge.Set.horizontal.getter();
  v16 = v1 + *(type metadata accessor for SunriseSunsetComponentView() + 28);
  v17 = *v16;
  if (*(v16 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v26 = v2;
    v18 = static Log.runtimeIssuesLog.getter();
    v27 = v15;
    v15 = v11;
    v19 = v18;
    os_log(_:dso:log:_:_:)();

    v11 = v15;
    LOBYTE(v15) = v27;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v17, 0);
    (*(v3 + 8))(v5, v26);
  }

  EdgeInsets.init(_all:)();
  v35[136] = 0;
  v34[0] = v9;
  v34[1] = v11;
  LOBYTE(v34[2]) = v14;
  v34[3] = v30;
  v34[4] = KeyPath;
  v34[5] = 1;
  LOBYTE(v34[6]) = 0;
  v34[7] = v28;
  v34[8] = 0x3FE0000000000000;
  LOBYTE(v34[9]) = v15;
  v34[10] = v20;
  v34[11] = v21;
  v34[12] = v22;
  v34[13] = v23;
  LOBYTE(v34[14]) = 0;
  v32 = SunriseSunsetViewModel.description.getter();
  v33 = v24;
  sub_10022C350(&qword_100CD8808);
  sub_1007C5184(&unk_100CD8810);
  sub_10002D5A4();
  View.accessibilityLabel<A>(_:)();

  memcpy(v35, v34, 0x71uLL);
  return sub_10003FDA0(v35, &qword_100CD8808);
}

uint64_t sub_1007C38B0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CD8790);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_10022C350(&qword_100CD8798);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  *v13 = static VerticalAlignment.lastTextBaseline.getter();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = sub_10022C350(&qword_100CD87A0);
  sub_1007C3AF0(&v13[*(v14 + 44)]);
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v15 = sub_10022C350(&qword_100CD87A8);
  sub_1007C3DD8(&v7[*(v15 + 44)]);
  sub_1000302D8(v13, v10, &qword_100CD8798);
  sub_1000302D8(v7, v4, &qword_100CD8790);
  sub_1000302D8(v10, a1, &qword_100CD8798);
  v16 = sub_10022C350(&qword_100CD87B0);
  sub_1000302D8(v4, a1 + *(v16 + 48), &qword_100CD8790);
  sub_10003FDA0(v7, &qword_100CD8790);
  sub_10003FDA0(v13, &qword_100CD8798);
  sub_10003FDA0(v4, &qword_100CD8790);
  return sub_10003FDA0(v10, &qword_100CD8798);
}

uint64_t sub_1007C3AF0@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_10022C350(&qword_100CD8828);
  __chkstk_darwin(v1);
  v3 = &v26 - v2;
  v4 = sub_10022C350(&qword_100CD8830);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = sub_10022C350(&qword_100CD8838);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  sub_1007C2CF0(&v26 - v15);
  *&v16[*(v11 + 44)] = 257;
  v17 = SunriseSunsetViewModel.description.getter();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    sub_1007C35B8(v3);
    *&v3[*(v1 + 36)] = 257;
    sub_10011C0F0(v3, v9, &qword_100CD8828);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  sub_10001B350(v9, v21, 1, v1);
  sub_1000302D8(v16, v13, &qword_100CD8838);
  sub_1000302D8(v9, v6, &qword_100CD8830);
  v22 = v27;
  sub_1000302D8(v13, v27, &qword_100CD8838);
  v23 = sub_10022C350(&qword_100CD8840);
  sub_1000302D8(v6, v22 + *(v23 + 48), &qword_100CD8830);
  v24 = v22 + *(v23 + 64);
  *v24 = 0;
  *(v24 + 8) = 0;
  sub_10003FDA0(v9, &qword_100CD8830);
  sub_10003FDA0(v16, &qword_100CD8838);
  sub_10003FDA0(v6, &qword_100CD8830);
  return sub_10003FDA0(v13, &qword_100CD8838);
}

uint64_t sub_1007C3DD8@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_10022C350(&qword_100CD87B8);
  __chkstk_darwin(v1 - 8);
  v40 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v39 = &v39 - v4;
  v42 = sub_10022C350(&qword_100CD87C0);
  __chkstk_darwin(v42);
  v6 = &v39 - v5;
  v7 = sub_10022C350(&qword_100CD87C8);
  __chkstk_darwin(v7 - 8);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  v12 = sub_10022C350(&qword_100CD87D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  v18 = sub_10022C350(&qword_100CD87D8);
  __chkstk_darwin(v18 - 8);
  v41 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v39 - v21;
  *v22 = static VerticalAlignment.center.getter();
  *(v22 + 1) = 0;
  v23 = 1;
  v22[16] = 1;
  v24 = &v22[*(sub_10022C350(&qword_100CD87E0) + 44)];
  sub_1007C2CF0(v17);
  sub_1000302D8(v17, v14, &qword_100CD87D0);
  sub_1000302D8(v14, v24, &qword_100CD87D0);
  v25 = v24 + *(sub_10022C350(&qword_100CD87E8) + 48);
  *v25 = 0;
  *(v25 + 8) = 0;
  sub_10003FDA0(v17, &qword_100CD87D0);
  sub_10003FDA0(v14, &qword_100CD87D0);
  v26 = SunriseSunsetViewModel.description.getter();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    *v6 = static VerticalAlignment.center.getter();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v30 = &v6[*(sub_10022C350(&qword_100CD87F0) + 44)];
    v31 = v39;
    sub_1007C35B8(v39);
    v32 = v40;
    sub_1000302D8(v31, v40, &qword_100CD87B8);
    sub_1000302D8(v32, v30, &qword_100CD87B8);
    v33 = v30 + *(sub_10022C350(&qword_100CD87F8) + 48);
    *v33 = 0;
    *(v33 + 8) = 0;
    sub_10003FDA0(v31, &qword_100CD87B8);
    sub_10003FDA0(v32, &qword_100CD87B8);
    sub_10011C0F0(v6, v11, &qword_100CD87C0);
    v23 = 0;
  }

  sub_10001B350(v11, v23, 1, v42);
  v34 = v41;
  sub_1000302D8(v22, v41, &qword_100CD87D8);
  v35 = v43;
  sub_1000302D8(v11, v43, &qword_100CD87C8);
  v36 = v44;
  sub_1000302D8(v34, v44, &qword_100CD87D8);
  v37 = sub_10022C350(&qword_100CD8800);
  sub_1000302D8(v35, v36 + *(v37 + 48), &qword_100CD87C8);
  sub_10003FDA0(v11, &qword_100CD87C8);
  sub_10003FDA0(v22, &qword_100CD87D8);
  sub_10003FDA0(v35, &qword_100CD87C8);
  return sub_10003FDA0(v34, &qword_100CD87D8);
}

uint64_t sub_1007C42D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v4 = type metadata accessor for TypesettingLanguageAwareLineHeightRatio();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TimeStyle();
  v44 = *(v6 - 8);
  v45 = v6;
  __chkstk_darwin(v6);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Font.Leading();
  v41 = *(v8 - 8);
  v42 = v8;
  __chkstk_darwin(v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EnvironmentValues();
  v39 = *(v11 - 8);
  v40 = v11;
  __chkstk_darwin(v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContentSizeCategory();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v39 - v19;
  v21 = type metadata accessor for SunriseSunsetComponentView();
  sub_10009ECC8();
  (*(v15 + 104))(v17, enum case for ContentSizeCategory.extraExtraLarge(_:), v14);
  v22 = sub_1005B51FC(v20, v17);
  v23 = *(v15 + 8);
  v23(v17, v14);
  v23(v20, v14);
  v24 = v3 + *(v21 + 28);
  v25 = *v24;
  v26 = *(v24 + 8);
  if (!v22)
  {
    if (v26)
    {
      if (v25)
      {
        goto LABEL_11;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v28 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v25, 0);
      (*(v39 + 8))(v13, v40);
      if (v53 == 1)
      {
        goto LABEL_11;
      }
    }

    static Font.largeTitle.getter();
    goto LABEL_13;
  }

  if (!v26)
  {

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v25, 0);
    (*(v39 + 8))(v13, v40);
    if (v52 != 1)
    {
      goto LABEL_9;
    }

LABEL_11:
    static Font.title2.getter();
    goto LABEL_13;
  }

  if (v25)
  {
    goto LABEL_11;
  }

LABEL_9:
  static Font.title.getter();
LABEL_13:
  v30 = v41;
  v29 = v42;
  (*(v41 + 104))(v10, enum case for Font.Leading.tight(_:), v42);
  Font.leading(_:)();

  (*(v30 + 8))(v10, v29);
  type metadata accessor for Style();

  v31 = v43;
  static Style.componentTime.getter();
  v32 = TimeStyle.formatTime(_:periodSymbols:font:)();
  v34 = v33;
  LOBYTE(v30) = v35;

  (*(v44 + 8))(v31, v45);
  v36 = v49;
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  v37 = Text.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  sub_10010CD64(v32, v34, v30 & 1);

  (*(v50 + 8))(v36, v51);
  return v37;
}

uint64_t sub_1007C48B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v39 = a3;
  v37 = a1;
  v4 = type metadata accessor for TimeStyle();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Font.Leading();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnvironmentValues();
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin(v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContentSizeCategory();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v32 - v17;
  v19 = type metadata accessor for SunriseSunsetComponentView();
  sub_10009ECC8();
  (*(v13 + 104))(v15, enum case for ContentSizeCategory.extraExtraLarge(_:), v12);
  v20 = sub_1005B51FC(v18, v15);
  v21 = *(v13 + 8);
  v21(v15, v12);
  v21(v18, v12);
  v22 = v3 + *(v19 + 28);
  v23 = *v22;
  v24 = *(v22 + 8);
  if (!v20)
  {
    if (v24)
    {
      if (v23)
      {
        goto LABEL_11;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v26 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v23, 0);
      (*(v32 + 8))(v11, v33);
      if (v43 == 1)
      {
        goto LABEL_11;
      }
    }

    static Font.subheadline.getter();
    goto LABEL_13;
  }

  if (!v24)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v23, 0);
    (*(v32 + 8))(v11, v33);
    if (v42 != 1)
    {
      goto LABEL_9;
    }

LABEL_11:
    static Font.footnote.getter();
    goto LABEL_13;
  }

  if (v23)
  {
    goto LABEL_11;
  }

LABEL_9:
  static Font.caption2.getter();
LABEL_13:
  v28 = v34;
  v27 = v35;
  (*(v34 + 104))(v8, enum case for Font.Leading.tight(_:), v35);
  Font.leading(_:)();

  (*(v28 + 8))(v8, v27);
  type metadata accessor for Style();

  v29 = v36;
  static Style.componentTime.getter();
  v30 = TimeStyle.formatTime(_:periodSymbols:font:)();

  (*(v40 + 8))(v29, v41);
  return v30;
}

unint64_t sub_1007C4DE8()
{
  result = qword_100CD8760;
  if (!qword_100CD8760)
  {
    sub_10022E824(&qword_100CD8768);
    sub_10022E824(&qword_100CD8730);
    sub_1005F6F6C(&unk_100CD8750);
    swift_getOpaqueTypeConformance2();
    sub_1007C5414(&qword_100CE1750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8760);
  }

  return result;
}

unint64_t sub_1007C4F14(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v5 = v4;
    v6 = sub_100003A24(0, v3);
    sub_10022E824(v6);
    v5();
    sub_1007C5414(&qword_100CA3F68);
    result = sub_100004AE0();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1007C4FA4()
{
  result = qword_100CD8778;
  if (!qword_100CD8778)
  {
    sub_10022E824(&qword_100CD8718);
    sub_10022E824(&qword_100CD8708);
    sub_1005F6F6C(&unk_100CD8780);
    swift_getOpaqueTypeConformance2();
    sub_1007C5414(&qword_100CE1750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8778);
  }

  return result;
}

uint64_t sub_1007C50D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1007C512C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1007C5184(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v5 = v4;
    v6 = sub_100003A24(0, v3);
    sub_10022E824(v6);
    v5();
    result = sub_100004AE0();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1007C51E4()
{
  result = qword_100CD8880;
  if (!qword_100CD8880)
  {
    sub_10022E824(&qword_100CD8860);
    sub_1007C5270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8880);
  }

  return result;
}

unint64_t sub_1007C5270()
{
  result = qword_100CD8888;
  if (!qword_100CD8888)
  {
    sub_10022E824(&qword_100CD8858);
    sub_1007C532C();
    sub_1007C5414(&qword_100CE1750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8888);
  }

  return result;
}

unint64_t sub_1007C532C()
{
  result = qword_100CD8890;
  if (!qword_100CD8890)
  {
    sub_10022E824(&qword_100CD8898);
    sub_1007C5414(&unk_100CD88A0);
    sub_1005F6F6C(&unk_100CD88A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8890);
  }

  return result;
}

unint64_t sub_1007C5414(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1007C5458()
{
  result = qword_100CD88C0;
  if (!qword_100CD88C0)
  {
    sub_10022E824(&qword_100CD88C8);
    sub_1007C4F14(&unk_100CD8758);
    sub_1007C4F14(&unk_100CD8770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD88C0);
  }

  return result;
}

uint64_t sub_1007C555C()
{
  v1 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  [v1 setFormatOptions:1907];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v3 = [v1 stringFromDate:isa];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = *(v0 + 8);

  return v7(v4, v6);
}

uint64_t sub_1007C5638()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1007C56C4;

  return Date.urlRepresentationParameter.getter();
}

uint64_t sub_1007C56C4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1007C57C8()
{
  if (*(v0 + 40))
  {
    sub_1007C581C();
  }

  swift_unknownObjectRelease();
  sub_10002B028(*(v0 + 64));
  return v0;
}

void sub_1007C581C()
{
  v1 = v0[2];
  if (v1)
  {
    prefs = v1;
    UnfairLock.lock()();
    v2 = v0[5];
    v0[5] = 0;

    v0[7] = 0;
    swift_unknownObjectRelease();
    SCPreferencesSetDispatchQueue(prefs, 0);
    SCPreferencesSetCallback(prefs, 0, 0);
    UnfairLock.unlock()();
  }
}

uint64_t sub_1007C58B8()
{
  sub_1007C57C8();

  return swift_deallocClassInstance();
}

void sub_1007C58EC(const __SCPreferences *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    sub_1000DCF3C(a1);
  }

  else
  {
    if (qword_100CA2748 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000703C(v4, qword_100D90C30);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Missing context", v6, 2u);
    }
  }
}

void sub_1007C5A14(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  sub_1007C58EC(v5, a2, a3);
}

NSString sub_1007C5A70()
{

  type metadata accessor for AirplaneModeMonitor();
  _print_unlocked<A, B>(_:_:)();

  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t sub_1007C5B30(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v89 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v83 = v8 - v7;
  sub_1000038CC();
  type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v81 = v10;
  v82 = v9;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v79 = v12 - v11;
  v13 = sub_1000038CC();
  v78[1] = type metadata accessor for WeatherData(v13);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  v80 = v16 - v15;
  v17 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v17 - 8);
  v19 = v78 - v18;
  v87 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_100003C38();
  v84 = v21 - v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  v85 = v78 - v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  v86 = v78 - v26;
  sub_1000038CC();
  State = type metadata accessor for VisibleLocationWeatherLoadState();
  sub_1000037E8();
  __chkstk_darwin(v28);
  sub_1000037D8();
  v31 = v30 - v29;
  v32 = type metadata accessor for Location.Identifier();
  sub_1000037E8();
  (*(v33 + 16))(v31, a1, v32);
  sub_10001B350(v31, 0, 1, v32);
  LODWORD(a1) = *(a1 + *(type metadata accessor for LocationViewModel() + 56));
  v34 = (v31 + State[6]);
  StatusLog = type metadata accessor for VisibleLocationWeatherLoadStatusLog();
  *v34 = 0u;
  v34[1] = 0u;
  Date.init()();
  v36 = v34 + StatusLog[9];
  *v36 = 0;
  v36[8] = 1;
  v37 = v34 + StatusLog[10];
  *v37 = 0;
  v37[8] = 1;
  Date.init()();
  *(v31 + State[5]) = _swiftEmptyArrayStorage;
  *(v31 + State[7]) = a1;
  v38 = v2 + OBJC_IVAR____TtC7Weather33VisibleLocationWeatherLoadMonitor_loadState;
  sub_100017BD8();
  sub_1007C6DC0(v31, v38);
  v39 = *(v89 + 24);
  v40 = v38 + State[6] + StatusLog[8];
  v78[0] = v4;
  v39(v40, v88, v4);
  v41 = swift_endAccess();
  if (a1 == 3)
  {
    v42 = v38 + State[6] + StatusLog[9];
    *v42 = 0;
    *(v42 + 8) = 0;
  }

  (*(v2 + 16))(v90, v41);
  v43 = *(v90[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v44 = Location.Identifier.id.getter();
  sub_1000864C0(v44, v45, v43);

  v46 = v87;
  if (sub_100024D10(v19, 1, v87) == 1)
  {
    return sub_1000180EC(v19, &qword_100CA37B0);
  }

  sub_100049CAC();
  v48 = v86;
  sub_10010714C(v19, v86, v49);
  sub_1000067D4();
  v50 = v85;
  sub_1007C6D08(v48, v85, v51);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v52 = *(v50 + 16);
    v53 = *(v50 + 24);

    sub_100017BD8();
    v54 = State[5];
    sub_10051A990();
    v55 = *(*(v38 + v54) + 16);
    sub_100278A30(v55);
    v56 = *(v38 + v54);
    *(v56 + 16) = v55 + 1;
    v57 = v56 + 16 * v55;
    *(v57 + 32) = v52;
    *(v57 + 40) = v53;
    *(v38 + v54) = v56;
    swift_endAccess();
    sub_10001F7F4();
    v59 = v48;
  }

  else
  {
    sub_10001F7F4();
    sub_1007C6D68(v50, v60);
    sub_1000067D4();
    v61 = v84;
    sub_1007C6D08(v48, v84, v62);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v63 = *(sub_10022C350(&qword_100CA75D8) + 48);
      sub_100019F14();
      v64 = v80;
      sub_10010714C(v61, v80, v65);
      sub_100028B40();
      sub_1007C6D68(v61 + v46, v66);
      sub_10002322C();
      sub_1007C6D68(v61 + v63, v67);
      v68 = v79;
      WeatherDataModel.currentWeather.getter();
      v69 = v83;
      CurrentWeather.date.getter();
      (*(v81 + 8))(v68, v82);
      Date.distance(to:)();
      v71 = v70;
      (*(v89 + 8))(v69, v78[0]);
      sub_100008EE8();
      sub_1007C6D68(v64, v72);
      sub_10001F7F4();
      result = sub_1007C6D68(v48, v73);
      v74 = v38 + State[6];
      v75 = v74 + StatusLog[10];
      *v75 = v71;
      *(v75 + 8) = 0;
      v76 = v74 + StatusLog[9];
      *v76 = 0;
      *(v76 + 8) = 0;
      *(v38 + State[7]) = 3;
      return result;
    }

    sub_100016F10();
    sub_1007C6D68(v48, v77);
    v59 = v61;
    v58 = v50;
  }

  return sub_1007C6D68(v59, v58);
}

void sub_1007C6158(uint64_t a1, int a2)
{
  LODWORD(v104) = a2;
  v93 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v95 = v8 - v7;
  v9 = sub_1000038CC();
  v94 = type metadata accessor for WeatherData(v9);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000037D8();
  v96 = v12 - v11;
  v13 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v13 - 8);
  v102 = &v92 - v14;
  v15 = sub_1000038CC();
  v101 = type metadata accessor for LocationWeatherDataState(v15);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_100003C38();
  v97 = v17 - v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  v99 = &v92 - v20;
  sub_1000038CC();
  type metadata accessor for Date();
  sub_1000037C4();
  v107 = v22;
  v108 = v21;
  __chkstk_darwin(v21);
  sub_100003C38();
  v98 = v23 - v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  v106 = &v92 - v26;
  sub_1000038CC();
  v27 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_1000037D8();
  v33 = v32 - v31;
  v34 = sub_10022C350(&qword_100CADD58);
  v35 = v34 - 8;
  __chkstk_darwin(v34);
  v37 = &v92 - v36;
  v38 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v38 - 8);
  sub_100003C38();
  v41 = v39 - v40;
  __chkstk_darwin(v42);
  v44 = &v92 - v43;
  v100 = v2;
  v45 = v2 + OBJC_IVAR____TtC7Weather33VisibleLocationWeatherLoadMonitor_loadState;
  swift_beginAccess();
  v46 = *(v29 + 16);
  v103 = a1;
  v46(v44, a1, v27);
  sub_10001B350(v44, 0, 1, v27);
  v47 = *(v35 + 56);
  v105 = v45;
  sub_1000952C4(v45, v37);
  sub_1000952C4(v44, &v37[v47]);
  sub_10000C814(v37);
  if (!v48)
  {
    sub_1000952C4(v37, v41);
    sub_10000C814(&v37[v47]);
    if (!v48)
    {
      (*(v29 + 32))(v33, &v37[v47], v27);
      sub_1000E8FAC();
      v51 = dispatch thunk of static Equatable.== infix(_:_:)();
      v52 = *(v29 + 8);
      v52(v33, v27);
      sub_1000180EC(v44, &qword_100CADBA0);
      v52(v41, v27);
      sub_1000180EC(v37, &qword_100CADBA0);
      if ((v51 & 1) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    sub_1000180EC(v44, &qword_100CADBA0);
    (*(v29 + 8))(v41, v27);
LABEL_9:
    v49 = &qword_100CADD58;
    v50 = v37;
LABEL_10:
    sub_1000180EC(v50, v49);
    return;
  }

  sub_1000180EC(v44, &qword_100CADBA0);
  sub_10000C814(&v37[v47]);
  if (!v48)
  {
    goto LABEL_9;
  }

  sub_1000180EC(v37, &qword_100CADBA0);
LABEL_12:
  v53 = v106;
  static Date.now.getter();
  v54 = v105;
  sub_100017BD8();
  sub_1004BD224();
  State = type metadata accessor for VisibleLocationWeatherLoadState();
  v56 = v104;
  *(v54 + *(State + 28)) = v104;
  v57 = v56;
  v59 = v107;
  v58 = v108;
  (*(v107 + 24))(v54 + *(State + 32), v53, v108);
  swift_endAccess();
  if (v57 == 3)
  {
    v60 = v54 + *(State + 24);
    StatusLog = type metadata accessor for VisibleLocationWeatherLoadStatusLog();
    v62 = StatusLog;
    if (*(v60 + *(StatusLog + 36) + 8) == 1)
    {
      v63 = v60 + *(StatusLog + 32);
      v64 = v98;
      (*(v59 + 16))(v98, v63, v58);
      Date.distance(to:)();
      (*(v59 + 8))(v64, v58);
      sub_10003C7F4(*(State + 24));
    }

    v104 = v62;
    (*(v100 + 16))(v109);
    v65 = *(v109[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

    v66 = Location.Identifier.id.getter();
    v67 = v102;
    sub_1000864C0(v66, v68, v65);

    if (sub_100024D10(v67, 1, v101) == 1)
    {
      v69 = sub_100069A50();
      v70(v69);
      v49 = &qword_100CA37B0;
      v50 = v67;
      goto LABEL_10;
    }

    sub_100049CAC();
    v71 = v99;
    sub_10010714C(v67, v99, v72);
    sub_1000067D4();
    v73 = v97;
    sub_1007C6D08(v71, v97, v74);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_100016F10();
      sub_1007C6D68(v71, v85);
      v86 = sub_100069A50();
      v87(v86);
      sub_1007C6D68(v73, State);
      return;
    }

    v75 = *(sub_10022C350(&qword_100CA75D8) + 48);
    sub_100019F14();
    v76 = v96;
    sub_10010714C(v73, v96, v77);
    sub_100028B40();
    sub_1007C6D68(v73 + v71, v78);
    sub_10002322C();
    sub_1007C6D68(v73 + v75, v79);
    if (*(v54 + *(State + 24) + *(v104 + 40) + 8) == 1)
    {
      v80 = v95;
      WeatherDataModel.currentWeather.getter();
      v81 = v98;
      CurrentWeather.date.getter();
      (*(v5 + 8))(v80, v93);
      Date.distance(to:)();
      v82 = *(v59 + 8);
      v82(v81, v58);
      sub_100008EE8();
      sub_1007C6D68(v76, v83);
      sub_10001F7F4();
      sub_1007C6D68(v99, v84);
      v82(v53, v58);
      sub_10003C7F4(*(State + 24));
      return;
    }

    sub_100008EE8();
    sub_1007C6D68(v76, v88);
    sub_10001F7F4();
    sub_1007C6D68(v99, v89);
  }

  v90 = sub_100069A50();
  v91(v90);
}

uint64_t sub_1007C69C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  State = type metadata accessor for VisibleLocationWeatherLoadState();
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  v20 = v4 + OBJC_IVAR____TtC7Weather33VisibleLocationWeatherLoadMonitor_loadState;
  swift_beginAccess();
  sub_100074FB8();
  sub_1007C6D08(v20, v19, v21);
  if (sub_100024D10(v19, 1, v8))
  {
    sub_100010B94();
    return sub_1007C6D68(v19, v22);
  }

  v34 = a4;
  (*(v10 + 16))(v14, v19, v8);
  sub_100010B94();
  sub_1007C6D68(v19, v24);
  v25 = Location.Identifier.id.getter();
  v27 = v26;
  (*(v10 + 8))(v14, v8);
  if (v25 == a1 && v27 == a2)
  {

    goto LABEL_10;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
LABEL_10:
    sub_100017BD8();
    v30 = *(State + 20);
    sub_100538558(a3, v34);
    sub_10051A990();
    v31 = *(*(v20 + v30) + 16);
    sub_100278A30(v31);
    v32 = *(v20 + v30);
    *(v32 + 16) = v31 + 1;
    v33 = v32 + 16 * v31;
    *(v33 + 32) = a3;
    *(v33 + 40) = v34;
    *(v20 + v30) = v32;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1007C6C04@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7Weather33VisibleLocationWeatherLoadMonitor_loadState;
  sub_100017BD8();
  sub_1004BD224();
  swift_endAccess();
  sub_100074FB8();
  return sub_1007C6D08(v1 + v3, a1, v4);
}

uint64_t sub_1007C6C7C()
{

  sub_100010B94();
  sub_1007C6D68(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1007C6D08(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1007C6D68(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1007C6DC0(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for VisibleLocationWeatherLoadState();
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t sub_1007C6E34@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocationViewComponentContainerDescriptor();
  v3 = sub_100588E2C(v2);
  if (v3)
  {
    sub_1001B3B30(v3 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, a1);

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for LocationComponentContainerViewModel();

  return sub_10001B350(a1, v4, 1, v5);
}

uint64_t sub_1007C6EC4@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CD8AA0);
  a1[4] = sub_1007C6FEC();
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1007C6F58()
{
  sub_1007C7050();

  return ShortDescribable.description.getter();
}

unint64_t sub_1007C6F98()
{
  result = qword_100CD8A98;
  if (!qword_100CD8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8A98);
  }

  return result;
}

unint64_t sub_1007C6FEC()
{
  result = qword_100CD8AA8;
  if (!qword_100CD8AA8)
  {
    sub_10022E824(&qword_100CD8AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8AA8);
  }

  return result;
}

unint64_t sub_1007C7050()
{
  result = qword_100CD8AB0;
  if (!qword_100CD8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8AB0);
  }

  return result;
}

uint64_t sub_1007C7134()
{
  v0 = type metadata accessor for Logger();
  sub_100007074(v0, qword_100D90B08);
  sub_100049CC4();
  return sub_100074FD0();
}

uint64_t sub_1007C7224()
{
  sub_100046E64();
  result = OS_os_log.init(subsystem:category:)();
  qword_100D90B98 = result;
  return result;
}

uint64_t sub_1007C7288()
{
  v0 = type metadata accessor for Logger();
  sub_100007074(v0, qword_100D90BB8);
  sub_100049CC4();
  sub_10001F80C();
  sub_1000067EC();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1007C72EC()
{
  v0 = type metadata accessor for Logger();
  sub_100007074(v0, qword_100D90BD0);
  sub_100049CC4();
  sub_10001F80C();
  sub_1000067EC();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1007C7350()
{
  v0 = type metadata accessor for Logger();
  sub_100007074(v0, qword_100D90C48);
  sub_100049CC4();
  sub_10001F80C();
  sub_1000067EC();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1007C7460()
{
  v0 = type metadata accessor for Logger();
  sub_100007074(v0, qword_100D90D08);
  sub_100049CC4();
  sub_10001F80C();
  sub_1000067EC();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1007C74E8()
{
  v0 = type metadata accessor for Logger();
  sub_100007074(v0, qword_100D90D98);
  sub_100049CC4();
  sub_10001F80C();
  sub_1000067EC();
  return Logger.init(subsystem:category:)();
}

_BYTE *storeEnumTagSinglePayload for LocationViewModel.ContentStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1007C7640(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C44FE0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1007C768C(char a1)
{
  result = 0x7974706D65;
  switch(a1)
  {
    case 1:
      result = 0x7469577974706D65;
      break;
    case 2:
      result = 0x656E696C66666FLL;
      break;
    case 3:
      result = 0x6574616C75706F70;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1007C7734@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007C7640(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1007C7764@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007C768C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1007C7794()
{
  v101 = type metadata accessor for LocationComponentViewModel();
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v107 = v3 - v2;
  sub_1000038CC();
  v100 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1000037C4();
  v106 = v4;
  __chkstk_darwin(v5);
  v7 = v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v90 - v9;
  v11 = *(v0 + *(type metadata accessor for LocationViewModel() + 28));
  v93 = *(v11 + 16);
  if (v93)
  {
    v12 = 0;
    v92 = v11 + 32;
    v90[3] = 0x8000000100ABAF60;
    v90[2] = 0x8000000100ABAC40;
    v90[1] = 0x8000000100ABAF40;
    v90[0] = 0x8000000100ABACA0;
    v97 = xmmword_100A2C3F0;
    v96 = _swiftEmptyArrayStorage;
    v98 = v10;
    v99 = v7;
    v91 = v11;
    while (v12 < *(v11 + 16))
    {
      v95 = v12;
      v13 = (v92 + 24 * v12);
      v14 = *v13;
      v15 = *(*v13 + 16);
      if (v15)
      {
        v16 = v13[2];
        v109 = _swiftEmptyArrayStorage;

        v94 = v16;

        sub_1006A82F4(0, v15, 0);
        v17 = 0;
        v18 = v109;
        v19 = *(v106 + 80);
        v20 = (v19 + 32) & ~v19;
        v102 = v14 + v20;
        v103 = v19;
        v104 = v15;
        v105 = v14;
LABEL_6:
        if (v17 >= *(v14 + 16))
        {
          __break(1u);
          break;
        }

        v21 = v17 + 1;
        sub_1007C8640(v102 + *(v106 + 72) * v17, v10);
        sub_10022C350(&qword_100CAC7F0);
        v22 = swift_allocObject();
        *(v22 + 16) = v97;
        sub_1007C8640(v10, v22 + v20);
        v108 = _swiftEmptyArrayStorage;
        sub_10000369C(0, 1, 0);
        v23 = v108;
        sub_1007C8640(v22 + v20, v7);
        sub_100010BB4();
        sub_1007C8640(&v7[v24], v107);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            sub_10001CD8C();
            sub_100141B3C(v7, v53);
            sub_10001F820();
            sub_100141B3C(v107, v54);
            v31 = 0x726F46796C696164;
            v34 = 1935762277;
            goto LABEL_20;
          case 2u:
            sub_10001CD8C();
            sub_100141B3C(v7, v44);
            sub_10001F820();
            sub_100141B3C(v107, v45);
            v30 = 0xE900000000000065;
            v31 = 0x6B694C736C656566;
            goto LABEL_33;
          case 3u:
            sub_10001CD8C();
            sub_100141B3C(v7, v48);
            sub_10001F820();
            sub_100141B3C(v107, v49);
            v31 = 0x6F46796C72756F68;
            v30 = 0xEE00747361636572;
            goto LABEL_33;
          case 4u:
            sub_10001F820();
            sub_100141B3C(v107, v37);
            sub_10001CD8C();
            sub_100141B3C(v7, v38);
            v30 = 0xE800000000000000;
            v31 = 0x79746964696D7568;
            goto LABEL_33;
          case 5u:
            sub_10001CD8C();
            sub_100141B3C(v7, v57);
            sub_10001F820();
            sub_100141B3C(v107, v58);
            v30 = 0xE300000000000000;
            v31 = 7364973;
            goto LABEL_33;
          case 6u:
            sub_10001CD8C();
            sub_100141B3C(v7, v61);
            sub_10001F820();
            sub_100141B3C(v107, v62);
            v30 = 0xE400000000000000;
            v31 = 1852796781;
            goto LABEL_33;
          case 7u:
            sub_10001CD8C();
            sub_100141B3C(v7, v50);
            sub_10001F820();
            sub_100141B3C(v107, v51);
            v31 = 0x697472417377656ELL;
            v52 = 6646883;
            goto LABEL_26;
          case 8u:
            sub_10001CD8C();
            sub_100141B3C(v7, v67);
            sub_10001F820();
            sub_100141B3C(v107, v68);
            v31 = 0xD000000000000015;
            v43 = &v110;
            goto LABEL_32;
          case 9u:
            sub_10001CD8C();
            sub_100141B3C(v7, v41);
            sub_10001F820();
            sub_100141B3C(v107, v42);
            v31 = 0xD000000000000012;
            v43 = &v111;
            goto LABEL_32;
          case 0xAu:
            sub_10001F820();
            sub_100141B3C(v107, v65);
            sub_10001CD8C();
            sub_100141B3C(v7, v66);
            v31 = 0xD000000000000012;
            v43 = &v112;
            goto LABEL_32;
          case 0xBu:
            sub_10001CD8C();
            sub_100141B3C(v7, v35);
            sub_10001F820();
            sub_100141B3C(v107, v36);
            v30 = 0xE800000000000000;
            v31 = 0x6572757373657270;
            goto LABEL_33;
          case 0xCu:
            sub_10001CD8C();
            sub_100141B3C(v7, v39);
            v31 = 0x655774726F706572;
            v40 = 0x7265687461;
            goto LABEL_21;
          case 0xDu:
            sub_10001CD8C();
            sub_100141B3C(v7, v59);
            sub_10001F820();
            sub_100141B3C(v107, v60);
            v31 = 0x6C41657265766573;
            v52 = 7631461;
LABEL_26:
            v30 = v52 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            goto LABEL_33;
          case 0xEu:
            sub_10001CD8C();
            sub_100141B3C(v7, v32);
            sub_10001F820();
            sub_100141B3C(v107, v33);
            v31 = 0x53657369726E7573;
            v34 = 1702063733;
LABEL_20:
            v40 = v34 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
LABEL_21:
            v30 = v40 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            goto LABEL_33;
          case 0xFu:
            sub_10001F820();
            sub_100141B3C(v107, v46);
            sub_10001CD8C();
            sub_100141B3C(v7, v47);
            v30 = 0xE800000000000000;
            v31 = 0x7365676172657661;
            goto LABEL_33;
          case 0x10u:
            sub_10001CD8C();
            sub_100141B3C(v7, v28);
            sub_10001F820();
            sub_100141B3C(v107, v29);
            v30 = 0xE700000000000000;
            v31 = 0x7865646E497675;
            goto LABEL_33;
          case 0x11u:
            sub_10001F820();
            sub_100141B3C(v107, v55);
            sub_10001CD8C();
            sub_100141B3C(v7, v56);
            v27 = 0x696269736976;
            goto LABEL_23;
          case 0x12u:
            sub_10001CD8C();
            sub_100141B3C(v7, v63);
            sub_10001F820();
            sub_100141B3C(v107, v64);
            v30 = 0xE400000000000000;
            v31 = 1684957559;
            goto LABEL_33;
          case 0x13u:
            sub_10001CD8C();
            sub_100141B3C(v7, v69);
            v31 = 0xD00000000000001BLL;
            v43 = &v113;
LABEL_32:
            v30 = *(v43 - 32);
            goto LABEL_33;
          default:
            sub_10001CD8C();
            sub_100141B3C(v7, v25);
            sub_10001F820();
            sub_100141B3C(v107, v26);
            v27 = 0x617551726961;
LABEL_23:
            v31 = v27 & 0xFFFFFFFFFFFFLL | 0x696C000000000000;
            v30 = 0xEA00000000007974;
LABEL_33:
            v71 = v23[2];
            v70 = v23[3];
            if (v71 >= v70 >> 1)
            {
              sub_10000369C((v70 > 1), v71 + 1, 1);
              v23 = v108;
            }

            v23[2] = v71 + 1;
            v72 = &v23[2 * v71];
            v72[4] = v31;
            v72[5] = v30;
            v108 = v23;
            sub_10022C350(&qword_100CCC930);
            sub_100006F64(&qword_100CB2D00, &qword_100CCC930);
            v73 = BidirectionalCollection<>.joined(separator:)();
            v75 = v74;

            sub_10001CD8C();
            v10 = v98;
            sub_100141B3C(v98, v76);
            v109 = v18;
            v78 = v18[2];
            v77 = v18[3];
            if (v78 >= v77 >> 1)
            {
              sub_1006A82F4((v77 > 1), v78 + 1, 1);
              v18 = v109;
            }

            v18[2] = v78 + 1;
            v79 = &v18[3 * v78];
            v79[4] = v22;
            v79[5] = v73;
            v79[6] = v75;
            v17 = v21;
            v80 = v104 == v21;
            v7 = v99;
            v14 = v105;
            if (!v80)
            {
              goto LABEL_6;
            }

            break;
        }
      }

      else
      {
        v18 = _swiftEmptyArrayStorage;
      }

      v81 = v18[2];
      v82 = v96[2];
      if (__OFADD__(v82, v81))
      {
        goto LABEL_56;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v96;
      if (!isUniquelyReferenced_nonNull_native || v82 + v81 > v96[3] >> 1)
      {
        sub_1001B4454();
        v84 = v85;
      }

      v86 = v18[2];
      v96 = v84;
      if (v86)
      {
        if ((v84[3] >> 1) - v84[2] < v81)
        {
          goto LABEL_58;
        }

        swift_arrayInitWithCopy();

        if (v81)
        {
          v87 = v96[2];
          v88 = __OFADD__(v87, v81);
          v89 = v87 + v81;
          if (v88)
          {
            goto LABEL_59;
          }

          v96[2] = v89;
        }
      }

      else
      {

        if (v81)
        {
          goto LABEL_57;
        }
      }

      v12 = v95 + 1;
      v11 = v91;
      if (v95 + 1 == v93)
      {
        return;
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
  }

  else
  {
    v96 = _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1007C8094(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for LocationComponentViewModel();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = *(v10 + 16);
  if (v11 == 2)
  {
    v12 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      if (v12 >= v9)
      {
        type metadata accessor for LocationComponentContainerViewModel();
        sub_100003928();
        sub_100010BB4();
        v35 = v13;
        sub_1007C8640(v13 + v14, v8);
        v15 = sub_1001B3DAC();
        v17 = v16;
        sub_10001F820();
        sub_100141B3C(v8, v18);
        swift_isUniquelyReferenced_nonNull_native();
        sub_100016F28();
        sub_100239B9C(0, 1, v9, v9 + 1, v15, v17, v19);

        *a1 = v36;
        if (*(v10 + 16) >= 2uLL)
        {
          sub_100010BB4();
          sub_1007C8640(v35 + v20, v8);
          v21 = sub_1001B3DAC();
          v23 = v22;
          sub_10001F820();
          sub_100141B3C(v8, v24);
          swift_isUniquelyReferenced_nonNull_native();
          sub_100016F28();
          sub_100239B9C(1, 2, v9, v12, v21, v23, v25);

          *a1 = v36;
          return result;
        }

        goto LABEL_14;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 == 1)
  {
    if (!__OFADD__(v9, 1))
    {
      if (v9 + 1 >= v9)
      {
        v27 = type metadata accessor for LocationComponentContainerViewModel();
        sub_100003810(v27);
        sub_100010BB4();
        sub_1007C8640(v29 + v28, v8);
        v30 = sub_1001B3DAC();
        v32 = v31;
        sub_10001F820();
        sub_100141B3C(v8, v33);
        swift_isUniquelyReferenced_nonNull_native();
        sub_100016F28();
        sub_100239B9C(0, 2, v9, v9 + 1, v30, v32, v34);

        *a1 = v36;
        return result;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007C83A0@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3BBA0;
  *(inited + 32) = 0x6E6F697461636F6CLL;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = Location.Identifier.id.getter();
  *(inited + 56) = v4;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x726564616568;
  *(inited + 88) = 0xE600000000000000;
  v5 = type metadata accessor for LocationViewModel();
  memcpy(__dst, (v1 + *(v5 + 24)), 0x9AuLL);
  *(inited + 120) = &type metadata for LocationHeaderViewModel;
  v6 = swift_allocObject();
  *(inited + 96) = v6;
  memcpy((v6 + 16), __dst, 0x9AuLL);
  *(inited + 128) = 1937207154;
  *(inited + 136) = 0xE400000000000000;
  v7 = *(v1 + *(v5 + 28));
  *(inited + 168) = sub_10022C350(&qword_100CD47E0);
  *(inited + 144) = v7;
  sub_100151784(__dst, &v9);

  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CD8BF0);
  a1[4] = sub_100006F64(&qword_100CD8BF8, &qword_100CD8BF0);
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1007C858C()
{
  sub_100164738(&qword_100CD8C00, type metadata accessor for LocationViewModel);

  return ShortDescribable.description.getter();
}

uint64_t sub_1007C8640(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1007C869C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v46 = type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v5 = v4;
  v44 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v45 = v8 - v7;
  v9 = type metadata accessor for UVIndex();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = type metadata accessor for UVIndexComponentViewModel();
  v17 = (v16 - 8);
  __chkstk_darwin(v16);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = a1 + *(type metadata accessor for UVIndexComponent() + 20);
  CurrentWeather.uvIndex.getter();
  v22 = UVIndex.value.getter();
  (*(v11 + 8))(v15, v9);
  v23 = type metadata accessor for UVIndexComponentPreprocessedDataModel();
  v24 = (v21 + *(v23 + 20));
  v25 = v24[1];
  v43 = *v24;
  (*(v5 + 16))(v45, v21, v46);
  v26 = (v21 + *(v23 + 24));
  v28 = *v26;
  v27 = v26[1];
  sub_100119F7C();

  v29 = static NSDateFormatter.prevailingPeriodSymbols.getter();
  *v20 = v22;
  *(v20 + 8) = fmin(v22 / 11.0, 1.0);
  *(v20 + 16) = v43;
  *(v20 + 24) = v25;
  (*(v44 + 32))(v20 + v17[9], v45, v46);
  v30 = (v20 + v17[10]);
  *v30 = v28;
  v30[1] = v27;
  *(v20 + v17[11]) = v29;
  v31 = [objc_opt_self() mainBundle];
  v47._object = 0x8000000100ADF050;
  v32._countAndFlagsBits = 0x7865646E49205655;
  v32._object = 0xE800000000000000;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v47._countAndFlagsBits = 0xD00000000000003ALL;
  v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v47);

  *a2 = v34;
  strcpy((a2 + 16), "sun.max.fill");
  *(a2 + 29) = 0;
  *(a2 + 30) = -5120;
  *(a2 + 32) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  v35 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1007C8AD0(v20, a2 + v35[5]);
  type metadata accessor for LocationComponentViewModel();
  swift_storeEnumTagMultiPayload();
  v36 = a2 + v35[8];
  v37 = *(sub_10022C350(&qword_100CA6690) + 48);
  v38 = enum case for DetailCondition.uvIndex(_:);
  v39 = type metadata accessor for DetailCondition();
  (*(*(v39 - 8) + 104))(v36, v38, v39);
  *(v36 + v37) = 0;
  v40 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v36, 0, 1, v40);
  sub_10013D288();
  v41 = Dictionary.init(dictionaryLiteral:)();
  result = sub_1007C8B34(v20);
  *(a2 + v35[6]) = 256;
  *(a2 + v35[7]) = v41;
  return result;
}

uint64_t sub_1007C8AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UVIndexComponentViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007C8B34(uint64_t a1)
{
  v2 = type metadata accessor for UVIndexComponentViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1007C8BB8()
{
  type metadata accessor for CurrentWeather();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HourlyForecastComponentPreprocessedDataModel();
    if (v1 <= 0x3F)
    {
      sub_1000F432C();
      if (v2 <= 0x3F)
      {
        sub_1000F4460();
        if (v3 <= 0x3F)
        {
          sub_1007C8C94();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1007C8C94()
{
  if (!qword_100CB0C70)
  {
    type metadata accessor for WeatherChanges();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB0C70);
    }
  }
}

uint64_t sub_1007C8CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherChanges();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  sub_10022C350(&qword_100CACDF8);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = sub_10022C350(&qword_100CB0D10);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  if ((static CurrentWeather.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  v18 = type metadata accessor for HourlyForecastComponent();
  if (!sub_100411C04(a1 + *(v18 + 20), a2 + *(v18 + 20)))
  {
    goto LABEL_13;
  }

  v31 = v10;
  v32 = v6;
  v33 = v4;
  type metadata accessor for HourWeather();
  v34 = v18;
  sub_1000F429C(&qword_100CB0C20, &type metadata accessor for HourWeather);
  sub_1000F429C(&qword_100CB0C28, &type metadata accessor for HourWeather);
  sub_1000F429C(&qword_100CB0C30, &type metadata accessor for HourWeather);
  if ((static Forecast.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  type metadata accessor for DayWeather();
  sub_1000F429C(&qword_100CB0C50, &type metadata accessor for DayWeather);
  sub_1000F429C(&qword_100CB0C58, &type metadata accessor for DayWeather);
  sub_1000F429C(&qword_100CB0C60, &type metadata accessor for DayWeather);
  if ((static Forecast.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  v19 = v34;
  v20 = *(v34 + 32);
  v21 = *(v14 + 48);
  sub_1007CA0B4(a1 + v20, v17);
  sub_1007CA0B4(a2 + v20, &v17[v21]);
  v22 = v33;
  if (sub_100024D10(v17, 1, v33) != 1)
  {
    sub_1007CA0B4(v17, v13);
    if (sub_100024D10(&v17[v21], 1, v22) != 1)
    {
      v24 = v31;
      v23 = v32;
      (*(v32 + 32))(v31, &v17[v21], v22);
      sub_10001F838();
      sub_1000F429C(v25, v26);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v23 + 8);
      v28(v24, v22);
      v28(v13, v22);
      sub_1000180EC(v17, &qword_100CACDF8);
      if ((v27 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    (*(v32 + 8))(v13, v22);
LABEL_10:
    sub_1000180EC(v17, &qword_100CB0D10);
    goto LABEL_13;
  }

  if (sub_100024D10(&v17[v21], 1, v22) != 1)
  {
    goto LABEL_10;
  }

  sub_1000180EC(v17, &qword_100CACDF8);
LABEL_12:
  if (*(a1 + *(v19 + 36)) == *(a2 + *(v19 + 36)))
  {
    v29 = *(a1 + *(v19 + 40)) ^ *(a2 + *(v19 + 40)) ^ 1;
    return v29 & 1;
  }

LABEL_13:
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_1007C918C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  sub_10022C350(&qword_100CACDF8);
  sub_100003828();
  __chkstk_darwin(v3);
  v52 = &v50 - v4;
  v60 = sub_10022C350(&qword_100CA7000);
  sub_1000037C4();
  v58 = v5;
  sub_100003828();
  __chkstk_darwin(v6);
  v53 = &v50 - v7;
  v61 = sub_10022C350(&qword_100CA7030);
  sub_1000037C4();
  v59 = v8;
  sub_100003828();
  __chkstk_darwin(v9);
  v54 = &v50 - v10;
  type metadata accessor for HourlyForecastComponentPreprocessedDataModel();
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v62 = v16;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  sub_10022C350(&qword_100CD8D50);
  sub_1000037C4();
  v55 = v21;
  v56 = v22;
  sub_100003828();
  __chkstk_darwin(v23);
  v25 = &v50 - v24;
  v63 = type metadata accessor for HourlyForecastComponent();
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_1000037D8();
  v29 = v28 - v27;
  v30 = a1[3];
  v65 = a1;
  sub_1000161C0(a1, v30);
  sub_1007CA124();
  v57 = v25;
  v31 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v31)
  {
    return sub_100006F14(v65);
  }

  v72 = 0;
  sub_100008F1C();
  sub_1000F429C(v32, v33);
  v34 = v55;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35 = v29;
  (*(v62 + 32))(v29, v20, v15);
  v71 = 1;
  sub_100014ED8();
  sub_1000F429C(v36, v37);
  v38 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v39 = v63;
  sub_1007CA178(v14, v35 + *(v63 + 20));
  v70 = 2;
  sub_100008F34(&qword_100CD8D68, &qword_100CA7030);
  v40 = v54;
  v41 = v61;
  sub_10002324C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v59 + 32))(v35 + v39[6], v40, v41);
  v69 = 3;
  sub_100008F34(&qword_100CD8D70, &qword_100CA7000);
  v42 = v53;
  v43 = v60;
  sub_10002324C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v58 + 32))(v35 + v39[7], v42, v43);
  type metadata accessor for WeatherChanges();
  v68 = 4;
  sub_10001F838();
  sub_1000F429C(v44, v45);
  v46 = v52;
  sub_10002324C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1007CA1DC(v46, v35 + v39[8]);
  v67 = 5;
  *(v35 + v39[9]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v66 = 6;
  LOBYTE(v43) = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = sub_100010BCC();
  v48(v47, v38);
  *(v35 + v39[10]) = v43 & 1;
  sub_1007CA24C(v35, v51);
  sub_100006F14(v65);
  return sub_1007CA2B0(v35, type metadata accessor for HourlyForecastComponent);
}

uint64_t sub_1007C9930(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x57746E6572727563 && a2 == 0xEE00726568746165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000100AC8430 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F46796C72756F68 && a2 == 0xEE00747361636572;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726F46796C696164 && a2 == 0xED00007473616365;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4372656874616577 && a2 == 0xEE007365676E6168;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F726548776F6873 && a2 == 0xEE00676E69727453;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6E696C66664F7369 && a2 == 0xE900000000000065)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1007C9B98(char a1)
{
  result = 0x57746E6572727563;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6F46796C72756F68;
      break;
    case 3:
      result = 0x726F46796C696164;
      break;
    case 4:
      result = 0x4372656874616577;
      break;
    case 5:
      result = 0x6F726548776F6873;
      break;
    case 6:
      result = 0x6E696C66664F7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1007C9CA8(void *a1)
{
  v3 = sub_10022C350(&qword_100CD8D80);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = v17 - v7;
  sub_1000161C0(a1, a1[3]);
  sub_1007CA124();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = 0;
  type metadata accessor for CurrentWeather();
  sub_100008F1C();
  sub_1000F429C(v9, v10);
  sub_1000058DC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v11 = type metadata accessor for HourlyForecastComponent();
    v23 = 1;
    type metadata accessor for HourlyForecastComponentPreprocessedDataModel();
    sub_100014ED8();
    sub_1000F429C(v12, v13);
    sub_1000058DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17[1] = v11;
    v22 = 2;
    sub_10022C350(&qword_100CA7030);
    sub_100004B14(&qword_100CD8D90);
    sub_100016834();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = 3;
    sub_10022C350(&qword_100CA7000);
    sub_100004B14(&qword_100CD8D98);
    sub_100016834();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = 4;
    type metadata accessor for WeatherChanges();
    sub_10001F838();
    sub_1000F429C(v14, v15);
    sub_1000058DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = 5;
    sub_100016834();
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = 6;
    sub_100016834();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1007C9FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007C9930(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007CA008(uint64_t a1)
{
  v2 = sub_1007CA124();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007CA044(uint64_t a1)
{
  v2 = sub_1007CA124();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007CA0B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CACDF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1007CA124()
{
  result = qword_100CD8D58;
  if (!qword_100CD8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8D58);
  }

  return result;
}

uint64_t sub_1007CA178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourlyForecastComponentPreprocessedDataModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007CA1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CACDF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007CA24C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourlyForecastComponent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007CA2B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for HourlyForecastComponent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1007CA3E8()
{
  result = qword_100CD8DA8;
  if (!qword_100CD8DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8DA8);
  }

  return result;
}

unint64_t sub_1007CA440()
{
  result = qword_100CD8DB0;
  if (!qword_100CD8DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8DB0);
  }

  return result;
}

unint64_t sub_1007CA498()
{
  result = qword_100CD8DB8;
  if (!qword_100CD8DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8DB8);
  }

  return result;
}

double sub_1007CA508()
{
  v1 = type metadata accessor for AppConfiguration();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0((v0 + 16), *(v0 + 40));
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.reverseGeocodingRefreshTimeInterval.getter();
  v6 = v5;
  (*(v2 + 8))(v4, v1);
  return v6;
}

double sub_1007CA604@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_100035AD0(v1 + 80, &v5, &qword_100CD8DC0);
  if (*(&v6 + 1) == 1)
  {
    sub_1000180EC(&v5, &qword_100CD8DC0);
    sub_1007CA6E4(v1, a1);
    sub_100035AD0(a1, &v5, &qword_100CD8E98);
    swift_beginAccess();
    sub_1007CBF00(&v5, v1 + 80);
    swift_endAccess();
  }

  else
  {
    result = *&v5;
    v4 = v6;
    *a1 = v5;
    *(a1 + 16) = v4;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1007CA6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = __chkstk_darwin(v4);
  (*(a1 + 120))(v9, v5);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.Geocoding.clearGeocodingCacheOnNextLaunch.getter();
  SettingReader.read<A>(_:)();

  sub_1000161C0(v9, v9[3]);
  dispatch thunk of GeocodeStoreType.deleteAllLocations(satisfying:)();
  if (v8 == 1)
  {
    static Settings.Geocoding.clearGeocodingCacheOnNextLaunch.getter();
    sub_1007CBF74(&qword_100CD8EA0, v6, type metadata accessor for LocalSearchRequestManager);
    Updatable.save<A>(setting:value:)();
  }

  sub_100035B30(v9, a2);
  return sub_100006F14(v9);
}

BOOL sub_1007CAA44()
{
  v0 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  Location.lastRefreshDate.getter();
  if (sub_100024D10(v2, 1, v3) == 1)
  {
    sub_1000180EC(v2, &unk_100CB2CF0);
    return 1;
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    v11 = sub_1007CA508();
    static WeatherClock.date.getter();
    Date.timeIntervalSince(_:)();
    v13 = v12;
    v14 = *(v4 + 8);
    v14(v6, v3);
    v14(v9, v3);
    return v11 <= v13;
  }
}

uint64_t LocalSearchRequestManager.__allocating_init(service:store:appConfigurationManager:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  LocalSearchRequestManager.init(service:store:appConfigurationManager:queue:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t LocalSearchRequestManager.init(service:store:appConfigurationManager:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_1000037C4();
  v19 = v11;
  v20 = v10;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v18 = v13 - v12;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  sub_1000037D8();
  type metadata accessor for PromiseDeduperFlags();
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000037D8();
  sub_1007CBF74(&qword_100CA2E08, 255, &type metadata accessor for PromiseDeduperFlags);
  sub_10022C350(&qword_100CA2E10);
  sub_100067638(&qword_100CA2E18, &qword_100CA2E10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10022C350(&qword_100CA2E20);
  swift_allocObject();
  *(v6 + 72) = PromiseDeduper.init(options:)();
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 104) = xmmword_100A2C400;
  *(v6 + 56) = a1;
  *(v6 + 64) = a2;
  *(v6 + 120) = a3;
  *(v6 + 128) = a4;
  sub_100035B30(a5, v6 + 16);
  if (!a6)
  {
    sub_100040690();
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    sub_1007CBF74(&qword_100CA2E50, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_10022C350(&qword_100CA2E58);
    sub_100067638(&qword_100CA2E60, &qword_100CA2E58);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v19 + 104))(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
    a6 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    swift_unknownObjectRelease();
  }

  sub_100006F14(a5);
  *(v6 + 136) = a6;
  return v6;
}

uint64_t LocalSearchRequestManager.performLocalSearch(with:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;
  type metadata accessor for Location();

  v6 = firstly<A, B>(on:disposeOn:closure:)();

  return v6;
}

uint64_t sub_1007CB1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v8 - 8);
  v10 = v25 - v9;
  v11 = type metadata accessor for Location();
  v28 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v27 = v25 - v15;
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.Geocoding.bypassGeocodingCache.getter();
  SettingReader.read<A>(_:)();

  if (v32[0])
  {
    goto LABEL_9;
  }

  v26 = v11;
  v29 = a2;
  sub_1007CA604(v32);
  if (!v33)
  {
    sub_1000180EC(v32, &qword_100CD8E98);
    sub_10001B350(v10, 1, 1, v26);
    goto LABEL_8;
  }

  sub_100035B30(v32, v30);
  sub_1000180EC(v32, &qword_100CD8E98);
  v25[1] = v7;
  sub_1000161C0(v30, v31);
  dispatch thunk of GeocodeStoreType.queryLocation(for:)();
  sub_100006F14(v30);
  v16 = v26;
  if (sub_100024D10(v10, 1, v26) == 1)
  {
LABEL_8:
    sub_1000180EC(v10, &qword_100CA65D8);
    a2 = v29;
    goto LABEL_9;
  }

  v17 = v27;
  v18 = v28;
  (*(v28 + 32))(v27, v10, v16);
  if (!sub_1007CAA44())
  {
    (*(v18 + 16))(v13, v17, v16);
    sub_10022C350(&qword_100CD04C0);
    swift_allocObject();
    v23 = Promise.init(value:)();
    (*(v18 + 8))(v17, v16);
    return v23;
  }

  v19 = sub_1007CA604(v32);
  if (v33)
  {
    sub_100035B30(v32, v30);
    sub_1000180EC(v32, &qword_100CD8E98);
    sub_1000161C0(v30, v31);
    dispatch thunk of GeocodeStoreType.deleteLocation(for:)();
    (*(v18 + 8))(v17, v16);
    sub_100006F14(v30);
  }

  else
  {
    (*(v18 + 8))(v17, v16, v19);
    sub_1000180EC(v32, &qword_100CD8E98);
  }

  a2 = v29;
LABEL_9:
  v20 = *(a1 + 64);
  ObjectType = swift_getObjectType();
  (*(v20 + 8))(a2, a3, ObjectType, v20);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;

  v23 = Promise.then<A, B>(on:disposeOn:closure:)();

  return v23;
}

uint64_t LocalSearchRequestManager.performLocalSearch(with:calloutTitle:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  v7[5] = v3;
  type metadata accessor for Location();

  v8 = a1;

  v9 = firstly<A, B>(on:disposeOn:closure:)();

  return v9;
}

uint64_t sub_1007CB7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v31 = *a5;
  v9 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for Location();
  v29 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v28 = &v28 - v16;
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.Geocoding.bypassGeocodingCache.getter();
  SettingReader.read<A>(_:)();

  if (v34[0])
  {
    goto LABEL_11;
  }

  v30 = a1;
  sub_1007CA604(v34);
  if (!v35)
  {
    sub_1000180EC(v34, &qword_100CD8E98);
    sub_10001B350(v11, 1, 1, v12);
    goto LABEL_8;
  }

  sub_100035B30(v34, v32);
  sub_1000180EC(v34, &qword_100CD8E98);
  sub_1000161C0(v32, v33);
  v17 = v12;
  dispatch thunk of GeocodeStoreType.queryLocation(for:)();
  sub_100006F14(v32);
  if (sub_100024D10(v11, 1, v12) == 1)
  {
LABEL_8:
    v21 = &qword_100CA65D8;
    v22 = v11;
LABEL_9:
    sub_1000180EC(v22, v21);
    goto LABEL_10;
  }

  v19 = v28;
  v18 = v29;
  (*(v29 + 32))(v28, v11, v17);
  if (!sub_1007CAA44())
  {
    (*(v18 + 16))(v14, v19, v17);
    sub_10022C350(&qword_100CD04C0);
    swift_allocObject();
    v26 = Promise.init(value:)();
    (*(v18 + 8))(v19, v17);
    return v26;
  }

  v20 = sub_1007CA604(v34);
  if (!v35)
  {
    (*(v18 + 8))(v19, v17, v20);
    v21 = &qword_100CD8E98;
    v22 = v34;
    goto LABEL_9;
  }

  sub_100035B30(v34, v32);
  sub_1000180EC(v34, &qword_100CD8E98);
  sub_1000161C0(v32, v33);
  dispatch thunk of GeocodeStoreType.deleteLocation(for:)();
  (*(v18 + 8))(v19, v17);
  sub_100006F14(v32);
LABEL_10:
  a1 = v30;
LABEL_11:
  v23 = *(a3 + 64);
  ObjectType = swift_getObjectType();
  (*(v23 + 16))(a4, a1, a2, ObjectType, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;

  v26 = Promise.then<A, B>(on:disposeOn:closure:)();

  return v26;
}

uint64_t sub_1007CBC48(uint64_t a1)
{
  v3 = type metadata accessor for Location();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_1007CA604(v12);
  if (v13)
  {
    sub_100035B30(v12, v11);
    sub_1000180EC(v12, &qword_100CD8E98);
    v14 = v1;
    sub_1000161C0(v11, v11[3]);
    dispatch thunk of GeocodeStoreType.saveLocation(_:for:)();
    sub_100006F14(v11);
  }

  else
  {
    sub_1000180EC(v12, &qword_100CD8E98);
  }

  (*(v5 + 16))(v9, a1, v3);
  sub_10022C350(&qword_100CD04C0);
  swift_allocObject();
  return Promise.init(value:)();
}

uint64_t LocalSearchRequestManager.deinit()
{
  sub_100006F14(v0 + 16);
  swift_unknownObjectRelease();

  sub_1000180EC(v0 + 80, &qword_100CD8DC0);

  return v0;
}

uint64_t LocalSearchRequestManager.__deallocating_deinit()
{
  LocalSearchRequestManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1007CBF00(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD8DC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007CBF74(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1007CC044@<X0>(_BYTE *a1@<X8>)
{
  *a1 = static Axis.Set.horizontal.getter();
  v3 = sub_10022C350(&qword_100CD8F38);
  return sub_1007CC090(v1, &a1[*(v3 + 44)]);
}

uint64_t sub_1007CC090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CD8F40);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for WindCompassAndTableView(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  sub_1007CC5A0(a1, &v19 - v14);
  *v9 = static Axis.Set.vertical.getter();
  v16 = sub_10022C350(&qword_100CD8F48);
  sub_1007CC2B8(a1, &v9[*(v16 + 44)]);
  sub_1007CC5A0(v15, v12);
  sub_1000302D8(v9, v6, &qword_100CD8F40);
  sub_1007CC5A0(v12, a2);
  v17 = sub_10022C350(&qword_100CD8F50);
  sub_1000302D8(v6, a2 + *(v17 + 48), &qword_100CD8F40);
  sub_1000180EC(v9, &qword_100CD8F40);
  sub_1007CC618(v15, type metadata accessor for WindCompassAndTableView);
  sub_1000180EC(v6, &qword_100CD8F40);
  return sub_1007CC618(v12, type metadata accessor for WindCompassAndTableView);
}

uint64_t sub_1007CC2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WindDataTableView(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v24[-v9];
  v11 = type metadata accessor for WindCompassAndTableView(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v24[-v15];
  sub_1007CC5A0(a1, &v24[-v15]);
  sub_1007CC5A0(a1, &v10[v5[11]]);
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v17 = v5[7];
  *&v10[v17] = swift_getKeyPath();
  sub_10022C350(&qword_100CA71B0);
  swift_storeEnumTagMultiPayload();
  v18 = &v10[v5[8]];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = &v10[v5[9]];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = &v10[v5[10]];
  KeyPath = swift_getKeyPath();
  v24[8] = 0;
  *v20 = KeyPath;
  v20[72] = 0;
  sub_1007CC5A0(v16, v13);
  sub_1007CC5A0(v10, v7);
  sub_1007CC5A0(v13, a2);
  v22 = sub_10022C350(&qword_100CD8F58);
  sub_1007CC5A0(v7, a2 + *(v22 + 48));
  sub_1007CC618(v10, type metadata accessor for WindDataTableView);
  sub_1007CC618(v16, type metadata accessor for WindCompassAndTableView);
  sub_1007CC618(v7, type metadata accessor for WindDataTableView);
  return sub_1007CC618(v13, type metadata accessor for WindCompassAndTableView);
}

uint64_t sub_1007CC5A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_1007CC618(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1007CC698()
{
  sub_10009BE44(319, &qword_100CACE80);
  if (v0 <= 0x3F)
  {
    sub_10013BCD0();
    if (v1 <= 0x3F)
    {
      sub_10009BE44(319, &qword_100CE0E20);
      if (v2 <= 0x3F)
      {
        sub_10009BE44(319, &qword_100CB7100);
        if (v3 <= 0x3F)
        {
          type metadata accessor for WindComponentViewModel();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1007CC7BC()
{
  result = type metadata accessor for WindComponentViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1007CC844@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10022C350(&qword_100CB7028);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for HorizontalABWithB1x1RatioLayout();
  v8 = (v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v18 - v12);
  sub_100046E64();
  *v13 = OS_os_log.init(subsystem:category:)();
  v14 = v8[7];
  *(v13 + v14) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  swift_storeEnumTagMultiPayload();
  *(v13 + v8[8]) = 0x4059000000000000;
  v15 = v13 + v8[9];
  *v15 = 0;
  v15[8] = 1;
  *(v13 + v8[10]) = 0x4030000000000000;
  sub_1007CEC48(v13, v10);
  sub_1007CC5A0(v10, v6);
  sub_1000302D8(v6, a1, &qword_100CB7028);
  v16 = sub_10022C350(&qword_100CD9148);
  sub_1007CCA98(v2, a1 + *(v16 + 44));
  sub_1000180EC(v6, &qword_100CB7028);
  return sub_1007CC618(v10, type metadata accessor for HorizontalABWithB1x1RatioLayout);
}

uint64_t sub_1007CCA98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherWindComponentCompassContainerView(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v28[-v9];
  v11 = type metadata accessor for WindDataTableView(0);
  v12 = (v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v28[-v16];
  sub_1007CC5A0(a1, &v28[v12[11] - v16]);
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v12[7];
  *&v17[v18] = swift_getKeyPath();
  sub_10022C350(&qword_100CA71B0);
  swift_storeEnumTagMultiPayload();
  v19 = &v17[v12[8]];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = &v17[v12[9]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &v17[v12[10]];
  KeyPath = swift_getKeyPath();
  v28[8] = 0;
  *v21 = KeyPath;
  v21[72] = 0;
  v23 = *(type metadata accessor for WindComponentViewModel() + 68);
  v24 = *(v5 + 28);
  v25 = type metadata accessor for WindComponentCompassViewModel();
  (*(*(v25 - 8) + 16))(&v10[v24], a1 + v23, v25);
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  sub_1007CC5A0(v17, v14);
  sub_1007CC5A0(v10, v7);
  sub_1007CC5A0(v14, a2);
  v26 = sub_10022C350(&qword_100CD9150);
  sub_1007CC5A0(v7, a2 + *(v26 + 48));
  sub_1007CC618(v10, type metadata accessor for WeatherWindComponentCompassContainerView);
  sub_1007CC618(v17, type metadata accessor for WindDataTableView);
  sub_1007CC618(v7, type metadata accessor for WeatherWindComponentCompassContainerView);
  return sub_1007CC618(v14, type metadata accessor for WindDataTableView);
}

uint64_t sub_1007CCDD4@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_10022C350(&qword_100CD90A0);
  return sub_1007CCE24(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_1007CCE24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for WindDataTableView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_10022C350(&qword_100CD90A8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v28 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &KeyPath - v11;
  v13 = a1 + *(v4 + 44);
  v14 = type metadata accessor for WindComponentViewModel();
  sub_1002EE4F8(*(v13 + *(v14 + 72)));
  v30 = v15;
  KeyPath = swift_getKeyPath();
  sub_1007CC5A0(a1, &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_1007CEC48(&KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1007CE978;
  *(v18 + 24) = v17;
  sub_10022C350(&qword_100CD90B0);
  sub_10022C350(&qword_100CD90B8);
  sub_100006F64(&qword_100CD90C0, &qword_100CD90B0);
  sub_100006F64(&qword_100CD90C8, &qword_100CD90B8);
  ForEach<>.init(_:id:content:)();
  v19 = *(v8 + 16);
  v20 = v28;
  v19(v28, v12, v7);
  v21 = v29;
  *v29 = 0;
  *(v21 + 8) = 1;
  v22 = v21;
  v23 = sub_10022C350(&qword_100CD90D0);
  v19(&v22[*(v23 + 48)], v20, v7);
  v24 = &v22[*(v23 + 64)];
  *v24 = 0;
  v24[8] = 1;
  v25 = *(v8 + 8);
  v25(v12, v7);
  return (v25)(v20, v7);
}

uint64_t sub_1007CD1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v104 = a5;
  v107 = a4;
  v105 = a3;
  v106 = a2;
  v103 = a7;
  v93 = type metadata accessor for PrimaryDividerStyle();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for Divider();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10022C350(&qword_100CA7280);
  v87 = *(v100 - 8);
  __chkstk_darwin(v100);
  v86 = &v85 - v11;
  v12 = sub_10022C350(&qword_100CB6FB8);
  __chkstk_darwin(v12 - 8);
  v102 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v101 = &v85 - v15;
  v16 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v16 - 8);
  v94 = type metadata accessor for AccessibilityChildBehavior();
  v17 = *(v94 - 8);
  __chkstk_darwin(v94);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10022C350(&qword_100CD90D8);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v85 - v22;
  v24 = sub_10022C350(&qword_100CD90E0);
  __chkstk_darwin(v24);
  v26 = &v85 - v25;
  v97 = sub_10022C350(&qword_100CD90E8);
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v28 = &v85 - v27;
  v29 = sub_10022C350(&qword_100CD90F0);
  __chkstk_darwin(v29 - 8);
  v99 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v95 = &v85 - v32;
  sub_1007CDD90(a1);
  *v23 = static VerticalAlignment.center.getter();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v33 = sub_10022C350(&qword_100CD90F8);
  sub_1007CDE24(v106, v105, v107, v104, a6, &v23[*(v33 + 44)]);
  LOBYTE(a1) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = &v23[*(sub_10022C350(&qword_100CD9100) + 36)];
  *v42 = a1;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  LOBYTE(a1) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v43 = &v23[*(v21 + 44)];
  *v43 = a1;
  *(v43 + 1) = v44;
  *(v43 + 2) = v45;
  *(v43 + 3) = v46;
  *(v43 + 4) = v47;
  v43[40] = 0;
  v98 = a6;
  sub_1007CE6A4();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10011C0F0(v23, v26, &qword_100CD90D8);
  memcpy(&v26[*(v24 + 36)], __src, 0x70uLL);
  static AccessibilityChildBehavior.ignore.getter();
  v48 = sub_1007CEA30();
  View.accessibilityElement(children:)();
  (*(v17 + 8))(v19, v94);
  sub_1000180EC(v26, &qword_100CD90E0);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v49);
  v50._countAndFlagsBits = v106;
  v50._object = v105;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v50);
  v51._countAndFlagsBits = 8250;
  v51._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v51);
  v52._countAndFlagsBits = v107;
  v53 = v104;
  v52._object = v104;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v52);
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v54);
  LocalizedStringKey.init(stringInterpolation:)();
  v108 = v24;
  v109 = v48;
  swift_getOpaqueTypeConformance2();
  v55 = v95;
  v56 = v97;
  View.accessibilityLabel(_:)();

  (*(v96 + 8))(v28, v56);
  v57 = v98 + *(type metadata accessor for WindDataTableView(0) + 36);
  v58 = type metadata accessor for WindComponentViewModel();
  v59 = sub_1002F563C(*(v57 + *(v58 + 72)));
  v61 = v59;
  v63 = v62;
  v65 = v64;
  v66 = v105;
  v67 = v107;
  v68 = v106;
  if (!v60)
  {

    sub_1001A6184(v68, v66);
    sub_1001A6184(v61, 0);
    v70 = v101;
LABEL_17:
    v75 = v88;
    Divider.init()();
    v76 = v90;
    static DividerStyle<>.primary.getter();
    sub_1007CEC00(&qword_100CA7298, &type metadata accessor for Divider);
    sub_1007CEC00(&qword_100CA72A0, &type metadata accessor for PrimaryDividerStyle);
    v77 = v86;
    v78 = v91;
    v79 = v93;
    View.dividerStyle<A>(_:)();
    (*(v92 + 8))(v76, v79);
    (*(v89 + 8))(v75, v78);
    v74 = v100;
    (*(v87 + 32))(v70, v77, v100);
    v73 = 0;
    goto LABEL_18;
  }

  v69 = v59 == v106 && v60 == v105;
  v70 = v101;
  if (!v69 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    goto LABEL_17;
  }

  if (v63 == v67 && v65 == v53)
  {
  }

  else
  {
    v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v72 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v73 = 1;
  v74 = v100;
LABEL_18:
  sub_10001B350(v70, v73, 1, v74);
  v80 = v99;
  sub_1000302D8(v55, v99, &qword_100CD90F0);
  v81 = v102;
  sub_1000302D8(v70, v102, &qword_100CB6FB8);
  v82 = v103;
  sub_1000302D8(v80, v103, &qword_100CD90F0);
  v83 = sub_10022C350(&qword_100CD9130);
  sub_1000302D8(v81, v82 + *(v83 + 48), &qword_100CB6FB8);
  sub_1000180EC(v70, &qword_100CB6FB8);
  sub_1000180EC(v55, &qword_100CD90F0);
  sub_1000180EC(v81, &qword_100CB6FB8);
  return sub_1000180EC(v80, &qword_100CD90F0);
}