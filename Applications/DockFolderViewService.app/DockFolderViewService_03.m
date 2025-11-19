uint64_t sub_10003AD30(__int16 a1, char a2, __int16 a3, char a4, double a5, double a6, double a7, double a8)
{
  v9 = HIBYTE(a3);
  v15 = HIBYTE(a1);
  v16 = (a1 & 1) == 0;
  if (a1)
  {
    v17 = 7233894;
  }

  else
  {
    v17 = 1684632167;
  }

  if (v16)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE300000000000000;
  }

  v19 = (a3 & 1) == 0;
  if (a3)
  {
    v20 = 7233894;
  }

  else
  {
    v20 = 1684632167;
  }

  if (v19)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  if (v17 == v20 && v18 == v21)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v23 = 0;
    if ((v22 & 1) == 0)
    {
      return v23 & 1;
    }
  }

  v24 = sub_10001A620(v15, v9);
  v23 = a2 ^ a4 ^ 1;
  if (a6 != a8)
  {
    v23 = 0;
  }

  if (a5 != a7)
  {
    v23 = 0;
  }

  if ((v24 & 1) == 0)
  {
    v23 = 0;
  }

  return v23 & 1;
}

void sub_10003AE44(int a1, _BYTE *a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  LODWORD(v137) = a1;
  v135 = type metadata accessor for UUID();
  v134 = *(v135 - 8);
  v21 = *(v134 + 64);
  __chkstk_darwin(v135);
  v133 = &v128[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v128[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v30 = &v128[-v29];
  __chkstk_darwin(v31);
  v136 = &v128[-v32];
  __chkstk_darwin(v33);
  v35 = &v128[-v34];
  v36 = &a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
  *v36 = a4;
  v36[1] = a5;
  v36[2] = a6;
  v36[3] = a7;
  *(v36 + 32) = 0;
  v37 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView];
  v140 = a3;
  [v37 setFrame:{a4, a5, a6, a7}];
  v38 = &a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockFrame];
  *v38 = a8;
  v38[1] = a9;
  v38[2] = a10;
  v38[3] = a11;
  *(v38 + 32) = 0;
  [*&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView] setFrame:{a4, a5, a6, a7}];
  [*&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView] setFrame:{a4, a5, a6, a7}];
  v39 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState;
  v40 = a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState] == 1;
  v142 = v23;
  v132 = v30;
  v138 = v40 && *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] && *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] != 0;
  static Logger.UI.getter();
  v41 = a2;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  v44 = os_log_type_enabled(v42, v43);
  v139 = v24;
  v131 = v27;
  v141 = v39;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v147[0] = v130;
    *v45 = 136316930;
    *(v45 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, v147);
    v46 = v41;
    *(v45 + 12) = 2080;
    v47 = *&v41[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v48 = *&v41[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v49 = sub_100037B98(v47, v48, v147);

    *(v45 + 14) = v49;
    *(v45 + 22) = 2080;
    LOBYTE(v143) = a2[v141];
    v50 = String.init<A>(describing:)();
    v52 = sub_100037B98(v50, v51, v147);

    *(v45 + 24) = v52;
    *(v45 + 32) = 1024;
    *(v45 + 34) = v138;
    *(v45 + 38) = 2080;
    v143 = a4;
    v144 = a5;
    v145 = a6;
    v146 = a7;
    type metadata accessor for CGRect(0);
    v53 = String.init<A>(describing:)();
    v55 = sub_100037B98(v53, v54, v147);

    *(v45 + 40) = v55;
    *(v45 + 48) = 2080;
    v143 = a8;
    v144 = a9;
    v145 = a10;
    v146 = a11;
    v56 = String.init<A>(describing:)();
    v58 = sub_100037B98(v56, v57, v147);

    *(v45 + 50) = v58;
    *(v45 + 58) = 1024;
    *(v45 + 60) = v137 & 1;
    *(v45 + 64) = 2080;
    v59 = v41;
    v60 = [v59 description];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v24 = v139;
    v64 = sub_100037B98(v61, v63, v147);
    v41 = v46;

    *(v45 + 66) = v64;
    v39 = v141;
    _os_log_impl(&_mh_execute_header, v42, v43, "%s identifier: %s transitionState: %s retargetExistingAnimation: %{BOOL}d iconFrame: %s dockFrame: %s animated: %{BOOL}dnodes count:%s", v45, 0x4Au);
    swift_arrayDestroy();
  }

  v65 = *(v24 + 8);
  v66 = v142;
  v65(v35, v142);
  v67 = a2[v39];
  if (v67 == 3)
  {
    goto LABEL_11;
  }

  if (v67 == 1)
  {
    v80 = v41;
    v81 = v132;
    static Logger.UI.getter();
    v82 = v80;
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v129 = v84;
      v86 = v85;
      v87 = swift_slowAlloc();
      v130 = v65;
      v143 = *&v87;
      *v86 = 136315650;
      *(v86 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v143);
      *(v86 + 12) = 2080;
      v88 = &v82[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
      v89 = v39;
      v136 = v41;
      v90 = *v88;
      v91 = v88[1];

      v92 = sub_100037B98(v90, v91, &v143);

      *(v86 + 14) = v92;
      *(v86 + 22) = 2080;
      LOBYTE(v147[0]) = a2[v89];
      v93 = String.init<A>(describing:)();
      v95 = sub_100037B98(v93, v94, &v143);
      v39 = v89;

      *(v86 + 24) = v95;
      v41 = v136;
      _os_log_impl(&_mh_execute_header, v83, v129, "%s identifier: %s transitionState: %s is in the middle of a expand animation. Retargeting animation", v86, 0x20u);
      swift_arrayDestroy();
      v65 = v130;
    }

    v65(v81, v66);
LABEL_19:
    v98 = v133;
    UUID.init()();
    v99 = UUID.uuidString.getter();
    v101 = v100;
    (*(v134 + 8))(v98, v135);
    v102 = &v41[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    v103 = *&v41[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
    *v102 = v99;
    v102[1] = v101;

    v104 = a2[v39];
    a2[v39] = 3;
    sub_10001B944(v104);
    v105 = v102[1];
    if (!v105)
    {
      v127 = v140;

      __break(1u);
      return;
    }

    v106 = *v102;
    v107 = objc_opt_self();

    v108 = [v107 areAnimationsEnabled];
    p_type = (&stru_1000B6FF0 + 16);
    if ((v137 & 1) == 0)
    {
      v141 = v106;
      v110 = v131;
      static Logger.UI.getter();
      v111 = v41;
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v130 = v65;
        v137 = v115;
        v143 = *&v115;
        *v114 = 136315650;
        *(v114 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v143);
        *(v114 + 12) = 2080;
        v116 = v108;
        v117 = v41;
        v118 = *&v111[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
        v119 = *&v111[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

        v120 = sub_100037B98(v118, v119, &v143);

        *(v114 + 14) = v120;
        v41 = v117;
        v108 = v116;
        *(v114 + 22) = 1024;
        *(v114 + 24) = 0;
        _os_log_impl(&_mh_execute_header, v112, v113, "%s identifier: %s setting animations enabled: %{BOOL}d", v114, 0x1Cu);
        swift_arrayDestroy();

        v130(v110, v142);
      }

      else
      {

        v65(v110, v142);
      }

      p_type = &stru_1000B6FF0.type;
      [v107 setAnimationsEnabled:0];
      v106 = v141;
    }

    v121 = v140;
    if (v41[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration])
    {
      v122 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v122 & 1) == 0)
      {
        v123 = v121;
        v124 = v41;
        sub_10001447C(0, v138, v106, v105, v124, v124, v123, a4, a5, a6, a7);
LABEL_30:

        [v107 p_type[433]];
        return;
      }
    }

    else
    {
    }

    v125 = v121;
    v126 = v41;
    sub_1000129E8(0, v138, v106, v105, v126, v126, v125, a4, a5, a6, a7);
    goto LABEL_30;
  }

  if (a2[v39])
  {
    v97 = v41;
    goto LABEL_19;
  }

LABEL_11:
  v68 = v41;
  v69 = v136;
  static Logger.UI.getter();
  v70 = v68;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v143 = COERCE_DOUBLE(swift_slowAlloc());
    *v73 = 136315650;
    *(v73 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v143);
    *(v73 + 12) = 2080;
    v130 = v65;
    v74 = *&v70[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v75 = *&v70[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v76 = sub_100037B98(v74, v75, &v143);

    *(v73 + 14) = v76;
    *(v73 + 22) = 2080;
    LOBYTE(v147[0]) = a2[v141];
    v77 = String.init<A>(describing:)();
    v79 = sub_100037B98(v77, v78, &v143);

    *(v73 + 24) = v79;
    _os_log_impl(&_mh_execute_header, v71, v72, "%s identifier: %s transitionState: %s is collapsed. Ignoring request.", v73, 0x20u);
    swift_arrayDestroy();

    v130(v136, v66);
  }

  else
  {

    v65(v69, v66);
  }

  v96 = v140;
}

uint64_t sub_10003BB40()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v0[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *(*(v7 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = *(v7 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver);

  v10 = v8;
  v11 = dispatch thunk of DOCNodeCollection.observedNode.getter();

  if (v11)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100049360(v1, v11);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
LABEL_6:
    static Logger.UI.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_100037B98(0xD000000000000024, 0x8000000100092D90, &v18);
      _os_log_impl(&_mh_execute_header, v12, v13, "%s could not get observed node", v14, 0xCu);
      sub_1000064E0(v15);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_10003BDA8(int a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
    if (v14)
    {
      [v14 removeFromSuperview];
    }

    [*&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] removeFromSuperview];
    sub_100020968();
    sub_100020BF0();
    v15 = a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState] = 0;
    sub_10001B944(v15);
    v16 = &a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    v17 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
    *v16 = 0;
    v16[1] = 0;

    v18 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
    *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = 0;

    v19 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts];
    *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = 0;
  }

  static Logger.UI.getter();
  v20 = a2;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v35 = v9;
    v24 = v23;
    v25 = swift_slowAlloc();
    HIDWORD(v33) = a1;
    v38 = v25;
    *v24 = 136315906;
    *(v24 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v38);
    v34 = v8;
    *(v24 + 12) = 2080;
    v36 = a4;
    v26 = *&v20[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v27 = *&v20[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v28 = sub_100037B98(v26, v27, &v38);

    *(v24 + 14) = v28;
    *(v24 + 22) = 2080;
    v37 = v20[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    v29 = String.init<A>(describing:)();
    v31 = sub_100037B98(v29, v30, &v38);

    *(v24 + 24) = v31;
    a4 = v36;
    *(v24 + 32) = 1024;
    *(v24 + 34) = BYTE4(v33) & 1;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s animationCompletion identifier: %s transitionState: %s finished: %{BOOL}d", v24, 0x26u);
    swift_arrayDestroy();

    (*(v35 + 8))(v13, v34);
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  return sub_100059860(a3, a4);
}

id sub_10003C0DC(int a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
    if (v13)
    {
      [v13 removeFromSuperview];
    }

    [*&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] removeFromSuperview];
    sub_100020968();
    sub_100020BF0();
    v14 = a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState] = 0;
    sub_10001B944(v14);
    v15 = &a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    v16 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
    *v15 = 0;
    v15[1] = 0;

    v17 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
    *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = 0;

    v18 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts];
    *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = 0;
  }

  static Logger.UI.getter();
  v19 = a2;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v34 = v8;
    v23 = v22;
    v24 = swift_slowAlloc();
    HIDWORD(v32) = a1;
    v37 = v24;
    *v23 = 136315906;
    *(v23 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v37);
    v33 = v7;
    *(v23 + 12) = 2080;
    v35 = a4;
    v25 = *&v19[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v26 = *&v19[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v27 = sub_100037B98(v25, v26, &v37);

    *(v23 + 14) = v27;
    *(v23 + 22) = 2080;
    v36 = v19[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    v28 = String.init<A>(describing:)();
    v30 = sub_100037B98(v28, v29, &v37);

    *(v23 + 24) = v30;
    a4 = v35;
    *(v23 + 32) = 1024;
    *(v23 + 34) = BYTE4(v32) & 1;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s animationCompletion identifier: %s transitionState: %s finished: %{BOOL}d", v23, 0x26u);
    swift_arrayDestroy();

    (*(v34 + 8))(v12, v33);
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result completeContextRequestUpdateFromHost:a4 withError:0];
  }

  return result;
}

unint64_t sub_10003C434(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000ADB08, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10003C480(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void sub_10003C490(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, double a6, double a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v12 = a4;
  LODWORD(v55) = a4 >> 8;
  HIDWORD(v55) = a5;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderPresentationControllerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v17 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dimmingView;
  *&v10[v17] = [objc_allocWithZone(UIView) init];
  v18 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_cellContentPool;
  v19 = type metadata accessor for DOCItemCollectionCellContentPool();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *&v10[v18] = DOCItemCollectionCellContentPool.init()();
  v22 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView;
  v23 = a3;
  *&v10[v22] = [objc_allocWithZone(UIView) init];
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView] = 0;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView] = 0;
  v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState] = 0;
  v24 = &v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v24[32] = 1;
  v25 = &v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockFrame];
  *v25 = 0u;
  *(v25 + 1) = 0u;
  v25[32] = 1;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView] = 0;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewFINodeDataSource] = 0;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewFPNodeDataSource] = 0;
  v26 = &v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderCollectionObserverUpdateHandler];
  *v26 = 0;
  v26[1] = 0;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer] = 0;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewBackgroundTapRecognizer] = 0;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_indexPathsOfItemsPinnedToBottomObserver] = 0;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_bottomItemPositionProgressObserver] = 0;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_contentOffsetObserver] = 0;
  v27 = &v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
  *v27 = 0;
  v27[1] = 0;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = 0;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = 0;
  v28 = &v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_gridViewAnimationSpecOverride];
  v57 = 1;
  *v28 = 0u;
  *(v28 + 1) = 0u;
  *(v28 + 2) = 0u;
  *(v28 + 3) = 0u;
  *(v28 + 4) = 0u;
  v28[80] = 1;
  v29 = &v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
  *v29 = a1;
  v29[1] = a2;
  v30 = &v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
  *v30 = v12 & 1;
  *(v30 + 1) = v55;
  v30[1] = a6;
  v30[2] = a7;
  *(v30 + 24) = BYTE4(v55);
  v31 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_directoryURL;
  v32 = type metadata accessor for URL();
  v33 = *(v32 - 8);
  (*(v33 + 16))(&v10[v31], v23, v32);
  swift_unknownObjectWeakAssign();
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_imageCache] = a9;
  v56.receiver = v10;
  v56.super_class = type metadata accessor for DOCSBFolderPresentationController(0);

  v34 = objc_msgSendSuper2(&v56, "init");
  v35 = objc_allocWithZone(UITapGestureRecognizer);
  v36 = v34;
  v37 = [v35 initWithTarget:v36 action:"handleDockIconTapped:"];
  v38 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView;
  [*&v36[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] addGestureRecognizer:v37];
  [*&v36[v38] setUserInteractionEnabled:1];
  v39 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v36 action:"handleCollectionViewBackgroundTapped:"];
  v40 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewBackgroundTapRecognizer;
  v41 = *&v36[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewBackgroundTapRecognizer];
  *&v36[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewBackgroundTapRecognizer] = v39;
  v42 = v39;

  if (!v42)
  {
    __break(1u);
    goto LABEL_9;
  }

  [v42 setEnabled:0];

  v43 = *&v36[v40];
  if (!v43)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v44 = v43;

  [v44 setDelegate:v36];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v46 = Strong;
    [Strong addSubview:*&v36[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dimmingView]];
  }

  v47 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dimmingView;
  [*&v36[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dimmingView] setTranslatesAutoresizingMaskIntoConstraints:{0, a1, v55}];
  v48 = *&v36[v47];
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 clearColor];
  [v50 setBackgroundColor:v51];

  [*&v36[v47] setUserInteractionEnabled:0];
  v52 = *&v36[v47];
  isa = DOCConstraintsToResizeWithSuperview();
  if (!isa)
  {
    sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [objc_opt_self() activateConstraints:isa];

  (*(v33 + 8))(v23, v32);
}

