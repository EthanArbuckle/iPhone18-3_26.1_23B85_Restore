uint64_t sub_10005DCC0(char a1)
{
  *(v2 + 80) = v1;
  *(v2 + 144) = a1;
  *(v2 + 88) = type metadata accessor for MainActor();
  *(v2 + 96) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 104) = v4;
  *(v2 + 112) = v3;

  return _swift_task_switch(sub_10005DD60, v4, v3);
}

uint64_t sub_10005DD60()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 144);
  v4 = static MainActor.shared.getter();
  *(v0 + 120) = v4;
  v5 = swift_allocObject();
  *(v0 + 128) = v5;
  swift_unknownObjectWeakInit();
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  if (v4)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return _swift_task_switch(sub_10005DE40, v7, v9);
}

uint64_t sub_10005DE40()
{
  v1 = v0[17];
  v2 = v0[15];
  v0[2] = v0;
  v0[3] = sub_10005DEF0;
  v3 = swift_continuation_init();
  sub_10005E094(v3, *(v1 + 16), *(v1 + 24));

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10005DEF0()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v7 = *v0;

  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return _swift_task_switch(sub_10005E034, v5, v4);
}

uint64_t sub_10005E034()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10005E094(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    aBlock[4] = sub_10006E3C0;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100077B44;
    aBlock[3] = &unk_1000C6CF0;
    v8 = _Block_copy(aBlock);

    [v6 dismissViewControllerAnimated:a3 & 1 completion:v8];
    _Block_release(v8);
  }
}

uint64_t static AdaptiveTabBarController.isAdaptiveTabBarEnabled.getter()
{
  v0 = type metadata accessor for HomeAppFeatures();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UIKitFeatures();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for UIKitFeatures.floatingTabBar(_:), v5);
  sub_10005E620(&qword_1000D9EF8, &type metadata accessor for UIKitFeatures);
  v10 = FeatureFlagsKey.isEnabled.getter();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    (*(v1 + 104))(v4, enum case for HomeAppFeatures.adaptiveNavigation(_:), v0);
    sub_10005E620(&qword_1000D9F00, &type metadata accessor for HomeAppFeatures);
    v11 = FeatureFlagsKey.isEnabled.getter();
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_10005E620(unint64_t *a1, void (*a2)(uint64_t))
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

id AdaptiveTabBarController.baseController.getter()
{
  v1 = OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___baseController;
  v2 = *(v0 + OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___baseController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___baseController);
  }

  else
  {
    v4 = [objc_allocWithZone(HOBaseController) initWithRootController:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id _s7HomeApp24AdaptiveTabBarControllerC18dashboardNavigatorSo011HUDashboardH0_pSgvg_0()
{
  v1 = OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___navigator;
  v2 = *(v0 + OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___navigator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___navigator);
  }

  else
  {
    v4 = AdaptiveTabBarController.baseController.getter();
    v5 = [objc_opt_self() navigatorWithRootViewController:v0 baseController:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void *AdaptiveTabBarController.menuToolbarManager.getter()
{
  v1 = OBJC_IVAR___HOAdaptiveTabBarController_menuToolbarManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void AdaptiveTabBarController.menuToolbarManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___HOAdaptiveTabBarController_menuToolbarManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_10005E9BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v128 = *(v2 - 8);
  v129 = v2;
  v3 = *(v128 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v119 - v7;
  v134 = type metadata accessor for UUID();
  v130 = *(v134 - 8);
  v9 = *(v130 + 64);
  v10 = __chkstk_darwin(v134);
  v12 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v133 = &v119 - v13;
  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 selectedHomeAppTabIdentifier];

  v16 = HFHomeAppTabIdentifierHome;
  if (!v15)
  {
    v15 = HFHomeAppTabIdentifierHome;
  }

  v126 = v6;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v135 = v16;
  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {

    goto LABEL_10;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
LABEL_10:
    if ((*(v1 + OBJC_IVAR___HOAdaptiveTabBarController_hideRooms) & 1) == 0)
    {
      v23 = *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext);
      if (v23)
      {
        v24 = v23;
        v25 = DashboardContext.room.getter();

        if (v25)
        {
          v26 = *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_roomsElements);
          if (v26)
          {
            v121 = v26;
            v27 = [v121 _children];
            sub_10005B9DC(0, &qword_1000DA2D0, _UITab_ptr);
            v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v131 = v1;
            v120 = v8;
            if (v28 >> 62)
            {
LABEL_43:
              v29 = _CocoaArrayWrapper.endIndex.getter();
              if (v29)
              {
LABEL_16:
                v1 = 0;
                v124 = v28 & 0xFFFFFFFFFFFFFF8;
                v125 = v28 & 0xC000000000000001;
                v122 = v12;
                v123 = (v130 + 8);
                while (1)
                {
                  if (v125)
                  {
                    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    v31 = v1 + 1;
                    if (__OFADD__(v1, 1))
                    {
LABEL_29:
                      __break(1u);
                      goto LABEL_30;
                    }
                  }

                  else
                  {
                    if (v1 >= *(v124 + 16))
                    {
                      __break(1u);
                      goto LABEL_43;
                    }

                    v30 = *(v28 + 8 * v1 + 32);
                    v31 = v1 + 1;
                    if (__OFADD__(v1, 1))
                    {
                      goto LABEL_29;
                    }
                  }

                  v132 = v30;
                  v32 = [v30 _identifier];
                  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v35 = v34;

                  v36 = v25;
                  v37 = [v25 uniqueIdentifier];
                  v38 = v133;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v39 = UUID.uuidString.getter();
                  v41 = v40;
                  (*v123)(v38, v134);
                  if (v33 == v39 && v35 == v41)
                  {
                    break;
                  }

                  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v43)
                  {
                    goto LABEL_32;
                  }

                  ++v1;
                  v25 = v36;
                  v12 = v122;
                  if (v31 == v29)
                  {
                    goto LABEL_44;
                  }
                }

LABEL_32:

                objc_opt_self();
                v44 = v132;
                v45 = swift_dynamicCastObjCClass();
                v1 = v131;
                v46 = v120;
                if (!v45)
                {

                  v12 = v122;
                  goto LABEL_45;
                }

                v135 = v45;
                if (qword_1000D97C0 != -1)
                {
                  swift_once();
                }

                v47 = v129;
                v48 = sub_10006AF58(v129, qword_1000D9EE0);
                v49 = v128;
                (*(v128 + 16))(v46, v48, v47);
                v50 = v36;
                v51 = Logger.logObject.getter();
                v52 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v51, v52))
                {
                  v53 = swift_slowAlloc();
                  v54 = swift_slowAlloc();
                  v134 = v36;
                  v55 = v54;
                  v136 = swift_slowAlloc();
                  *v53 = 136315650;
                  v56 = sub_10006813C();
                  v58 = sub_10006B744(v56, v57, &v136);

                  *(v53 + 4) = v58;
                  *(v53 + 12) = 2080;
                  *(v53 + 14) = sub_10006B744(0xD000000000000012, 0x800000010009AC50, &v136);
                  *(v53 + 22) = 2112;
                  *(v53 + 24) = v50;
                  *v55 = v134;
                  v59 = v50;
                  _os_log_impl(&_mh_execute_header, v51, v52, "<%s: %s> Room Selected: %@", v53, 0x20u);
                  sub_10005C664(v55, &qword_1000D9C70, &qword_1000936A0);

                  swift_arrayDestroy();

                  v44 = v132;

                  (*(v49 + 8))(v120, v129);
                }

                else
                {

                  (*(v49 + 8))(v46, v47);
                }

                v60 = v121;
                [v121 _setSelectedElement:v135];
                v61 = *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_homeElements);
                if (v61)
                {
                  v60 = v60;
                  v62 = v61;
                  [v62 _setSelectedElement:v60];
                }

                else
                {
                }

                goto LABEL_106;
              }
            }

            else
            {
              v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v29)
              {
                goto LABEL_16;
              }
            }

LABEL_44:

            v1 = v131;
          }

          else
          {
LABEL_30:
          }
        }
      }
    }

LABEL_45:
    if ((*(v1 + OBJC_IVAR___HOAdaptiveTabBarController_hideCategories) & 1) == 0)
    {
      v63 = *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext);
      if (v63)
      {
        v64 = v63;
        v65 = dispatch thunk of DashboardContext.accessoryTypeGroup.getter();

        if (v65)
        {
          v66 = *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_categoriesElements);
          if (v66)
          {
            v121 = v66;
            v67 = [v121 _children];
            sub_10005B9DC(0, &qword_1000DA2D0, _UITab_ptr);
            v68 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v131 = v1;
            if (v68 >> 62)
            {
LABEL_78:
              v69 = _CocoaArrayWrapper.endIndex.getter();
              if (v69)
              {
LABEL_51:
                v1 = 0;
                v132 = (v68 & 0xC000000000000001);
                v125 = v68 & 0xFFFFFFFFFFFFFF8;
                v130 += 8;
                while (1)
                {
                  if (v132)
                  {
                    v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    v71 = v1 + 1;
                    if (__OFADD__(v1, 1))
                    {
LABEL_64:
                      __break(1u);
                      goto LABEL_65;
                    }
                  }

                  else
                  {
                    if (v1 >= *(v125 + 16))
                    {
                      __break(1u);
                      goto LABEL_78;
                    }

                    v70 = *(v68 + 8 * v1 + 32);
                    v71 = v1 + 1;
                    if (__OFADD__(v1, 1))
                    {
                      goto LABEL_64;
                    }
                  }

                  v133 = v70;
                  v72 = [v70 _identifier];
                  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v75 = v74;

                  v76 = v65;
                  v77 = [v65 uniqueIdentifier];
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v78 = UUID.uuidString.getter();
                  v80 = v79;
                  (*v130)(v12, v134);
                  if (v73 == v78 && v75 == v80)
                  {
                    break;
                  }

                  v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v82)
                  {
                    goto LABEL_67;
                  }

                  ++v1;
                  v65 = v76;
                  if (v71 == v69)
                  {
                    goto LABEL_79;
                  }
                }

LABEL_67:

                objc_opt_self();
                v83 = v133;
                v84 = swift_dynamicCastObjCClass();
                v1 = v131;
                v86 = v128;
                v85 = v129;
                v60 = v121;
                if (!v84)
                {

                  goto LABEL_80;
                }

                v87 = v84;
                if (qword_1000D97C0 != -1)
                {
                  swift_once();
                }

                v88 = sub_10006AF58(v85, qword_1000D9EE0);
                v89 = v126;
                (*(v86 + 16))(v126, v88, v85);
                v50 = v76;
                v90 = Logger.logObject.getter();
                v91 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v90, v91))
                {
                  v92 = swift_slowAlloc();
                  v135 = v87;
                  v93 = v92;
                  v94 = swift_slowAlloc();
                  v136 = swift_slowAlloc();
                  *v93 = 136315650;
                  v95 = sub_10006813C();
                  v97 = sub_10006B744(v95, v96, &v136);

                  *(v93 + 4) = v97;
                  *(v93 + 12) = 2080;
                  *(v93 + 14) = sub_10006B744(0xD000000000000012, 0x800000010009AC50, &v136);
                  *(v93 + 22) = 2112;
                  *(v93 + 24) = v50;
                  *v94 = v76;
                  v98 = v50;
                  _os_log_impl(&_mh_execute_header, v90, v91, "<%s: %s> Category Selected: %@", v93, 0x20u);
                  sub_10005C664(v94, &qword_1000D9C70, &qword_1000936A0);
                  v1 = v131;

                  swift_arrayDestroy();
                  v60 = v121;

                  v87 = v135;

                  (*(v128 + 8))(v89, v129);
                }

                else
                {

                  (*(v86 + 8))(v89, v85);
                }

                [v60 _setSelectedElement:v87];
                v99 = *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_homeElements);
                if (v99)
                {
                  v60 = v60;
                  v100 = v99;
                  [v100 _setSelectedElement:v60];
                }

                else
                {
                }

                goto LABEL_106;
              }
            }

            else
            {
              v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v69)
              {
                goto LABEL_51;
              }
            }

LABEL_79:

            v1 = v131;
          }

          else
          {
LABEL_65:
          }
        }
      }
    }

LABEL_80:
    v101 = OBJC_IVAR___HOAdaptiveTabBarController_homeElements;
    v102 = *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_homeElements);
    if (!v102)
    {
      v50 = 0;
      goto LABEL_107;
    }

    v103 = [v102 _children];
    sub_10005B9DC(0, &qword_1000DA2D0, _UITab_ptr);
    v104 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v131 = v1;
    v134 = v101;
    if (v104 >> 62)
    {
LABEL_102:
      v105 = _CocoaArrayWrapper.endIndex.getter();
      if (v105)
      {
LABEL_83:
        v106 = 0;
        while (1)
        {
          if ((v104 & 0xC000000000000001) != 0)
          {
            v107 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v106 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_101;
            }

            v107 = *(v104 + 8 * v106 + 32);
          }

          v108 = v107;
          v109 = v106 + 1;
          if (__OFADD__(v106, 1))
          {
            __break(1u);
LABEL_101:
            __break(1u);
            goto LABEL_102;
          }

          v110 = [v107 _identifier];
          v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v113 = v112;

          if (v111 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v113 == v114)
          {
            break;
          }

          v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v116)
          {
            goto LABEL_98;
          }

          ++v106;
          if (v109 == v105)
          {
            goto LABEL_103;
          }
        }

LABEL_98:

        objc_opt_self();
        v50 = swift_dynamicCastObjCClass();
        v117 = v131;
        if (!v50)
        {
        }

LABEL_104:
        v118 = *(v117 + v134);
        if (v118)
        {
          v60 = v118;
          [v60 _setSelectedElement:v50];
LABEL_106:
        }

LABEL_107:

        return;
      }
    }

    else
    {
      v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v105)
      {
        goto LABEL_83;
      }
    }

LABEL_103:

    v50 = 0;
    v117 = v131;
    goto LABEL_104;
  }
}

void sub_10005F7E0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 window];

    if (v9 && (v10 = [v9 windowScene], v9, v10))
    {
      v11 = [objc_opt_self() sharedInstance];
      v12 = [v11 selectedHomeAppTabIdentifier];

      if (!v12)
      {
        v12 = HFHomeAppTabIdentifierHome;
      }

      v13 = *&v1[OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext];
      v14 = v13;
      _s7HomeApp24AdaptiveTabBarControllerC11windowTitle03forD10Identifier16dashboardContextSSSgSo06HFHomebdJ0a_0A2UI09DashboardL0CSgtF_0(v12, v13);
      v16 = v15;

      v17 = v10;
      if (v16)
      {
        v24 = String._bridgeToObjectiveC()();
      }

      else
      {
        v24 = 0;
      }

      [v10 setTitle:v24];

      v22 = v24;
    }

    else
    {
      if (qword_1000D97C0 != -1)
      {
        swift_once();
      }

      v18 = sub_10006AF58(v2, qword_1000D9EE0);
      (*(v3 + 16))(v6, v18, v2);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Not updating window title, no window scene", v21, 2u);
      }

      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005FB08()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

id AdaptiveTabBarController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AdaptiveTabBarController.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = *(v55 + 64);
  (__chkstk_darwin)();
  v54 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v52 - v11;
  v13 = sub_1000578B4(&qword_1000D9F18, &unk_100093360);
  v14 = *(v13 - 8);
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v17 = &v52 - v16;
  *&v1[OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___baseController] = 0;
  *&v1[OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___navigator] = 0;
  *&v1[OBJC_IVAR___HOAdaptiveTabBarController_menuToolbarManager] = 0;
  *&v1[OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext] = 0;
  *&v1[OBJC_IVAR___HOAdaptiveTabBarController_roomsElements] = 0;
  *&v1[OBJC_IVAR___HOAdaptiveTabBarController_categoriesElements] = 0;
  *&v1[OBJC_IVAR___HOAdaptiveTabBarController_homeElements] = 0;
  v1[OBJC_IVAR___HOAdaptiveTabBarController_scrollToTop] = 0;
  v18 = OBJC_IVAR___HOAdaptiveTabBarController__viewIsVisible;
  LOBYTE(v57) = 0;
  Published.init(initialValue:)();
  (*(v14 + 32))(&v1[v18], v17, v13);
  *&v1[OBJC_IVAR___HOAdaptiveTabBarController_controllers] = &_swiftEmptyDictionarySingleton;
  v19 = OBJC_IVAR___HOAdaptiveTabBarController_initialLoadSignPost;
  *&v1[OBJC_IVAR___HOAdaptiveTabBarController_initialLoadSignPost] = 0;
  v20 = OBJC_IVAR___HOAdaptiveTabBarController_localeAvailability;
  v21 = [objc_opt_self() getAvailabilityDictionary];
  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v1[v20] = v22;
  v1[OBJC_IVAR___HOAdaptiveTabBarController_hideCategories] = 0;
  v1[OBJC_IVAR___HOAdaptiveTabBarController_hideRooms] = 0;
  if (qword_1000D97C8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for OSSignposter();
  sub_10006AF58(v23, qword_1000DB850);
  static OSSignpostID.exclusive.getter();
  v24 = OSSignposter.logHandle.getter();
  v25 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, v25, v27, "AdaptiveTabBarInitialLoad", "", v26, 2u);
  }

  (*(v6 + 16))(v10, v12, v5);
  v28 = type metadata accessor for OSSignpostIntervalState();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v6 + 8))(v12, v5);
  v32 = *&v1[v19];
  *&v1[v19] = v31;

  v33 = ObjectType;
  v60.receiver = v1;
  v60.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v60, "initWithNibName:bundle:", 0, 0);
  type metadata accessor for DashboardPresentationManager();
  v35 = v34;
  v36 = static DashboardPresentationManager.shared.getter();
  v58 = v33;
  v59 = sub_10005E620(&qword_1000D9F78, type metadata accessor for AdaptiveTabBarController);
  v57 = v35;
  v37 = v35;
  dispatch thunk of DashboardPresentationManager.delegate.setter();

  [v37 setDelegate:v37];
  v38 = objc_opt_self();
  v39 = [v38 sharedDispatcher];
  [v39 addHomeObserver:v37];

  v40 = [v38 sharedDispatcher];
  [v40 addUserObserver:v37];

  v41 = [v38 sharedDispatcher];
  [v41 addResidentDeviceObserver:v37];

  if (qword_1000D97C0 != -1)
  {
    swift_once();
  }

  v42 = v56;
  v43 = sub_10006AF58(v56, qword_1000D9EE0);
  v45 = v54;
  v44 = v55;
  (*(v55 + 16))(v54, v43, v42);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    v50 = _s7HomeApp24AdaptiveTabBarControllerC18dashboardNavigatorSo011HUDashboardH0_pSgvg_0();
    *(v48 + 4) = v50;
    *v49 = v50;
    _os_log_impl(&_mh_execute_header, v46, v47, "navigator create %@", v48, 0xCu);
    sub_10005C664(v49, &qword_1000D9C70, &qword_1000936A0);
  }

  (*(v44 + 8))(v45, v42);
  return v37;
}

