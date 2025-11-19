void sub_1000ACA44()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC7Measure11LabelRender_labelLock;
    v2 = Strong;
    swift_beginAccess();
    os_unfair_lock_lock(&v2[v1]);
    v2[OBJC_IVAR____TtC7Measure11LabelRender__visibleForCapture] = 0;
    os_unfair_lock_unlock(&v2[v1]);
    swift_endAccess();
  }
}

unint64_t sub_1000ACADC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C19D8(*a1);
  *a2 = result;
  return result;
}

char *sub_1000ACB60(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, unint64_t a7, int a8, double a9, double a10, void *a11)
{
  v12 = v11;
  v142 = a8;
  v135 = a7;
  v140 = a6;
  v153 = a5;
  v138 = a4;
  v137 = a3;
  v136 = a2;
  v139 = a11;
  ObjectType = swift_getObjectType();
  v148 = type metadata accessor for DispatchWorkItemFlags();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v145 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for DispatchQoS();
  v144 = *(v146 - 8);
  __chkstk_darwin(v146);
  v143 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11[OBJC_IVAR____TtC7Measure11LabelRender_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = &v11[OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 13) = 0;
  v18[21] = 1;
  v19 = &v11[OBJC_IVAR____TtC7Measure11LabelRender_labelSizeAdjustment];
  *v19 = 0;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *(v19 + 12) = 0;
  v11[OBJC_IVAR____TtC7Measure11LabelRender_inBounds] = 0;
  v20 = OBJC_IVAR____TtC7Measure11LabelRender__input;
  KeyPath = swift_getKeyPath();
  v22 = sub_10000F974(&unk_1004A72D0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v23 = qword_1004D5058;
  v24 = *(v22 + 272);
  swift_retain_n();
  *&v12[v20] = v24(KeyPath, v23);
  v25 = OBJC_IVAR____TtC7Measure11LabelRender__appState;
  v26 = swift_getKeyPath();
  v27 = *(sub_10000F974(&unk_1004A1940) + 272);

  *&v12[v25] = v27(v26, v23);
  v28 = OBJC_IVAR____TtC7Measure11LabelRender__unitState;
  v29 = swift_getKeyPath();
  v30 = *(sub_10000F974(&unk_1004A72E0) + 272);

  *&v12[v28] = v30(v29, v23);
  v31 = OBJC_IVAR____TtC7Measure11LabelRender__orientationState;
  v32 = swift_getKeyPath();
  v33 = *(sub_10000F974(&unk_1004A4910) + 272);

  *&v12[v31] = v33(v32, v23);
  v34 = OBJC_IVAR____TtC7Measure11LabelRender__render;
  v35 = swift_getKeyPath();
  v36 = *(sub_10000F974(&qword_1004A72F0) + 272);

  *&v12[v34] = v36(v35, v23);
  v37 = OBJC_IVAR____TtC7Measure11LabelRender__pointMove;
  v38 = swift_getKeyPath();
  v39 = sub_10000F974(&qword_1004A72F8);
  *&v12[v37] = (*(v39 + 272))(v38, v23);
  v40 = OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha] = 0x3FF0000000000000;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_labelLock] = 0;
  v41 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_snapFrom];
  sub_1000C1084(&v156);
  v42 = v159;
  v44 = v158;
  v43 = v159;
  *(v41 + 2) = v158;
  *(v41 + 3) = v42;
  v45 = v163;
  v47 = v162;
  v46 = v163;
  *(v41 + 6) = v162;
  *(v41 + 7) = v45;
  v48 = v161;
  v49 = v160;
  v50 = v161;
  *(v41 + 4) = v160;
  *(v41 + 5) = v48;
  v51 = v157;
  v52 = v156;
  v53 = v157;
  *v41 = v156;
  *(v41 + 1) = v51;
  v41[128] = v164;
  v54 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_snapTo];
  *(v54 + 2) = v44;
  *(v54 + 3) = v43;
  *v54 = v52;
  *(v54 + 1) = v53;
  v54[128] = v164;
  *(v54 + 6) = v47;
  *(v54 + 7) = v46;
  *(v54 + 4) = v49;
  *(v54 + 5) = v50;
  v55 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_latestLineEnds];
  v57 = matrix_identity_float4x4.columns[1];
  *v152 = matrix_identity_float4x4.columns[0];
  v56 = *v152;
  v151 = v57;
  v59 = matrix_identity_float4x4.columns[3];
  v150 = matrix_identity_float4x4.columns[2];
  v58 = v150;
  v149 = v59;
  *v55 = *v152;
  v55[1] = v57;
  v55[2] = v58;
  v55[3] = v59;
  v55[4] = v56;
  v55[5] = v57;
  v55[6] = v58;
  v55[7] = v59;
  v60 = OBJC_IVAR____TtC7Measure11LabelRender__pillToPlatterAnimationState;
  v61 = swift_getKeyPath();
  v62 = sub_10000F974(&unk_1004A7300);
  *&v12[v60] = (*(v62 + 272))(v61, v23);
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_kOcclusionAlpha] = 0x3FE0000000000000;
  v12[OBJC_IVAR____TtC7Measure11LabelRender_isOccluded] = 0;
  v63 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_screenPoint];
  *v63 = 0;
  *(v63 + 1) = 0;
  v63[16] = 1;
  v12[OBJC_IVAR____TtC7Measure11LabelRender__visibleForCapture] = 0;
  v64 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_captureActionKey];
  strcpy(&v12[OBJC_IVAR____TtC7Measure11LabelRender_captureActionKey], "captureAction");
  *(v64 + 7) = -4864;
  v65 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_attributedText];
  sub_10019F9DC();
  *v65 = 0;
  v65[1] = 0xE000000000000000;
  v65[2] = v66;
  v65[3] = 0;
  v12[OBJC_IVAR____TtC7Measure11LabelRender_movesAlongLine] = 1;
  v67 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_speakableString];
  *v67 = 0;
  v67[1] = 0xE000000000000000;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_roundedMeasurementInMeters] = 0;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_measurement] = 0;
  v12[OBJC_IVAR____TtC7Measure11LabelRender_capturing] = 0;
  v12[OBJC_IVAR____TtC7Measure11LabelRender_hideForMovePoint] = 0;
  v68 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_labelSize];
  *v68 = 0;
  v68[1] = 0;
  v12[OBJC_IVAR____TtC7Measure11LabelRender_selectionState] = 0;
  v12[OBJC_IVAR____TtC7Measure11LabelRender_chevronOnLeft] = 0;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel] = 0;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_timer] = 0;
  v69 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_center];
  v70 = *v152;
  v71 = v151;
  *v69 = *v152;
  v69[1] = v71;
  v72 = v150;
  v73 = v149;
  v69[2] = v150;
  v69[3] = v73;
  v74 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_end1];
  *v74 = v70;
  v74[1] = v71;
  v74[2] = v72;
  v74[3] = v73;
  v75 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_end2];
  *v75 = v70;
  v75[1] = v71;
  v75[2] = v72;
  v75[3] = v73;
  v76 = OBJC_IVAR____TtC7Measure11LabelRender_snapTimestamp;
  v77 = type metadata accessor for Date();
  v78 = *(*(v77 - 8) + 56);
  v78(&v12[v76], 1, 1, v77);
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_placingLabelDesiredOffset] = 0;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_screenAngleOffset] = 0;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_checkAngleOffset] = 0;
  v79 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea];
  *v79 = 0u;
  v79[1] = 0u;
  v12[OBJC_IVAR____TtC7Measure11LabelRender_refined] = 0;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_labelZOffset] = 0;
  v80 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_viewBounds];
  *v80 = 0;
  *(v80 + 1) = 0;
  v80[16] = 1;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_lastPositionsOnLine] = _swiftEmptyArrayStorage;
  v81 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_lastTransform];
  v82 = v151;
  *v81 = *v152;
  v81[1] = v82;
  v83 = v149;
  v81[2] = v150;
  v81[3] = v83;
  v84 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_currentAnimation];
  *v84 = 0;
  *(v84 + 1) = 0;
  *(v84 + 1) = xmmword_1003DA910;
  *(v84 + 8) = 0;
  v78(&v12[OBJC_IVAR____TtC7Measure11LabelRender_occlusionResetTime], 1, 1, v77);
  v85 = OBJC_IVAR____TtC7Measure11LabelRender_activityPresentingViewController;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_activityPresentingViewController] = 0;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_historyPressedPublisher] = 0;
  v12[OBJC_IVAR____TtC7Measure11LabelRender_wasHidden] = 0;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_mainView] = a1;
  v86 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_measurementID];
  v87 = v137;
  *v86 = v136;
  v86[1] = v87;
  v88 = v138;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_sceneView] = v138;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_state] = v153;
  v89 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_editViewBounds];
  *v89 = a9;
  v89[1] = a10;
  v90 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties];
  *v90 = xmmword_1003D9040;
  *(v90 + 1) = 0u;
  *(v90 + 2) = 0u;
  *(v90 + 3) = 0u;
  *(v90 + 8) = 0xE000000000000000;
  v91 = v139;
  *&v12[v85] = v139;
  v92 = objc_allocWithZone(type metadata accessor for TouchableSpriteNode());
  v152[0] = a1;
  v150.i64[0] = v88;
  v151.i64[0] = v91;
  v93 = [v92 init];
  v94 = OBJC_IVAR____TtC7Measure11LabelRender_labelNode;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_labelNode] = v93;
  if (qword_1004A0590 != -1)
  {
    swift_once();
  }

  v95 = [objc_allocWithZone(SKSpriteNode) initWithColor:qword_1004D5108 size:{0.0, 0.0}];
  v96 = OBJC_IVAR____TtC7Measure11LabelRender_labelContainer;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_labelContainer] = v95;
  [v95 setBlendMode:0];
  if (qword_1004D4FB0)
  {
    [*&v12[v96] setShader:?];
  }

  [*&v12[v94] setAlpha:{*&v12[v40], v135}];
  v97 = String._bridgeToObjectiveC()();
  v98 = [objc_opt_self() labelNodeWithText:v97];

  v99 = OBJC_IVAR____TtC7Measure11LabelRender_labelText;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_labelText] = v98;
  v100 = objc_allocWithZone(NSAttributedString);
  v101 = v98;
  v102 = String._bridgeToObjectiveC()();
  v103 = [v100 initWithString:v102];

  [v101 setAttributedText:v103];
  v104 = objc_allocWithZone(SKSpriteNode);
  v105 = String._bridgeToObjectiveC()();
  v106 = [v104 initWithImageNamed:v105];

  v107 = OBJC_IVAR____TtC7Measure11LabelRender_labelChevron;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_labelChevron] = v106;
  [v106 setAlpha:0.0];
  v108 = v150.i64[0];
  v109 = [v150.i64[0] overlaySKScene];
  if (v109)
  {
    v110 = v109;
    [v109 addChild:*&v12[v94]];
  }

  [*&v12[v94] addChild:*&v12[v96]];
  [*&v12[v94] addChild:*&v12[v99]];
  [*&v12[v96] addChild:*&v12[v107]];
  [*&v12[v99] setHorizontalAlignmentMode:0];
  [*&v12[v99] setVerticalAlignmentMode:1];
  if (qword_1004A0570 != -1)
  {
    swift_once();
  }

  v111 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:qword_1004D50E8];
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_labelFontMetrics] = v111;
  [*&v12[v99] setUserInteractionEnabled:0];
  [*&v12[v99] setBlendMode:0];
  [*&v12[v99] setZPosition:1.0];
  v12[OBJC_IVAR____TtC7Measure11LabelRender_labelType] = v140;
  v112 = v142;
  if (v142)
  {
    v113 = 0;
    v114 = 0;
    v115 = 0.0;
  }

  else
  {
    v114 = HIDWORD(v135);
    v115 = *&v135 * *(&v135 + 1);
    v113 = v135;
  }

  v116 = v153;
  *v18 = v113;
  *(v18 + 1) = v114;
  v18[20] = 0;
  *(v18 + 4) = v115;
  v18[21] = v112 & 1;
  v155.receiver = v12;
  v155.super_class = ObjectType;
  v117 = objc_msgSendSuper2(&v155, "init");
  sub_100018630(0, &qword_1004A3F00);
  v118 = v117;
  v119 = static OS_dispatch_queue.main.getter();
  v120 = swift_allocObject();
  *(v120 + 16) = v118;
  *(v120 + 24) = v108;
  aBlock[4] = sub_1000C11E8;
  aBlock[5] = v120;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046C748;
  v121 = _Block_copy(aBlock);
  v122 = v108;

  v123 = v143;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000C1C84(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
  v124 = v145;
  v125 = v148;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v121);

  (*(v147 + 8))(v124, v125);
  (*(v144 + 8))(v123, v146);
  sub_1000AB428(v116);
  v126 = OBJC_IVAR____TtC7Measure11LabelRender_labelNode;
  [*&v118[OBJC_IVAR____TtC7Measure11LabelRender_labelNode] alpha];
  if (v127 != 0.0)
  {
    v128 = [objc_opt_self() fadeAlphaTo:0.0 duration:0.0];
    [*&v118[v126] runAction:v128];
  }

  [*&v118[v126] setUserInteractionEnabled:0];
  *(*&v118[v126] + OBJC_IVAR____TtC7Measure19TouchableSpriteNode_delegate + 8) = &off_10046C638;
  swift_unknownObjectWeakAssign();
  v129 = *&qword_1004D4BA8;
  *&v118[OBJC_IVAR____TtC7Measure11LabelRender_labelZOffset] = qword_1004D4BA8;
  *&qword_1004D4BA8 = v129 + 0.0003;
  v130 = v118;
  sub_1000DB884();

  v131 = swift_allocObject();
  *(v131 + 16) = v130;
  v132 = &v130[OBJC_IVAR____TtC7Measure11LabelRender_labelSizeAdjustment];
  swift_beginAccess();
  v133 = *v132;
  *v132 = sub_1000C11F0;
  *(v132 + 1) = v131;
  *(v132 + 2) = 1;
  *(v132 + 12) = 0;
  sub_1000223C4(v133);

  return v130;
}

void sub_1000ADB94(uint64_t a1, id a2)
{
  [a2 bounds];
  v3 = a1 + OBJC_IVAR____TtC7Measure11LabelRender_viewBounds;
  *v3 = v4;
  *(v3 + 8) = v5;
  *(v3 + 16) = 0;
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 userInterfaceLayoutDirection];

  *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_chevronOnLeft) = v7 == 1;
  if (v7 == 1)
  {
    v8 = *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_labelChevron);

    [v8 setZRotation:3.14159265];
  }
}

uint64_t sub_1000ADC70()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018630(0, &qword_1004A3F00);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1000C0FF4;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046C6A8;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000C1C84(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

id sub_1000ADF64(uint64_t a1)
{
  sub_1000ADFD0();
  v2 = *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel);
  if (v2)
  {
    v3 = v2;
    sub_10009DD4C();
  }

  v4 = *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_labelNode);

  return [v4 removeFromParent];
}

void sub_1000ADFD0()
{
  if (*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_selectionState) - 1 <= 2)
  {
    v1 = v0;
    v2 = OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel;
    v3 = *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel);
    if (v3)
    {
      v4 = v3;
      sub_10009D984();
    }

    sub_1000B567C();
    v5 = *(v1 + v2);
    if (v5)
    {
      v6 = v5;
      sub_10009DD4C();
    }

    *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha) = 0x3FF0000000000000;
    v7 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_state);

    sub_1000AB428(v7);
  }
}