id sub_10003C9EC(_BYTE *a1, uint64_t a2, unint64_t a3, int a4, void (*a5)(void), uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18)
{
  LODWORD(v100) = a4;
  v105 = a3;
  *&v98 = a14;
  *&v97 = a13;
  *&v96 = a12;
  *&v95 = a11;
  v26 = type metadata accessor for Logger();
  v103 = *(v26 - 8);
  v104 = v26;
  v27 = *(v103 + 64);
  __chkstk_darwin(v26);
  __chkstk_darwin(v28);
  v30 = &v91 - v29;
  v31 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState;
  v32 = a1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
  v99 = v33;
  v102 = v32 == 3 && *&a1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] && *&a1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] != 0;
  a1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState] = 1;
  sub_10001B944(v32);
  static Logger.UI.getter();
  v34 = a1;

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  v37 = os_log_type_enabled(v35, v36);
  v101 = a2;
  if (v37)
  {
    v93 = a5;
    v94 = a6;
    v38 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v109[0] = v92;
    *v38 = 136317186;
    *(v38 + 4) = sub_100037B98(0xD000000000000023, 0x8000000100092BA0, v109);
    *(v38 + 12) = 2080;
    v39 = *&v34[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v40 = *&v34[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v41 = sub_100037B98(v39, v40, v109);

    *(v38 + 14) = v41;
    *(v38 + 22) = 2080;
    LOBYTE(v106) = a1[v31];
    v42 = String.init<A>(describing:)();
    v44 = sub_100037B98(v42, v43, v109);

    *(v38 + 24) = v44;
    *(v38 + 32) = 1024;
    *(v38 + 34) = v102;
    *(v38 + 38) = 2080;
    *&v106 = a7;
    *(&v106 + 1) = a8;
    *&v107 = a9;
    *(&v107 + 1) = a10;
    type metadata accessor for CGRect(0);
    v45 = String.init<A>(describing:)();
    v47 = sub_100037B98(v45, v46, v109);

    *(v38 + 40) = v47;
    *(v38 + 48) = 2080;
    *&v106 = v95;
    *(&v106 + 1) = v96;
    *&v107 = v97;
    *(&v107 + 1) = v98;
    v48 = String.init<A>(describing:)();
    v50 = sub_100037B98(v48, v49, v109);

    *(v38 + 50) = v50;
    *(v38 + 58) = 2080;
    v51 = v34;
    Strong = swift_unknownObjectWeakLoadStrong();
    v53 = Strong;
    if (Strong)
    {
      [Strong frame];
      v96 = v54;
      v97 = v55;
      v95 = v56;
      v98 = v57;

      *&v59 = v95;
      *&v58 = v96;
      *(&v58 + 1) = v97;
      *(&v59 + 1) = v98;
    }

    else
    {
      v58 = 0uLL;
      v59 = 0uLL;
    }

    v106 = v58;
    v107 = v59;
    v108 = v53 == 0;
    sub_10000589C(&qword_1000BC4F0, qword_100090BF0);
    v61 = String.init<A>(describing:)();
    v63 = sub_100037B98(v61, v62, v109);

    *(v38 + 60) = v63;
    *(v38 + 68) = 2080;
    v106 = a17;
    v107 = a18;
    v64 = String.init<A>(describing:)();
    v66 = sub_100037B98(v64, v65, v109);

    *(v38 + 70) = v66;
    *(v38 + 78) = 2080;
    a2 = v101;
    *(v38 + 80) = sub_100037B98(v101, v105, v109);
    _os_log_impl(&_mh_execute_header, v35, v36, "%s identifier: %s transitionState: %s retargetExistingAnimation: %{BOOL}d iconFrame: %s dockFrame: %s hostView frame: %s collectionView frame: %s animationID: %s", v38, 0x58u);
    swift_arrayDestroy();

    v60 = *(v103 + 8);
    v60(v30, v104);
    a6 = v94;
    a5 = v93;
  }

  else
  {
    v51 = v34;

    v60 = *(v103 + 8);
    v60(v30, v104);
  }

  v67 = objc_opt_self();
  v68 = [v67 areAnimationsEnabled];
  p_type = (&stru_1000B6FF0 + 16);
  v70 = v51;
  if ((v100 & 1) == 0)
  {
    v100 = v60;
    v71 = v99;
    static Logger.UI.getter();
    v72 = v51;
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      LODWORD(v97) = v74;
      v76 = v75;
      *&v98 = swift_slowAlloc();
      *&v106 = v98;
      *v76 = 136315650;
      *(v76 + 4) = sub_100037B98(0xD000000000000023, 0x8000000100092BA0, &v106);
      *(v76 + 12) = 2080;
      v77 = &v72[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
      v78 = v68;
      v79 = v67;
      v80 = a5;
      v81 = a6;
      v82 = *&v72[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
      v83 = *(v77 + 1);

      v84 = sub_100037B98(v82, v83, &v106);
      a6 = v81;
      a5 = v80;
      v67 = v79;
      v68 = v78;
      p_type = &stru_1000B6FF0.type;

      *(v76 + 14) = v84;
      *(v76 + 22) = 1024;
      *(v76 + 24) = 0;
      _os_log_impl(&_mh_execute_header, v73, v97, "%s identifier: %s setting animations enabled: %{BOOL}d", v76, 0x1Cu);
      swift_arrayDestroy();
    }

    v100(v71, v104);
    [v67 p_type[433]];
    a2 = v101;
  }

  if ((v70[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration] & 1) == 0)
  {

    goto LABEL_21;
  }

  v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v85)
  {
LABEL_21:
    v89 = *&v70[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
    if (v89)
    {
      v90 = v89;
      sub_100063488(0);

      sub_100006B60(1, v102, a2, v105, a5, a6, *&a17, *(&a17 + 1), *&a18, *(&a18 + 1));
      return [v67 p_type[433]];
    }

    __break(1u);
    goto LABEL_25;
  }

  v87 = *&v70[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
  if (!v87)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v88 = v87;
  sub_100063768(0);

  result = *&v70[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewBackgroundTapRecognizer];
  if (result)
  {
    [result setEnabled:1];
    sub_10000AC10(1, v102, a2, v105, a5, a6, *&a17, *(&a17 + 1), *&a18, *(&a18 + 1));
    return [v67 p_type[433]];
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_10003D250(int a1, void *a2, void *a3, unint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v130 = a3;
  v135 = a1;
  v133 = type metadata accessor for UUID();
  v22 = *(v133 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v133);
  v131 = &v124[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = type metadata accessor for Logger();
  v139 = *(v25 - 8);
  v26 = *(v139 + 64);
  __chkstk_darwin(v25);
  v28 = &v124[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v138 = &v124[-v30];
  __chkstk_darwin(v31);
  v33 = &v124[-v32];
  __chkstk_darwin(v34);
  v36 = &v124[-v35];
  v37 = (a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame);
  *v37 = a5;
  v37[1] = a6;
  v37[2] = a7;
  v37[3] = a8;
  *(v37 + 32) = 0;
  v38 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView);
  v137 = a4;
  swift_bridgeObjectRetain_n();
  [v38 setFrame:{a5, a6, a7, a8}];
  v39 = (a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockFrame);
  *v39 = a9;
  v39[1] = a10;
  v39[2] = a11;
  v39[3] = a12;
  *(v39 + 32) = 0;
  [*(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView) setFrame:{a5, a6, a7, a8}];
  [*(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView) setFrame:{a5, a6, a7, a8}];
  v40 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState;
  v41 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState);
  v134 = v33;
  v42 = v41 == 1 && *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts) && *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts) != 0;
  v128 = v28;
  static Logger.UI.getter();
  v43 = a2;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  v46 = os_log_type_enabled(v44, v45);
  v136 = v25;
  v129 = v42;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v132 = v40;
    v48 = v47;
    v126 = swift_slowAlloc();
    v144[0] = v126;
    *v48 = 136316930;
    *(v48 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, v144);
    v125 = v45;
    *(v48 + 12) = 2080;
    v127 = v22;
    v49 = *&v43[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v50 = *&v43[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v51 = sub_100037B98(v49, v50, v144);

    *(v48 + 14) = v51;
    *(v48 + 22) = 2080;
    LOBYTE(v140) = v132[a2];
    v52 = String.init<A>(describing:)();
    v54 = sub_100037B98(v52, v53, v144);

    *(v48 + 24) = v54;
    *(v48 + 32) = 1024;
    *(v48 + 34) = v42;
    *(v48 + 38) = 2080;
    v140 = a5;
    v141 = a6;
    v142 = a7;
    v143 = a8;
    type metadata accessor for CGRect(0);
    v55 = String.init<A>(describing:)();
    v57 = sub_100037B98(v55, v56, v144);

    *(v48 + 40) = v57;
    *(v48 + 48) = 2080;
    v140 = a9;
    v141 = a10;
    v142 = a11;
    v143 = a12;
    v58 = String.init<A>(describing:)();
    v60 = sub_100037B98(v58, v59, v144);

    *(v48 + 50) = v60;
    *(v48 + 58) = 1024;
    *(v48 + 60) = v135 & 1;
    *(v48 + 64) = 2080;
    v61 = v43;
    v62 = v43;
    v63 = [v62 description];
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    v22 = v127;
    v67 = v64;
    v25 = v136;
    v68 = sub_100037B98(v67, v66, v144);

    *(v48 + 66) = v68;
    _os_log_impl(&_mh_execute_header, v44, v125, "%s identifier: %s transitionState: %s retargetExistingAnimation: %{BOOL}d iconFrame: %s dockFrame: %s animated: %{BOOL}dnodes count:%s", v48, 0x4Au);
    swift_arrayDestroy();

    v40 = v132;
  }

  else
  {
    v61 = v43;
  }

  v69 = *(v139 + 8);
  (v69)(v36, v25);
  v70 = v138;
  v71 = *(a2 + v40);
  if (v71 == 3)
  {
    goto LABEL_11;
  }

  if (v71 == 1)
  {
    v134 = v61;
    v84 = v61;
    static Logger.UI.getter();
    v85 = v84;
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v140 = *&v127;
      *v88 = 136315650;
      *(v88 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v140);
      v132 = v69;
      *(v88 + 12) = 2080;
      v89 = *&v85[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
      v90 = *&v85[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

      v91 = sub_100037B98(v89, v90, &v140);

      *(v88 + 14) = v91;
      *(v88 + 22) = 2080;
      LOBYTE(v144[0]) = *(a2 + v40);
      v92 = String.init<A>(describing:)();
      v94 = sub_100037B98(v92, v93, &v140);

      *(v88 + 24) = v94;
      _os_log_impl(&_mh_execute_header, v86, v87, "%s identifier: %s transitionState: %s is in the middle of a expand animation. Retargeting animation", v88, 0x20u);
      swift_arrayDestroy();

      v69 = v132;
      (v132)(v138, v25);
    }

    else
    {

      (v69)(v70, v25);
    }

    v61 = v134;
LABEL_20:
    v96 = v131;
    UUID.init()();
    v97 = UUID.uuidString.getter();
    v99 = v98;
    (*(v22 + 8))(v96, v133);
    v100 = &v61[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    v101 = *&v61[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
    *v100 = v97;
    v100[1] = v99;

    v102 = *(a2 + v40);
    *(a2 + v40) = 3;
    sub_10001B944(v102);
    v103 = v100[1];
    if (!v103)
    {
      swift_bridgeObjectRelease_n();

      __break(1u);
      return;
    }

    v104 = *v100;
    v105 = objc_opt_self();

    v106 = [v105 areAnimationsEnabled];
    p_type = (&stru_1000B6FF0 + 16);
    if ((v135 & 1) == 0)
    {
      v138 = v104;
      v132 = v69;
      v108 = v128;
      static Logger.UI.getter();
      v109 = v61;
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v134 = v61;
        v140 = *&v113;
        *v112 = 136315650;
        *(v112 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v140);
        *(v112 + 12) = 2080;
        v114 = &v109[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
        v115 = v106;
        v117 = *&v109[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
        v116 = *(v114 + 1);

        v118 = sub_100037B98(v117, v116, &v140);
        v106 = v115;
        p_type = &stru_1000B6FF0.type;

        *(v112 + 14) = v118;
        *(v112 + 22) = 1024;
        *(v112 + 24) = 0;
        _os_log_impl(&_mh_execute_header, v110, v111, "%s identifier: %s setting animations enabled: %{BOOL}d", v112, 0x1Cu);
        swift_arrayDestroy();
        v61 = v134;
      }

      (v132)(v108, v136);
      [v105 p_type[433]];
      v104 = v138;
    }

    if (v61[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration])
    {
      v119 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v119 & 1) == 0)
      {
        v120 = v137;

        v121 = v61;
        sub_10001853C(0, v129, v104, v103, v121, v121, v130, v120, a5, a6, a7, a8);
LABEL_30:

        [v105 p_type[433]];
        swift_bridgeObjectRelease_n();

        return;
      }
    }

    else
    {
    }

    v122 = v137;

    v123 = v61;
    sub_1000151E4(0, v129, v104, v103, v123, v123, v130, v122, a5, a6, a7, a8);
    goto LABEL_30;
  }

  if (*(a2 + v40))
  {
    v95 = v61;
    goto LABEL_20;
  }

LABEL_11:
  v72 = v61;
  v73 = v134;
  static Logger.UI.getter();
  v74 = v72;
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v140 = COERCE_DOUBLE(swift_slowAlloc());
    *v77 = 136315650;
    *(v77 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v140);
    *(v77 + 12) = 2080;
    v132 = v69;
    v78 = *&v74[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v79 = *&v74[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v80 = sub_100037B98(v78, v79, &v140);

    *(v77 + 14) = v80;
    *(v77 + 22) = 2080;
    LOBYTE(v144[0]) = *(a2 + v40);
    v81 = String.init<A>(describing:)();
    v83 = sub_100037B98(v81, v82, &v140);

    *(v77 + 24) = v83;
    _os_log_impl(&_mh_execute_header, v75, v76, "%s identifier: %s transitionState: %s is collapsed. Ignoring request.", v77, 0x20u);
    swift_arrayDestroy();

    (v132)(v134, v136);
  }

  else
  {

    (v69)(v73, v25);
  }

  swift_bridgeObjectRelease_n();
}

void sub_10003DF5C(int a1, _BYTE *a2, void *a3, void *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  LODWORD(v142) = a1;
  v141 = type metadata accessor for UUID();
  v140 = *(v141 - 8);
  v23 = *(v140 + 64);
  __chkstk_darwin(v141);
  v138 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Logger();
  v148 = *(v25 - 8);
  v26 = *(v148 + 64);
  __chkstk_darwin(v25);
  v28 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v136 = &v135 - v30;
  __chkstk_darwin(v31);
  *&v146 = &v135 - v32;
  __chkstk_darwin(v33);
  v35 = &v135 - v34;
  v36 = &a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
  *v36 = a5;
  v36[1] = a6;
  v36[2] = a7;
  v36[3] = a8;
  *(v36 + 32) = 0;
  v37 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView];
  v38 = a3;
  v39 = a4;
  v40 = v38;
  v41 = v39;
  [v37 setFrame:{a5, a6, a7, a8}];
  v42 = &a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockFrame];
  *v42 = a9;
  v42[1] = a10;
  v42[2] = a11;
  v42[3] = a12;
  *(v42 + 32) = 0;
  [*&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView] setFrame:{a5, a6, a7, a8}];
  [*&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView] setFrame:{a5, a6, a7, a8}];
  v43 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState;
  v44 = a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState] == 1;
  v135 = v28;
  v45 = v44 && *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] && *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] != 0;
  static Logger.UI.getter();
  v46 = a2;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();

  v49 = os_log_type_enabled(v47, v48);
  v144 = v40;
  v145 = v41;
  v143 = v25;
  v137 = v45;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v147 = v46;
    v153[0] = v51;
    *v50 = 136316930;
    *(v50 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, v153);
    v139 = v43;
    *(v50 + 12) = 2080;
    v52 = *&v147[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v53 = *&v147[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v54 = sub_100037B98(v52, v53, v153);

    *(v50 + 14) = v54;
    *(v50 + 22) = 2080;
    LOBYTE(v149) = a2[v139];
    v55 = String.init<A>(describing:)();
    v57 = sub_100037B98(v55, v56, v153);

    *(v50 + 24) = v57;
    *(v50 + 32) = 1024;
    *(v50 + 34) = v45;
    *(v50 + 38) = 2080;
    v149 = a5;
    v150 = a6;
    v151 = a7;
    v152 = a8;
    type metadata accessor for CGRect(0);
    v58 = String.init<A>(describing:)();
    v60 = sub_100037B98(v58, v59, v153);

    *(v50 + 40) = v60;
    *(v50 + 48) = 2080;
    v149 = a9;
    v150 = a10;
    v151 = a11;
    v152 = a12;
    v61 = String.init<A>(describing:)();
    v63 = sub_100037B98(v61, v62, v153);

    *(v50 + 50) = v63;
    *(v50 + 58) = 1024;
    *(v50 + 60) = v142 & 1;
    *(v50 + 64) = 2080;
    v64 = v147;
    v65 = [v64 description];
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    v69 = v66;
    v25 = v143;
    v40 = v144;
    v70 = sub_100037B98(v69, v68, v153);
    v43 = v139;

    *(v50 + 66) = v70;
    _os_log_impl(&_mh_execute_header, v47, v48, "%s identifier: %s transitionState: %s retargetExistingAnimation: %{BOOL}d iconFrame: %s dockFrame: %s animated: %{BOOL}dnodes count:%s", v50, 0x4Au);
    swift_arrayDestroy();
    v46 = v147;
  }

  v71 = *(v148 + 8);
  v71(v35, v25);
  v72 = a2[v43];
  v73 = *&v146;
  if (v72 == 3)
  {
    goto LABEL_11;
  }

  if (v72 == 1)
  {
    v88 = v46;
    v89 = v136;
    static Logger.UI.getter();
    v90 = v88;
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      LODWORD(v139) = v92;
      v94 = v93;
      v146 = COERCE_DOUBLE(swift_slowAlloc());
      v147 = v46;
      v149 = v146;
      *v94 = 136315650;
      *(v94 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v149);
      *(v94 + 12) = 2080;
      v95 = &v90[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
      v96 = v43;
      v97 = *&v90[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
      v98 = *(v95 + 1);

      v99 = sub_100037B98(v97, v98, &v149);

      *(v94 + 14) = v99;
      *(v94 + 22) = 2080;
      LOBYTE(v153[0]) = a2[v96];
      v100 = String.init<A>(describing:)();
      v102 = sub_100037B98(v100, v101, &v149);

      *(v94 + 24) = v102;
      v43 = v96;
      _os_log_impl(&_mh_execute_header, v91, v139, "%s identifier: %s transitionState: %s is in the middle of a expand animation. Retargeting animation", v94, 0x20u);
      swift_arrayDestroy();
      v46 = v147;

      v71(v136, v25);
    }

    else
    {

      v71(v89, v25);
    }

LABEL_18:
    v105 = v138;
    UUID.init()();
    v106 = UUID.uuidString.getter();
    v108 = v107;
    (*(v140 + 8))(v105, v141);
    v109 = &v46[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    v110 = *&v46[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
    *v109 = v106;
    v109[1] = v108;

    v111 = a2[v43];
    a2[v43] = 3;
    sub_10001B944(v111);
    v112 = v109[1];
    if (!v112)
    {
      v134 = v145;

      __break(1u);
      return;
    }

    v146 = *v109;
    v113 = objc_opt_self();

    v114 = [v113 areAnimationsEnabled];
    p_type = (&stru_1000B6FF0 + 16);
    if ((v142 & 1) == 0)
    {
      v142 = v71;
      v116 = v135;
      static Logger.UI.getter();
      v117 = v46;
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        *&v121 = COERCE_DOUBLE(swift_slowAlloc());
        v147 = v46;
        v149 = *&v121;
        *v120 = 136315650;
        *(v120 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v149);
        *(v120 + 12) = 2080;
        v122 = v114;
        v123 = *&v117[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
        v124 = *&v117[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

        v125 = sub_100037B98(v123, v124, &v149);

        *(v120 + 14) = v125;
        v114 = v122;
        p_type = &stru_1000B6FF0.type;
        *(v120 + 22) = 1024;
        *(v120 + 24) = 0;
        _os_log_impl(&_mh_execute_header, v118, v119, "%s identifier: %s setting animations enabled: %{BOOL}d", v120, 0x1Cu);
        swift_arrayDestroy();
        v46 = v147;
      }

      v142(v116, v143);
      [v113 p_type[433]];
      v40 = v144;
    }

    v126 = v145;
    if (v46[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration])
    {
      v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v127 & 1) == 0)
      {
        v128 = v40;
        v129 = v126;
        v130 = v46;
        sub_1000192A4(0, v137, *&v146, v112, v130, v130, v128, v129, a5, a6, a7, a8);
LABEL_28:

        [v113 p_type[433]];
        return;
      }
    }

    else
    {
    }

    v131 = v40;
    v132 = v126;
    v133 = v46;
    sub_100016AD0(0, v137, *&v146, v112, v133, v133, v131, v132, a5, a6, a7, a8);
    goto LABEL_28;
  }

  if (a2[v43])
  {
    v104 = v46;
    goto LABEL_18;
  }

LABEL_11:
  v74 = v46;
  static Logger.UI.getter();
  v75 = v74;
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *&v79 = COERCE_DOUBLE(swift_slowAlloc());
    v142 = v71;
    v149 = *&v79;
    *v78 = 136315650;
    *(v78 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v149);
    *(v78 + 12) = 2080;
    v80 = *&v75[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v81 = *&v75[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v82 = sub_100037B98(v80, v81, &v149);

    *(v78 + 14) = v82;
    *(v78 + 22) = 2080;
    LOBYTE(v153[0]) = a2[v43];
    v83 = String.init<A>(describing:)();
    v85 = sub_100037B98(v83, v84, &v149);

    *(v78 + 24) = v85;
    _os_log_impl(&_mh_execute_header, v76, v77, "%s identifier: %s transitionState: %s is collapsed. Ignoring request.", v78, 0x20u);
    swift_arrayDestroy();

    v142(*&v146, v143);
    v86 = v145;

    v87 = v144;
  }

  else
  {

    v71(v73, v25);
    v103 = v145;
  }
}

uint64_t sub_10003ECA8(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_30:
    v9 = result;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    result = v9;
    v5 = -v4;
    if (!__OFSUB__(0, v4))
    {
      goto LABEL_4;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v2 = a2;
  v3 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = -v4;
  if (__OFSUB__(0, v4))
  {
    goto LABEL_32;
  }

LABEL_4:
  v6 = -result;
  if (v5 > 0 || v5 <= v6)
  {
    v7 = v4 - result;
    if (__OFADD__(v4, v6))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v4 < v7)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v4 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = 0;
    if (!v3)
    {
LABEL_8:
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
  if (result < v7)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v7 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v3)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v4)
  {
    goto LABEL_35;
  }

  if (v4 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((v2 & 0xC000000000000001) == 0 || v7 == v4)
  {

    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }

    goto LABEL_28;
  }

  if (v7 < v4)
  {

    v8 = v7;
    do
    {
      sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
      _ArrayBuffer._typeCheckSlowPath(_:)(v8++);
    }

    while (v4 != v8);
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }

LABEL_28:

    return _CocoaArrayWrapper.subscript.getter();
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10003EE74(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return 0;
  }

  (*(v5 + 16))(v8, a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);
  result = sub_10001BBE4(aBlock);
  if (v26)
  {
    sub_100042398(aBlock, v26);
    v10 = dispatch thunk of DOCNodeDiffableDataSourceProtocol.itemIdentifier(at:)();
    if (v10)
    {
      v11 = v10;
      sub_1000064E0(aBlock);
      v12 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource);
      if (v12)
      {
        v13 = *(*(v12 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
        if (v13)
        {
          v14 = *(v12 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver);

          v15 = v13;
          v16 = dispatch thunk of DOCNodeCollection.observedNode.getter();

          if (v16)
          {
            swift_unknownObjectRetain();
            isa = sub_10002A078(v11, v16).super.super.isa;
            type metadata accessor for DOCNodeContextMenuConfiguration();
            v18 = swift_allocObject();
            *(v18 + 16) = isa;
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v27 = sub_100042414;
            v28 = v18;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_10005DE70;
            v26 = &unk_1000AEBC0;
            v20 = _Block_copy(aBlock);
            v24 = isa;

            v21 = [ObjCClassFromMetadata configurationWithIdentifier:0 previewProvider:0 actionProvider:v20];

            _Block_release(v20);
            sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
            v22 = swift_allocObject();
            *(v22 + 16) = xmmword_10008F940;
            *(v22 + 32) = v11;
            swift_unknownObjectRetain();
            dispatch thunk of DOCNodeContextMenuConfiguration.nodes.setter();
            dispatch thunk of DOCNodeContextMenuConfiguration.presentingNode.setter();
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            (*(v5 + 8))(v8, v4);
            return v21;
          }
        }
      }

      swift_unknownObjectRelease();
      (*(v5 + 8))(v8, v4);
    }

    else
    {
      (*(v5 + 8))(v8, v4);
      sub_1000064E0(aBlock);
    }

    return 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_10003F1F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000589C(&qword_1000BC498, &unk_100090BB0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100042774(v4, &v13, &unk_1000BC4A0, &qword_1000913A0);
      v5 = v13;
      v6 = v14;
      result = sub_100037A68(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001A344(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

id sub_10003F320(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v2 = [swift_getObjCClassFromMetadata() providerDomainWithID:a1 cachePolicy:a2 error:&v6];
  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_10003F3EC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Logger();
  v39 = *(v11 - 8);
  v12 = *(v39 + 64);
  __chkstk_darwin(v11);
  v14 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.UI.getter();
  (*(v7 + 16))(v10, a2, v6);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v38 = a1;
    v18 = v17;
    v37 = swift_slowAlloc();
    v40[0] = v37;
    *v18 = 136315394;
    *(v18 + 4) = sub_100037B98(0xD000000000000027, 0x80000001000928A0, v40);
    *(v18 + 12) = 2080;
    sub_1000422FC(&qword_1000BC458, &type metadata accessor for IndexPath);
    v35 = v16;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v11;
    v20 = v3;
    v22 = v21;
    (*(v7 + 8))(v10, v6);
    v23 = sub_100037B98(v19, v22, v40);
    v3 = v20;

    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v15, v35, "%s indexPath: %s", v18, 0x16u);
    swift_arrayDestroy();

    a1 = v38;

    (*(v39 + 8))(v14, v36);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
    (*(v39 + 8))(v14, v11);
  }

  result = sub_10002BAF4();
  if (result >> 62)
  {
    v32 = result;
    v33 = _CocoaArrayWrapper.endIndex.getter();
    result = v32;
    if (!v33)
    {
      return result;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return result;
  }

  v25 = *(v3 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource);
  if (!v25)
  {
    v26 = result;
LABEL_11:
    v31 = 0;
    goto LABEL_12;
  }

  v26 = result;
  v27 = *(*(v25 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
  if (!v27)
  {
    goto LABEL_11;
  }

  v28 = *(v25 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver);

  v29 = v27;
  v30 = dispatch thunk of DOCNodeCollection.observedNode.getter();

  if (!v30)
  {
    goto LABEL_11;
  }

  v40[3] = swift_getObjectType();
  v40[0] = v30;
  v31 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_1000064E0(v40);
LABEL_12:
  [a1 setLocalContext:v31];
  swift_unknownObjectRelease();
  return v26;
}

void *sub_10003F838(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  (*(v4 + 16))(v7, a2, v3);
  v13 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v26))
  {
    v14 = swift_slowAlloc();
    v25 = v9;
    v15 = v14;
    v24 = swift_slowAlloc();
    v27 = v24;
    *v15 = 136315394;
    *(v15 + 4) = sub_100037B98(0xD00000000000002CLL, 0x8000000100092850, &v27);
    *(v15 + 12) = 2080;
    sub_1000422FC(&qword_1000BC458, &type metadata accessor for IndexPath);
    v22 = v13;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v8;
    v18 = v17;
    (*(v4 + 8))(v7, v3);
    v19 = sub_100037B98(v16, v18, &v27);

    *(v15 + 14) = v19;
    v20 = v22;
    _os_log_impl(&_mh_execute_header, v22, v26, "%s indexPath: %s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v25 + 8))(v12, v23);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v8);
  }

  sub_10001A2A8(0, &unk_1000BC470, FPItem_ptr);
  if (static FPItem.sessionContainsDOCNode(_:)())
  {
    return sub_10002BAF4();
  }

  else
  {
    return _swiftEmptyArrayStorage;
  }
}

id sub_10003FBCC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v14 = *(v5 + 16);
  v35 = a1;
  v14(v8, a1, v4);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = v2;
    v18 = v17;
    v33 = swift_slowAlloc();
    v36[0] = v33;
    *v18 = 136315394;
    *(v18 + 4) = sub_100037B98(0xD000000000000031, 0x8000000100092810, v36);
    *(v18 + 12) = 2080;
    sub_1000422FC(&qword_1000BC458, &type metadata accessor for IndexPath);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v9;
    v21 = v20;
    (*(v5 + 8))(v8, v4);
    v22 = sub_100037B98(v19, v21, v36);

    *(v18 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s indexPath: %s", v18, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v13, v32);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v9);
  }

  sub_10001BBE4(v36);
  v23 = v35;
  if (v37)
  {
    sub_100042398(v36, v37);
    v24 = dispatch thunk of DOCNodeDiffableDataSourceProtocol.itemIdentifier(at:)();
    sub_1000064E0(v36);
    if (v24)
    {
      sub_10002ACB0(v23, [v24 isFolder]);
      v26 = v25;
      v27 = [objc_allocWithZone(UIDragPreviewParameters) init];
      v28 = [v26 visiblePath];
      [v27 setVisiblePath:v28];

      v29 = [v26 backgroundColor];
      [v27 setBackgroundColor:v29];
      swift_unknownObjectRelease();

      return v27;
    }
  }

  else
  {
    sub_100006390(v36, &qword_1000BC450, &unk_100090BA0);
  }

  return 0;
}

uint64_t sub_10004001C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = v4;
    v13 = v12;
    v29 = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_100037B98(0xD000000000000027, 0x80000001000927E0, &v29);
    *(v13 + 12) = 2080;
    v14 = v9;
    v15 = [v14 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v2;
    v18 = v17;

    v19 = sub_100037B98(v16, v18, &v29);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2080;
    v20 = [v14 hasActiveDrag];
    v21 = v20 == 0;
    if (v20)
    {
      v22 = 1702195828;
    }

    else
    {
      v22 = 0x65736C6166;
    }

    if (v21)
    {
      v23 = 0xE500000000000000;
    }

    else
    {
      v23 = 0xE400000000000000;
    }

    v24 = sub_100037B98(v22, v23, &v29);
    v2 = v28;

    *(v13 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s collectionView: %s hasActiveDrag: %s", v13, 0x20u);
    swift_arrayDestroy();

    (*(v5 + 8))(v8, v27);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100049CF8(v2, 0);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000402E4(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v24 = v2;
    v11 = v10;
    v25 = swift_slowAlloc();
    *v11 = 136315650;
    *(v11 + 4) = sub_100037B98(0xD000000000000024, 0x80000001000927B0, &v25);
    *(v11 + 12) = 2080;
    v12 = v7;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100037B98(v14, v16, &v25);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2080;
    v18 = [v12 hasActiveDrag];
    v19 = v18 == 0;
    if (v18)
    {
      v20 = 1702195828;
    }

    else
    {
      v20 = 0x65736C6166;
    }

    if (v19)
    {
      v21 = 0xE500000000000000;
    }

    else
    {
      v21 = 0xE400000000000000;
    }

    v22 = sub_100037B98(v20, v21, &v25);

    *(v11 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s collectionView: %s hasActiveDrag: %s", v11, 0x20u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v6, v24);
  }

  else
  {

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_100040574(uint64_t a1)
{
  v2 = sub_10000589C(&qword_1000BC448, &qword_100090B98);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12[-1] - v4;
  sub_10001BBE4(v12);
  if (v13)
  {
    sub_100042398(v12, v13);
    sub_100042774(a1, v5, &qword_1000BC448, &qword_100090B98);
    v6 = type metadata accessor for IndexPath();
    v7 = *(v6 - 8);
    result = (*(v7 + 48))(v5, 1, v6);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v9 = dispatch thunk of DOCNodeDiffableDataSourceProtocol.itemIdentifier(at:)();
    (*(v7 + 8))(v5, v6);
    sub_1000064E0(v12);
    if (v9)
    {
      swift_getObjectType();
      v10 = DOCNode.dataOwner.getter();
      swift_unknownObjectRelease();
      return v10;
    }
  }

  else
  {
    sub_100006390(v12, &qword_1000BC450, &unk_100090BA0);
  }

  return 0;
}

uint64_t sub_10004070C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  v9 = &unk_1000BF000;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v10 = 136315906;
    *(v10 + 4) = sub_100037B98(0xD000000000000018, 0x8000000100092790, &v29);
    v27 = v1;
    *(v10 + 12) = 2080;
    v11 = *&v6[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v12 = *&v6[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v13 = sub_100037B98(v11, v12, &v29);

    *(v10 + 14) = v13;
    *(v10 + 22) = 2080;
    LOBYTE(v28) = v6[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    v14 = String.init<A>(describing:)();
    v16 = sub_100037B98(v14, v15, &v29);

    *(v10 + 24) = v16;
    *(v10 + 32) = 2080;
    v28 = *&v6[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
    v17 = v28;
    sub_10000589C(&qword_1000BC440, &qword_100090B90);
    v18 = String.init<A>(describing:)();
    v20 = sub_100037B98(v18, v19, &v29);
    v9 = &unk_1000BF000;

    *(v10 + 34) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s identifier: %s transitionState: %s collectionView: %s", v10, 0x2Au);
    swift_arrayDestroy();

    result = (*(v2 + 8))(v5, v27);
  }

  else
  {

    result = (*(v2 + 8))(v5, v1);
  }

  v22 = v6[v9[13]];
  if ((v22 - 1) < 2)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v24 = v6;
    v25 = 0;
    goto LABEL_14;
  }

  if (v22 == 3 || v22 == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v24 = v6;
      v25 = 2;
LABEL_14:
      sub_100049CF8(v24, v25);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100040A30()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v9 = 136315906;
    *(v9 + 4) = sub_100037B98(0xD000000000000028, 0x8000000100092760, &v24);
    v22 = v1;
    *(v9 + 12) = 2080;
    v10 = *&v6[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v11 = *&v6[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v12 = sub_100037B98(v10, v11, &v24);

    *(v9 + 14) = v12;
    *(v9 + 22) = 2080;
    LOBYTE(v23) = v6[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    v13 = String.init<A>(describing:)();
    v15 = sub_100037B98(v13, v14, &v24);

    *(v9 + 24) = v15;
    *(v9 + 32) = 2080;
    v23 = *&v6[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
    v16 = v23;
    sub_10000589C(&qword_1000BC440, &qword_100090B90);
    v17 = String.init<A>(describing:)();
    v19 = sub_100037B98(v17, v18, &v24);

    *(v9 + 34) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s identifier: %s transitionState: %s collectionView: %s", v9, 0x2Au);
    swift_arrayDestroy();

    (*(v2 + 8))(v5, v22);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100049CF8(v6, 0);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100040D08(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v9 = a1;
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v12 = 136315906;
    *(v12 + 4) = sub_100037B98(0xD000000000000024, 0x80000001000925C0, &v19);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    *(v12 + 22) = 1024;
    *(v12 + 24) = [v9 isGathering];
    *(v12 + 28) = 2080;
    v18 = a2;
    swift_errorRetain();
    sub_10000589C(&unk_1000BC330, &qword_100090AD8);
    v14 = String.init<A>(describing:)();
    v16 = sub_100037B98(v14, v15, &v19);

    *(v12 + 30) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s collection: %@ isGathering: %{BOOL}d error: %s", v12, 0x26u);
    sub_100006390(v13, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();
  }

  else
  {
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_100040F98(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v18 = v2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v10 = 136316162;
    *(v10 + 4) = sub_100037B98(0xD000000000000023, 0x8000000100092530, &v19);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    *(v10 + 22) = 2048;
    v13 = v7;
    v14 = dispatch thunk of DOCNodeCollection.nodes.getter();
    if (v14 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v10 + 24) = v15;

    *(v10 + 32) = 1024;
    v16 = [v13 isGathering];

    *(v10 + 34) = v16;
    *(v10 + 38) = 2048;
    Current = CFAbsoluteTimeGetCurrent();
    if (byte_1000BD758)
    {
      __break(1u);
    }

    else
    {
      *(v10 + 40) = Current - *&qword_1000BD750;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s collection: %@ count: %ld isGathering: %{BOOL}d took to get here: %f", v10, 0x30u);
      sub_100006390(v11, &qword_1000BC328, &qword_100090AD0);

      sub_1000064E0(v12);

      (*(v3 + 8))(v6, v18);
    }
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_10004126C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  swift_unknownObjectRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100037B98(0xD000000000000014, 0x80000001000924C0, &v15);
    *(v9 + 12) = 2080;
    v14 = a1;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v10 = String.init<A>(describing:)();
    v12 = sub_100037B98(v10, v11, &v15);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s node: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100041480(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000414DC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000414EC()
{
  result = qword_1000BC320;
  if (!qword_1000BC320)
  {
    sub_10001A2A8(255, &qword_1000BC318, FPItemID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BC320);
  }

  return result;
}

uint64_t sub_100041554()
{
  v1 = type metadata accessor for FolderIconFetcher();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100041630(uint64_t a1)
{
  v4 = *(type metadata accessor for FolderIconFetcher() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100043474;

  return sub_100034C50(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100041760()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041798()
{
  v1 = type metadata accessor for ImageOptions();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v6);
  swift_unknownObjectRelease();
  v11 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_1000418BC(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for ImageOptions() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[3];
  v23 = v1[2];
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = v1[4];
  v13 = v1[5];
  v14 = *(v1 + v6);
  v15 = *(v1 + v8);
  v16 = *(v1 + v9);
  v17 = *(v1 + v7);
  v18 = *(v1 + v7 + 8);
  v20 = *(v1 + v11);
  v19 = *(v1 + v11 + 8);
  v21 = swift_task_alloc();
  *(v3 + 16) = v21;
  *v21 = v3;
  v21[1] = sub_100043474;

  return sub_100034F4C(v17, v18, v15, a1, v23, v10, v12, v13, v1 + v5, v14, v16);
}

uint64_t sub_100041A5C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100043474;

  return sub_100035620(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_100041B24(uint64_t a1, double a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  v9 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v8 format:{a2, a3}];
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a1;
  *(v10 + 40) = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100041E0C;
  *(v11 + 24) = v10;
  v15[4] = sub_10000634C;
  v15[5] = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100074FCC;
  v15[3] = &unk_1000AE9E0;
  v12 = _Block_copy(v15);

  v13 = [v9 imageWithActions:v12];

  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if ((v8 & 1) == 0)
  {
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100041D04(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100041D18(a1, a2);
  }

  return a1;
}

uint64_t sub_100041D18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100041D6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100041D80(a1, a2);
  }

  return a1;
}

uint64_t sub_100041D80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100041DD4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

double sub_100041E0C(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[5];
  sub_1000373C0(a1, v1[4]);
  return result;
}

uint64_t sub_100041E2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100041E44()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[5];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100041E8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100041F4C;

  return sub_10003615C(a1, v4, v5, v7, v6);
}

uint64_t sub_100041F4C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100042040()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042078(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F4C;

  return sub_10003A7FC(a1, v5);
}

uint64_t sub_100042138()
{
  v1 = sub_10000589C(&qword_1000BC3D8, &qword_100090B68);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 24);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100042210()
{
  v1 = *(sub_10000589C(&qword_1000BC3D8, &qword_100090B68) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_100036EB4(v2, v3, v4);
}

uint64_t sub_1000422A0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000422FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100042344()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_100042398(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000423DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100042414()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_10004245C(void *a1)
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

uint64_t sub_1000424B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000424EC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100042548()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100042594(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100042604()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000426E0()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_1000294F0(v3, v0 + v2, v5, v6);
}

uint64_t sub_100042774(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000589C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000427E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100042814()
{
  v1 = type metadata accessor for DOCItemSortDescriptor();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000428D8()
{
  v1 = *(type metadata accessor for DOCItemSortDescriptor() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_10002F870(v2, v3);
}

uint64_t sub_10004293C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100042A00()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 88);

  return _swift_deallocObject(v0, 160, 7);
}

BOOL sub_100042AA4(id *a1)
{
  v2 = *(v1 + 16);
  v3 = [*a1 tag];
  return v3 == IndexPath.item.getter();
}

id sub_100042B1C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 progressOfBottomItemIconInDock];
  *a2 = v4;
  return result;
}

id sub_100042B84@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v6.receiver = *a1;
  v6.super_class = type metadata accessor for FolderCollectionView();
  result = objc_msgSendSuper2(&v6, "contentOffset");
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100042BD4(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_100042C48()
{
  v1 = sub_10000589C(&qword_1000BC508, &qword_100090CD8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10000589C(&qword_1000BC500, &qword_100090CD0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

char *sub_100042DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10000589C(&qword_1000BC508, &qword_100090CD8) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_10000589C(&qword_1000BC500, &qword_100090CD0) - 8);
  v11 = *(v3 + 16);
  v12 = v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_10002D514(a1, a2, a3);
}

uint64_t sub_100042EC8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100042F18()
{
  v1 = sub_10000589C(&qword_1000BC510, &qword_100090CE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10000589C(&qword_1000BC518, &qword_100090CE8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

id sub_100043084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10000589C(&qword_1000BC510, &qword_100090CE0) - 8);
  v8 = (*(v7 + 80) + 25) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_10000589C(&qword_1000BC518, &qword_100090CE8) - 8);
  return sub_10002D084(a1, a2, a3, *(v3 + 16), *(v3 + 24), v3 + v8, v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)));
}

uint64_t sub_100043200(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_10002C3FC(a1);
  dispatch thunk of DOCItemCollectionCellContent.thumbnail.getter();

  return swift_unknownObjectRelease();
}

uint64_t sub_100043240(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000143B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DockFolderSortOrder(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DockFolderSortOrder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000433DC()
{
  result = qword_1000BC578;
  if (!qword_1000BC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BC578);
  }

  return result;
}

void *sub_1000434A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000F718(0, v1, 0);
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v24 = *(a1 + 36);
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v23 = *v10;
    v12 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];

    if (v12 >= v13 >> 1)
    {
      result = sub_10000F718((v13 > 1), v12 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v12];
    *(v14 + 4) = v23;
    *(v14 + 5) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1000522D8(v6, v24, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1000522D8(v6, v24, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return _swiftEmptyArrayStorage;
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
LABEL_26:
  __break(1u);
  return result;
}

id sub_1000436E8()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController____lazy_storage___configuration;
  v2 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController____lazy_storage___configuration);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController____lazy_storage___configuration);
  }

  else
  {
    v4 = sub_100043748();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100043748()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() configurationForOpeningDocumentsOfApplicationWithBundleIdentifier:v0];

  [v1 setInProcess:1];
  [v1 setShowCollectionControls:0];
  sub_10000589C(&qword_1000BBDC0, &qword_100090E90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10008F930;
  *(v2 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v2 + 40) = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setForbiddenActionIdentifiers:isa];

  [v1 setNeverCreateBookmarkForOpenInPlace:1];
  [v1 setSkipDownload:1];
  [v1 setSuppressBlackCallout:1];
  [v1 setBrowserViewContext:3];
  [v1 setThumbnailFetchingTimeOut:0.9];
  v5 = String._bridgeToObjectiveC()();
  [v1 setSceneIdentifier:v5];

  [v1 setPresentingMakesCollectionFirstResponder:0];
  [v1 setSupportsRemovableFileProviders:1];
  return v1;
}

void sub_100043928()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for DOCSBSceneRootViewController();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  v1 = objc_opt_self();
  v2 = [v1 sharedManager];
  [v2 start];

  v3 = [v1 sharedManager];
  [v3 setFolderObservationProvider:v0];

  sub_100043A88();
  v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"backgroundTappedWithSender:"];
  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    [v6 addGestureRecognizer:v7];

    [v7 setDelegate:v0];
    v8 = *&v0[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_backgroundTapGestureRecognizer];
    *&v0[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_backgroundTapGestureRecognizer] = v7;
    v9 = v7;

    sub_100043D20(0);
    sub_100043F98();
  }

  else
  {
    __break(1u);
  }
}

void sub_100043A88()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() protectedAppsEnabled])
  {
    static Logger.DockApp.getter();
    v6 = v0;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v9 = 136315650;
      *(v9 + 4) = sub_100037B98(0xD000000000000023, 0x8000000100093390, &v14);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_100037B98(0xD000000000000023, 0x8000000100093390, &v14);
      *(v9 + 22) = 2112;
      *(v9 + 24) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s [PROTECTED APPS] %s %@", v9, 0x20u);
      sub_100006390(v10, &qword_1000BC328, &qword_100090AD0);

      swift_arrayDestroy();
    }

    (*(v2 + 8))(v5, v1);
    v12 = [objc_opt_self() defaultCenter];
    [v12 addObserver:v6 selector:"removeFoldersForHiddenProviders" name:DOCAppProtectionStatusDidChangeNotification object:0];
  }
}

void sub_100043D20(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_100037B98(0xD000000000000023, 0x8000000100092F80, &v18);
    *(v11 + 12) = 1024;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s enabled: %{BOOL}d", v11, 0x12u);
    sub_1000064E0(v12);
  }

  (*(v5 + 8))(v8, v4);
  v13 = *&v2[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_backgroundTapGestureRecognizer];
  if (v13)
  {
    [v13 setEnabled:a1 & 1];
  }

  v14 = [v2 view];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 layer];

    [v16 setHitTestsAsOpaque:a1 & 1];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100043F98()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100037B98(0xD000000000000027, 0x8000000100093320, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s registered for trait change: _DOCSBSUITraitHomeScreenIconStyle", v7, 0xCu);
    sub_1000064E0(v8);
  }

  (*(v1 + 8))(v4, v0);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  UIViewController.forcefullyRegisterForIconStyleChanges(with:)();
}

uint64_t sub_10004418C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
    v12 = static OS_dispatch_queue.main.getter();
    v17 = v5;
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    aBlock[4] = sub_1000524A8;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000D508;
    aBlock[3] = &unk_1000AF498;
    v15 = _Block_copy(aBlock);
    v16 = v11;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000523E8(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000589C(&unk_1000BCE30, &unk_100090E70);
    sub_1000518F8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v1 + 8))(v4, v0);
    return (*(v6 + 8))(v9, v17);
  }

  return result;
}

void sub_100044480(uint64_t a1)
{
  sub_100046EC4();
  v2 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = *(*(v3 + 56) + ((v9 << 9) | (8 * v10)));
    sub_100025E00();
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100044594(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, unint64_t a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, double a13, double a14, CGFloat a15, CGFloat a16)
{
  v157 = a7;
  v161 = a6;
  v159 = a4;
  v144 = sub_10000589C(&unk_1000BC6B0, &qword_100090BD0);
  v29 = *(*(v144 - 8) + 64);
  __chkstk_darwin(v144);
  v146 = &v140 - v30;
  v31 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v142 = &v140 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v140 - v35;
  __chkstk_darwin(v37);
  v154 = &v140 - v38;
  v39 = type metadata accessor for URL();
  v40 = *(v39 - 8);
  v41 = v40[8];
  __chkstk_darwin(v39);
  v148 = &v140 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v147 = &v140 - v44;
  __chkstk_darwin(v45);
  v163 = &v140 - v46;
  __chkstk_darwin(v47);
  v165 = &v140 - v48;
  __chkstk_darwin(v49);
  v51 = &v140 - v50;
  v150 = type metadata accessor for Logger();
  v153 = *(v150 - 8);
  v52 = *(v153 + 8);
  __chkstk_darwin(v150);
  v141 = &v140 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v56 = &v140 - v55;
  static Logger.UI.getter();
  v57 = v40[2];
  v156 = a3;
  v151 = v40 + 2;
  v155 = v57;
  v57(v51, a3, v39);

  v149 = v56;
  v58 = Logger.logObject.getter();
  LODWORD(v56) = static os_log_type_t.debug.getter();
  v158 = a8;

  v160 = a5;

  v166 = a2;

  LODWORD(v143) = v56;
  v59 = os_log_type_enabled(v58, v56);
  v162 = a1;
  v164 = v40;
  v145 = v36;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    *v60 = 136316930;
    *(v60 + 4) = sub_100037B98(0xD000000000000066, 0x8000000100093240, &v172);
    *(v60 + 12) = 2080;
    *(v60 + 14) = sub_100037B98(a1, v166, &v172);
    *(v60 + 22) = 2080;
    sub_1000523E8(&unk_1000BC418, &type metadata accessor for URL);
    v61 = v58;
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    v65 = v40[1];
    v65(v51, v39);
    v66 = sub_100037B98(v62, v64, &v172);

    *(v60 + 24) = v66;
    *(v60 + 32) = 2080;
    *(v60 + 34) = sub_100037B98(v159, v160, &v172);
    *(v60 + 42) = 2080;
    if (v161)
    {
      v67 = 1702195828;
    }

    else
    {
      v67 = 0x65736C6166;
    }

    if (v161)
    {
      v68 = 0xE400000000000000;
    }

    else
    {
      v68 = 0xE500000000000000;
    }

    v69 = sub_100037B98(v67, v68, &v172);

    *(v60 + 44) = v69;
    *(v60 + 52) = 2080;
    *(v60 + 54) = sub_100037B98(v157, v158, &v172);
    *(v60 + 62) = 2080;
    v167 = a9;
    v168 = a10;
    v169 = a11;
    v170 = a12;
    type metadata accessor for CGRect(0);
    v70 = String.init<A>(describing:)();
    v72 = sub_100037B98(v70, v71, &v172);

    *(v60 + 64) = v72;
    *(v60 + 72) = 2080;
    v167 = a13;
    v168 = a14;
    v169 = a15;
    v170 = a16;
    v73 = String.init<A>(describing:)();
    v75 = sub_100037B98(v73, v74, &v172);
    a1 = v162;

    *(v60 + 74) = v75;
    _os_log_impl(&_mh_execute_header, v61, v143, "%s identifier: %s directoryURL: %s sortOrder: %s isAscending: %s displayMode: %s iconFrame: %s dockFrame: %s", v60, 0x52u);
    swift_arrayDestroy();
  }

  else
  {

    v65 = v40[1];
    v65(v51, v39);
  }

  v76 = v149;
  v77 = v150;
  v149 = *(v153 + 1);
  (v149)(v76, v150);
  v78 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  v79 = v152;
  swift_beginAccess();
  v80 = *&v79[v78];
  v81 = v165;
  if (*(v80 + 16))
  {
    v82 = *&v79[v78];

    v83 = sub_100037A68(a1, v166);
    if (v84)
    {
      v85 = *(*(v80 + 56) + 8 * v83);

      v86 = v141;
      static Logger.UI.getter();

      v87 = v85;
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        *v90 = 136315650;
        *(v90 + 4) = sub_100037B98(0xD000000000000066, 0x8000000100093240, &v172);
        *(v90 + 12) = 2080;
        v92 = v162;
        *(v90 + 14) = sub_100037B98(v162, v166, &v172);
        *(v90 + 22) = 2112;
        *(v90 + 24) = v87;
        *v91 = v87;
        v93 = v87;
        _os_log_impl(&_mh_execute_header, v88, v89, "%s folderController already exists for %s controller: %@. Updating configuration with new values from context.", v90, 0x20u);
        sub_100006390(v91, &qword_1000BC328, &qword_100090AD0);

        swift_arrayDestroy();
        v94 = v158;

        (v149)(v86, v77);
        v95 = v161;
        v96 = v160;
        v97 = v159;
        v98 = v157;
      }

      else
      {

        (v149)(v86, v77);
        v92 = v162;
        v95 = v161;
        v96 = v160;
        v97 = v159;
        v98 = v157;
        v94 = v158;
      }

      sub_100045FCC(v92, v166, v97, v96, v95 & 1, v98, v94, v79, a9, a10, a11, a12, a13, a14, a15, a16);
      sub_1000246B0();
LABEL_30:

      return;
    }
  }

  v150 = v78;
  v153 = v65;
  v99 = v155;
  v155(v81, v156, v39);
  v149 = [v79 view];
  if (v149)
  {
    v143 = *&v79[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_imageCache];

    v100 = v154;
    URL.init(string:)();
    URL.init(fileURLWithPath:)();
    v101 = v145;
    v99(v145, v81, v39);
    v102 = v164;
    (v164[7])(v101, 0, 1, v39);
    v103 = *(v144 + 48);
    v104 = v146;
    sub_100042774(v101, v146, &unk_1000BCA20, &qword_100090BC0);
    sub_100042774(v100, v104 + v103, &unk_1000BCA20, &qword_100090BC0);
    v105 = v102[6];
    if (v105(v104, 1, v39) == 1)
    {
      sub_100006390(v101, &unk_1000BCA20, &qword_100090BC0);
      v106 = v105(v104 + v103, 1, v39);
      v107 = v165;
      v108 = v153;
      if (v106 == 1)
      {
        sub_100006390(v104, &unk_1000BCA20, &qword_100090BC0);
        v109 = v160;
        v110 = v159;
        v111 = v163;
LABEL_22:
        v114 = v147;
        v115 = v155;
        v155(v147, v111, v39);
        v116 = v158;

        v117._countAndFlagsBits = v157;
        v117._object = v116;
        v118 = _findStringSwitchCase(cases:string:)(&off_1000ADBB8, v117);

        v119 = v118 != 0;

        v174._countAndFlagsBits = v110;
        v174._object = v109;
        v120 = sub_10003C434(v174);
        if (v120 == 6)
        {
          v121 = 1;
        }

        else
        {
          v121 = v120;
        }

        v122 = v148;
        v115(v148, v114, v39);
        v123 = objc_allocWithZone(type metadata accessor for DOCSBFolderPresentationController(0));
        v124 = v166;

        v125 = v162;
        v126 = v119 | (v121 << 8);
        v127 = v149;
        sub_10003C490(v162, v124, v122, v126, v161 & 1, a11, a12, v149, v143);
        v129 = v128;

        v108(v114, v39);
        v108(v163, v39);
        sub_100006390(v154, &unk_1000BCA20, &qword_100090BC0);
        v108(v165, v39);
        v130 = v150;
        swift_beginAccess();

        v131 = v129;
        v132 = *&v79[v130];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v171 = *&v79[v130];
        *&v79[v130] = 0x8000000000000000;
        sub_10005F094(v131, v125, v124, isUniquelyReferenced_nonNull_native);

        *&v79[v130] = v171;
        swift_endAccess();
        *&v131[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderPresentationControllerDelegate + 8] = &off_1000AEFF0;
        swift_unknownObjectWeakAssign();
        sub_1000246B0();
        v134 = [objc_opt_self() sharedManager];
        v135 = String._bridgeToObjectiveC()();
        URL._bridgeToObjectiveC()(&v173);
        v87 = v136;
        [v134 startObservingFolderID:v135 fileURL:v136];

        goto LABEL_30;
      }
    }

    else
    {
      v112 = v142;
      sub_100042774(v104, v142, &unk_1000BCA20, &qword_100090BC0);
      v113 = v105(v104 + v103, 1, v39);
      v108 = v153;
      if (v113 != 1)
      {
        v137 = v104 + v103;
        v138 = v148;
        (v164[4])(v148, v137, v39);
        sub_1000523E8(&qword_1000BC4C0, &type metadata accessor for URL);
        v139 = dispatch thunk of static Equatable.== infix(_:_:)();
        v108(v138, v39);
        sub_100006390(v101, &unk_1000BCA20, &qword_100090BC0);
        v108(v112, v39);
        v79 = v152;
        sub_100006390(v104, &unk_1000BCA20, &qword_100090BC0);
        v111 = v165;
        v109 = v160;
        v110 = v159;
        if (v139)
        {
          v111 = v163;
        }

        goto LABEL_22;
      }

      sub_100006390(v101, &unk_1000BCA20, &qword_100090BC0);
      v108(v112, v39);
      v107 = v165;
    }

    sub_100006390(v104, &unk_1000BC6B0, &qword_100090BD0);
    v111 = v107;
    v109 = v160;
    v110 = v159;
    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_100045594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_10005F094(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_100037A68(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_10005F388();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_10004E240(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

void sub_10004568C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  static Logger.UI.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v10;
    v33[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_100037B98(0xD00000000000001FLL, 0x80000001000931D0, v33);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100037B98(a1, a2, v33);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s identifier: %s", v16, 0x16u);
    swift_arrayDestroy();
    v10 = v31;
  }

  v18 = *(v7 + 8);
  v18(v13, v6);
  v19 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v20 = *(v3 + v19);
  if (*(v20 + 16))
  {
    v21 = *(v3 + v19);

    v22 = sub_100037A68(a1, a2);
    if (v23)
    {
      v24 = *(*(v20 + 56) + 8 * v22);

      v25 = [objc_opt_self() sharedManager];
      v26 = String._bridgeToObjectiveC()();
      [v25 stopObservingFolderID:v26];

      sub_10002561C();
      swift_beginAccess();

      sub_100045594(0, a1, a2);
      swift_endAccess();

      return;
    }
  }

  static Logger.UI.getter();

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v29 = 136315394;
    *(v29 + 4) = sub_100037B98(0xD00000000000001FLL, 0x80000001000931D0, v32);
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_100037B98(a1, a2, v32);
    _os_log_impl(&_mh_execute_header, v27, v28, "%s folderController does not exist for %s nothing to remove", v29, 0x16u);
    swift_arrayDestroy();
  }

  v18(v10, v6);
}

void sub_100045AE4(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v53 = a1;
  v9 = type metadata accessor for Logger();
  v54 = *(v9 - 8);
  v10 = *(v54 + 64);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  static Logger.UI.getter();
  v50 = a4;
  v16 = a4;

  v17 = a3;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  v49 = v19;
  v52 = v18;
  v20 = os_log_type_enabled(v18, v19);
  v48 = v17;
  v51 = v16;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v47 = v9;
    v56[0] = v22;
    *v21 = 136315906;
    *(v21 + 4) = sub_100037B98(0xD000000000000031, 0x8000000100093190, v56);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_100037B98(v53, a2, v56);
    *(v21 + 22) = 2080;
    v55 = a3;
    v23 = v17;
    sub_10000589C(&qword_1000BCA90, &qword_100090B70);
    v24 = String.init<A>(describing:)();
    v26 = a2;
    v27 = a3;
    v28 = sub_100037B98(v24, v25, v56);

    *(v21 + 24) = v28;
    *(v21 + 32) = 2080;
    v55 = v50;
    v29 = v51;
    v30 = String.init<A>(describing:)();
    v32 = sub_100037B98(v30, v31, v56);
    a3 = v27;
    a2 = v26;

    *(v21 + 34) = v32;
    v33 = v52;
    _os_log_impl(&_mh_execute_header, v52, v49, "%s identifier: %s chevronView: %s snapshotView: %s", v21, 0x2Au);
    swift_arrayDestroy();
    v9 = v47;
  }

  else
  {
  }

  v34 = *(v54 + 8);
  v34(v15, v9);
  v35 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v36 = *(v5 + v35);
  if (*(v36 + 16))
  {

    v37 = sub_100037A68(v53, a2);
    if (v38)
    {
      v39 = *(*(v36 + 56) + 8 * v37);

      v40 = *&v39[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
      *&v39[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView] = v50;
      v41 = v51;
      sub_10001B5FC(v40);

      v42 = *&v39[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
      *&v39[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView] = a3;
      v43 = v48;
      sub_10001B2B4(v42);

      return;
    }
  }

  static Logger.UI.getter();

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v46 = 136315394;
    *(v46 + 4) = sub_100037B98(0xD000000000000031, 0x8000000100093190, &v55);
    *(v46 + 12) = 2080;
    *(v46 + 14) = sub_100037B98(v53, a2, &v55);
    _os_log_impl(&_mh_execute_header, v44, v45, "%s no folderController for identifier: %s", v46, 0x16u);
    swift_arrayDestroy();
  }

  v34(v12, v9);
}

void sub_100045FCC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, void *a7, uint64_t a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, double a13, double a14, CGFloat a15, CGFloat a16)
{
  v80 = a8;
  v81 = a1;
  v30 = type metadata accessor for Logger();
  v31 = *(v30 - 8);
  v82 = v30;
  v83 = v31;
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v71 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v71 - v36;
  static Logger.UI.getter();

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  v78 = v39;
  v40 = os_log_type_enabled(v38, v39);
  v77 = a5;
  v75 = a3;
  v76 = a4;
  v74 = a6;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v79 = a7;
    v42 = a3;
    v43 = v41;
    v72 = swift_slowAlloc();
    v88[0] = v72;
    *v43 = 136316674;
    *(v43 + 4) = sub_100037B98(0xD000000000000061, 0x80000001000932B0, v88);
    v73 = v34;
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_100037B98(v81, a2, v88);
    *(v43 + 22) = 2080;
    *(v43 + 24) = sub_100037B98(v42, a4, v88);
    *(v43 + 32) = 2080;
    if (a5)
    {
      v44 = 1702195828;
    }

    else
    {
      v44 = 0x65736C6166;
    }

    if (a5)
    {
      v45 = 0xE400000000000000;
    }

    else
    {
      v45 = 0xE500000000000000;
    }

    v46 = sub_100037B98(v44, v45, v88);

    *(v43 + 34) = v46;
    *(v43 + 42) = 2080;
    *(v43 + 44) = sub_100037B98(a6, v79, v88);
    *(v43 + 52) = 2080;
    v84 = a9;
    v85 = a10;
    v86 = a11;
    v87 = a12;
    type metadata accessor for CGRect(0);
    v47 = String.init<A>(describing:)();
    v49 = sub_100037B98(v47, v48, v88);
    a7 = v79;
    v50 = v83;

    *(v43 + 54) = v49;
    *(v43 + 62) = 2080;
    v34 = v73;
    v84 = a13;
    v85 = a14;
    v86 = a15;
    v87 = a16;
    v51 = String.init<A>(describing:)();
    v53 = sub_100037B98(v51, v52, v88);

    *(v43 + 64) = v53;
    v54 = v82;
    _os_log_impl(&_mh_execute_header, v38, v78, "%s identifier: %s sortOrder: %s isAscending: %s displayMode: %s iconFrame: %s dockFrame: %s", v43, 0x48u);
    swift_arrayDestroy();

    v55 = *(v50 + 8);
    v55(v37, v54);
  }

  else
  {

    v55 = *(v83 + 8);
    v55(v37, v82);
  }

  v56 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  v57 = v80;
  swift_beginAccess();
  v58 = *(v57 + v56);
  if (*(v58 + 16))
  {

    v59 = sub_100037A68(v81, a2);
    if (v60)
    {
      v61 = *(*(v58 + 56) + 8 * v59);

      sub_10001ECB8(a9, a10, a11, a12, a13, a14, a15, a16);

      v62._countAndFlagsBits = v74;
      v62._object = a7;
      v63 = _findStringSwitchCase(cases:string:)(&off_1000ADBB8, v62);

      v64 = v63 != 0;
      v65 = v76;

      v89._countAndFlagsBits = v75;
      v89._object = v65;
      v66 = sub_10003C434(v89);
      if (v66 == 6)
      {
        v67 = 2;
      }

      else
      {
        v67 = v66;
      }

      sub_10001E8B0(v64 | (v67 << 8), v77 & 1, a11, a12);

      return;
    }
  }

  static Logger.UI.getter();

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v88[0] = swift_slowAlloc();
    *v70 = 136315394;
    *(v70 + 4) = sub_100037B98(0xD000000000000061, 0x80000001000932B0, v88);
    *(v70 + 12) = 2080;
    *(v70 + 14) = sub_100037B98(v81, a2, v88);
    _os_log_impl(&_mh_execute_header, v68, v69, "%s no folderController for identifier: %s", v70, 0x16u);
    swift_arrayDestroy();
  }

  v55(v34, v82);
}

uint64_t sub_1000465B8(uint64_t a1, void *a2, uint64_t a3, void *a4, char a5, char *a6, int a7, uint64_t a8, CGFloat a9, double a10, double a11, double a12, CGFloat a13, double a14, double a15, double a16, uint64_t a17)
{
  v59 = a7;
  v55 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v55 - 8);
  v32 = *(v58 + 64);
  __chkstk_darwin(v55);
  v34 = &v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v56 = *(v35 - 8);
  v57 = v35;
  v36 = *(v56 + 64);
  __chkstk_darwin(v35);
  v38 = &v55 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);

  v39._countAndFlagsBits = a1;
  v39._object = a2;
  v40 = _findStringSwitchCase(cases:string:)(&off_1000ADBB8, v39);

  v41 = v40 != 0;

  v62._countAndFlagsBits = a3;
  v62._object = a4;
  v42 = sub_10003C434(v62);
  if (v42 == 6)
  {
    v43 = 2;
  }

  else
  {
    v43 = v42;
  }

  if (sub_10001E8B0(v41 | (v43 << 8), a5, a11, a12))
  {
    v44 = v59;
    v45 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
    v46 = *&a6[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
    if (v46)
    {
      [v46 reloadData];
      v47 = *&a6[v45];
      if (v47)
      {
        [v47 layoutIfNeeded];
      }
    }

    sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
    v48 = static OS_dispatch_queue.main.getter();
    v49 = swift_allocObject();
    *(v49 + 16) = a6;
    *(v49 + 24) = a9;
    *(v49 + 32) = a10;
    *(v49 + 40) = a11;
    *(v49 + 48) = a12;
    *(v49 + 56) = a13;
    *(v49 + 64) = a14;
    *(v49 + 72) = a15;
    *(v49 + 80) = a16;
    *(v49 + 88) = v44 & 1;
    *(v49 + 96) = a8;
    *(v49 + 104) = a17;
    aBlock[4] = sub_1000518DC;
    aBlock[5] = v49;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000D508;
    aBlock[3] = &unk_1000AF0D8;
    v50 = _Block_copy(aBlock);

    v51 = a6;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000523E8(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000589C(&unk_1000BCE30, &unk_100090E70);
    sub_1000518F8();
    v52 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v50);

    (*(v58 + 8))(v34, v52);
    return (*(v56 + 8))(v38, v57);
  }

  else
  {
    v54 = swift_allocObject();
    *(v54 + 16) = a8;
    *(v54 + 24) = a17;

    sub_100020E78(v59 & 1, sub_100052A88, v54, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_100046A8C(CGFloat a1, double a2, double a3, double a4, CGFloat a5, double a6, double a7, double a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  v23 = swift_allocObject();
  *(v23 + 16) = a11;
  *(v23 + 24) = a12;

  sub_100020E78(a10, sub_10004E974, v23, a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100046B84(int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void), uint64_t a8, double a9, double a10, double a11, double a12)
{
  v46 = a6;
  v48 = a1;
  v47 = type metadata accessor for Logger();
  v22 = *(v47 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v47);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  swift_errorRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v45 = a7;
    v29 = v28;
    v30 = swift_slowAlloc();
    v44 = a8;
    v53 = v30;
    *v29 = 136316162;
    *(v29 + 4) = sub_100037B98(0xD00000000000005ELL, 0x8000000100092FB0, &v53);
    v43 = a5;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_100037B98(a3, a4, &v53);
    *(v29 + 22) = 2080;
    v49 = a9;
    v50 = a10;
    v51 = a11;
    v52 = a12;
    type metadata accessor for CGRect(0);
    v31 = String.init<A>(describing:)();
    v33 = sub_100037B98(v31, v32, &v53);

    *(v29 + 24) = v33;
    *(v29 + 32) = 2080;
    if (v48)
    {
      v34 = 1702195828;
    }

    else
    {
      v34 = 0x65736C6166;
    }

    if (v48)
    {
      v35 = 0xE400000000000000;
    }

    else
    {
      v35 = 0xE500000000000000;
    }

    v36 = sub_100037B98(v34, v35, &v53);

    *(v29 + 34) = v36;
    *(v29 + 42) = 2080;
    a5 = v43;
    v49 = *&a2;
    swift_errorRetain();
    sub_10000589C(&unk_1000BC4B0, &qword_100090BC8);
    v37 = String.init<A>(describing:)();
    v39 = sub_100037B98(v37, v38, &v53);

    *(v29 + 44) = v39;
    _os_log_impl(&_mh_execute_header, v26, v27, "%s identifier: %s iconFrame: %s DOCAppProtectionManager success: %s error: %s", v29, 0x34u);
    swift_arrayDestroy();

    a7 = v45;
  }

  v40 = (*(v22 + 8))(v25, v47);
  if (v48)
  {
    return a5(v40);
  }

  else
  {
    return a7(0);
  }
}

void sub_100046EC4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v9 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v10 = *&v1[v9];

  static Logger.UI.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v13 = os_log_type_enabled(v11, v12);
  v45 = v2;
  v46 = v3;
  v43 = v10;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_100037B98(0xD00000000000001BLL, 0x8000000100093140, &v47);
    *(v14 + 12) = 2080;
    type metadata accessor for DOCSBFolderPresentationController(0);
    v15 = Dictionary.Keys.description.getter();
    v17 = sub_100037B98(v15, v16, &v47);

    *(v14 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s all identifiers: %s", v14, 0x16u);
    swift_arrayDestroy();

    v42 = *(v46 + 8);
  }

  else
  {

    v42 = *(v3 + 8);
  }

  v42(v8, v2);
  v18 = *&v1[v9];
  v19 = 1 << *(v18 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v18 + 64);
  v22 = (v19 + 63) >> 6;
  v23 = *&v1[v9];

  v24 = 0;
  if (v21)
  {
    while (1)
    {
      v25 = v24;
LABEL_12:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v18 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(*(v18 + 56) + 8 * v27);

      v32 = v1;
      v33 = v31;
      sub_10004FA28(v29, v30, v32, v29, v30, v32, v33);

      if (!v21)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      return;
    }

    if (v25 >= v22)
    {
      break;
    }

    v21 = *(v18 + 64 + 8 * v25);
    ++v24;
    if (v21)
    {
      v24 = v25;
      goto LABEL_12;
    }
  }

  v34 = v44;
  static Logger.UI.getter();

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v37 = 136315394;
    *(v37 + 4) = sub_100037B98(0xD00000000000001BLL, 0x8000000100093140, &v47);
    *(v37 + 12) = 2080;
    type metadata accessor for DOCSBFolderPresentationController(0);
    v38 = Dictionary.Keys.description.getter();
    v40 = sub_100037B98(v38, v39, &v47);

    *(v37 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v35, v36, "%s started icon batch request for identifiers: %s", v37, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v42(v34, v45);
}

uint64_t sub_1000473B0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v41 = a6;
  v42 = a5;
  v10 = type metadata accessor for Logger();
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  static Logger.UI.getter();

  sub_100041D04(a1, a2);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  sub_100041D6C(a1, a2);
  v19 = os_log_type_enabled(v17, v18);
  v40 = a4;
  v38 = a3;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v37 = v13;
    v45 = v21;
    *v20 = 136315650;
    *(v20 + 4) = sub_100037B98(0xD00000000000001BLL, 0x8000000100093140, &v45);
    v39 = v10;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_100037B98(a3, a4, &v45);
    *(v20 + 22) = 2080;
    v44[0] = a1;
    v44[1] = a2;
    sub_100041D04(a1, a2);
    sub_10000589C(&unk_1000BC3C0, &unk_100090B30);
    v22 = String.init<A>(describing:)();
    v24 = sub_100037B98(v22, v23, &v45);
    v10 = v39;

    *(v20 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s received iconData for identifier: %s iconData: %s", v20, 0x20u);
    swift_arrayDestroy();
    v13 = v37;
  }

  v25 = *(v43 + 8);
  result = v25(v16, v10);
  if (a2 >> 60 != 15)
  {
    sub_100041D18(a1, a2);
    static Logger.UI.getter();
    v27 = v40;

    sub_100041D04(a1, a2);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    sub_100041D6C(a1, a2);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v30 = 136315650;
      *(v30 + 4) = sub_100037B98(0xD00000000000001BLL, 0x8000000100093140, v44);
      v39 = v10;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_100037B98(v38, v27, v44);
      *(v30 + 22) = 2080;
      sub_100041D18(a1, a2);
      v31 = Data.description.getter();
      v33 = v32;
      sub_100041D6C(a1, a2);
      v34 = sub_100037B98(v31, v33, v44);

      *(v30 + 24) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s received valid iconData for identifier: %s iconData: %s. Sending to host", v30, 0x20u);
      swift_arrayDestroy();

      v35 = v13;
      v36 = v39;
    }

    else
    {

      v35 = v13;
      v36 = v10;
    }

    v25(v35, v36);
    sub_10004782C(v41, a1, a2);
    return sub_100041D6C(a1, a2);
  }

  return result;
}

uint64_t sub_10004782C(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v13 = a1;
  sub_100041D18(a2, a3);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  sub_100041D80(a2, a3);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = v8;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31 = v15;
    v19 = v18;
    v30 = v18;
    v32 = swift_slowAlloc();
    v34 = v32;
    *v17 = 136315650;
    *(v17 + 4) = sub_100037B98(0xD00000000000002ELL, 0x8000000100093160, &v34);
    *(v17 + 12) = 2112;
    *(v17 + 14) = v13;
    *v19 = v13;
    *(v17 + 22) = 2080;
    v20 = v13;
    v21 = Data.description.getter();
    v23 = v9;
    v24 = sub_100037B98(v21, v22, &v34);

    *(v17 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v14, v31, "%s folderPresentationController: %@ didUpdateIcon: %s", v17, 0x20u);
    sub_100006390(v30, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    (*(v23 + 8))(v12, v33);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v25 = swift_allocObject();
  v25[2] = v4;
  v25[3] = v13;
  v25[4] = a2;
  v25[5] = a3;
  v26 = v13;
  sub_100041D18(a2, a3);
  v27 = v4;
  DOCRunInMainThread(_:)();
}

uint64_t sub_100047B28(uint64_t a1, unint64_t a2, uint64_t (*a3)(void, void), NSObject *a4)
{
  v5 = v4;
  v65 = a3;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v58[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v63 = &v58[-v15];
  __chkstk_darwin(v16);
  v18 = &v58[-v17];
  static Logger.UI.getter();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  v21 = os_log_type_enabled(v19, v20);
  v64 = v9;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v61 = v13;
    v23 = a1;
    v24 = v10;
    v25 = v9;
    v26 = v22;
    v27 = swift_slowAlloc();
    v62 = a4;
    v67[0] = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093010, v67);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_100037B98(v23, a2, v67);
    _os_log_impl(&_mh_execute_header, v19, v20, "%s identifier: %s", v26, 0x16u);
    swift_arrayDestroy();
    a4 = v62;

    v28 = *(v24 + 8);
    a1 = v23;
    v13 = v61;
    v28(v18, v25);
  }

  else
  {

    v28 = *(v10 + 8);
    v28(v18, v9);
  }

  v29 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v30 = *(v5 + v29);
  if (*(v30 + 16))
  {
    v31 = *(v5 + v29);

    v32 = sub_100037A68(a1, a2);
    if (v33)
    {
      v34 = a1;
      v35 = *(*(v30 + 56) + 8 * v32);

      v36 = v63;
      static Logger.UI.getter();

      v37 = v35;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();

      v62 = v38;
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v66 = v61;
        *v40 = 136315650;
        *(v40 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093010, &v66);
        *(v40 + 12) = 2080;
        *(v40 + 14) = sub_100037B98(v34, a2, &v66);
        *(v40 + 22) = 2080;
        v41 = v37;
        v60 = v28;
        v42 = v41;
        v43 = [v41 description];
        v59 = v39;
        v44 = a4;
        v45 = v43;
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        a4 = v44;
        v49 = sub_100037B98(v46, v48, &v66);

        *(v40 + 24) = v49;
        v50 = v62;
        _os_log_impl(&_mh_execute_header, v62, v59, "%s requesting image data from controller with identifier: %s controller: %s", v40, 0x20u);
        swift_arrayDestroy();

        v60(v63, v64);
      }

      else
      {

        v28(v36, v64);
      }

      v55 = swift_allocObject();
      v55[2] = v34;
      v55[3] = a2;
      v56 = v65;
      v55[4] = v37;
      v55[5] = v56;
      v55[6] = a4;

      v57 = v37;

      sub_100033C70(sub_100052AB4, v55);
    }
  }

  static Logger.UI.getter();

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v53 = 136315394;
    *(v53 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093010, &v66);
    *(v53 + 12) = 2080;
    *(v53 + 14) = sub_100037B98(a1, a2, &v66);
    _os_log_impl(&_mh_execute_header, v51, v52, "%s no folderController for identifier: %s", v53, 0x16u);
    swift_arrayDestroy();
  }

  v28(v13, v64);
  return v65(0, 0xF000000000000000);
}

uint64_t sub_1000481A4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t (*a6)(void, void), uint64_t a7)
{
  v38 = a3;
  v39 = type metadata accessor for Logger();
  v13 = *(v39 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v39);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  sub_100041D04(a1, a2);

  v17 = a5;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  sub_100041D6C(a1, a2);

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = v19;
    v21 = v20;
    v35 = swift_slowAlloc();
    v42 = v35;
    *v21 = 136315906;
    *(v21 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093010, &v42);
    *(v21 + 12) = 2080;
    v40 = a1;
    v41 = a2;
    sub_100041D04(a1, a2);
    sub_10000589C(&unk_1000BC3C0, &unk_100090B30);
    v22 = String.init<A>(describing:)();
    v36 = a7;
    v24 = sub_100037B98(v22, v23, &v42);
    v37 = a6;
    v25 = v24;

    *(v21 + 14) = v25;
    *(v21 + 22) = 2080;
    *(v21 + 24) = sub_100037B98(v38, a4, &v42);
    *(v21 + 32) = 2080;
    v26 = v17;
    v27 = [v26 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = sub_100037B98(v28, v30, &v42);

    *(v21 + 34) = v31;
    a6 = v37;
    _os_log_impl(&_mh_execute_header, v18, v34, "%s received image data: %s from controller with identifier: %s controller: %s", v21, 0x2Au);
    swift_arrayDestroy();
  }

  (*(v13 + 8))(v16, v39);
  return a6(a1, a2);
}

id sub_10004849C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  *&v4[v7] = sub_10007B6D4(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_backgroundTapGestureRecognizer] = 0;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_actionManager;
  type metadata accessor for DOCActionManager();
  *&v4[v8] = DOCActionManager.init()();
  *&v4[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController____lazy_storage___configuration] = 0;
  v9 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_imageCache;
  v10 = type metadata accessor for ImageCache();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v4[v9] = ImageCache.init()();
  if (a2)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v4;
  v16.super_class = type metadata accessor for DOCSBSceneRootViewController();
  v14 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", v13, a3);

  return v14;
}

id sub_100048620(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  *&v2[v4] = sub_10007B6D4(_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_backgroundTapGestureRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_actionManager;
  type metadata accessor for DOCActionManager();
  *&v2[v5] = DOCActionManager.init()();
  *&v2[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController____lazy_storage___configuration] = 0;
  v6 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_imageCache;
  v7 = type metadata accessor for ImageCache();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *&v2[v6] = ImageCache.init()();
  v12.receiver = v2;
  v12.super_class = type metadata accessor for DOCSBSceneRootViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);

  if (v10)
  {
  }

  return v10;
}

id sub_100048740()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSBSceneRootViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1000488A4()
{
  v0 = sub_1000436E8();
  v1 = [v0 isPopoverOrWidget];

  if (v1)
  {
    return 0;
  }

  v3 = [objc_opt_self() cancellingKeyCommandsWithAction:"performDismiss:"];
  sub_10001A2A8(0, &unk_1000BC6A0, UIKeyCommand_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000D778(v4);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10004896C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  sub_100042774(a1, v21, &qword_1000BCA30, &unk_100090E80);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = v2;
    v10 = v9;
    v17 = swift_slowAlloc();
    v20 = v17;
    *v10 = 136315394;
    *(v10 + 4) = sub_100037B98(0xD000000000000012, 0x8000000100093120, &v20);
    *(v10 + 12) = 2080;
    sub_100042774(v21, v19, &qword_1000BCA30, &unk_100090E80);
    sub_10000589C(&qword_1000BCA30, &unk_100090E80);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    sub_100006390(v21, &qword_1000BCA30, &unk_100090E80);
    v14 = sub_100037B98(v11, v13, &v20);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s sender: %s", v10, 0x16u);
    swift_arrayDestroy();

    (*(v3 + 8))(v6, v18);
  }

  else
  {

    sub_100006390(v21, &qword_1000BCA30, &unk_100090E80);
    (*(v3 + 8))(v6, v2);
  }

  return sub_100048BF8();
}

uint64_t sub_100048BF8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v8 = *(v1 + v7);

  v10 = sub_1000434A4(v9);

  if (!v10[2])
  {
    sub_100043D20(0);
  }

  static Logger.UI.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v2;
    v14 = v13;
    v23[0] = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_100037B98(0xD000000000000014, 0x8000000100093100, v23);
    *(v14 + 12) = 2080;
    v15 = Array.description.getter();
    v17 = sub_100037B98(v15, v16, v23);

    *(v14 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s dismissing folders with identifiers: %s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v3 + 8))(v6, v22);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v18 = v1 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v19 = *(v18 + 8);
  ObjectType = swift_getObjectType();
  (*(v19 + 8))(v10, ObjectType, v19);

  return swift_unknownObjectRelease();
}

id sub_100048F3C(void *a1)
{
  v3 = [v1 view];
  [a1 locationInView:v3];
  v5 = v4;
  v7 = v6;

  result = [v1 view];
  if (result)
  {
    v9 = result;
    v10 = [result hitTest:0 withEvent:{v5, v7}];

    if (v10)
    {
      v11 = v10;
      v12 = [v1 view];
      if (v12)
      {
        v13 = v12;
        sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
        v14 = static NSObject.== infix(_:_:)();
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    return (v14 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000490B4(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21 = v2;
    v11 = v10;
    v20 = swift_slowAlloc();
    v22 = v20;
    *v11 = 136315394;
    *(v11 + 4) = sub_100037B98(0xD000000000000019, 0x80000001000930E0, &v22);
    *(v11 + 12) = 2080;
    v12 = v7;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100037B98(v14, v16, &v22);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s sender: %s", v11, 0x16u);
    swift_arrayDestroy();

    (*(v3 + 8))(v6, v21);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return sub_100048BF8();
}

void sub_100049360(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v11 = a1;
  swift_unknownObjectRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_100037B98(0xD000000000000027, 0x80000001000934A0, v33);
    *(v15 + 12) = 2112;
    *(v15 + 14) = v11;
    *v16 = v11;
    *(v15 + 22) = 2080;
    v32 = a2;
    v17 = v11;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v18 = String.init<A>(describing:)();
    v20 = sub_100037B98(v18, v19, v33);
    v30 = v6;
    v21 = v20;

    *(v15 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s folderPresentationController: %@ node: %s", v15, 0x20u);
    sub_100006390(v16, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    v3 = v31;

    (*(v7 + 8))(v10, v30);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v22 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v23 = *(v3 + v22);

  v25 = sub_1000434A4(v24);

  v26 = v3 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v27 + 8))(v25, ObjectType, v27);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_10004969C(a2);
}

void sub_10004969C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22[0] = v2;
    v12 = v11;
    aBlock[0] = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100037B98(0xD000000000000018, 0x80000001000934D0, aBlock);
    *(v12 + 12) = 2080;
    v22[1] = a1;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v13 = String.init<A>(describing:)();
    v15 = sub_100037B98(v13, v14, aBlock);

    *(v12 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s node: %s", v12, 0x16u);
    swift_arrayDestroy();

    v2 = v22[0];
  }

  (*(v5 + 8))(v8, v4);
  type metadata accessor for DOCInteractionManager();
  v16 = String._bridgeToObjectiveC()();
  v17 = static DOCInteractionManager.sharedManager(for:)();

  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = v2;
  aBlock[4] = sub_100052540;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004BE04;
  aBlock[3] = &unk_1000AF538;
  v19 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v20 = v17;
  v21 = v2;

  [a1 fetchURL:v19];
  _Block_release(v19);
}

void sub_1000499C0(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v11 = a1;
  swift_unknownObjectRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_100037B98(0xD000000000000031, 0x8000000100093400, v33);
    *(v15 + 12) = 2112;
    *(v15 + 14) = v11;
    *v16 = v11;
    *(v15 + 22) = 2080;
    v32 = a2;
    v17 = v11;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v18 = String.init<A>(describing:)();
    v20 = sub_100037B98(v18, v19, v33);
    v30 = v6;
    v21 = v20;

    *(v15 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s folderPresentationController: %@ node: %s", v15, 0x20u);
    sub_100006390(v16, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    v3 = v31;

    (*(v7 + 8))(v10, v30);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v22 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v23 = *(v3 + v22);

  v25 = sub_1000434A4(v24);

  v26 = v3 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v27 + 8))(v25, ObjectType, v27);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_10004F718(a2);
}

uint64_t sub_100049CF8(char *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000589C(&qword_1000BBDC0, &qword_100090E90);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10008F930;
  v10 = &a1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
  v11 = *&a1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];
  *(v9 + 32) = *&a1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
  *(v9 + 40) = v11;

  static Logger.UI.getter();
  v12 = a1;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v44 = v4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v42 = v17;
    v43 = swift_slowAlloc();
    v49 = v43;
    *v16 = 136316162;
    *(v16 + 4) = sub_100037B98(0xD000000000000033, 0x80000001000933C0, &v49);
    *(v16 + 12) = 2112;
    *(v16 + 14) = v12;
    *v17 = v12;
    *(v16 + 22) = 2080;
    v48 = v3;
    v18 = v12;
    v19 = String.init<A>(describing:)();
    v45 = v3;
    v21 = sub_100037B98(v19, v20, &v49);
    HIDWORD(v41) = v14;
    v22 = v5;
    v23 = v10;
    v24 = v21;

    *(v16 + 24) = v24;
    v10 = v23;
    *(v16 + 32) = 2080;
    v47 = v18[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    v25 = String.init<A>(describing:)();
    v27 = sub_100037B98(v25, v26, &v49);

    *(v16 + 34) = v27;
    *(v16 + 42) = 2080;
    v28 = Array.description.getter();
    v30 = sub_100037B98(v28, v29, &v49);

    *(v16 + 44) = v30;
    v3 = v45;
    _os_log_impl(&_mh_execute_header, v13, BYTE4(v41), "%s folderPresentationController: %@ requestStateChange: %s transitionState: %s identifiers: %s", v16, 0x34u);
    sub_100006390(v42, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    (*(v22 + 8))(v8, v44);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  if ((v3 - 1) < 2)
  {

    v31 = v46 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v33 = *(v31 + 8);
    ObjectType = swift_getObjectType();
    v35 = *v10;
    v36 = *(v10 + 1);
    v37 = *(v33 + 16);

    v37(v35, v36, ObjectType, v33);
    goto LABEL_9;
  }

  v38 = v46 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v39 = *(v38 + 8);
    v40 = swift_getObjectType();
    (*(v39 + 8))(v9, v40, v39);
LABEL_9:

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_10004A144(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v43 = v9;
  v44 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v35[-v11];
  v13 = type metadata accessor for Logger();
  v41 = *(v13 - 8);
  v42 = v13;
  v14 = *(v41 + 64);
  __chkstk_darwin(v13);
  v16 = &v35[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.UI.getter();
  v17 = *(v7 + 16);
  v45 = a2;
  v40 = v17;
  v17(v12, a2, v6);
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v39 = v3;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = v23;
    v38 = swift_slowAlloc();
    v46 = v38;
    *v22 = 136315650;
    *(v22 + 4) = sub_100037B98(0xD000000000000033, 0x80000001000934F0, &v46);
    *(v22 + 12) = 2112;
    *(v22 + 14) = v18;
    *v23 = v18;
    *(v22 + 22) = 2080;
    sub_1000523E8(&unk_1000BC418, &type metadata accessor for URL);
    v24 = v18;
    v36 = v20;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v7 + 8))(v12, v6);
    v28 = sub_100037B98(v25, v27, &v46);

    *(v22 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v19, v36, "%s folderPresentationController: %@ didUpdateFolderURL: %s", v22, 0x20u);
    sub_100006390(v37, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    v3 = v39;
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  (*(v41 + 8))(v16, v42);
  v29 = v44;
  v40(v44, v45, v6);
  v30 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v3;
  *(v31 + 24) = v18;
  (*(v7 + 32))(v31 + v30, v29, v6);
  v32 = v18;
  v33 = v3;
  DOCRunInMainThread(_:)();
}

uint64_t sub_10004A580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    UUID.init()();
    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*(v7 + 8))(v10, v6);
    v18 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
    v19 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8);
    v20 = *(v13 + 24);

    v20(v15, v17, v18, v19, a3, ObjectType, v13);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10004A700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(v13 + 8);
    v24 = a4;
    ObjectType = swift_getObjectType();
    UUID.init()();
    v17 = UUID.uuidString.getter();
    v19 = v18;
    (*(v9 + 8))(v12, v8);
    v20 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
    v21 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8);
    v22 = *(v15 + 32);

    v22(v17, v19, v20, v21, a3, v24, ObjectType, v15);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10004A890(void *a1, uint64_t a2)
{
  v3 = v2;
  v40 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v6 = *(v40 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v40);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v37 - v10;
  v12 = type metadata accessor for Logger();
  v42 = *(v12 - 8);
  v43 = v12;
  v13 = *(v42 + 64);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  sub_100042774(a2, v11, &unk_1000BCA20, &qword_100090BC0);
  v16 = a1;
  v41 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = v17;
    v20 = v19;
    v21 = swift_slowAlloc();
    v37 = v21;
    v39 = swift_slowAlloc();
    v44 = v39;
    *v20 = 136315650;
    *(v20 + 4) = sub_100037B98(0xD000000000000034, 0x8000000100093530, &v44);
    *(v20 + 12) = 2112;
    *(v20 + 14) = v16;
    *v21 = v16;
    *(v20 + 22) = 2080;
    sub_100042774(v11, v8, &unk_1000BCA20, &qword_100090BC0);
    v22 = v16;
    v23 = String.init<A>(describing:)();
    LODWORD(v40) = v18;
    v24 = v6;
    v25 = a2;
    v26 = v3;
    v28 = v27;
    sub_100006390(v11, &unk_1000BCA20, &qword_100090BC0);
    v29 = v23;
    v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = sub_100037B98(v29, v28, &v44);
    v3 = v26;
    a2 = v25;
    v6 = v24;

    *(v20 + 24) = v30;
    v31 = v38;
    _os_log_impl(&_mh_execute_header, v38, v40, "%s folderPresentationController: %@ requestFolderDelete: %s", v20, 0x20u);
    sub_100006390(v37, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();
  }

  else
  {

    sub_100006390(v11, &unk_1000BCA20, &qword_100090BC0);
  }

  (*(v42 + 8))(v41, v43);
  sub_100042774(a2, v8, &unk_1000BCA20, &qword_100090BC0);
  v32 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v3;
  *(v33 + 24) = v16;
  sub_100042594(v8, v33 + v32);
  v34 = v16;
  v35 = v3;
  DOCRunInMainThread(_:)();
}

uint64_t sub_10004ACB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    UUID.init()();
    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*(v7 + 8))(v10, v6);
    v18 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
    v19 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8);
    v20 = *(v13 + 40);

    v20(v15, v17, v18, v19, a3, ObjectType, v13);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10004AE34(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = v3;
    v15 = a2;
    v16 = v14;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v16 = 136315650;
    *(v16 + 4) = sub_100037B98(0xD000000000000035, 0x8000000100092F40, &v25);
    *(v16 + 12) = 2112;
    *(v16 + 14) = v11;
    *v17 = v11;
    *(v16 + 22) = 1024;
    *(v16 + 24) = v15 & 1;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s folderPresentationController: %@ didCompleteAnimation expanded: %{BOOL}d", v16, 0x1Cu);
    sub_100006390(v17, &qword_1000BC328, &qword_100090AD0);

    sub_1000064E0(v18);

    a2 = v15;
    v3 = v24;
  }

  (*(v7 + 8))(v10, v6);
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = v11;
  *(v20 + 32) = a2 & 1;
  v21 = v11;
  v22 = v3;
  DOCRunInMainThread(_:)();
}

uint64_t sub_10004B0A8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    UUID.init()();
    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*(v7 + 8))(v10, v6);
    v18 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
    v19 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8);
    v20 = *(v13 + 48);

    v20(v15, v17, v18, v19, a3 & 1, ObjectType, v13);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10004B228(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v21 = a3;
  v22 = a4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultPermission];
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v11, v9, v6);
  *(v15 + v12) = a2;
  v16 = v21;
  *(v15 + v13) = v21;
  v17 = v22;
  *(v15 + v14) = v22;
  aBlock[4] = sub_100052550;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D508;
  aBlock[3] = &unk_1000AF588;
  v18 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v19 = v16;
  v20 = v17;

  [v10 adoptPersonaFromNode:a2 andPerformBlock:v18];
  _Block_release(v18);
}

uint64_t sub_10004B448(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v20 = a1;
  v21 = a4;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = (v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v11, v10, v7);
  *(v15 + v12) = a2;
  *(v15 + v13) = a3;
  v16 = v21;
  *(v15 + v14) = v21;
  swift_unknownObjectRetain();
  v17 = a3;
  v18 = v16;
  static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)();
}

uint64_t sub_10004B5EC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v29 = a2;
  v30 = a1;
  v6 = type metadata accessor for DOCAnalyticsActionEvent.ViewMode();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  __chkstk_darwin(v6);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DOCAnalyticsActionEvent.Source();
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v32);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DOCAnalyticsActionEvent.FileProvider();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = type metadata accessor for DOCAnalyticsActionEvent.Action();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DOCAnalyticsActionEvent();
  v20 = *(v31 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v31);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v30 & 1) == 0)
  {
    static LaunchUtils.launchDocuments(toPreview:node:alertPresenting:)();
  }

  (*(v16 + 104))(v19, enum case for DOCAnalyticsActionEvent.Action.openIn(_:), v15);
  sub_1000436E8();
  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10008F940;
  *(v24 + 32) = a3;
  swift_unknownObjectRetain();
  DOCAnalyticsActionEvent.FileProvider.init(nodes:)();
  v25 = [objc_opt_self() mainBundle];
  v26 = [v25 bundleIdentifier];

  if (v26)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  (*(v9 + 104))(v12, enum case for DOCAnalyticsActionEvent.Source.recents(_:), v32);
  (*(v34 + 104))(v33, enum case for DOCAnalyticsActionEvent.ViewMode.unknown(_:), v35);
  DOCAnalyticsActionEvent.init(actionType:configuration:provider:bundleIdentifier:source:viewMode:)();
  type metadata accessor for DOCAnalyticsManager();
  v27 = static DOCAnalyticsManager.shared.getter();
  DOCAnalyticsManager.sendActionEvent(_:)();

  dispatch thunk of DOCInteractionManager.lastOpenedNode.setter();
  return (*(v20 + 8))(v23, v31);
}

