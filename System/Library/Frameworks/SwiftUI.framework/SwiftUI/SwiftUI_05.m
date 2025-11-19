id AppSceneDelegate.init()()
{
  *&v0[OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window] = 0;
  v1 = &v0[OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID];
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = -1;
  v2 = &v0[OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace];
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 2;
  *&v0[OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_lastVersion] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneBridge] = 0;
  v0[OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_scenePhase] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneDelegateBox] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneStorageValues] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_presentationDataType] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_rawPresentationDataValue] = xmmword_18CD77CA0;
  v3 = &v0[OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_presentationDataValue];
  *(v3 + 4) = 0;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *&v0[OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_connectionOptions] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AppSceneDelegate();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t AppSceneDelegate.responds(to:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneDelegateBox);
  if (v3)
  {
    v4 = *(*v3 + 80);

    v6 = v4(v5);

    if (v6)
    {
      v7 = swift_dynamicCastObjCProtocolConditional();
      if (v7)
      {
        LODWORD(v3) = [v7 respondsToSelector_];
      }

      else
      {
        LODWORD(v3) = 0;
      }
    }

    else
    {
      LODWORD(v3) = 0;
    }
  }

  type metadata accessor for AppSceneDelegate();
  return ([swift_getObjCClassFromMetadata() instancesRespondToSelector_] | v3) & 1;
}

Swift::Void __swiftcall AppSceneDelegate.scene(_:willConnectTo:options:)(UIScene *_, UISceneSession willConnectTo, UISceneConnectionOptions options)
{
  isa = options.super.isa;
  v382 = _;
  v378 = type metadata accessor for DispatchWorkItemFlags();
  v386 = *(v378 - 8);
  MEMORY[0x1EEE9AC00](v378);
  v377 = &v360 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v360 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v383 = type metadata accessor for DispatchTime();
  v390 = *(v383 - 8);
  MEMORY[0x1EEE9AC00](v383);
  v387 = &v360 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v360 - v11;
  type metadata accessor for WeakBox<UISceneConnectionOptions>?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v360 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v374 = &v360 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v370 = &v360 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v375 = (&v360 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v373 = (&v360 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v372 = (&v360 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v376 = &v360 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v371 = (&v360 - v29);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v360 - v32;
  MEMORY[0x18D00ABE0](v31);
  static Log.scenes.getter();
  v34 = type metadata accessor for Logger();
  v35 = *(v34 - 8);
  v380 = *(v35 + 48);
  v381 = v35 + 48;
  v36 = v380(v33, 1, v34);
  v391 = willConnectTo.super.isa;
  v384 = v8;
  v385 = v6;
  if (v36 == 1)
  {
    outlined destroy of PPTTestHost?(v33, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
    v37 = v392;
  }

  else
  {
    v388 = v12;
    v389 = v5;
    v38 = v34;
    v39 = willConnectTo.super.isa;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();

    v42 = os_log_type_enabled(v40, v41);
    v37 = v392;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v369 = v35;
      v44 = v43;
      v45 = v37;
      v46 = v15;
      v47 = swift_slowAlloc();
      *v44 = 138543362;
      *(v44 + 4) = v39;
      *v47 = v39;
      v48 = v39;
      _os_log_impl(&dword_18BD4A000, v40, v41, "Received scene connection to session: %{public}@", v44, 0xCu);
      outlined destroy of OpenURLContext(v47, type metadata accessor for NSObject?);
      v49 = v47;
      v15 = v46;
      v37 = v45;
      MEMORY[0x18D0110E0](v49, -1, -1);
      v50 = v44;
      v35 = v369;
      MEMORY[0x18D0110E0](v50, -1, -1);
    }

    v34 = v38;
    (*(v35 + 8))(v33, v38);
    v12 = v388;
    v5 = v389;
  }

  v51 = OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window;
  if (*(v37 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window))
  {
    goto LABEL_182;
  }

  objc_opt_self();
  v368 = swift_dynamicCastObjCClass();
  if (!v368)
  {
    goto LABEL_182;
  }

  v364 = v51;
  v366 = v15;
  v52 = static AppGraph.shared;
  v382 = v382;
  v53 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
  v367 = v34;
  v388 = v12;
  if (!v52)
  {
    v54 = v5;
    v55 = [(objc_class *)v391 configuration];
    v56 = [v55 delegateClass];

    if (v56)
    {
      ObjCClassMetadata = swift_getObjCClassMetadata();
      v58 = swift_conformsToProtocol2();
      if (v58)
      {
        if (ObjCClassMetadata)
        {
          v365 = v58;
          v59 = v371;
          static Log.openScene.getter();
          if (v380(v59, 1, v34) == 1)
          {
            outlined destroy of PPTTestHost?(v59, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
          }

          else
          {
            v60 = Logger.logObject.getter();
            v61 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              LODWORD(v363) = v61;
              v63 = v62;
              v362 = swift_slowAlloc();
              *&v404 = v362;
              *v63 = 136315138;
              v64 = _typeName(_:qualified:)();
              v66 = v35;
              v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v404);
              v53 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;

              v361 = v63;
              *(v63 + 4) = v67;
              v35 = v66;
              _os_log_impl(&dword_18BD4A000, v60, v363, "Registering bridged scene delegate %s and connecting the graph", v63, 0xCu);
              v68 = v362;
              __swift_destroy_boxed_opaque_existential_1(v362);
              MEMORY[0x18D0110E0](v68, -1, -1);
              MEMORY[0x18D0110E0](v361, -1, -1);
            }

            v34 = v367;
            (*(v35 + 8))(v59, v367);
          }

          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          BridgedSceneCoordinator.register<A>(_:)(ObjCClassMetadata, ObjCClassMetadata, v365);
          swift_endAccess();
        }
      }
    }

    v52 = static AppGraph.shared;
    v5 = v54;
    v37 = v392;
    if (!static AppGraph.shared)
    {
      v107 = v382;
LABEL_181:

LABEL_182:
      static Update.end()();
      return;
    }
  }

  type metadata accessor for ViewGraphHost();

  if (static ViewGraphHost.isDefaultEnvironmentConfigured.getter())
  {
    static ViewGraphHost.defaultEnvironment.getter();
    v414 = v404;
    GraphHost.setEnvironment(_:)();
  }

  lazy protocol witness table accessor for type OpenSceneConnectionOptionDefinition and conformance OpenSceneConnectionOptionDefinition();
  UISceneConnectionOptions.subscript.getter();
  v414 = v404;
  v415 = v405;
  v416 = v406;
  v417 = v407;
  v365 = v52;
  v369 = v35;
  v389 = v5;
  if (BYTE8(v406) == 0xFF)
  {
    v69 = [(objc_class *)v391 configuration];
    v70 = [v69 delegateClass];

    if (v70 && (v71 = swift_getObjCClassMetadata(), (v72 = swift_conformsToProtocol2()) != 0) && v71)
    {
      v73 = v72;
      v74 = v372;
      static Log.openScene.getter();
      if (v380(v74, 1, v34) == 1)
      {
        outlined destroy of PPTTestHost?(v74, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
      }

      else
      {
        v128 = Logger.logObject.getter();
        v129 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          *&v404 = v131;
          *v130 = 136315138;
          v132 = _typeName(_:qualified:)();
          v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v133, &v404);

          *(v130 + 4) = v134;
          _os_log_impl(&dword_18BD4A000, v128, v129, "Using namespace from UISceneConfiguration's delegateClass: %s", v130, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v131);
          v135 = v131;
          v74 = v372;
          MEMORY[0x18D0110E0](v135, -1, -1);
          v136 = v130;
          v35 = v369;
          MEMORY[0x18D0110E0](v136, -1, -1);
        }

        v34 = v367;
        (*(v35 + 8))(v74, v367);
      }

      v137 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v71, v73, v75, v76);
      v37 = v392;
      v138 = v392 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace;
      v139 = *(v392 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace);
      v122 = *(v392 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace + 8);
      *v138 = v137;
      *(v138 + 1) = 0;
      v123 = v138[16];
      v138[16] = 1;
      v121 = v139;
    }

    else
    {
      v81 = v391;
      v82 = [(objc_class *)v391 configuration];
      v83 = [v82 _bridgingID];

      if (!v83)
      {
        v37 = v392;
        v108 = v392 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace;
        v109 = *(v392 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace);
        v110 = *(v392 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace + 8);
        *v108 = 0;
        *(v108 + 1) = 0;
        v111 = v108[16];
        v108[16] = 2;
        outlined consume of SceneList.Namespace(v109, v110, v111);
        goto LABEL_58;
      }

      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v85;

      v87 = v373;
      static Log.openScene.getter();
      if (v380(v87, 1, v34) == 1)
      {
        outlined destroy of PPTTestHost?(v87, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
      }

      else
      {

        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          *&v404 = v115;
          *v114 = 136315138;
          *(v114 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v86, &v404);
          _os_log_impl(&dword_18BD4A000, v112, v113, "Using namespace from UISceneConfiguration's bridgingID: %s", v114, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v115);
          v116 = v115;
          v53 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
          MEMORY[0x18D0110E0](v116, -1, -1);
          v117 = v114;
          v87 = v373;
          MEMORY[0x18D0110E0](v117, -1, -1);
        }

        (*(v35 + 8))(v87, v34);
      }

      v37 = v392;

      v118 = _ss17FixedWidthIntegerPsEyxSgSScfCSu_Tt1g5(v84, v86);
      if (v119)
      {
        v120 = v37 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace;
        v121 = *(v37 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace);
        v122 = *(v37 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace + 8);
        *v120 = v84;
        *(v120 + 8) = v86;
        v123 = *(v120 + 16);
        *(v120 + 16) = 0;
      }

      else
      {
        v124 = v118;

        if (v124 == -1)
        {
          v125 = 0;
        }

        else
        {
          v125 = v124;
        }

        if (v124 == -1)
        {
          v126 = 2;
        }

        else
        {
          v126 = 1;
        }

        v127 = v37 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace;
        v121 = *(v37 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace);
        v122 = *(v37 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace + 8);
        *v127 = v125;
        *(v127 + 8) = 0;
        v123 = *(v127 + 16);
        *(v127 + 16) = v126;
      }
    }

    outlined consume of SceneList.Namespace(v121, v122, v123);
    v81 = v391;
  }

  else
  {
    v77 = v414;
    v78 = v415;
    v79 = v376;
    static Log.openScene.getter();
    v80 = v380(v79, 1, v34);
    if (v80 == 1)
    {
      outlined destroy of PPTTestHost?(v79, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
    }

    else
    {
      v88 = *(&v415 + 1);
      v89 = v416;
      v91 = *(&v417 + 1);
      v90 = v417;
      v92 = BYTE8(v416);
      outlined copy of SceneList.Namespace(v414, *(&v414 + 1), v415);
      outlined copy of SceneID(v88, v89, v92 & 1);
      v93 = v90;
      v94 = v376;
      outlined copy of Data?(v93, v91);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.debug.getter();
      outlined destroy of RootEnvironmentModifier?(&v414, &lazy cache variable for type metadata for OpenScenePayload?, &type metadata for OpenScenePayload);
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *&v404 = v98;
        *v97 = 136315138;
        outlined copy of SceneList.Namespace(v77, *(&v77 + 1), v78);
        v99 = SceneList.Namespace.description.getter(v77, *(&v77 + 1), v78);
        v101 = v100;
        outlined consume of SceneList.Namespace(v77, *(&v77 + 1), v78);
        v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, &v404);
        v94 = v376;

        *(v97 + 4) = v102;
        _os_log_impl(&dword_18BD4A000, v95, v96, "Using namespace from connection options: %s", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v98);
        MEMORY[0x18D0110E0](v98, -1, -1);
        MEMORY[0x18D0110E0](v97, -1, -1);
      }

      v34 = v367;
      (*(v369 + 8))(v94, v367);
      v37 = v392;
    }

    v103 = v37 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace;
    v104 = *(v37 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace);
    v105 = *(v37 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace + 8);
    *v103 = v77;
    v106 = *(v103 + 16);
    *(v103 + 16) = v78;
    outlined copy of SceneList.Namespace(v77, *(&v77 + 1), v78);
    outlined consume of SceneList.Namespace(v104, v105, v106);
    outlined destroy of RootEnvironmentModifier?(&v414, &lazy cache variable for type metadata for OpenScenePayload?, &type metadata for OpenScenePayload);
    v81 = v391;
    v53 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
  }

LABEL_58:
  v140 = [v81 v53[300]];
  v141 = [v140 delegateClass];

  v142 = MEMORY[0x1E69E7CA0];
  if (!v141 || (v143 = swift_getObjCClassMetadata(), v143 != type metadata accessor for AppSceneDelegate()))
  {
    v144 = [v81 v53[300]];
    v145 = [v144 delegateClass];

    if (v145)
    {
      v146 = [v81 v53[300]];
      v147 = v375;
      static Log.scenes.getter();
      if (v380(v147, 1, v34) == 1)
      {
        outlined destroy of PPTTestHost?(v147, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
        v148 = v146;
        if (v146)
        {
          goto LABEL_88;
        }
      }

      else
      {
        v149 = v81;
        v150 = Logger.logObject.getter();
        v151 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v150, v151))
        {
          LODWORD(v372) = v151;
          v152 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          v376 = swift_slowAlloc();
          *&v404 = v376;
          *v152 = 136446722;
          v154 = [(objc_class *)v149 persistentIdentifier];
          v155 = v53;
          v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v158 = v157;

          v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v156, v158, &v404);

          *(v152 + 4) = v159;
          *(v152 + 12) = 2114;
          *(v152 + 14) = v146;
          v373 = v153;
          v153->isa = v146;
          *(v152 + 22) = 2082;
          v160 = v146;
          v161 = [v149 v155 + 3704];
          v162 = [v161 delegateClass];

          if (v162)
          {
            v163 = swift_getObjCClassMetadata();
          }

          else
          {
            v163 = 0;
          }

          v34 = v367;
          v37 = v392;
          v164 = v372;
          *&v396 = v163;
          type metadata accessor for WeakBox<UISceneConnectionOptions>?(0, &lazy cache variable for type metadata for Swift.AnyObject.Type?, type metadata accessor for Swift.AnyObject.Type, MEMORY[0x1E69E6720]);
          v165 = String.init<A>(describing:)();
          v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v166, &v404);

          *(v152 + 24) = v167;
          _os_log_impl(&dword_18BD4A000, v150, v164, "Scene session %{public}s is using scene bridging with configuration: %{public}@ with delegateClass: %{public}s", v152, 0x20u);
          v168 = v373;
          outlined destroy of OpenURLContext(v373, type metadata accessor for NSObject?);
          MEMORY[0x18D0110E0](v168, -1, -1);
          v142 = MEMORY[0x1E69E7CA0];
          v169 = v376;
          swift_arrayDestroy();
          MEMORY[0x18D0110E0](v169, -1, -1);
          MEMORY[0x18D0110E0](v152, -1, -1);

          v81 = v391;
          v147 = v375;
        }

        else
        {

          v37 = v392;
        }

        (*(v369 + 8))(v147, v34);
        v148 = v146;
        if (v146)
        {
          goto LABEL_88;
        }
      }
    }
  }

  if (!static AppDelegate.shared || (v170 = *(static AppDelegate.shared + OBJC_IVAR____TtC7SwiftUI11AppDelegate_fallbackDelegate)) == 0)
  {
    v363 = 0;
    goto LABEL_102;
  }

  v171 = static AppDelegate.shared;
  if (![swift_unknownObjectRetain() respondsToSelector_] || (objc_msgSend(v170, sel_respondsToSelector_, sel_application_configurationForConnectingSceneSession_options_) & 1) == 0)
  {

    swift_unknownObjectRelease();
    v363 = 0;
    goto LABEL_102;
  }

  v172 = objc_opt_self();
  swift_unknownObjectRetain();
  v173 = [v172 sharedApplication];
  v174 = [v170 application:v173 configurationForConnectingSceneSession:v81 options:isa];

  swift_unknownObjectRelease();
  if (!v174)
  {
    swift_unknownObjectRelease();

    v363 = 0;
    goto LABEL_102;
  }

  v363 = v174;
  v146 = v174;
  v175 = v370;
  static Log.scenes.getter();
  if (v380(v175, 1, v34) == 1)
  {

    swift_unknownObjectRelease();
    outlined destroy of PPTTestHost?(v175, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
  }

  else
  {
    v176 = v81;
    swift_unknownObjectRetain();
    v146 = v146;
    v177 = Logger.logObject.getter();
    v178 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v177, v178))
    {
      LODWORD(v373) = v178;
      v179 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v376 = swift_slowAlloc();
      *&v404 = v376;
      *v179 = 136315906;
      v181 = [(objc_class *)v176 persistentIdentifier];
      v182 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v184 = v183;

      v185 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182, v184, &v404);

      *(v179 + 4) = v185;
      *(v179 + 12) = 2082;
      *&v396 = v170;
      type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIApplicationDelegate);
      swift_unknownObjectRetain();
      v186 = String.init<A>(describing:)();
      v188 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v187, &v404);

      *(v179 + 14) = v188;
      *(v179 + 22) = 2114;
      *(v179 + 24) = v146;
      v375 = v180;
      *v180 = v363;
      *(v179 + 32) = 2082;
      v189 = [(UIScene *)v146 delegateClass];
      if (v189)
      {
        v189 = swift_getObjCClassMetadata();
      }

      v142 = MEMORY[0x1E69E7CA0];
      v190 = v373;
      *&v396 = v189;
      type metadata accessor for WeakBox<UISceneConnectionOptions>?(0, &lazy cache variable for type metadata for Swift.AnyObject.Type?, type metadata accessor for Swift.AnyObject.Type, MEMORY[0x1E69E6720]);
      v191 = String.init<A>(describing:)();
      v193 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v191, v192, &v404);

      *(v179 + 34) = v193;
      _os_log_impl(&dword_18BD4A000, v177, v190, "Scene session %s is asking fallback app delegate: %{public}s for custom scene configuration: %{public}@ with delegateClass: %{public}s", v179, 0x2Au);
      v194 = v375;
      outlined destroy of OpenURLContext(v375, type metadata accessor for NSObject?);
      MEMORY[0x18D0110E0](v194, -1, -1);
      v195 = v376;
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v195, -1, -1);
      MEMORY[0x18D0110E0](v179, -1, -1);

      swift_unknownObjectRelease();
      v81 = v391;
      v37 = v392;
      v175 = v370;
    }

    else
    {

      swift_unknownObjectRelease();
      v37 = v392;
    }

    v34 = v367;
    (*(v369 + 8))(v175, v367);
  }

  v148 = v363;
LABEL_88:
  v363 = v148;
  v196 = v148;
  if ([(UIScene *)v146 delegateClass])
  {
    v197 = v81;
    v198 = swift_getObjCClassMetadata();
    v199 = [(UIScene *)v146 sceneDelegate];
    v200 = swift_conformsToProtocol2();
    if (v200 && v198)
    {
      v201 = v200;
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      BridgedSceneCoordinator.register<A>(_:)(v198, v198, v201);
      swift_endAccess();
    }

    if (swift_conformsToProtocol2() && v198)
    {
      project #1 <A>(_:) in AppSceneDelegate.scene(_:willConnectTo:options:)(v198, v37);
    }

    else
    {
      lazy protocol witness table accessor for type ObservableObjectDescriptor and conformance ObservableObjectDescriptor();
      static ProtocolDescriptor.conformance(of:)();
      if (v404)
      {
        *(&v405 + 1) = swift_getObjectType();
        *&v406 = 0;
        *&v404 = v199;
        swift_unknownObjectRetain();
        MakeObservableObjectDelegateBox.visit<A>(type:)();
        *(v37 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneDelegateBox) = v406;

        outlined destroy of MakeObservableObjectDelegateBox(&v404);
      }

      else
      {
        type metadata accessor for FallbackDelegateBox<NSObject>();
        v202 = swift_allocObject();
        *(v202 + 16) = v199;
        *(v202 + 24) = 1;
        *(v37 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneDelegateBox) = v202;
        swift_unknownObjectRetain();
      }
    }

    v203 = v382;
    v204 = [(UIScene *)v382 delegate];
    [(UIScene *)v203 setDelegate:0];
    [(UIScene *)v203 setDelegate:v204];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v81 = v197;
    v142 = MEMORY[0x1E69E7CA0];
  }

  else
  {
  }