void sub_1000AE08C(char a1, char a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v11 = v10;
  v129 = a9;
  v130 = a10;
  v127 = a7;
  v128 = a8;
  v133 = a5;
  v134 = a6;
  v131 = a3;
  v132 = a4;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v125 = &v114 - v19;
  v20 = sub_10000F974(&unk_1004A3D90);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v114 - v24;
  simd_float4x4.position.getter();
  v126 = v26;
  simd_float4x4.position.getter();
  v28 = vsubq_f32(v126, v27);
  v29 = vmulq_f32(v28, v28);
  v30 = sqrtf(v29.f32[2] + vaddv_f32(*v29.f32));
  if (*(v10 + OBJC_IVAR____TtC7Measure11LabelRender_labelType) != 1)
  {
    sub_1000AC710(v30);
    *(v10 + OBJC_IVAR____TtC7Measure11LabelRender_measurement) = v30;
  }

  v31 = v131;
  v32 = v132;
  v33 = v133;
  v34 = v134;
  if (v30 > 0.00000011921)
  {
    sub_1000AE818();
  }

  if (a1 & 1) != 0 || (a2)
  {
    Date.init()();
    (*(v15 + 56))(v25, 0, 1, v14);
    v36 = OBJC_IVAR____TtC7Measure11LabelRender_snapTimestamp;
    swift_beginAccess();
    sub_1000C1014(v25, v11 + v36);
    swift_endAccess();
    v37 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_end1 + 16);
    v38 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_end1 + 32);
    v39 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_end1 + 48);
    v40 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_end2);
    v41 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_end2 + 16);
    v42 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_end2 + 32);
    v43 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_end2 + 48);
    v135 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_end1);
    v136 = v37;
    v137 = v38;
    v138 = v39;
    v139 = v40;
    v140 = v41;
    v141 = v42;
    v142 = v43;
    sub_1000C10C0(&v135);
    v44 = v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom;
    v45 = v142;
    *(v44 + 96) = v141;
    *(v44 + 112) = v45;
    *(v44 + 128) = v143;
    v46 = v138;
    *(v44 + 32) = v137;
    *(v44 + 48) = v46;
    v47 = v140;
    *(v44 + 64) = v139;
    *(v44 + 80) = v47;
    v48 = v136;
    *v44 = v135;
    *(v44 + 16) = v48;
    v144 = v131;
    v145 = v132;
    v146 = v133;
    v147 = v134;
    v148 = v127;
    v149 = v128;
    v150 = v129;
    v151 = v130;
    sub_1000C10C0(&v144);
    v49 = (v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo);
    v50 = v147;
    v49[2] = v146;
    v49[3] = v50;
    v49[8].n128_u8[0] = v152;
    v51 = v151;
    v49[6] = v150;
    v49[7] = v51;
    v52 = v149;
    v49[4] = v148;
    v49[5] = v52;
    v53 = v145;
    *v49 = v144;
    v49[1] = v53;
  }

  else
  {
    v122 = v34;
    v123 = v33;
    v124 = v32;
    v126 = v31;
    v35 = OBJC_IVAR____TtC7Measure11LabelRender_snapTimestamp;
    swift_beginAccess();
    sub_10006C92C(v10 + v35, v23, &unk_1004A3D90);
    if ((*(v15 + 48))(v23, 1, v14) == 1)
    {
      sub_100018F04(v23, &unk_1004A3D90);
LABEL_13:
      v79 = v11 + OBJC_IVAR____TtC7Measure11LabelRender_center;
      v81 = v123;
      v80 = v124;
      *v79 = v126;
      *(v79 + 16) = v80;
      v82 = v122;
      *(v79 + 32) = v81;
      *(v79 + 48) = v82;
      v83 = (v11 + OBJC_IVAR____TtC7Measure11LabelRender_end1);
      v85 = v131;
      v84 = v132;
      *v83 = v131;
      v83[1] = v84;
      v87 = v133;
      v86 = v134;
      v83[2] = v133;
      v83[3] = v86;
      v88 = (v11 + OBJC_IVAR____TtC7Measure11LabelRender_end2);
      v90 = v127;
      v89 = v128;
      *v88 = v127;
      v88[1] = v89;
      v59 = v129;
      v58 = v130;
      v88[2] = v129;
      v88[3] = v58;
      v54 = (v11 + OBJC_IVAR____TtC7Measure11LabelRender_latestLineEnds);
      *v54 = v85;
      v54[1] = v84;
      v54[2] = v87;
      v54[3] = v86;
      v54[4] = v90;
      v54[5] = v89;
      goto LABEL_14;
    }

    v60 = v125;
    (*(v15 + 32))(v125, v23, v14);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v62 = v61;
    v63 = *(v15 + 8);
    v63(v18, v14);
    v64 = fabs(v62);
    if (v64 > 0.5)
    {
      v63(v60, v14);
      (*(v15 + 56))(v25, 1, 1, v14);
      swift_beginAccess();
      sub_1000C1014(v25, v11 + v35);
      swift_endAccess();
      sub_1000C1084(&v144);
      v65 = (v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom);
      v66 = v147;
      v67 = v146;
      v68 = v147;
      v65[2] = v146;
      v65[3] = v66;
      v69 = v151;
      v70 = v150;
      v71 = v151;
      v65[6] = v150;
      v65[7] = v69;
      v72 = v149;
      v74 = v148;
      v73 = v149;
      v65[4] = v148;
      v65[5] = v72;
      v75 = v145;
      v77 = v144;
      v76 = v145;
      *v65 = v144;
      v65[1] = v75;
      v65[8].n128_u8[0] = v152;
      v78 = (v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo);
      v78[6] = v70;
      v78[7] = v71;
      v78[2] = v67;
      v78[3] = v68;
      v78[4] = v74;
      v78[5] = v73;
      v78[8].n128_u8[0] = v152;
      *v78 = v77;
      v78[1] = v76;
      goto LABEL_13;
    }

    v91 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom + 112);
    v150 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom + 96);
    v151 = v91;
    v152 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom + 128);
    v92 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom + 48);
    v146 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom + 32);
    v147 = v92;
    v93 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom + 80);
    v148 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom + 64);
    v149 = v93;
    v94 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom + 16);
    v144 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom);
    v145 = v94;
    if (sub_1000C10A4(&v144) == 1 || (v95 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo + 112), v141 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo + 96), v142 = v95, v143 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo + 128), v96 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo + 48), v137 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo + 32), v138 = v96, v97 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo + 80), v139 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo + 64), v140 = v97, v98 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo + 16), v135 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo), v136 = v98, sub_1000C10A4(&v135) == 1))
    {
      v63(v60, v14);
    }

    else
    {
      spring(tension:friction:velocity:elapsed:)(400.0, 40.0, 0.0, v64);
      slerp(transform1:transform2:percent:)();
      v126 = v99;
      v123 = v101;
      v124 = v100;
      v122 = v102;
      slerp(transform1:transform2:percent:)();
      v119 = v104;
      v120 = v103;
      v118 = v105;
      v121 = v106;
      sub_1000AE818();
      v116 = v108;
      v117 = v107;
      v114 = v110;
      v115 = v109;
      v63(v60, v14);
      v111 = (v11 + OBJC_IVAR____TtC7Measure11LabelRender_center);
      *v111 = v117;
      v111[1] = v116;
      v111[2] = v115;
      v111[3] = v114;
      v112 = v11 + OBJC_IVAR____TtC7Measure11LabelRender_end1;
      *v112 = v126;
      *(v112 + 16) = v124;
      *(v112 + 32) = v123;
      *(v112 + 48) = v122;
      v113 = (v11 + OBJC_IVAR____TtC7Measure11LabelRender_end2);
      *v113 = v120;
      v113[1] = v119;
      v113[2] = v118;
      v113[3] = v121;
    }
  }

  v54 = (v11 + OBJC_IVAR____TtC7Measure11LabelRender_latestLineEnds);
  v55 = v132;
  *v54 = v131;
  v54[1] = v55;
  v56 = v134;
  v54[2] = v133;
  v54[3] = v56;
  v57 = v128;
  v54[4] = v127;
  v54[5] = v57;
  v59 = v129;
  v58 = v130;
LABEL_14:
  v54[6] = v59;
  v54[7] = v58;
}

uint64_t sub_1000AE818()
{
  simd_float4x4.position.getter();
  v12 = v1;
  simd_float4x4.position.getter();
  v3 = vsubq_f32(v2, v12);
  v4 = vmulq_f32(v3, v3);
  *&v5 = v4.f32[2] + vaddv_f32(*v4.f32);
  *v4.f32 = vrsqrte_f32(v5);
  *v4.f32 = vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32)));
  v11 = vmulq_n_f32(v3, vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32))).f32[0]);
  simd_float4x4.up.getter();
  v7 = vmul_f32(vext_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL), 4uLL), *&vextq_s8(v11, v11, 4uLL));
  if ((1.0 - fabsf(v7.f32[1] + (vmuls_n_f32(*v6.i32, *v11.i32) + v7.f32[0]))) < 0.00000011921)
  {
    v8 = *(**(v0 + OBJC_IVAR____TtC7Measure11LabelRender__render) + 144);

    v8(__src, v9);

    memcpy(__dst, __src, 0x1F8uLL);
    sub_100038ECC(__dst);
    simd_float4x4.forward.getter();
  }

  return createTransform(forward:normal:position:)();
}

id sub_1000AE9F0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v173.i8[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v193 = type metadata accessor for DispatchQoS();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v9 = &v173.i8[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_center + 16];
  v198 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_center];
  v197 = v10;
  v11 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_center + 48];
  v196 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_center + 32];
  v195 = v11;
  v12 = *(**&v1[OBJC_IVAR____TtC7Measure11LabelRender__appState] + 144);

  v12(&v202, v13);

  v14 = &OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData;
  if (BYTE3(v202) == 1)
  {
    v15 = OBJC_IVAR____TtC7Measure11LabelRender_labelNode;
    [*&v1[OBJC_IVAR____TtC7Measure11LabelRender_labelNode] alpha];
    if (v16 != 0.0)
    {
      v17 = [objc_opt_self() fadeAlphaTo:0.0 duration:0.0];
      [*&v2[v15] runAction:v17];
    }

    result = [*&v2[v15] setUserInteractionEnabled:0];
    goto LABEL_95;
  }

  v179 = v4;
  sub_1000B0024();
  v19 = *(**&v1[OBJC_IVAR____TtC7Measure11LabelRender__input] + 144);

  v19(&v202, v20);

  v21 = *(&v203 + 8);
  v22 = *&v204;

  type metadata accessor for MeasureCamera();
  simd_float4x4.position.getter();
  v23 = *(a1 + 48);
  v184 = *(a1 + 32);
  v183 = v23;
  v24 = *(a1 + 80);
  v182 = *(a1 + 64);
  v181 = v24;
  v26 = *(a1 + 160);
  v25 = *(a1 + 176);
  v27 = *(a1 + 192);
  v28 = *(a1 + 208);
  v29 = *(a1 + 240);
  v177 = *(a1 + 224);
  v176 = v29;
  v30 = *(a1 + 272);
  v175 = *(a1 + 256);
  v174 = v30;
  v31 = *(a1 + 336);
  v188 = *(a1 + 320);
  v187 = v31;
  v32 = *(a1 + 368);
  v186 = *(a1 + 352);
  v185 = v32;
  v194 = v26;
  v191 = v25;
  v190 = v27;
  v189 = v28;
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  SCNVector3.init(_:)();
  v34 = v33;
  v200 = __PAIR64__(v36, v35);
  v201 = v33;
  v37 = &v1[OBJC_IVAR____TtC7Measure11LabelRender_end2];
  simd_float4x4.position.getter();
  v180 = v38;
  static MeasureCamera.viewSpacePoint(fromWorldSpace:view:)();
  if (v39 >= 0.0)
  {
    simd_float4x4.position.getter();
  }

  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  SCNVector3.init(_:)();
  v178 = v5;
  - infix(_:_:)();
  v42 = atan2f(-v40, -v41);
  v43 = OBJC_IVAR____TtC7Measure11LabelRender_state;
  v44 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_state];
  if (v44 <= 7 && ((1 << v44) & 0x98) != 0 || (v1[OBJC_IVAR____TtC7Measure11LabelRender_capturing] & 1) != 0 || [objc_opt_self() jasperAvailable] && v1[OBJC_IVAR____TtC7Measure11LabelRender_movesAlongLine] == 1)
  {
    SIMD3<>.init(_:)();
    sub_1000B0DE4(v45);
    SCNVector3.init(_:)();
    += infix(_:_:)();
  }

  v47 = *&v1[v43];
  if ((v47 > 7 || ((1 << v47) & 0x98) == 0) && (v1[OBJC_IVAR____TtC7Measure11LabelRender_capturing] & 1) == 0 && [objc_opt_self() jasperAvailable])
  {
    v68 = [objc_opt_self() standardUserDefaults];
    v69 = [v68 isLabelOcclusionEnabled];

    if (v69)
    {
      v14 = &OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData;
      if (v2[OBJC_IVAR____TtC7Measure11LabelRender_movesAlongLine] == 1)
      {
        if (vaddv_f32(vmul_f32(*&v2[OBJC_IVAR____TtC7Measure11LabelRender_placingLabelDesiredOffset], *&v2[OBJC_IVAR____TtC7Measure11LabelRender_placingLabelDesiredOffset])) >= 0.00000011921)
        {
          v46.n128_u64[0] = v200;
          v198 = v46;
          static MeasureCamera.unprojectPoint(_:viewProjectionInv:viewportSize:)();
          v180 = v125;
          static MeasureCamera.unprojectPoint(_:viewProjectionInv:viewportSize:)();
          v177 = v126;
          v127 = &v2[OBJC_IVAR____TtC7Measure11LabelRender_end1];
          v128 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1 + 16];
          v129 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1 + 32];
          v130 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1 + 48];
          v198 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1];
          v197 = v128;
          v196 = v129;
          v195 = v130;
          simd_float4x4.position.getter();
          v176 = v131;
          v132 = v37[1];
          v133 = v37[2];
          v134 = v37[3];
          v184 = *v37;
          v183 = v132;
          v182 = v133;
          v181 = v134;
          simd_float4x4.position.getter();
          lineIntersection(line1P1:line1P2:line2P1:line2P2:)();
          v137 = vdupq_lane_s64(__SPAIR64__(v136, v135), 0);
          v138.i32[0] = vmovn_s32(vcgtq_f32(xmmword_1003DA920, v137)).u32[0];
          v138.i32[1] = vmovn_s32(vcgtq_f32(v137, xmmword_1003DA920)).i32[1];
          if (vminv_u16(v138))
          {
            sub_1000AE818();
            v198 = v139;
            v197 = v140;
            v196 = v141;
            v195 = v142;
            simd_float4x4.position.getter();
            v184 = v143;
            v144 = v127[1];
            v183 = *v127;
            v182 = v144;
            v145 = v127[3];
            v181 = v127[2];
            v180 = v145;
            simd_float4x4.position.getter();
            v147 = vsubq_f32(v184, v146);
            v173 = vmulq_f32(v147, v147);
            v148 = v37[1];
            v177 = *v37;
            v176 = v148;
            v149 = v37[3];
            v175 = v37[2];
            v174 = v149;
            simd_float4x4.position.getter();
            v151 = vsubq_f32(v184, v150);
            v152 = vmulq_f32(v151, v151);
            *v152.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v173, v173, 8uLL), *&vextq_s8(v152, v152, 8uLL)), vadd_f32(vzip1_s32(*v173.i8, *v152.i8), vzip2_s32(*v173.i8, *v152.i8))));
            if (vcgt_f32(vdup_lane_s32(*v152.i8, 1), *v152.i8).u8[0])
            {
              v153 = -1;
            }

            else
            {
              v153 = 0;
            }

            v154 = vdupq_n_s32(v153);
            v184 = vbslq_s8(v154, v183, v177);
            v183 = vbslq_s8(v154, v182, v176);
            v182 = vbslq_s8(v154, v181, v175);
            v181 = vbslq_s8(v154, v180, v174);
            v72 = 1;
          }

          else
          {
            v72 = 0;
          }

          v14 = &OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData;
        }

        else
        {
          sub_1000B0F0C();
          if (v70 & 1) != 0 || (SIMD2<>.init(_:)(), SIMD2<>.init(_:)(), clipLineToRect(rectOrigin:rectSize:lineP1:lineP2:)(), (v71))
          {
            v72 = 0;
            v73 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1 + 16];
            v198 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1];
            v197 = v73;
            v74 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1 + 48];
            v196 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1 + 32];
            v195 = v74;
            v75 = v37[1];
            v184 = *v37;
            v183 = v75;
            v76 = v37[3];
            v182 = v37[2];
            v181 = v76;
          }

          else
          {
            v161 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1 + 16];
            v198 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1];
            v197 = v161;
            v162 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1 + 48];
            v196 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1 + 32];
            v195 = v162;
            sub_1000B124C();
            simd_float4x4.translated(to:)();
            v198 = v163;
            v197 = v164;
            v196 = v165;
            v195 = v166;
            v167 = v37[1];
            v184 = *v37;
            v183 = v167;
            v168 = v37[3];
            v182 = v37[2];
            v181 = v168;
            sub_1000B124C();
            simd_float4x4.translated(to:)();
            v184 = v169;
            v183 = v170;
            v182 = v171;
            v181 = v172;
            v72 = 0;
          }
        }

        ariadne_trace(_:_:_:_:_:)();
        sub_1000B1378(a1, v72, v198, v197, v196, v195, v184, v183, v182, v181);
        v198 = v155;
        v197 = v156;
        v196 = v157;
        v195 = v158;
        ariadne_trace(_:_:_:_:_:)();
        simd_float4x4.position.getter();
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        SCNVector3.init(_:)();
        v200 = __PAIR64__(v159, v46.n128_u32[0]);
        v201 = v160;
      }
    }

    else
    {
      v14 = &OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData;
    }
  }

  v46.n128_u64[0] = v200;
  v194 = v46;
  sub_1000B124C();
  v191 = v48;
  simd_float4x4.position.getter();
  v50 = vsubq_f32(v49, v191);
  v51 = vmulq_f32(v50, v50);
  v52 = sqrtf(v51.f32[2] + vaddv_f32(*v51.f32));
  v53 = ((1.0 / ((v52 * 1.2) + 0.7)) + 0.5);
  v54 = 1.0;
  if ((*&v53 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v54 = ((1.0 / ((v52 * 1.2) + 0.7)) + 0.5);
  }

  if ((~*&v53 & 0x7FF0000000000000) != 0)
  {
    v55 = ((1.0 / ((v52 * 1.2) + 0.7)) + 0.5);
  }

  else
  {
    v55 = v54;
  }

  v56 = OBJC_IVAR____TtC7Measure11LabelRender_inBounds;
  v2[OBJC_IVAR____TtC7Measure11LabelRender_inBounds] = 0;
  v57 = objc_opt_self();
  if ([v57 jasperAvailable])
  {
    v58 = &v2[OBJC_IVAR____TtC7Measure11LabelRender_screenPoint];
    *v58 = vcvtq_f64_f32(v194.n128_u64[0]);
    LOBYTE(v58[1].f64[0]) = 0;
    if (v34 < 1.0)
    {
      if (v2[OBJC_IVAR____TtC7Measure11LabelRender_selectionState] && *&v2[v43] != 3 && swift_unknownObjectWeakLoadStrong())
      {
        sub_1000C5964(*&v2[OBJC_IVAR____TtC7Measure11LabelRender_measurementID], *&v2[OBJC_IVAR____TtC7Measure11LabelRender_measurementID + 8], 0.0, 0.0, 0.0, 0.0);
        swift_unknownObjectRelease();
      }

      goto LABEL_32;
    }
  }

  else if ([*&v2[OBJC_IVAR____TtC7Measure11LabelRender_labelNode] isHidden])
  {
    if (v34 < 1.0)
    {
      v59 = OBJC_IVAR____TtC7Measure11LabelRender_selectionState;
      if (v2[OBJC_IVAR____TtC7Measure11LabelRender_selectionState])
      {
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          sub_1000C5964(*&v2[OBJC_IVAR____TtC7Measure11LabelRender_measurementID], *&v2[OBJC_IVAR____TtC7Measure11LabelRender_measurementID + 8], 0.0, 0.0, 0.0, 0.0);
          result = swift_unknownObjectRelease();
        }

        if (v2[v59] == 2)
        {
          goto LABEL_95;
        }
      }

      goto LABEL_32;
    }
  }

  else if (v34 < 1.0)
  {
    goto LABEL_32;
  }

  if ((v2[OBJC_IVAR____TtC7Measure11LabelRender_selectionState] | 2) != 3)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000C5964(*&v2[OBJC_IVAR____TtC7Measure11LabelRender_measurementID], *&v2[OBJC_IVAR____TtC7Measure11LabelRender_measurementID + 8], 0.0, 0.0, 0.0, 0.0);
      swift_unknownObjectRelease();
    }

    v113 = &OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData;
    [*&v2[OBJC_IVAR____TtC7Measure11LabelRender_labelNode] setHidden:1];
    goto LABEL_81;
  }