uint64_t sub_10004BA0C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v32 = a5;
  v33 = a2;
  v8 = type metadata accessor for Logger();
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v32 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of DOCInteractionManager.lastOpenedNode.setter();
  sub_100042774(a1, v15, &unk_1000BCA20, &qword_100090BC0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100006390(v15, &unk_1000BCA20, &qword_100090BC0);
    static Logger.UI.getter();
    swift_unknownObjectRetain();
    v21 = v33;
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v24 = 136315650;
      *(v24 + 4) = sub_100037B98(0xD000000000000018, 0x80000001000934D0, &v37);
      *(v24 + 12) = 2080;
      v36 = a4;
      swift_unknownObjectRetain();
      sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
      v25 = String.init<A>(describing:)();
      v27 = sub_100037B98(v25, v26, &v37);

      *(v24 + 14) = v27;
      *(v24 + 22) = 2080;
      v36 = v21;
      swift_errorRetain();
      sub_10000589C(&unk_1000BC4B0, &qword_100090BC8);
      v28 = String.init<A>(describing:)();
      v30 = sub_100037B98(v28, v29, &v37);

      *(v24 + 24) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s fetch url from node: %s error: %s", v24, 0x20u);
      swift_arrayDestroy();
    }

    return (*(v34 + 8))(v11, v35);
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    sub_10004B228(v20, a4, v32, a3);
    return (*(v17 + 8))(v20, v16);
  }
}