LABEL_102:
  v412 = 0uLL;
  v413 = -1;
  v205 = [(objc_class *)v81 stateRestorationActivity];
  if (!v205)
  {
LABEL_112:
    v209 = MEMORY[0x1E69E7CC8];
    goto LABEL_116;
  }

  v206 = v205;
  v207 = [v205 userInfo];
  if (!v207)
  {

    goto LABEL_112;
  }

  v208 = v207;
  v209 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v394 = 0xD000000000000019;
  *(&v394 + 1) = 0x800000018CD3D380;
  AnyHashable.init<A>(_:)();
  if (*(v209 + 16) && (v210 = specialized __RawDictionaryStorage.find<A>(_:)(&v404), (v211 & 1) != 0))
  {
    outlined init with copy of Any(*(v209 + 56) + 32 * v210, &v396);
  }

  else
  {
    v396 = 0u;
    v397 = 0u;
  }

  v212 = v374;
  outlined destroy of AnyHashable(&v404);
  if (*(&v397 + 1))
  {
    if (swift_dynamicCast())
    {
      v412 = v394;
      v413 = 0;
    }
  }

  else
  {
    outlined destroy of RootEnvironmentModifier?(&v396, &lazy cache variable for type metadata for Any?, v142 + 8);
  }

  static Log.scenes.getter();
  if (v380(v212, 1, v34) != 1)
  {
    v257 = v391;

    v258 = Logger.logObject.getter();
    v259 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v258, v259))
    {
      v260 = swift_slowAlloc();
      v376 = swift_slowAlloc();
      *&v404 = v376;
      *v260 = 136446467;
      v261 = [(objc_class *)v257 persistentIdentifier];
      LODWORD(v375) = v259;
      v262 = v261;
      v263 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v373 = v258;
      v265 = v264;

      v266 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v263, v265, &v404);

      *(v260 + 4) = v266;
      *(v260 + 12) = 2081;
      v267 = Dictionary.description.getter();
      v269 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v267, v268, &v404);

      *(v260 + 14) = v269;
      v270 = v373;
      _os_log_impl(&dword_18BD4A000, v373, v375, "Scene session %{public}s has restoration data: %{private}s", v260, 0x16u);
      v271 = v376;
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v271, -1, -1);
      MEMORY[0x18D0110E0](v260, -1, -1);
    }

    else
    {
    }

    v213 = v387;
    (*(v369 + 8))(v374, v367);
    goto LABEL_117;
  }

  outlined destroy of PPTTestHost?(v212, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
LABEL_116:
  v213 = v387;
LABEL_117:
  type metadata accessor for SceneStorageValues();
  v214 = swift_allocObject();
  v214[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI18SceneStorageValuesC5Entry33_1700ED20D4EA891B02973E899ABDB425LLCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v214[6] = 0;
  swift_unknownObjectWeakInit();
  v214[2] = v209;
  v214[4] = *(v209 + 16);
  *(v37 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneStorageValues) = v214;

  type metadata accessor for SceneBridge(0);
  swift_allocObject();
  v215 = v382;
  v216 = SceneBridge.init()();
  v217 = v368;
  swift_unknownObjectWeakAssign();
  v362 = v215;

  *(v37 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneBridge) = v216;
  v376 = v216;

  v218 = *(v37 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_connectionOptions);
  v219 = isa;
  *(v37 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_connectionOptions) = isa;
  v220 = v219;

  v221 = [v220 URLContexts];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIOpenURLContext);
  lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type UIOpenURLContext and conformance NSObject, &lazy cache variable for type metadata for UIOpenURLContext);
  v222 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v411 = v222;
  MEMORY[0x1EEE9AC00](v223);
  *(&v360 - 8) = v37;
  *(&v360 - 7) = &v412;
  *(&v360 - 6) = v209;
  *(&v360 - 5) = v220;
  v224 = v391;
  *(&v360 - 4) = &v411;
  *(&v360 - 3) = v224;
  *(&v360 - 2) = v217;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIWindow);
  static Update.ensure<A>(_:)();
  v382 = v404;
  AppSceneDelegate.sceneItem()(&v404);
  v225 = [(objc_class *)v224 userInfo];
  if (v225)
  {
    v226 = MEMORY[0x1E69E6158];
    v227 = MEMORY[0x1E69E7CA0];
    v228 = v225;
    v229 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *&v401[0] = v229;
    v230 = AppSceneDelegate.hashableSceneID()();
    if (v231)
    {
      *(&v397 + 1) = v226;
      *&v396 = v230;
      *(&v396 + 1) = v231;
      outlined init with take of Any(&v396, &v394);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v400 = v229;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v394, 0xD000000000000019, 0x800000018CD3D380, isUniquelyReferenced_nonNull_native);
      v233 = v400;
      *&v401[0] = v400;
    }

    else
    {
      specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000019, 0x800000018CD3D380, &v396);
      outlined destroy of RootEnvironmentModifier?(&v396, &lazy cache variable for type metadata for Any?, v227 + 8);
      v233 = *&v401[0];
    }

    v234 = MEMORY[0x1E69E7CC0];
    v224 = v391;
    if (v233)
    {
      v235.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v235.super.isa = 0;
    }

    v213 = v387;
    [v224 &selRef_container];
  }

  else
  {
    [(objc_class *)v224 setUserInfo:0];
    v234 = MEMORY[0x1E69E7CC0];
  }

  v236 = [(objc_class *)v224 userInfo];
  if (v236)
  {
    v237 = MEMORY[0x1E69E6158];
    v238 = MEMORY[0x1E69E7CA0];
    v239 = v236;
    v240 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *&v401[0] = v240;
    if (*(v37 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_presentationDataType))
    {
      makeStableTypeData(_:)();
      v394 = v396;
      v395 = v397;
      v241 = StrongHash.description.getter();
      *(&v397 + 1) = v237;
      *&v396 = v241;
      *(&v396 + 1) = v242;
      outlined init with take of Any(&v396, &v394);
      v243 = swift_isUniquelyReferenced_nonNull_native();
      v400 = v240;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v394, 0xD00000000000001BLL, 0x800000018CD41390, v243);
      v244 = v400;
      *&v401[0] = v400;
    }

    else
    {
      specialized Dictionary._Variant.removeValue(forKey:)(0xD00000000000001BLL, 0x800000018CD41390, &v396);
      outlined destroy of RootEnvironmentModifier?(&v396, &lazy cache variable for type metadata for Any?, v238 + 8);
      v244 = *&v401[0];
    }

    v245 = v391;
    v234 = MEMORY[0x1E69E7CC0];
    if (v244)
    {
      v246.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v246.super.isa = 0;
    }

    v213 = v387;
    [v245 &selRef_container];
  }

  else
  {
    [v224 &selRef_container];
  }

  v247 = *(v37 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_rawPresentationDataValue + 8);
  if (v247 >> 60 == 15)
  {

LABEL_153:
    v276 = v390;
    if (v408 != 2)
    {
      goto LABEL_160;
    }

    v277 = [(objc_class *)v391 stateRestorationActivity];
    if (!v277)
    {
      goto LABEL_160;
    }

    v278 = v277;
    v279 = [v277 activityType];

    v280 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v282 = v281;

    if (v280 == 0xD000000000000022 && 0x800000018CD41340 == v282)
    {

      v283 = v391;
    }

    else
    {
      v284 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v283 = v391;
      if ((v284 & 1) == 0)
      {
LABEL_160:
        v285 = v382;
        SceneBridge.rootViewController.setter([(UIScene *)v382 rootViewController]);
        v286 = *(&v364->super.super.isa + v37);
        *(&v364->super.super.isa + v37) = v285;
        v287 = v285;

        v364 = v287;
        [(UIScene *)v287 makeKeyAndVisible];
        v288 = *(v409 + 16);
        if (v288)
        {
          v289 = v410;
          v290 = v409 + 40;
          do
          {
            specialized _do #1 <A>(_:) in handleConnectionOptionsCallbacks #1 (_:) in AppSceneDelegate.scene(_:willConnectTo:options:)(*(v290 - 8), v220, v289, *(v290 - 8));
            v290 += 16;
            --v288;
          }

          while (v288);
        }

        isa = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
        v291 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        v292 = v388;
        + infix(_:_:)();
        v293 = *(v276 + 8);
        v390 = v276 + 8;
        v382 = v293;
        (v293)(v213, v383);
        v294 = swift_allocObject();
        *(v294 + 16) = v376;
        *(v294 + 24) = v220;
        v398 = partial apply for closure #2 in AppSceneDelegate.scene(_:willConnectTo:options:);
        v399 = v294;
        *&v396 = MEMORY[0x1E69E9820];
        *(&v396 + 1) = 1107296256;
        *&v397 = thunk for @escaping @callee_guaranteed () -> ();
        *(&v397 + 1) = &block_descriptor_70;
        v295 = _Block_copy(&v396);

        v370 = v220;

        v296 = v384;
        static DispatchQoS.unspecified.getter();
        *&v396 = v234;
        v297 = lazy protocol witness table accessor for type SceneBridge and conformance SceneBridge(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
        type metadata accessor for WeakBox<UISceneConnectionOptions>?(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        v299 = v298;
        v300 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v301 = v377;
        v373 = v300;
        v374 = v299;
        v302 = v378;
        v375 = v297;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x18D00DA00](v292, v296, v301, v295);
        _Block_release(v295);

        v303 = v386 + 8;
        v372 = *(v386 + 8);
        v372(v301, v302);
        v304 = v385 + 8;
        v371 = *(v385 + 8);
        v371(v296, v389);
        v305 = v383;
        (v382)(v292, v383);
        v306 = [v370 userActivities];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserActivity);
        lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type NSUserActivity and conformance NSObject, &lazy cache variable for type metadata for NSUserActivity);
        v307 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v308 = specialized Collection.first.getter(v307);
        v309 = v305;

        if (v308)
        {
          v385 = static OS_dispatch_queue.main.getter();
          v310 = v387;
          static DispatchTime.now()();
          v311 = v388;
          + infix(_:_:)();
          (v382)(v310, v305);
          v312 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v313 = swift_allocObject();
          *(v313 + 16) = v308;
          *(v313 + 24) = v312;
          v398 = partial apply for closure #3 in AppSceneDelegate.scene(_:willConnectTo:options:);
          v399 = v313;
          *&v396 = MEMORY[0x1E69E9820];
          *(&v396 + 1) = 1107296256;
          *&v397 = thunk for @escaping @callee_guaranteed () -> ();
          *(&v397 + 1) = &block_descriptor_92_0;
          v314 = _Block_copy(&v396);
          v315 = v308;

          v316 = v384;
          static DispatchQoS.unspecified.getter();
          *&v396 = MEMORY[0x1E69E7CC0];
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v317 = v385;
          MEMORY[0x18D00DA00](v311, v316, v301, v314);
          v318 = v314;
          v309 = v383;
          _Block_release(v318);

          v372(v301, v302);
          v371(v316, v389);
          (v382)(v311, v309);
        }

        v319 = v382;
        v385 = v304;
        v361 = v411;
        v320 = specialized Collection.first.getter(v411);
        v321 = v303;
        v322 = v392;
        v386 = v321;
        if (v320)
        {
          v323 = v320;
          v360 = static OS_dispatch_queue.main.getter();
          v324 = v387;
          static DispatchTime.now()();
          + infix(_:_:)();
          (v319)(v324, v309);
          v325 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v326 = swift_allocObject();
          *(v326 + 16) = v323;
          *(v326 + 24) = v325;
          v398 = partial apply for closure #4 in AppSceneDelegate.scene(_:willConnectTo:options:);
          v399 = v326;
          *&v396 = MEMORY[0x1E69E9820];
          *(&v396 + 1) = 1107296256;
          *&v397 = thunk for @escaping @callee_guaranteed () -> ();
          *(&v397 + 1) = &block_descriptor_85_0;
          v327 = _Block_copy(&v396);
          v328 = v323;

          v329 = v384;
          static DispatchQoS.unspecified.getter();
          *&v396 = MEMORY[0x1E69E7CC0];
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v330 = v388;
          v331 = v360;
          MEMORY[0x18D00DA00](v388, v329, v301, v327);
          _Block_release(v327);

          v372(v301, v302);
          v371(v329, v389);
          (v382)(v330, v383);
        }

        v332 = v365;
        GraphHost.addPreference<A>(_:)();
        specialized AppGraph.addObserver(_:)(v322, v332);
        v333 = *(v322 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneDelegateBox);
        v334 = v362;
        if (v333)
        {
          v335 = *(*v333 + 80);

          v337 = v335(v336);
          v302 = v378;
          v338 = v337;

          if (v338)
          {
            v403 = &unk_1F00661F8;
            v339 = swift_dynamicCastObjCProtocolConditional();
            if (v339)
            {
              v340 = v339;
              if ([v339 respondsToSelector_])
              {
                [v340 scene:v334 willConnectToSession:v391 options:v370];
              }
            }
          }
        }

        v341 = static OS_dispatch_queue.main.getter();
        v342 = swift_allocObject();
        *(v342 + 16) = v368;
        v398 = partial apply for closure #5 in AppSceneDelegate.scene(_:willConnectTo:options:);
        v399 = v342;
        *&v396 = MEMORY[0x1E69E9820];
        *(&v396 + 1) = 1107296256;
        *&v397 = thunk for @escaping @callee_guaranteed () -> ();
        *(&v397 + 1) = &block_descriptor_76;
        v343 = _Block_copy(&v396);
        v344 = v334;

        v345 = v384;
        static DispatchQoS.unspecified.getter();
        *&v396 = MEMORY[0x1E69E7CC0];
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x18D00DA20](0, v345, v301, v343);
        _Block_release(v343);

        v372(v301, v302);
        v371(v345, v389);
        if ((static AppSceneDelegate.hasConnectedFirstScene & 1) == 0)
        {
          static AppSceneDelegate.hasConnectedFirstScene = 1;
        }

        v346 = v366;
        static Log.scenes.getter();
        if (v380(v346, 1, v367) == 1)
        {

          outlined destroy of SceneList.Item(&v404);
          outlined destroy of PPTTestHost?(v346, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
        }

        else
        {
          v347 = v391;
          v348 = v344;
          v349 = Logger.logObject.getter();
          v350 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v349, v350))
          {
            v351 = swift_slowAlloc();
            v352 = swift_slowAlloc();
            v353 = swift_slowAlloc();
            *&v396 = v353;
            *v351 = 136315394;
            v354 = [(objc_class *)v347 persistentIdentifier];
            v355 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v357 = v356;

            v358 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v355, v357, &v396);

            *(v351 + 4) = v358;
            *(v351 + 12) = 2112;
            *(v351 + 14) = v348;
            *v352 = v348;
            v359 = v348;
            _os_log_impl(&dword_18BD4A000, v349, v350, "Finished willConnectTo for session %s with scene %@", v351, 0x16u);
            outlined destroy of OpenURLContext(v352, type metadata accessor for NSObject?);
            MEMORY[0x18D0110E0](v352, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v353);
            MEMORY[0x18D0110E0](v353, -1, -1);
            MEMORY[0x18D0110E0](v351, -1, -1);

            outlined destroy of SceneList.Item(&v404);
            (*(v369 + 8))(v366, v367);
          }

          else
          {

            outlined destroy of SceneList.Item(&v404);
            (*(v369 + 8))(v346, v367);
          }
        }

        outlined consume of SceneID?(v412, *(&v412 + 1), v413);
        v107 = v363;
        goto LABEL_181;
      }
    }

    [(objc_class *)v283 setStateRestorationActivity:0];
    goto LABEL_160;
  }

  v248 = v37;
  v249 = *(v37 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_rawPresentationDataValue);
  v250 = OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_presentationDataValue;
  swift_beginAccess();
  _ss11AnyHashableVSgWOcTm_2(v248 + v250, &v396, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  if (!*(&v397 + 1))
  {

    outlined destroy of RootEnvironmentModifier?(&v396, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
    v37 = v392;
    goto LABEL_153;
  }

  v401[0] = v396;
  v401[1] = v397;
  v402 = v398;
  outlined copy of Data._Representation(v249, v247);
  v251 = v391;
  v252 = [(objc_class *)v391 userInfo];
  if (v252)
  {
    v253 = v252;
    v254 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *(&v397 + 1) = MEMORY[0x1E6969080];
    *&v396 = v249;
    *(&v396 + 1) = v247;
    outlined init with take of Any(&v396, &v394);
    outlined copy of Data._Representation(v249, v247);
    v255 = swift_isUniquelyReferenced_nonNull_native();
    v393 = v254;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v394, 0xD00000000000001CLL, 0x800000018CD41370, v255);
    if (v393)
    {
      v256.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v256.super.isa = 0;
    }

    [v391 &selRef_container];
  }

  else
  {
    [v251 &selRef_container];
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v272 = AppSceneDelegate.hashableSceneID()();
  if (v273)
  {
    v274 = v272;
    v275 = v273;

    outlined init with copy of AnyHashable(v401, &v396);
    AnyHashable.init<A>(_:)();
    *&v394 = v274;
    *(&v394 + 1) = v275;
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(&v394, &v396);
    outlined destroy of SceneRequestCache.Item(&v394);
    outlined destroy of RootEnvironmentModifier?(&v396, &lazy cache variable for type metadata for SceneRequestCache.Item?, &type metadata for SceneRequestCache.Item);
    swift_endAccess();

    outlined consume of Data?(v249, v247);
    outlined destroy of AnyHashable(v401);
    v37 = v392;
    v213 = v387;
    goto LABEL_153;
  }

  __break(1u);
}

uint64_t sub_18BD843E8()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BD84420()
{

  return swift_deallocObject();
}

uint64_t sub_18BD84460()
{

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type UIScene and conformance NSObject(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSObject(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  return specialized Collection.first.getter(a1, &lazy cache variable for type metadata for NSUserActivity);
}

{
  return specialized Collection.first.getter(a1, &lazy cache variable for type metadata for UIOpenURLContext);
}

{
  return specialized Collection.first.getter(a1, &lazy cache variable for type metadata for UIScene);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI18SceneStorageValuesC5Entry33_1700ED20D4EA891B02973E899ABDB425LLCTt0g5Tf4g_nTm(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a2(0);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t initializeWithCopy for WindowSceneList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v7;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 24);

  if (v11 < 0xFFFFFFFF)
  {
    v15 = *(v10 + 16);
    *v9 = *v10;
    *(v9 + 16) = v15;
  }

  else
  {
    v12 = *v10;
    v13 = *(v10 + 8);
    v14 = *(v10 + 16);
    outlined copy of Text.Storage(*v10, v13, v14);
    *v9 = v12;
    *(v9 + 8) = v13;
    *(v9 + 16) = v14;
    *(v9 + 24) = *(v10 + 24);
  }

  v16 = ((v9 + 39) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v10 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (*v19 < 0xFFFFFFFFuLL)
  {
    *v18 = *v19;
  }

  else
  {
    v20 = *(v19 + 8);
    *v18 = *v19;
    *(v18 + 8) = v20;
  }

  v21 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v22 = ((a1 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((a2 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v22[1] = v23[1];
  *((v22 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v23 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t destroy for WindowSceneList(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = ((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8) + 15;

  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  if (*(v5 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v5, *(v5 + 8), *(v5 + 16));
  }

  if (*((((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
  {
  }
}

uint64_t WindowSceneList.MakeList.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WindowSceneConfiguration();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_Say7SwiftUI28AnyConnectionOptionActionBoxCGTt0g5Tf4g_nTm(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v4 = static _DictionaryStorage.allocate(capacity:)();
  v14 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32));
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v4;
  }

  v7 = (a1 + 48);
  v8 = v2 - 1;
  while (1)
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v4[6] + 8 * result) = v14;
    *(v4[7] + 8 * result) = *(&v14 + 1);
    v9 = v4[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v4[2] = v11;
    if (!v8)
    {
      goto LABEL_8;
    }

    v12 = *v7++;
    v14 = v12;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    --v8;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t initializeWithCopy for WindowSceneConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = v6 + a1;
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 24);

  if (v11 < 0xFFFFFFFF)
  {
    v15 = *(v10 + 16);
    *v9 = *v10;
    *(v9 + 16) = v15;
  }

  else
  {
    v12 = *v10;
    v13 = *(v10 + 8);
    v14 = *(v10 + 16);
    outlined copy of Text.Storage(*v10, v13, v14);
    *v9 = v12;
    *(v9 + 8) = v13;
    *(v9 + 16) = v14;
    *(v9 + 24) = *(v10 + 24);
  }

  v16 = ((v9 + 39) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v10 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (*v19 < 0xFFFFFFFFuLL)
  {
    *v18 = *v19;
  }

  else
  {
    v20 = *(v19 + 8);
    *v18 = *v19;
    *(v18 + 8) = v20;
  }

  return a1;
}

uint64_t outlined init with copy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WindowSceneConfiguration<WindowGroupConfigurationAttributes>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for WindowSceneConfiguration<WindowGroupConfigurationAttributes>()
{
  if (!lazy cache variable for type metadata for WindowSceneConfiguration<WindowGroupConfigurationAttributes>)
  {
    v0 = type metadata accessor for WindowSceneConfiguration();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WindowSceneConfiguration<WindowGroupConfigurationAttributes>);
    }
  }
}

uint64_t protocol witness for WindowSceneConfigurationAttributes.sceneListValue(_:) in conformance WindowGroupConfigurationAttributes@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v4 = a1[3];
  v8 = a1[2];
  v3 = v8;
  v9 = v4;
  *a2 = v7[0];
  *(a2 + 16) = v2;
  *(a2 + 32) = v3;
  *(a2 + 48) = v4;
  *(a2 + 128) = 0;
  return outlined init with copy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(v7, &v6);
}

uint64_t destroy for WindowSceneConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = ((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8) + 15;

  v6 = v4 & 0xFFFFFFFFFFFFFFF8;
  if (*(v6 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v6, *(v6 + 8), *(v6 + 16));
  }

  if (*((((v6 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t outlined copy of SceneID(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t initializeWithCopy for SceneList.Item.Value(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 128);
  if (v4 >= 9)
  {
    v4 = *a2 + 9;
  }

  if (v4 <= 3)
  {
    if (v4 <= 1)
    {
      if (v4)
      {
        *a1 = *a2;
        v28 = (a1 + 8);
        v29 = a2[4];

        if (v29)
        {
          v30 = a2[1];
          v31 = a2[2];
          v32 = *(a2 + 24);
          outlined copy of Text.Storage(v30, v31, v32);
          *(a1 + 8) = v30;
          *(a1 + 16) = v31;
          *(a1 + 24) = v32;
          *(a1 + 32) = a2[4];
        }

        else
        {
          v55 = *(a2 + 3);
          *v28 = *(a2 + 1);
          *(a1 + 24) = v55;
        }

        v56 = a2[6];
        *(a1 + 40) = a2[5];
        if (v56)
        {
          v57 = a2[7];
          *(a1 + 48) = v56;
          *(a1 + 56) = v57;
        }

        else
        {
          *(a1 + 48) = *(a2 + 3);
        }

        *(a1 + 128) = 1;
      }

      else
      {
        *a1 = *a2;
        v12 = (a1 + 8);
        v13 = a2[4];

        if (v13)
        {
          v14 = a2[1];
          v15 = a2[2];
          v16 = *(a2 + 24);
          outlined copy of Text.Storage(v14, v15, v16);
          *(a1 + 8) = v14;
          *(a1 + 16) = v15;
          *(a1 + 24) = v16;
          *(a1 + 32) = a2[4];
        }

        else
        {
          v47 = *(a2 + 3);
          *v12 = *(a2 + 1);
          *(a1 + 24) = v47;
        }

        v48 = a2[6];
        *(a1 + 40) = a2[5];
        if (v48)
        {
          v49 = a2[7];
          *(a1 + 48) = v48;
          *(a1 + 56) = v49;
        }

        else
        {
          *(a1 + 48) = *(a2 + 3);
        }

        *(a1 + 128) = 0;
      }

      return a1;
    }

    if (v4 == 2)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 1);
      v17 = a2[6];
      if (v17)
      {
        v18 = a2[7];
        *(a1 + 48) = v17;
        *(a1 + 56) = v18;
        (**(v17 - 8))(a1 + 24, (a2 + 3));
      }

      else
      {
        *(a1 + 24) = *(a2 + 3);
        *(a1 + 40) = *(a2 + 5);
        *(a1 + 56) = a2[7];
      }

      v50 = a2[9];
      *(a1 + 64) = a2[8];
      *(a1 + 72) = v50;
      v51 = a2[11];
      *(a1 + 80) = a2[10];
      *(a1 + 88) = v51;
      v52 = a2[13];
      *(a1 + 96) = a2[12];
      v53 = a2[14];
      v54 = *(a2 + 120);

      outlined copy of SceneID(v52, v53, v54);
      *(a1 + 104) = v52;
      *(a1 + 112) = v53;
      *(a1 + 120) = v54;
      *(a1 + 128) = 2;
      return a1;
    }

    *a1 = *a2;
    v33 = 3;
LABEL_29:
    *(a1 + 128) = v33;
LABEL_30:

    return a1;
  }

  if (v4 <= 5)
  {
    if (v4 == 4)
    {
      v19 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v19;
      *(a1 + 16) = *(a2 + 16);
      v20 = a2[4];
      *(a1 + 24) = a2[3];
      *(a1 + 32) = v20;
      *(a1 + 40) = *(a2 + 20);
      v21 = a2[7];
      *(a1 + 48) = a2[6];
      *(a1 + 56) = v21;
      v22 = *(a2 + 4);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 64) = v22;
      *(a1 + 128) = 4;

LABEL_57:

      return a1;
    }

    v40 = *a2;
    v41 = a2[1];
    v42 = *(a2 + 16);
    outlined copy of SceneID(*a2, v41, v42);
    *a1 = v40;
    *(a1 + 8) = v41;
    *(a1 + 16) = v42;
    v43 = a2[4];
    if (v43 >= 3)
    {
      *(a1 + 24) = a2[3];
      *(a1 + 32) = v43;
    }

    else
    {
      *(a1 + 24) = *(a2 + 3);
    }

    *(a1 + 40) = a2[5];
    v33 = 5;
    goto LABEL_29;
  }

  if (v4 != 6)
  {
    if (v4 == 7)
    {
      v5 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v5;
      *(a1 + 16) = a2[2];
      v7 = a2 + 3;
      v6 = a2[3];

      if (v6)
      {
        v8 = a2[4];
        *(a1 + 24) = v6;
        *(a1 + 32) = v8;

        if (a2[8])
        {
LABEL_9:
          v9 = a2[5];
          v10 = a2[6];
          v11 = *(a2 + 56);
          outlined copy of Text.Storage(v9, v10, v11);
          *(a1 + 40) = v9;
          *(a1 + 48) = v10;
          *(a1 + 56) = v11;
          *(a1 + 64) = a2[8];

LABEL_50:
          v58 = a2[10];
          *(a1 + 72) = a2[9];

          if (v58)
          {
            v59 = a2[11];
            *(a1 + 80) = v58;
            *(a1 + 88) = v59;
          }

          else
          {
            *(a1 + 80) = *(a2 + 5);
          }

          v60 = a2[12];
          if (v60)
          {
            v61 = a2[13];
            *(a1 + 96) = v60;
            *(a1 + 104) = v61;
          }

          else
          {
            *(a1 + 96) = *(a2 + 6);
          }

          v62 = a2[15];
          *(a1 + 112) = a2[14];
          *(a1 + 120) = v62;
          *(a1 + 128) = 7;
          goto LABEL_57;
        }
      }

      else
      {
        *(a1 + 24) = *v7;
        if (a2[8])
        {
          goto LABEL_9;
        }
      }

      *(a1 + 40) = *(a2 + 5);
      *(a1 + 56) = *(a2 + 7);
      goto LABEL_50;
    }

    v34 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v34;
    *(a1 + 16) = *(a2 + 16);
    v35 = a2[3];
    v36 = a2[4];
    v37 = *(a2 + 40);

    outlined copy of Text.Storage(v35, v36, v37);
    *(a1 + 24) = v35;
    *(a1 + 32) = v36;
    *(a1 + 40) = v37;
    v38 = a2[6];
    v39 = a2[7];
    *(a1 + 48) = v38;
    *(a1 + 56) = v39;
    *(a1 + 128) = 8;

    goto LABEL_30;
  }

  *a1 = *a2;
  v23 = (a1 + 8);
  v24 = a2[4];

  if (v24)
  {
    v25 = a2[1];
    v26 = a2[2];
    v27 = *(a2 + 24);
    outlined copy of Text.Storage(v25, v26, v27);
    *(a1 + 8) = v25;
    *(a1 + 16) = v26;
    *(a1 + 24) = v27;
    *(a1 + 32) = a2[4];
  }

  else
  {
    v44 = *(a2 + 3);
    *v23 = *(a2 + 1);
    *(a1 + 24) = v44;
  }

  v45 = a2[6];
  *(a1 + 40) = a2[5];
  if (v45)
  {
    v46 = a2[7];
    *(a1 + 48) = v45;
    *(a1 + 56) = v46;
  }

  else
  {
    *(a1 + 48) = *(a2 + 3);
  }

  *(a1 + 128) = 6;
  return a1;
}

uint64_t WindowSceneList.MakeList.environment.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SceneKeyboardShortcutsKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SceneKeyboardShortcutsKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SceneKeyboardShortcutsKey> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI29_TraitWritingTableRowModifierVyAA08DropOntoC3KeyVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SceneKeyboardShortcutsKey>, &type metadata for EnvironmentValues.SceneKeyboardShortcutsKey, &protocol witness table for EnvironmentValues.SceneKeyboardShortcutsKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SceneKeyboardShortcutsKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t initializeWithCopy for SceneList.Item(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 128);
  if (v4 <= 3)
  {
    if (*(a2 + 128) <= 1u)
    {
      if (*(a2 + 128))
      {
        *a1 = *a2;
        v28 = (a1 + 8);
        v29 = a2[4];

        if (v29)
        {
          v30 = a2[1];
          v31 = a2[2];
          v32 = *(a2 + 24);
          outlined copy of Text.Storage(v30, v31, v32);
          *(a1 + 8) = v30;
          *(a1 + 16) = v31;
          *(a1 + 24) = v32;
          *(a1 + 32) = a2[4];
        }

        else
        {
          v54 = *(a2 + 3);
          *v28 = *(a2 + 1);
          *(a1 + 24) = v54;
        }

        v55 = a2[6];
        *(a1 + 40) = a2[5];
        if (v55)
        {
          v56 = a2[7];
          *(a1 + 48) = v55;
          *(a1 + 56) = v56;
        }

        else
        {
          *(a1 + 48) = *(a2 + 3);
        }

        *(a1 + 128) = 1;
      }

      else
      {
        *a1 = *a2;
        v12 = (a1 + 8);
        v13 = a2[4];

        if (v13)
        {
          v14 = a2[1];
          v15 = a2[2];
          v16 = *(a2 + 24);
          outlined copy of Text.Storage(v14, v15, v16);
          *(a1 + 8) = v14;
          *(a1 + 16) = v15;
          *(a1 + 24) = v16;
          *(a1 + 32) = a2[4];
        }

        else
        {
          v46 = *(a2 + 3);
          *v12 = *(a2 + 1);
          *(a1 + 24) = v46;
        }

        v47 = a2[6];
        *(a1 + 40) = a2[5];
        if (v47)
        {
          v48 = a2[7];
          *(a1 + 48) = v47;
          *(a1 + 56) = v48;
        }

        else
        {
          *(a1 + 48) = *(a2 + 3);
        }

        *(a1 + 128) = 0;
      }

      goto LABEL_56;
    }

    if (v4 == 2)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 1);
      v17 = a2[6];
      if (v17)
      {
        v18 = a2[7];
        *(a1 + 48) = v17;
        *(a1 + 56) = v18;
        (**(v17 - 8))(a1 + 24, (a2 + 3));
      }

      else
      {
        *(a1 + 24) = *(a2 + 3);
        *(a1 + 40) = *(a2 + 5);
        *(a1 + 56) = a2[7];
      }

      v49 = a2[9];
      *(a1 + 64) = a2[8];
      *(a1 + 72) = v49;
      v50 = a2[11];
      *(a1 + 80) = a2[10];
      *(a1 + 88) = v50;
      v51 = a2[13];
      *(a1 + 96) = a2[12];
      v52 = a2[14];
      v53 = *(a2 + 120);

      outlined copy of SceneID(v51, v52, v53);
      *(a1 + 104) = v51;
      *(a1 + 112) = v52;
      *(a1 + 120) = v53;
      *(a1 + 128) = 2;
      goto LABEL_56;
    }

    *a1 = *a2;
    v33 = 3;
LABEL_27:
    *(a1 + 128) = v33;
    goto LABEL_28;
  }

  if (*(a2 + 128) <= 5u)
  {
    if (v4 == 4)
    {
      v19 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v19;
      *(a1 + 16) = *(a2 + 16);
      v20 = a2[4];
      *(a1 + 24) = a2[3];
      *(a1 + 32) = v20;
      *(a1 + 40) = *(a2 + 20);
      v21 = a2[7];
      *(a1 + 48) = a2[6];
      *(a1 + 56) = v21;
      v22 = *(a2 + 4);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 64) = v22;
      *(a1 + 128) = 4;

LABEL_55:

      goto LABEL_56;
    }

    v39 = *a2;
    v40 = a2[1];
    v41 = *(a2 + 16);
    outlined copy of SceneID(*a2, v40, v41);
    *a1 = v39;
    *(a1 + 8) = v40;
    *(a1 + 16) = v41;
    v42 = a2[4];
    if (v42 >= 3)
    {
      *(a1 + 24) = a2[3];
      *(a1 + 32) = v42;
    }

    else
    {
      *(a1 + 24) = *(a2 + 3);
    }

    *(a1 + 40) = a2[5];
    v33 = 5;
    goto LABEL_27;
  }

  if (v4 != 6)
  {
    if (v4 == 7)
    {
      v5 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v5;
      *(a1 + 16) = a2[2];
      v7 = a2 + 3;
      v6 = a2[3];

      if (v6)
      {
        v8 = a2[4];
        *(a1 + 24) = v6;
        *(a1 + 32) = v8;

        if (a2[8])
        {
LABEL_7:
          v9 = a2[5];
          v10 = a2[6];
          v11 = *(a2 + 56);
          outlined copy of Text.Storage(v9, v10, v11);
          *(a1 + 40) = v9;
          *(a1 + 48) = v10;
          *(a1 + 56) = v11;
          *(a1 + 64) = a2[8];

LABEL_48:
          v57 = a2[10];
          *(a1 + 72) = a2[9];

          if (v57)
          {
            v58 = a2[11];
            *(a1 + 80) = v57;
            *(a1 + 88) = v58;
          }

          else
          {
            *(a1 + 80) = *(a2 + 5);
          }

          v59 = a2[12];
          if (v59)
          {
            v60 = a2[13];
            *(a1 + 96) = v59;
            *(a1 + 104) = v60;
          }

          else
          {
            *(a1 + 96) = *(a2 + 6);
          }

          v61 = a2[15];
          *(a1 + 112) = a2[14];
          *(a1 + 120) = v61;
          *(a1 + 128) = 7;
          goto LABEL_55;
        }
      }

      else
      {
        *(a1 + 24) = *v7;
        if (a2[8])
        {
          goto LABEL_7;
        }
      }

      *(a1 + 40) = *(a2 + 5);
      *(a1 + 56) = *(a2 + 7);
      goto LABEL_48;
    }

    v34 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v34;
    *(a1 + 16) = *(a2 + 16);
    v35 = a2[3];
    v36 = a2[4];
    v37 = *(a2 + 40);

    outlined copy of Text.Storage(v35, v36, v37);
    *(a1 + 24) = v35;
    *(a1 + 32) = v36;
    *(a1 + 40) = v37;
    v38 = a2[7];
    *(a1 + 48) = a2[6];
    *(a1 + 56) = v38;
    *(a1 + 128) = 8;

LABEL_28:

    goto LABEL_56;
  }

  *a1 = *a2;
  v23 = (a1 + 8);
  v24 = a2[4];

  if (v24)
  {
    v25 = a2[1];
    v26 = a2[2];
    v27 = *(a2 + 24);
    outlined copy of Text.Storage(v25, v26, v27);
    *(a1 + 8) = v25;
    *(a1 + 16) = v26;
    *(a1 + 24) = v27;
    *(a1 + 32) = a2[4];
  }

  else
  {
    v43 = *(a2 + 3);
    *v23 = *(a2 + 1);
    *(a1 + 24) = v43;
  }

  v44 = a2[6];
  *(a1 + 40) = a2[5];
  if (v44)
  {
    v45 = a2[7];
    *(a1 + 48) = v44;
    *(a1 + 56) = v45;
  }

  else
  {
    *(a1 + 48) = *(a2 + 3);
  }

  *(a1 + 128) = 6;
LABEL_56:
  v62 = a2[17];
  v63 = a2[18];
  v64 = *(a2 + 152);
  outlined copy of SceneID(v62, v63, v64);
  *(a1 + 136) = v62;
  *(a1 + 144) = v63;
  *(a1 + 152) = v64;
  v65 = a2[21];
  *(a1 + 160) = a2[20];
  *(a1 + 168) = v65;
  *(a1 + 176) = a2[22];
  *(a1 + 184) = *(a2 + 184);
  v66 = a2[59];

  if (!v66)
  {
    memcpy((a1 + 192), a2 + 24, 0x120uLL);
    goto LABEL_68;
  }

  v67 = a2[25];
  *(a1 + 192) = a2[24];
  *(a1 + 200) = v67;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = a2[27];
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 248) = *(a2 + 248);
  v68 = a2[35];

  if (!v68)
  {
    v70 = *(a2 + 17);
    *(a1 + 256) = *(a2 + 16);
    *(a1 + 272) = v70;
    *(a1 + 288) = a2[36];
LABEL_63:
    *(a1 + 296) = a2[37];

    goto LABEL_64;
  }

  if (v68 != 1)
  {
    v71 = a2[36];
    *(a1 + 280) = v68;
    *(a1 + 288) = v71;
    (**(v68 - 8))(a1 + 256, (a2 + 32), v68);
    goto LABEL_63;
  }

  v69 = *(a2 + 17);
  *(a1 + 256) = *(a2 + 16);
  *(a1 + 272) = v69;
  *(a1 + 288) = *(a2 + 18);
LABEL_64:
  *(a1 + 304) = a2[38];
  *(a1 + 312) = *(a2 + 312);
  v72 = a2[54];
  if (v72 == 1)
  {
    v73 = *(a2 + 27);
    *(a1 + 416) = *(a2 + 26);
    *(a1 + 432) = v73;
    *(a1 + 448) = *(a2 + 28);
    *(a1 + 464) = *(a2 + 464);
    v74 = *(a2 + 23);
    *(a1 + 352) = *(a2 + 22);
    *(a1 + 368) = v74;
    v75 = *(a2 + 25);
    *(a1 + 384) = *(a2 + 24);
    *(a1 + 400) = v75;
    v76 = *(a2 + 21);
    *(a1 + 320) = *(a2 + 20);
    *(a1 + 336) = v76;
  }

  else
  {
    *(a1 + 320) = a2[40];
    *(a1 + 328) = *(a2 + 328);
    *(a1 + 336) = a2[42];
    *(a1 + 344) = *(a2 + 344);
    *(a1 + 345) = *(a2 + 345);
    *(a1 + 347) = *(a2 + 347);
    *(a1 + 348) = *(a2 + 348);
    v77 = *(a2 + 23);
    *(a1 + 352) = *(a2 + 22);
    *(a1 + 368) = v77;
    *(a1 + 384) = *(a2 + 24);
    *(a1 + 400) = *(a2 + 200);
    v78 = a2[52];
    *(a1 + 408) = a2[51];
    *(a1 + 416) = v78;
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 432) = v72;
    *(a1 + 440) = *(a2 + 55);
    *(a1 + 456) = a2[57];
    *(a1 + 464) = *(a2 + 464);
  }

  *(a1 + 472) = a2[59];

LABEL_68:
  *(a1 + 480) = a2[60];
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 496) = *(a2 + 31);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 536) = *(a2 + 268);
  *(a1 + 520) = *(a2 + 65);
  *(a1 + 538) = *(a2 + 538);
  *(a1 + 544) = a2[68];
  *(a1 + 552) = a2[69];
  *(a1 + 560) = *(a2 + 560);

  return a1;
}

void *initializeBufferWithCopyOfBuffer for ForgroundColorAttributeDefinition(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t destroy for SceneList.Item(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2 <= 3)
  {
    if (*(a1 + 128) > 1u)
    {
      if (v2 != 2)
      {
        if (v2 != 3)
        {
          goto LABEL_33;
        }

        goto LABEL_19;
      }

      if (*(a1 + 48))
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 24);
      }

      outlined consume of SceneID(*(a1 + 104), *(a1 + 112), *(a1 + 120));
      goto LABEL_33;
    }
  }

  else
  {
    if (*(a1 + 128) <= 5u)
    {
      if (v2 != 4)
      {
        if (v2 != 5)
        {
          goto LABEL_33;
        }

        outlined consume of SceneID(*a1, *(a1 + 8), *(a1 + 16));
        if (*(a1 + 32) >= 3uLL)
        {
        }

        goto LABEL_19;
      }

LABEL_32:

      goto LABEL_33;
    }

    if (v2 != 6)
    {
      if (v2 != 7)
      {
        if (v2 != 8)
        {
          goto LABEL_33;
        }

        outlined consume of Text.Storage(*(a1 + 24), *(a1 + 32), *(a1 + 40));

        goto LABEL_19;
      }

      if (*(a1 + 24))
      {
      }

      if (*(a1 + 64))
      {
        outlined consume of Text.Storage(*(a1 + 40), *(a1 + 48), *(a1 + 56));
      }

      if (*(a1 + 80))
      {
      }

      if (*(a1 + 96))
      {
      }

      goto LABEL_32;
    }
  }

  if (*(a1 + 32))
  {
    outlined consume of Text.Storage(*(a1 + 8), *(a1 + 16), *(a1 + 24));
  }

  if (*(a1 + 48))
  {
LABEL_19:
  }

LABEL_33:
  outlined consume of SceneID(*(a1 + 136), *(a1 + 144), *(a1 + 152));

  if (!*(a1 + 472))
  {
    goto LABEL_41;
  }

  v3 = *(a1 + 280);
  if (!v3)
  {
    goto LABEL_37;
  }

  if (v3 != 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 256);
LABEL_37:
  }

  if (*(a1 + 432) != 1)
  {
  }

LABEL_41:
}

uint64_t outlined consume of SceneID(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t destroy for SceneList.Item.Value(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2 >= 9)
  {
    v2 = *a1 + 9;
  }

  if (v2 > 3)
  {
    if (v2 <= 5)
    {
      if (v2 == 4)
      {

LABEL_29:
      }

      outlined consume of SceneID(*a1, *(a1 + 8), *(a1 + 16));
      if (*(a1 + 32) >= 3uLL)
      {
      }

      goto LABEL_37;
    }

    if (v2 != 6)
    {
      if (v2 == 7)
      {

        if (*(a1 + 24))
        {
        }

        if (*(a1 + 64))
        {
          outlined consume of Text.Storage(*(a1 + 40), *(a1 + 48), *(a1 + 56));
        }

        if (*(a1 + 80))
        {
        }

        if (*(a1 + 96))
        {
        }

        goto LABEL_29;
      }

      outlined consume of Text.Storage(*(a1 + 24), *(a1 + 32), *(a1 + 40));

      goto LABEL_37;
    }

LABEL_17:

    if (*(a1 + 32))
    {
      outlined consume of Text.Storage(*(a1 + 8), *(a1 + 16), *(a1 + 24));
    }

    if (!*(a1 + 48))
    {
      return result;
    }

LABEL_37:
  }

  if (v2 <= 1)
  {
    goto LABEL_17;
  }

  if (v2 != 2)
  {
    goto LABEL_37;
  }

  if (*(a1 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 24);
  }

  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  v6 = *(a1 + 120);

  return outlined consume of SceneID(v4, v5, v6);
}

void type metadata accessor for _ContiguousArrayStorage<(SceneList.Namespace, SceneList)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(SceneList.Namespace, SceneList)>)
  {
    type metadata accessor for (SceneList.Namespace, SceneList)();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(SceneList.Namespace, SceneList)>);
    }
  }
}