uint64_t sub_1000602AC(void *a1)
{
  v29 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_1000578B4(&qword_1000D9F18, &unk_100093360);
  v23 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___baseController;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___baseController) = 0;
  v8 = OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___navigator;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___navigator) = 0;
  v9 = OBJC_IVAR___HOAdaptiveTabBarController_menuToolbarManager;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_menuToolbarManager) = 0;
  v25 = OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext) = 0;
  v26 = OBJC_IVAR___HOAdaptiveTabBarController_roomsElements;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_roomsElements) = 0;
  v27 = OBJC_IVAR___HOAdaptiveTabBarController_categoriesElements;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_categoriesElements) = 0;
  v28 = OBJC_IVAR___HOAdaptiveTabBarController_homeElements;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_homeElements) = 0;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_scrollToTop) = 0;
  v10 = OBJC_IVAR___HOAdaptiveTabBarController__viewIsVisible;
  v24 = OBJC_IVAR___HOAdaptiveTabBarController__viewIsVisible;
  v31 = 0;
  Published.init(initialValue:)();
  (*(v3 + 32))(v1 + v10, v6, v2);
  v11 = OBJC_IVAR___HOAdaptiveTabBarController_controllers;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_controllers) = &_swiftEmptyDictionarySingleton;
  v12 = OBJC_IVAR___HOAdaptiveTabBarController_initialLoadSignPost;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_initialLoadSignPost) = 0;
  v13 = OBJC_IVAR___HOAdaptiveTabBarController_localeAvailability;
  v14 = [objc_opt_self() getAvailabilityDictionary];
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *(v1 + v13) = v15;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_hideCategories) = 0;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_hideRooms) = 0;

  (*(v3 + 8))(v1 + v24, v23);
  v16 = *(v1 + v11);

  v17 = *(v1 + v12);

  v18 = *(v1 + v13);

  v19 = *((swift_isaMask & *v1) + 0x30);
  v20 = *((swift_isaMask & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

id AdaptiveTabBarController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___HOAdaptiveTabBarController_controllers;
  swift_beginAccess();
  v3 = *&v0[v2];
  *&v0[v2] = &_swiftEmptyDictionarySingleton;

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "dealloc");
}

Swift::Void __swiftcall AdaptiveTabBarController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1000578B4(&unk_1000DA580, &unk_100093370);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v51 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v51 - v13;
  v55.receiver = v1;
  v55.super_class = ObjectType;
  objc_msgSendSuper2(&v55, "viewDidLoad");
  v15 = String._bridgeToObjectiveC()();
  v16 = HFLocalizedString();

  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  [v1 setTitle:v16];

  v17 = objc_opt_self();
  v18 = [v17 sharedDispatcher];
  v19 = [v18 hasLoadedHomes];

  if (v19 && (v20 = [v17 sharedDispatcher], v21 = objc_msgSend(v20, "home"), v20, v21))
  {

    if (qword_1000D97C0 != -1)
    {
      swift_once();
    }

    v22 = sub_10006AF58(v7, qword_1000D9EE0);
    (*(v8 + 16))(v12, v22, v7);
    v23 = v1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "%@ viewDidLoad", v26, 0xCu);
      sub_10005C664(v27, &qword_1000D9C70, &qword_1000936A0);
    }

    (*(v8 + 8))(v12, v7);
    sub_100060E7C();
  }

  else
  {
    v54 = v6;
    v29 = AdaptiveTabBarController.baseController.getter();
    v30 = [v29 loadLoadingViewController];

    sub_1000578B4(&unk_1000D9F80, &unk_100093218);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100093150;
    *(v31 + 32) = v30;
    sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
    v32 = v30;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setViewControllers:isa];

    if (qword_1000D97C0 != -1)
    {
      swift_once();
    }

    v34 = sub_10006AF58(v7, qword_1000D9EE0);
    (*(v8 + 16))(v14, v34, v7);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v53 = v7;
      v39 = v38;
      *v37 = 67109378;
      v40 = [v17 sharedDispatcher];
      v52 = v8;
      v41 = v32;
      v42 = v40;
      v43 = [v40 hasLoadedHomes];

      *(v37 + 4) = v43;
      *(v37 + 8) = 2112;
      v44 = [v17 sharedDispatcher];
      v45 = [v44 home];

      *(v37 + 10) = v45;
      *v39 = v45;
      v32 = v41;
      v8 = v52;
      _os_log_impl(&_mh_execute_header, v35, v36, "Showing loading screen and hide sidebar, hasLoadedHomes:%{BOOL}d, hasHome: %@", v37, 0x12u);
      sub_10005C664(v39, &qword_1000D9C70, &qword_1000936A0);
      v7 = v53;
    }

    (*(v8 + 8))(v14, v7);
    v46 = type metadata accessor for TaskPriority();
    v47 = v54;
    (*(*(v46 - 8) + 56))(v54, 1, 1, v46);
    type metadata accessor for MainActor();
    v48 = v1;
    v49 = static MainActor.shared.getter();
    v50 = swift_allocObject();
    v50[2] = v49;
    v50[3] = &protocol witness table for MainActor;
    v50[4] = v48;
    sub_10005D938(0, 0, v47, &unk_100093388, v50);
  }
}

void sub_100060E7C()
{
  v0 = sub_1000578B4(&unk_1000D9FB0, &qword_1000933F8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v124 = v119 - v2;
  v3 = type metadata accessor for SidebarTabElementBuilder();
  v141 = *(v3 - 8);
  v4 = *(v141 + 64);
  v5 = __chkstk_darwin(v3);
  v142 = v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v127 = v119 - v8;
  __chkstk_darwin(v7);
  v128 = v119 - v9;
  v10 = type metadata accessor for OSSignpostError();
  v130 = *(v10 - 1);
  v11 = *(v130 + 64);
  v12 = __chkstk_darwin(v10);
  v126 = v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v125 = v119 - v14;
  updated = type metadata accessor for StateSnapshot.UpdateType();
  v129 = *(updated - 8);
  v16 = *(v129 + 64);
  __chkstk_darwin(updated);
  v18 = (v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for StateSnapshot();
  v137 = *(v19 - 8);
  v138 = v19;
  v20 = *(v137 + 64);
  __chkstk_darwin(v19);
  v135 = v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for OSSignpostID();
  v133 = *(v136 - 1);
  v22 = *(v133 + 64);
  v23 = __chkstk_darwin(v136);
  v132 = v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v131 = v119 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = v119 - v28;
  __chkstk_darwin(v27);
  v31 = v119 - v30;
  v32 = sub_1000578B4(&qword_1000DA2F8, &qword_100093508);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = v119 - v34;
  v36 = objc_opt_self();
  v37 = [v36 sharedDispatcher];
  v140 = [v37 home];

  if (v140)
  {
    v38 = [v36 sharedDispatcher];
    v39 = [v38 homeManager];

    if (v39)
    {
      v40 = [objc_opt_self() isAnIPhone];
      v139 = v3;
      v123 = v39;
      if (v40)
      {
        (*(v137 + 56))(v35, 1, 1, v138);
        v41 = static SidebarTabElementBuilder.createBaseLevelTabs(with:)();
        __chkstk_darwin(v41);
        v42 = v134;
        v119[-4] = v134;
        v119[-3] = v35;
        v119[-2] = v140;
        v43 = sub_10005D7B8(sub_10006E624, &v119[-6], v41);

        sub_10005C664(v35, &qword_1000DA2F8, &qword_100093508);
        if (v43 >> 62)
        {
          sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);

          _bridgeCocoaArray<A>(_:)();
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
        }

        v44 = v132;

        sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v42 setViewControllers:isa animated:0];
      }

      else
      {
        if (qword_1000D97C8 != -1)
        {
          swift_once();
        }

        v121 = v10;
        v47 = type metadata accessor for OSSignposter();
        v48 = sub_10006AF58(v47, qword_1000DB850);
        static OSSignpostID.exclusive.getter();
        v119[1] = v48;
        v49 = OSSignposter.logHandle.getter();
        v50 = static os_signpost_type_t.begin.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          v52 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v49, v50, v52, "AdaptiveTabBarBuildSnapshot", "", v51, 2u);
        }

        v53 = v133;
        v54 = v136;
        (*(v133 + 16))(v29, v31, v136);
        v55 = type metadata accessor for OSSignpostIntervalState();
        v56 = *(v55 + 48);
        v57 = *(v55 + 52);
        swift_allocObject();
        v122 = OSSignpostIntervalState.init(id:isOpen:)();
        v120 = *(v53 + 8);
        v120(v31, v54);
        *v18 = v140;
        (*(v129 + 104))(v18, enum case for StateSnapshot.UpdateType.all(_:), updated);
        v129 = *(v137 + 56);
        (v129)(v35, 1, 1, v138);
        sub_1000578B4(&qword_1000DA310, &qword_100093520);
        v58 = type metadata accessor for StateSnapshot.Coverage();
        v59 = *(v58 - 8);
        v60 = *(v59 + 72);
        v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_100093140;
        (*(v59 + 104))(v62 + v61, enum case for StateSnapshot.Coverage.everythingElse(_:), v58);
        v63 = v140;
        sub_10006C838(v62);
        swift_setDeallocating();
        (*(v59 + 8))(v62 + v61, v58);
        swift_deallocClassInstance();
        v64 = v63;
        v65 = v123;
        StateSnapshot.init(updateType:homeManager:home:previousStateSnapshot:coverages:)();
        v66 = OSSignposter.logHandle.getter();
        v67 = v131;
        OSSignpostIntervalState.signpostID.getter();
        v68 = static os_signpost_type_t.end.getter();
        v69 = OS_os_log.signpostsEnabled.getter();
        v10 = v121;
        if (v69)
        {

          v70 = v125;
          checkForErrorAndConsumeState(state:)();

          v71 = v130;
          if ((*(v130 + 88))(v70, v10) == enum case for OSSignpostError.doubleEnd(_:))
          {
            v72 = "[Error] Interval already ended";
          }

          else
          {
            (*(v71 + 8))(v70, v10);
            v72 = "";
          }

          v73 = swift_slowAlloc();
          *v73 = 0;
          v74 = v131;
          v75 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v66, v68, v75, "AdaptiveTabBarBuildSnapshot", v72, v73, 2u);
          v67 = v74;
        }

        v120(v67, v136);
        v76 = v138;
        (*(v137 + 16))(v35, v135, v138);
        (v129)(v35, 0, 1, v76);
        v77 = static SidebarTabElementBuilder.createBaseLevelTabs(with:)();
        __chkstk_darwin(v77);
        v42 = v134;
        v119[-4] = v134;
        v119[-3] = v35;
        v119[-2] = v64;
        v78 = sub_10005D7B8(sub_10006E624, &v119[-6], v77);

        sub_10005C664(v35, &qword_1000DA2F8, &qword_100093508);
        if (v78 >> 62)
        {
          sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);

          _bridgeCocoaArray<A>(_:)();
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
        }

        v3 = v139;
        v44 = v132;

        sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
        v79 = Array._bridgeToObjectiveC()().super.isa;

        [v42 setViewControllers:v79 animated:0];

        (*(v137 + 8))(v135, v138);
      }

      if (*&v42[OBJC_IVAR___HOAdaptiveTabBarController_initialLoadSignPost])
      {
        v80 = qword_1000D97C8;
        v81 = *&v42[OBJC_IVAR___HOAdaptiveTabBarController_initialLoadSignPost];

        if (v80 != -1)
        {
LABEL_50:
          swift_once();
        }

        v82 = type metadata accessor for OSSignposter();
        sub_10006AF58(v82, qword_1000DB850);
        v83 = OSSignposter.logHandle.getter();
        OSSignpostIntervalState.signpostID.getter();
        v84 = static os_signpost_type_t.end.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {

          v85 = v126;
          checkForErrorAndConsumeState(state:)();

          v86 = v130;
          if ((*(v130 + 88))(v85, v10) == enum case for OSSignpostError.doubleEnd(_:))
          {
            v87 = "[Error] Interval already ended";
          }

          else
          {
            (*(v86 + 8))(v85, v10);
            v87 = "";
          }

          v88 = swift_slowAlloc();
          *v88 = 0;
          v89 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v83, v84, v89, "AdaptiveTabBarInitialLoad", v87, v88, 2u);
        }

        (*(v133 + 8))(v44, v136);
        v3 = v139;
      }

      v90 = static SidebarTabElementBuilder.createBaseLevelTabs(with:)();
      v91 = *(v90 + 16);
      if (v91)
      {
        v136 = objc_opt_self();
        v92 = 0;
        v93 = v90 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
        v138 = v141 + 16;
        v135 = HFHomeAppTabIdentifierHome;
        v137 = v141 + 8;
        while (1)
        {
          if (v92 >= *(v90 + 16))
          {
            __break(1u);
            goto LABEL_50;
          }

          v10 = *(v141 + 16);
          (v10)(v142, v93 + *(v141 + 72) * v92, v3);
          v94 = SidebarTabElementBuilder.homeAppTabIdentifier.getter();
          v95 = [v136 sharedInstance];
          v96 = [v95 selectedHomeAppTabIdentifier];

          if (!v96)
          {
            v96 = v135;
          }

          v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v98;
          if (v97 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v99)
          {
            break;
          }

          v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v101)
          {
            goto LABEL_43;
          }

          ++v92;
          v3 = v139;
          (*v137)(v142, v139);
          if (v91 == v92)
          {
            goto LABEL_41;
          }
        }

LABEL_43:

        v102 = *(v141 + 32);
        v103 = v127;
        v104 = v139;
        v102(v127, v142, v139);
        v105 = v128;
        v102(v128, v103, v104);
        v106 = SidebarTabElementBuilder.id.getter();
        v108 = v107;
        v109 = OBJC_IVAR___HOAdaptiveTabBarController_controllers;
        v110 = v134;
        swift_beginAccess();
        v111 = *&v110[v109];
        if (*(v111 + 16))
        {
          v112 = sub_10007C3F0(v106, v108);
          v114 = v113;

          if (v114)
          {
            v115 = *(*(v111 + 56) + 8 * v112);
            swift_endAccess();
            v116 = v115;
            [v110 setSelectedViewController:v116];
            v117 = v124;
            (v10)(v124, v105, v104);
            v118 = v141 + 56;
            (*(v141 + 56))(v117, 0, 1, v104);
            sub_100063D48(v117);

            sub_10005C664(v117, &unk_1000D9FB0, &qword_1000933F8);
            (*(v118 - 48))(v105, v104);
            return;
          }
        }

        else
        {
        }

        swift_endAccess();

        (*v137)(v105, v104);
      }

      else
      {
LABEL_41:
      }
    }

    else
    {
      v46 = v140;
    }
  }
}