LABEL_32:
  if ([v57 jasperAvailable])
  {
    v60 = OBJC_IVAR____TtC7Measure11LabelRender_labelLock;
    swift_beginAccess();
    os_unfair_lock_lock(&v2[v60]);
    v61 = v2[OBJC_IVAR____TtC7Measure11LabelRender__visibleForCapture];
    os_unfair_lock_unlock(&v2[v60]);
    swift_endAccess();
    v62 = &OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData;
    if (v61)
    {
      goto LABEL_39;
    }

    v63 = sub_1000B2228();
    if (v63)
    {
      goto LABEL_38;
    }

LABEL_37:
    if (v2[OBJC_IVAR____TtC7Measure11LabelRender_selectionState])
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v63 = sub_1000B2228();
  v62 = &OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData;
  if (!v63)
  {
    goto LABEL_37;
  }

LABEL_38:
  [*&v2[v62[31]] setHidden:v63];
LABEL_39:
  sub_1000AC368();
  if ((v2[OBJC_IVAR____TtC7Measure11LabelRender_capturing] & 1) == 0)
  {
    [*&v2[OBJC_IVAR____TtC7Measure11LabelRender_labelContainer] size];
    v65 = v55 * v64 * 0.5;
    if (v22 > v65)
    {
      v65 = v22;
    }

    v66 = vsub_f32(v194.n128_u64[0], v21);
    v67 = vaddv_f32(vmul_f32(v66, v66)) < (v65 * v65) && *&v2[v43] != 1;
    v2[v56] = v67;
  }

  v77 = v194.n128_f32[1];
  sub_1000B22A4(-v42);
  v79 = fabsf(v78);
  v80 = Float.piDiv2.unsafeMutableAddressor();
  v81 = *v80 * 0.1;
  if ((*v80 + v81) < v79)
  {
    v82 = 1078530010;
LABEL_61:
    *&v2[OBJC_IVAR____TtC7Measure11LabelRender_screenAngleOffset] = v82;
    goto LABEL_62;
  }

  v82 = 0;
  if (v79 < (*v80 - v81))
  {
    goto LABEL_61;
  }

LABEL_62:
  v83 = v194.n128_f32[0];
  v84 = v77;
  v85 = (*&v2[OBJC_IVAR____TtC7Measure11LabelRender_screenAngleOffset] - v42);
  v86 = v62[31];
  [*&v2[v86] setZRotation:v85];
  [*&v2[v86] setScale:v55];
  v87 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_labelText];
  v88 = objc_opt_self();
  v89 = v87;
  v90 = [v88 mainScreen];
  [v90 scale];
  v92 = v91;

  [v89 setScale:1.0 / v92];
  if ((v2[OBJC_IVAR____TtC7Measure11LabelRender_viewBounds + 16] & 1) == 0)
  {
    [*&v2[v86] setPosition:{v83, *&v2[OBJC_IVAR____TtC7Measure11LabelRender_viewBounds + 8] - v84}];
  }

  sub_1000B2428(v52);
  v93 = 0.0;
  if (v2[v56])
  {
    v94 = 0.0;
  }

  else
  {
    [*&v2[v86] alpha];
    v94 = 0.0;
    if (v95 >= 0.5)
    {
      [*&v2[OBJC_IVAR____TtC7Measure11LabelRender_labelContainer] size];
      static CGSize.* infix(_:_:)();
      v93 = v96;
      v94 = v97;
    }
  }

  v98 = OBJC_IVAR____TtC7Measure11LabelRender_selectionState;
  if (!v2[OBJC_IVAR____TtC7Measure11LabelRender_selectionState] && swift_unknownObjectWeakLoadStrong())
  {
    sub_1000C5964(*&v2[OBJC_IVAR____TtC7Measure11LabelRender_measurementID], *&v2[OBJC_IVAR____TtC7Measure11LabelRender_measurementID + 8], v93, v94, v83, v84);
    swift_unknownObjectRelease();
  }

  v99 = &v2[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties];
  *v99 = -v85;
  v99[1] = v55;
  v99[2] = v83;
  v99[3] = v84;
  v100 = OBJC_IVAR____TtC7Measure11LabelRender_labelContainer;
  [*&v2[OBJC_IVAR____TtC7Measure11LabelRender_labelContainer] size];
  *(v99 + 5) = v101;
  *(v99 + 6) = v102;
  [*&v2[v100] size];
  v99[4] = v103 * 0.5;
  v104 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_attributedText + 8];
  v99[7] = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_attributedText];
  *(v99 + 8) = v104;

  if ((v2[v98] | 2) == 3)
  {
    v105 = *(v99 + 2);
    v205 = *(v99 + 3);
    v206 = *(v99 + 8);
    v106 = *v99;
    v203 = *(v99 + 1);
    v204 = v105;
    v202 = v106;
    sub_100018630(0, &qword_1004A3F00);
    sub_10009F898(&v202, aBlock);
    v107 = static OS_dispatch_queue.main.getter();
    v108 = swift_allocObject();
    v109 = v202;
    *(v108 + 40) = v203;
    *(v108 + 56) = v204;
    *(v108 + 72) = v205;
    *(v108 + 16) = v2;
    *(v108 + 88) = v206;
    *(v108 + 24) = v109;
    aBlock[4] = sub_1000C1270;
    aBlock[5] = v108;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_10046C7E8;
    v110 = _Block_copy(aBlock);
    v111 = v2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000C1C84(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80);
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
    v112 = v179;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v110);

    (*(v178 + 8))(v7, v112);
    (*(v192 + 8))(v9, v193);
  }

  v14 = &OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData;
  v113 = &OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData;
  if ((v2[v56] & 1) == 0)
  {
    v207.x = v83;
    v207.y = v84;
    if (CGRectContainsPoint(*&v2[OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea], v207) && v2[OBJC_IVAR____TtC7Measure11LabelRender_refined] == 1 && swift_unknownObjectWeakLoadStrong())
    {
      sub_1000C5AD8();
      swift_unknownObjectRelease();
    }
  }

LABEL_81:
  if (!v2[OBJC_IVAR____TtC7Measure11LabelRender_selectionState] && (v2[OBJC_IVAR____TtC7Measure11LabelRender_capturing] & 1) == 0)
  {
    v114 = 0.0;
    if ((v2[v56] & 1) == 0)
    {
      v114 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha];
    }

    v115 = v113[31];
    [*&v2[v115] alpha];
    if (vabdd_f64(v114, v116) > 0.01)
    {
      v117 = [objc_opt_self() fadeAlphaTo:v114 duration:0.1];
      [*&v2[v115] runAction:v117];
    }
  }

  v118 = &v2[OBJC_IVAR____TtC7Measure11LabelRender_labelSizeAdjustment];
  result = swift_beginAccess();
  if (*v118)
  {
    if (v118[24] == 1)
    {
      (*v118)(result);
      *(v118 + 12) = 256;
    }

    else if ((v118[25] & 1) == 0)
    {
      v119 = *(v118 + 2);
      v120 = v119 != 0;
      v121 = v119 - 1;
      if (!v120)
      {
        __break(1u);
        return result;
      }

      *(v118 + 2) = v121;
      v118[24] = v121 == 0;
    }
  }

  result = swift_endAccess();
LABEL_95:
  v2[v14[50]] = 0;
  v122 = &v2[OBJC_IVAR____TtC7Measure11LabelRender_lastTransform];
  v123 = v197;
  *v122 = v198;
  v122[1] = v123;
  v124 = v195;
  v122[2] = v196;
  v122[3] = v124;
  return result;
}

void sub_1000B0024()
{
  v1 = v0;
  sub_100018630(0, &qword_1004A1930);
  if ((static UIDevice.isIPad()() & 1) == 0)
  {
    v15 = *(**(v0 + OBJC_IVAR____TtC7Measure11LabelRender__orientationState) + 144);

    v15(&v92, v16);

    if ((v92 - 3) >= 2)
    {
      if (v92 != 1)
      {
        v46 = v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea;
        v112.origin.x = 0.0;
        v112.origin.y = 0.0;
        v112.size.width = 0.0;
        v112.size.height = 0.0;
        if (CGRectEqualToRect(*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea), v112))
        {
          if (qword_1004A0528 != -1)
          {
            swift_once();
          }

          v47 = *&qword_1004D5098;
          v48 = OBJC_IVAR____TtC7Measure11LabelRender_labelContainer;
          [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer) frame];
          Width = CGRectGetWidth(v105);
          v50 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_editViewBounds + 8);
          if (qword_1004A05C8 != -1)
          {
            swift_once();
          }

          v51 = *&qword_1004D5140;
          [*(v1 + v48) frame];
          v52 = CGRectGetWidth(v106);
          if (qword_1004A0850 != -1)
          {
            v89 = v52;
            swift_once();
            v52 = v89;
          }

          if ((*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80) & 1) == 0)
          {
            v53 = v47 + 47.0 + Width * 0.5;
            v54 = v50 - v53 - v51 + v52 * -0.5;
            v55 = CGRectGetWidth(*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 48));
            *v46 = 0x403E000000000000;
            *(v46 + 8) = v53;
            *(v46 + 16) = v55 + -60.0;
            *(v46 + 24) = v54;
            return;
          }

          goto LABEL_89;
        }

        return;
      }

      if (qword_1004A0528 != -1)
      {
        swift_once();
      }

      v17 = *&qword_1004D5098;
      v33 = OBJC_IVAR____TtC7Measure11LabelRender_labelContainer;
      [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer) frame];
      v19 = CGRectGetWidth(v101);
      v20 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_editViewBounds + 8);
      if (qword_1004A05C8 != -1)
      {
        swift_once();
      }

      v21 = *&qword_1004D5140;
      [*(v1 + v33) frame];
      v22 = CGRectGetWidth(v102);
      if (qword_1004A0850 != -1)
      {
        v88 = v22;
        swift_once();
        v22 = v88;
      }

      v23 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
      if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
      {
        goto LABEL_88;
      }

      v24 = 47.0;
    }

    else
    {
      if (qword_1004A0528 != -1)
      {
        swift_once();
      }

      v17 = *&qword_1004D5098;
      v18 = OBJC_IVAR____TtC7Measure11LabelRender_labelContainer;
      [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer) frame];
      v19 = CGRectGetWidth(v95);
      v20 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_editViewBounds + 8);
      if (qword_1004A05C8 != -1)
      {
        swift_once();
      }

      v21 = *&qword_1004D5140;
      [*(v1 + v18) frame];
      v22 = CGRectGetWidth(v96);
      if (qword_1004A0850 != -1)
      {
        v87 = v22;
        swift_once();
        v22 = v87;
      }

      v23 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
      if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
      {
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
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
        goto LABEL_96;
      }

      v24 = 80.0;
    }

    v34 = v17 + v24 + v19 * 0.5;
    v35 = v20 - v34 - v21 + v22 * -0.5;
    v36 = CGRectGetWidth(*(v23 + 48));
    v37 = v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea;
    *v37 = 0x403E000000000000;
    *(v37 + 8) = v34;
    *(v37 + 16) = v36 + -60.0;
    *(v37 + 24) = v35;
    return;
  }

  v2 = *(**(v0 + OBJC_IVAR____TtC7Measure11LabelRender__pointMove) + 144);

  v2(&v92, v3);

  if ((v93 & 1) == 0)
  {
    v25 = OBJC_IVAR____TtC7Measure11LabelRender_labelContainer;
    [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer) frame];
    CGRectGetWidth(v97);
    [*(v1 + v25) frame];
    CGRectGetWidth(v98);
    static CGPoint.+ infix(_:_:)();
    v27 = v26;
    v29 = v28;
    [*(v1 + v25) frame];
    CGRectGetWidth(v99);
    [*(v1 + v25) frame];
    CGRectGetWidth(v100);
    static CGSize.- infix(_:_:)();
    v30 = (v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea);
    *v30 = v27;
    v30[1] = v29;
    v30[2] = v31;
    v30[3] = v32;
    return;
  }

  v4 = *(**(v0 + OBJC_IVAR____TtC7Measure11LabelRender__orientationState) + 144);

  v4(&v92, v5);

  if (v92 > 2)
  {
    if (v92 != 3)
    {
      if (v92 == 4)
      {
        if (qword_1004A0528 != -1)
        {
          swift_once();
        }

        v38 = *&qword_1004D5098;
        v39 = OBJC_IVAR____TtC7Measure11LabelRender_labelContainer;
        [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer) frame];
        v40 = CGRectGetWidth(v103);
        if (qword_1004A05C8 != -1)
        {
          swift_once();
        }

        v41 = *&qword_1004D5140;
        if (qword_1004A0850 != -1)
        {
          swift_once();
        }

        v42 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
        if ((*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80) & 1) == 0)
        {
          v43 = CGRectGetWidth(*(v42 + 48));
          [*(v1 + v39) frame];
          v44 = CGRectGetWidth(v104);
          if ((*(v42 + 80) & 1) == 0)
          {
            v10 = v43 + -47.0 - (v38 + v38) - v44;
            Height = CGRectGetHeight(*(v42 + 48));
            v14 = (v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea);
            *v14 = v38 + 47.0 + v40 * 0.5;
            v14[1] = v41 + 30.0;
            v13 = Height + -60.0 - v41;
LABEL_46:
            v14[2] = v10;
            v14[3] = v13;
            return;
          }

          goto LABEL_95;
        }

        goto LABEL_91;
      }

      goto LABEL_56;
    }

    if (qword_1004A0850 != -1)
    {
      swift_once();
    }

    v67 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
    if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
    {
      goto LABEL_93;
    }

    v68 = CGRectGetWidth(*(v67 + 48));
    if (qword_1004A0528 == -1)
    {
LABEL_77:
      v76 = *&qword_1004D5098;
      [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer) frame];
      v77 = CGRectGetWidth(v111);
      if (*(v67 + 80))
      {
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        return;
      }

      v78 = v68 + -47.0 - (v76 + v76) - v77;
      v79 = CGRectGetHeight(*(v67 + 48)) + -60.0;
      if (qword_1004A05C8 != -1)
      {
        swift_once();
      }

      v80 = v79 - *&qword_1004D5140;
      v81 = v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea;
      __asm { FMOV            V1.2D, #30.0 }

      *v81 = _Q1;
      *(v81 + 16) = v78;
      *(v81 + 24) = v80;
      return;
    }

LABEL_84:
    swift_once();
    goto LABEL_77;
  }

  if (v92 == 1)
  {
    if (qword_1004A0528 != -1)
    {
      swift_once();
    }

    v66 = *&qword_1004D5098;
    v67 = OBJC_IVAR____TtC7Measure11LabelRender_labelContainer;
    [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer) frame];
    v68 = CGRectGetWidth(v109);
    if (qword_1004A0850 != -1)
    {
      swift_once();
    }

    v69 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
    if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
    {
      goto LABEL_92;
    }

    v70 = CGRectGetWidth(*(v69 + 48));
    if (qword_1004A05C8 == -1)
    {
      if ((*(v69 + 80) & 1) == 0)
      {
LABEL_72:
        v71 = v66 + 47.0 + v68 * 0.5;
        v72 = v70 + -60.0 - *&qword_1004D5140;
        v73 = CGRectGetHeight(*(v69 + 48)) + -47.0 - (v66 + v66);
        [*(v1 + v67) frame];
        v74 = CGRectGetWidth(v110);
        v75 = v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea;
        *v75 = 0x403E000000000000;
        *(v75 + 8) = v71;
        *(v75 + 16) = v72;
        *(v75 + 24) = v73 - v74;
        return;
      }
    }

    else
    {
      v90 = v70;
      swift_once();
      v70 = v90;
      if ((*(v69 + 80) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    __break(1u);
    goto LABEL_84;
  }

  if (v92 == 2)
  {
    if (qword_1004A05C8 != -1)
    {
      swift_once();
    }

    v6 = *&qword_1004D5140;
    if (qword_1004A0850 != -1)
    {
      swift_once();
    }

    v7 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
    if ((*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80) & 1) == 0)
    {
      v8 = CGRectGetWidth(*(v7 + 48));
      if ((*(v7 + 80) & 1) == 0)
      {
        v9 = v6 + 30.0;
        v10 = v8 + -60.0 - v6;
        v11 = CGRectGetHeight(*(v7 + 48)) + -47.0;
        if (qword_1004A0528 != -1)
        {
          swift_once();
        }

        v12 = v11 - (*&qword_1004D5098 + *&qword_1004D5098);
        [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer) frame];
        v13 = v12 - CGRectGetWidth(v94);
        v14 = (v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea);
        *v14 = v9;
        v14[1] = 30.0;
        goto LABEL_46;
      }

      goto LABEL_94;
    }

    goto LABEL_90;
  }