void type metadata accessor for (SceneList.Namespace, SceneList)()
{
  if (!lazy cache variable for type metadata for (SceneList.Namespace, SceneList))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (SceneList.Namespace, SceneList));
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI9SceneListV9NamespaceO_AETt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<SceneList.Namespace, SceneList>, lazy protocol witness table accessor for type SceneList.Namespace and conformance SceneList.Namespace);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = a1 + 40; ; i += 48)
    {
      v5 = *(i - 8);
      v6 = *i;
      v7 = *(i + 8);
      v8 = *(i + 16);
      v9 = *(i + 24);
      v10 = *(i + 32);
      outlined copy of SceneList.Namespace(v5, *i, v7);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 24 * result;
      *v13 = v5;
      *(v13 + 8) = v6;
      *(v13 + 16) = v7;
      v14 = (v3[7] + 24 * result);
      *v14 = v8;
      v14[1] = v9;
      v14[2] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x18D00F6F0](2);
      v6 = a1;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x18D00F6F0](v6);
  }

  else
  {
    MEMORY[0x18D00F6F0](1);
    String.hash(into:)();
  }

  v7 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, v7);
}

{
  Hasher.init(_seed:)();
  if (a3)
  {
    MEMORY[0x18D00F6F0](a1);
    Hasher._combine(_:)(a2);
  }

  else
  {
    String.hash(into:)();
  }

  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3 & 1, v6);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a3 & 1);
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3 & 1, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    v14 = a3 == 2 && (a2 | a1) == 0;
    do
    {
      v15 = (v12 + 24 * v7);
      v16 = *v15;
      if (*(v15 + 16))
      {
        if (*(v15 + 16) == 1)
        {
          if (a3 == 1 && v16 == a1)
          {
            return v7;
          }
        }

        else if (v14)
        {
          return v7;
        }
      }

      else if (!a3)
      {
        v17 = v16 == a1 && v15[1] == a2;
        if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return v7;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

{
  v5 = v4;
  v6 = v4 + 64;
  v7 = -1 << *(v4 + 32);
  v8 = a4 & ~v7;
  if ((*(v4 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = a3;
    v10 = a2;
    v32 = ~v7;
    v31 = a2;
    do
    {
      v13 = *(v5 + 48) + 24 * v8;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      if (v16)
      {
        if (v9)
        {
          if (v14 == a1 && *(v13 + 8) == v31)
          {
            return v8;
          }

          goto LABEL_7;
        }

        v33 = _typeName(_:qualified:)();
        v35 = v17;
        MEMORY[0x18D00C9B0](45, 0xE100000000000000);
        v18 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v18);

        v19 = v10;
        v20 = v33;
        v21 = v35;

        v22 = a1;
      }

      else
      {
        if ((v9 & 1) == 0)
        {
          v27 = v14 == a1 && v15 == v10;
          if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v8;
          }

          goto LABEL_7;
        }

        outlined copy of SceneID(*v13, *(v13 + 8), 0);
        outlined copy of SceneID(v14, v15, 0);
        v34 = _typeName(_:qualified:)();
        v36 = v23;
        MEMORY[0x18D00C9B0](45, 0xE100000000000000);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v24);

        v22 = v34;
        v19 = v36;
        v20 = v14;
        v21 = v15;
      }

      if (v20 == v22 && v21 == v19)
      {
        outlined consume of SceneID(v14, v15, v16);

        return v8;
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined consume of SceneID(v14, v15, v16);

      v9 = a3;
      v10 = a2;
      if (v26)
      {
        return v8;
      }

LABEL_7:
      v8 = (v8 + 1) & v32;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      if (*(v13 + 16))
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      else if (a3)
      {
        goto LABEL_3;
      }

      v14 = *v13 == a1 && *(v13 + 8) == a2;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return v7;
      }

LABEL_3:
      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

uint64_t SceneBridge.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_Say7SwiftUI28AnyConnectionOptionActionBoxCGTt0g5Tf4g_nTm(MEMORY[0x1E69E7CC0], type metadata accessor for _DictionaryStorage<ObjectIdentifier, [String : PassthroughSubject<Any, Never>]>);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + 40) = -1;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_Say7SwiftUI28AnyConnectionOptionActionBoxCGTt0g5Tf4g_nTm(v1, type metadata accessor for _DictionaryStorage<ObjectIdentifier, [AnyConnectionOptionActionBox]>);
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 64) = -1;
  *(v0 + 72) = 0;
  swift_weakInit();
  v3 = v0 + OBJC_IVAR____TtC7SwiftUI11SceneBridge__preferredActivationConditions;
  type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?)();
  v5 = v4;
  v6 = *(v4 + 48);
  type metadata accessor for Predicate<Pack{String}>();
  v8 = v7;
  v9 = *(*(v7 - 8) + 56);
  v9(v3, 1, 1, v7);
  v9(v3 + v6, 1, 1, v8);
  v10 = v0 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_defaultActivationConditions;
  v11 = *(v5 + 48);
  v9(v0 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_defaultActivationConditions, 1, 1, v8);
  v9(v10 + v11, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_userActivityTrackingInfo) = 0;
  v12 = v0 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_userActivityPreferenceSeed;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v0 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_activationConditionsPreferenceSeed;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = v0 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_initialSceneSizeState;
  *(v14 + 24) = 256;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *v14 = 0;
  v15 = OBJC_IVAR____TtC7SwiftUI11SceneBridge_enqueuedEvents;
  *(v0 + v15) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SayypGTt0g5Tf4g_n(v1);
  swift_unknownObjectWeakAssign();
  return v0;
}

void type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?)()
{
  if (!lazy cache variable for type metadata for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?))
  {
    type metadata accessor for Predicate<Pack{String}>?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?));
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SayypGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, [Any]>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t outlined copy of SceneID?(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of SceneID(result, a2, a3 & 1);
  }

  return result;
}

uint64_t closure #1 in AppSceneDelegate.scene(_:willConnectTo:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X4>, void *a6@<X5>, NSObject *a7@<X6>, char **a8@<X8>)
{
  v15 = *a2;
  v14 = *(a2 + 8);
  v16 = *(a2 + 16);
  outlined copy of SceneID?(*a2, v14, v16);
  v17 = [a6 role];
  v18 = specialized AppSceneDelegate.makeSceneHostWindow(restorationSceneItemID:restorationData:connectionOptions:urlContexts:role:windowScene:delegate:)(v15, v14, v16, a3, a4, a5, v17, a7, a1, a1);

  result = outlined consume of SceneID?(v15, v14, v16);
  *a8 = v18;
  return result;
}