uint64_t sub_10004BE04(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (*(*(sub_10000589C(&unk_1000BCA20, &qword_100090BC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v15 - v7;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  }

  v13 = a3;
  v10(v8, a3);

  return sub_100006390(v8, &unk_1000BCA20, &qword_100090BC0);
}

id sub_10004BF58(uint64_t a1, void *a2)
{
  v76 = a2;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 8);
  v5 = __chkstk_darwin(v2);
  v73 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v75 = &v71 - v7;
  v8 = type metadata accessor for URL();
  v77 = *(v8 - 8);
  v9 = *(v77 + 8);
  v10 = __chkstk_darwin(v8);
  v72 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v78 = &v71 - v12;
  v13 = type metadata accessor for URLComponents();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v79 = &v71 - v23;
  v24 = sub_10000589C(&qword_1000BC6C0, &qword_100090E98);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v71 - v26;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v28 = *(v14 + 48);
  v29 = v28(v27, 1, v13);
  v80 = v27;
  if (!v29)
  {
    URLComponents.scheme.setter();
    v27 = v80;
  }

  if (!v28(v27, 1, v13))
  {
    sub_10000589C(&qword_1000BC6C8, qword_100090EA0);
    v30 = *(type metadata accessor for URLQueryItem() - 8);
    v71 = v8;
    v74 = v2;
    v31 = *(v30 + 72);
    v32 = v3;
    v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    *(swift_allocObject() + 16) = xmmword_100090DF0;
    URLQueryItem.init(name:value:)();
    v3 = v32;
    v2 = v74;
    v8 = v71;
    URLQueryItem.init(name:value:)();
    URLComponents.queryItems.setter();
    v27 = v80;
  }

  if (v28(v27, 1, v13))
  {
    v34 = v77;
    v35 = v79;
    (*(v77 + 7))(v79, 1, 1, v8);
  }

  else
  {
    (*(v14 + 16))(v17, v27, v13);
    v35 = v79;
    URLComponents.url.getter();
    (*(v14 + 8))(v17, v13);
    v34 = v77;
  }

  v36 = v78;
  v37 = v76;
  sub_100042774(v35, v22, &unk_1000BCA20, &qword_100090BC0);
  if ((*(v34 + 6))(v22, 1, v8) == 1)
  {
    sub_100006390(v35, &unk_1000BCA20, &qword_100090BC0);
    v38 = v22;
LABEL_20:
    sub_100006390(v38, &unk_1000BCA20, &qword_100090BC0);
    return sub_100006390(v80, &qword_1000BC6C0, &qword_100090E98);
  }

  (*(v34 + 4))(v36, v22, v8);
  v39 = v75;
  static Logger.UI.getter();
  swift_unknownObjectRetain();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v42 = 136315394;
    *(v42 + 4) = sub_100037B98(0xD000000000000013, 0x8000000100093480, &v82);
    *(v42 + 12) = 2080;
    v81 = v37;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v43 = String.init<A>(describing:)();
    v45 = v3;
    v46 = sub_100037B98(v43, v44, &v82);

    *(v42 + 14) = v46;
    v3 = v45;
    v36 = v78;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s node already has url for item: %s", v42, 0x16u);
    swift_arrayDestroy();

    v47 = *(v3 + 1);
    v47(v75, v2);
  }

  else
  {

    v47 = *(v3 + 1);
    v47(v39, v2);
  }

  v74 = v2;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v50 = result;
    URL._bridgeToObjectiveC()(v49);
    v52 = v51;
    sub_10003F1F0(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v82 = 0;
    v54 = [v50 openSensitiveURL:v52 withOptions:isa error:&v82];

    if (v54)
    {
      v55 = *(v34 + 1);
      v56 = v82;
      v55(v36, v8);
    }

    else
    {
      v77 = v47;
      v57 = v82;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v58 = v73;
      static Logger.UI.getter();
      v59 = v72;
      (*(v34 + 2))(v72, v36, v8);
      swift_errorRetain();
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v82 = v76;
        *v62 = 136315650;
        *(v62 + 4) = sub_100037B98(0xD000000000000013, 0x8000000100093480, &v82);
        *(v62 + 12) = 2080;
        sub_1000523E8(&unk_1000BC418, &type metadata accessor for URL);
        v63 = dispatch thunk of CustomStringConvertible.description.getter();
        v75 = v3;
        v65 = v64;
        v66 = *(v34 + 1);
        v66(v59, v8);
        v67 = sub_100037B98(v63, v65, &v82);

        *(v62 + 14) = v67;
        *(v62 + 22) = 2112;
        swift_errorRetain();
        v68 = _swift_stdlib_bridgeErrorToNSError();
        *(v62 + 24) = v68;
        v69 = v71;
        *v71 = v68;
        _os_log_impl(&_mh_execute_header, v60, v61, "%s failed to open url: %s error: %@", v62, 0x20u);
        sub_100006390(v69, &qword_1000BC328, &qword_100090AD0);

        swift_arrayDestroy();

        v77(v73, v74);
        v66(v78, v8);
      }

      else
      {

        v70 = *(v34 + 1);
        v70(v59, v8);
        v77(v58, v74);
        v70(v36, v8);
      }
    }

    v38 = v79;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004CA5C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v31 = a2;
  v6 = type metadata accessor for Logger();
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of DOCInteractionManager.lastOpenedNode.setter();
  sub_100042774(a1, v13, &unk_1000BCA20, &qword_100090BC0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100006390(v13, &unk_1000BCA20, &qword_100090BC0);
    static Logger.UI.getter();
    swift_unknownObjectRetain();
    v19 = v31;
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v22 = 136315650;
      *(v22 + 4) = sub_100037B98(0xD000000000000015, 0x8000000100093460, &v35);
      *(v22 + 12) = 2080;
      v34 = a4;
      swift_unknownObjectRetain();
      sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
      v23 = String.init<A>(describing:)();
      v25 = sub_100037B98(v23, v24, &v35);

      *(v22 + 14) = v25;
      *(v22 + 22) = 2080;
      v34 = v19;
      swift_errorRetain();
      sub_10000589C(&unk_1000BC4B0, &qword_100090BC8);
      v26 = String.init<A>(describing:)();
      v28 = sub_100037B98(v26, v27, &v35);

      *(v22 + 24) = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s fetch url from node: %s error: %s", v22, 0x20u);
      swift_arrayDestroy();
    }

    return (*(v32 + 8))(v9, v33);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    sub_10004BF58(v18, a4);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_10004CEB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  v20 = a2;
  v21 = a3;
  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v19 = v21;
  *a4 = v20;
  *a5 = v19;
  return result;
}

void sub_10004CFD4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a3;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  static Logger.UI.getter();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v36 = v13;
    v39[0] = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_100037B98(0xD00000000000002ELL, 0x80000001000930B0, v39);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_100037B98(a1, a2, v39);
    _os_log_impl(&_mh_execute_header, v17, v18, "%s identifier: %s", v20, 0x16u);
    swift_arrayDestroy();
    v13 = v36;

    a4 = v35;
  }

  v22 = *(v10 + 8);
  v22(v16, v9);
  v23 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v24 = *(v5 + v23);
  if (*(v24 + 16))
  {

    v25 = sub_100037A68(a1, a2);
    if (v26)
    {
      v27 = *(*(v24 + 56) + 8 * v25);

      v28 = &v27[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderCollectionObserverUpdateHandler];
      v29 = *&v27[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderCollectionObserverUpdateHandler];
      v30 = *&v27[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderCollectionObserverUpdateHandler + 8];
      *v28 = v37;
      *(v28 + 1) = a4;

      sub_10004347C(v29);

      return;
    }
  }

  static Logger.UI.getter();

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v33 = 136315394;
    *(v33 + 4) = sub_100037B98(0xD00000000000002ELL, 0x80000001000930B0, &v38);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_100037B98(a1, a2, &v38);
    _os_log_impl(&_mh_execute_header, v31, v32, "%s no presentation controller identifier: %s !", v33, 0x16u);
    swift_arrayDestroy();
  }

  v22(v13, v9);
}