LABEL_56:
  v56 = v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea;
  v113.origin.x = 0.0;
  v113.origin.y = 0.0;
  v113.size.width = 0.0;
  v113.size.height = 0.0;
  if (CGRectEqualToRect(*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea), v113))
  {
    if (qword_1004A0528 != -1)
    {
      swift_once();
    }

    v57 = *&qword_1004D5098;
    v58 = OBJC_IVAR____TtC7Measure11LabelRender_labelContainer;
    [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer) frame];
    v59 = CGRectGetWidth(v107);
    if (qword_1004A0850 != -1)
    {
      swift_once();
    }

    v60 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
    if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
    {
      goto LABEL_97;
    }

    v61 = CGRectGetWidth(*(v60 + 48));
    if (qword_1004A05C8 == -1)
    {
      if ((*(v60 + 80) & 1) == 0)
      {
LABEL_64:
        v62 = v57 + 47.0 + v59 * 0.5;
        v63 = v61 + -60.0 - *&qword_1004D5140;
        v64 = CGRectGetHeight(*(v60 + 48)) + -47.0 - (v57 + v57);
        [*(v1 + v58) frame];
        v65 = CGRectGetWidth(v108);
        *v56 = 0x403E000000000000;
        *(v56 + 8) = v62;
        *(v56 + 16) = v63;
        *(v56 + 24) = v64 - v65;
        return;
      }
    }

    else
    {
      v91 = v61;
      swift_once();
      v61 = v91;
      if ((*(v60 + 80) & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    __break(1u);
    goto LABEL_87;
  }
}

uint64_t sub_1000B0DE4(float32x2_t a1)
{
  v2 = vcvtq_f64_f32(a1);
  y = v2.y;
  result = CGRectContainsPoint(*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea), v2);
  v5 = 0;
  if ((result & 1) == 0)
  {
    result = sub_1000B0F0C();
    if ((v6 & 1) == 0)
    {
      SIMD2<>.init(_:)();
      SIMD2<>.init(_:)();
      result = lineInRect(rectOrigin:rectSize:lineP1:lineP2:)();
      if (result)
      {
        result = clipLineToRect(rectOrigin:rectSize:lineP1:lineP2:)();
        if ((v7 & 1) == 0)
        {
          result = closestPointOnLine(lineP1:lineP2:point:)();
          v9 = vsub_f32(v8, a1);
          v10 = vneg_f32(0x7F0000007FLL);
          v5 = vbsl_s8(vceq_s32(vand_s8(v9, v10), v10), vand_s8(v9, vceqz_s32(vand_s8(v9, 0x7F0000007FLL))), v9);
        }
      }
    }
  }

  *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_placingLabelDesiredOffset) = v5;
  return result;
}

uint64_t sub_1000B0F0C()
{
  simd_float4x4.position.getter();
  simd_float4x4.position.getter();
  type metadata accessor for MeasureCamera();
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v23 = v1;
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v24 = v2;
  v3 = *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_state);
  v5 = v3 == 7 || (v3 - 3) < 2;
  v6 = 30.0;
  if (!v5)
  {
    v6 = 0.0;
  }

  v22 = v6;
  simd_float4x4.forward.getter();
  simd_float4x4.position.getter();
  __asm { FMOV            V6.2S, #1.0 }

  v12 = vcgt_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v23, v23, 8uLL)), _D6);
  if (v12.i8[4])
  {
    if (v12.i8[0])
    {
      return 0;
    }

    static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    v14 = v13;
    v15 = *v24.i8;
  }

  else
  {
    if (v12.i8[0])
    {
      static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    }

    else
    {
      v15 = *v24.i8;
    }

    v14 = *v23.i8;
  }

  *v7.f32 = vsub_f32(v15, v14);
  v16 = vaddv_f32(vmul_f32(*v7.f32, *v7.f32));
  v17 = 1800.0;
  if (!v5)
  {
    v17 = 0.0;
  }

  if (v16 < v17)
  {
    return 0;
  }

  v19 = v7;
  v19.i32[2] = 0;
  v20 = vmulq_f32(v19, v19);
  *&v21 = v20.f32[2] + vaddv_f32(*v20.f32);
  *v20.f32 = vrsqrte_f32(v21);
  *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32)));
  return vadd_f32(v14, vmul_n_f32(vmul_n_f32(*v7.f32, vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32))).f32[0]), v22));
}

uint64_t sub_1000B124C()
{
  type metadata accessor for MeasureCamera();
  static MeasureCamera.unprojectPoint(_:viewProjectionInv:viewportSize:)();
  static MeasureCamera.unprojectPoint(_:viewProjectionInv:viewportSize:)();
  simd_float4x4.position.getter();
  simd_float4x4.position.getter();
  return lineIntersection(line1P1:line1P2:line2P1:line2P2:)();
}

void sub_1000B1378(_OWORD *a1, int a2, __n128 a3, __n128 a4, int8x16_t a5, int8x16_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v168 = a9;
  v169 = a10;
  v166 = a7;
  v167 = a8;
  v181 = a5;
  v182 = a6;
  v179 = a3;
  v180 = a4;
  v178 = type metadata accessor for Date();
  v13 = *(v178 - 8);
  __chkstk_darwin(v178);
  v170 = &v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v171 = &v161 - v16;
  v17 = sub_10000F974(&unk_1004A3D90);
  __chkstk_darwin(v17 - 8);
  v19 = &v161 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v161 - v21;
  __chkstk_darwin(v23);
  v25 = &v161 - v24;
  v26 = v179;
  v27 = v180;
  v28 = v181;
  v29 = v182;
  if ((a2 & 1) == 0)
  {
    sub_1000AE818();
  }

  v184 = v29;
  v185 = v28;
  v186 = v26;
  v187 = v27;
  v30 = *(v10 + OBJC_IVAR____TtC7Measure11LabelRender_state);
  v112 = v30 > 5;
  v31 = (1 << v30) & 0x25;
  if (v112 || v31 == 0)
  {
    (*(v13 + 56))(v25, 1, 1, v178);
    v67 = OBJC_IVAR____TtC7Measure11LabelRender_occlusionResetTime;
    swift_beginAccess();
    sub_1000C1014(v25, v10 + v67);
    swift_endAccess();
    v68 = v10 + OBJC_IVAR____TtC7Measure11LabelRender_currentAnimation;
    *v68 = 0;
    *(v68 + 8) = 0;
    *(v68 + 16) = xmmword_1003DA910;
    *(v68 + 32) = 0;
    *(v10 + OBJC_IVAR____TtC7Measure11LabelRender_lastPositionsOnLine) = _swiftEmptyArrayStorage;

    return;
  }

  v164 = a2;
  v172 = v25;
  v33 = v10 + OBJC_IVAR____TtC7Measure11LabelRender_end2;
  simd_float4x4.position.getter();
  v188 = v34;
  v35 = v10 + OBJC_IVAR____TtC7Measure11LabelRender_end1;
  simd_float4x4.position.getter();
  v183 = v36;
  v37 = v188.f32[2];
  v38 = v36.f32[2];
  v39 = v10;
  v40 = v10 + OBJC_IVAR____TtC7Measure11LabelRender_lastTransform;
  simd_float4x4.position.getter();
  v165 = v41;
  type metadata accessor for MeasureCamera();
  v42 = a1[10];
  v175 = a1[11];
  v176 = v42;
  v43 = a1[12];
  v173 = a1[13];
  v174 = v43;
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v177 = v44;
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v45 = vsub_f32(*v183.f32, *v188.f32);
  v47 = vsub_f32(*v177.f32, v46);
  v48 = (sqrtf(((v38 - v37) * (v38 - v37)) + vaddv_f32(vmul_f32(v45, v45))) / sqrtf(vaddv_f32(vmul_f32(v47, v47)))) * 25.0;
  simd_float4x4.position.getter();
  v177 = v49;
  *&v176 = v35;
  simd_float4x4.position.getter();
  v51 = vsubq_f32(v177, v50);
  v52 = vmulq_f32(v51, v51);
  v53 = sqrtf(v52.f32[2] + vaddv_f32(*v52.f32));
  if (v53 <= v48)
  {
    v61 = v172;
    (*(v13 + 56))(v172, 1, 1, v178);
    v62 = OBJC_IVAR____TtC7Measure11LabelRender_occlusionResetTime;
    swift_beginAccess();
    sub_1000C1014(v61, v39 + v62);
    swift_endAccess();
    v63 = v39 + OBJC_IVAR____TtC7Measure11LabelRender_currentAnimation;
    *v63 = 0;
    *(v63 + 8) = 0;
    *(v63 + 16) = xmmword_1003DA910;
    *(v63 + 32) = 0;
    *(v39 + OBJC_IVAR____TtC7Measure11LabelRender_lastPositionsOnLine) = _swiftEmptyArrayStorage;

    simd_float4x4.position.getter();
    v188 = v64;
    if (qword_1004A04D8 != -1)
    {
      swift_once();
    }

    PublishedValue.wrappedValue.getter();

    memcpy(v190, v189, 0x200uLL);
    v65 = sub_10008D4F0();
    sub_100013C4C(v190);
    if (v65)
    {
      MeasureCore.shared.unsafeMutableAddressor();

      v66 = MeasureCore.isOccluded(_:in:withTolerance:)();

      if (v66)
      {
      }

      else
      {

        v75 = MeasureCore.isOccluded(_:in:withTolerance:)();

        v76 = 1.0;
        if ((v75 & 1) == 0)
        {
LABEL_21:
          *(v39 + OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha) = v76;
          return;
        }
      }
    }

    v76 = 0.5;
    goto LABEL_21;
  }

  v163 = v33;
  *&v175 = v40;
  *&v174 = v19;
  v54 = OBJC_IVAR____TtC7Measure11LabelRender_occlusionResetTime;
  swift_beginAccess();
  sub_10006C92C(v10 + v54, v22, &unk_1004A3D90);
  v55 = v178;
  v56 = *(v13 + 48);
  LODWORD(v173) = v56(v22, 1, v178);
  sub_100018F04(v22, &unk_1004A3D90);
  v177.i64[0] = v10;
  v162 = v54;
  v57 = v10 + v54;
  v58 = v174;
  sub_10006C92C(v57, v174, &unk_1004A3D90);
  if (v56(v58, 1, v55) == 1)
  {
    sub_100018F04(v58, &unk_1004A3D90);
    v59 = v175;
    v60 = v177.i64[0];
    if (v173 != 1)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v69 = v171;
    (*(v13 + 32))(v171, v58, v55);
    v70 = v170;
    Date.init()();
    Date.distance(to:)();
    v72 = v71;
    v73 = *(v13 + 8);
    v73(v70, v55);
    v74 = fabs(v72);
    v59 = v175;
    if (v74 <= 0.65)
    {
      v60 = v177.i64[0];
      if (v74 >= 0.585 && v74 <= 0.65)
      {
        sub_1000C127C(v164 & 1, v179.n128_f64[0], v180.n128_f64[0], *v181.i64, *v182.i64, v166.n128_f64[0], v167.n128_f64[0], v168.n128_f64[0], v169.n128_f64[0], v48);
        v78 = v77;
        v79 = OBJC_IVAR____TtC7Measure11LabelRender_lastPositionsOnLine;
        v80 = *(v60 + OBJC_IVAR____TtC7Measure11LabelRender_lastPositionsOnLine);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v79;
        *(v60 + v79) = v80;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v157 = sub_100067544(0, *(v80 + 2) + 1, 1, v80);
          v82 = v79;
          v80 = v157;
          *(v60 + v79) = v157;
        }

        v84 = *(v80 + 2);
        v83 = *(v80 + 3);
        v85 = v84 + 1;
        if (v84 >= v83 >> 1)
        {
          v182.i64[0] = v84 + 1;
          v158 = v80;
          v159 = v82;
          v160 = sub_100067544((v83 > 1), v84 + 1, 1, v158);
          v85 = v182.i64[0];
          v82 = v159;
          v80 = v160;
        }

        *(v80 + 2) = v85;
        *&v80[4 * v84 + 32] = v78;
        *(v60 + v82) = v80;
      }

      v73(v69, v55);
      if (v173 != 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v73(v69, v55);
      v60 = v177.i64[0];
    }
  }

  v86 = v172;
  Date.init()();
  (*(v13 + 56))(v86, 0, 1, v55);
  v87 = v162;
  swift_beginAccess();
  sub_1000C1014(v86, v60 + v87);
  swift_endAccess();
  v88 = sub_1000B5ACC();
  if ((v88 & 0x100000000) != 0)
  {
    v102 = *(v60 + OBJC_IVAR____TtC7Measure11LabelRender_center + 16);
    v103 = *(v60 + OBJC_IVAR____TtC7Measure11LabelRender_center + 32);
    v104 = *(v60 + OBJC_IVAR____TtC7Measure11LabelRender_center + 48);
    *v59 = *(v60 + OBJC_IVAR____TtC7Measure11LabelRender_center);
    v59[1] = v102;
    v59[2] = v103;
    v59[3] = v104;
LABEL_60:
    *(v60 + OBJC_IVAR____TtC7Measure11LabelRender_lastPositionsOnLine) = _swiftEmptyArrayStorage;

LABEL_61:
    v119 = *v59;
    v120 = v59[1];
    v121 = v59[2];
    v122 = v60;
    v123 = v60 + OBJC_IVAR____TtC7Measure11LabelRender_currentAnimation;
    v124 = *(v60 + OBJC_IVAR____TtC7Measure11LabelRender_currentAnimation + 16);
    if (v124 == 4)
    {
      return;
    }

    v184 = v59[3];
    v185 = v121;
    v186 = v119;
    v187 = v120;
    v125 = *v123;
    v126 = *(v123 + 8);
    v127 = *(&v124 + 1);
    v128 = *(v123 + 24);
    v129 = OBJC_IVAR____TtC7Measure11LabelRender_labelNode;
    [*(v122 + OBJC_IVAR____TtC7Measure11LabelRender_labelNode) alpha];
    if (v124 <= 1u)
    {
      if (v124)
      {
        v132 = (((v128 - *(&v124 + 1)) * (1.0 - powf(1.0 - (v125 / v126), 3.0))) + *(&v124 + 1));
        v137 = v177.i64[0];
LABEL_77:
        if (([*(v137 + v129) hasActions] & 1) == 0)
        {
          *(v137 + OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha) = v132;
        }

        if (v125 >= v126)
        {
          *v123 = 0;
          *(v123 + 8) = 0;
          *(v123 + 16) = xmmword_1003DA910;
          *(v123 + 32) = 0;
        }

        else if (*(v123 + 16) != 4)
        {
          *v123 = v125 + 1;
        }

        return;
      }

      v132 = v130;
LABEL_76:
      v137 = v177.i64[0];
      sub_1000AE818();
      v186 = v147;
      v187 = v148;
      v184 = v150;
      v185 = v149;
      goto LABEL_77;
    }

    if (v124 != 2)
    {
      v132 = (((1.0 - ((1.0 - (v125 / v126)) * (1.0 - (v125 / v126)))) * (v128 - *(&v124 + 1))) + *(&v124 + 1));
      goto LABEL_76;
    }

    if ((v126 + 1) >= 3)
    {
      if (v125 != 0x8000000000000000 || (v126 + 3) >= 2)
      {
        v131.f32[0] = (v126 / 2);
        v188 = v131;
        v133 = 1.0 - ((v125 % (v126 / 2)) / v131.f32[0]);
        if (v125 == v126)
        {
          v133 = 0.0;
        }

        v134 = powf(v133, 3.0);
        v135.f32[0] = v125;
        v183 = v135;
        v184 = vdupq_lane_s32(*&vcgtq_f32(v188, v135), 0);
        v136 = 1.0 - v134;
        v137 = v177.i64[0];
        sub_1000AE818();
        v187 = v138;
        v185 = v139;
        v181 = v141;
        v182 = v140;
        sub_1000AE818();
        v186 = vbslq_s8(v184, v142, v187);
        v187 = vbslq_s8(v184, v143, v185);
        v185 = vbslq_s8(v184, v144, v182);
        v184 = vbslq_s8(v184, v145, v181);
        v146 = v136 * v128;
        if (v183.f32[0] < v188.f32[0])
        {
          v146 = (1.0 - v136) * v127;
        }

        v132 = v146;
        goto LABEL_77;
      }

      goto LABEL_89;
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v89 = vsubq_f32(v188, v183);
  v89.f32[2] = v37 - v38;
  v90 = vmulq_f32(v89, v89);
  *&v91 = v90.f32[2] + vaddv_f32(*v90.f32);
  *v90.f32 = vrsqrte_f32(v91);
  *v90.f32 = vmul_f32(*v90.f32, vrsqrts_f32(v91, vmul_f32(*v90.f32, *v90.f32)));
  v92 = vmulq_n_f32(v89, vmul_f32(*v90.f32, vrsqrts_f32(v91, vmul_f32(*v90.f32, *v90.f32))).f32[0]);
  v93 = vmulq_f32(v92, vsubq_f32(v165, v183));
  v94 = vaddv_f32(*v93.f32);
  v95 = v93.f32[2];
  v96 = *&v88;
  if (*&v88 == -1.0)
  {
    v188 = v92;
    simd_float4x4.position.getter();
    v183 = v97;
    simd_float4x4.position.getter();
    v99 = vmulq_f32(v188, vsubq_f32(v183, v98));
    v100 = v99.f32[2] + vaddv_f32(*v99.f32);
    v101 = 0.5;
  }

  else
  {
    v101 = 1.0;
    v100 = *&v88;
  }

  v105 = v95 + v94;
  v106 = OBJC_IVAR____TtC7Measure11LabelRender_labelNode;
  v60 = v177.i64[0];
  [*(v177.i64[0] + OBJC_IVAR____TtC7Measure11LabelRender_labelNode) alpha];
  v108 = v107;
  *(v60 + OBJC_IVAR____TtC7Measure11LabelRender_isOccluded) = v96 == -1.0;
  if (vabds_f32(v101, v108) < 0.01)
  {
    *(v60 + OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha) = v101;
    v108 = v101;
  }

  v109 = vabds_f32(v100, v105);
  if ((~LODWORD(v109) & 0x7F800000) != 0 || (LODWORD(v109) & 0x7FFFFF) == 0)
  {
    if ((v100 - v105) >= 0.0 && (v100 - v105) <= 0.0 && vabds_f32(v108, v101) <= 0.00000011921)
    {
      v151 = v60 + OBJC_IVAR____TtC7Measure11LabelRender_currentAnimation;
      if (*(v60 + OBJC_IVAR____TtC7Measure11LabelRender_currentAnimation + 16) != 4)
      {
        v152 = v177.i64[0];
        *(v177.i64[0] + OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha) = *(v151 + 24);
        [*(v152 + v106) setAlpha:?];
        sub_1000AE818();
        *v59 = v153;
        v59[1] = v154;
        v59[2] = v155;
        v59[3] = v156;
      }

      *v151 = 0;
      *(v151 + 8) = 0;
      *(v151 + 16) = xmmword_1003DA910;
      *(v151 + 32) = 0;
      v60 = v177.i64[0];
    }

    else
    {
      if (v109 > 0.00000011921)
      {
        v111 = v48 * 6.0;
        if ((v48 * 6.0) < 0.00000011921)
        {
          goto LABEL_88;
        }

        v112 = v109 < 0.00000011921 || v109 > v111;
        if (v112)
        {
          if (v111 > v53)
          {
LABEL_90:
            __break(1u);
            return;
          }

          v117 = 2 * (v109 <= v53);
          if (v111 > v109)
          {
            v117 = 0;
          }
        }

        else
        {
          v117 = 3;
          if (vabds_f32(v108, v101) <= 0.00000011921)
          {
            v117 = 0;
          }
        }
      }

      else
      {
        sub_1000AE818();
        *v59 = v113;
        v59[1] = v114;
        v59[2] = v115;
        v59[3] = v116;
        v117 = 1;
      }

      v118 = v60 + OBJC_IVAR____TtC7Measure11LabelRender_currentAnimation;
      *v118 = xmmword_1003DA930;
      *(v118 + 16) = v117 | (LODWORD(v108) << 32);
      *(v118 + 24) = LODWORD(v101) | (COERCE_UNSIGNED_INT(v105 / v53) << 32);
      *(v118 + 32) = v100 / v53;
    }

    goto LABEL_60;
  }
}

BOOL sub_1000B2228()
{
  if (*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_selectionState))
  {
    return 1;
  }

  v1 = *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_state);
  v2 = v1 == 1 || v1 == 6;
  if (v2 || (*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_hideForMovePoint) & 1) != 0)
  {
    return 1;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_capturing) == 1 && !MeasureObjectState.isCapturable()();
  }
}