char *specialized AppSceneDelegate.makeSceneHostWindow(restorationSceneItemID:restorationData:connectionOptions:urlContexts:role:windowScene:delegate:)(uint64_t (*a1)(_BYTE *, uint64_t, uint64_t), void *a2, int a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7, NSObject *a8, uint64_t a9, uint64_t a10)
{
  v239 = a8;
  v240 = a7;
  v235 = a2;
  v236 = a6;
  v225 = a4;
  LODWORD(v238) = a3;
  v234 = a1;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v223 = &v219[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for WeakBox<UISceneConnectionOptions>?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v221 = &v219[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v222 = &v219[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v226 = &v219[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v227 = &v219[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v228 = &v219[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v219[-v25];
  v27 = static AppGraph.shared;
  if (!static AppGraph.shared)
  {
    goto LABEL_100;
  }

  v231 = a9;
  v29 = *(a10 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace);
  v28 = *(a10 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace + 8);
  v229 = a10 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace;
  LOBYTE(v30) = *(a10 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace + 16);

  outlined copy of SceneList.Namespace(v29, v28, v30);
  v237 = v27;
  AppGraph.sceneList(namespace:)(v29, v28, v30, v273);
  outlined consume of SceneList.Namespace(v29, v28, v30);
  v31 = v273[0];
  v232 = v273[1];
  v233 = v273[2];

  v32 = v240;
  v240 = a10;
  AppSceneDelegate.findSceneListItem(restorationSceneItemID:restorationData:connectionOptions:urlContexts:role:)(v234, v235, v238, a5, v236, v32, v273);
  static Log.scenes.getter();
  v234 = *(v12 + 48);
  v235 = (v12 + 48);
  v33 = v234(v26, 1, v11);
  v238 = v31;
  v224 = a5;
  if (v33 == 1)
  {
    outlined destroy of PPTTestHost?(v26, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
  }

  else
  {
    v34 = v11;
    outlined init with copy of SceneList.Item(v273, v263);
    outlined init with copy of SceneList.Item(v273, v262);
    v35 = v239;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v230 = v12;
      v40 = v39;
      *&v249[0] = v39;
      *v38 = 136446722;
      v41 = [v35 session];
      v220 = v37;
      v42 = v41;
      v43 = [v41 persistentIdentifier];

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v249);

      *(v38 + 4) = v47;
      *(v38 + 12) = 2082;
      v48 = SceneList.Item.sceneTypeDescription.getter();
      v50 = v49;
      outlined destroy of SceneList.Item(v263);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v249);

      *(v38 + 14) = v51;
      *(v38 + 22) = 2082;
      v31 = v238;
      v52 = SceneList.Item.identifyingDescription.getter();
      v30 = v53;
      outlined destroy of SceneList.Item(v262);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v30, v249);

      *(v38 + 24) = v54;
      _os_log_impl(&dword_18BD4A000, v36, v220, "Scene session %{public}s will use item %{public}s with %{public}s", v38, 0x20u);
      swift_arrayDestroy();
      v55 = v40;
      v12 = v230;
      MEMORY[0x18D0110E0](v55, -1, -1);
      MEMORY[0x18D0110E0](v38, -1, -1);
    }

    else
    {

      outlined destroy of SceneList.Item(v262);
      outlined destroy of SceneList.Item(v263);
    }

    (*(v12 + 8))(v26, v34);
    v11 = v34;
  }

  v56 = v263;
  outlined init with copy of SceneList.Item.Value(v273, &v264);
  if (v272 > 4u)
  {
    if (v272 != 5)
    {
      if (v272 == 6)
      {
        v57 = v264;
        v234 = *(&v265 + 1);
        v235 = v265;
        v230 = v266;
        v58 = v267;
        v59 = [objc_opt_self() sharedApplication];
        v60 = [v59 connectedScenes];

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScene);
        lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type UIScene and conformance NSObject, &lazy cache variable for type metadata for UIScene);
        v61 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        MEMORY[0x1EEE9AC00](v62);
        v217 = v273;
        v63 = specialized Set._Variant.filter(_:)(partial apply for closure #1 in AppSceneDelegate.makeSceneHostWindow(restorationSceneItemID:restorationData:connectionOptions:urlContexts:role:windowScene:delegate:), &v219[-32], v61);
        v64 = v239;
        v65 = specialized Set._Variant.filter(_:)(v63, v64);

        if ((v65 & 0xC000000000000001) != 0)
        {
          v66 = __CocoaSet.count.getter();
        }

        else
        {
          v66 = *(v65 + 16);
        }

        if (v66)
        {
          while (1)
          {
            *&v263[0] = 0;
            *(&v263[0] + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(102);
            MEMORY[0x18D00C9B0](0xD000000000000024, 0x800000018CD413B0);
            v213 = v274;
            v214 = v275;
            if (v276)
            {
              *&v262[0] = _typeName(_:qualified:)();
              *(&v262[0] + 1) = v215;
              MEMORY[0x18D00C9B0](45, 0xE100000000000000);
              LOBYTE(v249[0]) = v214;
              v216 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x18D00C9B0](v216);

              v214 = *(&v262[0] + 1);
              v213 = *&v262[0];
            }

            else
            {
            }

            MEMORY[0x18D00C9B0](v213, v214);

            MEMORY[0x18D00C9B0](0xD000000000000040, 0x800000018CD413E0);
            v218 = 0;
            v217 = 1445;
LABEL_101:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
LABEL_102:
            _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
          }
        }

        v236 = *(&v57 + 1);
        v239 = *(&v58 + 1);

        if (v278)
        {
          type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
          lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey);

          PropertyList.Tracker.value<A>(_:for:)();
        }

        else
        {
          type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
          lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey);
          PropertyList.subscript.getter();
        }

        v139 = LOBYTE(v263[0]);
        AppSceneDelegate.makeRootView(_:)(v57, v263);
        outlined init with copy of ModifiedContent<AnyView, RootModifier>(v263, v262);
        if (v139 == 1)
        {
          type metadata accessor for UIHostingController<ModifiedContent<AnyView, RootModifier>>(0, &lazy cache variable for type metadata for _UISecureHostingController<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for _UISecureHostingController);
          v141 = objc_allocWithZone(v140);
          outlined init with copy of ModifiedContent<AnyView, RootModifier>(v262, v249);
          v142 = specialized UIHostingController.init(rootView:)(v249);
          v143 = *(v142 + direct field offset for UIHostingController.host);
          UIHostingViewBase.viewGraph.getter();

          lazy protocol witness table accessor for type SecureDrawingViewGraphFeature and conformance SecureDrawingViewGraphFeature();
          ViewGraph.append<A>(feature:)();

          outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(v262, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
          specialized configureHostingController #1 <A>(_:) in AppSceneDelegate.makeSceneHostWindow(restorationSceneItemID:restorationData:connectionOptions:urlContexts:role:windowScene:delegate:)(v142, v64, v240, v231, v273);
          v144 = type metadata accessor for UISecureWindow();
        }

        else
        {
          type metadata accessor for UIHostingController<ModifiedContent<AnyView, RootModifier>>(0, &lazy cache variable for type metadata for UIHostingController<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for UIHostingController);
          v146 = objc_allocWithZone(v145);
          v142 = specialized UIHostingController.init(rootView:)(v262);
          specialized configureHostingController #1 <A>(_:) in AppSceneDelegate.makeSceneHostWindow(restorationSceneItemID:restorationData:connectionOptions:urlContexts:role:windowScene:delegate:)(v142, v64, v240, v231, v273);
          v144 = MEMORY[0x1E69DD2E8];
        }

        v147 = objc_allocWithZone(v144);
        v56 = v142;
        v76 = [v147 initWithWindowScene_];

        outlined consume of Text?(v236, v235, v234, v230);
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v58);
        outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(v263, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
        goto LABEL_91;
      }

      if (v272 != 7)
      {
        goto LABEL_102;
      }

      v230 = v12;
      v245 = v268;
      v246 = v269;
      v247 = v270;
      v248 = v271;
      v241 = v264;
      v242 = v265;
      v243 = v266;
      v244 = v267;
      v76 = *(v31 + 16);
      if (v76)
      {
        v77 = 0;
        v78 = v31 + 32;
        while (v77 < *(v31 + 16))
        {
          outlined init with copy of SceneList.Item(v78, v263);
          outlined init with copy of SceneList.Item.Value(v263, v262);
          outlined destroy of SceneList.Item(v263);
          if (LOBYTE(v262[8]) == 2)
          {

            outlined destroy of SceneList.Item.Value(v262);
            v84 = v11;
            goto LABEL_66;
          }

          ++v77;
          outlined destroy of SceneList.Item.Value(v262);
          v78 += 568;
          if (v76 == v77)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

LABEL_24:
      v79 = v11;

      static Log.runtimeIssuesLog.getter();
      v80 = v223;
      Logger.init(_:)();
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_18BD4A000, v81, v82, "DocumentGroupLaunchScene should be used only with DocumentGroup scenes in the App declaration. Add a DocumentGroup scene or use DocumentLaunchView instead.", v83, 2u);
        MEMORY[0x18D0110E0](v83, -1, -1);
      }

      v84 = v79;
      (*(v230 + 8))(v80, v79);
LABEL_66:
      v153 = *v229;
      v154 = *(v229 + 8);
      v155 = *(v229 + 16);
      outlined copy of SceneList.Namespace(*v229, v154, v155);
      AppGraph.sceneList(namespace:)(v153, v154, v155, v263);
      outlined consume of SceneList.Namespace(v153, v154, v155);
      *&v262[0] = *&v263[0];
      *(v262 + 8) = *(v263 + 8);
      v156 = SceneList.allDocumentGroups()();

      AppSceneDelegate.rootModifier.getter(&v263[8] + 8);
      v263[4] = v245;
      v263[5] = v246;
      v263[6] = v247;
      v263[7] = v248;
      v263[0] = v241;
      v263[1] = v242;
      v263[2] = v243;
      v263[3] = v244;
      *&v263[8] = v156;
      outlined init with copy of DocumentGroupsIntroRootView(v263, v262);
      v157 = objc_allocWithZone(type metadata accessor for DocumentGroupsIntroRootViewHostingController(0));
      outlined init with copy of DocumentGroupsIntroRootView(v262, v249);
      v158 = specialized UIHostingController.init(rootView:)(v249);
      outlined destroy of DocumentGroupsIntroRootView(v262);
      *(*&v158[direct field offset for UIHostingController.host] + *((*MEMORY[0x1E69E7D40] & **&v158[direct field offset for UIHostingController.host]) + 0x1C0) + 8) = &protocol witness table for DocumentGroupsIntroRootViewHostingController;
      swift_unknownObjectWeakAssign();
      v159 = [objc_allocWithZone(type metadata accessor for UIKitNavigationController()) initWithRootViewController_];

      v56 = v159;
      [v56 loadViewIfNeeded];
      v160 = v226;
      static Log.documents.getter();
      if (v234(v160, 1, v84) == 1)
      {
        outlined destroy of PPTTestHost?(v160, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
        v161 = v239;
      }

      else
      {
        v162 = Logger.logObject.getter();
        v163 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v162, v163))
        {
          v164 = swift_slowAlloc();
          v165 = swift_slowAlloc();
          v225 = v84;
          v166 = v165;
          *&v262[0] = v165;
          *v164 = 136315138;
          v167 = [objc_opt_self() _printHierarchy];
          v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v170 = v169;

          v171 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v170, v262);

          *(v164 + 4) = v171;
          _os_log_impl(&dword_18BD4A000, v162, v163, "DocumentGroupIntro: make scene called VC hierarchy:\n%s", v164, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v166);
          v84 = v225;
          MEMORY[0x18D0110E0](v166, -1, -1);
          v172 = v164;
          v160 = v226;
          MEMORY[0x18D0110E0](v172, -1, -1);
        }

        v161 = v239;
        (*(v230 + 8))(v160, v84);
      }

      v76 = [objc_allocWithZone(MEMORY[0x1E69DD2E8]) initWithWindowScene_];
      outlined destroy of DocumentGroupsIntroRootView(v263);
      goto LABEL_91;
    }

    v71 = v264;
    v72 = v265;
    v73 = *(&v265 + 1);
    v74 = v266;
    if (v266 == 1)
    {
      *&v263[0] = *(&v266 + 1);
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(0, &lazy cache variable for type metadata for ModifiedContent<AnyView, ClarityUIInterfaceIdiomModifier>, MEMORY[0x1E6981910], &type metadata for ClarityUIInterfaceIdiomModifier, MEMORY[0x1E697E830]);
      lazy protocol witness table accessor for type ModifiedContent<AnyView, ClarityUIInterfaceIdiomModifier> and conformance <> ModifiedContent<A, B>();

      v75 = AnyView.init<A>(_:)();
    }

    else
    {

      v75 = *(&v74 + 1);
    }

    AppSceneDelegate.makeRootView(_:)(v75, v263);

    type metadata accessor for UIHostingController<ModifiedContent<AnyView, RootModifier>>(0, &lazy cache variable for type metadata for UIHostingController<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for UIHostingController);
    v87 = objc_allocWithZone(v86);
    v88 = specialized UIHostingController.init(rootView:)(v263);
    v89 = v88;
    v236 = v73;
    if (v74 != 1)
    {

LABEL_79:
      v179 = v239;
      specialized configureHostingController #1 <A>(_:) in AppSceneDelegate.makeSceneHostWindow(restorationSceneItemID:restorationData:connectionOptions:urlContexts:role:windowScene:delegate:)(v89, v239, v240, v231, v273);
      v180 = objc_allocWithZone(MEMORY[0x1E69DD2E8]);
      v56 = v89;
      v76 = [v180 initWithWindowScene_];
      outlined consume of SceneID(v71, *(&v71 + 1), v72);
      outlined consume of UISceneAdaptorConfiguration.Kind(v236, v74);

      goto LABEL_91;
    }

    v177 = [v88 view];
    if (v177)
    {
      v178 = v177;

      if (one-time initialization token for clarityUIContentBackground != -1)
      {
        swift_once();
      }

      [v178 setBackgroundColor_];

      goto LABEL_79;
    }

    __break(1u);
LABEL_100:
    v218 = 0;
    v217 = 241;
    goto LABEL_101;
  }

  v230 = v12;
  if (!v272)
  {

    v241 = v264;
    v242 = v265;
    v243 = v266;
    v244 = v267;
    *(v240 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_presentationDataType) = *(&v266 + 1);
    specialized AppSceneDelegate.openWindowPresentedValue<A>(from:restorationData:config:)(v224, v225, &v241, v262);
    if (*(&v262[1] + 1))
    {
      v263[0] = v262[0];
      v263[1] = v262[1];
      v263[2] = v262[2];
      *&v263[3] = *&v262[3];
      outlined init with copy of OpenURLContext(v263, v262, type metadata accessor for (AnyHashable, Data));
      outlined consume of Data._Representation(*(&v262[2] + 1), *&v262[3]);
      v249[0] = v262[0];
      v249[1] = v262[1];
      v250 = *&v262[2];
      v67 = OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_presentationDataValue;
      v68 = v240;
      swift_beginAccess();
      outlined assign with take of AnyHashable?(v249, v68 + v67);
      swift_endAccess();
      v262[1] = v263[1];
      v262[2] = v263[2];
      *&v262[3] = *&v263[3];
      v262[0] = v263[0];
      v69 = *(v68 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_rawPresentationDataValue);
      v70 = *(v68 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_rawPresentationDataValue + 8);
      *(v68 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_rawPresentationDataValue) = *(&v262[2] + 8);
      outlined consume of Data?(v69, v70);
      outlined destroy of AnyHashable(v262);
    }

    else
    {
      outlined destroy of PPTTestHost?(v262, &lazy cache variable for type metadata for (AnyHashable, Data)?, type metadata accessor for (AnyHashable, Data), MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
    }

    v225 = v11;
    if (v278)
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey);

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey);
      PropertyList.subscript.getter();
    }

    v111 = v227;
    v112 = LOBYTE(v263[0]);
    AppSceneDelegate.makeRootView(_:)(v241, v263);
    v113 = v225;
    outlined init with copy of ModifiedContent<AnyView, RootModifier>(v263, v262);
    if (v112 == 1)
    {
      type metadata accessor for UIHostingController<ModifiedContent<AnyView, RootModifier>>(0, &lazy cache variable for type metadata for _UISecureHostingController<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for _UISecureHostingController);
      v115 = objc_allocWithZone(v114);
      outlined init with copy of ModifiedContent<AnyView, RootModifier>(v262, v249);
      v116 = specialized UIHostingController.init(rootView:)(v249);
      v117 = *(v116 + direct field offset for UIHostingController.host);
      UIHostingViewBase.viewGraph.getter();

      lazy protocol witness table accessor for type SecureDrawingViewGraphFeature and conformance SecureDrawingViewGraphFeature();
      ViewGraph.append<A>(feature:)();

      outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(v262, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
      v118 = v239;
      specialized configureHostingController #1 <A>(_:) in AppSceneDelegate.makeSceneHostWindow(restorationSceneItemID:restorationData:connectionOptions:urlContexts:role:windowScene:delegate:)(v116, v239, v240, v231, v273);
      v119 = type metadata accessor for UISecureWindow();
    }

    else
    {
      type metadata accessor for UIHostingController<ModifiedContent<AnyView, RootModifier>>(0, &lazy cache variable for type metadata for UIHostingController<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for UIHostingController);
      v121 = objc_allocWithZone(v120);
      v116 = specialized UIHostingController.init(rootView:)(v262);
      v118 = v239;
      specialized configureHostingController #1 <A>(_:) in AppSceneDelegate.makeSceneHostWindow(restorationSceneItemID:restorationData:connectionOptions:urlContexts:role:windowScene:delegate:)(v116, v239, v240, v231, v273);
      v119 = MEMORY[0x1E69DD2E8];
    }

    v122 = objc_allocWithZone(v119);
    v56 = v116;
    v76 = [v122 initWithWindowScene_];
    static Log.scenes.getter();
    if (v234(v111, 1, v113) == 1)
    {
      outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(v263, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
      outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(&v241, &lazy cache variable for type metadata for WindowSceneConfiguration<WindowGroupConfigurationAttributes>, &type metadata for WindowGroupConfigurationAttributes, &protocol witness table for WindowGroupConfigurationAttributes, type metadata accessor for WindowSceneConfiguration);
      outlined destroy of PPTTestHost?(v111, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
    }

    else
    {
      v123 = v118;
      v124 = v76;
      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.debug.getter();

      v239 = v125;
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v236 = swift_slowAlloc();
        *&v262[0] = v236;
        *v127 = 136315394;
        v129 = [v123 session];
        v130 = [v129 persistentIdentifier];

        v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v133 = v132;

        v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v133, v262);
        v111 = v227;

        *(v127 + 4) = v134;
        *(v127 + 12) = 2112;
        *(v127 + 14) = v124;
        v135 = v128;
        *v128 = v124;
        v136 = v124;
        v137 = v239;
        _os_log_impl(&dword_18BD4A000, v239, v126, "Scene session %s has created a window %@", v127, 0x16u);
        outlined destroy of OpenURLContext(v135, type metadata accessor for NSObject?);
        MEMORY[0x18D0110E0](v135, -1, -1);
        v138 = v236;
        __swift_destroy_boxed_opaque_existential_1(v236);
        MEMORY[0x18D0110E0](v138, -1, -1);
        MEMORY[0x18D0110E0](v127, -1, -1);

        outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(&v241, &lazy cache variable for type metadata for WindowSceneConfiguration<WindowGroupConfigurationAttributes>, &type metadata for WindowGroupConfigurationAttributes, &protocol witness table for WindowGroupConfigurationAttributes, type metadata accessor for WindowSceneConfiguration);
      }

      else
      {
        outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(&v241, &lazy cache variable for type metadata for WindowSceneConfiguration<WindowGroupConfigurationAttributes>, &type metadata for WindowGroupConfigurationAttributes, &protocol witness table for WindowGroupConfigurationAttributes, type metadata accessor for WindowSceneConfiguration);
      }

      outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(v263, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
      (*(v230 + 8))(v111, v225);
    }

    goto LABEL_91;
  }

  if (v272 != 2)
  {
    goto LABEL_102;
  }

  v85 = v228;
  static Log.documents.getter();
  if (v234(v85, 1, v11) == 1)
  {
    outlined destroy of PPTTestHost?(v85, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
  }

  else
  {
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v231 = swift_slowAlloc();
      *&v263[0] = v231;
      *v92 = 136315138;
      v93 = [objc_opt_self() _printHierarchy];
      v225 = v11;
      v94 = v93;
      v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v97 = v96;

      v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, v263);
      v31 = v238;

      *(v92 + 4) = v98;
      v11 = v225;
      _os_log_impl(&dword_18BD4A000, v90, v91, "DocumentGroup: make scene called. VC hierarchy:\n%s", v92, 0xCu);
      v99 = v231;
      __swift_destroy_boxed_opaque_existential_1(v231);
      MEMORY[0x18D0110E0](v99, -1, -1);
      v100 = v92;
      v12 = v230;
      MEMORY[0x18D0110E0](v100, -1, -1);
    }

    (*(v12 + 8))(v228, v11);
  }

  v101 = *v229;
  v102 = *(v229 + 8);
  v103 = *(v229 + 16);
  outlined copy of SceneList.Namespace(*v229, v102, v103);
  AppGraph.sceneList(namespace:)(v101, v102, v103, v263);
  outlined consume of SceneList.Namespace(v101, v102, v103);
  *&v262[0] = *&v263[0];
  *(v262 + 8) = *(v263 + 8);
  v76 = SceneList.allDocumentGroups()();

  v77 = *(v31 + 16);
  if (v77)
  {
    v30 = 0;
    v78 = v31 + 32;
    while (v30 < *(v31 + 16))
    {
      outlined init with copy of SceneList.Item(v78, v262);
      outlined init with copy of SceneList.Item.Value(v262, v249);
      if (v251 == 7)
      {

        outlined destroy of SceneList.Item.Value(v249);
        memcpy(v263, v262, 0x231uLL);
        outlined init with copy of SceneList.Item.Value(v263, v260);
        if (v261 != 7)
        {

          outlined destroy of SceneList.Item.Value(v260);
          v194 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
          outlined destroy of SceneList.Item(v263);
          v56 = v194;
          goto LABEL_89;
        }

        v256 = v260[4];
        v257 = v260[5];
        v258 = v260[6];
        v259 = v260[7];
        v252 = v260[0];
        v253 = v260[1];
        v254 = v260[2];
        v255 = v260[3];
        AppSceneDelegate.rootModifier.getter(&v262[8] + 8);
        v262[4] = v256;
        v262[5] = v257;
        v262[6] = v258;
        v262[7] = v259;
        v262[0] = v252;
        v262[1] = v253;
        v262[2] = v254;
        v262[3] = v255;
        *&v262[8] = v76;
        outlined init with copy of DocumentGroupsIntroRootView(v262, v249);
        v173 = objc_allocWithZone(type metadata accessor for DocumentGroupsIntroRootViewHostingController(0));
        outlined init with copy of DocumentGroupsIntroRootView(v249, &v241);
        v174 = specialized UIHostingController.init(rootView:)(&v241);
        outlined destroy of DocumentGroupsIntroRootView(v249);
        *(*&v174[direct field offset for UIHostingController.host] + *((*MEMORY[0x1E69E7D40] & **&v174[direct field offset for UIHostingController.host]) + 0x1C0) + 8) = &protocol witness table for DocumentGroupsIntroRootViewHostingController;
        swift_unknownObjectWeakAssign();
        v175 = [objc_allocWithZone(type metadata accessor for UIKitNavigationController()) initWithRootViewController_];

        v56 = v175;
        v176 = v221;
        static Log.documents.getter();
        if (v234(v176, 1, v11) == 1)
        {
          outlined destroy of DocumentGroupsIntroRootView(v262);
          outlined destroy of SceneList.Item(v263);
          outlined destroy of PPTTestHost?(v176, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
          goto LABEL_89;
        }

        v202 = Logger.logObject.getter();
        v203 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v202, v203))
        {
          v204 = swift_slowAlloc();
          v205 = swift_slowAlloc();
          v225 = v11;
          v206 = v205;
          *&v249[0] = v205;
          *v204 = 136315138;
          v207 = [objc_opt_self() _printHierarchy];
          v208 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v210 = v209;

          v211 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v208, v210, v249);

          *(v204 + 4) = v211;
          _os_log_impl(&dword_18BD4A000, v202, v203, "DocumentGroup -> Intro: make scene called. VC hierarchy:\n%s", v204, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v206);
          v11 = v225;
          MEMORY[0x18D0110E0](v206, -1, -1);
          v212 = v204;
          v176 = v221;
          MEMORY[0x18D0110E0](v212, -1, -1);
        }

        outlined destroy of DocumentGroupsIntroRootView(v262);
        outlined destroy of SceneList.Item(v263);
        v195 = v239;
        (*(v230 + 8))(v176, v11);
        goto LABEL_90;
      }

      ++v30;
      outlined destroy of SceneList.Item(v262);
      outlined destroy of SceneList.Item.Value(v249);
      v78 += 568;
      if (v77 == v30)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_97;
  }