void sub_10004D48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = String._bridgeToObjectiveC()();
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a5 + 16))(a5, v6, v9, isa);
}

void sub_10004D524(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  static Logger.UI.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v10;
    v33[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_100037B98(0xD000000000000022, 0x8000000100093080, v33);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100037B98(a1, a2, v33);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s identifier: %s", v16, 0x16u);
    swift_arrayDestroy();
    v10 = v31;
  }

  v18 = *(v7 + 8);
  v18(v13, v6);
  v19 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v20 = *(v3 + v19);
  if (*(v20 + 16))
  {

    v21 = sub_100037A68(a1, a2);
    if (v22)
    {
      v23 = *(*(v20 + 56) + 8 * v21);

      v24 = &v23[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderCollectionObserverUpdateHandler];
      v25 = *&v23[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderCollectionObserverUpdateHandler];
      v26 = *&v23[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderCollectionObserverUpdateHandler + 8];
      *v24 = 0;
      *(v24 + 1) = 0;
      sub_10004347C(v25);

      return;
    }
  }

  static Logger.UI.getter();

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v29 = 136315394;
    *(v29 + 4) = sub_100037B98(0xD000000000000022, 0x8000000100093080, &v32);
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_100037B98(a1, a2, &v32);
    _os_log_impl(&_mh_execute_header, v27, v28, "%s no presentation controller identifier: %s !", v29, 0x16u);
    swift_arrayDestroy();
  }

  v18(v10, v6);
}