uint64_t sub_1000B22A4(float a1)
{
  v3 = *(**(v1 + OBJC_IVAR____TtC7Measure11LabelRender__orientationState) + 144);

  v3(&v7, v4);

  if (v7 > 2)
  {
    if ((v7 - 5) < 2)
    {
      return result;
    }

    if (v7 == 4)
    {
      result = Float.piDiv2.unsafeMutableAddressor();
      v6 = -*result;
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_17;
      }

      result = Float.piDiv2.unsafeMutableAddressor();
      v6 = *result;
    }

    *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_checkAngleOffset) = v6;
    return result;
  }

  if (!v7)
  {
    return result;
  }

  if (v7 == 1)
  {
    *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_checkAngleOffset) = 0;
    return result;
  }

  if (v7 != 2)
  {
LABEL_17:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  sub_100018630(0, &qword_1004A1930);
  result = static UIDevice.isIPad()();
  if (result)
  {
    if (a1 >= 0.0)
    {
      *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_checkAngleOffset) = -1068953638;
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_checkAngleOffset) = 1078530010;
    }
  }

  return result;
}

id sub_1000B2428(float a1)
{
  [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelNode) setZPosition:*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelZOffset) + (a1 * -10.0)];
  [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer) setZPosition:0.0001];
  [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelText) setZPosition:0.0002];
  v2 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelChevron);

  return [v2 setZPosition:0.0001];
}

void sub_1000B24E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel);
  if (v2)
  {
    v4 = v2;
    sub_10009C6D4(a2);
  }
}

id sub_1000B2548()
{
  v1 = OBJC_IVAR____TtC7Measure11LabelRender_labelNode;
  [*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelNode) removeAllActions];
  [*(v0 + v1) setAlpha:1.0];
  v2 = OBJC_IVAR____TtC7Measure11LabelRender_labelLock;
  swift_beginAccess();
  os_unfair_lock_lock((v0 + v2));
  *(v0 + OBJC_IVAR____TtC7Measure11LabelRender__visibleForCapture) = 1;
  os_unfair_lock_unlock((v0 + v2));
  swift_endAccess();
  result = [objc_opt_self() jasperAvailable];
  if (result)
  {
    v4 = [*(v0 + v1) isHidden];
    *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_wasHidden) = v4;
    return [*(v0 + v1) setHidden:0];
  }

  return result;
}

void sub_1000B2630()
{
  if ([objc_opt_self() jasperAvailable])
  {
    [*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelNode) setHidden:*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_wasHidden)];
LABEL_4:
    v1 = *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha);
    goto LABEL_5;
  }

  v1 = 0.0;
  if ((*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_inBounds) & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_5:
  v2 = OBJC_IVAR____TtC7Measure11LabelRender_labelLock;
  swift_beginAccess();
  os_unfair_lock_lock((v0 + v2));
  *(v0 + OBJC_IVAR____TtC7Measure11LabelRender__visibleForCapture) = 0;
  os_unfair_lock_unlock((v0 + v2));
  swift_endAccess();
  v3 = [objc_opt_self() fadeAlphaTo:v1 duration:0.1];
  [*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelNode) runAction:v3];
}

uint64_t type metadata accessor for LabelRender()
{
  result = qword_1004A7200;
  if (!qword_1004A7200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B2A1C()
{
  sub_100065060();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1000B2C18()
{
  sub_1000B567C();
  *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha) = 0x3FF0000000000000;
  v1 = *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_state);

  return sub_1000AB428(v1);
}

void sub_1000B2C60()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Measure11LabelRender_selectionState;
  if (v1[OBJC_IVAR____TtC7Measure11LabelRender_selectionState] != 2)
  {
    return;
  }

  if ([objc_opt_self() jasperAvailable])
  {
    v3 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel];
    if (v3)
    {
      v4 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 48];
      v15 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 32];
      v16 = v4;
      v17 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 64];
      v5 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 16];
      v13 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties];
      v14 = v5;
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      v7 = v3;
      sub_10009F898(&v13, v12);
      v8 = v1;
      sub_10009D0C4(&v13, sub_1000C1218, v6);

LABEL_7:
      sub_10009F9AC(&v13);
    }
  }

  else
  {
    v1[v2] = 3;
    v9 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel];
    if (v9)
    {
      v10 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 48];
      v15 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 32];
      v16 = v10;
      v17 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 64];
      v11 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 16];
      v13 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties];
      v14 = v11;
      v7 = v9;
      sub_10009F898(&v13, v12);
      sub_10009D0C4(&v13, 0, 0);
      goto LABEL_7;
    }
  }

  if (qword_1004A02A8 != -1)
  {
    swift_once();
  }

  v12[0]._countAndFlagsBits = 0;
  v12[0]._object = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v12[0]._countAndFlagsBits = 0xD00000000000001DLL;
  v12[0]._object = 0x8000000100405360;
  String.append(_:)(*&v1[OBJC_IVAR____TtC7Measure11LabelRender_measurementID]);
  Log.default(_:isPrivate:)(v12[0], 0);
}

uint64_t sub_1000B2E88()
{
  if (qword_1004A02A8 != -1)
  {
    swift_once();
  }

  _StringGuts.grow(_:)(39);

  String.append(_:)(*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_measurementID));
  v1._countAndFlagsBits = 0xD000000000000025;
  v1._object = 0x8000000100405330;
  Log.default(_:isPrivate:)(v1, 0);
}

void sub_1000B2F84()
{
  v1 = v0;
  v2 = *(**&v0[OBJC_IVAR____TtC7Measure11LabelRender__appState] + 144);

  v2(v64, v3);

  if ((BYTE3(v64[0]) & 1) == 0 && !v0[OBJC_IVAR____TtC7Measure11LabelRender_selectionState])
  {
    if ([objc_opt_self() jasperAvailable])
    {
      v4 = *(**&v0[OBJC_IVAR____TtC7Measure11LabelRender__pillToPlatterAnimationState] + 144);

      v4(v64, v5);

      v6 = *(*&v64[0] + 16);

      if (v6)
      {
        return;
      }

      sub_100018630(0, &qword_1004A1930);
      v7 = static UIDevice.isIPhone()();
      v8 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_mainView];
      if ((v7 & 1) == 0)
      {
        v43 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_activityPresentingViewController];
        if (v43)
        {
          if (*&v1[OBJC_IVAR____TtC7Measure11LabelRender_historyPressedPublisher])
          {
            v60 = v1[OBJC_IVAR____TtC7Measure11LabelRender_chevronOnLeft];
            v62 = v1[OBJC_IVAR____TtC7Measure11LabelRender_labelType];
            v44 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_measurementID + 8];
            v58 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_measurementID];
            *&v64[0] = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_historyPressedPublisher];
            v45 = v8;

            v46 = v43;
            sub_10000F974(&unk_1004A7520);
            sub_10001D47C(&qword_1004A73C0, &unk_1004A7520);
            v47 = Publisher.eraseToAnyPublisher()();
            v48 = objc_allocWithZone(type metadata accessor for LabelDetailsPlatterWrapper());
            v49 = v45;
            v27 = v46;
            v50 = sub_1000C0174(v49, v62, v1, v60, v58, v44, v27, v48);
            *&v64[0] = v47;
            swift_allocObject();
            swift_unknownObjectWeakInit();
            v29 = v50;
            v51 = Publisher<>.sink(receiveValue:)();

            *&v29[qword_1004A65B0] = v51;

            goto LABEL_14;
          }

LABEL_20:
          __break(1u);
          return;
        }

        goto LABEL_18;
      }

      v9 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_sceneView];
      v10 = v8;
      [v9 bounds];
      v15 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_activityPresentingViewController];
      if (v15)
      {
        v61 = v8;
        if (*&v1[OBJC_IVAR____TtC7Measure11LabelRender_historyPressedPublisher])
        {
          v16 = v11;
          v17 = v12;
          v18 = v13;
          v19 = v14;
          v59 = v1[OBJC_IVAR____TtC7Measure11LabelRender_labelType];
          v57 = v1[OBJC_IVAR____TtC7Measure11LabelRender_chevronOnLeft];
          v20 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_measurementID];
          v21 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_measurementID + 8];
          *&v64[0] = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_historyPressedPublisher];

          v22 = v15;
          sub_10000F974(&unk_1004A7520);
          sub_10001D47C(&qword_1004A73C0, &unk_1004A7520);
          v23 = Publisher.eraseToAnyPublisher()();
          v24 = objc_allocWithZone(type metadata accessor for LabelDetailsPlatterWrapper());
          v25 = v1;
          v26 = v10;
          v27 = v22;
          v28 = sub_1000C0174(v26, v59, v25, v57, v20, v21, v27, v24);
          *&v64[0] = v23;
          swift_allocObject();
          swift_unknownObjectWeakInit();
          v29 = v28;
          v30 = Publisher<>.sink(receiveValue:)();

          *&v29[qword_1004A65B0] = v30;

          v31 = &v29[qword_1004A6658];
          *v31 = v16;
          *(v31 + 1) = v17;
          *(v31 + 2) = v18;
          *(v31 + 3) = v19;
          v31[32] = 0;
          v8 = v61;
LABEL_14:
          sub_10009A984();

          v52 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel];
          *&v1[OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel] = v29;
          v53 = v29;

          v54 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 48];
          v64[2] = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 32];
          v64[3] = v54;
          v65 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 64];
          v55 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 16];
          v64[0] = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties];
          v64[1] = v55;
          *(swift_allocObject() + 16) = v1;
          v56 = v1;
          sub_10009F898(v64, v63);
          sub_10009BD94(v64, v1, sub_1000C19F0);

          sub_10009F9AC(v64);

          return;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v32 = *&v0[OBJC_IVAR____TtC7Measure11LabelRender_activityPresentingViewController];
      if (v32)
      {
        v34 = *&v0[OBJC_IVAR____TtC7Measure11LabelRender_measurementID];
        v33 = *&v0[OBJC_IVAR____TtC7Measure11LabelRender_measurementID + 8];
        v35 = v1[OBJC_IVAR____TtC7Measure11LabelRender_chevronOnLeft];
        v36 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_mainView];
        v37 = v1[OBJC_IVAR____TtC7Measure11LabelRender_labelType];
        v38 = objc_allocWithZone(type metadata accessor for LabelDetailsPlatterWrapper());
        v39 = v1;
        v40 = v36;

        v41 = sub_1000C0174(v40, v37, v39, v35, v34, v33, v32, v38);
        v42 = *&v39[OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel];
        *&v39[OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel] = v41;

        sub_1000B5B98(v39);
        return;
      }

      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }
}