LABEL_41:

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    v104 = objc_allocWithZone(type metadata accessor for IdentifiedDocumentGroupDocumentCreation());
    v105 = IdentifiedDocumentGroupDocumentCreation.init(configurations:strategies:)(v76, MEMORY[0x1E69E7CC0]);
    v106 = objc_allocWithZone(type metadata accessor for DocumentViewController(0));
    v107 = specialized DocumentViewController.init<A>(documentBrowserMediator:onDocumentClose:)(v105, 0, 0);

    AppSceneDelegate.rootModifier.getter(v263);
    DocumentViewController.rootModifier.setter(v263);
    v56 = [objc_allocWithZone(type metadata accessor for UIKitNavigationController()) initWithRootViewController_];
    v108 = v222;
    static Log.documents.getter();
    v109 = v234(v108, 1, v11);
    v110 = v236;
    if (v109 == 1)
    {
      outlined destroy of PPTTestHost?(v108, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
    }

    else
    {
      v225 = v11;
      v181 = Logger.logObject.getter();
      v182 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v181, v182))
      {
        v183 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        *&v263[0] = v184;
        *v183 = 136315138;
        v185 = [objc_opt_self() _printHierarchy];
        v186 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v188 = v187;

        v189 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v188, v263);
        v110 = v236;

        *(v183 + 4) = v189;
        _os_log_impl(&dword_18BD4A000, v181, v182, "DocumentGroup: make scene called. Not redirected to Intro.\nVC hierarchy:\n%s", v183, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v184);
        MEMORY[0x18D0110E0](v184, -1, -1);
        v190 = v183;
        v108 = v222;
        MEMORY[0x18D0110E0](v190, -1, -1);
      }

      (*(v230 + 8))(v108, v225);
    }

    v150 = *v110;
    v191 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo16UIOpenURLContextCG_10Foundation3URLVs5NeverOTg50245_s7SwiftUI16AppSceneDelegateC04makeD10HostWindow33_4475FD12FD59DEBA453321BD91F6EA04011restorationD6ItemID0O4Data17connectionOptions11urlContexts4role06windowD08delegateSo8UIWindowCAA0dQ0OSg_SDys11AnyHashableVypGSo017UISceneConnectionT0CShySo16dE132CGzSo18UISceneSessionRoleaSo0zD0CAA013UIHostingViewE0_ptF10Foundation3URLVAXcfu14_33_7b38412a791237ac1c9a4b50e4b05c7bAXA5_Tf3nnnpk_nTf1cn_nTm(*v110);
    v152 = DocumentViewController.presentDocuments(at:)(v191);
  }

  else
  {
    AppSceneDelegate.rootModifier.getter(v263);
    v148 = objc_allocWithZone(type metadata accessor for DocumentBrowserViewController());
    v149 = DocumentBrowserViewController.init(configurations:rootModifier:)(v76, v263);
    v110 = v236;
    v150 = *v236;
    v107 = v149;
    v151 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo16UIOpenURLContextCG_10Foundation3URLVs5NeverOTg50245_s7SwiftUI16AppSceneDelegateC04makeD10HostWindow33_4475FD12FD59DEBA453321BD91F6EA04011restorationD6ItemID0O4Data17connectionOptions11urlContexts4role06windowD08delegateSo8UIWindowCAA0dQ0OSg_SDys11AnyHashableVypGSo017UISceneConnectionT0CShySo16dE132CGzSo18UISceneSessionRoleaSo0zD0CAA013UIHostingViewE0_ptF10Foundation3URLVAXcfu14_33_7b38412a791237ac1c9a4b50e4b05c7bAXA5_Tf3nnnpk_nTf1cn_nTm(v150);
    v152 = DocumentBrowserViewController.presentDocuments(at:animated:)(v151, 0);
    v56 = v107;
  }

  if (v152)
  {
    v192 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation3URLV_SayAFGTt0g5Tf4g_n(v152);

    v193 = specialized Set._Variant.filter(_:)(v150, v192);

    *v110 = v193;
  }

LABEL_89:
  v195 = v239;
LABEL_90:
  v76 = [objc_allocWithZone(MEMORY[0x1E69DD2E8]) initWithWindowScene_];
  outlined destroy of SceneList.Item.Value(&v264);
LABEL_91:
  v78 = v274;
  v77 = v275;
  LOBYTE(v30) = v276;
  v196 = v240;
  v197 = v240 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID;
  v198 = *(v240 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID);
  v199 = *(v240 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID + 8);
  *v197 = v274;
  *(v197 + 8) = v77;
  v200 = *(v197 + 16);
  *(v197 + 16) = v30;
  outlined copy of SceneID(v78, v77, v30);
  outlined consume of SceneID?(v198, v199, v200);
  *(v196 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_lastVersion) = v277;
  if (one-time initialization token for shared != -1)
  {
LABEL_98:
    swift_once();
  }

  PlatformSceneCache.addHost(_:id:)(v56, v78, v77, v30);

  UIWindow.applyAccessibilityProperties(from:)(&v279);
  [v76 setRootViewController_];

  outlined destroy of SceneList.Item(v273);
  return v76;
}

void type metadata accessor for Logger?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s2os6LoggerVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s2os6LoggerVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s2os6LoggerVSgMaTm_2(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void _s2os6LoggerVSgMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *AppSceneDelegate.findSceneListItem(restorationSceneItemID:restorationData:connectionOptions:urlContexts:role:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, void *a4@<X4>, uint64_t *a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v120 = a2;
  v121 = a6;
  v111 = a5;
  v115 = a7;
  v116 = a4;
  v10 = MEMORY[0x1E69E6720];
  type metadata accessor for WeakBox<UISceneConnectionOptions>?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v112 = &v109 - v12;
  type metadata accessor for WeakBox<UISceneConnectionOptions>?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], v10);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v113 = &v109 - v14;
  if (!static AppGraph.shared)
  {
    goto LABEL_151;
  }

  v15 = *(v7 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace);
  v16 = *(v7 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace + 8);
  v17 = *(v7 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace + 16);
  v18 = static AppGraph.shared;

  outlined copy of SceneList.Namespace(v15, v16, v17);
  v114 = v18;
  AppGraph.sceneList(namespace:)(v15, v16, v17, v129);
  outlined consume of SceneList.Namespace(v15, v16, v17);
  v122 = v129[0];
  v117 = v129[1];
  v118 = v129[2];
  if (a3 != -1)
  {
    v19 = *(v122 + 16);
    if (v19)
    {
      v20 = 0;
      v21 = v122 + 32;
      LODWORD(v119) = v120;
      do
      {
        if (v20 >= *(v122 + 16))
        {
          goto LABEL_146;
        }

        outlined init with copy of SceneList.Item(v21, v129);
        v22 = v129[17];
        v23 = v129[18];
        if (v129[19])
        {
          v24 = v129[18];
          if ((a3 & 1) == 0)
          {
            v128[0] = _typeName(_:qualified:)();
            v128[1] = v28;
            MEMORY[0x18D00C9B0](45, 0xE100000000000000);
            LOBYTE(v125) = v24;
            v29 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v29);

            v30 = v128[0];
            v23 = v128[1];
            v27 = v120;
            outlined copy of SceneID?(a1, v120, a3);
            if (v30 != a1)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }

          if (v129[17] == a1 && LOBYTE(v129[18]) == v119)
          {
            goto LABEL_6;
          }
        }

        else
        {
          if (a3)
          {
            outlined copy of SceneID(v129[17], v129[18], 0);
            v128[0] = _typeName(_:qualified:)();
            v128[1] = v25;
            MEMORY[0x18D00C9B0](45, 0xE100000000000000);
            LOBYTE(v125) = v119;
            v26 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v26);

            v27 = v128[1];
            if (v22 != v128[0])
            {
LABEL_19:
              v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v31)
              {
                goto LABEL_6;
              }

              goto LABEL_7;
            }

LABEL_18:
            if (v23 == v27)
            {

LABEL_6:
              if (BYTE1(v129[67]) != 2)
              {

                goto LABEL_143;
              }

              goto LABEL_7;
            }

            goto LABEL_19;
          }

          if (v129[17] == a1 && v129[18] == v120 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            goto LABEL_6;
          }
        }

LABEL_7:
        ++v20;
        outlined destroy of SceneList.Item(v129);
        v21 += 568;
      }

      while (v19 != v20);
    }
  }

  v32 = v122;
  v125 = v122;
  v126 = v117;
  v127 = v118;
  SceneList.itemForConnectionOptions(_:)(v116, v128);
  if (v128[68])
  {
    memcpy(v129, v128, 0x231uLL);
    v33 = v113;
    static Log.openScene.getter();
    v34 = type metadata accessor for Logger();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v33, 1, v34) == 1)
    {

      outlined destroy of PPTTestHost?(v33, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
    }

    else
    {
      outlined init with copy of SceneList.Item(v129, v128);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v124 = v56;
        *v55 = 136315138;
        v57 = v128[17];
        v58 = v128[18];
        if (v128[19])
        {
          v125 = _typeName(_:qualified:)();
          v126 = v59;
          MEMORY[0x18D00C9B0](45, 0xE100000000000000);
          v123 = v58;
          v60 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x18D00C9B0](v60);

          v57 = v125;
          v58 = v126;
        }

        else
        {
        }

        outlined destroy of SceneList.Item(v128);
        v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v124);

        *(v55 + 4) = v106;
        _os_log_impl(&dword_18BD4A000, v53, v54, "Found item matching openWindow connection options %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x18D0110E0](v56, -1, -1);
        MEMORY[0x18D0110E0](v55, -1, -1);

        v33 = v113;
      }

      else
      {

        outlined destroy of SceneList.Item(v128);
      }

      (*(v35 + 8))(v33, v34);
    }

    return memcpy(v115, v129, 0x231uLL);
  }

  outlined destroy of RootEnvironmentModifier?(v128, &lazy cache variable for type metadata for SceneList.Item?, &type metadata for SceneList.Item);
  v36 = *(v32 + 16);

  if (!v36)
  {
LABEL_62:

    v61 = *(v32 + 16);
    if (!v61)
    {
      v64 = MEMORY[0x1E69E7CC0];
LABEL_98:
      v81 = [v116 userActivities];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserActivity);
      lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type NSUserActivity and conformance NSObject, &lazy cache variable for type metadata for NSUserActivity);
      v82 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v83 = specialized Collection.first.getter(v82);

      v84 = specialized Collection.first.getter(*v111);
      if (v84)
      {
        v85 = v84;
        v86 = [v84 URL];

        v87 = v112;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v88 = 0;
      }

      else
      {
        v88 = 1;
        v87 = v112;
      }

      v89 = type metadata accessor for URL();
      (*(*(v89 - 8) + 56))(v87, v88, 1, v89);
      v116 = specialized static SceneBridge.targetContentIdentifierForExternalEvent(userActivity:url:)(v83, v87);
      v91 = v90;
      outlined destroy of PPTTestHost?(v87, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
      v119 = v91;
      if (v91)
      {
        v113 = v83;
        v120 = *(v64 + 16);
        if (v120)
        {
          v92 = 0;
          v121 = v64 + 32;
          do
          {
            if (v92 >= *(v64 + 16))
            {
              goto LABEL_149;
            }

            outlined init with copy of SceneList.Item(v121 + 568 * v92, v129);
            v93 = v129[60];
            if (v129[60])
            {
              v94 = 1 << *(v129[60] + 32);
              if (v94 < 64)
              {
                v95 = ~(-1 << v94);
              }

              else
              {
                v95 = -1;
              }

              v96 = v95 & *(v129[60] + 56);
              v97 = (v94 + 63) >> 6;

              v98 = 0;
              while (1)
              {
                if (v96)
                {
                  goto LABEL_117;
                }

                do
                {
                  v99 = v98 + 1;
                  if (__OFADD__(v98, 1))
                  {
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
                    while (1)
                    {
LABEL_151:
                      _assertionFailure(_:_:file:line:flags:)();
                      __break(1u);
LABEL_152:
                      _diagnoseUnexpectedEnumCase<A>(type:)();
                      __break(1u);
                    }
                  }

                  if (v99 >= v97)
                  {

                    goto LABEL_105;
                  }

                  v96 = *(v93 + 56 + 8 * v99);
                  ++v98;
                }

                while (!v96);
                v98 = v99;
LABEL_117:
                v100 = __clz(__rbit64(v96));
                v96 &= v96 - 1;
                v101 = (*(v93 + 48) + ((v98 << 10) | (16 * v100)));
                v102 = *v101;
                v103 = v101[1];
                if (*v101)
                {
                  v104 = 0;
                }

                else
                {
                  v104 = v103 == 0xE000000000000000;
                }

                if (!v104 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  v105 = v102 == 42 && v103 == 0xE100000000000000;
                  if (v105 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v128[0] = v116, v128[1] = v119, v125 = v102, v126 = v103, lazy protocol witness table accessor for type String and conformance String(), (StringProtocol.contains<A>(_:)() & 1) != 0))
                  {

                    goto LABEL_143;
                  }
                }
              }
            }

LABEL_105:
            ++v92;
            outlined destroy of SceneList.Item(v129);
          }

          while (v92 != v120);
        }

        v83 = v113;
      }

      if (*(v64 + 16))
      {
        outlined init with copy of SceneList.Item(v64 + 32, v115);
      }

      else
      {
        v107 = v122;
        if (!*(v122 + 16))
        {
          goto LABEL_151;
        }

        if (!*(v107 + 16))
        {
          goto LABEL_150;
        }

        outlined init with copy of SceneList.Item(v107 + 32, v115);
      }
    }

    v62 = 0;
    v63 = v32 + 32;
    v110 = *MEMORY[0x1E69DE818];
    v109 = *MEMORY[0x1E69DE810];
    v120 = *MEMORY[0x1E69DE808];
    v64 = MEMORY[0x1E69E7CC0];
    v113 = v61;
    while (1)
    {
      if (v62 >= *(v32 + 16))
      {
        goto LABEL_147;
      }

      outlined init with copy of SceneList.Item(v63, v129);
      outlined init with copy of SceneList.Item.Value(v129, v128);
      if (LOBYTE(v128[16]) <= 4u)
      {
        if (LOBYTE(v128[16]) && LOBYTE(v128[16]) != 2)
        {
LABEL_64:
          outlined destroy of SceneList.Item.Value(v128);
          goto LABEL_65;
        }

LABEL_78:
        outlined destroy of SceneList.Item.Value(v128);
        v69 = v120;
        goto LABEL_86;
      }

      if (LOBYTE(v128[16]) == 6)
      {
        goto LABEL_78;
      }

      if (LOBYTE(v128[16]) != 5)
      {
        goto LABEL_64;
      }

      v66 = v128[0];
      v65 = v128[1];
      v67 = v128[2];
      v68 = v128[4];
      if (v128[4])
      {
        if (v128[4] != 1)
        {
          v119 = v128[5];
          if (v128[4] == 2)
          {
            v69 = v110;
            outlined consume of SceneID(v66, v65, v67);
          }

          else
          {
            v71 = v128[3];

            v69 = MEMORY[0x18D00C850](v71, v68);
            outlined consume of UISceneAdaptorConfiguration.Kind(v71, v68);
            outlined consume of SceneID(v66, v65, v67);
            v72 = v71;
            v61 = v113;
            outlined consume of UISceneAdaptorConfiguration.Kind(v72, v68);
          }

          goto LABEL_85;
        }

        v70 = v109;
      }

      else
      {
        if (one-time initialization token for carPlay != -1)
        {
          swift_once();
        }

        v70 = static UISceneSessionRole.carPlay;
      }

      v69 = v70;
      outlined consume of SceneID(v66, v65, v67);
LABEL_85:

      v32 = v122;
LABEL_86:
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;
      if (v73 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v75 == v76)
      {

LABEL_90:
        memcpy(v128, v129, 0x231uLL);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v125 = v64;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v64 + 16) + 1, 1);
          v64 = v125;
        }

        v80 = *(v64 + 16);
        v79 = *(v64 + 24);
        if (v80 >= v79 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1);
          v64 = v125;
        }

        *(v64 + 16) = v80 + 1;
        memcpy((v64 + 568 * v80 + 32), v128, 0x231uLL);
        goto LABEL_66;
      }

      v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v77)
      {
        goto LABEL_90;
      }

LABEL_65:
      outlined destroy of SceneList.Item(v129);
LABEL_66:
      ++v62;
      v63 += 568;
      if (v61 == v62)
      {
        goto LABEL_98;
      }
    }
  }

  v37 = 0;
  v38 = v32 + 32;
  v113 = *MEMORY[0x1E69DE818];
  v110 = *MEMORY[0x1E69DE810];
  v119 = v36;
  while (1)
  {
    if (v37 >= *(v32 + 16))
    {
      goto LABEL_148;
    }

    outlined init with copy of SceneList.Item(v38, v129);
    outlined init with copy of SceneList.Item.Value(v129, v128);
    if (LOBYTE(v128[16]) <= 3u || LOBYTE(v128[16]) > 6u)
    {
      goto LABEL_42;
    }

    if (LOBYTE(v128[16]) != 5)
    {
      if (LOBYTE(v128[16]) != 6)
      {
        goto LABEL_152;
      }

LABEL_42:
      outlined destroy of SceneList.Item.Value(v128);
      goto LABEL_43;
    }

    v39 = v128[4];
    if (v128[4])
    {
      if (v128[4] != 1 && v128[4] != 2)
      {
        v52 = v128[3];
        outlined consume of SceneID(v128[0], v128[1], v128[2]);
        outlined consume of UISceneAdaptorConfiguration.Kind(v52, v39);

        goto LABEL_43;
      }

      outlined consume of SceneID(v128[0], v128[1], v128[2]);

      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;
    }

    else
    {
      outlined consume of SceneID(v128[0], v128[1], v128[2]);

      if (one-time initialization token for carPlay != -1)
      {
        swift_once();
      }

      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v49;
    }

    if (v40 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v42 == v50)
    {
      break;
    }

    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v51)
    {

      goto LABEL_142;
    }

LABEL_43:
    outlined init with copy of SceneList.Item.Value(v129, v128);
    if (LOBYTE(v128[16]) == 5)
    {
      v44 = v128[0];
      v43 = v128[1];
      v45 = v128[2];
      v47 = v128[3];
      v46 = v128[4];
      if (v128[4] >= 3uLL)
      {
        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v47 && v46 == v48)
        {

          outlined consume of SceneID(v44, v43, v45);
          outlined consume of UISceneAdaptorConfiguration.Kind(v47, v46);

LABEL_140:

          swift_bridgeObjectRelease_n();
          goto LABEL_143;
        }

        LODWORD(v120) = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined consume of SceneID(v44, v43, v45);
        outlined consume of UISceneAdaptorConfiguration.Kind(v47, v46);

        v32 = v122;
        v36 = v119;
        if (v120)
        {
          goto LABEL_140;
        }
      }

      else
      {
        outlined consume of SceneID(v128[0], v128[1], v128[2]);
        outlined consume of UISceneAdaptorConfiguration.Kind(v47, v46);

        v32 = v122;
      }
    }

    else
    {
      outlined destroy of SceneList.Item.Value(v128);
    }

    ++v37;
    outlined destroy of SceneList.Item(v129);
    v38 += 568;
    if (v36 == v37)
    {
      goto LABEL_62;
    }
  }

LABEL_142:

LABEL_143:

  return memcpy(v115, v129, 0x231uLL);
}

uint64_t destroy for SceneList()
{
}

uint64_t outlined consume of Set<UIOpenURLContext>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void type metadata completion function for SceneBridge()
{
  v0 = MEMORY[0x1E69E5CE8] + 64;
  v4 = MEMORY[0x1E69E5CE8] + 64;
  v5 = "\b";
  v6 = "\b";
  v7 = MEMORY[0x1E69E5D00] + 64;
  v8 = &unk_18CD7A8E0;
  v9 = MEMORY[0x1E69E5D00] + 64;
  v10 = MEMORY[0x1E69E5D00] + 64;
  v11 = &unk_18CD7A8F8;
  v12 = "\b";
  type metadata accessor for Predicate<Pack{String}>?(319);
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v13 = &v3;
    swift_getTupleTypeLayout2();
    v14 = &v2;
    v15 = &unk_18CD7A8F8;
    v16 = &unk_18CD7A910;
    v17 = &unk_18CD7A910;
    v18 = &unk_18CD7A928;
    v19 = v0;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Predicate<Pack{String}>?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for Predicate<Pack{String}>()
{
  if (!lazy cache variable for type metadata for Predicate<Pack{String}>)
  {
    v0 = type metadata accessor for Predicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Predicate<Pack{String}>);
    }
  }
}

uint64_t AppBodyAccessor.updateBody(of:changed:)(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for AppBodyAccessor();
    swift_getWitnessTable();
    return BodyAccessor.setBody(_:)();
  }

  return result;
}

uint64_t WindowGroup.init(id:title:lazyContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v17 = type metadata accessor for WindowGroup();
  v18 = (a9 + v17[10]);
  *(a9 + v17[11]) = 0;
  v19 = (a9 + v17[12]);
  *v19 = 0;
  v19[1] = 0;
  *v18 = a1;
  v18[1] = a2;
  *a9 = a3;
  a9[1] = a4;
  a9[2] = a5;
  a9[3] = a6;
  v20 = (a9 + v17[9]);
  *v20 = a7;
  v20[1] = a8;
  type metadata accessor for WindowGroupRootContent();

  return swift_storeEnumTagMultiPayload();
}

uint64_t initializeWithCopy for WindowGroup(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2[3];
  if (v6 < 0xFFFFFFFF)
  {
    v10 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v10;
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v8, v9);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = v6;
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 80) & 0xF8;
  v13 = v12 + 39;
  v14 = v12 + 39 + a1;
  v15 = ~v12 & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 & v15);
  v17 = ((a2 + v13) & v15);
  if (*(v11 + 64) <= 0x10uLL)
  {
    v18 = 16;
  }

  else
  {
    v18 = *(v11 + 64);
  }

  v19 = v17[v18];
  v20 = v19 - 2;
  if (v19 < 2)
  {
    goto LABEL_21;
  }

  if (v18 <= 3)
  {
    v21 = v18;
  }

  else
  {
    v21 = 4;
  }

  if (v21 <= 1)
  {
    if (!v21)
    {
      goto LABEL_21;
    }

    v22 = *v17;
  }

  else if (v21 == 2)
  {
    v22 = *v17;
  }

  else if (v21 == 3)
  {
    v22 = *v17 | (v17[2] << 16);
  }

  else
  {
    v22 = *v17;
  }

  v23 = (v22 | (v20 << (8 * v18))) + 2;
  v19 = v22 + 2;
  if (v18 < 4)
  {
    v19 = v23;
  }

LABEL_21:
  if (v19 == 1)
  {
    v24 = *(v17 + 1);
    *v16 = *v17;
    v16[1] = v24;

    v25 = 1;
  }

  else
  {
    (*(v11 + 16))(v16, v17);
    v25 = 0;
  }

  *(v16 + v18) = v25;
  v26 = ((v16 + v18 + 8) & 0xFFFFFFFFFFFFFFF8);
  v27 = (&v17[v18 + 8] & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  v26[1] = v27[1];
  v28 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v29 = *v28;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 = *v31;

  if (v32 < 0xFFFFFFFF)
  {
    *v30 = *v31;
  }

  else
  {
    v33 = v31[1];
    *v30 = v32;
    *(v30 + 8) = v33;
  }

  return a1;
}