void sub_10004D968()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() protectedAppsEnabled])
  {
    static Logger.DockApp.getter();
    v6 = v0;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v24[0] = swift_slowAlloc();
      *v9 = 136315650;
      *(v9 + 4) = sub_100037B98(0xD000000000000021, 0x8000000100093050, v24);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_100037B98(0xD000000000000021, 0x8000000100093050, v24);
      *(v9 + 22) = 2112;
      *(v9 + 24) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s [PROTECTED APPS] %s %@", v9, 0x20u);
      sub_100006390(v10, &qword_1000BC328, &qword_100090AD0);

      swift_arrayDestroy();
    }

    (*(v2 + 8))(v5, v1);
    v12 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
    swift_beginAccess();
    v13 = *&v6[v12];
    v14 = 1 << *(v13 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v13 + 64);
    v17 = (v14 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v18 = 0;
    while (v16)
    {
      v19 = v18;
LABEL_12:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = *(*(v13 + 56) + ((v19 << 9) | (8 * v20)));
      v21 = v23;
      sub_10004DC98(&v23, v6);
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v16 = *(v13 + 64 + 8 * v19);
      ++v18;
      if (v16)
      {
        v18 = v19;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_10004DC98(void **a1, void *a2)
{
  v5 = type metadata accessor for Logger();
  v24 = *(v5 - 8);
  v6 = *(v24 + 64);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  static Logger.DockApp.getter();
  v10 = a2;
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v15 = 136315906;
    *(v15 + 4) = sub_100037B98(0xD000000000000021, 0x8000000100093050, &v25);
    v22 = v5;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_100037B98(0xD000000000000021, 0x8000000100093050, &v25);
    *(v15 + 22) = 2112;
    *(v15 + 24) = v10;
    *v16 = v10;
    *(v15 + 32) = 2080;
    v17 = *&v11[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v18 = *&v11[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];
    v19 = v10;

    v20 = sub_100037B98(v17, v18, &v25);

    *(v15 + 34) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s [PROTECTED APPS] %s %@ checking folder presentation controller: %s", v15, 0x2Au);
    sub_100006390(v16, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    (*(v24 + 8))(v8, v22);
  }

  else
  {

    (*(v24 + 8))(v8, v5);
  }

  sub_100026CAC();
}

unint64_t sub_10004DFA0(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10004E074(a1, v4);
}

unint64_t sub_10004E030(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10004E178(a1, v4);
}

unint64_t sub_10004E074(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10004E178(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10005195C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000519B8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10004E240(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10004E3F0(uint64_t a1, unint64_t a2, char a3, uint64_t a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v62 = a4;
  v25 = type metadata accessor for Logger();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v63 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v58 - v30;
  v32 = a5;
  static Logger.UI.getter();

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  v35 = os_log_type_enabled(v33, v34);
  v61 = a1;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v60 = v25;
    v37 = v36;
    v58 = swift_slowAlloc();
    v68[0] = v58;
    *v37 = 136316162;
    *(v37 + 4) = sub_100037B98(0xD00000000000003CLL, 0x8000000100092F00, v68);
    v59 = v26;
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_100037B98(a1, a2, v68);
    *(v37 + 22) = 2080;
    v64 = a6;
    v65 = a7;
    v66 = a8;
    v67 = a9;
    type metadata accessor for CGRect(0);
    v38 = String.init<A>(describing:)();
    v40 = a3;
    v41 = v32;
    v42 = sub_100037B98(v38, v39, v68);

    *(v37 + 24) = v42;
    v32 = v41;
    a3 = v40;
    *(v37 + 32) = 2080;
    v26 = v59;
    v64 = a10;
    v65 = a11;
    v66 = a12;
    v67 = a13;
    v43 = String.init<A>(describing:)();
    v45 = sub_100037B98(v43, v44, v68);

    *(v37 + 34) = v45;
    *(v37 + 42) = 1024;
    *(v37 + 44) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v33, v34, "%s identifier: %s iconFrame: %s dockFrame: %s animated: %{BOOL}d", v37, 0x30u);
    swift_arrayDestroy();

    v25 = v60;
  }

  v46 = *(v26 + 8);
  v46(v31, v25);
  v47 = v62;
  sub_100043D20(0);
  v48 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v49 = *(v47 + v48);
  v50 = v63;
  if (*(v49 + 16))
  {

    v51 = sub_100037A68(v61, a2);
    if (v52)
    {
      v53 = *(*(v49 + 56) + 8 * v51);

      v54 = v32;
      sub_10003AE44(a3 & 1, v53, v54, a6, a7, a8, a9, a10, a11, a12, a13);

      goto LABEL_10;
    }
  }

  static Logger.UI.getter();

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v68[0] = swift_slowAlloc();
    *v57 = 136315394;
    *(v57 + 4) = sub_100037B98(0xD00000000000003CLL, 0x8000000100092F00, v68);
    *(v57 + 12) = 2080;
    *(v57 + 14) = sub_100037B98(v61, a2, v68);
    _os_log_impl(&_mh_execute_header, v55, v56, "%s no folderController for identifier: %s", v57, 0x16u);
    swift_arrayDestroy();
  }

  v46(v50, v25);
  *(v32 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_isOpened) = 0;
LABEL_10:
}

uint64_t sub_10004E8F0()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10004E93C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004E974()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1);
}

void sub_10004E9A0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, unint64_t a7, int a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, double a13, double a14, CGFloat a15, CGFloat a16, unint64_t a17, uint64_t a18, unint64_t a19)
{
  LODWORD(v19) = a8;
  v128 = a6;
  v126 = a17;
  v111 = type metadata accessor for DispatchWorkItemFlags();
  v116 = *(v111 - 8);
  v34 = *(v116 + 64);
  __chkstk_darwin(v111);
  v114 = &v107[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v115 = type metadata accessor for DispatchQoS();
  v113 = *(v115 - 8);
  v36 = *(v113 + 64);
  __chkstk_darwin(v115);
  v112 = &v107[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v125 = type metadata accessor for Logger();
  v124 = *(v125 - 1);
  v38 = *(v124 + 64);
  __chkstk_darwin(v125);
  v121 = &v107[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v40);
  v42 = &v107[-v41];
  v43 = swift_allocObject();
  v122 = a18;
  *(v43 + 16) = a18;
  *(v43 + 24) = a19;
  v129 = v43;
  v123 = a19;

  static Logger.UI.getter();

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  v46 = os_log_type_enabled(v44, v45);
  v120 = a5;
  v118 = a4;
  v117 = a7;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v108 = v45;
    v48 = v47;
    v109 = swift_slowAlloc();
    v136[0] = v109;
    *v48 = 136316930;
    *(v48 + 4) = sub_100037B98(0xD00000000000005ELL, 0x8000000100092FB0, v136);
    v127 = a3;
    *(v48 + 12) = 2080;
    *(v48 + 14) = sub_100037B98(a1, a2, v136);
    *(v48 + 22) = 2080;
    *(v48 + 24) = sub_100037B98(v127, a4, v136);
    *(v48 + 32) = 2080;
    if (a5)
    {
      v49 = 1702195828;
    }

    else
    {
      v49 = 0x65736C6166;
    }

    v119 = a1;
    if (a5)
    {
      v50 = 0xE400000000000000;
    }

    else
    {
      v50 = 0xE500000000000000;
    }

    v51 = sub_100037B98(v49, v50, v136);
    v110 = v19;
    v19 = v51;

    *(v48 + 34) = v19;
    *(v48 + 42) = 2080;
    v52 = v128;
    *(v48 + 44) = sub_100037B98(v128, a7, v136);
    *(v48 + 52) = 2080;
    aBlock = a9;
    v131 = *&a10;
    v132 = a11;
    v133 = a12;
    type metadata accessor for CGRect(0);
    v53 = String.init<A>(describing:)();
    v55 = sub_100037B98(v53, v54, v136);

    *(v48 + 54) = v55;
    *(v48 + 62) = 2080;
    a3 = v127;
    aBlock = a13;
    v131 = *&a14;
    v132 = a15;
    v133 = a16;
    v56 = String.init<A>(describing:)();
    v58 = sub_100037B98(v56, v57, v136);
    LOBYTE(v19) = v110;

    *(v48 + 64) = v58;
    a1 = v119;
    *(v48 + 72) = 1024;
    *(v48 + 74) = v19 & 1;
    _os_log_impl(&_mh_execute_header, v44, v108, "%s identifier: %s sortOrder: %s isAscending: %s displayMode: %s iconFrame: %s dockFrame: %s animated: %{BOOL}d", v48, 0x4Eu);
    swift_arrayDestroy();

    v59 = *(v124 + 8);
    v60 = v125;
    v59(v42, v125);
    v61 = v52;
    v62 = v60;
  }

  else
  {

    v59 = *(v124 + 8);
    v62 = v125;
    v59(v42, v125);
    v61 = v128;
  }

  v63 = v126;
  sub_100043D20(1);
  v64 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v65 = *(v63 + v64);
  if (!*(v65 + 16))
  {
    goto LABEL_17;
  }

  v66 = sub_100037A68(a1, a2);
  if ((v67 & 1) == 0)
  {

LABEL_17:
    v84 = v121;
    static Logger.UI.getter();

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      aBlock = COERCE_DOUBLE(swift_slowAlloc());
      *v87 = 136315394;
      *(v87 + 4) = sub_100037B98(0xD00000000000005ELL, 0x8000000100092FB0, &aBlock);
      *(v87 + 12) = 2080;
      *(v87 + 14) = sub_100037B98(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v85, v86, "%s no folderController for identifier: %s", v87, 0x16u);
      swift_arrayDestroy();
    }

    v59(v84, v62);
    sub_100057174(0, v122, v123);
    goto LABEL_20;
  }

  v119 = a1;
  v126 = a2;
  v68 = *(*(v65 + 56) + 8 * v66);

  sub_10001ECB8(a9, a10, a11, a12, a13, a14, a15, a16);
  v69 = swift_allocObject();
  v70 = v117;
  *(v69 + 16) = v61;
  *(v69 + 24) = v70;
  v127 = a3;
  v71 = v118;
  *(v69 + 32) = a3;
  *(v69 + 40) = v71;
  *(v69 + 48) = v120 & 1;
  *(v69 + 56) = a9;
  *(v69 + 64) = a10;
  *(v69 + 72) = a11;
  *(v69 + 80) = a12;
  *(v69 + 88) = v68;
  *(v69 + 96) = a13;
  *(v69 + 104) = a14;
  *(v69 + 112) = a15;
  *(v69 + 120) = a16;
  v72 = v19 & 1;
  *(v69 + 128) = v19 & 1;
  v73 = v129;
  *(v69 + 136) = sub_10005211C;
  *(v69 + 144) = v73;
  v74 = *&v68[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
  if (v74 && (v75 = *(*(v74 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection)) != 0)
  {

    v125 = v68;

    v76 = v70;
    v77 = v19;
    v19 = v75;
    v78 = dispatch thunk of DOCNodeCollection.observedNode.getter();

    LOBYTE(v19) = v77;
    v70 = v76;

    if (v78)
    {
      v79 = [objc_opt_self() sharedManager];
      v80 = swift_allocObject();
      v81 = v126;
      *(v80 + 16) = v119;
      *(v80 + 24) = v81;
      *(v80 + 32) = a9;
      *(v80 + 40) = a10;
      *(v80 + 48) = a11;
      *(v80 + 56) = a12;
      *(v80 + 64) = sub_100052128;
      *(v80 + 72) = v69;
      v82 = v129;
      *(v80 + 80) = sub_10005211C;
      *(v80 + 88) = v82;
      v134 = sub_100052130;
      v135 = v80;
      aBlock = COERCE_DOUBLE(_NSConcreteStackBlock);
      v131 = 1107296256;
      v132 = COERCE_DOUBLE(sub_100065170);
      v133 = COERCE_DOUBLE(&unk_1000AF240);
      v83 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v79 authenticateLocationWithNoUI:v78 checkFilesApp:1 completion:v83];

      _Block_release(v83);

      swift_unknownObjectRelease_n();
      return;
    }
  }

  else
  {

    v88 = v68;
  }

  v89._countAndFlagsBits = v128;
  v89._object = v70;
  v90 = _findStringSwitchCase(cases:string:)(&off_1000ADBB8, v89);

  v91 = v90 != 0;

  v137._countAndFlagsBits = v127;
  v137._object = v71;
  v92 = sub_10003C434(v137);
  if (v92 == 6)
  {
    v93 = 2;
  }

  else
  {
    v93 = v92;
  }

  if (sub_10001E8B0(v91 | (v93 << 8), v120 & 1, a11, a12))
  {
    v94 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
    v95 = *&v68[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
    if (v95)
    {
      [v95 reloadData];
      v96 = *&v68[v94];
      if (v96)
      {
        [v96 layoutIfNeeded];
      }
    }

    sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
    v97 = static OS_dispatch_queue.main.getter();
    v98 = swift_allocObject();
    *(v98 + 16) = v68;
    *(v98 + 24) = a9;
    *(v98 + 32) = a10;
    *(v98 + 40) = a11;
    *(v98 + 48) = a12;
    *(v98 + 56) = a13;
    *(v98 + 64) = a14;
    *(v98 + 72) = a15;
    *(v98 + 80) = a16;
    *(v98 + 88) = v72;
    v99 = v129;
    *(v98 + 96) = sub_10005211C;
    *(v98 + 104) = v99;
    v134 = sub_100052A68;
    v135 = v98;
    aBlock = COERCE_DOUBLE(_NSConcreteStackBlock);
    v131 = 1107296256;
    v132 = COERCE_DOUBLE(sub_10000D508);
    v133 = COERCE_DOUBLE(&unk_1000AF1F0);
    v100 = _Block_copy(&aBlock);
    v101 = v68;

    v102 = v112;
    static DispatchQoS.unspecified.getter();
    aBlock = COERCE_DOUBLE(_swiftEmptyArrayStorage);
    sub_1000523E8(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000589C(&unk_1000BCE30, &unk_100090E70);
    sub_1000518F8();
    v103 = v114;
    v104 = v111;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v100);

    (*(v116 + 8))(v103, v104);
    (*(v113 + 8))(v102, v115);
LABEL_20:

    return;
  }

  v105 = swift_allocObject();
  v106 = v129;
  *(v105 + 16) = sub_10005211C;
  *(v105 + 24) = v106;

  sub_100020E78(v19 & 1, sub_100052A88, v105, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_10004F718(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  swift_unknownObjectRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100037B98(0xD000000000000015, 0x8000000100093460, aBlock);
    *(v9 + 12) = 2080;
    v18[1] = a1;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v10 = String.init<A>(describing:)();
    v12 = sub_100037B98(v10, v11, aBlock);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s node: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  (*(v3 + 8))(v6, v2);
  type metadata accessor for DOCInteractionManager();
  v13 = String._bridgeToObjectiveC()();
  v14 = static DOCInteractionManager.sharedManager(for:)();

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  aBlock[4] = sub_1000524F0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004BE04;
  aBlock[3] = &unk_1000AF4E8;
  v16 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v17 = v14;

  [a1 fetchURL:v16];
  _Block_release(v16);
}

uint64_t sub_10004FA28(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *), void *a6, void *a7)
{
  v61 = a3;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v56 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v62 = &v55 - v18;
  __chkstk_darwin(v19);
  v21 = &v55 - v20;
  v22 = swift_allocObject();
  v59 = a4;
  v60 = a5;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;

  v58 = a6;
  v57 = a7;
  static Logger.UI.getter();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v64[0] = swift_slowAlloc();
    *v25 = 136315394;
    *(v25 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093010, v64);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_100037B98(a1, a2, v64);
    _os_log_impl(&_mh_execute_header, v23, v24, "%s identifier: %s", v25, 0x16u);
    swift_arrayDestroy();
  }

  v26 = *(v14 + 8);
  v26(v21, v13);
  v27 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  v28 = v61;
  swift_beginAccess();
  v29 = *(v28 + v27);
  v30 = v62;
  if (*(v29 + 16))
  {

    v31 = sub_100037A68(a1, a2);
    if (v32)
    {
      v61 = v14;
      v62 = v13;
      v33 = *(*(v29 + 56) + 8 * v31);

      v34 = v56;
      static Logger.UI.getter();

      v35 = v33;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v60 = v26;
        v39 = v38;
        v59 = swift_slowAlloc();
        v63 = v59;
        *v39 = 136315650;
        *(v39 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093010, &v63);
        LODWORD(v58) = v37;
        *(v39 + 12) = 2080;
        *(v39 + 14) = sub_100037B98(a1, a2, &v63);
        *(v39 + 22) = 2080;
        v40 = v35;
        v41 = [v40 description];
        v42 = a1;
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v46 = v43;
        a1 = v42;
        v47 = sub_100037B98(v46, v45, &v63);

        *(v39 + 24) = v47;
        _os_log_impl(&_mh_execute_header, v36, v58, "%s requesting image data from controller with identifier: %s controller: %s", v39, 0x20u);
        swift_arrayDestroy();

        v60(v56, v62);
      }

      else
      {

        v26(v34, v62);
      }

      v52 = swift_allocObject();
      v52[2] = a1;
      v52[3] = a2;
      v52[4] = v35;
      v52[5] = sub_10005232C;
      v52[6] = v22;

      v53 = v35;

      sub_100033C70(sub_100052AB4, v52);
    }
  }

  static Logger.UI.getter();

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v50 = 136315394;
    *(v50 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093010, &v63);
    *(v50 + 12) = 2080;
    *(v50 + 14) = sub_100037B98(a1, a2, &v63);
    _os_log_impl(&_mh_execute_header, v48, v49, "%s no folderController for identifier: %s", v50, 0x16u);
    swift_arrayDestroy();

    v51 = v62;
  }

  else
  {

    v51 = v30;
  }

  v26(v51, v13);
  sub_1000473B0(0, 0xF000000000000000, v59, v60, v58, v57);
}

void sub_1000500C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, unint64_t a7, int a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, double a13, double a14, CGFloat a15, CGFloat a16, unint64_t a17, uint64_t a18, unint64_t a19)
{
  LODWORD(v19) = a8;
  v128 = a6;
  v126 = a17;
  v111 = type metadata accessor for DispatchWorkItemFlags();
  v116 = *(v111 - 8);
  v34 = *(v116 + 64);
  __chkstk_darwin(v111);
  v114 = &v107[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v115 = type metadata accessor for DispatchQoS();
  v113 = *(v115 - 8);
  v36 = *(v113 + 64);
  __chkstk_darwin(v115);
  v112 = &v107[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v125 = type metadata accessor for Logger();
  v124 = *(v125 - 1);
  v38 = *(v124 + 64);
  __chkstk_darwin(v125);
  v121 = &v107[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v40);
  v42 = &v107[-v41];
  v43 = swift_allocObject();
  v122 = a18;
  *(v43 + 16) = a18;
  *(v43 + 24) = a19;
  v129 = v43;
  v123 = a19;

  static Logger.UI.getter();

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  v46 = os_log_type_enabled(v44, v45);
  v120 = a5;
  v118 = a4;
  v117 = a7;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v108 = v45;
    v48 = v47;
    v109 = swift_slowAlloc();
    v136[0] = v109;
    *v48 = 136316930;
    *(v48 + 4) = sub_100037B98(0xD00000000000005ELL, 0x8000000100092FB0, v136);
    v127 = a3;
    *(v48 + 12) = 2080;
    *(v48 + 14) = sub_100037B98(a1, a2, v136);
    *(v48 + 22) = 2080;
    *(v48 + 24) = sub_100037B98(v127, a4, v136);
    *(v48 + 32) = 2080;
    if (a5)
    {
      v49 = 1702195828;
    }

    else
    {
      v49 = 0x65736C6166;
    }

    v119 = a1;
    if (a5)
    {
      v50 = 0xE400000000000000;
    }

    else
    {
      v50 = 0xE500000000000000;
    }

    v51 = sub_100037B98(v49, v50, v136);
    v110 = v19;
    v19 = v51;

    *(v48 + 34) = v19;
    *(v48 + 42) = 2080;
    v52 = v128;
    *(v48 + 44) = sub_100037B98(v128, a7, v136);
    *(v48 + 52) = 2080;
    aBlock = a9;
    v131 = *&a10;
    v132 = a11;
    v133 = a12;
    type metadata accessor for CGRect(0);
    v53 = String.init<A>(describing:)();
    v55 = sub_100037B98(v53, v54, v136);

    *(v48 + 54) = v55;
    *(v48 + 62) = 2080;
    a3 = v127;
    aBlock = a13;
    v131 = *&a14;
    v132 = a15;
    v133 = a16;
    v56 = String.init<A>(describing:)();
    v58 = sub_100037B98(v56, v57, v136);
    LOBYTE(v19) = v110;

    *(v48 + 64) = v58;
    a1 = v119;
    *(v48 + 72) = 1024;
    *(v48 + 74) = v19 & 1;
    _os_log_impl(&_mh_execute_header, v44, v108, "%s identifier: %s sortOrder: %s isAscending: %s displayMode: %s iconFrame: %s dockFrame: %s animated: %{BOOL}d", v48, 0x4Eu);
    swift_arrayDestroy();

    v59 = *(v124 + 8);
    v60 = v125;
    v59(v42, v125);
    v61 = v52;
    v62 = v60;
  }

  else
  {

    v59 = *(v124 + 8);
    v62 = v125;
    v59(v42, v125);
    v61 = v128;
  }

  v63 = v126;
  sub_100043D20(1);
  v64 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v65 = *(v63 + v64);
  if (!*(v65 + 16))
  {
    goto LABEL_17;
  }

  v66 = sub_100037A68(a1, a2);
  if ((v67 & 1) == 0)
  {

LABEL_17:
    v84 = v121;
    static Logger.UI.getter();

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      aBlock = COERCE_DOUBLE(swift_slowAlloc());
      *v87 = 136315394;
      *(v87 + 4) = sub_100037B98(0xD00000000000005ELL, 0x8000000100092FB0, &aBlock);
      *(v87 + 12) = 2080;
      *(v87 + 14) = sub_100037B98(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v85, v86, "%s no folderController for identifier: %s", v87, 0x16u);
      swift_arrayDestroy();
    }

    v59(v84, v62);
    sub_100059A44(0, v122, v123);
    goto LABEL_20;
  }

  v119 = a1;
  v126 = a2;
  v68 = *(*(v65 + 56) + 8 * v66);

  sub_10001ECB8(a9, a10, a11, a12, a13, a14, a15, a16);
  v69 = swift_allocObject();
  v70 = v117;
  *(v69 + 16) = v61;
  *(v69 + 24) = v70;
  v127 = a3;
  v71 = v118;
  *(v69 + 32) = a3;
  *(v69 + 40) = v71;
  *(v69 + 48) = v120 & 1;
  *(v69 + 56) = a9;
  *(v69 + 64) = a10;
  *(v69 + 72) = a11;
  *(v69 + 80) = a12;
  *(v69 + 88) = v68;
  *(v69 + 96) = a13;
  *(v69 + 104) = a14;
  *(v69 + 112) = a15;
  *(v69 + 120) = a16;
  v72 = v19 & 1;
  *(v69 + 128) = v19 & 1;
  v73 = v129;
  *(v69 + 136) = sub_100052134;
  *(v69 + 144) = v73;
  v74 = *&v68[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
  if (v74 && (v75 = *(*(v74 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection)) != 0)
  {

    v125 = v68;

    v76 = v70;
    v77 = v19;
    v19 = v75;
    v78 = dispatch thunk of DOCNodeCollection.observedNode.getter();

    LOBYTE(v19) = v77;
    v70 = v76;

    if (v78)
    {
      v79 = [objc_opt_self() sharedManager];
      v80 = swift_allocObject();
      v81 = v126;
      *(v80 + 16) = v119;
      *(v80 + 24) = v81;
      *(v80 + 32) = a9;
      *(v80 + 40) = a10;
      *(v80 + 48) = a11;
      *(v80 + 56) = a12;
      *(v80 + 64) = sub_100052A70;
      *(v80 + 72) = v69;
      v82 = v129;
      *(v80 + 80) = sub_100052134;
      *(v80 + 88) = v82;
      v134 = sub_100052AB0;
      v135 = v80;
      aBlock = COERCE_DOUBLE(_NSConcreteStackBlock);
      v131 = 1107296256;
      v132 = COERCE_DOUBLE(sub_100065170);
      v133 = COERCE_DOUBLE(&unk_1000AF358);
      v83 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v79 authenticateLocationWithNoUI:v78 checkFilesApp:1 completion:v83];

      _Block_release(v83);

      swift_unknownObjectRelease_n();
      return;
    }
  }

  else
  {

    v88 = v68;
  }

  v89._countAndFlagsBits = v128;
  v89._object = v70;
  v90 = _findStringSwitchCase(cases:string:)(&off_1000ADBB8, v89);

  v91 = v90 != 0;

  v137._countAndFlagsBits = v127;
  v137._object = v71;
  v92 = sub_10003C434(v137);
  if (v92 == 6)
  {
    v93 = 2;
  }

  else
  {
    v93 = v92;
  }

  if (sub_10001E8B0(v91 | (v93 << 8), v120 & 1, a11, a12))
  {
    v94 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
    v95 = *&v68[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
    if (v95)
    {
      [v95 reloadData];
      v96 = *&v68[v94];
      if (v96)
      {
        [v96 layoutIfNeeded];
      }
    }

    sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
    v97 = static OS_dispatch_queue.main.getter();
    v98 = swift_allocObject();
    *(v98 + 16) = v68;
    *(v98 + 24) = a9;
    *(v98 + 32) = a10;
    *(v98 + 40) = a11;
    *(v98 + 48) = a12;
    *(v98 + 56) = a13;
    *(v98 + 64) = a14;
    *(v98 + 72) = a15;
    *(v98 + 80) = a16;
    *(v98 + 88) = v72;
    v99 = v129;
    *(v98 + 96) = sub_100052134;
    *(v98 + 104) = v99;
    v134 = sub_100052A68;
    v135 = v98;
    aBlock = COERCE_DOUBLE(_NSConcreteStackBlock);
    v131 = 1107296256;
    v132 = COERCE_DOUBLE(sub_10000D508);
    v133 = COERCE_DOUBLE(&unk_1000AF308);
    v100 = _Block_copy(&aBlock);
    v101 = v68;

    v102 = v112;
    static DispatchQoS.unspecified.getter();
    aBlock = COERCE_DOUBLE(_swiftEmptyArrayStorage);
    sub_1000523E8(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000589C(&unk_1000BCE30, &unk_100090E70);
    sub_1000518F8();
    v103 = v114;
    v104 = v111;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v100);

    (*(v116 + 8))(v103, v104);
    (*(v113 + 8))(v102, v115);
LABEL_20:

    return;
  }

  v105 = swift_allocObject();
  v106 = v129;
  *(v105 + 16) = sub_100052134;
  *(v105 + 24) = v106;

  sub_100020E78(v19 & 1, sub_100052A88, v105, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_100050E40(uint64_t a1, unint64_t a2, char a3, uint64_t a4, void *a5, unint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v69 = a5;
  v27 = type metadata accessor for Logger();
  v70 = *(v27 - 8);
  v28 = *(v70 + 64);
  __chkstk_darwin(v27);
  v30 = &v63[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v33 = &v63[-v32];
  v71 = a6;

  static Logger.UI.getter();

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  v36 = os_log_type_enabled(v34, v35);
  v68 = a2;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v67 = v27;
    v38 = v37;
    v65 = swift_slowAlloc();
    v76[0] = v65;
    *v38 = 136316162;
    *(v38 + 4) = sub_100037B98(0xD00000000000003CLL, 0x8000000100092F00, v76);
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_100037B98(a1, a2, v76);
    *(v38 + 22) = 2080;
    v72 = a7;
    v73 = a8;
    v74 = a9;
    v75 = a10;
    type metadata accessor for CGRect(0);
    v64 = v35;
    v39 = String.init<A>(describing:)();
    v41 = sub_100037B98(v39, v40, v76);
    v42 = a4;
    v43 = a3;
    v44 = v30;
    v66 = a1;
    v45 = v41;

    *(v38 + 24) = v45;
    v46 = v70;
    v30 = v44;
    a3 = v43;
    a4 = v42;
    *(v38 + 32) = 2080;
    v72 = a11;
    v73 = a12;
    v74 = a13;
    v75 = a14;
    v47 = String.init<A>(describing:)();
    v49 = sub_100037B98(v47, v48, v76);

    *(v38 + 34) = v49;
    *(v38 + 42) = 1024;
    *(v38 + 44) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v34, v64, "%s identifier: %s iconFrame: %s dockFrame: %s animated: %{BOOL}d", v38, 0x30u);
    swift_arrayDestroy();

    v27 = v67;

    v50 = v46;
    a1 = v66;
  }

  else
  {

    v50 = v70;
  }

  v51 = *(v50 + 8);
  v51(v33, v27);
  sub_100043D20(0);
  v52 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v53 = *(a4 + v52);
  v54 = v68;
  if (*(v53 + 16))
  {

    v55 = sub_100037A68(a1, v54);
    if (v56)
    {
      v57 = *(*(v53 + 56) + 8 * v55);

      v58 = v71;

      sub_10003D250(a3 & 1, v57, v69, v58, a7, a8, a9, a10, a11, a12, a13, a14);
    }
  }

  static Logger.UI.getter();

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v76[0] = swift_slowAlloc();
    *v61 = 136315394;
    *(v61 + 4) = sub_100037B98(0xD00000000000003CLL, 0x8000000100092F00, v76);
    *(v61 + 12) = 2080;
    *(v61 + 14) = sub_100037B98(a1, v54, v76);
    _os_log_impl(&_mh_execute_header, v59, v60, "%s no folderController for identifier: %s", v61, 0x16u);
    swift_arrayDestroy();
  }

  v51(v30, v27);
  sub_100059860(v69, v71);
}

void sub_10005137C(uint64_t a1, unint64_t a2, int a3, uint64_t a4, void *a5, void *a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  LODWORD(v17) = a3;
  v66 = a1;
  v27 = type metadata accessor for Logger();
  v67 = *(v27 - 8);
  v28 = *(v67 + 64);
  __chkstk_darwin(v27);
  v65 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v60 - v31;
  v33 = a5;
  v68 = a6;
  static Logger.UI.getter();

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v62 = v35;
    v37 = v36;
    v63 = swift_slowAlloc();
    v73 = v63;
    *v37 = 136316162;
    *(v37 + 4) = sub_100037B98(0xD00000000000003CLL, 0x8000000100092F00, &v73);
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_100037B98(v66, a2, &v73);
    *(v37 + 22) = 2080;
    v69 = a7;
    v70 = a8;
    v71 = a9;
    v72 = a10;
    type metadata accessor for CGRect(0);
    v61 = v34;
    v38 = String.init<A>(describing:)();
    v40 = sub_100037B98(v38, v39, &v73);
    v64 = v17;
    v41 = v33;
    v42 = v40;

    *(v37 + 24) = v42;
    v33 = v41;
    v17 = v67;
    *(v37 + 32) = 2080;
    v69 = a11;
    v70 = a12;
    v71 = a13;
    v72 = a14;
    v43 = String.init<A>(describing:)();
    v45 = sub_100037B98(v43, v44, &v73);

    *(v37 + 34) = v45;
    *(v37 + 42) = 1024;
    *(v37 + 44) = v64 & 1;
    v46 = v61;
    _os_log_impl(&_mh_execute_header, v61, v62, "%s identifier: %s iconFrame: %s dockFrame: %s animated: %{BOOL}d", v37, 0x30u);
    swift_arrayDestroy();

    v47 = v17;
    LOBYTE(v17) = v64;
  }

  else
  {

    v47 = v67;
  }

  v48 = *(v47 + 8);
  v48(v32, v27);
  sub_100043D20(0);
  v49 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v50 = *(a4 + v49);
  v51 = v65;
  if (*(v50 + 16))
  {

    v52 = sub_100037A68(v66, a2);
    if (v53)
    {
      v54 = *(*(v50 + 56) + 8 * v52);

      v55 = v33;
      v33 = v68;
      sub_10003DF5C(v17 & 1, v54, v55, v33, a7, a8, a9, a10, a11, a12, a13, a14);

      goto LABEL_12;
    }
  }

  static Logger.UI.getter();

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v58 = 136315394;
    *(v58 + 4) = sub_100037B98(0xD00000000000003CLL, 0x8000000100092F00, &v73);
    *(v58 + 12) = 2080;
    *(v58 + 14) = sub_100037B98(v66, a2, &v73);
    _os_log_impl(&_mh_execute_header, v56, v57, "%s no folderController for identifier: %s", v58, 0x16u);
    swift_arrayDestroy();
  }

  v48(v51, v27);
  objc_opt_self();
  v59 = swift_dynamicCastObjCClass();
  if (v59)
  {
    [v59 completeContextRequestUpdateFromHost:v68 withError:0];
  }

LABEL_12:
}