void sub_1000B35D0()
{
  v1 = v0;
  v2 = *(**(v0 + OBJC_IVAR____TtC7Measure11LabelRender__unitState) + 144);

  v2(v3);

  v4 = sub_1000983B8();
  v5 = v4;
  v6 = v4 == 0;
  if (!*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelType))
  {
    sub_10010DE20(v4, 0, 0, &v245, *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_measurement));
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_107;
      }

      sub_1001117E8(0, &v247);
      v19 = v249;
      v20 = v250;
      v21 = v248;
      v22 = v247;
      sub_10011062C(0, 0, v251);
    }

    else
    {
      sub_10011062C(1, 0, &v247);
      v19 = v249;
      v20 = v250;
      v21 = v248;
      v22 = v247;
      sub_1001117E8(0, v251);
    }

    v23 = v251[1];
    v24 = *(&v246 + 1);
    if (!*(&v246 + 1))
    {

      v242 = v245;
      sub_1000C1108(&v242);
      return;
    }

    if (v20)
    {
      if (v252)
      {
        v25 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel);
        if (!v25)
        {

          v242 = v245;
          sub_1000C1108(&v242);
LABEL_91:

          return;
        }

        if (!*&v25[qword_1004A65D0] || (v218 = v251[0], v220 = *(&v245 + 1), v26 = v246, v215 = v245, v27 = *&v25[qword_1004A65D0], swift_getObjectType(), !swift_conformsToProtocol2()))
        {

          goto LABEL_36;
        }

        v28 = v25;
        v29 = v27;
        v30 = v26;
        v31 = v29;
        sub_100092D10(v215, v220, v30, v24, v22, v21, v19, v20, v218, v23);

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      else
      {

        v242 = v245;
        sub_1000C1108(&v242);
      }
    }

    else
    {

      v242 = v245;
      sub_1000C1108(&v242);
    }

    swift_bridgeObjectRelease_n();
    return;
  }

  if (*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelType) != 1)
  {
    return;
  }

  v7 = (v0 + OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData);
  if (*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData + 21))
  {
    __break(1u);
    goto LABEL_105;
  }

  if ((*v7 & 0x100000000) != 0)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if ((v7[1] & 0x100000000) != 0)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (!v4)
  {
    sub_10011062C(0, 0, &v222);
    v8 = v223;
    v9 = v225;
    if (v226 == 1)
    {
      goto LABEL_35;
    }

    v212 = v224;
    v10 = v222;
    v11 = sub_100111E38(2, 0);
    sub_1001117E8(0, &v227);
    v12 = v230;
    v13 = v231;
    v14 = v228;
    v213 = v227;
    v214 = v229;
    sub_10011062C(0, 0, &v232);
    v219 = v233;
    if ((v236 & 1) == 0)
    {
      v211 = v14;
      v216 = v235;
      v208 = v234;
      v209 = v232;
      v15 = 2;
      v16 = sub_100111E38(2, 0);
      sub_1001117E8(0, &v237);
      v210 = v238;
      v217 = v240;
      if ((v13 & 1) == 0)
      {
        v17 = v239;
        v18 = 1;
        if ((v241 & 1) == 0)
        {
LABEL_40:
          v204 = v17;
          v34 = v237;
          sub_100112000(v5, 1, 0, 0, &v242, v11 * v16);
          v35 = sub_1001135A4(v18, 0);
          sub_100112000(v6, 1, 0, 0, &v245, v35);
          sub_100111E38(v15, 0);
          sub_100111E38(v18, 0);
          v203 = v34;
          if (v5)
          {
            sub_1001117E8(0, &v247);
            v202 = v249;
            v36 = v250;
            v207 = v248;
            v205 = v247;
            sub_10011062C(0, 0, v251);
          }

          else
          {
            sub_10011062C(0, 0, &v247);
            v202 = v249;
            v36 = v250;
            v207 = v248;
            v205 = v247;
            sub_1001117E8(0, v251);
          }

          if (v244)
          {
            v206 = v252;
            v37 = v251[2];
            v255[0] = v246;
            if (*(&v246 + 1))
            {
              if (!v9)
              {

                sub_10006C92C(v255, &v254, &qword_1004A72C0);

                v254 = v245;
                sub_1000C1108(&v254);
                sub_100018F04(v255, &qword_1004A72C0);
                v253 = v242;
                sub_1000C1108(&v253);

                sub_100018F04(v255, &qword_1004A72C0);
                goto LABEL_91;
              }

              if (v12)
              {
                if (v216)
                {
                  if (v217)
                  {
                    if (v36)
                    {
                      if (v252)
                      {
                        v38 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel);
                        if (!v38)
                        {

                          v254 = v245;
                          sub_1000C1108(&v254);
                          sub_100018F04(v255, &qword_1004A72C0);
                          v253 = v242;
                          sub_1000C1108(&v253);

                          goto LABEL_91;
                        }

                        v197 = v243;
                        v198 = *(&v246 + 1);
                        v39 = *&v255[0];
                        v253 = v245;
                        v254 = v242;
                        v40 = *&v38[qword_1004A65D0];
                        if (!v40 || (v41 = v244, swift_getObjectType(), !swift_conformsToProtocol2()))
                        {

                          sub_10006C92C(v255, v221, &qword_1004A72C0);

                          sub_1000C1108(&v253);
                          sub_100018F04(v255, &qword_1004A72C0);
                          sub_1000C1108(&v254);

                          sub_100018F04(v255, &qword_1004A72C0);

                          goto LABEL_91;
                        }

                        v192 = v37;
                        v193 = v39;
                        *&v40[qword_1004AE700] = v242;
                        v195 = v41;

                        sub_10006C92C(v255, v221, &qword_1004A72C0);

                        v196 = v12;

                        sub_100019324(&v254, v221);
                        v42 = v40;
                        v191 = v38;

                        v43 = &v42[qword_1004AE708];
                        *v43 = v10;
                        *(v43 + 1) = v8;

                        v44 = &v42[qword_1004AE710];
                        *v44 = v209;
                        *(v44 + 1) = v219;

                        v45 = &v42[qword_1004AE718];
                        *v45 = v205;
                        *(v45 + 1) = v207;

                        Strong = swift_unknownObjectWeakLoadStrong();
                        if (Strong)
                        {
                          v47 = Strong;
                          sub_10000F974(&unk_1004AF710);
                          v48 = swift_allocObject();
                          *(v48 + 16) = xmmword_1003D5730;
                          *(v48 + 56) = &type metadata for String;
                          v49 = sub_1000192D0();
                          *(v48 + 32) = v10;
                          *(v48 + 40) = v8;
                          *(v48 + 96) = &type metadata for String;
                          *(v48 + 104) = v49;
                          v201 = v49;
                          *(v48 + 64) = v49;
                          *(v48 + 72) = v209;
                          *(v48 + 80) = v219;

                          String.init(format:_:)();
                          v50 = String._bridgeToObjectiveC()();

                          [v47 setText:v50];

                          v51 = swift_unknownObjectWeakLoadStrong();
                          if (v51)
                          {
                            v52 = v51;
                            v199 = objc_opt_self();
                            v53 = [v199 systemFontOfSize:60.0 weight:UIFontWeightRegular];
                            [v52 setFont:v53];

                            v194 = swift_unknownObjectWeakLoadStrong();
                            if (v194)
                            {
                              v200 = objc_opt_self();
                              v54 = [v200 mainBundle];
                              v257._object = 0x8000000100405270;
                              v55._countAndFlagsBits = 0x4025207962204025;
                              v55._object = 0xE800000000000000;
                              v56._countAndFlagsBits = 0;
                              v56._object = 0xE000000000000000;
                              v257._countAndFlagsBits = 0xD00000000000009DLL;
                              NSLocalizedString(_:tableName:bundle:value:comment:)(v55, 0, v54, v56, v257);

                              v57 = swift_allocObject();
                              *(v57 + 16) = xmmword_1003D5730;
                              *(v57 + 56) = &type metadata for String;
                              *(v57 + 64) = v201;
                              *(v57 + 32) = v212;
                              *(v57 + 40) = v9;
                              *(v57 + 96) = &type metadata for String;
                              *(v57 + 104) = v201;
                              *(v57 + 72) = v208;
                              *(v57 + 80) = v216;

                              static String.localizedStringWithFormat(_:_:)();

                              v58 = String._bridgeToObjectiveC()();

                              [v194 setAccessibilityLabel:v58];

                              v59 = swift_unknownObjectWeakLoadStrong();
                              if (v59)
                              {
                                v60 = v59;
                                v61 = swift_allocObject();
                                *(v61 + 16) = xmmword_1003D5730;
                                *(v61 + 56) = &type metadata for String;
                                *(v61 + 64) = v201;
                                *(v61 + 32) = v213;
                                *(v61 + 40) = v211;
                                *(v61 + 96) = &type metadata for String;
                                *(v61 + 104) = v201;
                                *(v61 + 72) = v203;
                                *(v61 + 80) = v210;

                                String.init(format:_:)();
                                v62 = String._bridgeToObjectiveC()();

                                [v60 setText:v62];

                                v63 = swift_unknownObjectWeakLoadStrong();
                                if (v63)
                                {
                                  v64 = v63;
                                  sub_10019FCB8();
                                  v66 = v65;
                                  v67 = [v199 fontWithDescriptor:v65 size:0.0];

                                  [v64 setFont:v67];
                                  v68 = swift_unknownObjectWeakLoadStrong();
                                  if (v68)
                                  {
                                    v69 = v68;
                                    v70 = [v200 mainBundle];
                                    v258._object = 0x8000000100405270;
                                    v71._countAndFlagsBits = 0x4025207962204025;
                                    v71._object = 0xE800000000000000;
                                    v72._countAndFlagsBits = 0;
                                    v72._object = 0xE000000000000000;
                                    v258._countAndFlagsBits = 0xD00000000000009DLL;
                                    NSLocalizedString(_:tableName:bundle:value:comment:)(v71, 0, v70, v72, v258);

                                    v73 = swift_allocObject();
                                    *(v73 + 16) = xmmword_1003D5730;
                                    *(v73 + 56) = &type metadata for String;
                                    *(v73 + 64) = v201;
                                    *(v73 + 32) = v214;
                                    *(v73 + 40) = v196;
                                    *(v73 + 96) = &type metadata for String;
                                    *(v73 + 104) = v201;
                                    *(v73 + 72) = v204;
                                    *(v73 + 80) = v217;

                                    static String.localizedStringWithFormat(_:_:)();

                                    v74 = String._bridgeToObjectiveC()();

                                    [v69 setAccessibilityLabel:v74];

                                    v75 = swift_unknownObjectWeakLoadStrong();
                                    if (v75)
                                    {
                                      v76 = v75;
                                      v77 = swift_allocObject();
                                      *(v77 + 56) = &type metadata for String;
                                      *(v77 + 64) = v201;
                                      v78 = v253;
                                      v79 = v254;
                                      *(v77 + 16) = xmmword_1003D5730;
                                      *(v77 + 32) = v79;
                                      *(v77 + 96) = &type metadata for String;
                                      *(v77 + 104) = v201;
                                      *(v77 + 72) = v78;
                                      sub_100019324(&v254, v221);
                                      sub_100019324(&v253, v221);
                                      String.init(format:_:)();
                                      v80 = String._bridgeToObjectiveC()();

                                      [v76 setText:v80];

                                      v81 = swift_unknownObjectWeakLoadStrong();
                                      if (v81)
                                      {
                                        v82 = v81;
                                        sub_10019FCB8();
                                        v84 = v83;
                                        v85 = [v199 fontWithDescriptor:v83 size:0.0];

                                        [v82 setFont:v85];
                                        v86 = swift_unknownObjectWeakLoadStrong();
                                        if (v86)
                                        {
                                          v87 = v86;
                                          v88 = swift_allocObject();
                                          *(v88 + 16) = xmmword_1003D5730;
                                          *(v88 + 56) = &type metadata for String;
                                          *(v88 + 64) = v201;
                                          *(v88 + 32) = v197;
                                          *(v88 + 40) = v195;
                                          *(v88 + 96) = &type metadata for String;
                                          *(v88 + 104) = v201;
                                          *(v88 + 72) = v193;
                                          *(v88 + 80) = v198;

                                          sub_10006C92C(v255, v221, &qword_1004A72C0);
                                          String.init(format:_:)();
                                          v89 = String._bridgeToObjectiveC()();

                                          [v87 setAccessibilityLabel:v89];

                                          v90 = swift_unknownObjectWeakLoadStrong();
                                          if (v90)
                                          {
                                            v91 = v90;
                                            v92 = String._bridgeToObjectiveC()();
                                            [v91 setText:v92];

                                            v93 = swift_unknownObjectWeakLoadStrong();
                                            if (v93)
                                            {
                                              v94 = v93;
                                              v95 = [v200 mainBundle];
                                              v259._object = 0x8000000100405270;
                                              v96._object = 0x8000000100405310;
                                              v96._countAndFlagsBits = 0xD000000000000013;
                                              v97._countAndFlagsBits = 0;
                                              v97._object = 0xE000000000000000;
                                              v259._countAndFlagsBits = 0xD00000000000009DLL;
                                              NSLocalizedString(_:tableName:bundle:value:comment:)(v96, 0, v95, v97, v259);

                                              v98 = swift_allocObject();
                                              *(v98 + 16) = xmmword_1003D5360;
                                              *(v98 + 56) = &type metadata for String;
                                              *(v98 + 64) = v201;
                                              *(v98 + 32) = v202;
                                              *(v98 + 40) = v36;

                                              static String.localizedStringWithFormat(_:_:)();

                                              v99 = String._bridgeToObjectiveC()();

                                              [v94 setAccessibilityLabel:v99];

                                              v100 = swift_unknownObjectWeakLoadStrong();
                                              if (v100)
                                              {
                                                v101 = v100;
                                                v102 = String._bridgeToObjectiveC()();
                                                [v101 setText:v102];

                                                v103 = swift_unknownObjectWeakLoadStrong();
                                                if (v103)
                                                {
                                                  v104 = v103;
                                                  v105 = [v200 mainBundle];
                                                  v260._object = 0x8000000100405270;
                                                  v106._object = 0x8000000100405310;
                                                  v106._countAndFlagsBits = 0xD000000000000013;
                                                  v107._countAndFlagsBits = 0;
                                                  v107._object = 0xE000000000000000;
                                                  v260._countAndFlagsBits = 0xD00000000000009DLL;
                                                  NSLocalizedString(_:tableName:bundle:value:comment:)(v106, 0, v105, v107, v260);

                                                  v108 = swift_allocObject();
                                                  *(v108 + 16) = xmmword_1003D5360;
                                                  *(v108 + 56) = &type metadata for String;
                                                  *(v108 + 64) = v201;
                                                  *(v108 + 32) = v192;
                                                  *(v108 + 40) = v206;

                                                  static String.localizedStringWithFormat(_:_:)();

                                                  v109 = String._bridgeToObjectiveC()();

                                                  [v104 setAccessibilityLabel:v109];

                                                  v110 = swift_unknownObjectWeakLoadStrong();
                                                  if (v110)
                                                  {
                                                    v111 = v110;
                                                    v112 = swift_unknownObjectWeakLoadStrong();
                                                    if (v112)
                                                    {
                                                      v113 = v112;
                                                      [v112 bounds];
                                                      v115 = v114;
                                                      v117 = v116;
                                                      v119 = v118;
                                                      v121 = v120;

                                                      v261.origin.x = v115;
                                                      v261.origin.y = v117;
                                                      v261.size.width = v119;
                                                      v261.size.height = v121;
                                                      Width = CGRectGetWidth(v261);
                                                      v123 = swift_unknownObjectWeakLoadStrong();
                                                      if (v123)
                                                      {
                                                        v124 = v123;
                                                        [v123 bounds];
                                                        v126 = v125;
                                                        v128 = v127;
                                                        v130 = v129;
                                                        v132 = v131;

                                                        v262.origin.x = v126;
                                                        v262.origin.y = v128;
                                                        v262.size.width = v130;
                                                        v262.size.height = v132;
                                                        Height = CGRectGetHeight(v262);
                                                        v134 = swift_unknownObjectWeakLoadStrong();
                                                        if (v134)
                                                        {
                                                          v135 = v134;
                                                          v136 = [v134 font];

                                                          if (v136)
                                                          {
                                                            [v136 lineHeight];
                                                            v138 = v137;

                                                            [v111 setCenter:{Width * 0.5, Height - v138 * 0.5}];
                                                            v139 = swift_unknownObjectWeakLoadStrong();
                                                            if (v139)
                                                            {
                                                              v140 = v139;
                                                              v141 = swift_unknownObjectWeakLoadStrong();
                                                              if (v141)
                                                              {
                                                                v142 = v141;
                                                                [v141 bounds];
                                                                v144 = v143;
                                                                v146 = v145;
                                                                v148 = v147;
                                                                v150 = v149;

                                                                v263.origin.x = v144;
                                                                v263.origin.y = v146;
                                                                v263.size.width = v148;
                                                                v263.size.height = v150;
                                                                v151 = CGRectGetWidth(v263);
                                                                v152 = swift_unknownObjectWeakLoadStrong();
                                                                if (v152)
                                                                {
                                                                  v153 = v152;
                                                                  v154 = [v152 font];

                                                                  if (v154)
                                                                  {
                                                                    [v154 lineHeight];
                                                                    v156 = v155;

                                                                    [v140 setCenter:{v151 * 0.5, v156 * 0.5}];
                                                                    v157 = swift_unknownObjectWeakLoadStrong();
                                                                    if (v157)
                                                                    {
                                                                      v158 = v157;
                                                                      sub_10019FCB8();
                                                                      v160 = v159;
                                                                      v161 = [v199 fontWithDescriptor:v159 size:0.0];

                                                                      [v158 setFont:v161];
                                                                      v162 = swift_unknownObjectWeakLoadStrong();
                                                                      if (v162)
                                                                      {
                                                                        v163 = v162;
                                                                        sub_10019FCB8();
                                                                        v165 = v164;
                                                                        v166 = [v199 fontWithDescriptor:v164 size:0.0];

                                                                        [v163 setFont:v166];
                                                                        v167 = swift_unknownObjectWeakLoadStrong();
                                                                        if (v167)
                                                                        {
                                                                          v168 = v167;
                                                                          v169 = swift_unknownObjectWeakLoadStrong();
                                                                          if (v169)
                                                                          {
                                                                            v170 = v169;
                                                                            [v169 bounds];
                                                                            v172 = v171;

                                                                            v173 = swift_unknownObjectWeakLoadStrong();
                                                                            if (v173)
                                                                            {
                                                                              v174 = v173;
                                                                              v175 = [v173 font];

                                                                              if (v175)
                                                                              {
                                                                                v176 = v172 * 0.5;
                                                                                [v175 leading];
                                                                                v178 = v177;

                                                                                [v168 setConstant:v176 - v178 * 0.5];
                                                                                v179 = swift_unknownObjectWeakLoadStrong();
                                                                                if (v179)
                                                                                {
                                                                                  v180 = v179;
                                                                                  v181 = swift_unknownObjectWeakLoadStrong();
                                                                                  if (v181)
                                                                                  {
                                                                                    v182 = v181;
                                                                                    [v181 bounds];
                                                                                    v184 = v183;

                                                                                    v185 = swift_unknownObjectWeakLoadStrong();
                                                                                    if (v185)
                                                                                    {
                                                                                      v186 = v185;
                                                                                      v187 = [v185 font];

                                                                                      if (v187)
                                                                                      {

                                                                                        v188 = v184 * 0.5;
                                                                                        sub_100018F04(v255, &qword_1004A72C0);

                                                                                        [v187 leading];
                                                                                        v190 = v189;

                                                                                        [v180 setConstant:v188 - v190 * 0.5];

                                                                                        sub_1000C1108(&v253);
                                                                                        sub_100018F04(v255, &qword_1004A72C0);
                                                                                        sub_1000C1108(&v254);

                                                                                        goto LABEL_91;
                                                                                      }

LABEL_139:
                                                                                      __break(1u);
                                                                                      return;
                                                                                    }

LABEL_138:
                                                                                    __break(1u);
                                                                                    goto LABEL_139;
                                                                                  }

LABEL_137:
                                                                                  __break(1u);
                                                                                  goto LABEL_138;
                                                                                }

LABEL_136:
                                                                                __break(1u);
                                                                                goto LABEL_137;
                                                                              }

LABEL_135:
                                                                              __break(1u);
                                                                              goto LABEL_136;
                                                                            }

LABEL_134:
                                                                            __break(1u);
                                                                            goto LABEL_135;
                                                                          }

LABEL_133:
                                                                          __break(1u);
                                                                          goto LABEL_134;
                                                                        }

LABEL_132:
                                                                        __break(1u);
                                                                        goto LABEL_133;
                                                                      }

LABEL_131:
                                                                      __break(1u);
                                                                      goto LABEL_132;
                                                                    }

LABEL_130:
                                                                    __break(1u);
                                                                    goto LABEL_131;
                                                                  }

LABEL_129:
                                                                  __break(1u);
                                                                  goto LABEL_130;
                                                                }

LABEL_128:
                                                                __break(1u);
                                                                goto LABEL_129;
                                                              }

LABEL_127:
                                                              __break(1u);
                                                              goto LABEL_128;
                                                            }

LABEL_126:
                                                            __break(1u);
                                                            goto LABEL_127;
                                                          }

LABEL_125:
                                                          __break(1u);
                                                          goto LABEL_126;
                                                        }

LABEL_124:
                                                        __break(1u);
                                                        goto LABEL_125;
                                                      }

LABEL_123:
                                                      __break(1u);
                                                      goto LABEL_124;
                                                    }

LABEL_122:
                                                    __break(1u);
                                                    goto LABEL_123;
                                                  }

LABEL_121:
                                                  __break(1u);
                                                  goto LABEL_122;
                                                }

LABEL_120:
                                                __break(1u);
                                                goto LABEL_121;
                                              }

LABEL_119:
                                              __break(1u);
                                              goto LABEL_120;
                                            }

LABEL_118:
                                            __break(1u);
                                            goto LABEL_119;
                                          }

LABEL_117:
                                          __break(1u);
                                          goto LABEL_118;
                                        }

LABEL_116:
                                        __break(1u);
                                        goto LABEL_117;
                                      }

LABEL_115:
                                      __break(1u);
                                      goto LABEL_116;
                                    }

LABEL_114:
                                    __break(1u);
                                    goto LABEL_115;
                                  }

LABEL_113:
                                  __break(1u);
                                  goto LABEL_114;
                                }

LABEL_112:
                                __break(1u);
                                goto LABEL_113;
                              }

LABEL_111:
                              __break(1u);
                              goto LABEL_112;
                            }

LABEL_110:
                            __break(1u);
                            goto LABEL_111;
                          }

LABEL_109:
                          __break(1u);
                          goto LABEL_110;
                        }

LABEL_108:
                        __break(1u);
                        goto LABEL_109;
                      }

                      sub_10006C92C(v255, &v254, &qword_1004A72C0);

                      v254 = v245;
                      sub_1000C1108(&v254);
                      sub_100018F04(v255, &qword_1004A72C0);
                      v253 = v242;
                      sub_1000C1108(&v253);
                    }

                    else
                    {

                      sub_10006C92C(v255, &v254, &qword_1004A72C0);

                      v254 = v245;
                      sub_1000C1108(&v254);
                      sub_100018F04(v255, &qword_1004A72C0);
                      v253 = v242;
                      sub_1000C1108(&v253);
                    }

                    swift_bridgeObjectRelease_n();

                    swift_bridgeObjectRelease_n();

                    swift_bridgeObjectRelease_n();

                    swift_bridgeObjectRelease_n();
                  }

                  else
                  {

                    sub_10006C92C(v255, &v254, &qword_1004A72C0);

                    v254 = v245;
                    sub_1000C1108(&v254);
                    sub_100018F04(v255, &qword_1004A72C0);
                    v253 = v242;
                    sub_1000C1108(&v253);

                    swift_bridgeObjectRelease_n();

                    swift_bridgeObjectRelease_n();

                    swift_bridgeObjectRelease_n();
                  }
                }

                else
                {

                  sub_10006C92C(v255, &v254, &qword_1004A72C0);

                  v254 = v245;
                  sub_1000C1108(&v254);
                  sub_100018F04(v255, &qword_1004A72C0);
                  v253 = v242;
                  sub_1000C1108(&v253);

                  swift_bridgeObjectRelease_n();

                  swift_bridgeObjectRelease_n();
                }
              }

              else
              {

                sub_10006C92C(v255, &v254, &qword_1004A72C0);

                v254 = v245;
                sub_1000C1108(&v254);
                sub_100018F04(v255, &qword_1004A72C0);
                v253 = v242;
                sub_1000C1108(&v253);

                swift_bridgeObjectRelease_n();
              }

              sub_100018F04(v255, &qword_1004A72C0);
              goto LABEL_91;
            }

            v254 = v245;
            sub_1000C1108(&v254);
            v253 = v242;
            sub_1000C1108(&v253);

            swift_bridgeObjectRelease_n();
          }

          else
          {

            v255[0] = v245;
            sub_1000C1108(v255);
            v254 = v246;
            sub_100018F04(&v254, &qword_1004A72C0);
            v253 = v242;
            sub_1000C1108(&v253);
          }

          goto LABEL_91;
        }
      }

      goto LABEL_34;
    }

    goto LABEL_28;
  }

  if (v4 != 1)
  {
LABEL_107:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_108;
  }

  sub_1001117E8(0, &v222);
  v8 = v223;
  v9 = v225;
  if (v226)
  {
    goto LABEL_35;
  }

  v212 = v224;
  v10 = v222;
  v11 = sub_100111E38(1, 0);
  sub_10011062C(0, 0, &v227);
  v12 = v230;
  v32 = v231;
  v33 = v228;
  v213 = v227;
  v214 = v229;
  sub_1001117E8(0, &v232);
  v219 = v233;
  if ((v236 & 1) == 0)
  {
    v211 = v33;
    v216 = v235;
    v208 = v234;
    v209 = v232;
    v15 = 1;
    v16 = sub_100111E38(1, 0);
    sub_10011062C(0, 0, &v237);
    v210 = v238;
    v217 = v240;
    if ((v32 & 1) == 0)
    {
      v17 = v239;
      v18 = 2;
      if ((v241 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

LABEL_34:

    goto LABEL_35;
  }

LABEL_28:

LABEL_35:

LABEL_36:
}

uint64_t sub_1000B567C()
{
  [*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelNode) setAlpha:*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha)];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000C5628(*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_measurementID), *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_measurementID + 8));
    result = swift_unknownObjectRelease();
  }

  *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_selectionState) = 0;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for RectangleLabelData(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RectangleLabelData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RectangleLabelData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 21) = v3;
  return result;
}