uint64_t destroy for WindowGroup(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 80) & 0xF8 | 7;
  v6 = ((a1 + v5 + 32) & ~v5);
  if (*(v4 + 64) <= 0x10uLL)
  {
    v7 = 16;
  }

  else
  {
    v7 = *(v4 + 64);
  }

  v8 = v6[v7];
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_20;
      }

      v11 = *v6;
    }

    else if (v10 == 2)
    {
      v11 = *v6;
    }

    else if (v10 == 3)
    {
      v11 = *v6 | (v6[2] << 16);
    }

    else
    {
      v11 = *v6;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 2;
    v8 = v11 + 2;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_20:
  if (v8 == 1)
  {
  }

  else
  {
    (*(v4 + 8))(v6);
  }

  if (*(((((&v6[v7 + 8] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t SceneBodyAccessor.updateBody(of:changed:)(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for SceneBodyAccessor();
    swift_getWitnessTable();
    return BodyAccessor.setBody(_:)();
  }

  return result;
}

uint64_t WindowGroup.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = type metadata accessor for WindowGroupRootContent();
  v8 = WindowGroupRootContent.makeContent()(v7);
  v10 = *v2;
  v9 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  v13 = *(a1 + 40);
  v14 = *(v2 + *(a1 + 44));
  v15 = (v2 + *(a1 + 48));
  v16 = *v15;
  v17 = v15[1];
  v18 = (v3 + v13);
  v19 = *v18;
  v20 = v18[1];
  *a2 = v8;
  a2[1] = v10;
  a2[2] = v9;
  a2[3] = v11;
  a2[4] = v12;
  a2[5] = v14;
  a2[6] = v16;
  a2[7] = v17;
  a2[8] = v19;
  a2[9] = v20;
  a2[10] = v6;
  outlined copy of Text?(v10, v9, v11, v12);
  outlined copy of AppIntentExecutor?(v16);
}

uint64_t WindowGroupRootContent.makeContent()(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17[0] = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(*v12, v12[1], v2, *(a1 + 24));
    v17[1] = v14;
    type metadata accessor for LazyView();
    swift_getWitnessTable();
    return AnyView.init<A>(_:)();
  }

  else
  {
    (*(v3 + 32))(v8, v12, v2);
    (*(v3 + 16))(v5, v8, v2);
    v16 = AnyView.init<A>(_:)();
    (*(v3 + 8))(v8, v2);
    return v16;
  }
}

void *initializeWithCopy for WindowGroupRootContent(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x10uLL)
  {
    v4 = 16;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 < 2)
  {
    goto LABEL_18;
  }

  if (v4 <= 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 4;
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = *a2;
  }

  else if (v7 == 2)
  {
    v8 = *a2;
  }

  else if (v7 == 3)
  {
    v8 = *a2 | (a2[2] << 16);
  }

  else
  {
    v8 = *a2;
  }

  v9 = (v8 | (v6 << (8 * v4))) + 2;
  v5 = v8 + 2;
  if (v4 < 4)
  {
    v5 = v9;
  }

LABEL_18:
  if (v5 == 1)
  {
    v10 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v10;

    v11 = 1;
  }

  else
  {
    (*(*(*(a3 + 16) - 8) + 16))(a1);
    v11 = 0;
  }

  *(a1 + v4) = v11;
  return a1;
}

void type metadata accessor for (AnyHashable, Data)()
{
  if (!lazy cache variable for type metadata for (AnyHashable, Data))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AnyHashable, Data));
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id AppSceneDelegate.makeRootView(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (one-time initialization token for appRootViewWrappers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  rawValue = appRootViewWrappers._rawValue;
  v5 = *(appRootViewWrappers._rawValue + 2);
  if (v5)
  {

    v6 = rawValue + 40;
    do
    {
      v7 = *(v6 - 1);
      v10 = a1;

      v7(&v9, &v10);

      a1 = v9;
      v6 += 16;
      --v5;
    }

    while (v5);
  }

  else
  {
  }

  result = AppSceneDelegate.rootModifier.getter((a2 + 1));
  *a2 = a1;
  return result;
}

void type metadata accessor for ClosedRange<Date>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSNy10Foundation4DateVGSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSNy10Foundation4DateVGSgMaTm_1(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void *assignWithCopy for SceneList(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

void type metadata accessor for URL?()
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for URL?);
    }
  }
}

uint64_t implicit closure #1 in static _PreferenceWritingModifier._makeWidgetControlConfiguration(modifier:inputs:body:)()
{
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(swift_getAssociatedTypeWitness() - 8) + 64))
  {
    closure #1 in implicit closure #1 in static _PreferenceWritingModifier._makeWidgetControlConfiguration(modifier:inputs:body:)(1);
  }

  return AGGraphCreateOffsetAttribute2();
}

uint64_t closure #1 in implicit closure #1 in static _PreferenceWritingModifier._makeWidgetControlConfiguration(modifier:inputs:body:)(uint64_t a1)
{
  v5[2] = type metadata accessor for _PreferenceWritingModifier();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v5, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v7;
}

void specialized UIApplicationDelegateAdaptor.wrappedValue.getter()
{
  v0 = static AppGraph.delegateBox;
  if (!static AppGraph.delegateBox)
  {
    static os_log_type_t.fault.getter();
    v1 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v0 = static AppGraph.delegateBox;
    if (!static AppGraph.delegateBox)
    {
      goto LABEL_8;
    }
  }

  v2 = *(*v0 + 80);

  v4 = v2(v3);

  if (!v4)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  swift_dynamicCastUnknownClassUnconditional();
}

uint64_t View.onOpenURL(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return View.onOpenURL(perform:)(a1, a2, a3, a4, partial apply for closure #1 in View.onOpenURL(perform:), a5);
}

{
  return View.onOpenURL(perform:)(a1, a2, a3, a4, partial apply for closure #1 in View.onOpenURL(perform:), a5);
}

uint64_t Scene.extendedLaunchTestName(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = a2;
  type metadata accessor for _PreferenceWritingModifier<ExtendedLaunchTestNameKey>();
  return Scene.modifier<A>(_:)(v6, a3, v4);
}

id FallbackDelegateBox.delegate.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v2 = v1;
  }

  else
  {
    v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    *(v0 + 16) = v1;
    *(v0 + 24) = 1;
    v5 = v1;
    outlined consume of FallbackDelegateBox<A>.DelegateStorage<A>(v3, v4);
  }

  return v1;
}

void outlined consume of FallbackDelegateBox<A>.DelegateStorage<A>(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t View.onOpenURL(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v23[0] = a5;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v13);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  (*(v11 + 32))(v16 + v15, v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v17 = (v16 + ((v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a1;
  v17[1] = a2;
  type metadata accessor for PassthroughSubject<Any, Never>();
  v19 = v18;
  v20 = lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>, type metadata accessor for PassthroughSubject<Any, Never>);

  v23[1] = v19;
  v23[2] = a3;
  v23[3] = v20;
  v23[4] = a4;
  type metadata accessor for SubscriptionView();
  result = default argument 0 of SceneBridgeReader.init(sceneBridge:handler:)();
  *a6 = result;
  *(a6 + 8) = v22 & 1;
  *(a6 + 16) = v23[0];
  *(a6 + 24) = v16;
  return result;
}

uint64_t default argument 0 of SceneBridgeReader.init(sceneBridge:handler:)()
{
  type metadata accessor for SceneBridge(0);
  lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type SceneBridge and conformance SceneBridge, type metadata accessor for SceneBridge);
  return static ObservableObject.environmentStore.getter();
}

uint64_t initializeWithCopy for SceneBridgeReader(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v6;

  return a1;
}

uint64_t destroy for SceneBridgeReader(uint64_t a1)
{
  outlined consume of Environment<AnyShapeStyle?>.Content(*a1, *(a1 + 8));
}

uint64_t Scene.modifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13, a2, v10);
  (*(v6 + 16))(v8, a1, a3);
  return ModifiedContent.init(content:modifier:)();
}

uint64_t Scene.commands<A>(content:)(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CommandsModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  a1(v13);
  (*(v8 + 32))(v15, v10, a4);
  Scene.modifier<A>(_:)(v15, a3, v11);
  return (*(v12 + 8))(v15, v11);
}

unint64_t lazy protocol witness table accessor for type ObservableObjectDescriptor and conformance ObservableObjectDescriptor()
{
  result = lazy protocol witness table cache variable for type ObservableObjectDescriptor and conformance ObservableObjectDescriptor;
  if (!lazy protocol witness table cache variable for type ObservableObjectDescriptor and conformance ObservableObjectDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObservableObjectDescriptor and conformance ObservableObjectDescriptor);
  }

  return result;
}

void type metadata accessor for PassthroughSubject<Any, Never>()
{
  if (!lazy cache variable for type metadata for PassthroughSubject<Any, Never>)
  {
    v0 = type metadata accessor for PassthroughSubject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PassthroughSubject<Any, Never>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static SceneBridge.targetContentIdentifierForExternalEvent(userActivity:url:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  if (a1)
  {
    v18 = [a1 targetContentIdentifier];
    if (v18)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v20;
    }

    v21 = [a1 webpageURL];
    if (v21)
    {
      v22 = v21;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v5 + 56))(v13, 0, 1, v4);
    }

    else
    {
      (*(v5 + 56))(v13, 1, 1, v4);
    }

    outlined init with take of Predicate<Pack{String}>?(v13, v17, type metadata accessor for URL?);
    if (!(*(v5 + 48))(v17, 1, v4))
    {
      (*(v5 + 16))(v7, v17, v4);
      outlined destroy of Predicate<Pack{String}>?(v17, type metadata accessor for URL?);
      v20 = URL.absoluteString.getter();
      (*(v5 + 8))(v7, v4);
      return v20;
    }

    outlined destroy of Predicate<Pack{String}>?(v17, type metadata accessor for URL?);
  }

  outlined init with copy of Predicate<Pack{String}>?(a2, v10, type metadata accessor for URL?);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    outlined destroy of Predicate<Pack{String}>?(v10, type metadata accessor for URL?);
    return 0;
  }

  else
  {
    v20 = URL.absoluteString.getter();
    (*(v5 + 8))(v10, v4);
  }

  return v20;
}

uint64_t outlined init with copy of Predicate<Pack{String}>?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static CommandGroupPlacement.appInfo.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for CommandGroupPlacement(0);
  v6 = __swift_project_value_buffer(v5, a2);

  return outlined init with copy of CommandGroupPlacement(v6, a3);
}

uint64_t one-time initialization function for appInfo(__n128 a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for CommandGroupPlacement(0);
  __swift_allocate_value_buffer(v4, a3);
  v5 = __swift_project_value_buffer(v4, a3);
  MEMORY[0x18D009CE0](&v9);
  v6 = MEMORY[0x1E69E7CC0];
  Text.assertUnstyled(_:options:)();
  *v5 = a1;
  v5[1].n128_u8[0] = 0;
  v5[1].n128_u64[1] = v6;
  return UUID.init()();
}

uint64_t initializeWithCopy for CommandGroupPlacement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v7, v8);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = *(a2 + 24);
  v9 = *(a3 + 20);
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 16);

  v11(a1 + v9, a2 + v9, v10);
  return a1;
}

uint64_t outlined init with copy of CommandGroupPlacement(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandGroupPlacement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t CommandGroup.init(after:addition:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CommandGroupPlacement(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CommandOperation();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = outlined init with copy of CommandGroupPlacement(a1, v16);
  a2(v20);
  CommandOperation.init<A>(mutation:placement:content:)(a5, v16, v13, a3, a4, v19);
  outlined destroy of CommandGroupPlacement(a1);
  return _s7SwiftUI16CommandOperationVWObTm_1(v19, a6, type metadata accessor for CommandOperation);
}

void type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardShortcut?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<KeyboardShortcut?>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<Bool>(255, &lazy cache variable for type metadata for KeyboardShortcut?, &type metadata for KeyboardShortcut, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<KeyboardShortcut?>);
    }
  }
}

void type metadata accessor for ViewInputFlagModifier<HasKeyboardShortcut>()
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<HasKeyboardShortcut>)
  {
    lazy protocol witness table accessor for type HasKeyboardShortcut and conformance HasKeyboardShortcut();
    v0 = type metadata accessor for ViewInputFlagModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewInputFlagModifier<HasKeyboardShortcut>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for EnvironmentPropertyKey();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t storeEnumTagSinglePayload for OnScrollVisibilityGeometryAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>, &type metadata for KeyboardShortcutPickerOptionTraitKey, &protocol witness table for KeyboardShortcutPickerOptionTraitKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t View.keyboardShortcut(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22 = a2;
  v25 = a3;
  type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardShortcut?>();
  v4 = type metadata accessor for ModifiedContent();
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19[-v5];
  type metadata accessor for ViewInputFlagModifier<HasKeyboardShortcut>();
  v7 = type metadata accessor for ModifiedContent();
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19[-v8];
  v11 = *a1;
  v10 = a1[1];
  v21 = a1[2];
  v12 = v21;
  v13 = *(a1 + 24);
  v20 = v13;
  swift_getKeyPath();
  v30 = v11;
  v31 = v10;
  v32 = v12;
  v33 = v13;
  v14 = v22;
  View.environment<A>(_:_:)();

  HasKeyboard = lazy protocol witness table accessor for type ViewInputFlagModifier<HasKeyboardShortcut> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<KeyboardShortcut?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardShortcut?>);
  v28 = v14;
  v29 = HasKeyboard;
  WitnessTable = swift_getWitnessTable();
  lazy protocol witness table accessor for type HasKeyboardShortcut and conformance HasKeyboardShortcut();
  View.input<A>(_:)();
  (*(v23 + 8))(v6, v4);
  v30 = v11;
  v31 = v10;
  v32 = v21;
  v33 = v20;
  v17 = lazy protocol witness table accessor for type ViewInputFlagModifier<HasKeyboardShortcut> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<HasKeyboardShortcut> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<HasKeyboardShortcut>);
  v26 = WitnessTable;
  v27 = v17;
  swift_getWitnessTable();
  View._trait<A>(_:_:)();
  return (*(v24 + 8))(v9, v7);
}

uint64_t initializeWithCopy for _JSONKey(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t Scene.environment<A>(_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v6 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - v8;
  v10 = type metadata accessor for _EnvironmentKeyWritingModifier();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  (*(v7 + 16))(v9, a2, v6, v12);

  _EnvironmentKeyWritingModifier.init(keyPath:value:)();
  Scene.modifier<A>(_:)(v14, a3, v10);
  return (*(v11 + 8))(v14, v10);
}

void type metadata accessor for _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for _EnvironmentKeyTransformModifier<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t View.keyboardShortcut(_:modifiers:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  v8[2] = a2;
  v9 = 0;

  View.keyboardShortcut(_:)(v8, a3, a4);
}

uint64_t View.keyboardShortcut(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9[0] = *a1;
  v9[1] = v5;
  v9[2] = v6;
  v10 = v7;

  View.keyboardShortcut(_:)(v9, a2, a3);
}

uint64_t CommandOperation.init<A>(mutation:placement:content:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v23 = a3;
  v11 = type metadata accessor for CommandGroupPlacement(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CommandOperation();
  v16 = &a6[*(v15 + 24)];
  *a6 = a1;
  _s7SwiftUI21CommandGroupPlacementVWOcTm_0(a2, &a6[*(v15 + 20)], type metadata accessor for CommandGroupPlacement);
  _s7SwiftUI21CommandGroupPlacementVWObTm_0(a2, v14, type metadata accessor for CommandGroupPlacement);
  v17 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v18 = *(a4 - 8);
  v19 = (v17 + v13 + *(v18 + 80)) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  *(v20 + 32) = a1;
  _s7SwiftUI21CommandGroupPlacementVWObTm_0(v14, v20 + v17, type metadata accessor for CommandGroupPlacement);
  result = (*(v18 + 32))(v20 + v19, v23, a4);
  *v16 = partial apply for closure #1 in CommandOperation.init<A>(mutation:placement:content:);
  v16[1] = v20;
  return result;
}

uint64_t sub_18BD8D4F8()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for CommandGroupPlacement(0) - 8);
  v3 = (*(*v2 + 80) + 33) & ~*(*v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(*v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v0 + v3;
  outlined consume of Text.Storage(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16));

  v7 = v2[7];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  (*(v4 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t outlined init with take of CommandGroupPlacement(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI21CommandGroupPlacementVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI21CommandGroupPlacementVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t destroy for CommandGroupPlacement(uint64_t a1, uint64_t a2)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));

  v4 = *(a2 + 20);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

_BYTE *initializeWithCopy for CommandGroup(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  v4 = type metadata accessor for CommandOperation();
  v5 = *(v4 + 20);
  v6 = &a1[v5];
  v7 = &a2[v5];
  v8 = *&a2[v5];
  v9 = *&a2[v5 + 8];
  v10 = a2[v5 + 16];
  outlined copy of Text.Storage(v8, v9, v10);
  *v6 = v8;
  *(v6 + 1) = v9;
  v6[16] = v10;
  *(v6 + 3) = *(v7 + 3);
  v11 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 16);

  v13(&v6[v11], &v7[v11], v12);
  v14 = *(v4 + 24);
  v15 = &a1[v14];
  v16 = &a2[v14];
  if (*v16)
  {
    v17 = v16[1];
    *v15 = *v16;
    v15[1] = v17;
  }

  else
  {
    *v15 = *v16;
  }

  return a1;
}

uint64_t outlined init with copy of CommandGroupPlacement(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI21CommandGroupPlacementVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI21CommandGroupPlacementVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of CommandOperation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI16CommandOperationVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI16CommandOperationVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CommandGroupPlacement(uint64_t a1)
{
  v2 = type metadata accessor for CommandGroupPlacement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t destroy for CommandGroup(uint64_t a1)
{
  v2 = type metadata accessor for CommandOperation();
  v3 = a1 + *(v2 + 20);
  outlined consume of Text.Storage(*v3, *(v3 + 8), *(v3 + 16));

  v4 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v5 = type metadata accessor for UUID();
  result = (*(*(v5 - 8) + 8))(v3 + v4, v5);
  if (*(a1 + *(v2 + 24)))
  {
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void type metadata accessor for _DictionaryStorage<String, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, Any>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, Any>);
    }
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
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

uint64_t outlined destroy of Predicate<Pack{String}>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>.EnableVFDFeature()
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, RootModifier>>.EnableVFDFeature)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<AnyView, DocumentSceneRootBoxModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, RootModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, &type metadata for RootModifier, lazy protocol witness table accessor for type RootModifier and conformance RootModifier);
    v0 = type metadata accessor for _UIHostingView.EnableVFDFeature();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, RootModifier>>.EnableVFDFeature);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of ModifiedContent<TableRowView, CollectionViewCellModifier>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, a3, a4, a5, MEMORY[0x1E697E830]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, DocumentSceneRootBoxModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, a2, MEMORY[0x1E6981910], a3, MEMORY[0x1E697E830]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>()
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, RootModifier>>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<AnyView, DocumentSceneRootBoxModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, RootModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, &type metadata for RootModifier, lazy protocol witness table accessor for type RootModifier and conformance RootModifier);
    v0 = type metadata accessor for _UIHostingView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, RootModifier>>);
    }
  }
}

id AppSceneDelegate.rootModifier.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneBridge) && *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneStorageValues))
  {
    v3 = OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_presentationDataValue;
    swift_beginAccess();
    _ss11AnyHashableVSgWOcTm_2(v1 + v3, a1 + 24, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
    v4 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_scenePhase);
    v5 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID);
    v6 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID + 8);
    v9 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_connectionOptions);
    v7 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID + 16);
    swift_weakInit();
    swift_weakInit();
    swift_weakInit();
    *(a1 + 64) = v4;
    *(a1 + 72) = v5;
    *(a1 + 80) = v6;
    *(a1 + 88) = v7;
    *(a1 + 96) = v9;
    *(a1 + 104) = 0;
    outlined copy of SceneID?(v5, v6, v7);

    return v9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of AnyHashable?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for TableRowList?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _ss11AnyHashableVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for AnyHashable?(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t _ss11AnyHashableVSgWOcTm_1(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _ss11AnyHashableVSgMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _ss11AnyHashableVSgWOcTm_2(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _ss11AnyHashableVSgMaTm_1(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<AnyView, RootModifier>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(0, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for RootModifier(uint64_t a1, uint64_t a2)
{
  swift_weakCopyInit();
  swift_weakCopyInit();
  swift_weakCopyInit();
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    *(a1 + 48) = v4;
    *(a1 + 56) = v5;
    (**(v4 - 8))(a1 + 24, a2 + 24);
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  *(a1 + 64) = *(a2 + 64);
  v6 = *(a2 + 88);
  if (v6 == 255)
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    v7 = *(a2 + 72);
    v8 = *(a2 + 80);
    v9 = v6 & 1;
    outlined copy of SceneID(v7, v8, v6 & 1);
    *(a1 + 72) = v7;
    *(a1 + 80) = v8;
    *(a1 + 88) = v9;
  }

  v10 = *(a2 + 96);
  v11 = *(a2 + 104);
  *(a1 + 96) = v10;
  *(a1 + 104) = v11;
  v12 = v10;
  return a1;
}

void type metadata accessor for UIHostingController<ModifiedContent<AnyView, RootModifier>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type ModifiedContent<AnyView, RootModifier> and conformance <> ModifiedContent<A, B>();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _s7SwiftUI19UIHostingControllerCyAA15ModifiedContentVyAA7AnyViewVAA12RootModifierVGGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for UIHostingController<AnyView>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type ModifiedContent<AnyView, RootModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, RootModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, &type metadata for RootModifier, lazy protocol witness table accessor for type RootModifier and conformance RootModifier);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, RootModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnyView, RootModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnyView, RootModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type RootModifier and conformance RootModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnyView, RootModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RootModifier and conformance RootModifier()
{
  result = lazy protocol witness table cache variable for type RootModifier and conformance RootModifier;
  if (!lazy protocol witness table cache variable for type RootModifier and conformance RootModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RootModifier and conformance RootModifier);
  }

  return result;
}

void type metadata accessor for UIHostingController<AnyView>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, RootModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIHostingController<AnyView>(255, a2, MEMORY[0x1E6981910], a3, MEMORY[0x1E697E830]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIHostingController<ModifiedContent<AnyView, RootModifier>>(255, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t outlined consume of SceneID?(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of SceneID(result, a2, a3 & 1);
  }

  return result;
}

uint64_t PlatformSceneCache.addHost(_:id:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v27 = a1;
  swift_beginAccess();
  v10 = *(v5 + 16);
  if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 1), (v12 & 1) != 0))
  {
    v13 = *(*(*(v10 + 56) + 8 * v11) + 16);

    if (v13)
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v26);
      v15 = v14;
      swift_endAccess();

      if (v15)
      {
        return outlined destroy of HashableWeakBox<UIViewController>(v26);
      }
    }

    else
    {
      swift_endAccess();
    }
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  v16 = *(v5 + 16);
  if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 1), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(2, v26, isUniquelyReferenced_nonNull_native);
    v21 = v19;
  }

  else
  {
    swift_endAccess();
    type metadata accessor for HashableWeakBox<UIViewController>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(HashableWeakBox<UIViewController>, ScenePhase)>, type metadata accessor for (HashableWeakBox<UIViewController>, ScenePhase), MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    outlined init with copy of HashableWeakBox<UIViewController>(v26, inited + 32);
    *(inited + 48) = 2;
    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15HashableWeakBoxVySo16UIViewControllerCG_AC10ScenePhaseOTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (HashableWeakBox<UIViewController>, ScenePhase)(inited + 32);
  }

  swift_beginAccess();
  outlined copy of SceneID(a2, a3, a4 & 1);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v5 + 16);
  *(v5 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, a2, a3, a4 & 1, v23);
  outlined consume of SceneID(a2, a3, a4 & 1);
  *(v5 + 16) = v25;
  swift_endAccess();
  return outlined destroy of HashableWeakBox<UIViewController>(v26);
}