void sub_100062010(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v7 = sub_10006E758(a1, v37, 0);
  [v7 _setTabBarPlacement:2];
  sub_1000623BC(a2, a3);
  v8 = OBJC_IVAR___HOAdaptiveTabBarController_roomsElements;
  v9 = *(v3 + OBJC_IVAR___HOAdaptiveTabBarController_roomsElements);
  *(v3 + OBJC_IVAR___HOAdaptiveTabBarController_roomsElements) = v10;

  sub_100062A9C(a2, a3);
  v11 = OBJC_IVAR___HOAdaptiveTabBarController_categoriesElements;
  v12 = *(v3 + OBJC_IVAR___HOAdaptiveTabBarController_categoriesElements);
  *(v3 + OBJC_IVAR___HOAdaptiveTabBarController_categoriesElements) = v13;

  SidebarTabElementBuilder.id.getter();
  v14 = String._bridgeToObjectiveC()();
  v15 = HFLocalizedString();

  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  SidebarTabElementBuilder.accessibilityIdentifier.getter();
  v16 = *(v4 + v11);
  v35[4] = v7;
  v35[5] = v16;
  v36 = *(v4 + v8);
  v17 = objc_opt_self();
  v18 = v36;
  v19 = v7;
  v20 = v16;
  v21 = String._bridgeToObjectiveC()();
  v22 = [v17 hu_systemTabImageWithNamed:v21 filled:0];

  v23 = objc_allocWithZone(_UITabElementGroup);
  v24 = String._bridgeToObjectiveC()();

  v25 = [v23 initWithIdentifier:v24 title:v15 image:v22];

  v26 = 0;
  *&v37[0] = _swiftEmptyArrayStorage;
LABEL_4:
  if (v26 <= 3)
  {
    v27 = 3;
  }

  else
  {
    v27 = v26;
  }

  while (1)
  {
    if (v26 == 3)
    {
      sub_10005B9DC(0, &qword_1000DA2D0, _UITab_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v25 _setChildren:isa];

      [v25 _setSidebarAppearance:1];
      [v25 _setDelegate:v4];
      v32 = v25;
      v33 = String._bridgeToObjectiveC()();

      [v32 setAccessibilityIdentifier:v33];

      sub_1000578B4(&qword_1000DA308, &qword_100093518);
      swift_arrayDestroy();
      [v32 _setTabBarPlacement:4];
      v34 = *(v4 + OBJC_IVAR___HOAdaptiveTabBarController_homeElements);
      *(v4 + OBJC_IVAR___HOAdaptiveTabBarController_homeElements) = v32;
      v32;

      sub_10005E9BC();
      return;
    }

    if (v27 == v26)
    {
      break;
    }

    v28 = v35[v26++ + 4];
    if (v28)
    {
      v29 = v28;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v37[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v37[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = *((*&v37[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_4;
    }
  }

  __break(1u);
}

void sub_1000623BC(uint64_t a1, void *a2)
{
  v4 = sub_1000578B4(&unk_1000D9FB0, &qword_1000933F8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v49 - v6;
  v8 = type metadata accessor for SidebarTabElementBuilder();
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  __chkstk_darwin(v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000578B4(&qword_1000DA2F8, &qword_100093508);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v49 - v14;
  v16 = type metadata accessor for StateSnapshot();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005D10C(a1, v15, &qword_1000DA2F8, &qword_100093508);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10005C664(v15, &qword_1000DA2F8, &qword_100093508);
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    if ([a2 hf_shouldBlockCurrentRestrictedGuestFromHome] || (objc_msgSend(a2, "hf_shouldBlockCurrentUserFromHome") & 1) != 0)
    {
      (*(v17 + 8))(v20, v16);
    }

    else
    {
      v52 = a2;
      v21 = static SidebarTabElementBuilder.createRooms(with:)();
      v22 = *(v21 + 16);
      v53 = v20;
      v54 = v17;
      if (v22)
      {
        v50 = v7;
        v51 = v16;
        v61 = &_swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v23 = v57;
        v58 = *(v56 + 16);
        v24 = *(v56 + 80);
        v49 = v21;
        v25 = v21 + ((v24 + 32) & ~v24);
        v26 = *(v56 + 72);
        v27 = (v56 + 8);
        do
        {
          v58(v11, v25, v23);
          v60 = 0;
          memset(v59, 0, sizeof(v59));
          v28 = sub_10006E758(v11, v59, 0);
          [v28 _setTabBarPlacement:{4, v49}];
          (*v27)(v11, v23);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v29 = v61[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v25 += v26;
          --v22;
        }

        while (v22);

        v30 = v61;
        v7 = v50;
        v16 = v51;
        v20 = v53;
        v17 = v54;
      }

      else
      {

        v30 = &_swiftEmptyArrayStorage;
      }

      v31 = v30[2];
      v32 = v57;
      if (v31)
      {
        v33 = String._bridgeToObjectiveC()();
        v34 = HULocalizedString();

        if (!v34)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = String._bridgeToObjectiveC()();
        }

        v35 = HFHomeAppTabIdentifierHome;
        v36 = v52;
        SidebarTabElementBuilder.init(from:home:)();
        v37 = v56;
        if ((*(v56 + 48))(v7, 1, v32) == 1)
        {
          sub_10005C664(v7, &unk_1000D9FB0, &qword_1000933F8);
          v58 = 0;
        }

        else
        {
          v58 = SidebarTabElementBuilder.accessibilityIdentifier.getter();
          (*(v37 + 8))(v7, v32);
        }

        v38 = objc_allocWithZone(_UITabElementGroup);
        v39 = String._bridgeToObjectiveC()();
        v40 = [v38 initWithIdentifier:v39 title:v34 image:0];

        v41 = 0;
        *&v59[0] = &_swiftEmptyArrayStorage;
        v42 = v55;
        while (v31 != v41)
        {
          if (v41 >= v30[2])
          {
            __break(1u);
            return;
          }

          v43 = v30[v41++ + 4];
          if (v43)
          {
            v44 = v43;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*&v59[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v59[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v57 = *((*&v59[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }
        }

        sub_10005B9DC(0, &qword_1000DA2D0, _UITab_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v40 _setChildren:isa];

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          v46 = 1;
        }

        else
        {
          v46 = 2;
        }

        [v40 _setSidebarAppearance:v46];
        [v40 _setDelegate:v42];
        v47 = v40;
        v48 = String._bridgeToObjectiveC()();

        [v47 setAccessibilityIdentifier:v48];

        (*(v54 + 8))(v53, v16);
      }

      else
      {
        (*(v17 + 8))(v20, v16);
      }
    }
  }
}

void sub_100062A9C(uint64_t a1, void *a2)
{
  v4 = sub_1000578B4(&unk_1000D9FB0, &qword_1000933F8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v47 - v6;
  v8 = type metadata accessor for SidebarTabElementBuilder();
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = *(v55 + 64);
  __chkstk_darwin(v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000578B4(&qword_1000DA2F8, &qword_100093508);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v47 - v14;
  v16 = type metadata accessor for StateSnapshot();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005D10C(a1, v15, &qword_1000DA2F8, &qword_100093508);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10005C664(v15, &qword_1000DA2F8, &qword_100093508);
    return;
  }

  (*(v17 + 32))(v20, v15, v16);
  if ([a2 hf_currentUserIsRestrictedGuest] || (objc_msgSend(a2, "hf_shouldBlockCurrentUserFromHome") & 1) != 0)
  {
    (*(v17 + 8))(v20, v16);
    return;
  }

  v51 = a2;
  v21 = static SidebarTabElementBuilder.createCategories(with:home:)();
  v59 = _swiftEmptyArrayStorage;
  v22 = *(v21 + 16);
  v52 = v20;
  v53 = v17;
  if (!v22)
  {

    v29 = _swiftEmptyArrayStorage;
    v23 = v56;
    v30 = _swiftEmptyArrayStorage[2];
    if (v30)
    {
      goto LABEL_12;
    }

LABEL_17:
    (*(v17 + 8))(v20, v16);

    return;
  }

  v48 = v7;
  v49 = v16;
  v23 = v56;
  v24 = *(v55 + 16);
  v25 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v50 = v21;
  v26 = v21 + v25;
  v27 = *(v55 + 72);
  v28 = (v55 + 8);
  do
  {
    v24(v11, v26, v23);
    v58 = 0;
    memset(v57, 0, sizeof(v57));
    [sub_10006E758(v11 v57];
    (*v28)(v11, v23);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v59[2] >= v59[3] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v26 += v27;
    --v22;
    v23 = v56;
  }

  while (v22);
  v29 = v59;

  v7 = v48;
  v16 = v49;
  v20 = v52;
  v17 = v53;
  v30 = v29[2];
  if (!v30)
  {
    goto LABEL_17;
  }

LABEL_12:
  v31 = String._bridgeToObjectiveC()();
  v32 = HULocalizedString();

  if (!v32)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = String._bridgeToObjectiveC()();
  }

  v33 = HFHomeAppTabIdentifierHome;
  v34 = v51;
  SidebarTabElementBuilder.init(from:home:)();
  v35 = v55;
  if ((*(v55 + 48))(v7, 1, v23) == 1)
  {
    sub_10005C664(v7, &unk_1000D9FB0, &qword_1000933F8);
    v56 = 0;
  }

  else
  {
    v56 = SidebarTabElementBuilder.accessibilityIdentifier.getter();
    (*(v35 + 8))(v7, v23);
  }

  v36 = objc_allocWithZone(_UITabElementGroup);
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 initWithIdentifier:v37 title:v32 image:0];

  v39 = 0;
  *&v57[0] = _swiftEmptyArrayStorage;
  v40 = v54;
  while (v30 != v39)
  {
    if (v39 >= v29[2])
    {
      __break(1u);
      return;
    }

    v41 = v29[v39++ + 4];
    if (v41)
    {
      v42 = v41;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v57[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v55 = *((*&v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  sub_10005B9DC(0, &qword_1000DA2D0, _UITab_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v38 _setChildren:isa];

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v44 = 1;
  }

  else
  {
    v44 = 2;
  }

  [v38 _setSidebarAppearance:v44];
  [v38 _setDelegate:v40];
  v45 = v38;
  v46 = String._bridgeToObjectiveC()();

  [v45 setAccessibilityIdentifier:v46];

  (*(v53 + 8))(v52, v16);
}

uint64_t sub_100063194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = *(*(sub_1000578B4(&unk_1000D9FB0, &qword_1000933F8) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[13] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[14] = v10;
  v4[15] = v9;

  return _swift_task_switch(sub_1000632D8, v10, v9);
}

uint64_t sub_1000632D8()
{
  v27 = v0;
  v1 = [objc_opt_self() sharedDispatcher];
  v2 = [v1 homeFuture];
  v0[16] = v2;

  if (v2)
  {
    if (qword_1000D97C0 != -1)
    {
      swift_once();
    }

    v3 = v0[12];
    v4 = v0[8];
    v5 = v0[9];
    v6 = sub_10006AF58(v4, qword_1000D9EE0);
    v0[17] = v6;
    v7 = *(v5 + 16);
    v0[18] = v7;
    v0[19] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v3, v6, v4);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[12];
    v12 = v0[8];
    v13 = v0[9];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_10006B744(0xD000000000000026, 0x800000010009AD60, &v26);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_10006B744(0xD00000000000001ELL, 0x800000010009AD90, &v26);
      _os_log_impl(&_mh_execute_header, v8, v9, "%s %s Waiting for HomeKit to load home to update Tab Bar Appearance", v14, 0x16u);
      swift_arrayDestroy();
    }

    v15 = *(v13 + 8);
    v15(v11, v12);
    v0[20] = v15;
    v16 = async function pointer to static NAFutureHelper.continuation<A>(_:)[1];
    v17 = swift_task_alloc();
    v0[21] = v17;
    v18 = sub_10005B9DC(0, &qword_1000D9F98, HMHome_ptr);
    *v17 = v0;
    v17[1] = sub_100063600;

    return static NAFutureHelper.continuation<A>(_:)(v2, v18);
  }

  else
  {
    v19 = v0[13];

    v21 = v0[11];
    v20 = v0[12];
    v22 = v0[10];
    v23 = v0[7];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_100063600(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v7 = *(v4 + 112);
    v8 = *(v4 + 120);
    v9 = sub_10006397C;
  }

  else
  {

    v7 = *(v4 + 112);
    v8 = *(v4 + 120);
    v9 = sub_100063728;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100063728()
{
  v22 = v0;
  v1 = *(v0 + 104);

  v2 = *(v0 + 152);
  (*(v0 + 144))(*(v0 + 88), *(v0 + 136), *(v0 + 64));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  v7 = *(v0 + 88);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  if (v5)
  {
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_10006B744(0xD000000000000026, 0x800000010009AD60, &v21);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_10006B744(0xD00000000000001ELL, 0x800000010009AD90, &v21);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s %s homeFuture returned successfully", v10, 0x16u);
    swift_arrayDestroy();
  }

  v6(v7, v8);
  v11 = *(v0 + 128);
  v13 = *(v0 + 48);
  v12 = *(v0 + 56);
  v14 = type metadata accessor for SidebarTabElementBuilder();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_100063D48(v12);

  sub_10005C664(v12, &unk_1000D9FB0, &qword_1000933F8);
  v16 = *(v0 + 88);
  v15 = *(v0 + 96);
  v17 = *(v0 + 80);
  v18 = *(v0 + 56);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10006397C()
{
  v48 = v0;
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[8];

  v3(v6, v4, v7);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[22];
    v11 = v0[9];
    v45 = v0[10];
    v46 = v0[20];
    v12 = v0[8];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v47 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v16 = v0[2];
    v15 = v0[3];
    v17 = v0[4];
    v18 = Error.localizedDescription.getter();
    v20 = sub_10006B744(v18, v19, &v47);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error waiting for HomeKit homeFuture: %s", v13, 0xCu);
    sub_1000578FC(v14);

    v46(v45, v12);
  }

  else
  {
    v21 = v0[22];
    v22 = v0[20];
    v24 = v0[9];
    v23 = v0[10];
    v25 = v0[8];

    v22(v23, v25);
  }

  v26 = v0[19];
  (v0[18])(v0[11], v0[17], v0[8]);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[20];
  v31 = v0[11];
  v32 = v0[8];
  v33 = v0[9];
  if (v29)
  {
    v34 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v34 = 136315394;
    *(v34 + 4) = sub_10006B744(0xD000000000000026, 0x800000010009AD60, &v47);
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_10006B744(0xD00000000000001ELL, 0x800000010009AD90, &v47);
    _os_log_impl(&_mh_execute_header, v27, v28, "%s %s homeFuture returned successfully", v34, 0x16u);
    swift_arrayDestroy();
  }

  v30(v31, v32);
  v35 = v0[16];
  v37 = v0[6];
  v36 = v0[7];
  v38 = type metadata accessor for SidebarTabElementBuilder();
  (*(*(v38 - 8) + 56))(v36, 1, 1, v38);
  sub_100063D48(v36);

  sub_10005C664(v36, &unk_1000D9FB0, &qword_1000933F8);
  v40 = v0[11];
  v39 = v0[12];
  v41 = v0[10];
  v42 = v0[7];

  v43 = v0[1];

  return v43();
}

id sub_100063D48(uint64_t a1)
{
  v3 = type metadata accessor for UITraitOverrides();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v42 = v39 - v13;
  v14 = sub_1000578B4(&unk_1000D9FB0, &qword_1000933F8);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = v39 - v20;
  __chkstk_darwin(v19);
  v23 = v39 - v22;
  result = [objc_opt_self() isAnIPad];
  if (result)
  {
    v39[1] = v3;
    v40 = v8;
    v41 = v6;
    v43 = v1;
    sub_10005D10C(a1, v21, &unk_1000D9FB0, &qword_1000933F8);
    v25 = type metadata accessor for SidebarTabElementBuilder();
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    if (v27(v21, 1, v25) == 1)
    {
      sub_10006677C(v23);
      if (v27(v21, 1, v25) != 1)
      {
        sub_10005C664(v21, &unk_1000D9FB0, &qword_1000933F8);
      }
    }

    else
    {
      (*(v26 + 32))(v23, v21, v25);
      (*(v26 + 56))(v23, 0, 1, v25);
    }

    sub_10005D10C(v23, v18, &unk_1000D9FB0, &qword_1000933F8);
    if (v27(v18, 1, v25) == 1)
    {
      sub_10005C664(v18, &unk_1000D9FB0, &qword_1000933F8);
      v28 = v40;
    }

    else
    {
      v29 = SidebarTabElementBuilder.shouldUseCustomTabBarAppearance.getter();
      (*(v26 + 8))(v18, v25);
      v28 = v40;
      if (v29)
      {
        if (qword_1000D97C0 != -1)
        {
          swift_once();
        }

        v30 = sub_10006AF58(v7, qword_1000D9EE0);
        v31 = v42;
        (*(v28 + 16))(v42, v30, v7);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Setting user interface style to dark", v34, 2u);
        }

        (*(v28 + 8))(v31, v7);
        UIViewController.traitOverrides.getter();
        UIMutableTraits.userInterfaceStyle.setter();
        goto LABEL_19;
      }
    }

    if (qword_1000D97C0 != -1)
    {
      swift_once();
    }

    v35 = sub_10006AF58(v7, qword_1000D9EE0);
    (*(v28 + 16))(v12, v35, v7);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Removing trait overrides", v38, 2u);
    }

    (*(v28 + 8))(v12, v7);
    type metadata accessor for UITraitUserInterfaceStyle();
    UIViewController.traitOverrides.getter();
    UITraitOverrides.remove(_:)();
LABEL_19:
    UIViewController.traitOverrides.setter();
    return sub_10005C664(v23, &unk_1000D9FB0, &qword_1000933F8);
  }

  return result;
}

void sub_100064314(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  sub_100064688(a1, a2, a3, a4);
  v7 = v6;
  v8 = SidebarTabElementBuilder.id.getter();
  v10 = v9;
  v11 = OBJC_IVAR___HOAdaptiveTabBarController_controllers;
  swift_beginAccess();
  v12 = *(a2 + v11);
  if (!*(v12 + 16))
  {

LABEL_5:
    swift_endAccess();
    SidebarTabElementBuilder.navigationBarClass.getter();
    v18 = [objc_allocWithZone(HUDashboardNavigationController) initWithNavigationBarClass:swift_getObjCClassFromMetadata() toolbarClass:0];
    [v18 setNavigationBarHidden:SidebarTabElementBuilder.shouldHideNavigationBar.getter() & 1 animated:0];
    [v18 setShouldUseCustomTabBarAppearance:SidebarTabElementBuilder.shouldUseCustomTabBarAppearance.getter() & 1];
    v19 = SidebarTabElementBuilder.id.getter();
    v21 = v20;
    swift_beginAccess();
    v17 = v18;
    v22 = *(a2 + v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(a2 + v11);
    *(a2 + v11) = 0x8000000000000000;
    sub_10006C180(v17, v19, v21, isUniquelyReferenced_nonNull_native);

    *(a2 + v11) = v36;
    swift_endAccess();
    v24 = SidebarTabElementBuilder.viewController.getter();
    if (!v24)
    {

      v17 = 0;
      goto LABEL_16;
    }

    v25 = v24;
    v26 = SidebarTabElementBuilder.homeAppTabIdentifier.getter();
    v27 = [objc_opt_self() sharedInstance];
    v28 = [v27 selectedHomeAppTabIdentifier];

    if (!v28)
    {
      v28 = HFHomeAppTabIdentifierHome;
    }

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
    if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
    {
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {
        [v17 pushViewController:v25 animated:0];
        goto LABEL_15;
      }
    }

LABEL_15:
    v34 = v17;
    [v34 _uip_setTabElement:v7];

    goto LABEL_16;
  }

  v13 = sub_10007C3F0(v8, v10);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *(*(v12 + 56) + 8 * v13);
  swift_endAccess();
  v17 = v16;
  [v17 _uip_setTabElement:v7];

LABEL_16:
  *a5 = v17;
}

void sub_100064688(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = SidebarTabElementBuilder.id.getter();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      [sub_10006E758(a1 v13];
      return;
    }
  }

  sub_100062010(a1, a3, a4);
}

Swift::Void __swiftcall AdaptiveTabBarController.viewDidAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewDidAppear:", a1);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  static Published.subscript.setter();
  v4 = AdaptiveTabBarController.baseController.getter();
  [v4 reloadInitialSetup];
}

Swift::Void __swiftcall AdaptiveTabBarController.viewDidDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = 0;
  v4 = v1;
  static Published.subscript.setter();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, "viewDidDisappear:", a1);
}

UINavigationController_optional __swiftcall AdaptiveTabBarController.selectCurrentTab()()
{
  v1 = [v0 navigationController];

  v2 = v1;
  result.value.super.super.super.isa = v2;
  result.is_nil = v3;
  return result;
}

void _s7HomeApp24AdaptiveTabBarControllerC4home_9didUpdate3forySo6HMHomeC_So6HMRoomCSo11HMAccessoryCtF_0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for StateSnapshot();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000578B4(&qword_1000DA2F8, &qword_100093508);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v22 - v9;
  v11 = objc_opt_self();
  v12 = [v11 sharedDispatcher];
  v22[0] = [v12 home];

  if (v22[0])
  {
    v13 = [v11 sharedDispatcher];
    v14 = [v13 homeManager];

    if (v14)
    {
      if ([objc_opt_self() isAnIPhone])
      {
        (*(v3 + 56))(v10, 1, 1, v2);
        v15 = static SidebarTabElementBuilder.createBaseLevelTabs(with:)();
        __chkstk_darwin(v15);
        v22[-4] = v1;
        v22[-3] = v10;
        v22[-2] = v22[0];
        v16 = sub_10005D7B8(sub_10006E624, &v22[-6], v15);

        sub_10005C664(v10, &qword_1000DA2F8, &qword_100093508);
        if (v16 >> 62)
        {
          sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);

          _bridgeCocoaArray<A>(_:)();
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
        }

        sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v1 setViewControllers:isa animated:0];
      }

      else
      {
        sub_100064FF4(v22[0], v14, v6);
        (*(v3 + 16))(v10, v6, v2);
        (*(v3 + 56))(v10, 0, 1, v2);
        v19 = static SidebarTabElementBuilder.createBaseLevelTabs(with:)();
        __chkstk_darwin(v19);
        v22[-4] = v1;
        v22[-3] = v10;
        v22[-2] = v22[0];
        v20 = sub_10005D7B8(sub_10006E3C8, &v22[-6], v19);

        sub_10005C664(v10, &qword_1000DA2F8, &qword_100093508);
        if (v20 >> 62)
        {
          sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);

          _bridgeCocoaArray<A>(_:)();
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
        }

        sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
        v21 = Array._bridgeToObjectiveC()().super.isa;

        [v1 setViewControllers:v21 animated:0];

        (*(v3 + 8))(v6, v2);
      }
    }

    else
    {
      v18 = v22[0];
    }
  }
}

uint64_t sub_100064FF4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a1;
  v62 = a2;
  v63 = a3;
  v3 = type metadata accessor for OSSignpostError();
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  __chkstk_darwin(v3);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000578B4(&qword_1000DA2F8, &qword_100093508);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v60 = &v54 - v8;
  updated = type metadata accessor for StateSnapshot.UpdateType();
  v10 = *(updated - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(updated);
  v13 = (&v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = type metadata accessor for OSSignpostID();
  v14 = *(v65 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v65);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v54 - v20;
  __chkstk_darwin(v19);
  v23 = &v54 - v22;
  if (qword_1000D97C8 != -1)
  {
    swift_once();
  }

  v64 = v18;
  v24 = type metadata accessor for OSSignposter();
  v25 = sub_10006AF58(v24, qword_1000DB850);
  static OSSignpostID.exclusive.getter();
  v58 = v25;
  v26 = OSSignposter.logHandle.getter();
  v27 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v27, v29, "AdaptiveTabBarFollowUpBuildSnapshot", "", v28, 2u);
  }

  v30 = v65;
  (*(v14 + 16))(v21, v23, v65);
  v31 = type metadata accessor for OSSignpostIntervalState();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v59 = *(v14 + 8);
  v59(v23, v30);
  v34 = v61;
  *v13 = v61;
  (*(v10 + 104))(v13, enum case for StateSnapshot.UpdateType.all(_:), updated);
  v35 = type metadata accessor for StateSnapshot();
  (*(*(v35 - 8) + 56))(v60, 1, 1, v35);
  sub_1000578B4(&qword_1000DA310, &qword_100093520);
  v36 = type metadata accessor for StateSnapshot.Coverage();
  v37 = *(v36 - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100093140;
  (*(v37 + 104))(v40 + v39, enum case for StateSnapshot.Coverage.everythingElse(_:), v36);
  v41 = v34;
  sub_10006C838(v40);
  swift_setDeallocating();
  (*(v37 + 8))(v40 + v39, v36);
  swift_deallocClassInstance();
  v42 = v41;
  v43 = v62;
  StateSnapshot.init(updateType:homeManager:home:previousStateSnapshot:coverages:)();
  v44 = OSSignposter.logHandle.getter();
  v45 = v64;
  OSSignpostIntervalState.signpostID.getter();
  v46 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    v47 = v55;
    checkForErrorAndConsumeState(state:)();

    v49 = v56;
    v48 = v57;
    if ((*(v56 + 88))(v47, v57) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v50 = "[Error] Interval already ended";
    }

    else
    {
      (*(v49 + 8))(v47, v48);
      v50 = "";
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, v46, v52, "AdaptiveTabBarFollowUpBuildSnapshot", v50, v51, 2u);
  }

  return (v59)(v45, v65);
}

Swift::Void __swiftcall AdaptiveTabBarController.switchTo(room:)(HMRoom room)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D97C0 != -1)
  {
    swift_once();
  }

  v8 = sub_10006AF58(v3, qword_1000D9EE0);
  (*(v4 + 16))(v7, v8, v3);
  v9 = room.super.isa;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21[0] = v20;
    *v12 = 136315650;
    v21[1] = ObjectType;
    swift_getMetatypeMetadata();
    v13 = String.init<A>(describing:)();
    v15 = sub_10006B744(v13, v14, v21);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10006B744(0x6F54686374697773, 0xEF293A6D6F6F7228, v21);
    *(v12 + 22) = 2112;
    *(v12 + 24) = v9;
    v16 = v19;
    *v19 = v9;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "<%s: %s> show room: %@", v12, 0x20u);
    sub_10005C664(v16, &qword_1000D9C70, &qword_1000936A0);

    swift_arrayDestroy();
  }

  (*(v4 + 8))(v7, v3);
  v18 = _s7HomeApp24AdaptiveTabBarControllerC18dashboardNavigatorSo011HUDashboardH0_pSgvg_0();
}

void AdaptiveTabBarController.switchTo(accessoryTypeGroup:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D97C0 != -1)
  {
    swift_once();
  }

  v10 = sub_10006AF58(v5, qword_1000D9EE0);
  (*(v6 + 16))(v9, v10, v5);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25[1] = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    v26[0] = v25[0];
    v26[1] = ObjectType;
    *v15 = 136315650;
    swift_getMetatypeMetadata();
    v17 = String.init<A>(describing:)();
    v19 = sub_10006B744(v17, v18, v26);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_10006B744(0xD00000000000001DLL, 0x800000010009A6B0, v26);
    *(v15 + 22) = 2112;
    *(v15 + 24) = v11;
    *v16 = v11;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "<%s: %s> show accessory type group: %@", v15, 0x20u);
    sub_10005C664(v16, &qword_1000D9C70, &qword_1000936A0);

    swift_arrayDestroy();
  }

  (*(v6 + 8))(v9, v5);
  v21 = [objc_opt_self() sharedDispatcher];
  v22 = [v21 home];

  if (v22)
  {
    v23 = _s7HomeApp24AdaptiveTabBarControllerC18dashboardNavigatorSo011HUDashboardH0_pSgvg_0();
    v24 = [v23 showAccessoryTypeGroup:v11 forHome:v22 animated:1];
  }
}