__n128 sub_1000B57E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000B580C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B5854(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000B58B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000B58C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 36))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000B590C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1000B5974(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000B59BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000B5A20()
{
  result = qword_1004A7278;
  if (!qword_1004A7278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7278);
  }

  return result;
}

unint64_t sub_1000B5A78()
{
  result = qword_1004A7280;
  if (!qword_1004A7280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7280);
  }

  return result;
}

unint64_t sub_1000B5ACC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_lastPositionsOnLine);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v4 = 0.0;
    return LODWORD(v4) | ((v2 == 0) << 32);
  }

  v3 = (v1 + 32);
  if (v2 == 1)
  {
    v4 = *v3;
    return LODWORD(v4) | ((v2 == 0) << 32);
  }

  v5 = 0;
  v6 = 0;
  v7 = vcvts_n_f32_u64(v2, 1uLL);
  v8 = 0.0;
  v9 = v2;
  while (*v3 != -1.0)
  {
    v10 = __OFADD__(v5++, 1);
    if (v10)
    {
      goto LABEL_16;
    }

    v8 = v8 + *v3;
LABEL_6:
    ++v3;
    if (!--v9)
    {
      v4 = v8 / v5;
      return LODWORD(v4) | ((v2 == 0) << 32);
    }
  }

  v10 = __OFADD__(v6++, 1);
  if (!v10)
  {
    if (v7 <= v6)
    {
      v4 = -1.0;
      return LODWORD(v4) | ((v2 == 0) << 32);
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1000B5B98(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_selectionState) = 1;
  *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha) = 0;
  result = [objc_opt_self() jasperAvailable];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel);
    if (!v3)
    {
      __break(1u);
      return result;
    }

    v4 = *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 48);
    v9[2] = *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 32);
    v9[3] = v4;
    v10 = *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 64);
    v5 = *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 16);
    v9[0] = *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_currentProperties);
    v9[1] = v5;
    v6 = v3;
    sub_10009F898(v9, &v8);
    sub_10009BD94(v9, a1, 0);
    sub_10009F9AC(v9);
  }

  sub_1000AB428(*(a1 + OBJC_IVAR____TtC7Measure11LabelRender_state));
  sub_1000B35D0();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000C57AC(*(a1 + OBJC_IVAR____TtC7Measure11LabelRender_measurementID), *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_measurementID + 8));
    swift_unknownObjectRelease();
  }

  if (qword_1004A02A8 != -1)
  {
    swift_once();
  }

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v8._object = 0x80000001004053A0;
  String.append(_:)(*(a1 + OBJC_IVAR____TtC7Measure11LabelRender_measurementID));
  Log.default(_:isPrivate:)(v8, 0);

  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  v7 = qword_1004D4F08 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  result = swift_beginAccess();
  *(v7 + 48) = *(v7 + 48) + 1.0;
  return result;
}

void sub_1000B5DD8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC7Measure11LabelRender_labelSize);
    v2 = *(Strong + OBJC_IVAR____TtC7Measure11LabelRender_labelSize + 8);
    v4 = OBJC_IVAR____TtC7Measure11LabelRender_state;
    v5 = *(Strong + OBJC_IVAR____TtC7Measure11LabelRender_state);
    v6 = v5 > 5;
    v7 = (1 << v5) & 0x25;
    v8 = v6 || v7 == 0;
    if (!v8 && (*(Strong + OBJC_IVAR____TtC7Measure11LabelRender_capturing) & 1) == 0)
    {
      if (qword_1004A05B0 != -1)
      {
        swift_once();
      }

      v3 = v3 + *&qword_1004D5128 + *&qword_1004D5128;
    }

    v9 = OBJC_IVAR____TtC7Measure11LabelRender_labelContainer;
    [*&v1[OBJC_IVAR____TtC7Measure11LabelRender_labelContainer] setSize:{v3, v2 + 1.0}];
    v10 = *&v1[v9];
    [v10 size];
    v52 = v11;
    [*&v1[v9] size];
    v12.f64[0] = v52;
    v12.f64[1] = v13;
    v14 = [objc_opt_self() valueWithVectorFloat2:COERCE_DOUBLE(vcvt_f32_f64(v12))];
    v15 = String._bridgeToObjectiveC()();
    [v10 setValue:v14 forAttributeNamed:v15];

    v16 = *&v1[v4];
    if (v16 <= 5 && ((1 << v16) & 0x25) != 0 && (v1[OBJC_IVAR____TtC7Measure11LabelRender_capturing] & 1) == 0)
    {
      v18 = OBJC_IVAR____TtC7Measure11LabelRender_labelChevron;
      [*&v1[OBJC_IVAR____TtC7Measure11LabelRender_labelChevron] setHidden:0];
      v19 = qword_1004A05A8;
      v20 = *&v1[v18];
      if (v19 != -1)
      {
        swift_once();
      }

      v53 = OBJC_IVAR____TtC7Measure11LabelRender_labelFontMetrics;
      v21 = *&qword_1004D5120;
      v22 = qword_1004A0050;
      v23 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_labelFontMetrics];
      if (v22 != -1)
      {
        swift_once();
      }

      v24 = qword_1004D4970;
      v25 = static UIContentSizeCategory.> infix(_:_:)();

      if (v25)
      {

        v24 = UIContentSizeCategoryAccessibilityLarge;
      }

      v26 = v3 * 0.5;
      v27 = objc_opt_self();
      v28 = [v27 traitCollectionWithPreferredContentSizeCategory:v24];

      [v23 scaledValueForValue:v28 compatibleWithTraitCollection:v21];
      v30 = v29;

      [v20 setPosition:{v26 - v30, 0.0}];
      v31 = *&v1[v18];
      [v31 size];
      if (qword_1004A0570 != -1)
      {
        swift_once();
      }

      v32 = qword_1004D50E8;
      v33 = qword_1004D4970;
      v34 = static UIContentSizeCategory.> infix(_:_:)();

      if (v34)
      {

        v33 = UIContentSizeCategoryAccessibilityLarge;
      }

      v35 = objc_opt_self();
      v36 = [v27 traitCollectionWithPreferredContentSizeCategory:v33];

      v37 = [v35 preferredFontForTextStyle:v32 compatibleWithTraitCollection:v36];
      [v37 pointSize];

      static CGSize.* infix(_:_:)();
      [*&v1[v18] size];
      static CGSize./ infix(_:_:)();
      [v31 setSize:?];

      v38 = OBJC_IVAR____TtC7Measure11LabelRender_labelText;
      v39 = qword_1004A05B0;
      v40 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_labelText];
      if (v39 != -1)
      {
        swift_once();
      }

      v41 = *&qword_1004D5128;
      v42 = -*&qword_1004D5128;
      [v40 position];
      [v40 setPosition:v42];

      if (v1[OBJC_IVAR____TtC7Measure11LabelRender_chevronOnLeft] != 1)
      {
        goto LABEL_31;
      }

      v43 = *&v1[v18];
      v44 = *&v1[v54];
      v45 = qword_1004D4970;
      v46 = v43;
      v47 = v44;
      v48 = static UIContentSizeCategory.> infix(_:_:)();

      if (v48)
      {

        v45 = UIContentSizeCategoryAccessibilityLarge;
      }

      v49 = [v27 traitCollectionWithPreferredContentSizeCategory:v45];

      [v47 scaledValueForValue:v49 compatibleWithTraitCollection:v21];
      v51 = v50;

      [v46 setPosition:{v51 - v26, 0.0}];
      v17 = *&v1[v38];
      [v17 position];
      [v17 setPosition:v41];
    }

    else
    {
      [*&v1[OBJC_IVAR____TtC7Measure11LabelRender_labelChevron] setHidden:1];
      v17 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_labelText];
      [v17 position];
      [v17 setPosition:0.0];
    }

    v1 = v17;
LABEL_31:
  }
}

BOOL sub_1000B6434()
{
  type metadata accessor for MeasureCamera();
  v1 = OBJC_IVAR____TtC7Measure11LabelRender__render;
  v2 = *(**(v0 + OBJC_IVAR____TtC7Measure11LabelRender__render) + 144);

  v2(__src, v3);

  memcpy(__dst, __src, 0x1F8uLL);
  sub_100038ECC(__dst);
  v4 = *(**(v0 + v1) + 144);

  v4(v10, v5);

  memcpy(__src, v10, 0x1F8uLL);
  sub_100038ECC(__src);
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v7 = vcvtq_f64_f32(v6);
  y = v7.y;
  return CGRectContainsPoint(*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea), v7);
}

uint64_t sub_1000B65C0(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v48 = a6;
  v8 = v6;
  v10 = a3(0);
  v45 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v47 = &v42 - v11;
  v12 = *v6;
  sub_10000F974(a4);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v12 + 16))
  {
    v43 = v6;
    v44 = v12;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v45 + 72);
      v33 = v28 + v32 * v27;
      if (v46)
      {
        sub_1000C1BC0(v33, v47, v48);
      }

      else
      {
        sub_1000C1B58(v33, v47, v48);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      result = sub_1000C1BC0(v47, *(v14 + 56) + v32 * v22, v48);
      ++*(v14 + 16);
      v12 = v44;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v8 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v8 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
  return result;
}