void type metadata accessor for HashableWeakBox<UIViewController>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI15HashableWeakBoxVySo16UIViewControllerCGMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for NSObject(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for (HashableWeakBox<UIViewController>, ScenePhase)()
{
  if (!lazy cache variable for type metadata for (HashableWeakBox<UIViewController>, ScenePhase))
  {
    type metadata accessor for HashableWeakBox<UIViewController>(255, &lazy cache variable for type metadata for HashableWeakBox<UIViewController>, type metadata accessor for UIViewController, MEMORY[0x1E697E7A8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (HashableWeakBox<UIViewController>, ScenePhase));
    }
  }
}

unint64_t type metadata accessor for UIViewController()
{
  result = lazy cache variable for type metadata for UIViewController;
  if (!lazy cache variable for type metadata for UIViewController)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIViewController);
  }

  return result;
}

Swift::Void __swiftcall UIHostingController.updateWindowSizeObservers(_:)(SwiftUI::UIHostingControllerSizingOptions a1)
{
  v2 = v1;
  v3 = *a1.rawValue;
  if (!_UIHostingView.sceneBridge.getter())
  {
    return;
  }

  if ((v3 & 4) != 0)
  {
    v6 = *(v1 + direct field offset for UIHostingController.host);
    _UIHostingView.viewGraph.getter();

    static _ProposedSize.zero.getter();
    swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>();
    ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
    swift_endAccess();

    goto LABEL_6;
  }

  v4 = direct field offset for UIHostingController.sizingOptions;
  swift_beginAccess();
  if ((*(v2 + v4) & 4) == 0)
  {
    v5 = *(v2 + direct field offset for UIHostingController.host);
    _UIHostingView.viewGraph.getter();

    static _ProposedSize.zero.getter();
    swift_beginAccess();
    type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>();
    ViewGraphGeometryObservers.stopObserving(proposal:)();
    swift_endAccess();
LABEL_6:
  }

  if ((v3 & 8) != 0)
  {
    v9 = *(v2 + direct field offset for UIHostingController.host);
    _UIHostingView.viewGraph.getter();

    static _ProposedSize.infinity.getter();
    swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>();
    ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
    swift_endAccess();
  }

  else
  {
    v7 = direct field offset for UIHostingController.sizingOptions;
    swift_beginAccess();
    if ((*(v2 + v7) & 8) == 0)
    {
      v8 = *(v2 + direct field offset for UIHostingController.host);
      _UIHostingView.viewGraph.getter();

      static _ProposedSize.infinity.getter();
      swift_beginAccess();
      type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>();
      ViewGraphGeometryObservers.stopObserving(proposal:)();
      swift_endAccess();
    }
  }
}

uint64_t sub_18BD92118()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>.HostViewGraph()
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, RootModifier>>.HostViewGraph)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<AnyView, DocumentSceneRootBoxModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, RootModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, &type metadata for RootModifier, lazy protocol witness table accessor for type RootModifier and conformance RootModifier);
    v0 = type metadata accessor for _UIHostingView.HostViewGraph();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, RootModifier>>.HostViewGraph);
    }
  }
}

uint64_t outlined destroy of _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *specialized _UIHostingView.base.getter()
{
  return specialized _UIHostingView.base.getter(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(lazy protocol witness table accessor for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>> and conformance _UIHostingView<A>, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>, &lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>> and conformance _UIHostingView<A>, &lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, &lazy protocol witness table cache variable for type _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, &lazy protocol witness table cache variable for type _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>);
}

{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x68));
  if (*(v0 + v1) == 1)
  {
    *(v0 + v1) = 1;
    v3 = v2;
    return v2;
  }

  v4 = v2;
  v5 = UIHostingViewBase.uiView.getter();
  if (v5)
  {

    if (UIHostingViewBase.delegate.getter())
    {
      goto LABEL_5;
    }

LABEL_8:
    lazy protocol witness table accessor for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for _UIHostingView);
    swift_unknownObjectRetain();
    UIHostingViewBase.delegate.setter();
    if (UIHostingViewBase.updateDelegate.getter())
    {
      goto LABEL_6;
    }

LABEL_9:
    lazy protocol witness table accessor for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for _UIHostingView);
    swift_unknownObjectRetain();
    UIHostingViewBase.updateDelegate.setter();
    goto LABEL_10;
  }

  v6 = v0;
  UIHostingViewBase.uiView.setter();
  if (!UIHostingViewBase.delegate.getter())
  {
    goto LABEL_8;
  }

LABEL_5:
  swift_unknownObjectRelease();
  if (!UIHostingViewBase.updateDelegate.getter())
  {
    goto LABEL_9;
  }

LABEL_6:
  swift_unknownObjectRelease();
LABEL_10:
  UIHostingViewBase.viewGraph.getter();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    UIHostingViewBase.viewGraph.getter();

    lazy protocol witness table accessor for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for _UIHostingView);
    swift_unknownObjectRetain();
    DisplayList.ViewRenderer.host.setter();
  }

  *(v0 + v1) = 1;
  return v2;
}

{
  return specialized _UIHostingView.base.getter(lazy protocol witness table accessor for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>> and conformance _UIHostingView<A>, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>> and conformance _UIHostingView<A>, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(lazy protocol witness table accessor for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>);
}

{
  return specialized _UIHostingView.base.getter(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>);
}

void *specialized _UIHostingView.base.getter(unint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, unint64_t *a4)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
  v6 = *(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x68));
  if (*(v4 + v5) == 1)
  {
    *(v4 + v5) = 1;
    v7 = v6;
    return v6;
  }

  v12 = v6;
  v13 = UIHostingViewBase.uiView.getter();
  if (v13)
  {

    if (UIHostingViewBase.delegate.getter())
    {
      goto LABEL_5;
    }

LABEL_8:
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(a1, a2);
    swift_unknownObjectRetain();
    UIHostingViewBase.delegate.setter();
    if (UIHostingViewBase.updateDelegate.getter())
    {
      goto LABEL_6;
    }

LABEL_9:
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(a3, a2);
    swift_unknownObjectRetain();
    UIHostingViewBase.updateDelegate.setter();
    goto LABEL_10;
  }

  v14 = v4;
  UIHostingViewBase.uiView.setter();
  if (!UIHostingViewBase.delegate.getter())
  {
    goto LABEL_8;
  }

LABEL_5:
  swift_unknownObjectRelease();
  if (!UIHostingViewBase.updateDelegate.getter())
  {
    goto LABEL_9;
  }

LABEL_6:
  swift_unknownObjectRelease();
LABEL_10:
  UIHostingViewBase.viewGraph.getter();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    UIHostingViewBase.viewGraph.getter();

    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(a4, a2);
    swift_unknownObjectRetain();
    DisplayList.ViewRenderer.host.setter();
  }

  *(v4 + v5) = 1;
  return v6;
}

id specialized _UIHostingView.sheetBridge.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x110);
  v2 = *(v0 + v1);
  v3 = v2;
  if (v2 == 1)
  {
    ObjectType = swift_getObjectType();
    v3 = specialized closure #1 in _UIHostingView.sheetBridge.getter(ObjectType);
    v5 = *(v0 + v1);
    *(v0 + v1) = v3;
    v6 = v3;
    outlined consume of SheetBridge<SheetPreference.Key>??(v5);
  }

  outlined copy of SheetBridge<SheetPreference.Key>??(v2);
  return v3;
}

id specialized closure #1 in _UIHostingView.sheetBridge.getter(uint64_t a1)
{
  if ((*(a1 + 1392))())
  {
    return 0;
  }

  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for SheetBridge<SheetPreference.Key>, &type metadata for SheetPreference.Key, &protocol witness table for SheetPreference.Key, type metadata accessor for SheetBridge);
  return [objc_allocWithZone(v2) init];
}

uint64_t outlined destroy of ModifiedContent<AnyView, RootModifier>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void destroy for RootModifier(uint64_t a1)
{
  swift_weakDestroy();
  swift_weakDestroy();
  swift_weakDestroy();
  if (*(a1 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 24);
  }

  v2 = *(a1 + 88);
  if (v2 != 255)
  {
    outlined consume of SceneID(*(a1 + 72), *(a1 + 80), v2 & 1);
  }

  v3 = *(a1 + 96);
}

unint64_t lazy protocol witness table accessor for type PPTFeature and conformance PPTFeature()
{
  result = lazy protocol witness table cache variable for type PPTFeature and conformance PPTFeature;
  if (!lazy protocol witness table cache variable for type PPTFeature and conformance PPTFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PPTFeature and conformance PPTFeature);
  }

  return result;
}

uint64_t outlined init with copy of HashableWeakBox<UIViewController>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HashableWeakBox<UIViewController>(0, &lazy cache variable for type metadata for HashableWeakBox<UIViewController>, type metadata accessor for UIViewController, MEMORY[0x1E697E7A8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15HashableWeakBoxVySo16UIViewControllerCG_AC10ScenePhaseOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<HashableWeakBox<UIViewController>, ScenePhase>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Predicate<Pack{String}>?(v4, v11, type metadata accessor for (HashableWeakBox<UIViewController>, ScenePhase));
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = outlined init with take of HashableWeakBox<UIViewController>(v11, v3[6] + 16 * result);
      *(v3[7] + v7) = v11[16];
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 24;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<HashableWeakBox<UIViewController>, ScenePhase>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<HashableWeakBox<UIViewController>, ScenePhase>)
  {
    _s7SwiftUI15HashableWeakBoxVySo16UIViewControllerCGMaTm_0(255, &lazy cache variable for type metadata for HashableWeakBox<UIViewController>, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258, MEMORY[0x1E697E7A8]);
    lazy protocol witness table accessor for type HashableWeakBox<UIViewController> and conformance HashableWeakBox<A>();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<HashableWeakBox<UIViewController>, ScenePhase>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type HashableWeakBox<UIViewController> and conformance HashableWeakBox<A>()
{
  result = lazy protocol witness table cache variable for type HashableWeakBox<UIViewController> and conformance HashableWeakBox<A>;
  if (!lazy protocol witness table cache variable for type HashableWeakBox<UIViewController> and conformance HashableWeakBox<A>)
  {
    _s7SwiftUI15HashableWeakBoxVySo16UIViewControllerCGMaTm_0(255, &lazy cache variable for type metadata for HashableWeakBox<UIViewController>, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258, MEMORY[0x1E697E7A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HashableWeakBox<UIViewController> and conformance HashableWeakBox<A>);
  }

  return result;
}

uint64_t outlined init with take of HashableWeakBox<UIViewController>(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI15HashableWeakBoxVySo16UIViewControllerCGMaTm_0(0, &lazy cache variable for type metadata for HashableWeakBox<UIViewController>, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258, MEMORY[0x1E697E7A8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (HashableWeakBox<UIViewController>, ScenePhase)(uint64_t a1)
{
  type metadata accessor for (HashableWeakBox<UIViewController>, ScenePhase)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 1);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 1);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    *(*(v23 + 56) + 8 * v13) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a2, a3, a4 & 1, a1, v23);

    return outlined copy of SceneID(a2, a3, a4 & 1);
  }
}

{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 1);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 1);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    *(*(v23 + 56) + 8 * v13) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a2, a3, a4 & 1, a1, v23);

    return outlined copy of TabCustomizationID.Base();
  }
}

uint64_t outlined destroy of HashableWeakBox<UIViewController>(uint64_t a1)
{
  type metadata accessor for HashableWeakBox<UIViewController>(0, &lazy cache variable for type metadata for HashableWeakBox<UIViewController>, type metadata accessor for UIViewController, MEMORY[0x1E697E7A8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4 & 1;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

void UIWindow.applyAccessibilityProperties(from:)(uint64_t a1)
{
  outlined init with copy of AccessibilityLargeContentViewItem?(a1, v6, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityUIKitTraits?);
  if (!v8)
  {
    outlined destroy of AccessibilityLargeContentViewItem?(v6, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108], MEMORY[0x1E69E6720]);
    goto LABEL_7;
  }

  v3 = v6[0];
  v2 = v6[1];
  v4 = v7;

  outlined destroy of AccessibilityProperties(v6);
  if (!v2)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  if (v4 > 1)
  {

    goto LABEL_7;
  }

  v5 = MEMORY[0x18D00C850](v3, v2);

LABEL_8:
  [v1 setAccessibilityIdentifier_];
}

uint64_t outlined init with copy of AccessibilityLargeContentViewItem?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

{
  Hasher.init(_seed:)();
  _ViewList_ID.Canonical.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v2);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1);
  MEMORY[0x18D00F6F0](a2);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v12[0] = a1;
  v12[1] = a2;
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * v5);
      v8 = v7[1];
      v11[0] = *v7;
      v11[1] = v8;

      v9 = MEMORY[0x18D003E10](v11, v12);

      if (v9)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      if (v8[1] == a2 && *v8 == a1)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v9 = *v8;
      v10 = v8[1];
      v12 = v8[2];
      v11 = v8[3];
      if (v9 == a1 && v10 == HIDWORD(a1) && v12 == a2 && v11 == HIDWORD(a2))
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of Any((*(v10 + 56) + 32 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    memcpy(a3, (*(v10 + 56) + 288 * v8), 0x119uLL);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 34) = 0;
    result = 0.0;
    a3[15] = 0u;
    a3[16] = 0u;
    a3[13] = 0u;
    a3[14] = 0u;
    a3[11] = 0u;
    a3[12] = 0u;
    a3[9] = 0u;
    a3[10] = 0u;
    a3[7] = 0u;
    a3[8] = 0u;
    a3[5] = 0u;
    a3[6] = 0u;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
    *(a3 + 280) = -1;
  }

  return result;
}

uint64_t outlined destroy of RootEnvironmentModifier?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _ss11AnyHashableVSgMaTm_1(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void SceneBridge.rootViewController.setter(void *a1)
{
  swift_unknownObjectWeakAssign();
  v2 = *(v1 + 72);
  if (v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = v2;
      [v4 setUserActivity_];
      v6 = *(v1 + 72);
      *(v1 + 72) = 0;

      [v5 becomeCurrent];
    }
  }
}

id @objc UIHostingController.childForStatusBarHidden.getter(void *a1)
{
  v1 = a1;
  v2 = UIHostingController.childForStatusBarHidden.getter();

  return v2;
}

unint64_t UIHostingController._childForStatusBarHidden.getter()
{
  v1 = v0;
  specialized UIHostingController.host.getter();
  if (_UIHostingView.prefersStatusBarHidden.getter() != 2)
  {
    return 0;
  }

  v2 = specialized UIHostingController.host.getter();
  v3 = _UIHostingView.shouldDeferToChildViewControllerForStatusBar.getter();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = [v1 childViewControllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
LABEL_5:
      v7 = __OFSUB__(v6, 1);
      v8 = v6 - 1;
      if (v7)
      {
        __break(1u);
      }

      else if ((v5 & 0xC000000000000001) == 0)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v8 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v9 = *(v5 + 8 * v8 + 32);
LABEL_10:
          v10 = v9;
          goto LABEL_13;
        }

        __break(1u);
        goto LABEL_26;
      }

      v9 = MEMORY[0x18D00E9C0](v8, v5);
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  v10 = 0;
LABEL_13:

  v11 = [v10 childViewControllerForStatusBarHidden];

  result = v11;
  if (v11)
  {
    return result;
  }

  v13 = [v1 childViewControllers];
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v1 >> 62))
  {
    v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
LABEL_27:

    return 0;
  }

LABEL_16:
  v7 = __OFSUB__(v14, 1);
  result = v14 - 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_31;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_31:
    v15 = MEMORY[0x18D00E9C0](result, v1);
    goto LABEL_21;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v1 + 8 * result + 32);
LABEL_21:
    v16 = v15;

    return v16;
  }

  __break(1u);
  return result;
}

void specialized AppSceneDelegate.hostingView<A>(_:willUpdate:)(uint64_t a1)
{
  if (static AppDelegate.shared)
  {
    v1 = *(static AppDelegate.shared + OBJC_IVAR____TtC7SwiftUI11AppDelegate_mainMenuController);
    if (v1)
    {
      v3 = v1;
      UIKitMainMenuController.documentCommands()();
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>, &type metadata for EnvironmentValues.DocumentCommandsKey, &protocol witness table for EnvironmentValues.DocumentCommandsKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>, &type metadata for EnvironmentValues.DocumentCommandsKey, &protocol witness table for EnvironmentValues.DocumentCommandsKey);

      PropertyList.subscript.setter();
      if (*(a1 + 8))
      {
        PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
      }
    }
  }
}

void type metadata accessor for PropertyListTransform<Data>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata completion function for UserDefaultLocation()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t AppStorage.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  UserDefaultLocation.canonicalLocation.getter();
  UserDefaultLocation.getValue(forReading:)(1, a1);
}

uint64_t UserDefaultLocation.getValue(forReading:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(*v2 + 80);
  v7 = type metadata accessor for Optional();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  type metadata accessor for GraphHost();
  if (static GraphHost.isUpdating.getter() & 1) != 0 && (a1)
  {
    v15 = *(*v2 + 160);
    swift_beginAccess();
    *(v3 + v15) = 1;
  }

  UserDefaultLocation.cachedValue.getter(v14);
  v16 = *(v6 - 8);
  v17 = *(v16 + 48);
  if (v17(v14, 1, v6) == 1)
  {
    v25 = v17;
    v26 = a2;
    v18 = v3[4];
    v19 = v3[5];
    v20 = UserDefaultLocation.store.getter();
    (*(v19 + 8))(v30, v20, v3[2], v3[3], v18, v19);

    type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    v21 = swift_dynamicCast();
    v22 = *(v16 + 56);
    if (v21)
    {
      v22(v11, 0, 1, v6);
      a2 = v26;
      (*(v16 + 32))(v26, v11, v6);
    }

    else
    {
      v22(v11, 1, 1, v6);
      a2 = v26;
      (*(v16 + 16))(v26, v3 + *(*v3 + 104), v6);
    }

    result = v25(v14, 1, v6);
    if (result != 1)
    {
      result = (*(v27 + 8))(v14, v28);
    }
  }

  else
  {
    result = (*(v16 + 32))(a2, v14, v6);
  }

  if ((*(v3 + *(*v3 + 168) + 8) & 1) == 0)
  {
    v24 = v29;
    (*(v16 + 16))(v29, a2, v6);
    (*(v16 + 56))(v24, 0, 1, v6);
    return UserDefaultLocation.cachedValue.setter(v24);
  }

  return result;
}

uint64_t UserDefaultLocation.cachedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t UserDefaultLocation.canonicalLocation.getter()
{
  v1 = *(*v0 + 120);
  if (*(v0 + v1))
  {
    v0 = *(v0 + v1);
  }

  else
  {
  }

  return v0;
}

id UserDefaultLocation.store.getter()
{
  v1 = *(v0 + *(*v0 + 112));
  if (v1)
  {
    v2 = *(v0 + *(*v0 + 112));
  }

  else
  {
    v2 = *(v0 + *(*v0 + 144));
    v1 = 0;
  }

  v3 = v1;
  return v2;
}

void @objc UIHostingController.didMove(toParent:)(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  UIHostingController.willMove(toParent:)(a3, &selRef_didMoveToParentViewController_, UIHostingController._didMove(toParent:));
}

Swift::Void __swiftcall UIHostingController._didMove(toParent:)(UIViewController_optional *toParent)
{
  if (toParent)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  UIHostingController.resolveRequiredBridges(_:allowedActions:)(0, 0, 0, 0, v1);
}

uint64_t PPTTestCase.SubTestName.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void *sub_18BD942FC(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t initializeWithCopy for NavigationPath(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of NavigationPath.Representation(*a2, v5, v6, v7);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;

  return a1;
}

uint64_t outlined copy of NavigationPath.Representation(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    v4 = vars8;
  }
}

uint64_t outlined consume of NavigationPath.Representation(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  return result;
}

uint64_t destroy for NavigationPath(uint64_t a1)
{
  outlined consume of NavigationPath.Representation(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t type metadata completion function for FocusState()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t destroy for SpatialTapGesture(uint64_t result)
{
  if (!*(result + 48))
  {
    return __swift_destroy_boxed_opaque_existential_1(result + 8);
  }

  return result;
}

uint64_t initializeWithCopy for OnTestViewModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t destroy for FocusState(unint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v8 = *(v4 + 8);
  v8(a1, v3);
  v5 = (a1 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = (v5 + *(v4 + 80) + 8) & ~*(v4 + 80);

  return v8(v6, v3);
}

uint64_t destroy for OnTestViewModifier()
{
}

uint64_t initializeWithCopy for FocusState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 64) + 7;
  v9 = ((v8 + a1) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = *(v6 + 80);
  v12 = v9 + v11 + 8;
  v13 = v10 + v11 + 8;

  v7(v12 & ~v11, v13 & ~v11, v5);
  return a1;
}

uint64_t closure #1 in Attribute.init<A>(_:)@<X0>(_DWORD *a1@<X8>)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  result = Attribute.init<A>(body:value:flags:update:)();
  *a1 = result;
  return result;
}

{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  result = Attribute.init<A>(body:value:flags:update:)();
  *a1 = result;
  return result;
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_1@<X0>(_DWORD *a1@<X8>)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  result = Attribute.init<A>(body:value:flags:update:)();
  *a1 = result;
  return result;
}

uint64_t outlined copy of Text?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined copy of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t type metadata completion function for _TaskModifier()
{
  result = type metadata accessor for TaskPriority();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeWithCopy for _TaskModifier(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for TaskPriority();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  return a1;
}

uint64_t destroy for _TaskModifier(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t outlined consume of Text?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t Button.init(action:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, _BYTE *a4@<X8>)
{
  *a4 = 4;
  v7 = &a4[*(type metadata accessor for Button() + 36)];
  *v7 = a1;
  v7[1] = a2;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();

  a3(v8);
}

_BYTE *initializeWithCopy for Button(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v5 = a1;
  *a1 = *a2;
  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 | 7) + 1;
  v9 = &v5[v8] & ~(v7 | 7);
  v10 = (&a2[v8] & ~(v7 | 7));
  v11 = *(*(v6 - 8) + 64) + ((v7 + 75) & ~v7);
  if ((v11 + 1) > 0x30)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 48;
  }

  v13 = v10[v12];
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v12 <= 3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_18;
      }

      v16 = *v10;
    }

    else if (v15 == 2)
    {
      v16 = *v10;
    }

    else if (v15 == 3)
    {
      v16 = *v10 | (v10[2] << 16);
    }

    else
    {
      v16 = *v10;
    }

    v17 = (v16 | (v14 << (8 * v12))) + 3;
    v13 = v16 + 3;
    if (v12 < 4)
    {
      v13 = v17;
    }
  }