Swift::Void __swiftcall AdaptiveTabBarController.switchTo(home:)(HMHome home)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D97C0 != -1)
  {
    swift_once();
  }

  v8 = sub_10006AF58(v3, qword_1000D9EE0);
  (*(v4 + 16))(v7, v8, v3);
  v9 = home.super.isa;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21[0] = v20;
    *v12 = 136315650;
    v21[1] = ObjectType;
    swift_getMetatypeMetadata();
    v13 = String.init<A>(describing:)();
    v15 = sub_10006B744(v13, v14, v21);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10006B744(0x6F54686374697773, 0xEF293A656D6F6828, v21);
    *(v12 + 22) = 2112;
    *(v12 + 24) = v9;
    v16 = v19;
    *v19 = v9;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "<%s: %s> Switching to home %@", v12, 0x20u);
    sub_10005C664(v16, &qword_1000D9C70, &qword_1000936A0);

    swift_arrayDestroy();
  }

  (*(v4 + 8))(v7, v3);
  v18 = _s7HomeApp24AdaptiveTabBarControllerC18dashboardNavigatorSo011HUDashboardH0_pSgvg_0();
}

uint64_t sub_100066074()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v60 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000578B4(&unk_1000D9FB0, &qword_1000933F8);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v54 - v12;
  __chkstk_darwin(v11);
  v15 = &v54 - v14;
  sub_10006677C(&v54 - v14);
  v59 = v15;
  sub_10005D10C(v15, v13, &unk_1000D9FB0, &qword_1000933F8);
  v16 = type metadata accessor for SidebarTabElementBuilder();
  v17 = *(v16 - 8);
  v57 = *(v17 + 48);
  v18 = v57(v13, 1, v16);
  v58 = v17;
  if (v18 == 1)
  {
    sub_10005C664(v13, &unk_1000D9FB0, &qword_1000933F8);
    v19 = HFHomeAppTabIdentifierHome;
  }

  else
  {
    v19 = SidebarTabElementBuilder.homeAppTabIdentifier.getter();
    (*(v17 + 8))(v13, v16);
  }

  v20 = objc_opt_self();
  v21 = [v20 sharedInstance];
  [v21 setSelectedHomeAppTabIdentifier:v19];

  v22 = v60;
  if (qword_1000D97C0 != -1)
  {
    swift_once();
  }

  v23 = sub_10006AF58(v2, qword_1000D9EE0);
  (*(v3 + 16))(v22, v23, v2);
  v24 = v1;
  v25 = Logger.logObject.getter();
  v26 = v22;
  v27 = v3;
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v28))
  {
    v54 = v27;
    v55 = v2;
    v29 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v29 = 136315650;
    v61[11] = ObjectType;
    swift_getMetatypeMetadata();
    v30 = String.init<A>(describing:)();
    v32 = sub_10006B744(v30, v31, v61);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_10006B744(0xD000000000000018, 0x800000010009ABB0, v61);
    *(v29 + 22) = 2080;
    v33 = [v20 sharedInstance];
    v34 = [v33 selectedHomeAppTabIdentifier];

    if (!v34)
    {
      v34 = HFHomeAppTabIdentifierHome;
    }

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = sub_10006B744(v35, v37, v61);

    *(v29 + 24) = v38;
    _os_log_impl(&_mh_execute_header, v25, v28, "<%s: %s> Persisting last selected tab %s", v29, 0x20u);
    swift_arrayDestroy();

    (*(v54 + 8))(v60, v55);
  }

  else
  {

    (*(v27 + 8))(v26, v2);
  }

  v39 = v59;
  sub_10005D10C(v59, v10, &unk_1000D9FB0, &qword_1000933F8);
  v40 = v57(v10, 1, v16);
  v41 = v58;
  if (v40 != 1)
  {
    v42 = SidebarTabElementBuilder.homeAppTabIdentifier.getter();
    (*(v41 + 8))(v10, v16);
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;
    if (v43 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v45 == v46)
    {
    }

    else
    {
      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v47 & 1) == 0)
      {
        return sub_10005C664(v39, &unk_1000D9FB0, &qword_1000933F8);
      }
    }

    v48 = objc_opt_self();
    sub_1000578B4(&qword_1000DA2D8, &qword_1000934E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100093140;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v50;
    v51 = [objc_allocWithZone(NSNumber) initWithInteger:1];
    *(inited + 72) = sub_10005B9DC(0, &unk_1000DA2E0, NSNumber_ptr);
    *(inited + 48) = v51;
    sub_100059158(inited);
    swift_setDeallocating();
    sub_10005C664(inited + 32, &qword_1000D9EC8, &qword_1000934F0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v48 sendEvent:10 withData:isa];

    return sub_10005C664(v39, &unk_1000D9FB0, &qword_1000933F8);
  }

  sub_10005C664(v10, &unk_1000D9FB0, &qword_1000933F8);
  return sub_10005C664(v39, &unk_1000D9FB0, &qword_1000933F8);
}

uint64_t sub_10006677C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = [v2 selectedIndex];
  v13 = [objc_opt_self() sharedDispatcher];
  v14 = [v13 home];

  if (!v14)
  {
    if (qword_1000D97C0 != -1)
    {
      swift_once();
    }

    v19 = sub_10006AF58(v4, qword_1000D9EE0);
    (*(v5 + 16))(v9, v19, v4);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Adapative Tabbar don't have a current Home", v22, 2u);
    }

    (*(v5 + 8))(v9, v4);
    goto LABEL_13;
  }

  if (v12 == NSNotFound.getter())
  {
    if (qword_1000D97C0 != -1)
    {
      swift_once();
    }

    v15 = sub_10006AF58(v4, qword_1000D9EE0);
    (*(v5 + 16))(v11, v15, v4);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v16, v17, "UITabBarController doesn't have a selected tab: %ld", v18, 0xCu);
    }

    (*(v5 + 8))(v11, v4);
LABEL_13:
    v23 = type metadata accessor for SidebarTabElementBuilder();
    return (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
  }

  result = static SidebarTabElementBuilder.DefaultTabs.getter();
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v12 >= *(result + 16))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  *(result + 8 * v12 + 32);

  return SidebarTabElementBuilder.init(from:home:)();
}

id AdaptiveTabBarController.__allocating_init(tabs:)()
{
  v1 = objc_allocWithZone(v0);
  sub_10005B9DC(0, &qword_1000D9F90, UITab_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithTabs:isa];

  return v3;
}

id AdaptiveTabBarController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_100066D04@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

UIViewController_optional __swiftcall AdaptiveTabBarController.currentViewController()()
{
  v1 = [v0 viewControllers];
  if (v1)
  {
    v3 = v1;
    sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (v5)
      {
LABEL_4:
        v6 = __OFSUB__(v5, 1);
        v1 = v5 - 1;
        if (v6)
        {
          __break(1u);
        }

        else if ((v4 & 0xC000000000000001) == 0)
        {
          if ((v1 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v1 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v7 = *(v4 + 8 * v1 + 32);
LABEL_9:
            v8 = v7;

            v1 = v8;
            goto LABEL_17;
          }

          __break(1u);
          goto LABEL_17;
        }

        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_9;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v1 = 0;
  }

LABEL_17:
  result.value.super.super.isa = v1;
  result.is_nil = v2;
  return result;
}

Swift::Void __swiftcall AdaptiveTabBarController.setLoading(_:)(UIViewController a1)
{
  sub_1000578B4(&unk_1000D9F80, &unk_100093218);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100093150;
  *(v3 + 32) = a1;
  sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
  v4 = a1.super.super.isa;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setViewControllers:isa];
}

Swift::Void __swiftcall AdaptiveTabBarController.didLoad(_:)(HMHome a1)
{
  v2 = v1;
  _s7HomeApp24AdaptiveTabBarControllerC4home_9didUpdate3forySo6HMHomeC_So6HMRoomCSo11HMAccessoryCtF_0();
  v4 = OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext;
  v5 = *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext);
  if (v5)
  {
    v6 = v5;
    v7 = DashboardContext.home.getter();

    sub_10005B9DC(0, &qword_1000D9F98, HMHome_ptr);
    v8 = a1.super.isa;
    LOBYTE(v6) = static NSObject.== infix(_:_:)();

    if (v6)
    {
      return;
    }
  }

  type metadata accessor for DashboardContext();
  v9 = dispatch thunk of static DashboardContext.homeDashboard(for:)();
  v10 = v9;
  v11 = *(v2 + v4);
  *(v2 + v4) = v9;
  if (v11)
  {
    v12 = v9;
    v15 = v11;
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = v9;
    v15 = 0;
  }

  sub_10005E9BC();
  sub_10005F7E0();
  v12 = v10;
LABEL_8:
}

uint64_t sub_1000671CC(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = *(*(sub_1000578B4(&unk_1000D9FB0, &qword_1000933F8) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for SidebarTabElementBuilder();
  v2[19] = v4;
  v5 = *(v4 - 8);
  v2[20] = v5;
  v6 = *(v5 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[24] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[25] = v8;
  v2[26] = v7;

  return _swift_task_switch(sub_100067310, v8, v7);
}

uint64_t sub_100067310()
{
  v1 = [objc_opt_self() sharedDispatcher];
  v2 = [v1 home];
  *(v0 + 216) = v2;

  if (!v2)
  {
    v17 = *(v0 + 192);

    [objc_opt_self() hf_errorWithCode:59];
    swift_willThrow();
    goto LABEL_22;
  }

  v48 = v2;
  v3 = static SidebarTabElementBuilder.createBaseLevelTabs(with:)();
  v5 = v3;
  v6 = v3[2];
  if (!v6)
  {
LABEL_11:
    v16 = *(v0 + 192);

    [objc_opt_self() hf_errorWithCode:30];
    swift_willThrow();

LABEL_22:
    v41 = *(v0 + 176);
    v40 = *(v0 + 184);
    v42 = *(v0 + 168);
    v43 = *(v0 + 144);

    v44 = *(v0 + 8);

    return v44();
  }

  v7 = 0;
  v8 = *(v0 + 160);
  v49 = (v8 + 8);
  v50 = *(v0 + 128);
  while (1)
  {
    if (v7 >= v5[2])
    {
      __break(1u);
      goto LABEL_30;
    }

    (*(v8 + 16))(*(v0 + 168), v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v7, *(v0 + 152));
    v9 = SidebarTabElementBuilder.homeAppTabIdentifier.getter();
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_14;
    }

    ++v7;
    v3 = (*v49)(*(v0 + 168), *(v0 + 152));
    if (v6 == v7)
    {
      goto LABEL_11;
    }
  }

LABEL_14:

  v19 = *(v0 + 176);
  v18 = *(v0 + 184);
  v20 = *(v0 + 152);
  v21 = *(v0 + 136);
  v22 = *(*(v0 + 160) + 32);
  v22(v19, *(v0 + 168), v20);
  v22(v18, v19, v20);
  v23 = SidebarTabElementBuilder.id.getter();
  v25 = v24;
  v26 = OBJC_IVAR___HOAdaptiveTabBarController_controllers;
  swift_beginAccess();
  v27 = *(v21 + v26);
  if (!*(v27 + 16))
  {

    goto LABEL_21;
  }

  v28 = sub_10007C3F0(v23, v25);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
LABEL_21:
    v38 = *(v0 + 184);
    v37 = *(v0 + 192);
    v39 = *(v0 + 152);
    swift_endAccess();

    [objc_opt_self() hf_errorWithCode:30];
    swift_willThrow();

    (*v49)(v38, v39);
    goto LABEL_22;
  }

  v31 = *(v0 + 136);
  v32 = *(*(v27 + 56) + 8 * v28);
  *(v0 + 224) = v32;
  swift_endAccess();
  v33 = v32;
  v34 = [v31 presentedViewController];
  *(v0 + 232) = v34;
  if (!v34)
  {
    v3 = [*(v0 + 224) hu_preloadContent];
    *(v0 + 248) = v3;
    if (v3)
    {
      v45 = v3;
      v46 = async function pointer to static NAFutureHelper.continuation<A>(_:)[1];
      v47 = swift_task_alloc();
      *(v0 + 256) = v47;
      v4 = sub_10005B9DC(0, &qword_1000DA2F0, NSNull_ptr);
      *v47 = v0;
      v47[1] = sub_100067A20;
      v3 = v45;

      return static NAFutureHelper.continuation<A>(_:)(v3, v4);
    }

LABEL_30:
    __break(1u);
    return static NAFutureHelper.continuation<A>(_:)(v3, v4);
  }

  v35 = swift_task_alloc();
  *(v0 + 240) = v35;
  *v35 = v0;
  v35[1] = sub_10006781C;

  return sub_10005DCC0(0);
}

uint64_t sub_10006781C()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v6 = *v0;

  v3 = *(v1 + 208);
  v4 = *(v1 + 200);

  return _swift_task_switch(sub_10006793C, v4, v3);
}

uint64_t sub_10006793C()
{
  v1 = [*(v0 + 224) hu_preloadContent];
  *(v0 + 248) = v1;
  if (v1)
  {
    v3 = v1;
    v4 = async function pointer to static NAFutureHelper.continuation<A>(_:)[1];
    v5 = swift_task_alloc();
    *(v0 + 256) = v5;
    v2 = sub_10005B9DC(0, &qword_1000DA2F0, NSNull_ptr);
    *v5 = v0;
    v5[1] = sub_100067A20;
    v1 = v3;
  }

  else
  {
    __break(1u);
  }

  return static NAFutureHelper.continuation<A>(_:)(v1, v2);
}

uint64_t sub_100067A20(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *v2;
  v4[33] = v1;

  v7 = v4[31];
  if (v1)
  {

    v8 = v4[25];
    v9 = v4[26];
    v10 = sub_100068078;
  }

  else
  {

    v8 = v4[25];
    v9 = v4[26];
    v10 = sub_100067B68;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_100067B68()
{
  v1 = v0[24];

  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  v4 = [v3 selectedHomeAppTabIdentifier];

  if (!v4)
  {
    v4 = HFHomeAppTabIdentifierHome;
  }

  v5 = v0[16];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {

    goto LABEL_14;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_14:
    v28 = v0[27];
    (*(v0[20] + 8))(v0[23], v0[19]);

    goto LABEL_23;
  }

  v13 = v0[16];
  v12 = v0[17];
  v14 = [v2 sharedInstance];
  [v14 setSelectedHomeAppTabIdentifier:v13];

  v15 = [v12 viewControllers];
  if (v15)
  {
    v16 = v15;
    v17 = v0[33];
    v18 = v0[28];
    v19 = v0[17];
    sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v0[15] = v18;
    v21 = swift_task_alloc();
    *(v21 + 16) = v0 + 15;
    v22 = v18;
    sub_100077D70(sub_10006E310, v21, v20);

    [v19 setSelectedViewController:v22];
  }

  v23 = v0[16];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
  {

LABEL_16:
    v30 = v0[17];
    sub_10005E9BC();
    goto LABEL_17;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    goto LABEL_16;
  }

LABEL_17:
  v31 = v0[16];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;
  if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
  {

LABEL_21:
    v37 = objc_opt_self();
    sub_1000578B4(&qword_1000DA2D8, &qword_1000934E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100093140;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v39;
    v40 = [objc_allocWithZone(NSNumber) initWithInteger:1];
    *(inited + 72) = sub_10005B9DC(0, &unk_1000DA2E0, NSNumber_ptr);
    *(inited + 48) = v40;
    sub_100059158(inited);
    swift_setDeallocating();
    sub_10005C664(inited + 32, &qword_1000D9EC8, &qword_1000934F0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v37 sendEvent:10 withData:isa];

    goto LABEL_22;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
    goto LABEL_21;
  }

LABEL_22:
  v42 = v0[27];
  v43 = v0[23];
  v44 = v0[19];
  v45 = v0[20];
  v46 = v0[18];
  (*(v45 + 56))(v46, 1, 1, v44);
  sub_100063D48(v46);
  sub_10005C664(v46, &unk_1000D9FB0, &qword_1000933F8);
  sub_10005F7E0();

  (*(v45 + 8))(v43, v44);
LABEL_23:
  v48 = v0[22];
  v47 = v0[23];
  v49 = v0[21];
  v50 = v0[18];

  v51 = v0[1];
  v52 = v0[28];

  return v51(v52);
}

uint64_t sub_100068078()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[19];
  v6 = v0[20];

  (*(v6 + 8))(v4, v5);
  v7 = v0[33];
  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[21];
  v11 = v0[18];

  v12 = v0[1];

  return v12();
}

uint64_t AdaptiveTabBarController.selectTab(withIdentifier:)(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  sub_10005B9DC(0, &qword_1000D9FA0, UINavigationController_ptr);
  v4 = a1;
  v5 = static NAFutureHelper.futureOnMainActor<A>(descriptor:with:)();

  return v5;
}

uint64_t sub_10006822C(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_1000682C4, v4, v3);
}

uint64_t sub_1000682C4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (!Strong)
  {
LABEL_4:
    v4 = v0[7];

    [objc_opt_self() hf_errorWithCode:37];
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }

  v3 = Strong;
  if (static Task<>.isCancelled.getter())
  {

    goto LABEL_4;
  }

  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_100068404;
  v8 = v0[6];

  return sub_1000671CC(v8);
}

uint64_t sub_100068404(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_1000685A0;
  }

  else
  {
    v4[13] = a1;
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_10006852C;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10006852C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);
  v3 = *(v0 + 104);

  return v2(v3);
}