uint64_t sub_1000B6900(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000F974(&unk_1004A73F0);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 24 * v20;
      v34 = *v22;
      v23 = *(v22 + 16);
      if ((v33 & 1) == 0)
      {
        v24 = v34;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v34;
      *(v16 + 16) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B6BBC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000F974(&qword_1004A7360);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B6E3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000F974(&qword_1004A73C8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      v22 = v20 - 3;
      if ((v20 - 3) >= 7)
      {
        Hasher._combine(_:)(7uLL);
        v22 = v20;
      }

      Hasher._combine(_:)(v22);
      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000B70D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000F974(&qword_1004A7368);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = static Hasher._hash(seed:_:)();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000B7360(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000F974(&qword_1004A7428);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1000C1C84(&qword_1004A7420, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1000B773C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000F974(&qword_1004AE170);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_1000C1C84(&qword_1004A7420, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1000B7AFC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000F974(&unk_1004A72B0);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_1000C0FAC(v22, v36);
      }

      else
      {
        sub_10000FE60(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_1000C0FAC(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B7DE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000F974(&qword_1004A7348);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B8084(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_10000F974(a3);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1000B8320(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000F974(&qword_1004A7430);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B85A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000F974(&qword_1004AE1B0);
  v48 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v45 = v3;
    v46 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v47 = result;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v49 = (v12 - 1) & v12;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 56);
      v24 = (*(v5 + 48) + 16 * v22);
      v25 = v24[1];
      v52 = *v24;
      v26 = (v23 + 48 * v22);
      v27 = v26[1];
      v50 = *v26;
      v29 = v26[2];
      v28 = v26[3];
      v31 = v26[4];
      v30 = v26[5];
      if ((v48 & 1) == 0)
      {

        v32 = v30;
      }

      v51 = v30;
      v33 = v28;
      v34 = v29;
      v35 = v27;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v36 = Hasher._finalize()();
      v7 = v47;
      v37 = -1 << *(v47 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v14 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        result = v51;
        v16 = v31;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v14 + 8 * v39);
          if (v43 != -1)
          {
            v15 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v38) & ~*(v14 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      result = v51;
      v16 = v31;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = (*(v47 + 48) + 16 * v15);
      *v17 = v52;
      v17[1] = v25;
      v18 = (*(v47 + 56) + 48 * v15);
      v12 = v49;
      *v18 = v50;
      v18[1] = v35;
      v18[2] = v34;
      v18[3] = v33;
      v18[4] = v16;
      v18[5] = result;
      ++*(v47 + 16);
      v5 = v46;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v49 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_33;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v9, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B88C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000F974(&unk_1004A7410);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + 8 * v23);
      if (v35)
      {
        v25 = *(v5 + 56) + 304 * v23;
        v47 = *v25;
        v48 = *(v25 + 16);
        v52 = *(v25 + 80);
        v53 = *(v25 + 64);
        v49 = *(v25 + 32);
        v50 = *(v25 + 96);
        v51 = *(v25 + 112);
        v54 = *(v25 + 132);
        v36 = *(v25 + 48);
        v37 = *(v25 + 136);
        v55 = *(v25 + 140);
        v38 = *(v25 + 128);
        v39 = *(v25 + 144);
        v56 = *(v25 + 148);
        v57 = *(v25 + 160);
        v40 = *(v25 + 156);
        v41 = *(v25 + 168);
        v58 = *(v25 + 172);
        v59 = *(v25 + 180);
        v42 = *(v25 + 176);
        v43 = *(v25 + 184);
        v60 = *(v25 + 188);
        v61 = *(v25 + 193);
        v62 = *(v25 + 208);
        v46 = *(v25 + 224);
        v63 = *(v25 + 228);
        v44 = *(v25 + 192);
        v45 = *(v25 + 232);
        v64 = *(v25 + 240);
        v65 = *(v25 + 256);
        v66 = *(v25 + 272);
        v67 = *(v25 + 288);
      }

      else
      {
        memcpy(__dst, (*(v5 + 56) + 304 * v23), 0x130uLL);
        v63 = DWORD1(__dst[14]);
        v62 = __dst[13];
        v45 = BYTE8(__dst[14]);
        v46 = __dst[14];
        v60 = HIDWORD(__dst[11]);
        v61 = BYTE1(__dst[12]);
        v43 = BYTE8(__dst[11]);
        v44 = __dst[12];
        v58 = HIDWORD(__dst[10]);
        v59 = DWORD1(__dst[11]);
        v41 = BYTE8(__dst[10]);
        v42 = __dst[11];
        v56 = *(&__dst[9] + 4);
        v57 = *&__dst[10];
        v39 = __dst[9];
        v40 = BYTE12(__dst[9]);
        v54 = DWORD1(__dst[8]);
        v55 = HIDWORD(__dst[8]);
        v37 = BYTE8(__dst[8]);
        v38 = __dst[8];
        v52 = __dst[5];
        v53 = __dst[4];
        v50 = __dst[6];
        v51 = __dst[7];
        v48 = __dst[1];
        v49 = __dst[2];
        v36 = __dst[3];
        v47 = __dst[0];
        sub_1000C1C28(__dst, &v64);
        v64 = __dst[15];
        v65 = __dst[16];
        v66 = __dst[17];
        v67 = __dst[18];
      }

      result = static Hasher._hash(seed:_:)();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(__dst + 7) = v64;
      *(&__dst[1] + 7) = v65;
      *(&__dst[2] + 7) = v66;
      *(&__dst[3] + 7) = v67;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v24;
      v16 = *(v7 + 56) + 304 * v15;
      *v16 = v47;
      *(v16 + 16) = v48;
      *(v16 + 32) = v49;
      *(v16 + 48) = v36;
      *(v16 + 64) = v53;
      *(v16 + 80) = v52;
      *(v16 + 96) = v50;
      *(v16 + 112) = v51;
      *(v16 + 128) = v38;
      *(v16 + 132) = v54;
      *(v16 + 136) = v37;
      *(v16 + 140) = v55;
      *(v16 + 144) = v39;
      *(v16 + 148) = v56;
      *(v16 + 156) = v40;
      *(v16 + 160) = v57;
      *(v16 + 168) = v41;
      *(v16 + 172) = v58;
      *(v16 + 176) = v42;
      *(v16 + 180) = v59;
      *(v16 + 184) = v43;
      *(v16 + 188) = v60;
      *(v16 + 192) = v44;
      *(v16 + 193) = v61;
      *(v16 + 208) = v62;
      *(v16 + 224) = v46;
      *(v16 + 228) = v63;
      *(v16 + 232) = v45;
      *(v16 + 233) = __dst[0];
      v17 = __dst[1];
      v18 = __dst[2];
      v19 = __dst[3];
      *(v16 + 296) = *(&__dst[3] + 15);
      *(v16 + 265) = v18;
      *(v16 + 281) = v19;
      *(v16 + 249) = v17;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B8E4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000F974(&qword_1004A7438);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = static Hasher._hash(seed:_:)();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000B90C8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000F974(&qword_1004A73A8);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_1000C1C84(&unk_1004A73B0, &type metadata accessor for URL);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1000B9488(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000F974(&unk_1004A7380);
  v30 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      (*(*v20 + 184))(v31);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B9738(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000F974(&qword_1004A7400);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 12 * v21;
      v26 = *v25;
      v27 = *(v25 + 8);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 12 * v15;
      *v17 = v26;
      *(v17 + 8) = v27;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B99F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000F974(&qword_1004A7408);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v36 = *v25;
      v26 = *(v25 + 16);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v36;
      *(v17 + 16) = v26;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B9CB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000F974(&qword_1004A73D0);
  v31 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B9F44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000F974(&qword_1004A7320);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000BA208(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000F974(&qword_1004A73E0);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v33 & 1) == 0)
      {

        v23 = v22;
        v24 = v21;
      }

      Hasher.init(_seed:)();
      type metadata accessor for AnyKeyPath();
      dispatch thunk of Hashable.hash(into:)();
      NSObject.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v16 = v34;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v16 = v34;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000BA4DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000F974(&qword_1004A73D8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 56) + 32 * v20);
      v32 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if (a2)
      {
        sub_1000C0FAC(v21, v33);
      }

      else
      {
        sub_10000FE60(v21, v33);

        v23 = v22;
      }

      Hasher.init(_seed:)();
      type metadata accessor for AnyKeyPath();
      dispatch thunk of Hashable.hash(into:)();
      NSObject.hash(into:)();
      result = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v16 = v32;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v16 = v32;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      result = sub_1000C0FAC(v33, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000BA7B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000F974(&qword_1004A7398);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = static Hasher._hash(seed:_:)();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000BAA1C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_10000F974(a3);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v32 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      result = static Hasher._hash(seed:_:)();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v6 + 32);
      if (v31 >= 64)
      {
        bzero((v6 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v6 + 16) = 0;
    }

    v4 = v32;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1000BAC7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000F974(&qword_1004A73A0);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = static Hasher._hash(seed:_:)();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000BAF00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100198230(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for MetricsManager.EdgeGuideMetric(0);
      return sub_1000C1CCC(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for MetricsManager.EdgeGuideMetric);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1000BD8B8(type metadata accessor for MetricsManager.EdgeGuideMetric, &qword_1004A7338, &unk_1003DAEB0, type metadata accessor for MetricsManager.EdgeGuideMetric);
    goto LABEL_7;
  }

  sub_1000B65C0(v15, a4 & 1, type metadata accessor for MetricsManager.EdgeGuideMetric, &qword_1004A7338, &unk_1003DAEB0, type metadata accessor for MetricsManager.EdgeGuideMetric);
  v22 = sub_100198230(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1000BD40C(v12, a2, a3, a1, v18, type metadata accessor for MetricsManager.EdgeGuideMetric, type metadata accessor for MetricsManager.EdgeGuideMetric);
}

uint64_t sub_1000BB104(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100198230(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for MetricsManager.SurfaceVectorGuideMetric(0);
      return sub_1000C1CCC(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for MetricsManager.SurfaceVectorGuideMetric);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1000BD8B8(type metadata accessor for MetricsManager.SurfaceVectorGuideMetric, &qword_1004A7358, &unk_1003DAED0, type metadata accessor for MetricsManager.SurfaceVectorGuideMetric);
    goto LABEL_7;
  }

  sub_1000B65C0(v15, a4 & 1, type metadata accessor for MetricsManager.SurfaceVectorGuideMetric, &qword_1004A7358, &unk_1003DAED0, type metadata accessor for MetricsManager.SurfaceVectorGuideMetric);
  v22 = sub_100198230(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1000BD40C(v12, a2, a3, a1, v18, type metadata accessor for MetricsManager.SurfaceVectorGuideMetric, type metadata accessor for MetricsManager.SurfaceVectorGuideMetric);
}

unint64_t sub_1000BB308(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10019C35C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1000BDC8C();
    result = v17;
    goto LABEL_8;
  }

  sub_1000B6BBC(v14, a3 & 1);
  result = sub_10019C35C(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = a1 & 1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + result) = a1 & 1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1000BB434(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1001983A8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1000BDDD8();
    result = v17;
    goto LABEL_8;
  }

  sub_1000B6E3C(v14, a3 & 1);
  result = sub_1001983A8(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1000BB558(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10019851C(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      v20 = v19[7];
      v21 = *(v20 + 8 * result);
      *(v20 + 8 * result) = a1;

      return _objc_release_x1(result, v21);
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a3;
    *(v19[7] + 8 * result) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_1000BDF24();
    result = v17;
    goto LABEL_8;
  }

  sub_1000B70D4(v14, a2 & 1);
  result = sub_10019851C(a3);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return _objc_release_x1(result, v21);
}

uint64_t sub_1000BB6D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100198230(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for MetricsManager.PersonHeightMetric(0);
      return sub_1000C1CCC(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for MetricsManager.PersonHeightMetric);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1000BD8B8(type metadata accessor for MetricsManager.PersonHeightMetric, &qword_1004A73E8, &unk_1003DAF88, type metadata accessor for MetricsManager.PersonHeightMetric);
    goto LABEL_7;
  }

  sub_1000B65C0(v15, a4 & 1, type metadata accessor for MetricsManager.PersonHeightMetric, &qword_1004A73E8, &unk_1003DAF88, type metadata accessor for MetricsManager.PersonHeightMetric);
  v22 = sub_100198230(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1000BD40C(v12, a2, a3, a1, v18, type metadata accessor for MetricsManager.PersonHeightMetric, type metadata accessor for MetricsManager.PersonHeightMetric);
}

uint64_t sub_1000BB8F0(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100198568(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_1000BE3A0();
    goto LABEL_7;
  }

  sub_1000B773C(result, a3 & 1);
  result = sub_100198568(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1000BD4B8(v14, v11, a1, v20);
}

_OWORD *sub_1000BBA8C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10019C358(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1000BE610();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1000B7AFC(v13, a3 & 1);
    v8 = sub_10019C358(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_10000FF00(v19);

    return sub_1000C0FAC(a1, v19);
  }

  else
  {
    sub_1000BD570(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_1000BBBE0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_100198230(a2, a3);
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
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_1000B8084(v18, a4 & 1, a5);
      v13 = sub_100198230(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v13, v25);
      }
    }

    else
    {
      v21 = v13;
      sub_1000BE934(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v13);
    *(v24 + 8 * v13) = a1;

    return _objc_release_x1(v13, v25);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a2;
  v26[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

uint64_t sub_1000BBDA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100198230(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for MetricsManager.VerticalGuideMetric(0);
      return sub_1000C1CCC(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for MetricsManager.VerticalGuideMetric);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1000BD8B8(type metadata accessor for MetricsManager.VerticalGuideMetric, &qword_1004A7350, &unk_1003DAEC8, type metadata accessor for MetricsManager.VerticalGuideMetric);
    goto LABEL_7;
  }

  sub_1000B65C0(v15, a4 & 1, type metadata accessor for MetricsManager.VerticalGuideMetric, &qword_1004A7350, &unk_1003DAEC8, type metadata accessor for MetricsManager.VerticalGuideMetric);
  v22 = sub_100198230(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1000BD40C(v12, a2, a3, a1, v18, type metadata accessor for MetricsManager.VerticalGuideMetric, type metadata accessor for MetricsManager.VerticalGuideMetric);
}

unint64_t sub_1000BBFA8(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100198230(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1000B7DE0(v16, a3 & 1);
      result = sub_100198230(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1000BE7CC();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 4 * result) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1000BC118(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100198230(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000B85A0(v16, a4 & 1);
      v11 = sub_100198230(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1000BEBDC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;
    v23 = *(v22 + 40);
    v24 = a1[1];
    *v22 = *a1;
    *(v22 + 16) = v24;
    *(v22 + 32) = a1[2];
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v21[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  v27 = (v21[7] + 48 * v11);
  v28 = a1[1];
  *v27 = *a1;
  v27[1] = v28;
  v27[2] = a1[2];
  v29 = v21[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v30;
}

unint64_t sub_1000BC2E0(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10019851C(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 < v14 || (a2 & 1) != 0)
    {
      sub_1000B8E4C(v14, a2 & 1);
      result = sub_10019851C(a3);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1000BEF48();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a3;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_1000BC434(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100198770(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_1000BF0A4();
    goto LABEL_7;
  }

  sub_1000B90C8(result, a3 & 1);
  result = sub_100198770(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1000BD6C0(v14, v11, a1, v20);
}

unint64_t sub_1000BC5D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100198844(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1000B9488(v14, a3 & 1);
      result = sub_100198844(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        type metadata accessor for WorldPlane();
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1000BF314();
      result = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a2;
  *(v19[7] + 8 * result) = a1;
  v20 = v19[2];
  v13 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;
}

unint64_t sub_1000BC718(uint64_t a1, uint64_t a2, char a3, float a4, float a5, float a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_100198230(a1, a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 < v20 || (a3 & 1) != 0)
    {
      sub_1000B9738(v20, a3 & 1);
      result = sub_100198230(a1, a2);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_1000BF470();
      result = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 12 * result);
    *v26 = a4;
    v26[1] = a5;
    v26[2] = a6;
    return result;
  }

  v25[(result >> 6) + 8] |= 1 << result;
  v27 = (v25[6] + 16 * result);
  *v27 = a1;
  v27[1] = a2;
  v28 = (v25[7] + 12 * result);
  *v28 = a4;
  v28[1] = a5;
  v28[2] = a6;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25[2] = v30;
}

uint64_t sub_1000BC8A0(int *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *a1;
  v9 = a1[1];
  v12 = a1[2];
  v11 = a1[3];
  v14 = a1[4];
  v13 = a1[5];
  v15 = *v4;
  result = sub_100198230(a2, a3);
  v18 = v15[2];
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = v17;
  v23 = v15[3];
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      v24 = result;
      sub_1000BF5F0();
      result = v24;
      goto LABEL_8;
    }

    sub_1000B99F4(v21, a4 & 1);
    result = sub_100198230(a2, a3);
    if ((v22 & 1) != (v25 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v5;
  if (v22)
  {
    v27 = (v26[7] + 24 * result);
    *v27 = v10;
    v27[1] = v9;
    v27[2] = v12;
    v27[3] = v11;
    v27[4] = v14;
    v27[5] = v13;
  }

  else
  {
    v28[0] = v10;
    v28[1] = v9;
    v28[2] = v12;
    v28[3] = v11;
    v28[4] = v14;
    v28[5] = v13;
    sub_1000BD778(result, a2, a3, v28, v26);
  }

  return result;
}

unint64_t sub_1000BCA18(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10019C35C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      v20 = v19[7];
      v21 = *(v20 + 8 * result);
      *(v20 + 8 * result) = a1;

      return _objc_release_x1(result, v21);
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1000BF770();
    result = v17;
    goto LABEL_8;
  }

  sub_1000B9CB8(v14, a3 & 1);
  result = sub_10019C35C(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return _objc_release_x1(result, v21);
}

id sub_1000BCB60(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10019C358(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1000B9F44(v13, a3 & 1);
      v8 = sub_10019C358(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for Key(0);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_1000BF8CC();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return _objc_release_x1(v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

id sub_1000BCCC8(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1001988D0(a2, a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_1000BA208(v15, a4 & 1);
      v10 = sub_1001988D0(a2, a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v10, v22);
      }
    }

    else
    {
      v18 = v10;
      sub_1000BFA2C();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v10);
    *(v21 + 8 * v10) = a1;

    return _objc_release_x1(v10, v22);
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  v23 = (v20[6] + 16 * v10);
  *v23 = a2;
  v23[1] = a3;
  *(v20[7] + 8 * v10) = a1;
  v24 = v20[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;

  return a3;
}

_OWORD *sub_1000BCE4C(_OWORD *a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1001988D0(a2, a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      sub_1000BFBAC();
      v10 = v18;
      goto LABEL_8;
    }

    sub_1000BA4DC(v15, a4 & 1);
    v10 = sub_1001988D0(a2, a3);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 32 * v10);
    sub_10000FF00(v21);

    return sub_1000C0FAC(a1, v21);
  }

  else
  {
    sub_1000BD7D4(v10, a2, a3, a1, v20);

    return a3;
  }
}

unint64_t sub_1000BCFA4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10019C32C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1000BFD4C();
    result = v17;
    goto LABEL_8;
  }

  sub_1000BA7B8(v14, a3 & 1);
  result = sub_10019C32C(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1000BD0F8(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  v8 = v5;
  v12 = *v5;
  result = a4(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_8:
    v23 = *v8;
    if (v19)
    {
      v24 = v23[7];
      v25 = *(v24 + 8 * result);
      *(v24 + 8 * result) = a1;

      return _objc_release_x1(result, v25);
    }

    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 8 * result) = a2;
    *(v23[7] + 8 * result) = a1;
    v26 = v23[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v17)
    {
      v23[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    v21 = result;
    sub_1000BFEC0(a5);
    result = v21;
    goto LABEL_8;
  }

  sub_1000BAA1C(v18, a3 & 1, a5);
  result = a4(a2);
  if ((v19 & 1) == (v22 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return _objc_release_x1(result, v25);
}

unint64_t sub_1000BD2AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10019C32C(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000BAC7C(v16, a4 & 1);
      result = sub_10019C32C(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1000C000C();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_1000BD40C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_1000C1BC0(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_1000BD4B8(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_1000BD570(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1000C0FAC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1000BD5D8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1000BD620(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v6[2] = a4[2];
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1000BD67C(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a4;
  *(a3[7] + 8 * result) = a2;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

uint64_t sub_1000BD6C0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for URL();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1000BD778(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 24 * result;
  *v6 = *a4;
  *(v6 + 16) = *(a4 + 16);
  v7 = a5[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v9;
  }

  return result;
}

_OWORD *sub_1000BD7D4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000C0FAC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_1000BD8B8(uint64_t (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v40 = a4;
  v6 = v4;
  v7 = a1(0);
  v39 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v38 = &v37 - v8;
  sub_10000F974(a2);
  v9 = *v4;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v37 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v41 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = v9;
        v30 = *v28;
        v31 = v28[1];
        v32 = v38;
        v33 = *(v39 + 72) * v25;
        v34 = v40;
        sub_1000C1B58(v27 + v33, v38, v40);
        v35 = v41;
        v36 = (*(v41 + 48) + v26);
        *v36 = v30;
        v36[1] = v31;
        v9 = v29;
        sub_1000C1BC0(v32, *(v35 + 56) + v33, v34);

        v20 = v42;
      }

      while (v42);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v37;
        v11 = v41;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v42 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}