uint64_t sub_1000518E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000518F8()
{
  result = qword_1000BC410;
  if (!qword_1000BC410)
  {
    sub_1000143B0(&unk_1000BCE30, &unk_100090E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BC410);
  }

  return result;
}

uint64_t sub_100051A0C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void (*a5)(char *, char *), unint64_t a6)
{
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v57 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v62 = &v56 - v17;
  __chkstk_darwin(v18);
  v20 = &v56 - v19;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v60 = a5;
  v63 = v21;
  v21[4] = a6;
  v59 = a4;
  v61 = a6;

  static Logger.UI.getter();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v58 = v13;
    v25 = v12;
    v26 = v24;
    v65[0] = swift_slowAlloc();
    *v26 = 136315394;
    *(v26 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093010, v65);
    *(v26 + 12) = 2080;
    v27 = a1;
    *(v26 + 14) = sub_100037B98(a1, a2, v65);
    _os_log_impl(&_mh_execute_header, v22, v23, "%s identifier: %s", v26, 0x16u);
    swift_arrayDestroy();

    v12 = v25;
    v13 = v58;
  }

  else
  {
    v27 = a1;
  }

  v28 = *(v13 + 8);
  v28(v20, v12);
  v29 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v30 = *(a3 + v29);
  v31 = v27;
  v32 = v62;
  if (*(v30 + 16))
  {

    v33 = sub_100037A68(v31, a2);
    if (v34)
    {
      v58 = v13;
      v35 = *(*(v30 + 56) + 8 * v33);

      v36 = v57;
      static Logger.UI.getter();

      v37 = v35;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v62 = v12;
        v41 = v40;
        v61 = swift_slowAlloc();
        v64 = v61;
        *v41 = 136315650;
        *(v41 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093010, &v64);
        *(v41 + 12) = 2080;
        *(v41 + 14) = sub_100037B98(v31, a2, &v64);
        *(v41 + 22) = 2080;
        v42 = v37;
        v43 = [v42 description];
        v60 = v28;
        v44 = v31;
        v45 = v43;
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v31 = v44;
        v49 = sub_100037B98(v46, v48, &v64);

        *(v41 + 24) = v49;
        _os_log_impl(&_mh_execute_header, v38, v39, "%s requesting image data from controller with identifier: %s controller: %s", v41, 0x20u);
        swift_arrayDestroy();

        v60(v57, v62);
      }

      else
      {

        v28(v36, v12);
      }

      v53 = swift_allocObject();
      v53[2] = v31;
      v53[3] = a2;
      v53[4] = v37;
      v53[5] = sub_1000520D4;
      v53[6] = v63;

      v54 = v37;

      sub_100033C70(sub_1000520E0, v53);
    }
  }

  static Logger.UI.getter();

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v52 = 136315394;
    *(v52 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093010, &v64);
    *(v52 + 12) = 2080;
    *(v52 + 14) = sub_100037B98(v31, a2, &v64);
    _os_log_impl(&_mh_execute_header, v50, v51, "%s no folderController for identifier: %s", v52, 0x16u);
    swift_arrayDestroy();
  }

  v28(v32, v12);
  sub_10005D070(0, 0xF000000000000000, v59, v60, v61);
}