uint64_t sub_1000685A0()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[12];
  v4 = v0[1];

  return v4();
}

id AdaptiveTabBarController.wantsAccessoryControlsCard.getter()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result traitCollection];

    if ([v3 userInterfaceIdiom])
    {
      v4 = [v3 horizontalSizeClass];

      return (v4 != 1);
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void AdaptiveTabBarController._tabElementGroup(_:didSelect:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v204 = sub_1000578B4(&qword_1000D9FA8, &qword_1000933E8);
  v7 = *(*(v204 - 8) + 64);
  v8 = __chkstk_darwin(v204);
  v198 = &v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v197 = &v193 - v10;
  v11 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v195 = &v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v202 = &v193 - v16;
  v17 = __chkstk_darwin(v15);
  v203 = &v193 - v18;
  v19 = __chkstk_darwin(v17);
  v206 = &v193 - v20;
  v21 = __chkstk_darwin(v19);
  v194 = &v193 - v22;
  v23 = __chkstk_darwin(v21);
  v200 = &v193 - v24;
  v25 = __chkstk_darwin(v23);
  v201 = &v193 - v26;
  __chkstk_darwin(v25);
  v205 = &v193 - v27;
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v210 = &v193 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v196 = &v193 - v34;
  __chkstk_darwin(v33);
  v209 = &v193 - v35;
  v36 = type metadata accessor for Logger();
  v37 = *(v36 - 8);
  v38 = v37[8];
  v39 = __chkstk_darwin(v36);
  v212.super.isa = (&v193 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = __chkstk_darwin(v39);
  v208 = (&v193 - v42);
  v43 = __chkstk_darwin(v41);
  v207 = (&v193 - v44);
  v45 = __chkstk_darwin(v43);
  v199 = (&v193 - v46);
  __chkstk_darwin(v45);
  v48 = &v193 - v47;
  if (qword_1000D97C0 != -1)
  {
    swift_once();
  }

  v213 = v3;
  v49 = sub_10006AF58(v36, qword_1000D9EE0);
  v50 = v37[2];
  v216 = v49;
  v217 = v50;
  v218 = v37 + 2;
  (v50)(v48);
  v51 = a1;
  v52 = a2;
  v53 = Logger.logObject.getter();
  v221 = v36;
  v54 = v51;
  v55 = v53;
  v56 = static os_log_type_t.default.getter();

  v57 = os_log_type_enabled(v55, v56);
  v58 = &HFUserObserver__prots;
  v219 = v28;
  v220 = v37;
  v211 = ObjectType;
  if (v57)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v214 = v29;
    v61 = v60;
    v62 = swift_slowAlloc();
    v215 = v54;
    v222 = v62;
    v223 = ObjectType;
    *v59 = 136315906;
    swift_getMetatypeMetadata();
    v63 = String.init<A>(describing:)();
    v65 = sub_10006B744(v63, v64, &v222);

    *(v59 + 4) = v65;
    *(v59 + 12) = 2080;
    *(v59 + 14) = sub_10006B744(0xD00000000000001ELL, 0x800000010009A720, &v222);
    *(v59 + 22) = 2080;
    v66 = [v215 _identifier];
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v70 = sub_10006B744(v67, v69, &v222);
    v58 = &HFUserObserver__prots;

    *(v59 + 24) = v70;
    *(v59 + 32) = 2112;
    *(v59 + 34) = v52;
    *v61 = v52;
    v71 = v52;
    v72 = v52;
    _os_log_impl(&_mh_execute_header, v55, v56, "<%s: %s> group = %s | element = %@", v59, 0x2Au);
    sub_10005C664(v61, &qword_1000D9C70, &qword_1000936A0);
    v29 = v214;

    swift_arrayDestroy();
    v54 = v215;

    v37 = v220;
  }

  else
  {
    v71 = v52;
  }

  v73 = v37[1];
  v74 = v221;
  v73(v48, v221);
  v75 = [v54 v58[487].count];
  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v58;
  v79 = v78;

  v80 = sub_1000730C8(v76, v79);
  if (v80 > 1)
  {
    v87 = v71;
    if (v80 != 2)
    {
      isa = v212.super.isa;
      v217(v212.super.isa, v216, v74);
      v97 = v71;
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        *v100 = 136315650;
        v223 = v211;
        swift_getMetatypeMetadata();
        v102 = String.init<A>(describing:)();
        v104 = sub_10006B744(v102, v103, &v222);

        *(v100 + 4) = v104;
        *(v100 + 12) = 2080;
        *(v100 + 14) = sub_10006B744(0xD00000000000001ELL, 0x800000010009A720, &v222);
        *(v100 + 22) = 2112;
        *(v100 + 24) = v97;
        *v101 = v97;
        v105 = v97;
        _os_log_impl(&_mh_execute_header, v98, v99, "<%s: %s> is other: %@", v100, 0x20u);
        sub_10005C664(v101, &qword_1000D9C70, &qword_1000936A0);

        swift_arrayDestroy();

        v106 = v212.super.isa;
LABEL_40:
        v73(v106, v74);
        return;
      }

LABEL_39:

      v106 = isa;
      goto LABEL_40;
    }

    v88 = [v71 v77[487].count];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v89 = v206;
    UUID.init(uuidString:)();

    v90 = *(v29 + 48);
    v91 = v219;
    if (v90(v89, 1, v219) == 1)
    {
      sub_10005C664(v89, &unk_1000D9E30, &qword_1000933F0);
      goto LABEL_34;
    }

    v215 = v87;
    v116 = *(v29 + 32);
    v117 = v210;
    v209 = (v29 + 32);
    v207 = v116;
    v116(v210, v89, v91);
    type metadata accessor for DataModel();
    v118 = static DataModel.shared.getter();
    v119 = UUID._bridgeToObjectiveC()().super.isa;
    v120 = [v118 roomFor:v119];

    v212.super.isa = v120;
    if (!v120)
    {
      (*(v29 + 8))(v117, v91);
      v87 = v215;
LABEL_34:
      isa = v208;
      v217(v208, v216, v74);
      v148 = v87;
      v98 = Logger.logObject.getter();
      v149 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v98, v149))
      {
        v150 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        *v150 = 136315650;
        v223 = v211;
        swift_getMetatypeMetadata();
        v152 = String.init<A>(describing:)();
        v154 = sub_10006B744(v152, v153, &v222);

        *(v150 + 4) = v154;
        *(v150 + 12) = 2080;
        *(v150 + 14) = sub_10006B744(0xD00000000000001ELL, 0x800000010009A720, &v222);
        *(v150 + 22) = 2112;
        *(v150 + 24) = v148;
        *v151 = v148;
        v155 = v148;
        _os_log_impl(&_mh_execute_header, v98, v149, "<%s: %s> element = %@ | HMRoom = nil", v150, 0x20u);
        sub_10005C664(v151, &qword_1000D9C70, &qword_1000936A0);

        swift_arrayDestroy();

        v106 = v208;
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    v214 = v29;
    v121 = *(v213 + OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext);
    if (v121)
    {
      v122 = v121;
      v123 = DashboardContext.room.getter();

      v124 = v210;
      v125 = v203;
      v126 = v202;
      if (v123)
      {
        v127 = [v123 uniqueIdentifier];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v128 = 0;
      }

      else
      {
        v128 = 1;
      }
    }

    else
    {
      v128 = 1;
      v124 = v210;
      v125 = v203;
      v126 = v202;
    }

    v166 = v214;
    v167 = *(v214 + 56);
    v168 = v219;
    v167(v125, v128, 1, v219);
    (*(v166 + 16))(v126, v124, v168);
    v167(v126, 0, 1, v168);
    v169 = *(v204 + 48);
    v170 = v198;
    sub_10005D10C(v125, v198, &unk_1000D9E30, &qword_1000933F0);
    sub_10005D10C(v126, v170 + v169, &unk_1000D9E30, &qword_1000933F0);
    if (v90(v170, 1, v168) == 1)
    {
      sub_10005C664(v126, &unk_1000D9E30, &qword_1000933F0);
      sub_10005C664(v125, &unk_1000D9E30, &qword_1000933F0);
      v171 = v90(v170 + v169, 1, v168);
      v172 = v214;
      if (v171 == 1)
      {
        sub_10005C664(v170, &unk_1000D9E30, &qword_1000933F0);
        (*(v172 + 8))(v210, v219);
LABEL_57:

        return;
      }
    }

    else
    {
      v173 = v195;
      sub_10005D10C(v170, v195, &unk_1000D9E30, &qword_1000933F0);
      if (v90(v170 + v169, 1, v168) != 1)
      {
        v175 = v196;
        v207(v196, v170 + v169, v168);
        sub_10005E620(&qword_1000D9E90, &type metadata accessor for UUID);
        v176 = dispatch thunk of static Equatable.== infix(_:_:)();
        v172 = v214;
        v177 = *(v214 + 8);
        v177(v175, v168);
        sub_10005C664(v202, &unk_1000D9E30, &qword_1000933F0);
        sub_10005C664(v203, &unk_1000D9E30, &qword_1000933F0);
        v177(v173, v168);
        sub_10005C664(v170, &unk_1000D9E30, &qword_1000933F0);
        if (v176)
        {
          v177(v210, v219);
          goto LABEL_57;
        }

LABEL_54:
        v174 = v212.super.isa;
        AdaptiveTabBarController.switchTo(room:)(v212);

        (*(v172 + 8))(v210, v219);
        return;
      }

      sub_10005C664(v202, &unk_1000D9E30, &qword_1000933F0);
      sub_10005C664(v203, &unk_1000D9E30, &qword_1000933F0);
      v172 = v214;
      (*(v214 + 8))(v173, v168);
    }

    sub_10005C664(v170, &qword_1000D9FA8, &qword_1000933E8);
    goto LABEL_54;
  }

  v81 = v71;
  if (v80)
  {
    v92 = [v71 v77[487].count];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v93 = v205;
    UUID.init(uuidString:)();

    v94 = *(v29 + 48);
    v95 = v219;
    if (v94(v93, 1, v219) == 1)
    {
      sub_10005C664(v93, &unk_1000D9E30, &qword_1000933F0);
      goto LABEL_37;
    }

    v215 = v81;
    v129 = v209;
    v210 = *(v29 + 32);
    (v210)(v209, v93, v95);
    v130 = UUID._bridgeToObjectiveC()().super.isa;
    v131 = v95;
    v132 = [objc_opt_self() accessoryTypeGroupWithIdentifier:v130];

    if (!v132)
    {
      (*(v29 + 8))(v129, v131);
      v74 = v221;
      v81 = v215;
LABEL_37:
      isa = v207;
      v217(v207, v216, v74);
      v156 = v81;
      v98 = Logger.logObject.getter();
      v157 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v98, v157))
      {
        v158 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        *v158 = 136315650;
        v223 = v211;
        swift_getMetatypeMetadata();
        v160 = String.init<A>(describing:)();
        v162 = sub_10006B744(v160, v161, &v222);

        *(v158 + 4) = v162;
        *(v158 + 12) = 2080;
        *(v158 + 14) = sub_10006B744(0xD00000000000001ELL, 0x800000010009A720, &v222);
        *(v158 + 22) = 2112;
        *(v158 + 24) = v156;
        *v159 = v156;
        v163 = v156;
        _os_log_impl(&_mh_execute_header, v98, v157, "<%s: %s> element = %@ | HFAccessoryTypeGroup = nil", v158, 0x20u);
        sub_10005C664(v159, &qword_1000D9C70, &qword_1000936A0);

        swift_arrayDestroy();

        v106 = v207;
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    v214 = v29;
    v133 = *(v213 + OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext);
    v212.super.isa = v132;
    if (v133)
    {
      v134 = v133;
      v135 = dispatch thunk of DashboardContext.accessoryTypeGroup.getter();

      v136 = v197;
      v137 = v201;
      if (v135)
      {
        v138 = [v135 uniqueIdentifier];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v139 = 0;
      }

      else
      {
        v139 = 1;
      }
    }

    else
    {
      v139 = 1;
      v136 = v197;
      v137 = v201;
    }

    v178 = v214;
    v179 = *(v214 + 56);
    v180 = v219;
    v179(v137, v139, 1, v219);
    v181 = v200;
    (*(v178 + 16))(v200, v209, v180);
    v179(v181, 0, 1, v180);
    v182 = *(v204 + 48);
    sub_10005D10C(v137, v136, &unk_1000D9E30, &qword_1000933F0);
    sub_10005D10C(v181, v136 + v182, &unk_1000D9E30, &qword_1000933F0);
    if (v94(v136, 1, v180) == 1)
    {
      sub_10005C664(v181, &unk_1000D9E30, &qword_1000933F0);
      sub_10005C664(v137, &unk_1000D9E30, &qword_1000933F0);
      v183 = v94(v136 + v182, 1, v180);
      v184 = v214;
      v185 = v209;
      v186 = v212.super.isa;
      if (v183 == 1)
      {
        sub_10005C664(v136, &unk_1000D9E30, &qword_1000933F0);
        (*(v184 + 8))(v185, v219);
LABEL_68:

        return;
      }
    }

    else
    {
      v187 = v194;
      sub_10005D10C(v136, v194, &unk_1000D9E30, &qword_1000933F0);
      v188 = v94(v136 + v182, 1, v180);
      v186 = v212.super.isa;
      if (v188 != 1)
      {
        v189 = v196;
        (v210)(v196, v136 + v182, v180);
        sub_10005E620(&qword_1000D9E90, &type metadata accessor for UUID);
        v190 = v187;
        v191 = dispatch thunk of static Equatable.== infix(_:_:)();
        v184 = v214;
        v192 = *(v214 + 8);
        v192(v189, v180);
        sub_10005C664(v200, &unk_1000D9E30, &qword_1000933F0);
        sub_10005C664(v201, &unk_1000D9E30, &qword_1000933F0);
        v192(v190, v180);
        sub_10005C664(v136, &unk_1000D9E30, &qword_1000933F0);
        v185 = v209;
        if (v191)
        {
          v192(v209, v219);
          goto LABEL_68;
        }

LABEL_65:
        AdaptiveTabBarController.switchTo(accessoryTypeGroup:)(v186);

        (*(v184 + 8))(v185, v219);
        return;
      }

      sub_10005C664(v200, &unk_1000D9E30, &qword_1000933F0);
      sub_10005C664(v201, &unk_1000D9E30, &qword_1000933F0);
      v184 = v214;
      (*(v214 + 8))(v187, v180);
      v185 = v209;
    }

    sub_10005C664(v136, &qword_1000D9FA8, &qword_1000933E8);
    goto LABEL_65;
  }

  v82 = [v71 v77[487].count];
  v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v85 = v84;

  if (v83 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v85 == v86)
  {
  }

  else
  {
    v107 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v107 & 1) == 0)
    {
      return;
    }
  }

  v108 = OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext;
  v109 = v213;
  v110 = *(v213 + OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext);
  if (!v110)
  {
    isa = v199;
    v217(v199, v216, v74);
    v140 = v81;
    v98 = Logger.logObject.getter();
    v141 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v98, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v222 = swift_slowAlloc();
      *v142 = 136315650;
      v223 = v211;
      swift_getMetatypeMetadata();
      v144 = String.init<A>(describing:)();
      v146 = sub_10006B744(v144, v145, &v222);

      *(v142 + 4) = v146;
      *(v142 + 12) = 2080;
      *(v142 + 14) = sub_10006B744(0xD00000000000001ELL, 0x800000010009A720, &v222);
      *(v142 + 22) = 2112;
      *(v142 + 24) = v140;
      *v143 = v140;
      v147 = v140;
      _os_log_impl(&_mh_execute_header, v98, v141, "<%s: %s> element = %@ | dashboardContext.home = nil", v142, 0x20u);
      sub_10005C664(v143, &qword_1000D9C70, &qword_1000936A0);

      swift_arrayDestroy();

      v106 = v199;
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v111 = v110;
  v112 = DashboardContext.home.getter();

  v113 = *(v109 + v108);
  if (v113 && ((v114 = v113, v115 = DashboardContext.room.getter(), v114, v115) || (v164 = *(v109 + v108)) != 0 && (v165 = v164, v115 = dispatch thunk of DashboardContext.accessoryTypeGroup.getter(), v165, v115)))
  {

    AdaptiveTabBarController.switchTo(home:)(v112);
  }

  else
  {
  }
}

id AdaptiveTabBarController.finishPresentation(_:animated:)(uint64_t a1, char a2)
{
  debug_assert(_:_:file:line:)();
  if (HUIsPhoneIdiom())
  {
    v4 = [objc_opt_self() currentDevice];
    [v4 setOrientation:1 animated:0];
  }

  v5 = [v2 hu_dismissViewControllerAnimated:a2 & 1];

  return v5;
}

id sub_10006A2C4(void *a1, id a2)
{
  v3 = [a2 presentedViewController];
  v4 = [a1 naui_isDescendantOfViewController:v3];

  return v4;
}

uint64_t sub_10006A324(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(85);
  v3._object = 0x800000010009ABF0;
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v3);
  swift_getObjectType();
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v4._countAndFlagsBits = 0xD000000000000036;
  v4._object = 0x800000010009AC10;
  String.append(_:)(v4);
  v5 = [a2 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 33;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 0;
}

Swift::Void __swiftcall AdaptiveTabBarController.tabBarControllerDidFinishPresenting(viewController:)(UIViewController viewController)
{
  v1 = sub_1000578B4(&unk_1000D9FB0, &qword_1000933F8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v6 - v3;
  v5 = type metadata accessor for SidebarTabElementBuilder();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_100063D48(v4);
  sub_10005C664(v4, &unk_1000D9FB0, &qword_1000933F8);
}

void sub_10006A730()
{
  v0 = sub_1000578B4(&unk_1000D9FB0, &qword_1000933F8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9[-v2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = type metadata accessor for SidebarTabElementBuilder();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_100063D48(v3);

    sub_10005C664(v3, &unk_1000D9FB0, &qword_1000933F8);
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    sub_100066074();
  }
}

void AdaptiveTabBarController.didUpdateDashboarContext(dashboardContext:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1000578B4(&unk_1000D9FB0, &qword_1000933F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D97C0 != -1)
  {
    swift_once();
  }

  v14 = sub_10006AF58(v9, qword_1000D9EE0);
  (*(v10 + 16))(v13, v14, v9);
  v15 = v2;
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = v8;
    v20 = v19;
    v21 = swift_slowAlloc();
    v38 = v17;
    v22 = v21;
    v39 = swift_slowAlloc();
    v41[0] = v39;
    v41[1] = ObjectType;
    *v20 = 136315906;
    swift_getMetatypeMetadata();
    v23 = String.init<A>(describing:)();
    v25 = sub_10006B744(v23, v24, v41);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10006B744(0xD00000000000002BLL, 0x800000010009A7B0, v41);
    *(v20 + 22) = 2112;
    v26 = *&v15[OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext];
    *(v20 + 24) = v26;
    *(v20 + 32) = 2112;
    *(v20 + 34) = v16;
    *v22 = v26;
    v22[1] = v16;
    v27 = v16;
    v28 = v26;
    v29 = v38;
    _os_log_impl(&_mh_execute_header, v38, v18, "<%s: %s> Changing context from %@ to %@", v20, 0x2Au);
    sub_1000578B4(&qword_1000D9C70, &qword_1000936A0);
    swift_arrayDestroy();

    swift_arrayDestroy();

    v8 = v40;
  }

  else
  {
  }

  (*(v10 + 8))(v13, v9);
  v30 = OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext;
  v31 = *&v15[OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext];
  if (v31)
  {
    *&v15[OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext] = v16;
  }

  else
  {
    v32 = type metadata accessor for SidebarTabElementBuilder();
    (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
    sub_100063D48(v8);
    sub_10005C664(v8, &unk_1000D9FB0, &qword_1000933F8);
    v31 = *&v15[v30];
    *&v15[v30] = v16;
    if (!v31)
    {
      v36 = v16;
      goto LABEL_12;
    }
  }

  type metadata accessor for DashboardContext();
  v33 = v16;
  v34 = v31;
  v35 = static NSObject.== infix(_:_:)();

  if ((v35 & 1) == 0)
  {
LABEL_12:
    sub_10005E9BC();
    sub_10005F7E0();

    goto LABEL_13;
  }

  v31 = v34;
LABEL_13:
}

uint64_t sub_10006AEA0()
{
  v0 = *(*(type metadata accessor for Logger() - 8) + 64);
  __chkstk_darwin();
  v1 = type metadata accessor for OSSignposter();
  sub_10006E590(v1, qword_1000DB850);
  sub_10006AF58(v1, qword_1000DB850);
  type metadata accessor for DataModel();
  static DataModel.modelLogger.getter();
  return OSSignposter.init(logger:)();
}

uint64_t sub_10006AF58(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

double AdaptiveTabBarController.target(forAction:withSender:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR___HOAdaptiveTabBarController_menuToolbarManager;
  swift_beginAccess();
  v10 = *&v4[v9];
  if (v10)
  {
    v11 = v10;
    v12 = [v11 appNavigator];
    if (v12)
    {

      if ([objc_opt_self() isValidMenuSelector:a1 forDashboardContext:*&v4[OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext]])
      {
        *(a3 + 24) = sub_10005B9DC(0, &qword_1000D9FC0, HUMenuToolbarManager_ptr);
        *a3 = v11;
        return result;
      }
    }
  }

  sub_10005D10C(a2, &v24, &qword_1000D9D88, &qword_100093400);
  v14 = *(&v25 + 1);
  if (*(&v25 + 1))
  {
    v15 = sub_1000583BC(&v24, *(&v25 + 1));
    v16 = *(v14 - 8);
    v17 = *(v16 + 64);
    __chkstk_darwin(v15);
    v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v16 + 8))(v19, v14);
    sub_1000578FC(&v24);
  }

  else
  {
    v20 = 0;
  }

  v23.receiver = v4;
  v23.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v23, "targetForAction:withSender:", a1, v20);
  swift_unknownObjectRelease();
  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  result = *&v24;
  v22 = v25;
  *a3 = v24;
  *(a3 + 16) = v22;
  return result;
}