LABEL_18:
  if (v13 == 2)
  {
    v32 = *v10;
    v33 = *(v10 + 1);
    v34 = v10[16];
    outlined copy of Environment<AppIntentExecutor?>.Content(*v10, v33, v34);
    *v9 = v32;
    *(v9 + 8) = v33;
    *(v9 + 16) = v34;
    v35 = *(v10 + 3);
    *(v9 + 24) = v35;
    v36 = *(v10 + 5);
    *(v9 + 32) = *(v10 + 4);
    *(v9 + 40) = v36;
    *(v9 + v12) = 2;
    v37 = v35;
LABEL_23:

    goto LABEL_24;
  }

  if (v13 != 1)
  {
    v38 = *(v10 + 1);
    *v9 = *v10;
    *(v9 + 8) = v38;
    *(v9 + v12) = 0;
    goto LABEL_23;
  }

  v46 = a3;
  v18 = *v10;
  v19 = *(v10 + 1);
  v47 = v5;
  v20 = *(v10 + 2);
  v21 = *(v10 + 3);
  v22 = v10[34];
  v23 = *(v10 + 16);
  v44 = *(*(v6 - 8) + 64);
  v45 = v6;
  v43 = *(v6 - 8);
  outlined copy of Environment<OpenURLAction>.Content(*v10, v19, v20, v21, v23, v22);
  *v9 = v18;
  *(v9 + 8) = v19;
  *(v9 + 16) = v20;
  *(v9 + 24) = v21;
  *(v9 + 32) = v23;
  *(v9 + 34) = v22;
  v24 = (v9 + 42) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v10 + 42) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = *(v25 + 16);
  v29 = *(v25 + 24);
  v41 = *(v25 + 32);
  v42 = *(v25 + 34);
  outlined copy of Environment<OpenURLAction>.Content(*v25, v27, v28, v29, v41, v42);
  *v24 = v26;
  *(v24 + 8) = v27;
  *(v24 + 16) = v28;
  *(v24 + 24) = v29;
  *(v24 + 32) = v41;
  *(v24 + 34) = v42;
  v30 = v7 + 35 + v24;
  a3 = v46;
  v5 = v47;
  v31 = v30 & ~v7;
  (*(v43 + 16))(v31, (v7 + 35 + v25) & ~v7, v45);
  *(v31 + v44) = *(((v7 + 35 + v25) & ~v7) + v44);
  *(v9 + v12) = 1;
LABEL_24:
  v39 = *(*(a3 + 16) - 8);
  (*(v39 + 16))((v12 + *(v39 + 80) + 1 + v9) & ~*(v39 + 80), &v10[v12 + 1 + *(v39 + 80)] & ~*(v39 + 80));
  return v5;
}

uint64_t destroy for Button(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + (v6 | 7) + 1) & ~(v6 | 7));
  v8 = *(v5 + 64) + ((v6 + 75) & ~v6);
  if ((v8 + 1) > 0x30)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 48;
  }

  v10 = v7[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_18;
      }

      v13 = *v7;
    }

    else if (v12 == 2)
    {
      v13 = *v7;
    }

    else if (v12 == 3)
    {
      v13 = *v7 | (v7[2] << 16);
    }

    else
    {
      v13 = *v7;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_18:
  if (v10 == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v7, *(v7 + 1), v7[16]);
  }

  else if (v10 == 1)
  {
    v15 = v4;
    outlined consume of Environment<OpenURLAction>.Content(*v7, *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 16), v7[34]);
    v16 = (v7 + 42) & 0xFFFFFFFFFFFFFFF8;
    outlined consume of Environment<OpenURLAction>.Content(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24), *(v16 + 32), *(v16 + 34));
    (*(v5 + 8))((v6 + v16 + 35) & ~v6, v15);
    goto LABEL_23;
  }

LABEL_23:
  v17 = *(*(a2 + 16) - 8);
  v18 = *(v17 + 8);
  v19 = &v7[v9 + 1 + *(v17 + 80)] & ~*(v17 + 80);

  return v18(v19);
}

unint64_t lazy protocol witness table accessor for type DefinesSearchCompletionModifier and conformance DefinesSearchCompletionModifier()
{
  result = lazy protocol witness table cache variable for type DefinesSearchCompletionModifier and conformance DefinesSearchCompletionModifier;
  if (!lazy protocol witness table cache variable for type DefinesSearchCompletionModifier and conformance DefinesSearchCompletionModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefinesSearchCompletionModifier and conformance DefinesSearchCompletionModifier);
  }

  return result;
}

uint64_t sub_18BD95A3C()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_18BD95BA0()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSi_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for UserDefaultLocation<Int>, MEMORY[0x1E69E6530], type metadata accessor for UserDefaultLocation);
  v12 = swift_allocObject();
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = [objc_opt_self() standardUserDefaults];
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 116) = 0;
  *(v12 + 124) = 1;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a6;
  *(v12 + 56) = a5;
  *(v12 + 64) = 0;
  return v12;
}

void type metadata accessor for UserDefaultLocation<Bool?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for PropertyListTransform<Data>(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for UserDefaultLocation();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSiSg_Tt3g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, unint64_t *a8, unint64_t *a9, uint64_t a10)
{
  type metadata accessor for UserDefaultLocation<Bool?>(0, a8, a9, a10);
  v17 = swift_allocObject();
  *(v17 + 80) = 0;
  *(v17 + 88) = 0;
  *(v17 + 96) = 256;
  *(v17 + 104) = [objc_opt_self() standardUserDefaults];
  *(v17 + 112) = 0;
  *(v17 + 120) = 0;
  *(v17 + 124) = 0;
  *(v17 + 132) = 1;
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a6;
  *(v17 + 56) = a7 & 1;
  *(v17 + 64) = a5;
  *(v17 + 72) = 0;
  return v17;
}

uint64_t AppStorage<A>.init<>(_:store:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSiSg_Tt3g5Tm(a1, a2, &unk_1EFFBA410, &protocol witness table for IntegerTransform, a3, 0, 1, &lazy cache variable for type metadata for UserDefaultLocation<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
}

{
  return _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSSSg_Tt3g5Tm(a1, a2, &unk_1EFFBA3D0, &protocol witness table for StringTransform, a3, 0, 0, &lazy cache variable for type metadata for UserDefaultLocation<String?>, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], 1);
}

{
  return _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSbSg_Tt3g5(a1, a2, &unk_1EFFBA430, &protocol witness table for BoolTransform, a3, 2);
}

{
  return _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSiSg_Tt3g5Tm(a1, a2, &unk_1EFFBA3F0, &protocol witness table for DoubleTransform, a3, 0, 1, &lazy cache variable for type metadata for UserDefaultLocation<Double?>, &lazy cache variable for type metadata for Double?, MEMORY[0x1E69E63B0]);
}

{
  v6 = MEMORY[0x1E6969080];
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for PropertyListTransform<Data>, MEMORY[0x1E6969080], type metadata accessor for PropertyListTransform);
  return _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSSSg_Tt3g5Tm(a1, a2, v7, &protocol witness table for PropertyListTransform<A>, a3, 0, 0xF000000000000000, &lazy cache variable for type metadata for UserDefaultLocation<Data?>, &lazy cache variable for type metadata for Data?, v6, 0xB000000000000000);
}

uint64_t _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSSSg_Tt3g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t *a8, unint64_t *a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for UserDefaultLocation<Bool?>(0, a8, a9, a10);
  v18 = swift_allocObject();
  *(v18 + 80) = 0;
  *(v18 + 88) = 0;
  *(v18 + 96) = a11;
  *(v18 + 104) = [objc_opt_self() standardUserDefaults];
  *(v18 + 112) = 0;
  *(v18 + 120) = 0;
  *(v18 + 124) = 0;
  *(v18 + 132) = 1;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  *(v18 + 64) = a5;
  *(v18 + 72) = 0;
  return v18;
}

void specialized static ScalarUserDefaultsValueTransform.readValue(from:key:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = MEMORY[0x18D00C850](a2, a3);
  v9 = [a1 objectForKey_];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of Any?(v12);
    a4[3] = MEMORY[0x1E69E6530];
    v10 = MEMORY[0x18D00C850](a2, a3);
    v11 = [a1 integerForKey_];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    outlined destroy of Any?(v12);
    v11 = 0;
    a4[1] = 0;
    a4[2] = 0;
    a4[3] = 0;
  }

  *a4 = v11;
}

{
  v8 = MEMORY[0x18D00C850](a2, a3);
  v9 = [a1 objectForKey_];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of Any?(v13);
    a4[3] = MEMORY[0x1E69E63B0];
    v10 = MEMORY[0x18D00C850](a2, a3);
    [a1 doubleForKey_];
    v12 = v11;
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    outlined destroy of Any?(v13);
    a4[1] = 0;
    a4[2] = 0;
    v12 = 0;
    a4[3] = 0;
  }

  *a4 = v12;
}

uint64_t UIKitEventBindingBridge.__deallocating_deinit()
{
  v0 = EventBindingBridge.deinit();
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t @objc DeprecatedAlertBridge.__ivar_destroyer(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  outlined destroy of weak FallbackResponderProvider?(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);

  v3 = *((*v2 & *a1) + 0x88);
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);

  return v5(&a1[v3], v4);
}

id SheetBridge.__deallocating_deinit()
{
  v1 = v0;
  if ((*(v0 + direct field offset for SheetBridge.hasWindow) & 1) == 0)
  {
    v2 = direct field offset for SheetBridge.presentationState;
    swift_beginAccess();
    outlined init with copy of PresentationState(v1 + v2, v11);
    v3 = PresentationState.Base.presentedVC.getter();
    outlined destroy of PresentationState(v11);
    if (v3)
    {
      v4 = v3;
      v5 = [v4 presentingViewController];
      v6 = v4;
      if (v5)
      {
        v7 = v5;

        v6 = v7;
      }

      static Transaction.current.getter();
      v8 = Transaction.disablesAnimations.getter();

      [v6 dismissViewControllerAnimated:(v8 & 1) == 0 completion:0];
    }
  }

  v10.receiver = v1;
  v10.super_class = type metadata accessor for SheetBridge();
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

uint64_t FocusBridge.__deallocating_deinit()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + 24);

  outlined destroy of FocusItem?(v0 + 88);
  swift_weakDestroy();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t UIKitSensoryFeedbackCache.__deallocating_deinit()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocClassInstance();
}

id ContextMenuBridge.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_popoverBridgeToken];
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain_n();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];
    swift_unknownObjectRelease_n();
  }

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

id _UIHostingView.__deallocating_deinit()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v4 = *(v0 + v3);
  type metadata accessor for _UIHostingView();
  swift_getWitnessTable();
  v5 = v4;
  v6 = v0;
  UIHostingViewBase.tearDown(uiView:updateDelegate:)();

  v7 = [objc_opt_self() defaultCenter];
  [v7 removeObserver_];

  v8 = *(v1 + v3);
  UIHostingViewBase.clearDisplayLink()();

  v9 = *(v1 + v3);
  UIHostingViewBase.clearUpdateTimer()();

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = swift_checkMetadataState();
  HostingViewRegistry.remove<A>(_:)(v6);
  v11 = v6 + *((*v2 & *v6) + 0xE8);
  if ((v11[8] & 1) == 0)
  {
    v12 = *(v11 + 1);
    notify_cancel(*v11);
    notify_cancel(v12);
  }

  v14.receiver = v6;
  v14.super_class = v10;
  return objc_msgSendSuper2(&v14, sel_dealloc);
}

uint64_t destroy for FocusStore()
{
}

unint64_t specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v7 = v6;
  if (v6)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v11;
    }

    outlined init with take of WeakBox<Swift.AnyObject>(*(v10 + 56) + 8 * v8, a2);
    result = specialized _NativeDictionary._delete(at:)(v8, v10);
    *v3 = v10;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v7 & 1) == 0;
  return result;
}

uint64_t HostingViewRegistry.remove<A>(_:)(uint64_t a1)
{
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1, v3);
  outlined destroy of WeakBox<Swift.AnyObject>(v3, type metadata accessor for WeakBox<Swift.AnyObject>?);
  return swift_endAccess();
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v9 = MEMORY[0x1E69E7C98];
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = MEMORY[0x18D00F6C0](*(a2 + 40), *v11);
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = (v10 + 8 * v3);
      if (v3 != v6 || v15 >= v11 + 1)
      {
        *v15 = *v11;
      }

      if (v3 < v6 || *(a2 + 56) + 8 * v3 >= *(a2 + 56) + 8 * v6 + 8)
      {
        type metadata accessor for [TabCustomizationID](0, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, v9 + 8, MEMORY[0x1E6981A78]);
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        type metadata accessor for [TabCustomizationID](0, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, v9 + 8, MEMORY[0x1E6981A78]);
        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

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
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x18D00F6C0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

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
      outlined init with copy of AccessibilityRelationshipScope.Key(*(a2 + 48) + 48 * v6, v22);
      Hasher.init(_seed:)();
      AnyHashable.hash(into:)();
      MEMORY[0x18D00F6F0](v23);
      v9 = Hasher._finalize()();
      result = outlined destroy of AccessibilityRelationshipScope.Key(v22);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 48 * v3);
        v13 = (v11 + 48 * v6);
        if (v3 != v6 || v12 >= v13 + 3)
        {
          v14 = *v13;
          v15 = v13[2];
          v12[1] = v13[1];
          v12[2] = v15;
          *v12 = v14;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

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
      v12 = *(a2 + 48);
      v13 = (v12 + 4 * v6);
      result = MEMORY[0x18D00F6B0](*(a2 + 40), *v13, 4);
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = (v12 + 4 * v3);
          if (v3 != v6 || v17 >= v13 + 1)
          {
            *v17 = *v13;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + (v3 << 6));
          v20 = (v18 + (v6 << 6));
          if (v3 != v6 || v19 >= v20 + 4)
          {
            v9 = *v20;
            v10 = v20[1];
            v11 = v20[3];
            v19[2] = v20[2];
            v19[3] = v11;
            *v19 = v9;
            v19[1] = v10;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

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
      outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v6, v24);
      v9 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = outlined destroy of AnyHashable(v24);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = v13 + 40 * v3;
          v15 = (v13 + 40 * v6);
          if (v3 != v6 || v14 >= v15 + 40)
          {
            v16 = *v15;
            v17 = v15[1];
            *(v14 + 32) = *(v15 + 4);
            *v14 = v16;
            *(v14 + 16) = v17;
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
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

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

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v26 = v4;
    do
    {
      v9 = 24 * v6;
      v10 = *(a2 + 48) + 24 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      Hasher.init(_seed:)();
      if (v13)
      {
        MEMORY[0x18D00F6F0](v11);
        Hasher._combine(_:)(v12);
      }

      else
      {

        String.hash(into:)();
      }

      v14 = Hasher._finalize()();
      result = outlined consume of SceneID(v11, v12, v13);
      v15 = v14 & v7;
      if (v3 >= v8)
      {
        v4 = v26;
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v26;
        if (v15 >= v8)
        {
          goto LABEL_13;
        }
      }

      if (v3 >= v15)
      {
LABEL_13:
        v16 = *(a2 + 48);
        v17 = v16 + 24 * v3;
        v18 = (v16 + v9);
        if (24 * v3 < v9 || v17 >= v18 + 24 || v3 != v6)
        {
          v19 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 8 * v3);
        v22 = (v20 + 8 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

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
      outlined init with copy of HashableWeakBox<UIViewController>(*(a2 + 48) + 16 * v6, v17);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v18);
      v9 = Hasher._finalize()();
      result = outlined destroy of HashableWeakBox<UIViewController>(v17);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        if (v3 < v6 || *(a2 + 48) + 16 * v3 >= *(a2 + 48) + 16 * v6 + 16)
        {
          _ss14PartialKeyPathCySo21UISplitViewControllerCGMaTm_0(0, &lazy cache variable for type metadata for HashableWeakBox<UIViewController>, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258, MEMORY[0x1E697E7A8]);
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v3 != v6)
        {
          _ss14PartialKeyPathCySo21UISplitViewControllerCGMaTm_0(0, &lazy cache variable for type metadata for HashableWeakBox<UIViewController>, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258, MEMORY[0x1E697E7A8]);
          result = swift_arrayInitWithTakeBackToFront();
        }

        v11 = *(a2 + 56);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v14 = *(a2 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v16;
    ++*(a2 + 36);
  }

  return result;
}

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
      outlined init with copy of NavigationLinkSelectionIdentifier(*(a2 + 48) + (v6 << 6), v32);
      Hasher.init(_seed:)();
      outlined init with copy of WeakBox<Swift.AnyObject>(v32, &v29, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
      if (*(&v30 + 1))
      {
        v26 = v29;
        v27 = v30;
        v28 = v31;
        Hasher._combine(_:)(1u);
        v9 = *(&v27 + 1);
        v10 = v28;
        __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
        (*(v10 + 24))(v25, v9, v10);
        AnyHashable.hash(into:)();
        outlined destroy of AnyHashable(v25);
        outlined destroy of AnyNavigationLinkPresentedValue(&v26);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      if (*(&v33 + 1) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v29 = v33;
        Hasher._combine(_:)(1u);

        _ViewList_ID.Canonical.hash(into:)();
      }

      MEMORY[0x18D00F6F0](v34);
      v11 = Hasher._finalize()();
      result = outlined destroy of NavigationLinkSelectionIdentifier(v32);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_16;
      }

      if (v3 >= v12)
      {
LABEL_16:
        v13 = *(a2 + 48);
        v14 = (v13 + (v3 << 6));
        v15 = (v13 + (v6 << 6));
        if (v3 != v6 || v14 >= v15 + 4)
        {
          v16 = *v15;
          v17 = v15[1];
          v18 = v15[3];
          v14[2] = v15[2];
          v14[3] = v18;
          *v14 = v16;
          v14[1] = v17;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 8 * v3);
        v21 = (v19 + 8 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

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
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

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
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

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
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v25 = v4;
    do
    {
      v9 = 24 * v6;
      v10 = v2;
      v11 = *(*(v2 + 48) + 24 * v6 + 16);
      v12 = v8;
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v11);

      String.hash(into:)();
      v13 = Hasher._finalize()();
      result = outlined consume of TabCustomizationID.Base();
      v8 = v12;
      v14 = v13 & v7;
      if (v3 >= v12)
      {
        if (v14 < v12)
        {
          v4 = v25;
          v2 = v10;
        }

        else
        {
          v4 = v25;
          v2 = v10;
          if (v3 >= v14)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v25;
        v2 = v10;
        if (v14 >= v8 || v3 >= v14)
        {
LABEL_11:
          v15 = *(v2 + 48);
          v16 = v15 + 24 * v3;
          v17 = (v15 + v9);
          if (24 * v3 < v9 || v16 >= v17 + 24 || v3 != v6)
          {
            v18 = *v17;
            *(v16 + 16) = *(v17 + 2);
            *v16 = v18;
          }

          v19 = *(v2 + 56);
          v20 = (v19 + 2 * v3);
          v21 = (v19 + 2 * v6);
          if (v3 != v6 || v20 >= v21 + 1)
          {
            *v20 = *v21;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(v2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v24;
    ++*(v2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v25 = v4;
    do
    {
      v9 = 24 * v6;
      v10 = v2;
      v11 = *(*(v2 + 48) + 24 * v6 + 16);
      v12 = v8;
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v11);

      String.hash(into:)();
      v13 = Hasher._finalize()();
      result = outlined consume of TabCustomizationID.Base();
      v8 = v12;
      v14 = v13 & v7;
      if (v3 >= v12)
      {
        if (v14 < v12)
        {
          v4 = v25;
          v2 = v10;
        }

        else
        {
          v4 = v25;
          v2 = v10;
          if (v3 >= v14)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v25;
        v2 = v10;
        if (v14 >= v8 || v3 >= v14)
        {
LABEL_11:
          v15 = *(v2 + 48);
          v16 = v15 + 24 * v3;
          v17 = (v15 + v9);
          if (24 * v3 < v9 || v16 >= v17 + 24 || v3 != v6)
          {
            v18 = *v17;
            *(v16 + 16) = *(v17 + 2);
            *v16 = v18;
          }

          v19 = *(v2 + 56);
          v20 = (v19 + 8 * v3);
          v21 = (v19 + 8 * v6);
          if (v3 != v6 || v20 >= v21 + 1)
          {
            *v20 = *v21;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(v2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v24;
    ++*(v2 + 36);
  }

  return result;
}

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
      outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = outlined destroy of AnyHashable(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v30 = a2 + 64;
    v28 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v8 = 40 * v6;
      v9 = *(v2 + 48) + 40 * v6;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      v14 = *(v9 + 32);
      Hasher.init(_seed:)();
      if (v14)
      {
        MEMORY[0x18D00F6F0](1);

        String.hash(into:)();
      }

      else
      {
        MEMORY[0x18D00F6F0](0);
      }

      String.hash(into:)();
      v15 = Hasher._finalize()();
      result = outlined consume of TableColumnCustomizationID.Base(v10, v11, v12, v13, v14);
      v16 = v15 & v7;
      if (v3 >= v28)
      {
        v2 = a2;
        v4 = v30;
        if (v16 < v28)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v2 = a2;
        v4 = v30;
        if (v16 >= v28)
        {
          goto LABEL_13;
        }
      }

      if (v3 >= v16)
      {
LABEL_13:
        v17 = *(v2 + 48);
        v18 = v17 + 40 * v3;
        v19 = (v17 + v8);
        if (40 * v3 < v8 || v18 >= v19 + 40 || v3 != v6)
        {
          v20 = *v19;
          v21 = v19[1];
          *(v18 + 32) = *(v19 + 4);
          *v18 = v20;
          *(v18 + 16) = v21;
        }

        v22 = *(v2 + 56);
        v23 = (v22 + 16 * v3);
        v24 = (v22 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v23 >= v24 + 1))
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
    ++*(v2 + 36);
  }

  return result;
}

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
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x18D00F6C0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      if (v3 < v6 || *(a2 + 56) + 8 * v3 >= *(a2 + 56) + 8 * v6 + 8)
      {
        type metadata accessor for SceneStorage<TabSidebarCustomization>(0, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78]);
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        type metadata accessor for SceneStorage<TabSidebarCustomization>(0, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78]);
        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v15 = *(a2 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v17;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    _ss14PartialKeyPathCySo21UISplitViewControllerCGMaTm_0(0, &lazy cache variable for type metadata for PartialKeyPath<UISplitViewController>, &lazy cache variable for type metadata for UISplitViewController, 0x1E69DCF78, MEMORY[0x1E69E6B88]);
    do
    {
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = (v13 + 8 * v3);
          v15 = (v13 + 8 * v6);
          if (v3 != v6 || v14 >= v15 + 1)
          {
            *v14 = *v15;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

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
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v15 >= v16 + 1))
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

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
      v12 = 48 * v6;
      outlined init with copy of TableRowID(*(a2 + 48) + 48 * v6, v32);
      Hasher.init(_seed:)();
      outlined init with copy of TableRowID(v32, v29);
      if (v31)
      {
        v27[0] = v29[0];
        v27[1] = v29[1];
        v28 = v30;
        MEMORY[0x18D00F6F0](1);
        AnyHashable.hash(into:)();
        outlined destroy of AnyHashable(v27);
      }

      else
      {
        v13 = *&v29[0];
        MEMORY[0x18D00F6F0](0);
        MEMORY[0x18D00F6F0](v13);
      }

      v14 = Hasher._finalize()();
      result = outlined destroy of TableRowID(v32);
      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v15)
      {
LABEL_13:
        v16 = *(a2 + 48);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + v12);
        if (48 * v3 < v12 || v17 >= v18 + 3 || v3 != v6)
        {
          v19 = *v18;
          v20 = v18[2];
          v17[1] = v18[1];
          v17[2] = v20;
          *v17 = v19;
        }

        v21 = *(a2 + 56);
        v22 = v21 + 56 * v3;
        v23 = (v21 + 56 * v6);
        if (56 * v3 < (56 * v6) || v22 >= v23 + 56 || v3 != v6)
        {
          v9 = *v23;
          v10 = v23[1];
          v11 = v23[2];
          *(v22 + 48) = *(v23 + 6);
          *(v22 + 16) = v10;
          *(v22 + 32) = v11;
          *v22 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

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
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = MEMORY[0x18D00F6C0](*(a2 + 40), *v11);
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (32 * v3 != 32 * v6 || (v3 = v6, v17 >= v18 + 2))
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

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
      outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v6, v26);
      v11 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = outlined destroy of AnyHashable(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = v20 + 40 * v3;
          v22 = (v20 + 40 * v6);
          if (v3 != v6 || v21 >= v22 + 40)
          {
            v9 = *v22;
            v10 = v22[1];
            *(v21 + 32) = *(v22 + 4);
            *v21 = v9;
            *(v21 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}