uint64_t sub_100052094()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000520E4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005213C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 144);

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_1000521D8()
{
  v1 = *(v0 + 104);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100052238()
{
  v1 = v0[3];

  v2 = v0[9];

  v3 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100052298()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000522D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000522E4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005233C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100052394()
{
  sub_100041D80(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000523E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100052430()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100052470()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000524B0()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000524F8()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100052550()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10004B448(v0 + v2, v5, v6, v7);
}

uint64_t sub_1000525F4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_1000526B8(int a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10004B5EC(a1, v1 + v4, v7, v8, v9);
}

uint64_t sub_10005276C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100052838()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_10004A580(v2, v3, v4);
}

uint64_t sub_10005289C()
{
  v1 = *(sub_10000589C(&unk_1000BCA20, &qword_100090BC0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000529C4()
{
  v1 = *(sub_10000589C(&unk_1000BCA20, &qword_100090BC0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_10004ACB4(v2, v3, v4);
}

void *sub_100052AB8(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v20 = v1 + 72;
    v21 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v22 = v7;
      v11 = *(*(v1 + 56) + 8 * v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v21;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v9 = 1 << *(v21 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v13 = *(v4 + 8 * v10);
      if ((v13 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (v6 & 0x3F));
      if (v14)
      {
        v9 = __clz(__rbit64(v14)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v10 << 6;
        v16 = v10 + 1;
        v17 = (v20 + 8 * v10);
        while (v16 < (v9 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_1000522D8(v6, v8, 0);
            v9 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = sub_1000522D8(v6, v8, 0);
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
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

id sub_100052CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10005DE20;
  v16 = &unk_1000AF6D8;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10005DE70;
  v16 = &unk_1000AF6B0;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  sub_1000414DC(a4);
  sub_1000414DC(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

void sub_100052E6C(void *a1, double a2, CGFloat a3)
{
  v4 = [a1 CGContext];
  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100090F10;
  v6 = [objc_allocWithZone(UIColor) initWithRed:0.51372549 green:0.22745098 blue:0.705882353 alpha:1.0];
  v7 = [v6 CGColor];

  *(v5 + 32) = v7;
  v8 = [objc_allocWithZone(UIColor) initWithRed:0.992156863 green:0.11372549 blue:0.11372549 alpha:1.0];
  v9 = [v8 CGColor];

  *(v5 + 40) = v9;
  v10 = [objc_allocWithZone(UIColor) initWithRed:0.988235294 green:0.690196078 blue:0.270588235 alpha:1.0];
  v11 = [v10 CGColor];

  *(v5 + 48) = v11;
  type metadata accessor for CGColor(0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  gradient = CGGradientCreateWithColors(0, isa, dbl_1000ADC28);

  if (gradient)
  {

    v15.x = 0.0;
    v16.x = 0.0;
    v16.y = 1.0;
    v15.y = a3;
    CGContextDrawLinearGradient(v4, gradient, v15, v16, 0);
  }

  else
  {
    __break(1u);
  }
}

id sub_10005306C(double a1, double a2, double a3, double a4)
{
  v14.receiver = v4;
  v14.super_class = type metadata accessor for GradientView();
  v9 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  v10 = sub_1000602D0();
  v11 = [objc_allocWithZone(UIImageView) initWithImage:v10];

  v12 = v11;
  [v12 setContentMode:4];
  [v12 setAutoresizingMask:18];
  [v9 bounds];
  [v12 setFrame:?];

  [v9 addSubview:v12];
  return v9;
}

void sub_10005324C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  *&v4[OBJC_IVAR____TtC21DockFolderViewService12FauxIconView_fauxThumbnailView] = 0;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService12FauxIconView_fauxLabelView] = 0;
  v35.receiver = v4;
  v35.super_class = type metadata accessor for FauxIconView();
  v9 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  Height = CGRectGetHeight(v36);
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  Width = CGRectGetWidth(v37);
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  v12 = [objc_allocWithZone(UIView) initWithFrame:{CGRectGetWidth(v38) + -68.0, 0.0, 68.0, Height}];
  v13 = OBJC_IVAR____TtC21DockFolderViewService12FauxIconView_fauxThumbnailView;
  v14 = *&v9[OBJC_IVAR____TtC21DockFolderViewService12FauxIconView_fauxThumbnailView];
  *&v9[OBJC_IVAR____TtC21DockFolderViewService12FauxIconView_fauxThumbnailView] = v12;
  v15 = v12;

  if (!v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = *&v9[v13];
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 systemBlueColor];
  [v18 setBackgroundColor:v19];

  v20 = *&v9[v13];
  if (!v20)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = [v20 layer];
  [v21 setCornerRadius:8.0];

  v22 = *&v9[v13];
  if (!v22)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = [v22 layer];
  [v23 setMasksToBounds:1];

  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  v24 = [objc_allocWithZone(UIView) initWithFrame:{0.0, CGRectGetHeight(v39) * 0.5 + -12.5, Width + -68.0 + -10.0, 25.0}];
  v25 = OBJC_IVAR____TtC21DockFolderViewService12FauxIconView_fauxLabelView;
  v26 = *&v9[OBJC_IVAR____TtC21DockFolderViewService12FauxIconView_fauxLabelView];
  *&v9[OBJC_IVAR____TtC21DockFolderViewService12FauxIconView_fauxLabelView] = v24;
  v27 = v24;

  if (!v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

  v28 = *&v9[v25];
  if (!v28)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29 = v28;
  v30 = [v17 systemBlueColor];
  [v29 setBackgroundColor:v30];

  v31 = *&v9[v25];
  if (!v31)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v32 = [v31 layer];
  [v32 setCornerRadius:8.0];

  v33 = *&v9[v25];
  if (!v33)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v34 = [v33 layer];
  [v34 setMasksToBounds:1];

  if (!*&v9[v25])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v9 addSubview:?];
  if (*&v9[v13])
  {
    [v9 addSubview:?];

    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_100053714()
{

  return _swift_deallocClassInstance(v0, 33, 7);
}

void sub_1000537D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000589C(&qword_1000BCAC8, &qword_100091018);
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v46 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v40[-v10];
  __chkstk_darwin(v12);
  v14 = &v40[-v13];
  v15 = type metadata accessor for Logger();
  v49 = *(v15 - 8);
  v16 = *(v49 + 64);
  __chkstk_darwin(v15);
  v18 = &v40[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.UI.getter();
  v19 = v6[2];
  v19(v14, a2, v5);
  v47 = v11;
  v19(v11, a2, v5);
  v48 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v44 = v15;
    v23 = v22;
    v43 = swift_slowAlloc();
    v50[0] = v43;
    *v23 = 136315650;
    *(v23 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100093F30, v50);
    *(v23 + 12) = 2080;
    v24 = v46;
    v19(v46, v14, v5);
    v25 = String.init<A>(describing:)();
    v45 = a3;
    v26 = v25;
    v42 = v20;
    v28 = v27;
    v41 = v21;
    v29 = v6[1];
    v29(v14, v5);
    v30 = sub_100037B98(v26, v28, v50);

    *(v23 + 14) = v30;
    *(v23 + 22) = 2080;
    v31 = v47;
    v19(v24, v47, v5);
    v32 = String.init<A>(describing:)();
    v34 = v33;
    v29(v31, v5);
    v35 = sub_100037B98(v32, v34, v50);

    *(v23 + 24) = v35;
    v36 = v42;
    _os_log_impl(&_mh_execute_header, v42, v41, "%s frame object: %s change: %s", v23, 0x20u);
    swift_arrayDestroy();

    (*(v49 + 8))(v48, v44);
  }

  else
  {

    v37 = v6[1];
    v37(v47, v5);
    v37(v14, v5);
    (*(v49 + 8))(v48, v15);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = Strong;
    sub_10005790C();
  }
}

id sub_100053C88(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = v4;
    v13 = v12;
    v22 = swift_slowAlloc();
    v24 = v22;
    *v13 = 136315394;
    *(v13 + 4) = sub_100037B98(0xD000000000000016, 0x8000000100093DC0, &v24);
    *(v13 + 12) = 2080;
    v14 = v9;
    v15 = [v14 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_100037B98(v16, v18, &v24);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s scene: %s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v5 + 8))(v8, v23);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return [*(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_recentsList) stopObserving];
}

void *sub_1000540A4(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v60 = a3;
  v62 = a6;
  v57 = a4;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v63 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v57 - v15;
  v17 = *a1;
  v18 = a1[1];
  v19 = [objc_opt_self() sharedManager];
  v20 = String._bridgeToObjectiveC()();
  sub_10005FF58(a2, v16);
  result = (*(v10 + 48))(v16, 1, v9);
  if (result == 1)
  {
    goto LABEL_27;
  }

  URL._bridgeToObjectiveC()(v22);
  v24 = v23;
  v25 = *(v10 + 8);
  v61 = v9;
  v58 = v25;
  v59 = v10 + 8;
  v25(v16, v9);
  [v19 startObservingFolderWithIdentifier:v20 url:v24];

  if (qword_1000BB708 != -1)
  {
    swift_once();
  }

  v26 = v61;
  if (v17 == qword_1000BF128 && v18 == qword_1000BF130 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v27 = 0;
    v28 = 0xE400000000000000;
    v29 = 1684632167;
  }

  else
  {
    v28 = 0xE300000000000000;
    v27 = 1;
    v29 = 7233894;
  }

  if (qword_1000BB710 != -1)
  {
    swift_once();
  }

  v30 = qword_1000BF140;
  if (v17 == qword_1000BF138 && v18 == qword_1000BF140)
  {
    v31 = v60;
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v31 = v60;
    if ((v32 & 1) == 0)
    {
      v31 = v57;
    }
  }

  (*(v10 + 16))(v63, v31, v26, v30);
  if (v27)
  {
    v33 = 0;
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
  }

  result = *(v62 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView);
  if (!result)
  {
    goto LABEL_28;
  }

  [result frame];
  sub_100044594(v17, v18, v63, 0x6564644165746164, 0xE900000000000064, v33 & 1, v29, v28, 0.0, 0.0, 68.0, 68.0, v34, v35, v36, v37);
  v38 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  result = swift_beginAccess();
  v39 = *(a5 + v38);
  if (!*(v39 + 16))
  {
    __break(1u);
    goto LABEL_26;
  }

  v40 = sub_100037A68(v17, v18);
  v42 = v41;

  if ((v42 & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v43 = *(*(v39 + 56) + 8 * v40);

  v60 = v43;
  v44 = &v43[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
  v43[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
  v43[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
  v45 = objc_allocWithZone(DOCSBFolderDisplayMode);

  v46 = String._bridgeToObjectiveC()();

  v47 = [v45 initWithDisplayModeIdentifier:v46];

  if (v44[1] > 2u)
  {
    v44[1];
  }

  v48 = objc_allocWithZone(DOCSBFolderSortOrder);
  v49 = String._bridgeToObjectiveC()();

  v50 = [v48 initWithSortOrderIdentifier:v49];

  v51 = v44[24];
  type metadata accessor for FauxIconState();
  v52 = swift_allocObject();
  *(v52 + 16) = v47;
  *(v52 + 24) = v50;
  *(v52 + 32) = v51;
  v53 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconStateMap;
  v54 = v62;
  swift_beginAccess();
  v55 = *(v54 + v53);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = *(v54 + v53);
  *(v54 + v53) = 0x8000000000000000;
  sub_10005F20C(v52, v17, v18, isUniquelyReferenced_nonNull_native);

  *(v54 + v53) = v64;
  swift_endAccess();
  sub_1000562FC(v17, v18);

  return v58(v63, v61);
}

void sub_1000546F8(void *a1)
{
  v2 = v1;
  v4 = sub_10000589C(&qword_1000BCA98, &qword_100090FC8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v48 - v6;
  v8 = sub_10000589C(&unk_1000BCAA0, &unk_100090FD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v48 - v10;
  v12 = [objc_allocWithZone(UIStackView) init];
  v13 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView;
  v14 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView);
  *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView) = v12;
  v15 = v12;

  if (!v15)
  {
    __break(1u);
    goto LABEL_19;
  }

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = *(v2 + v13);
  if (!v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v16 setLayoutMargins:{17.5, 17.5, 17.5, 17.5}];
  v17 = *(v2 + v13);
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v17 setLayoutMarginsRelativeArrangement:1];
  v18 = [a1 view];
  if (!v18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!*(v2 + v13))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v19 = v18;
  [v18 addSubview:?];

  v20 = *(v2 + v13);
  if (!v20)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v20 setAxis:0];
  v21 = *(v2 + v13);
  if (!v21)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v21 setSpacing:17.5];
  v22 = *(v2 + v13);
  if (!v22)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v23 = [v22 bottomAnchor];
  v24 = [a1 view];
  if (!v24)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v25 = v24;
  v26 = [v24 safeAreaLayoutGuide];

  v27 = [v26 bottomAnchor];
  v28 = [v23 constraintEqualToAnchor:v27 constant:0.0];

  [v28 setActive:1];
  v29 = *(v2 + v13);
  if (!v29)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v30 = [v29 centerXAnchor];
  v31 = [a1 view];
  if (!v31)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v32 = v31;
  v33 = [v31 centerXAnchor];

  v34 = [v30 constraintEqualToAnchor:v33];
  v35 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_dockCenterXAnchor);
  *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_dockCenterXAnchor) = v34;
  v36 = v34;

  if (!v36)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v36 setActive:1];

  v37 = *(v2 + v13);
  if (!v37)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v38 = objc_allocWithZone(UIColor);
  v39 = v37;
  v40 = [v38 initWithWhite:0.9 alpha:0.7];
  [v39 setBackgroundColor:v40];

  v41 = *(v2 + v13);
  if (!v41)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v42 = v41;
  static _UICornerMaskingConfiguration.CornerStyle.fixed(radius:)();
  v43 = type metadata accessor for _UICornerMaskingConfiguration.CornerStyle();
  (*(*(v43 - 8) + 56))(v7, 0, 1, v43);
  static _UICornerMaskingConfiguration.containerConcentric(symmetric:fallbackStyle:)();
  sub_100006390(v7, &qword_1000BCA98, &qword_100090FC8);
  v44 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v44 - 8) + 56))(v11, 0, 1, v44);
  UIView.cornerMaskingConfiguration.setter();

  v45 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v2 action:"panGesture:"];
  [v45 setMinimumNumberOfTouches:1];
  [v45 setMaximumNumberOfTouches:1];
  v46 = *(v2 + v13);
  if (!v46)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v46 addGestureRecognizer:v45];
  v47 = *(v2 + v13);
  if (v47)
  {
    [v47 setUserInteractionEnabled:1];

    return;
  }

LABEL_33:
  __break(1u);
}

void sub_100054C40(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController);
  if (v2)
  {
    v4 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
    swift_beginAccess();
    v5 = *&v2[v4];
    v6 = v2;

    sub_100052AB8(v7);

    v17[0] = sub_10000FE9C(v8);
    sub_10005DF00(v17);

    v9 = v17[0];
    if (v17[0] < 0 || (v17[0] & 0x4000000000000000) != 0)
    {
      goto LABEL_15;
    }

    for (i = *(v17[0] + 16); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v9 + 16))
          {
            goto LABEL_14;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v17[0] = v12;
        sub_100054DF0(v17, v1, a1);

        ++v11;
        if (v14 == i)
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
    v15 = [v6 view];
    if (v15)
    {
      v16 = v15;

      [v16 layoutSubviews];
    }

    else
    {
      __break(1u);

      __break(1u);
    }
  }
}

void sub_100054DF0(void *a1, uint64_t a2, void *a3)
{
  v5 = (*a1 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
  v6 = *v5;
  v7 = v5[1];
  v8 = objc_allocWithZone(UIImageView);

  v9 = [v8 init];
  v10 = String._bridgeToObjectiveC()();

  [v9 setRestorationIdentifier:v10];

  [v9 setUserInteractionEnabled:1];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [v9 widthAnchor];
  v12 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconSize;
  v13 = [v11 constraintEqualToConstant:*(a2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconSize)];

  [v13 setActive:1];
  v14 = [v9 heightAnchor];

  v15 = [v14 constraintEqualToConstant:*(a2 + v12)];
  [v15 setActive:1];

  [a3 addArrangedSubview:v9];
  v16 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:a2 action:"handleIconTapWithSender:"];
  [v9 addGestureRecognizer:v16];
  v17 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockIconViews;
  swift_beginAccess();
  v18 = v9;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v17) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v20 = *((*(a2 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v19 = [objc_allocWithZone(UIContextMenuInteraction) initWithDelegate:a2];
  [v18 addInteraction:v19];
}