uint64_t sub_10006B418@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10006B498(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t type metadata accessor for AdaptiveTabBarController()
{
  result = qword_1000D9FF0;
  if (!qword_1000D9FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006B554(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006B64C;

  return v7(a1);
}

uint64_t sub_10006B64C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10006B744(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10006B810(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10005A46C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000578FC(v11);
  return v7;
}

unint64_t sub_10006B810(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10006B91C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10006B91C(uint64_t a1, unint64_t a2)
{
  v4 = sub_10006B968(a1, a2);
  sub_10006BA98(&off_1000C4630);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10006B968(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10006BB84(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10006BB84(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10006BA98(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10006BBF8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10006BB84(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000578B4(&unk_1000DA330, &qword_100093530);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10006BBF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000578B4(&unk_1000DA330, &qword_100093530);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10006BCEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006BD2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10006BDE0;

  return sub_100063194(a1, v4, v5, v6);
}

uint64_t sub_10006BDE0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10006BEDC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000578B4(&qword_1000DA300, &qword_100093510);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10006C180(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10007C3F0(a2, a3);
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
      sub_10006BEDC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10007C3F0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10006C2F8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_10006C2F8()
{
  v1 = v0;
  sub_1000578B4(&qword_1000DA300, &qword_100093510);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t _s7HomeApp24AdaptiveTabBarControllerC11windowTitle03forD10Identifier16dashboardContextSSSgSo06HFHomebdJ0a_0A2UI09DashboardL0CSgtF_0(uint64_t a1, uint64_t a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {

LABEL_15:
    if (a2)
    {
      result = dispatch thunk of DashboardContext.overrideDashboardTitle.getter();
      if (v20)
      {
        return result;
      }

      v21 = DashboardContext.room.getter();
      if (v21)
      {
        v22 = v21;
        v23 = [v21 hf_displayName];
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_30:
        return v24;
      }

      v26 = DashboardContext.home.getter();
      v27 = [v26 hf_displayName];
    }

    else
    {
      v25 = [objc_opt_self() sharedDispatcher];
      v26 = [v25 home];

      if (!v26)
      {
        return 0;
      }

      v27 = [v26 hf_displayName];
    }

LABEL_29:
    v23 = v27;

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_30;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    goto LABEL_15;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {

LABEL_22:
    v28 = [objc_opt_self() sharedDispatcher];
    v29 = [v28 home];

    if (v29)
    {
      v30 = [v29 hf_userCanCreateTrigger];

      if (v30)
      {
        goto LABEL_28;
      }
    }

    if (HFForceAllowAutomationCreation())
    {
      goto LABEL_28;
    }

    return 0;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_22;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

LABEL_28:
    v26 = String._bridgeToObjectiveC()();
    v27 = HFLocalizedString();
    goto LABEL_29;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
    goto LABEL_28;
  }

  return 0;
}

uint64_t sub_10006C7A0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10006E608;

  return sub_10006822C(v2, v3);
}

void *sub_10006C838(uint64_t a1)
{
  v2 = type metadata accessor for StateSnapshot.Coverage();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1000578B4(&qword_1000DA318, &qword_100093528);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_10005E620(&qword_1000DA320, &type metadata accessor for StateSnapshot.Coverage);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_10005E620(&qword_1000DA328, &type metadata accessor for StateSnapshot.Coverage);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_10006CB58(uint64_t a1)
{
  v2 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for UUID();
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedDispatcher];
  v11 = [v10 home];

  if (v11)
  {
    v25 = v11;
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = (v27 + 48);
      v14 = (v27 + 32);
      v15 = (a1 + 40);
      v16 = _swiftEmptyArrayStorage;
      v26 = v9;
      do
      {
        v18 = *(v15 - 1);
        v17 = *v15;

        UUID.init(uuidString:)();

        if ((*v13)(v5, 1, v6) == 1)
        {
          sub_10005C664(v5, &unk_1000D9E30, &qword_1000933F0);
        }

        else
        {
          v19 = *v14;
          (*v14)(v9, v5, v6);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_10007A9A4(0, v16[2] + 1, 1, v16);
          }

          v21 = v16[2];
          v20 = v16[3];
          if (v21 >= v20 >> 1)
          {
            v16 = sub_10007A9A4(v20 > 1, v21 + 1, 1, v16);
          }

          v16[2] = v21 + 1;
          v22 = v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21;
          v9 = v26;
          v19(v22, v26, v6);
        }

        v15 += 2;
        --v12;
      }

      while (v12);
    }

    v23 = v25;
    HMHome.sidebarRoomsSortOrder.setter();
  }
}

uint64_t sub_10006CE1C(void *a1)
{
  v2 = v1;
  v4 = [v1 selectedViewController];
  if (v4)
  {
    v5 = v4;
    sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
    v6 = a1;
    v7 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR___HOAdaptiveTabBarController_scrollToTop;
  v2[OBJC_IVAR___HOAdaptiveTabBarController_scrollToTop] = v7 & 1;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = a1;
    v12 = [v10 viewControllers];
    sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v13 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14 == 1 && (v15 = [v2 selectedViewController]) != 0)
    {
      v16 = v15;
      v17 = v11;
      v18 = static NSObject.== infix(_:_:)();
    }

    else
    {
      v18 = 0;
    }

    v2[v8] = v18 & 1;
  }

  return 1;
}

void sub_10006CFC4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D97C0 != -1)
  {
    swift_once();
  }

  v10 = sub_10006AF58(v5, qword_1000D9EE0);
  (*(v6 + 16))(v9, v10, v5);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25[0] = v23;
    v25[1] = ObjectType;
    *v15 = 136315650;
    swift_getMetatypeMetadata();
    v17 = String.init<A>(describing:)();
    v19 = sub_10006B744(v17, v18, v25);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_10006B744(0xD00000000000001ELL, 0x800000010009ABD0, v25);
    *(v15 + 22) = 2112;
    *(v15 + 24) = v11;
    *v16 = v11;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "<%s: %s> %@", v15, 0x20u);
    sub_10005C664(v16, &qword_1000D9C70, &qword_1000936A0);

    swift_arrayDestroy();

    v2 = v24;
  }

  (*(v6 + 8))(v9, v5);
  v21 = OBJC_IVAR___HOAdaptiveTabBarController_scrollToTop;
  if (*(v2 + OBJC_IVAR___HOAdaptiveTabBarController_scrollToTop) == 1)
  {
    v22 = _s7HomeApp24AdaptiveTabBarControllerC18dashboardNavigatorSo011HUDashboardH0_pSgvg_0();
    [v22 scrollToDefaultPositionInCurrentContextAnimated:1];
  }

  sub_10005F7E0();
  *(v2 + v21) = 0;
}

id sub_10006D2BC(void *a1)
{
  v2 = [objc_allocWithZone(HUPreloadedTransitionController) init];
  result = [v2 completionFuture];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a1;
    v10[4] = sub_10006E2F0;
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10005D79C;
    v10[3] = &unk_1000C6C78;
    v7 = _Block_copy(v10);
    v8 = a1;

    v9 = [v4 addSuccessBlock:v7];
    _Block_release(v7);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006D414(void *a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR___HOAdaptiveTabBarController_roomsElements);
  if (!v3)
  {
    return 1;
  }

  v4 = [v3 _children];
  sub_10005B9DC(0, &qword_1000DA2D0, _UITab_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
LABEL_32:
    v28 = v5 & 0xFFFFFFFFFFFFFF8;
    v29 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v28 = v5 & 0xFFFFFFFFFFFFFF8;
    v29 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    if (v29 == v6)
    {

      return 1;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v28 + 16))
      {
        goto LABEL_31;
      }

      v8 = *(v5 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v10 = [v8 _identifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = [a1 _identifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v11 == v15 && v13 == v17)
    {

      goto LABEL_17;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v6;
  }

  while ((v7 & 1) == 0);

LABEL_17:
  v18 = [a2 items];
  sub_10005B9DC(0, &qword_1000DA2A8, UIDragItem_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_19:
      if ((v19 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v21 = *(v19 + 32);
      }

      v22 = v21;

      v23 = [v22 localObject];

      if (v23)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0u;
        v32 = 0u;
      }

      v33 = v31;
      v34 = v32;
      if (*(&v32 + 1))
      {
        sub_1000578B4(&unk_1000DA2B0, &qword_1000934E0);
        if (swift_dynamicCast())
        {
          swift_unknownObjectRelease();
          v24 = [objc_opt_self() sharedDispatcher];
          v25 = [v24 home];

          if (v25)
          {
            v26 = [v25 hf_currentUserIsAdministrator];

            if (v26)
            {
              return 3;
            }
          }
        }

        return 1;
      }

      goto LABEL_35;
    }
  }

  else
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_19;
    }
  }

  v33 = 0u;
  v34 = 0u;
LABEL_35:
  sub_10005C664(&v33, &qword_1000D9D88, &qword_100093400);
  return 1;
}

void sub_10006D7EC(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 1);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 items];
  sub_10005B9DC(0, &qword_1000DA2A8, UIDragItem_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    goto LABEL_49;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_50;
  }

  while ((v11 & 0xC000000000000001) != 0)
  {
LABEL_54:
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
    v13 = v12;

    v14 = [v13 localObject];

    if (v14)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    v63 = v61;
    v64 = v62;
    if (!*(&v62 + 1))
    {
LABEL_51:
      sub_10005C664(&v63, &qword_1000D9D88, &qword_100093400);
      return;
    }

    sub_1000578B4(&unk_1000DA2B0, &qword_1000934E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v15 = v61;
    v16 = [objc_opt_self() sharedDispatcher];
    v17 = [v16 home];

    if (!v17)
    {
LABEL_28:
      swift_unknownObjectRelease();
      return;
    }

    v52 = v17;
    v53 = v15;
    v18 = [v17 rooms];
    sub_10005B9DC(0, &qword_1000DA870, HMRoom_ptr);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = v9;
    if (v2 >> 62)
    {
      goto LABEL_56;
    }

    v19 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_57;
    }

LABEL_14:
    v20 = 0;
    v55 = v2 & 0xFFFFFFFFFFFFFF8;
    v56 = v2 & 0xC000000000000001;
    v54 = v6 + 1;
    while (1)
    {
      if (v56)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      else
      {
        if (v20 >= *(v55 + 16))
        {
          __break(1u);
          goto LABEL_54;
        }

        v21 = *(v2 + 8 * v20 + 32);
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_27;
        }
      }

      v58 = v22;
      v59 = v21;
      v23 = [v21 uniqueIdentifier];
      v24 = v57;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = UUID.uuidString.getter();
      v27 = v26;
      v28 = v24;
      v9 = v5;
      (*v54)(v28, v5);
      v29 = a1;
      v6 = [a1 _identifier];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      if (v25 == v30 && v27 == v32)
      {
        break;
      }

      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v34)
      {
        goto LABEL_30;
      }

      ++v20;
      a1 = v29;
      v5 = v9;
      if (v58 == v19)
      {
        goto LABEL_57;
      }
    }

LABEL_30:

    v35 = objc_allocWithZone(HFRoomItem);
    v36 = [v35 initWithHome:v52 room:v59];
    v37 = [v36 room];
    v57 = v36;
    v38 = [v36 home];
    v5 = [objc_allocWithZone(HFRoomBuilder) initWithExistingObject:v37 inHome:v38];

    v9 = [v53 accessories];
    v39 = sub_10005B9DC(0, &unk_1000DA2C0, HMAccessory_ptr);
    sub_10006E248();
    v40 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = v39;
    if ((v40 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v42 = *(&v63 + 1);
      v41 = v63;
      v2 = *(&v64 + 1);
      v11 = v64;
      v6 = v65;
    }

    else
    {
      v43 = -1 << *(v40 + 32);
      v42 = v40 + 56;
      v11 = ~v43;
      v44 = -v43;
      if (v44 < 64)
      {
        v45 = ~(-1 << v44);
      }

      else
      {
        v45 = -1;
      }

      v6 = (v45 & *(v40 + 56));

      v2 = 0;
      v41 = v40;
    }

    v56 = v11;
    for (i = (v11 + 64) >> 6; v41 < 0; v6 = v11)
    {
      v49 = __CocoaSet.Iterator.next()();
      if (!v49)
      {
        goto LABEL_47;
      }

      v60 = v49;
      swift_dynamicCast();
      v9 = v61;
      a1 = v2;
      v11 = v6;
      if (!v61)
      {
        goto LABEL_47;
      }

LABEL_45:
      [v5 addAccessory:v9];

      v2 = a1;
    }

    v47 = v2;
    v48 = v6;
    a1 = v2;
    if (v6)
    {
LABEL_41:
      v11 = (v48 - 1) & v48;
      v9 = *(*(v41 + 48) + ((a1 << 9) | (8 * __clz(__rbit64(v48)))));
      if (v9)
      {
        goto LABEL_45;
      }

LABEL_47:
      sub_100059150();

      v50 = [v5 commitItem];
      swift_unknownObjectRelease();

      return;
    }

    while (1)
    {
      a1 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (a1 >= i)
      {
        goto LABEL_47;
      }

      v48 = *(v42 + 8 * a1);
      ++v47;
      if (v48)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_49:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_50:

      v63 = 0u;
      v64 = 0u;
      goto LABEL_51;
    }
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_56:
  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (v19)
  {
    goto LABEL_14;
  }

LABEL_57:
  swift_unknownObjectRelease();
}

id sub_10006DF10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = AdaptiveTabBarController.baseController.getter();
  *a2 = result;
  return result;
}

void sub_10006DF3C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___baseController);
  *(*a2 + OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___baseController) = *a1;
  v3 = v2;
}

void sub_10006DF94()
{
  sub_10006E060();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10006E060()
{
  if (!qword_1000DA000)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DA000);
    }
  }
}

uint64_t sub_10006E0B4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10006E14C;

  return sub_10006822C(v2, v3);
}

uint64_t sub_10006E14C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t sub_10006E248()
{
  result = qword_1000D9E70;
  if (!qword_1000D9E70)
  {
    sub_10005B9DC(255, &unk_1000DA2C0, HMAccessory_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E70);
  }

  return result;
}

uint64_t sub_10006E2B0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10006E2F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10006A730();
}

uint64_t sub_10006E2F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006E310(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_10006E378()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006E3E8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006E420(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10006E63C;

  return sub_10006B554(a1, v5);
}

uint64_t sub_10006E4D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10006BDE0;

  return sub_10006B554(a1, v5);
}

uint64_t *sub_10006E590(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t _UITab.id.getter()
{
  v1 = [v0 _identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void sub_10006E6D0(uint64_t *a1@<X8>)
{
  v3 = [*v1 _identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

id sub_10006E728@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

id sub_10006E758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24))
  {
    sub_10006EA0C(a2, v19);
    SidebarTabElementBuilder.id.getter();
    SidebarTabElementBuilder.title.getter();
    v4 = SidebarTabElementBuilder.tabIcon.getter();
    v5 = objc_allocWithZone(_UITabElementGroup);
    v6 = String._bridgeToObjectiveC()();

    v7 = String._bridgeToObjectiveC()();

    v8 = [v5 initWithIdentifier:v6 title:v7 image:v4];

    sub_1000583BC(v19, v19[3]);
    sub_10006EA24();
    Sequence.compactMap<A>(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 _setChildren:isa];

    [v8 _setDelegate:a3];
    [v8 _setSelectedElement:0];
    v10 = v8;
    SidebarTabElementBuilder.accessibilityIdentifier.getter();
    v11 = String._bridgeToObjectiveC()();

    [v10 setAccessibilityIdentifier:v11];

    sub_1000578FC(v19);
  }

  else
  {
    SidebarTabElementBuilder.id.getter();
    SidebarTabElementBuilder.title.getter();
    v12 = SidebarTabElementBuilder.tabIcon.getter();
    v13 = objc_allocWithZone(_UITabElement);
    v14 = String._bridgeToObjectiveC()();

    v15 = String._bridgeToObjectiveC()();

    v16 = [v13 initWithIdentifier:v14 title:v15 image:v12];

    v10 = v16;
    SidebarTabElementBuilder.accessibilityIdentifier.getter();
    v17 = String._bridgeToObjectiveC()();

    [v10 setAccessibilityIdentifier:v17];
  }

  return v10;
}

uint64_t sub_10006EA0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_10006EA24()
{
  result = qword_1000DA2D0;
  if (!qword_1000DA2D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DA2D0);
  }

  return result;
}

id sub_10006EA70(uint64_t a1)
{
  v2 = v1;
  v3 = [objc_allocWithZone(HUSceneActionEditorViewController) initWithActionSetBuilder:a1 mode:2];
  v4 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v3];
  result = [v2 hu_presentPreloadableViewController:v4 animated:1];
  if (result)
  {
    v6 = result;
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 futureWithResult:v3];
    v10 = [v9 asGeneric];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SidebarTabElementBuilder.viewController.getter()
{
  v0 = type metadata accessor for SidebarTabElementBuilder.Kind();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  SidebarTabElementBuilder.kind.getter();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == enum case for SidebarTabElementBuilder.Kind.category(_:) || v5 == enum case for SidebarTabElementBuilder.Kind.room(_:))
  {
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    if (v5 == enum case for SidebarTabElementBuilder.Kind.automation(_:))
    {
      (*(v1 + 96))(v4, v0);
      v12 = HUTriggerListViewController_ptr;
      if (!*v4)
      {
        v12 = HUAboutResidentDeviceViewController_ptr;
      }

      return [objc_allocWithZone(*v12) init];
    }

    if (v5 != enum case for SidebarTabElementBuilder.Kind.home(_:))
    {
      if (v5 == enum case for SidebarTabElementBuilder.Kind.learn(_:))
      {
        v13 = [objc_opt_self() getAvailabilityDictionary];
        v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = sub_10006EE68(v14);

        if (v15)
        {
          v16 = objc_allocWithZone(HODiscoverWebViewController);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v18 = [v16 initWithLocalizationDictionary:isa];

          return v18;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
      }

      return result;
    }
  }

  v7 = [objc_opt_self() sharedDispatcher];
  v8 = [v7 home];

  result = 0;
  if (v8)
  {
    type metadata accessor for DashboardContext();
    v10 = dispatch thunk of static DashboardContext.homeDashboard(for:)();
    v11 = [objc_allocWithZone(HUDashboardViewController) initWithContext:v10 delegate:0];

    return v11;
  }

  return result;
}

unint64_t sub_10006EE68(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_1000578B4(&qword_1000DA4C0, &unk_1000935A0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v16 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v16);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v6)) | (v16 << 6);
        v18 = (*(v1 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        sub_10005A46C(*(v1 + 56) + 32 * v17, v32);
        *&v31 = v19;
        *(&v31 + 1) = v20;
        v29[2] = v31;
        v30[0] = v32[0];
        v30[1] = v32[1];
        v21 = v31;
        sub_1000583AC(v30, v29);

        if (!swift_dynamicCast())
        {
          break;
        }

        v6 &= v6 - 1;
        result = sub_10007C3F0(v21, *(&v21 + 1));
        if (v22)
        {
          v10 = v1;
          v11 = 16 * result;
          v12 = v2[6] + 16 * result;
          v13 = *(v12 + 8);
          *v12 = v21;

          v14 = (v2[7] + v11);
          v1 = v10;
          v15 = v14[1];
          *v14 = v27;
          v14[1] = v28;

          v9 = v16;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v21;
          v23 = (v2[7] + 16 * result);
          *v23 = v27;
          v23[1] = v28;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_24;
          }

          v2[2] = v26;
          v9 = v16;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v16 = v9;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_10006F324(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char a6, uint64_t (*a7)(uint64_t, uint64_t, id))
{
  if (a3)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  type metadata accessor for DashboardContext();
  v15 = a4;
  v16 = a5;
  v18 = a1;
  v17 = a7(v12, v14, v15);

  sub_10006FA24(v17, v16, 0, a6);
}

Swift::String_optional __swiftcall HOAppNavigator.dashboardContextTypeDescriptionForAnalytics()()
{
  v1 = [v0 currentViewController];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 context];
    v4 = dispatch thunk of DashboardContext.typeDescriptionForAnalytics.getter();
    v6 = v5;
  }

  else
  {

    v4 = 0;
    v6 = 0;
  }

  v7 = v4;
  v8 = v6;
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

void sub_10006F61C(int a1, int a2, id a3, uint64_t a4, char a5)
{
  v6 = [a3 hu_pushPreloadableViewController:a4 animated:a5 & 1 waitForPreload:1];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    v12[4] = sub_1000706C0;
    v12[5] = v8;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10004AD98;
    v12[3] = &unk_1000C6E70;
    v9 = _Block_copy(v12);
    v10 = a3;

    v11 = [v7 addCompletionBlock:v9];
    _Block_release(v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_10006F73C(void *a1, int a2, id a3)
{
  v5 = [a3 viewControllers];
  sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 < 3)
  {
    return;
  }

  v8 = [a3 viewControllers];
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }

LABEL_17:

    return;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_6:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v10 = *(v9 + 32);
  }

  isa = v10;

  if (a1)
  {
    sub_1000578B4(&unk_1000D9F80, &unk_100093218);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1000935B0;
    *(v11 + 32) = isa;
    *(v11 + 40) = a1;
    v12 = a1;
    v13 = isa;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [a3 setViewControllers:isa];
  }
}

Swift::Int BridgedNavigationError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10006F9D4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void sub_10006FA24(uint64_t a1, id a2, char a3, char a4)
{
  v8 = [a2 viewControllers];
  sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v9 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v10 = *(v9 + 32);
      }

      v30 = v10;

      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (!v11)
      {
        v18 = v30;
        goto LABEL_17;
      }

      v12 = v11;
      v13 = [a2 topViewController];
      if (v13)
      {
        v14 = v13;
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          v29 = v15;
          sub_10005B9DC(0, &qword_1000DA4D0, NSObject_ptr);
          v28 = v14;
          v16 = [v29 context];
          v17 = static NSObject.== infix(_:_:)();

          if (v17)
          {

            v18 = v28;
LABEL_17:

            return;
          }

LABEL_14:
          v19 = DashboardContext.home.getter();
          v20 = [v19 hf_currentUserIsRestrictedGuest];

          if (!v20 || (dispatch thunk of DashboardContext.shouldHideForGuests.getter() & 1) == 0)
          {
            v21 = [objc_allocWithZone(HUDashboardViewController) initWithContext:a1 asOverlay:a3 & 1 delegate:{objc_msgSend(v12, "delegate")}];
            swift_unknownObjectRelease();
            [v29 prepareForTransitionToContext:a1 forViewController:v21];
            v22 = [v12 viewFirstTimeFullyVisibleFuture];
            v23 = swift_allocObject();
            *(v23 + 16) = a2;
            *(v23 + 24) = v21;
            *(v23 + 32) = a4 & 1;
            aBlock[4] = sub_100070664;
            aBlock[5] = v23;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100073438;
            aBlock[3] = &unk_1000C6E20;
            v24 = _Block_copy(aBlock);
            v25 = a2;
            v26 = v21;

            v27 = [v22 addCompletionBlock:v24];
            _Block_release(v24);

            return;
          }

          v18 = v29;
          goto LABEL_17;
        }
      }

      v29 = 0;
      goto LABEL_14;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }
}

void sub_10006FDFC(void *a1, void *a2, void *a3, char a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  v16 = [a1 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = [objc_opt_self() energyAccessoryTypeGroup];
  v18 = [v17 uniqueIdentifier];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  LOBYTE(v17) = static UUID.== infix(_:_:)();
  v19 = *(v9 + 8);
  v19(v13, v8);
  v19(v15, v8);
  if ((v17 & 1) == 0 || [a2 hf_isHomeEnergyVisible])
  {
    type metadata accessor for DashboardContext();
    v20 = dispatch thunk of static DashboardContext.categoryDashboard(for:in:room:)();
    v21 = [a3 viewControllers];
    sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v22 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v23 >= 2)
    {
      v24 = [a3 topViewController];
      if (v24)
      {
        v25 = v24;
        objc_opt_self();
        v26 = swift_dynamicCastObjCClass();
        if (v26)
        {
          if (([v26 isOverlay] & 1) == 0)
          {
          }

          a4 = 0;
        }
      }
    }

    sub_10006FA24(v20, a3, 1, a4 & 1);
  }
}

void sub_1000700DC(void *a1, void *a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 home];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for DashboardContext();
    v22 = dispatch thunk of static DashboardContext.roomDashboard(for:in:)();
    sub_10006FA24(v22, a2, 0, a3 & 1);

    v13 = v22;
  }

  else
  {
    if (qword_1000D97E0 != -1)
    {
      swift_once();
    }

    v14 = qword_1000DB8A0;
    Logger.init(_:)();
    v15 = a1;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v18 = 136315394;
      *(v18 + 4) = sub_10006B744(0xD00000000000003ELL, 0x800000010009AE40, &v23);
      *(v18 + 12) = 2112;
      *(v18 + 14) = v15;
      *v19 = v15;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s nil home for room %@", v18, 0x16u);
      sub_1000706C8(v19);

      sub_1000578FC(v20);
    }

    (*(v7 + 8))(v10, v6);
  }
}

void _sSo14HOAppNavigatorC7HomeAppE25configureDashboardContext4with20navigationController8animatedy0C2UI0fG0CSg_So012UINavigationJ0CSbtF_0(void *a1, void *a2, char a3)
{
  if (!a1)
  {
    return;
  }

  v15 = a1;
  if ((dispatch thunk of DashboardContext.allowsHomeNavigation.getter() & 1) == 0)
  {
    v6 = a3 & 1;
    v7 = v15;
    v8 = a2;
    v9 = 1;
LABEL_10:
    sub_10006FA24(v7, v8, v9, v6);
    goto LABEL_11;
  }

  v5 = DashboardContext.room.getter();
  if (v5)
  {

LABEL_9:
    v6 = a3 & 1;
    v7 = v15;
    v8 = a2;
    v9 = 0;
    goto LABEL_10;
  }

  dispatch thunk of DashboardContext.overrideDashboardTitle.getter();
  if (v10)
  {

    goto LABEL_9;
  }

  v12 = [a2 viewControllers];
  sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v15;
  if (v14 < 2)
  {
    goto LABEL_12;
  }

LABEL_11:
  v11 = v15;
LABEL_12:
}

unint64_t sub_1000704F0()
{
  result = qword_1000DA4C8;
  if (!qword_1000DA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA4C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BridgedNavigationError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for BridgedNavigationError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_100070624()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100070670(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100070688()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000706C8(uint64_t a1)
{
  v2 = sub_1000578B4(&qword_1000D9C70, &qword_1000936A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id HOWidgetUpdater.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HOWidgetUpdater();
  return objc_msgSendSuper2(&v2, "init");
}

id HOWidgetUpdater.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HOWidgetUpdater();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10007095C(char a1, uint64_t a2)
{
  v3 = v2;
  sub_100070AEC(a1);
  v5 = String._bridgeToObjectiveC()();

  if (a2)
  {
    swift_errorRetain();
    sub_1000578B4(&qword_1000DA568, &qword_1000936C8);
    sub_1000578B4(&unk_1000DA570, &qword_1000936D0);
    if (swift_dynamicCast())
    {
      if (*(&v8 + 1))
      {
        sub_1000583BC(&v7, *(&v8 + 1));
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_1000578FC(&v7);
LABEL_8:
        v6 = String._bridgeToObjectiveC()();

        goto LABEL_9;
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }

    sub_10005C664(&v7, &qword_1000DA560, &qword_1000936C0);
    swift_getErrorValue();
    Error.localizedDescription.getter();
    goto LABEL_8;
  }

  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  sub_10005C664(&v7, &qword_1000DA560, &qword_1000936C0);
  v6 = 0;
LABEL_9:
  [v3 failedTest:v5 withFailure:v6];
}

uint64_t sub_100070AEC(char a1)
{
  result = 0x706D6F4364616572;
  switch(a1)
  {
    case 1:
      result = 0x6F486C6C6F726373;
      break;
    case 2:
    case 6:
    case 17:
      result = 0xD000000000000010;
      break;
    case 3:
    case 10:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x6D6F6F526E65706FLL;
      break;
    case 5:
    case 16:
    case 36:
      result = 0xD000000000000015;
      break;
    case 7:
    case 9:
    case 37:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x6964654D6E65706FLL;
      break;
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 12:
    case 14:
      result = 0xD00000000000001DLL;
      break;
    case 13:
    case 34:
      result = 0xD00000000000001ELL;
      break;
    case 15:
      result = 0xD000000000000017;
      break;
    case 18:
      result = 0x6D6F6F52646461;
      break;
    case 19:
      result = 0x6F526574656C6564;
      break;
    case 20:
      result = 0x694C656C67676F74;
      break;
    case 21:
      v3 = 0x656C67676F74;
      goto LABEL_24;
    case 22:
      v3 = 0x657461657263;
LABEL_24:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6353000000000000;
      break;
    case 23:
      result = 0xD000000000000014;
      break;
    case 24:
    case 35:
      result = 0xD000000000000013;
      break;
    case 25:
      result = 0xD000000000000016;
      break;
    case 26:
    case 29:
    case 32:
      result = 0xD000000000000018;
      break;
    case 27:
      result = 0xD000000000000025;
      break;
    case 28:
      result = 0xD000000000000024;
      break;
    case 30:
      result = 0xD000000000000017;
      break;
    case 31:
      result = 0xD000000000000017;
      break;
    case 33:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100071180(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  if (a2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  isa = v7.super.isa;
  [a3 *a4];
}

uint64_t sub_100071218(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v9 = sub_1000578B4(&qword_1000D9E28, &unk_1000931D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  *(&v17 - v11) = 1;
  v13 = enum case for DispatchTimeInterval.seconds(_:);
  v14 = type metadata accessor for DispatchTimeInterval();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v12, v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  sub_10004AEFC(a4, a5, a1, a2, v12);
  return sub_10005C664(v12, &qword_1000D9E28, &unk_1000931D0);
}

uint64_t sub_100071370(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000578B4(&unk_1000DA580, &unk_100093370);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  type metadata accessor for MainActor();
  v14 = a3;
  v15 = a1;

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v14;
  v17[5] = v15;
  v17[6] = a2;
  sub_10005D938(0, 0, v12, a5, v17);
}

uint64_t sub_1000714B8(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = sub_1000578B4(&unk_1000DA580, &unk_100093370);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  type metadata accessor for MainActor();
  v16 = a3;
  v17 = a1;

  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = &protocol witness table for MainActor;
  *(v19 + 32) = v16;
  *(v19 + 40) = a5;
  *(v19 + 48) = v17;
  *(v19 + 56) = a2;
  sub_10005D938(0, 0, v14, a6, v19);
}

uint64_t sub_100071610()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x26)
  {
    return 38;
  }

  else
  {
    return v0;
  }
}

void *sub_100071664(char a1)
{
  switch(a1)
  {
    case 1:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072658;
      break;
    case 2:
      v11 = swift_allocObject();
      *(v11 + 16) = v1;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_100072634;
      *(v12 + 24) = v11;
      v2 = sub_100072D00;
      break;
    case 3:
      v13 = swift_allocObject();
      *(v13 + 16) = v1;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1000725D8;
      *(v14 + 24) = v13;
      v2 = sub_100072D00;
      break;
    case 4:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_1000725B4;
      break;
    case 5:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072590;
      break;
    case 6:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_10007256C;
      break;
    case 7:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072548;
      break;
    case 8:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072524;
      break;
    case 9:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072500;
      break;
    case 10:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_1000724DC;
      break;
    case 11:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_1000724B8;
      break;
    case 12:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072494;
      break;
    case 13:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072470;
      break;
    case 14:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_10007244C;
      break;
    case 15:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072428;
      break;
    case 16:
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_100072404;
      *(v6 + 24) = v5;
      v2 = sub_100072D00;
      break;
    case 17:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_1000723E0;
      break;
    case 18:
      v19 = swift_allocObject();
      *(v19 + 16) = v1;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_1000723BC;
      *(v20 + 24) = v19;
      v2 = sub_100072D00;
      break;
    case 19:
      v21 = swift_allocObject();
      *(v21 + 16) = v1;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_100072398;
      *(v22 + 24) = v21;
      v2 = sub_100072D00;
      break;
    case 20:
      v15 = swift_allocObject();
      *(v15 + 16) = v1;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_100072374;
      *(v16 + 24) = v15;
      v2 = sub_100072D00;
      break;
    case 21:
      v17 = swift_allocObject();
      *(v17 + 16) = v1;
      v18 = swift_allocObject();
      *(v18 + 16) = sub_100072350;
      *(v18 + 24) = v17;
      v2 = sub_100072D00;
      break;
    case 22:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_10007232C;
      break;
    case 23:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072308;
      break;
    case 24:
      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1000722E4;
      *(v10 + 24) = v9;
      v2 = sub_100072D00;
      break;
    case 25:
      v7 = swift_allocObject();
      *(v7 + 16) = v1;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_1000722C0;
      *(v8 + 24) = v7;
      v2 = sub_100072D00;
      break;
    case 26:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072250;
      break;
    case 27:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_10007222C;
      break;
    case 28:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072208;
      break;
    case 29:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_1000721E4;
      break;
    case 30:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_1000721AC;
      break;
    case 31:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072174;
      break;
    case 32:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072138;
      break;
    case 33:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_1000720FC;
      break;
    case 34:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_1000720C0;
      break;
    case 35:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_10007209C;
      break;
    case 36:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072060;
      break;
    case 37:
      v3 = swift_allocObject();
      *(v3 + 16) = v1;
      v4 = swift_allocObject();
      *(v4 + 16) = sub_100072274;
      *(v4 + 24) = v3;
      v2 = sub_100072298;
      break;
    default:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_10007267C;
      break;
  }

  v23 = v2;
  v24 = v1;
  return v23;
}

uint64_t sub_100072028()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100072298()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000725FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000726A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10006E63C;

  return sub_10004B648(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10007276C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000727BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10006E63C;

  return sub_10004B904(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100072888(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10006E63C;

  return sub_10004E114(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_100072960(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10006E63C;

  return sub_10004E114(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_100072A38(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10006BDE0;

  return sub_10004F444(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_100072B10()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100072B60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10006E63C;

  return sub_10004E114(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t AdaptiveTabBarSection.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F72672E656D6F68;
  }

  if (a1 == 1)
  {
    return 0x69726F6765746163;
  }

  return 0x736D6F6F72;
}

uint64_t sub_100072D60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x69726F6765746163;
  v4 = 0xEA00000000007365;
  v5 = 0xE500000000000000;
  if (v2 == 1)
  {
    v5 = 0xEA00000000007365;
  }

  else
  {
    v3 = 0x736D6F6F72;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6F72672E656D6F68;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000007075;
  }

  v8 = 0x69726F6765746163;
  if (*a2 != 1)
  {
    v8 = 0x736D6F6F72;
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F72672E656D6F68;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000007075;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100072E58()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100072EFC()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100072F8C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10007302C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7HomeApp21AdaptiveTabBarSectionO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10007305C(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007075;
  v3 = *v1;
  v4 = 0xEA00000000007365;
  v5 = 0x69726F6765746163;
  if (v3 != 1)
  {
    v5 = 0x736D6F6F72;
    v4 = 0xE500000000000000;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F72672E656D6F68;
  }

  if (!v6)
  {
    v2 = v4;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_1000730C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F72672E656D6F68 && a2 == 0xEA00000000007075;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_6;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v6 == a2)
  {

    goto LABEL_6;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
LABEL_6:

    return 0;
  }

  if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D6F6F72 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t _s7HomeApp21AdaptiveTabBarSectionO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000C4AB8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100073294()
{
  result = qword_1000DA5F0;
  if (!qword_1000DA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA5F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdaptiveTabBarSection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AdaptiveTabBarSection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100073438(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_100073510(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for OSSignpostError();
  v113 = *(v8 - 8);
  v114 = v8;
  v9 = *(v113 + 64);
  __chkstk_darwin(v8);
  v112 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignpostID();
  v118 = *(v11 - 8);
  v12 = *(v118 + 64);
  v13 = __chkstk_darwin(v11);
  v116 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v110 - v16;
  __chkstk_darwin(v15);
  v19 = &v110 - v18;
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_10006AF58(v20, qword_1000DB870);
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v115 = v21;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v25, v26);
  v119 = v24;
  v117 = v11;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v111 = v4;
    aBlock[0] = v30;
    *v28 = 136316162;
    *(v28 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, aBlock);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_10006B744(0xD00000000000001FLL, 0x800000010009B1D0, aBlock);
    *(v28 + 22) = 2112;
    *(v28 + 24) = v22;
    *(v28 + 32) = 2112;
    *(v28 + 34) = v23;
    *v29 = v22;
    v29[1] = v23;
    *(v28 + 42) = 2112;
    *(v28 + 44) = v24;
    v29[2] = v24;
    v31 = v22;
    v32 = v23;
    v33 = v24;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s-%s scene: %@, session: %@, connectionOptions: %@", v28, 0x34u);
    sub_1000578B4(&qword_1000D9C70, &qword_1000936A0);
    swift_arrayDestroy();
    v11 = v117;

    swift_arrayDestroy();
    v4 = v111;
  }

  if (qword_1000D97D8 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for OSSignposter();
  sub_10006AF58(v34, qword_1000DB888);
  static OSSignpostID.exclusive.getter();
  v35 = OSSignposter.logHandle.getter();
  v36 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, v36, v38, "HOSceneDelegateConnectingSession", "", v37, 2u);
  }

  v39 = v118;
  (*(v118 + 16))(v17, v19, v11);
  v40 = type metadata accessor for OSSignpostIntervalState();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v45 = *(v39 + 8);
  v44 = v39 + 8;
  v43 = v45;
  v45(v19, v11);
  v46 = [objc_allocWithZone(NAFuture) init];
  v47 = *&v4[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_applicationActiveFuture];
  *&v4[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_applicationActiveFuture] = v46;

  [objc_opt_self() addViewControllersToRegistry];
  objc_opt_self();
  v48 = swift_dynamicCastObjCClass();
  if (v48)
  {
    v49 = v48;
    v115 = v43;
    v118 = v44;
    v50 = objc_allocWithZone(UIWindow);
    v111 = v22;
    v51 = [v50 initWithWindowScene:v49];
    v52 = OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_window;
    v53 = *&v4[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_window];
    *&v4[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_window] = v51;
    v54 = v51;

    [v54 makeKeyAndVisible];
    v55 = *&v4[v52];
    if (v55)
    {
      v56 = objc_opt_self();
      v57 = v55;
      v58 = [v56 hf_keyColor];
      [v57 setTintColor:v58];
    }

    sub_1000752D0();
    v110 = OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_navigator;
    v59 = *&v4[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_navigator];
    if (v59)
    {
      v60 = objc_allocWithZone(HOAppNavigationURLHandler);
      v61 = v59;
      v62 = [v60 initWithNavigator:v61];
      v63 = OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_URLHandler;
      v64 = *&v4[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_URLHandler];
      *&v4[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_URLHandler] = v62;

      v65 = [objc_opt_self() sharedInstance];
      [v65 setPresentationHandler:*&v4[v63]];

      v66 = [objc_opt_self() sharedInstance];
      [v66 setApplicationURLHandler:*&v4[v63]];
    }

    v67 = [objc_opt_self() sharedApplication];
    v68 = [objc_allocWithZone(HOHomeScreenQuickActionController) initWithApplication:v67];

    v69 = OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_homeScreenQuickActionController;
    v70 = *&v4[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_homeScreenQuickActionController];
    *&v4[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_homeScreenQuickActionController] = v68;

    v71 = [v119 URLContexts];
    sub_10005B9DC(0, &qword_1000DA830, UIOpenURLContext_ptr);
    sub_100057D7C(&qword_1000DA6C0, &qword_1000DA830, UIOpenURLContext_ptr);
    v72 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v72 & 0xC000000000000001) != 0)
    {
      v73 = __CocoaSet.count.getter();
    }

    else
    {
      v73 = *(v72 + 16);
    }

    v80 = v119;
    if (v73)
    {
      v81 = [v119 URLContexts];
      v82 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100075C64(v82);
    }

    v83 = [v80 userActivities];
    sub_10005B9DC(0, &qword_1000DA6C8, NSUserActivity_ptr);
    sub_100057D7C(&qword_1000DA6D0, &qword_1000DA6C8, NSUserActivity_ptr);
    v84 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v84 & 0xC000000000000001) != 0)
    {
      v85 = __CocoaSet.count.getter();
    }

    else
    {
      v85 = *(v84 + 16);
    }

    if (v85)
    {
      v86 = [v119 userActivities];
      v87 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v88 = sub_1000773D0(v87);

      if (v88)
      {
        sub_10007607C(v88);
      }
    }

    v89 = [v119 shortcutItem];
    v90 = v117;
    if (v89)
    {
      v91 = v89;
      v92 = *&v4[v69];
      if (v92)
      {
        v93 = *&v4[v110];
        v94 = v92;
        v95 = [v94 performActionForShortcutItem:v91 navigator:v93];
        if (!v95)
        {
          __break(1u);
          return;
        }

        v96 = v95;
        aBlock[4] = sub_100074494;
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100073438;
        aBlock[3] = &unk_1000C77C0;
        v97 = _Block_copy(aBlock);

        v98 = [v96 addCompletionBlock:v97];

        _Block_release(v97);
        v91 = v96;
      }
    }

    v99 = [objc_opt_self() defaultCenter];
    v100 = String._bridgeToObjectiveC()();
    [v99 addObserver:v4 selector:"navigateToEnergyCategoryWithNotification:" name:v100 object:0];

    v101 = OSSignposter.logHandle.getter();
    v102 = v116;
    OSSignpostIntervalState.signpostID.getter();
    v103 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      v104 = v112;
      checkForErrorAndConsumeState(state:)();

      v106 = v113;
      v105 = v114;
      if ((*(v113 + 88))(v104, v114) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v107 = "[Error] Interval already ended";
      }

      else
      {
        (*(v106 + 8))(v104, v105);
        v107 = "";
      }

      v108 = swift_slowAlloc();
      *v108 = 0;
      v109 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v101, v103, v109, "HOSceneDelegateConnectingSession", v107, v108, 2u);
    }

    else
    {
    }

    v115(v102, v90);
  }

  else
  {
    v74 = v22;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v77 = 136315650;
      *(v77 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, aBlock);
      *(v77 + 12) = 2080;
      *(v77 + 14) = sub_10006B744(0xD00000000000001FLL, 0x800000010009B1D0, aBlock);
      *(v77 + 22) = 2112;
      *(v77 + 24) = v74;
      *v78 = v74;
      v79 = v74;
      _os_log_impl(&_mh_execute_header, v75, v76, "%s-%s Failed to cast %@ as a UIWindowScene. Aborting scene session connection.", v77, 0x20u);
      sub_1000706C8(v78);

      swift_arrayDestroy();
    }
  }
}

void sub_1000742BC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a4 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  (*(v7 + 8))(v10, v6);
}

void sub_100074494()
{
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10006AF58(v0, qword_1000DB870);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, &v4);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_10006B744(0xD000000000000032, 0x800000010009B230, &v4);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s-%s Performing action for shortcutItem", v2, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_10007461C(uint64_t a1, uint64_t a2, void (*a3)(BOOL))
{
  a3(a2 == 0);
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10006AF58(v3, qword_1000DB870);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, &v7);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_10006B744(0xD000000000000032, 0x800000010009B230, &v7);
    _os_log_impl(&_mh_execute_header, oslog, v4, "%s-%s Performing action for shortcutItem", v5, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_100074924(void *a1)
{
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10006AF58(v3, qword_1000DB870);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v7 = 136315650;
    *(v7 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, v16);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10006B744(0xD000000000000018, 0x800000010009B180, v16);
    *(v7 + 22) = 2112;
    *(v7 + 24) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s-%s: for %@", v7, 0x20u);
    sub_1000706C8(v8);

    swift_arrayDestroy();
  }

  v10 = [objc_opt_self() sharedInstance];
  [v10 executionEnvironmentDidBecomeActive];

  [*(v1 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_applicationActiveFuture) finishWithNoResult];
  sub_1000766B4();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Requesting notification authorization.", v13, 2u);
  }

  v14 = [objc_opt_self() currentNotificationCenter];
  v16[4] = sub_100074C68;
  v16[5] = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100074E90;
  v16[3] = &unk_1000C7798;
  v15 = _Block_copy(v16);
  [v14 requestAuthorizationWithOptions:55 completionHandler:v15];
  _Block_release(v15);
}

void sub_100074C68(char a1, uint64_t a2)
{
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10006AF58(v4, qword_1000DB870);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Notification authorization granted %{BOOL}d", v7, 8u);
  }

  if (a2)
  {
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = sub_10006B744(v12, v13, &v15);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error in notification authorization: %s", v10, 0xCu);
      sub_1000578FC(v11);
    }

    else
    {
    }
  }
}

void sub_100074E90(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100074F70(void *a1)
{
  v2 = v1;
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10006AF58(v4, qword_1000DB870);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, &v15);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10006B744(0xD000000000000019, 0x800000010009B140, &v15);
    *(v8 + 22) = 2112;
    *(v8 + 24) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s-%s: for %@", v8, 0x20u);
    sub_1000706C8(v9);

    swift_arrayDestroy();
  }

  v11 = [objc_opt_self() sharedInstance];
  [v11 executionEnvironmentWillResignActive];

  v12 = [objc_allocWithZone(NAFuture) init];
  v13 = *(v2 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_applicationActiveFuture);
  *(v2 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_applicationActiveFuture) = v12;

  return _objc_release_x1();
}

void sub_1000752D0()
{
  v1 = v0;
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10006AF58(v2, qword_1000DB870);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, v19);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_10006B744(0xD000000000000020, 0x800000010009B110, v19);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s-%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v6 = [objc_allocWithZone(type metadata accessor for AdaptiveTabBarController()) init];
  v7 = _s7HomeApp24AdaptiveTabBarControllerC18dashboardNavigatorSo011HUDashboardH0_pSgvg_0();
  v8 = OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_navigator;
  v9 = *(v1 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_navigator);
  *(v1 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_navigator) = v7;

  v10 = *(v1 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_tabBarController);
  *(v1 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_tabBarController) = v6;
  v18 = v6;

  v11 = *(v1 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_window);
  if (v11)
  {
    [v11 setRootViewController:v18];
  }

  v12 = [objc_opt_self() sharedApplication];
  v13 = [v12 delegate];

  if (!v13)
  {
LABEL_11:

    return;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = [v14 menuToolbarManager];
    swift_unknownObjectRelease();
    if (v15)
    {
      [v15 setAppNavigator:*(v1 + v8)];
      v16 = OBJC_IVAR___HOAdaptiveTabBarController_menuToolbarManager;
      swift_beginAccess();
      v17 = *&v18[v16];
      *&v18[v16] = v15;

      return;
    }

    goto LABEL_11;
  }

  swift_unknownObjectRelease();
}

void sub_1000755F4(void *a1)
{
  v2 = v1;
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10006AF58(v4, qword_1000DB870);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, v22);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10006B744(0xD000000000000027, 0x800000010009B0E0, v22);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s-%s received onboarding notification", v7, 0x16u);
    swift_arrayDestroy();
  }

  v8 = [a1 userInfo];
  if (!v8)
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  v22[0] = 0;
  static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  v10 = v22[0];
  if (!v22[0])
  {
LABEL_18:
    __break(1u);
    return;
  }

  if (*(v10 + 16) && (v11 = sub_10007C3F0(0x656472616F626E6FLL, 0xED0000656D6F4864), (v12 & 1) != 0))
  {
    sub_10005A46C(*(v10 + 56) + 32 * v11, v22);

    sub_10005B9DC(0, &qword_1000D9F98, HMHome_ptr);
    if (swift_dynamicCast())
    {
      v13 = [v21 hf_isHomeEnergyHomeEmpty];
      v14 = *(v2 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_navigator);
      if (v13)
      {
        v15 = v14;
        v16 = [v15 showHome:v21];
      }

      else if (v14)
      {
        v17 = objc_opt_self();
        v18 = v14;
        v19 = [v17 energyAccessoryTypeGroup];
        v20 = [v18 showAccessoryTypeGroup:v19 forHome:v21 animated:1];
      }

      else
      {
      }
    }
  }

  else
  {
  }
}

id sub_100075998()
{
  *&v0[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_tabBarController] = 0;
  *&v0[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_navigator] = 0;
  *&v0[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_URLHandler] = 0;
  *&v0[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_homeScreenQuickActionController] = 0;
  *&v0[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_applicationActiveFuture] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HOSceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100075A38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HOSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100075B1C()
{
  v0 = type metadata accessor for Logger();
  sub_10006E590(v0, qword_1000DB870);
  sub_10006AF58(v0, qword_1000DB870);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100075BAC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for OSSignposter();
  sub_10006E590(v2, qword_1000DB888);
  sub_10006AF58(v2, qword_1000DB888);
  type metadata accessor for DataModel();
  static DataModel.modelLogger.getter();
  return OSSignposter.init(logger:)();
}

void sub_100075C64(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([objc_opt_self() isAMac] & 1) == 0)
  {
    v8 = *(v1 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_URLHandler);
    if (v8)
    {
      v30 = v8;
      v9 = sub_1000773BC(a1);
      if (v9)
      {
        v10 = v9;
        v29 = v1;
        if (qword_1000D97D0 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        sub_10006AF58(v11, qword_1000DB870);
        v12 = v10;
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          aBlock[0] = swift_slowAlloc();
          *v15 = 136315650;
          *(v15 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, aBlock);
          *(v15 + 12) = 2080;
          *(v15 + 14) = sub_10006B744(0xD000000000000019, 0x800000010009B290, aBlock);
          *(v15 + 22) = 2080;
          v16 = [v12 URL];
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1000769F4();
          v17 = dispatch thunk of CustomStringConvertible.description.getter();
          v19 = v18;
          (*(v4 + 8))(v7, v3);
          v20 = sub_10006B744(v17, v19, aBlock);

          *(v15 + 24) = v20;
          _os_log_impl(&_mh_execute_header, v13, v14, "%s-%s Opening URL: %s", v15, 0x20u);
          swift_arrayDestroy();
        }

        v21 = *(v29 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_applicationActiveFuture);
        if (v21)
        {
          v22 = swift_allocObject();
          *(v22 + 16) = v30;
          *(v22 + 24) = v12;
          aBlock[4] = sub_1000769EC;
          aBlock[5] = v22;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10004AD98;
          aBlock[3] = &unk_1000C7810;
          v23 = _Block_copy(aBlock);
          v24 = v30;
          v25 = v12;
          v26 = v21;

          v27 = [v26 addCompletionBlock:v23];

          _Block_release(v23);
        }

        else
        {
        }
      }

      else
      {
        v28 = v30;
      }
    }
  }
}

void sub_10007607C(void *a1)
{
  v3 = [a1 interaction];
  if (v3)
  {
    v13 = v3;
    v4 = objc_opt_self();
    v5 = [v13 intent];
    [v4 handleIntent:v5 withNavigator:*(v1 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_navigator)];

    if (qword_1000D97D0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10006AF58(v6, qword_1000DB870);
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v10 = 136315650;
      *(v10 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, &v14);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_10006B744(0xD000000000000012, 0x800000010009B210, &v14);
      *(v10 + 22) = 2112;
      *(v10 + 24) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s-%s Continuing userActivity: (%@", v10, 0x20u);
      sub_1000706C8(v11);

      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1000762EC(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *(a2 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_homeScreenQuickActionController);
  if (v7)
  {
    v8 = *(a2 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_navigator);
    _Block_copy(a3);
    v9 = v7;
    v10 = [v9 performActionForShortcutItem:a1 navigator:v8];
    if (v10)
    {
      v11 = v10;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1000770B8;
      *(v12 + 24) = v6;
      v15[4] = sub_100077108;
      v15[5] = v12;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 1107296256;
      v15[2] = sub_100073438;
      v15[3] = &unk_1000C7888;
      v13 = _Block_copy(v15);

      v14 = [v11 addCompletionBlock:v13];
      _Block_release(v13);
    }

    else
    {
      _Block_release(a3);
      __break(1u);
    }
  }

  else
  {
    _Block_copy(a3);
    a3[2](a3, 0);
  }
}

void sub_1000764D8(void *a1)
{
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10006AF58(v2, qword_1000DB870);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v5 = 136315650;
    *(v5 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, &v9);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_10006B744(0xD000000000000016, 0x800000010009B2F0, &v9);
    *(v5 + 22) = 2112;
    *(v5 + 24) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "%s-%s: for %@", v5, 0x20u);
    sub_1000706C8(v6);

    swift_arrayDestroy();
  }
}

void sub_1000766B4()
{
  v0 = [objc_opt_self() sharedDispatcher];
  v1 = [v0 homeManager];

  if (v1)
  {
    v2 = [v1 homes];

    sub_10005B9DC(0, &qword_1000D9F98, HMHome_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v3 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_14:
      if (qword_1000D97D0 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_4:
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    [v6 hf_clearCachedWalletKeyDeviceStateForCurrentDevice];

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  swift_once();
LABEL_15:
  v9 = type metadata accessor for Logger();
  sub_10006AF58(v9, qword_1000DB870);

  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    sub_10005B9DC(0, &qword_1000D9F98, HMHome_ptr);
    v13 = Array.description.getter();
    v15 = v14;

    v16 = sub_10006B744(v13, v15, &v18);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, oslog, v10, "Clearing cached wallet key device states for homes %s", v11, 0xCu);
    sub_1000578FC(v12);
  }

  else
  {
  }
}

uint64_t sub_100076994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000769AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000769F4()
{
  result = qword_1000DA6D8;
  if (!qword_1000DA6D8)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA6D8);
  }

  return result;
}

void sub_100076A4C(void *a1)
{
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10006AF58(v2, qword_1000DB870);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136315650;
    *(v6 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, &v12);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_10006B744(0xD00000000000001CLL, 0x800000010009B2D0, &v12);
    *(v6 + 22) = 2112;
    *(v6 + 24) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s-%s: for %@", v6, 0x20u);
    sub_1000706C8(v7);

    swift_arrayDestroy();
  }

  v9 = [objc_opt_self() sharedManager];
  [v9 enableNotificationsForSelectedHomeWithReason:HOSceneDelegateNotificationsEnabledReasonForeground];

  v10 = [objc_opt_self() sharedInstance];
  [v10 executionEnvironmentWillEnterForeground];

  v11 = [objc_opt_self() sharedDispatcher];
  [v11 updateHomeSensingState];
}

uint64_t sub_100076CD0(unint64_t a1)
{
  if (qword_1000D97D0 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_10006AF58(v2, qword_1000DB870);
    v3 = a1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v6 = 136315650;
      *(v6 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, &v21);
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_10006B744(0xD00000000000001BLL, 0x800000010009B2B0, &v21);
      *(v6 + 22) = 2112;
      *(v6 + 24) = v3;
      *v7 = v3;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s-%s: for %@", v6, 0x20u);
      sub_1000706C8(v7);

      swift_arrayDestroy();
    }

    v9 = [objc_opt_self() sharedInstance];
    [v9 executionEnvironmentDidEnterBackground];

    v10 = [objc_opt_self() sharedManager];
    [v10 disableNotificationsForSelectedHomeWithReason:HOSceneDelegateNotificationsEnabledReasonBackground];

    v11 = [objc_opt_self() sharedDispatcher];
    v12 = [v11 homeManager];

    if (!v12)
    {
      break;
    }

    v13 = [v12 homes];

    sub_10005B9DC(0, &qword_1000D9F98, HMHome_ptr);
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (a1 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
      if (!v14)
      {
LABEL_19:

        break;
      }
    }

    else
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    v15 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v19 = [v16 hf_characteristicValueManager];
      [v19 cancelInFlightReadRequests];

      ++v15;
      if (v18 == v14)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
  }

  return +[HOWidgetUpdater updateAllWidgetsThatHaveTimelines]_0();
}

uint64_t sub_100077080()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000770D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100077128()
{
  sub_10007718C();
  result = OS_os_log.init(subsystem:category:)();
  qword_1000DB8A0 = result;
  return result;
}

unint64_t sub_10007718C()
{
  result = qword_1000D9D80;
  if (!qword_1000D9D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D9D80);
  }

  return result;
}

void *sub_1000771F4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v11 = _swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v6)
  {
    return v11;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_10005A46C(i, v10);
    sub_10005B9DC(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v8 = v11[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v6)
    {
      return v11;
    }
  }

  return 0;
}