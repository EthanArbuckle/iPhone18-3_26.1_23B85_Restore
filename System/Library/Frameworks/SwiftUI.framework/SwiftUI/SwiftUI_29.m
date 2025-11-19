uint64_t specialized NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v6 = v5;
  LODWORD(v260) = a5;
  v261 = a4;
  v263 = a3;
  type metadata accessor for UINavigationPresentationAdaptor?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v252 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v252 - v13;
  v262 = a1;
  outlined init with copy of NavigationState.Base(a1, v267);
  v15 = MEMORY[0x1E69E7D40];
  v16 = (v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0x70));
  swift_beginAccess();
  v17 = v16[2];
  if (!v17)
  {
    goto LABEL_248;
  }

  v20 = v16;
  v18 = *v16;
  v19 = v20[1];
  outlined init with copy of NavigationState.Base(v267, v269);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v19;
  v21[4] = v17;
  *(&v269[28] + 1) = implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:)specialized partial apply;
  *&v269[29] = v21;
  *(&v269[29] + 1) = v17;
  outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v269, v271, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);

  outlined copy of NavigationStrategy_Phone?(v18, v19, v17);
  v22 = specialized NavigationState.StackContent.Views.ViewsSequence.unusedRoots()();
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v269, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  outlined destroy of NavigationState.StackContent.Views(v267);
  v23 = *v15 & *v6;
  v24 = *(v23 + 0x78);
  if (*(v6 + v24) != 2)
  {
    v32 = a2;
    static Log.navigation.getter();
    v33 = type metadata accessor for Logger();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v14, 1, v33) == 1)
    {
      outlined destroy of UINavigationPresentationAdaptor?(v14, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v258 = v22;
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_18BD4A000, v60, v61, "Updating stack views in place after end-user triggered transition or isTransitioningViewControllers", v62, 2u);
        MEMORY[0x18D0110E0](v62, -1, -1);
      }

      (*(v34 + 8))(v14, v33);
      v22 = v258;
    }

    v39 = v32;
    specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(v263, v271, v261, partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:));
    v11 = v6;
    v15 = *(v6 + v24);
    if (*(v6 + v24) != 2)
    {
      *(v6 + v24) = 2;
      v63 = NavigationState.Base.count.getter();
      v64 = NavigationState.Base.count.getter();
      v65 = __OFSUB__(v63, v64);
      v66 = v63 - v64;
      if (v65)
      {
        goto LABEL_225;
      }

      v6 = (v15 & 0x100);
      if ((v15 & 0x100) != 0)
      {
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v68 = Strong;
          swift_beginAccess();
          v69 = v68[8];
          v267[6] = v68[7];
          v267[7] = v69;
          v267[8] = v68[9];
          *(&v267[8] + 10) = *(v68 + 154);
          v70 = v68[4];
          v267[2] = v68[3];
          v267[3] = v70;
          v71 = v68[6];
          v267[4] = v68[5];
          v267[5] = v71;
          v72 = v68[2];
          v267[0] = v68[1];
          v267[1] = v72;
          outlined init with copy of NavigationState.StackContent?(v267, v264, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);

          v269[6] = v267[6];
          v269[7] = v267[7];
          v269[8] = v267[8];
          *(&v269[8] + 10) = *(&v267[8] + 10);
          v269[2] = v267[2];
          v269[3] = v267[3];
          v269[4] = v267[4];
          v269[5] = v267[5];
          v269[0] = v267[0];
          v269[1] = v267[1];
          if (getEnumTag for AccessibilityActionCategory.Category(v269) != 1)
          {
            v264[6] = v269[6];
            v264[7] = v269[7];
            v265[0] = v269[8];
            *(v265 + 10) = *(&v269[8] + 10);
            v264[2] = v269[2];
            v264[3] = v269[3];
            v264[4] = v269[4];
            v264[5] = v269[5];
            v264[0] = v269[0];
            v264[1] = v269[1];
            v73 = v11 + *((*MEMORY[0x1E69E7D40] & *v11) + 0x60);
            v74 = NavigationState.pendingPopCount(in:)(*v73, v73[8], *(v73 + 2));
            outlined destroy of PPTTestCase?(v267, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
            v65 = __OFADD__(v66, v74);
            v66 += v74;
            if (v65)
            {
              goto LABEL_239;
            }
          }
        }
      }

      if (v66 >= 1)
      {
        v258 = v22;
        v75 = -v66;
        v76 = v11 + *((*MEMORY[0x1E69E7D40] & *v11) + 0x68);
        if ((v15 & 1) == 0)
        {
          outlined init with copy of NavigationAuthority(v76, v269);
          v86 = NavigationAuthority.controllerCache.getter();
          outlined destroy of NavigationAuthority(v269);
          v136 = specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(v39, v11, v267);
          v137 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v136);
          v141 = specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(0, 1, 0, 2, v75, v137, v138 & 1, v139, v140);
          if (v144 != -1)
          {
            v87 = v141;
            v24 = v142;
            goto LABEL_97;
          }

          goto LABEL_96;
        }

        outlined init with copy of NavigationAuthority(v76, v269);
        v24 = NavigationAuthority.controllerCache.getter();
        outlined destroy of NavigationAuthority(v269);
        v77 = specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(v39, v11, v267);
        v78 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v77);
        v82 = specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(0, 1, 0, 2, -v66, v78, v79 & 1, v80, v81);
        if (v85 != -1)
        {
          v86 = v82;
          v87 = v83;
          goto LABEL_85;
        }

        goto LABEL_84;
      }
    }

LABEL_204:
    if (v22)
    {
      v232 = v11 + *((*MEMORY[0x1E69E7D40] & *v11) + 0x68);
      goto LABEL_222;
    }

    return outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v271, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  }

  v266 = 1;
  v25 = *(v23 + 128);
  *(v6 + v25) = 1;
  if ((*(v6 + *((*v15 & *v6) + 0x98)) & 1) == 0)
  {
    goto LABEL_12;
  }

  v26 = [v263 view];
  if (!v26)
  {
    goto LABEL_252;
  }

  v27 = v26;
  v28 = [v26 window];

  if (v28 && (v29 = [v28 windowScene], v28, v29))
  {
    if ([objc_opt_self() areAnimationsEnabled])
    {
      if ([v29 activationState])
      {
        v30 = [v29 activationState];

        v31 = v30 == 1;
      }

      else
      {

        v31 = 1;
      }

      v257 = v31;
    }

    else
    {

      v257 = 0;
    }
  }

  else
  {
LABEL_12:
    v257 = 0;
  }

  v256 = v25;
  v259 = a2;
  outlined init with copy of NavigationState.StackContent(a2, v269);
  v35 = NavigationState.StackContent.change(from:)(v269);
  v37 = v36;
  outlined destroy of PPTTestCase?(v269, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  v254 = 0;
  static Log.navigation.getter();
  v38 = type metadata accessor for Logger();
  v33 = *(v38 - 8);
  if ((*(v33 + 48))(v11, 1, v38) != 1)
  {
    v258 = v35;
    v255 = v6;
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v252 = swift_slowAlloc();
      *&v267[0] = v252;
      *v90 = 136315138;
      *&v269[0] = v258;
      BYTE8(v269[0]) = v37 & 1;
      v91 = String.init<A>(describing:)();
      v253 = v37;
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, v267);
      LOBYTE(v37) = v253;

      *(v90 + 4) = v93;
      v15 = MEMORY[0x1E69E7D40];
      _os_log_impl(&dword_18BD4A000, v88, v89, "Updating stack content for change: %s", v90, 0xCu);
      v94 = v252;
      __swift_destroy_boxed_opaque_existential_1(v252);
      MEMORY[0x18D0110E0](v94, -1, -1);
      MEMORY[0x18D0110E0](v90, -1, -1);
    }

    v6 = v255;
    v95 = *(v33 + 8);
    v33 += 8;
    v95(v11, v38);
    v35 = v258;
    v39 = v259;
    if ((v37 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_45:
    if (v35 > 1)
    {
      if (v35 == 2)
      {
        goto LABEL_61;
      }

      v145 = *((*v15 & *v6) + 0x68);
      outlined init with copy of NavigationAuthority(v6 + v145, v269);
      NavigationAuthority.controllerCache.getter();
      outlined destroy of NavigationAuthority(v269);
      v146 = *(v6 + *((*v15 & *v6) + 0x60) + 8);
      if (v146 >= 3)
      {
        LOBYTE(v146) = 3;
      }

      LOBYTE(v269[0]) = v146;
      NavigationHostingControllerCache_UIKit.ejectAll(in:)(v269);

      v147 = v263;

      *&v267[0] = 0;
      BYTE8(v267[0]) = 1;
      outlined init with copy of NavigationAuthority(v6 + v145, v269);
      v148 = NavigationAuthority.controllerCache.getter();
      v149 = outlined destroy of NavigationAuthority(v269);
      MEMORY[0x1EEE9AC00](v149);
      *(&v252 - 6) = v271;
      *(&v252 - 5) = v261;
      *(&v252 - 4) = v6;
      *(&v252 - 3) = v147;
      v250 = v267;
      v150 = v6;
      v151 = v147;
      v152 = v150;
      v15 = MEMORY[0x1E69E7D40];
      specialized NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(v147, 0, partial apply for specialized closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:), (&v252 - 8), v148, v152, v260 & 1, v151, 0);

      goto LABEL_218;
    }

    v96 = v261;
    if (v35)
    {
      specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(v263, v271, v261, partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:));
      goto LABEL_218;
    }

    outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v271, v267, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    specialized Collection.dropLast(_:)(1uLL, v269);
    specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(v263, v269, v96, partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:));
    v97 = outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v269, type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>);
    specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v97);
    if ((v100 & 1) == 0 || v99 != 2 || v98)
    {
      v101 = specialized NavigationState.StackContent.Views.ViewsSequence.index(before:)(0, 1, 0, 2);
      specialized NavigationState.StackContent.Views.ViewsSequence.subscript.getter(v101, v102 & 1, v103, v104);
      outlined init with copy of NavigationAuthority(v6 + *((*v15 & *v6) + 0x68), v267);
      NavigationAuthority.controllerCache.getter();
      v105 = outlined destroy of NavigationAuthority(v267);
      MEMORY[0x1EEE9AC00](v105);
      *(&v252 - 4) = v269;
      *(&v252 - 3) = v96;
      v251 = v263;
      MEMORY[0x1EEE9AC00](v263);
      *(&v252 - 8) = v106;
      *(&v252 - 7) = v6;
      *(&v252 - 6) = v269;
      *(&v252 - 40) = v257;
      *(&v252 - 4) = v262;
      *(&v252 - 3) = v39;
      v250 = &v266;
      specialized NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(v106, 0, partial apply for specialized closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:), v107, partial apply for specialized closure #3 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:), (&v252 - 10));

      v15 = MEMORY[0x1E69E7D40];
      outlined destroy of NavigationState.StackContent.PositionedView(v269);
      goto LABEL_218;
    }

    goto LABEL_255;
  }

  outlined destroy of UINavigationPresentationAdaptor?(v11, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  v39 = v259;
  if (v37)
  {
    goto LABEL_45;
  }

LABEL_15:
  v33 = &selRef_titleTextAttributes;
  v24 = v35;
  if (v35 == 1)
  {
    v40 = [v263 viewControllers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
    v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = v41 >> 62 ? __CocoaSet.count.getter() : *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v42 >= 2)
    {
      outlined init with copy of NavigationAuthority(v6 + *((*v15 & *v6) + 0x68), v269);
      NavigationAuthority.controllerCache.getter();
      outlined destroy of NavigationAuthority(v269);
      v43 = specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(v39, v6, v269);
      specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v43);
      if ((v46 & 1) != 0 && v45 == 2 && !v44)
      {
        goto LABEL_254;
      }

      v47 = specialized NavigationState.StackContent.Views.ViewsSequence.index(before:)(0, 1, 0, 2);
      v48 = *&v269[30];
      specialized NavigationState.StackContent.Views.ViewsSequence.subscript.getter(v47, v49 & 1, v50, v51);
      v48(v264, v267);
      outlined destroy of NavigationState.StackContent.PositionedView(v267);
      v52 = v264[0];
      v53 = *(&v264[0] + 1);
      outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v269, type metadata accessor for LazyMapSequence<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>, NavigationContentAbstractPosition>);
      LOBYTE(v267[0]) = v52;
      *(&v267[0] + 1) = v53;
      v54 = v267;
      NavigationHostingControllerCache_UIKit.eject(at:)(*&v54);

      v55 = [v263 &selRef_documentBrowser_didImportDocumentAtURL_toDestinationURL_];
      v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = (v56 >> 62);
      if (!(v56 >> 62))
      {
        v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!__OFSUB__(0, v57))
        {
LABEL_24:
          if (v57)
          {
            v58 = v57 - 1;
            if (__OFSUB__(v57, 1))
            {
              goto LABEL_240;
            }

            if (v58 < 0)
            {
              goto LABEL_241;
            }

            if (!v15)
            {
              goto LABEL_28;
            }
          }

          else
          {
LABEL_108:
            v58 = 0;
            if (!v15)
            {
LABEL_28:
              v59 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_111;
            }
          }

          if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
          {
            v59 = __CocoaSet.count.getter();
LABEL_111:
            if (v59 >= v58)
            {
              if ((v56 & 0xC000000000000001) != 0)
              {

                if (v58)
                {
                  v161 = 0;
                  do
                  {
                    v162 = v161 + 1;
                    _ArrayBuffer._typeCheckSlowPath(_:)(v161);
                    v161 = v162;
                  }

                  while (v58 != v162);
                }
              }

              else
              {
              }

              v163 = v22;

              if (v15)
              {
                _CocoaArrayWrapper.subscript.getter();
                v165 = v166;
                v164 = v167;
                v169 = v168;

                v58 = v169 >> 1;
              }

              else
              {
                v164 = 0;
                v165 = (v56 & 0xFFFFFFFFFFFFFF8) + 32;
              }

              v170 = v261;
              v15 = MEMORY[0x1E69E7D40];
              if (v164 == v58)
              {
                swift_unknownObjectRelease();
                v171 = 0;
              }

              else
              {
                if (v58 - 1 < v164)
                {
                  goto LABEL_243;
                }

                v171 = *(v165 + 8 * (v58 - 1));
                swift_unknownObjectRelease();
              }

              v172 = v259;
              *(v6 + *((*v15 & *v6) + 0x88)) = v171;
              v22 = v163;
              if (v257)
              {
                outlined init with copy of NavigationState.StackContent(v172, v269);
                v173 = NavigationState.StackContent.shouldAnimate(from:)(v269);
                outlined destroy of PPTTestCase?(v269, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
              }

              else
              {
                v173 = 0;
              }

              v174 = v263;

              specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(v174, v271, v170, partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:));
              v175 = [v174 transitionCoordinator];
              if (v175)
              {
                if (v173)
                {
                  v266 = 1;
                  v176 = v175;
                  v177 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  *&v269[2] = closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)specialized partial apply;
                  *(&v269[2] + 1) = v177;
                  *&v269[0] = MEMORY[0x1E69E9820];
                  *(&v269[0] + 1) = 1107296256;
                  v178 = &block_descriptor_189;
                  goto LABEL_215;
                }

                goto LABEL_216;
              }

              goto LABEL_217;
            }

LABEL_236:
            __break(1u);
LABEL_237:
            __break(1u);
            goto LABEL_238;
          }

LABEL_235:
          __break(1u);
          goto LABEL_236;
        }

LABEL_234:
        __break(1u);
        goto LABEL_235;
      }

LABEL_232:
      v57 = __CocoaSet.count.getter();
      if (!__OFSUB__(0, v57))
      {
        goto LABEL_24;
      }

      goto LABEL_234;
    }
  }

  v108 = [v263 viewControllers];
  v11 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
  v109 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v109 >> 62)
  {
    goto LABEL_227;
  }

  for (i = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (i >= 2)
    {
      v111 = [v263 *(v33 + 3144)];
      v112 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v113 = v112 >> 62 ? __CocoaSet.count.getter() : *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v24 < v113)
      {
        break;
      }
    }

LABEL_61:
    v125 = NavigationState.Base.count.getter();
    v126 = NavigationState.Base.count.getter();
    v24 = v125 - v126;
    if (__OFSUB__(v125, v126))
    {
      goto LABEL_226;
    }

    if (v24 >= 1)
    {
      v258 = v22;
      outlined init with copy of NavigationAuthority(v6 + *((*v15 & *v6) + 0x68), v269);
      v11 = NavigationAuthority.controllerCache.getter();
      outlined destroy of NavigationAuthority(v269);
      v127 = specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(v39, v6, v267);
      v128 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v127);
      v132 = specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(0, 1, 0, 2, -v24, v128, v129 & 1, v130, v131);
      if (v135 == 0xFF)
      {
        v132 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v132);
      }

      v87 = v132;
      v124 = v133;
      v22 = v134;
      v86 = v135;
      v82 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v132);
      if ((v155 & 1) == 0)
      {
        goto LABEL_76;
      }

      if (v124)
      {
        goto LABEL_164;
      }

      __break(1u);
LABEL_76:
      if (v124)
      {
        goto LABEL_164;
      }

      if (v87 < v82)
      {
        goto LABEL_242;
      }

      if (v82 < v87)
      {
        goto LABEL_164;
      }

      if (v86)
      {
        if (v86 == 1)
        {
          if (v154 != 1 || v22 >= v153)
          {
            goto LABEL_164;
          }

          __break(1u);
LABEL_84:
          v82 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v82);
          v86 = v82;
          v87 = v156;
LABEL_85:
          v22 = v84;
          v124 = v85;
          v15 = MEMORY[0x1E69E7D40];
          v141 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v82);
          if (v157)
          {
            if (v87)
            {
              goto LABEL_195;
            }

            __break(1u);
          }

          if (v87)
          {
            goto LABEL_195;
          }

          if (v86 < v141)
          {
            goto LABEL_244;
          }

          if (v141 < v86)
          {
            goto LABEL_195;
          }

          if (v124)
          {
            if (v124 == 1)
            {
              if (v154 != 1 || v22 >= v153)
              {
                goto LABEL_195;
              }

              __break(1u);
LABEL_96:
              v141 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v141);
              v87 = v141;
              v24 = v158;
LABEL_97:
              v22 = v143;
              v124 = v144;
              v56 = v267;
              v159 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v141);
              if (v160)
              {
                if (v24)
                {
                  goto LABEL_202;
                }

                __break(1u);
              }

              if (v24)
              {
                goto LABEL_202;
              }

              if (v87 < v159)
              {
                goto LABEL_245;
              }

              if (v159 < v87)
              {
                goto LABEL_202;
              }

              if (v124)
              {
                if (v124 == 1)
                {
                  if (v154 == 1 && v22 < v153)
                  {
                    __break(1u);
                    goto LABEL_108;
                  }

LABEL_202:
                  memcpy(&v269[4], v267, 0x1E0uLL);
                  *&v269[0] = v87;
                  BYTE8(v269[0]) = v24 & 1;
                  *&v269[1] = v22;
                  BYTE8(v269[1]) = v124;
                  *&v269[2] = 0;
                  BYTE8(v269[2]) = 1;
                  *&v269[3] = 0;
                  BYTE8(v269[3]) = 2;
                  v270 = v268;
                  specialized NavigationHostingControllerCache_UIKit.eject<A>(at:)(v269);

                  outlined destroy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>.Iterator(v269, &lazy cache variable for type metadata for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>, MEMORY[0x1E69E6C98]);
                  goto LABEL_203;
                }

LABEL_160:
                if (v154 == 2 && !v153)
                {
                  goto LABEL_202;
                }

                __break(1u);
LABEL_163:
                if (v22 < v153)
                {
                  goto LABEL_247;
                }

LABEL_164:
                memcpy(&v269[4], v267, 0x1E0uLL);
                *&v269[0] = v87;
                BYTE8(v269[0]) = v124 & 1;
                *&v269[1] = v22;
                BYTE8(v269[1]) = v86;
                *&v269[2] = 0;
                BYTE8(v269[2]) = 1;
                *&v269[3] = 0;
                BYTE8(v269[3]) = 2;
                v270 = v268;
                specialized NavigationHostingControllerCache_UIKit.eject<A>(at:)(v269);

                outlined destroy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>.Iterator(v269, &lazy cache variable for type metadata for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>, MEMORY[0x1E69E6C98]);
                v184 = [v263 viewControllers];
                type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
                v185 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                v11 = v24;
                v56 = specialized BidirectionalCollection.dropLast(_:)(v24, v185);
                v187 = v186;
                v189 = v188;
                v191 = v190;

                v192 = v191 >> 1;
                if (v189 == v191 >> 1)
                {
                  swift_unknownObjectRelease();
                  v15 = MEMORY[0x1E69E7D40];
                  v22 = v258;
                  v39 = v259;
                }

                else
                {
                  v15 = MEMORY[0x1E69E7D40];
                  v22 = v258;
                  v39 = v259;
                  if (v192 <= v189)
                  {
                    __break(1u);
                    goto LABEL_232;
                  }

                  v193 = *(v187 + 8 * v192 - 8);
                  swift_unknownObjectRelease();
                  *(v6 + *((*v15 & *v6) + 0x88)) = v193;
                }

                v24 = v11;
                goto LABEL_169;
              }

LABEL_154:
              if (!v154)
              {
                if (v22 < v153)
                {
                  goto LABEL_250;
                }

                goto LABEL_202;
              }

              if (v154 == 2)
              {
                goto LABEL_202;
              }

              __break(1u);
            }

            if (v154 == 2 && !v153)
            {
              goto LABEL_195;
            }

            __break(1u);
            goto LABEL_160;
          }

LABEL_151:
          if (!v154)
          {
            goto LABEL_194;
          }

          if (v154 == 2)
          {
            goto LABEL_195;
          }

          __break(1u);
          goto LABEL_154;
        }

LABEL_148:
        if (v154 == 2 && !v153)
        {
          goto LABEL_164;
        }

        __break(1u);
        goto LABEL_151;
      }

LABEL_145:
      if (!v154)
      {
        goto LABEL_163;
      }

      if (v154 == 2)
      {
        goto LABEL_164;
      }

      __break(1u);
      goto LABEL_148;
    }

LABEL_169:
    if (v257)
    {
      outlined init with copy of NavigationState.StackContent(v39, v269);
      v33 = NavigationState.StackContent.shouldAnimate(from:)(v269);
      outlined destroy of PPTTestCase?(v269, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
    }

    else
    {
      v33 = 0;
    }

    v194 = [v263 viewControllers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
    v195 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v255 = v24;
    LODWORD(v262) = v33;
    if ((v33 & 1) == 0)
    {
      v202 = v22;

      v203 = 0;
LABEL_179:
      *&v267[0] = 0;
      BYTE8(v267[0]) = 1;
      outlined init with copy of NavigationAuthority(v6 + *((*v15 & *v6) + 0x68), v269);
      v204 = NavigationAuthority.controllerCache.getter();
      v205 = outlined destroy of NavigationAuthority(v269);
      MEMORY[0x1EEE9AC00](v205);
      *(&v252 - 6) = v271;
      *(&v252 - 5) = v261;
      *(&v252 - 4) = v6;
      v206 = v263;
      *(&v252 - 3) = v263;
      v250 = v267;
      v207 = v6;
      v208 = v206;
      v15 = MEMORY[0x1E69E7D40];
      specialized NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(v206, 0, closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:)specialized partial apply, (&v252 - 8), v204, v207, v260 & 1, v208, v203);

      v209 = [(UINavigationController *)v208 transitionCoordinator];
      v22 = v202;
      if (v209)
      {
        if (v255 >= 1 && (v262 & 1) != 0)
        {
          v266 = 1;
          v210 = v209;
          v211 = swift_allocObject();
          swift_unknownObjectWeakInit();
          *&v269[2] = closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)specialized partial apply;
          *(&v269[2] + 1) = v211;
          v15 = MEMORY[0x1E69E7D40];
          *&v269[0] = MEMORY[0x1E69E9820];
          *(&v269[0] + 1) = 1107296256;
          *&v269[1] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
          *(&v269[1] + 1) = &block_descriptor_179;
          v212 = _Block_copy(v269);

          [v210 animateAlongsideTransition:0 completion:v212];
          _Block_release(v212);
        }

        swift_unknownObjectRelease();
      }

      goto LABEL_218;
    }

    if (v195 >> 62)
    {
      v196 = __CocoaSet.count.getter();
    }

    else
    {
      v196 = *((v195 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v196 != 1 || (v198 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v197), (v201 & 1) != 0))
    {
      v202 = v22;
      v203 = 1;
      goto LABEL_179;
    }

    v213 = 0;
    v214 = 0;
    while (1)
    {
      v15 = (v213 + 1);
      if (__OFADD__(v213, 1))
      {
        break;
      }

      v198 = specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v198, v214 & 1, v199, v200);
      ++v213;
      if ((v214 & 1) != 0 && v200 >= 2u)
      {
        v202 = v22;
        v203 = v15 != 1;
        v15 = MEMORY[0x1E69E7D40];
        goto LABEL_179;
      }
    }

    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    ;
  }

  outlined init with copy of NavigationAuthority(v6 + *((*v15 & *v6) + 0x68), v269);
  v114 = NavigationAuthority.controllerCache.getter();
  outlined destroy of NavigationAuthority(v269);
  v115 = specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(v39, v6, v267);
  if (v24 < 0)
  {
    goto LABEL_237;
  }

  v260 = v114;
  v116 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v115);
  v120 = specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(0, 1, 0, 2, -v24, v116, v117 & 1, v118, v119);
  if (v123 == 0xFF)
  {
    v120 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v120);
    v87 = v120;
    v124 = v179;
    v15 = v180;
    v86 = v181;
  }

  else
  {
    v87 = v120;
    v124 = v121;
    v86 = v123;
    v15 = v122;
  }

  v182 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v120);
  if (v183)
  {
    if (v124)
    {
      goto LABEL_207;
    }

    __break(1u);
  }

  if (v124)
  {
    goto LABEL_207;
  }

  if (v87 < v182)
  {
    goto LABEL_246;
  }

  if (v182 < v87)
  {
    goto LABEL_207;
  }

  if (v86)
  {
    if (v86 != 1)
    {
      goto LABEL_191;
    }

    if (v154 != 1 || v15 >= v153)
    {
      goto LABEL_207;
    }

    __break(1u);
    goto LABEL_145;
  }

  if (!v154)
  {
    if (v15 >= v153)
    {
      goto LABEL_207;
    }

    goto LABEL_251;
  }

  if (v154 != 2)
  {
    __break(1u);
LABEL_191:
    if (v154 != 2 || v153)
    {
      __break(1u);
LABEL_194:
      if (v22 < v153)
      {
        goto LABEL_249;
      }

LABEL_195:
      memcpy(&v269[4], v267, 0x1E0uLL);
      *&v269[0] = v86;
      BYTE8(v269[0]) = v87 & 1;
      *&v269[1] = v22;
      BYTE8(v269[1]) = v124;
      *&v269[2] = 0;
      BYTE8(v269[2]) = 1;
      *&v269[3] = 0;
      BYTE8(v269[3]) = 2;
      v270 = v268;

      v215 = specialized Sequence.compactMap<A>(_:)(v269, v24);
      outlined destroy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>.Iterator(v269, &lazy cache variable for type metadata for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>, MEMORY[0x1E69E6C98]);

      v216 = swift_allocObject();
      *(v216 + 16) = v215;
      v217 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v218 = *((*v15 & *v11) + 0xB0);
      swift_beginAccess();
      outlined init with copy of NavigationState.StackContent?(v11 + v218, v267, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
      if (LOBYTE(v267[28]) == 255)
      {
        outlined destroy of PPTTestCase?(v267, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
        v219 = v11 + *((*v15 & *v11) + 0x60);
        v220 = *v219;
        v221 = v219[8];
        v222 = *(v219 + 2);
        if (v221 == 4)
        {
          LOBYTE(v221) = 0;
        }

        *&v269[0] = v220;
        BYTE8(v269[0]) = v221;
        *&v269[1] = v222;
        LOBYTE(v269[28]) = 0;
      }

      else
      {
        memcpy(v269, v267, 0x1C1uLL);
      }

      v223 = v15;
      v224 = NavigationState.StackContent.topKey.getter();
      v226 = v225;
      v228 = v227;
      outlined destroy of NavigationState.StackContent(v269);
      v229 = swift_allocObject();
      *(v229 + 16) = closure #1 in NavigationHostingControllerCache_UIKit.ejectDeferred<A>(at:)partial apply;
      *(v229 + 24) = v216;
      *(v229 + 32) = BYTE1(v6);
      *(v229 + 40) = v217;
      *(v229 + 48) = v224;
      *(v229 + 56) = v226;
      *(v229 + 64) = v228;
      v230 = (v11 + *((*v223 & *v11) + 0xA0));
      v231 = *v230;
      *v230 = partial apply for specialized closure #1 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:);
      v230[1] = v229;

      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v231);

LABEL_203:
      v22 = v258;
      goto LABEL_204;
    }
  }

LABEL_207:
  memcpy(&v269[4], v267, 0x1E0uLL);
  *&v269[0] = v87;
  BYTE8(v269[0]) = v124 & 1;
  *&v269[1] = v15;
  BYTE8(v269[1]) = v86;
  *&v269[2] = 0;
  BYTE8(v269[2]) = 1;
  *&v269[3] = 0;
  BYTE8(v269[3]) = 2;
  v270 = v268;
  specialized NavigationHostingControllerCache_UIKit.eject<A>(at:)(v269);

  outlined destroy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>.Iterator(v269, &lazy cache variable for type metadata for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>, MEMORY[0x1E69E6C98]);
  v233 = [v263 viewControllers];
  v234 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized BidirectionalCollection.dropLast(_:)(v24, v234);
  v236 = v235;
  v238 = v237;
  v240 = v239;

  v241 = v240 >> 1;
  if (v238 != v240 >> 1)
  {
    v15 = MEMORY[0x1E69E7D40];
    v242 = v261;
    if (v241 > v238)
    {
      v171 = *(v236 + 8 * v241 - 8);
      swift_unknownObjectRelease();
      *(v6 + *((*v15 & *v6) + 0x88)) = v171;
      if (v257)
      {
        outlined init with copy of NavigationState.StackContent(v259, v269);
        v243 = NavigationState.StackContent.shouldAnimate(from:)(v269);
        outlined destroy of PPTTestCase?(v269, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
      }

      else
      {
        v243 = 0;
      }

      v244 = v263;

      specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(v244, v271, v242, partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:));
      v245 = [v244 transitionCoordinator];
      if (v245)
      {
        if (v243)
        {
          v266 = 1;
          v176 = v245;
          v246 = swift_allocObject();
          swift_unknownObjectWeakInit();
          *&v269[2] = closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)specialized partial apply;
          *(&v269[2] + 1) = v246;
          *&v269[0] = MEMORY[0x1E69E9820];
          *(&v269[0] + 1) = 1107296256;
          v178 = &block_descriptor_184;
LABEL_215:
          *&v269[1] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
          *(&v269[1] + 1) = v178;
          v247 = _Block_copy(v269);

          [v176 animateAlongsideTransition:0 completion:v247];

          v248 = v247;
          v15 = MEMORY[0x1E69E7D40];
          _Block_release(v248);
          swift_unknownObjectRelease();
LABEL_218:
          if (v266 == 1)
          {
            *(v6 + v256) = 0;
            *(v6 + *((*v15 & *v6) + 0x88)) = 0;
          }

          if (v22)
          {
            v232 = v6 + *((*v15 & *v6) + 0x68);
LABEL_222:
            outlined init with copy of NavigationAuthority(v232, v269);
            NavigationAuthority.controllerCache.getter();
            outlined destroy of NavigationAuthority(v269);
            specialized NavigationHostingControllerCache_UIKit.updateUnusedRoots(_:transaction:)(v22);
          }

          return outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v271, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
        }

LABEL_216:
        swift_unknownObjectRelease();
      }

LABEL_217:

      goto LABEL_218;
    }

LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
  }

  swift_unknownObjectRelease();
  __break(1u);
LABEL_254:
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v269, type metadata accessor for LazyMapSequence<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>, NavigationContentAbstractPosition>);
  __break(1u);
LABEL_255:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t outlined copy of NavigationStrategy_Phone?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI21NavigationSplitColumnO_AC0E5StateV12StackContentV14PositionedViewVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationSplitColumn, NavigationState.StackContent.PositionedView>, lazy protocol witness table accessor for type NavigationSplitColumn and conformance NavigationSplitColumn);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 104)
    {
      outlined init with copy of (String, TabEntry)(i, v16, &lazy cache variable for type metadata for (NavigationSplitColumn, NavigationState.StackContent.PositionedView), &type metadata for NavigationSplitColumn, &type metadata for NavigationState.StackContent.PositionedView, type metadata accessor for (Badge, Spacer));
      v5 = v16[0];
      result = specialized __RawDictionaryStorage.find<A>(_:)(v16[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = (v3[7] + 96 * result);
      v9 = v18;
      *v8 = v17;
      v8[1] = v9;
      v10 = v19;
      v11 = v20;
      v12 = v21[0];
      *(v8 + 73) = *(v21 + 9);
      v8[3] = v11;
      v8[4] = v12;
      v8[2] = v10;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

void type metadata accessor for StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>);
    }
  }
}

uint64_t specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 16) == 1)
  {
    goto LABEL_2;
  }

  v7 = *(result + 25);
  v8 = *(result + 65);
  v9 = *(a2 + 24);
  if (v8 == 3)
  {
    goto LABEL_9;
  }

  if (*(a2 + 24))
  {
    if (v9 == 2)
    {
      if (v8 != 2)
      {
LABEL_14:
        v10 = 2;
        goto LABEL_28;
      }
    }

    else
    {
      if (v9 != 1)
      {
LABEL_9:
        v10 = 0;
        goto LABEL_28;
      }

      if ((v8 - 1) >= 2)
      {
        goto LABEL_14;
      }
    }
  }

  v10 = 1;
LABEL_28:
  if (v7 != 3 && v9 <= 2)
  {
    if (*(result + 25))
    {
      if (v7 != 1 || v9 != 2)
      {
LABEL_42:
        v19 = 1;
        if (v10 == 2)
        {
          goto LABEL_43;
        }

        goto LABEL_34;
      }
    }

    else if (v9 - 1 >= 2)
    {
      goto LABEL_42;
    }
  }

  v19 = 0;
  if (v10 == 2)
  {
LABEL_43:
    LOBYTE(v10) = 0;
    return v10 & 1;
  }

LABEL_34:
  if (v10 == 1)
  {
    return v10 & 1;
  }

  if (v19)
  {
    LOBYTE(v10) = 1;
    return v10 & 1;
  }

LABEL_2:
  v4 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
    goto LABEL_46;
  }

  if (*(a2 + 352))
  {
    v5 = 1;
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

  v11 = a4;
  outlined init with copy of NavigationColumnState.ColumnContent(a2 + 120, v20);
  if (v24)
  {
    outlined destroy of NavigationColumnState.ColumnContent(v20);
  }

  else
  {

    v13 = v23;
    outlined destroy of NavigationState?(v20, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
    v14 = *(v13 + 16);

    if (v14)
    {
      v5 = 1;
      goto LABEL_24;
    }
  }

  outlined init with copy of NavigationColumnState.ColumnContent(a2 + 120, v20);
  if (v24)
  {
    result = outlined destroy of NavigationColumnState.ColumnContent(v20);
    v5 = 0;
  }

  else
  {
    v15 = v22;

    v16 = outlined destroy of NavigationState?(v20, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
    v17 = (*(*v15 + 80))(v16);

    v5 = v17 ^ 1;
  }

LABEL_24:
  a4 = v11;
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_25:
    LOBYTE(v10) = v5;
    return v10 & 1;
  }

LABEL_5:
  if (v4 < *(a4 + 16))
  {
    outlined init with copy of NavigationColumnState(a4 + 360 * v4 + 32, v20);
    if (v21)
    {
      v6 = NavigationListState.hasNonEmptySelection.getter();
    }

    else
    {
      v6 = 0;
    }

    outlined destroy of NavigationColumnState(v20);
    LOBYTE(v10) = v5 | v6;
    return v10 & 1;
  }

LABEL_46:
  __break(1u);
  return result;
}

void type metadata accessor for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>)
  {
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>);
    }
  }
}

void type metadata accessor for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t outlined init with copy of State<EventModifiers>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for State<EventModifiers>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for NavigationState.StackContent.PositionedView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void type metadata accessor for State<EventModifiers>()
{
  if (!lazy cache variable for type metadata for State<EventModifiers>)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<EventModifiers>);
    }
  }
}

Swift::Void __swiftcall UIKitHostedFocusItemLifecycle.updateValue()()
{
  v1 = v0;
  outlined init with copy of UIKitHostedFocusItemLifecycle(v0, v32);
  v2 = *MEMORY[0x1E698D3F8];
  if (v32[5] == *MEMORY[0x1E698D3F8])
  {
    outlined destroy of UIKitHostedFocusItemLifecycle(v32);
    return;
  }

  v3 = *AGGraphGetValue();
  outlined destroy of UIKitHostedFocusItemLifecycle(v32);
  if (v3)
  {
    AGGraphClearUpdate();
    outlined init with copy of UIKitHostedFocusItemLifecycle(v1, v32);
    if (v32[4] == v2)
    {
      outlined destroy of UIKitHostedFocusItemLifecycle(v32);
      Strong = 0;
    }

    else
    {
      _s7SwiftUI7WeakBoxVySo6UIViewCGMaTm_2(0, &lazy cache variable for type metadata for WeakBox<UIView>, &lazy cache variable for type metadata for UIView, 0x1E69DD250, type metadata accessor for NSObject);
      Value = AGGraphGetValue();
      outlined init with copy of WeakBox<UIView>(Value, v31);
      outlined destroy of UIKitHostedFocusItemLifecycle(v32);
      Strong = swift_unknownObjectWeakLoadStrong();
      _s7SwiftUI7WeakBoxVySo11UIFocusItem_pGWOhTm_0(v31, &lazy cache variable for type metadata for WeakBox<UIView>, &lazy cache variable for type metadata for UIView, 0x1E69DD250, type metadata accessor for NSObject);
    }

    AGGraphSetUpdate();
    swift_unknownObjectWeakAssign();

    v6 = *(v1 + 40);
    outlined init with copy of UIKitHostedFocusItemLifecycle(v1, v32);
    v7 = *AGGraphGetValue();
    outlined destroy of UIKitHostedFocusItemLifecycle(v32);
    if (v6 != v7 >> 1)
    {
      outlined init with copy of UIKitHostedFocusItemLifecycle(v1, v32);
      v8 = *AGGraphGetValue();
      outlined destroy of UIKitHostedFocusItemLifecycle(v32);
      *(v1 + 40) = v8 >> 1;
      UIKitHostedFocusItemLifecycle.remove()();
      swift_unknownObjectRelease();
      *(v1 + 64) = 0;
      *(v1 + 72) = 0;
      *(v1 + 44) = 2;
    }

    v10 = (v1 + 80);
    v9 = *(v1 + 80);
    if (v9)
    {
      v11 = *(v1 + 88);
    }

    else
    {
      v12 = AGGraphClearUpdate();
      outlined init with copy of UIKitHostedFocusItemLifecycle(v1, v32);
      _s2os6LoggerVSgMaTm_3(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
      v13 = *AGGraphGetValue();

      outlined destroy of UIKitHostedFocusItemLifecycle(v32);
      AGGraphSetUpdate();
      if ((v13 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x18D00E9C0](0, v13);
      }

      else
      {
        if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_34;
        }

        v9 = *(v13 + 32);
      }

      v14 = swift_conformsToProtocol2();
      if (!v14)
      {

        *v10 = 0;
        *(v1 + 88) = 0;
        goto LABEL_29;
      }

      v11 = v14;
      *(v1 + 80) = v9;
      *(v1 + 88) = v14;
    }

    v15 = (*(v11 + 16))(*v9);
    if (v15)
    {
      v17 = v15;
      v18 = v16;
      v19 = [v15 canBecomeFocused];
      v20 = *(v1 + 64);
      if (*(v1 + 64))
      {
        v21 = *(v1 + 44);
        if (v21 == 2 || ((v19 ^ v21) & 1) != 0)
        {
          *(v1 + 44) = v19;
          v30 = v20;
          v12 = swift_allocObject();
          *(v12 + 16) = v30;
          v10 = *(v1 + 96);
          swift_unknownObjectRetain_n();

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_21:
            v23 = *(v10 + 2);
            v22 = *(v10 + 3);
            if (v23 >= v22 >> 1)
            {
              v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v10);
            }

            swift_unknownObjectRelease();

            *(v10 + 2) = v23 + 1;
            v24 = &v10[24 * v23];
            v24[32] = 0;
            *(v24 + 5) = partial apply for closure #1 in UIKitHostedFocusItemLifecycle.invalidateFocusIfNeeded();
            *(v24 + 6) = v12;
            *(v1 + 96) = v10;
            goto LABEL_25;
          }

LABEL_34:
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
          goto LABEL_21;
        }
      }

      else
      {
        *(v1 + 64) = v17;
        *(v1 + 72) = v18;
        *(v1 + 44) = v19;
        swift_unknownObjectRetain();
        UIKitHostedFocusItemLifecycle.insert()();
      }

LABEL_25:
      if (*(v1 + 64))
      {
        v25 = *(v1 + 72);
        ObjectType = swift_getObjectType();
        UIKitHostedFocusItemLifecycle.frame.getter();
        v27 = AGCreateWeakAttribute();
        (*(v25 + 40))(v27, ObjectType, v25);
      }

      swift_unknownObjectRelease();
      v28 = *(v1 + 96);
      *(v1 + 96) = MEMORY[0x1E69E7CC0];
      LOBYTE(v32[0]) = 17;
      *(swift_allocObject() + 16) = v28;
      goto LABEL_30;
    }

LABEL_29:
    v29 = *(v1 + 96);
    *(v1 + 96) = MEMORY[0x1E69E7CC0];
    LOBYTE(v32[0]) = 17;
    *(swift_allocObject() + 16) = v29;
LABEL_30:
    static Update.enqueueAction(reason:_:)();
  }
}

uint64_t sub_18BF50CF0()
{

  return swift_deallocObject();
}

uint64_t sub_18BF50D28()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>)
  {
    type metadata accessor for Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>(255);
    type metadata accessor for _ContentShapeKindModifier<Rectangle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle, &type metadata for PlainButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>);
    }
  }
}

uint64_t initializeWithCopy for NavigationState.StackContent.PositionedView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 88);

  if (v4 == 1)
  {
    v6 = *(a2 + 48);
    if (v6)
    {
      v7 = *(a2 + 56);
      *(a1 + 48) = v6;
      *(a1 + 56) = v7;
      (**(v6 - 8))(a1 + 24, a2 + 24);
    }

    else
    {
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
    }

    v8 = *(a2 + 72);
    if (v8 == 1)
    {
      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v8;
    }

    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = 1;
  }

  else if (v4)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v5 = *(a2 + 48);
    *(a1 + 48) = v5;
    (**(v5 - 8))(a1 + 24, a2 + 24);
    *(a1 + 88) = 0;
  }

  return a1;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 96 * v9;

    return outlined assign with take of NavigationState.StackContent.PositionedView(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of ToolbarPlacement.Role(a2, v21);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7] + 80 * v10;

  return outlined assign with take of ToolbarAppearanceConfiguration(a1, v17);
}

{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 96 * result);
    v21 = a1[3];
    v20[2] = a1[2];
    v20[3] = v21;
    v20[4] = a1[4];
    *(v20 + 73) = *(a1 + 73);
    v22 = a1[1];
    *v20 = *a1;
    v20[1] = v22;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 96 * v9;

    return outlined assign with take of NavigationDestinationPresentation(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

uint64_t storeEnumTagSinglePayload for NavigationState.StackContent.PositionedView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = type metadata accessor for Button();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>)
  {
    type metadata accessor for HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>(255);
    type metadata accessor for _ContentShapeKindModifier<Rectangle>(255, &lazy cache variable for type metadata for _ContentShapeKindModifier<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E69805E0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)> and conformance TupleView<A>(a4, a5);
    v8 = type metadata accessor for HStack();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = type metadata accessor for TupleView();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v4 = (a4[7] + 96 * result);
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  *(v4 + 73) = *(a3 + 73);
  v6 = a3[4];
  v4[3] = a3[3];
  v4[4] = v6;
  v4[2] = a3[2];
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

void type metadata accessor for (ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(255, &lazy cache variable for type metadata for ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>, &type metadata for RotatingDisclosureIndicator, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t NavigationState.StackContent.change(from:)(uint64_t a1)
{
  outlined init with copy of NavigationState.Base?(a1, __src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (LOBYTE(__src[112]) == 255)
  {
    outlined destroy of Binding<NavigationSplitViewColumn>(__src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent, MEMORY[0x1E69E6720]);
  }

  else
  {
    memcpy(__dst, __src, 0x1C1uLL);
    outlined init with copy of NavigationState.Base(__dst, __src);
    if (LOBYTE(__src[112]))
    {
      outlined destroy of NavigationState.Base(__src);
      NavigationState.StackContent.pathSeed.getter(__src);
      v4 = __src[0];
      NavigationState.StackContent.pathSeed.getter(v37);
      outlined destroy of NavigationState.StackContent(__dst);
      if (v4 == -1 || *v37 == -1 || v4 != *v37)
      {
        return 2;
      }
    }

    else
    {
      outlined destroy of NavigationState.StackContent(__dst);
    }
  }

  outlined init with copy of NavigationState.Base(v1, __src);
  outlined init with copy of NavigationState.Base?(a1, __dst, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (__dst[448] == 255)
  {
    outlined destroy of Binding<NavigationSplitViewColumn>(__dst, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent, MEMORY[0x1E69E6720]);
    memset(v37, 0, 448);
    v37[448] = -1;
  }

  else
  {
    outlined init with copy of NavigationState.Base(__dst, v37);
    outlined destroy of NavigationState.StackContent(__dst);
  }

  memcpy(__dst, __src, 0x1C1uLL);
  memcpy(v36, v37, 0x1C1uLL);
  if (__dst[448])
  {
    if (__dst[448] == 1)
    {
      outlined init with copy of NavigationState.Base(__dst, v32);
      outlined consume of ResolvedNavigationDestinations?(v33);
      if (v36[448] != 255)
      {
        outlined init with copy of NavigationState.Base?(v36, v30, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base);
        if (v31)
        {
          if (v31 == 1)
          {
            outlined consume of ResolvedNavigationDestinations?(v30[45]);
            memcpy(v27, v32, 0x163uLL);
            memcpy(v26, v30, 0x163uLL);
            outlined init with copy of NavigationColumnState(v26, v24);
            v5 = NavigationColumnState.change(from:)(v24);
            if (!v2)
            {
              v19 = MEMORY[0x1E69E6720];
              v20 = v5;
              outlined destroy of Binding<NavigationSplitViewColumn>(v24, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
              outlined destroy of NavigationColumnState(v26);
              outlined destroy of NavigationColumnState(v27);
              outlined destroy of Binding<NavigationSplitViewColumn>(v36, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base, v19);
              outlined destroy of NavigationState.Base(__dst);
              return v20;
            }

            outlined destroy of Binding<NavigationSplitViewColumn>(v24, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
            outlined destroy of NavigationColumnState(v26);
            outlined destroy of NavigationColumnState(v27);
            goto LABEL_43;
          }

          outlined destroy of NavigationState.Base(v30);
          v14 = v32;
          goto LABEL_39;
        }

        outlined init with copy of NavigationColumnState(v32, v27);
        if (NavigationState.Base.count.getter() == 1)
        {
          v12 = NavigationColumnState.isRootReplaced.getter();
          outlined destroy of NavigationColumnState(v27);
          if (v12)
          {
            v13 = 3;
          }

          else
          {
            v13 = 2;
          }

          outlined destroy of NavigationColumnState(v32);
          outlined destroy of Binding<NavigationSplitViewColumn>(v36, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base, MEMORY[0x1E69E6720]);
          outlined destroy of NavigationState.Base(__dst);
          return v13;
        }

        outlined destroy of NavigationColumnState(v27);
      }

      outlined destroy of NavigationColumnState(v32);
LABEL_54:
      outlined destroy of Binding<NavigationSplitViewColumn>(v36, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base, MEMORY[0x1E69E6720]);
      outlined destroy of NavigationState.Base(__dst);
      return 2;
    }

    outlined init with copy of NavigationState.Base(__dst, v32);
    v10 = v32[0];
    v27[2] = *&v32[5];
    v27[3] = *&v32[7];
    LOWORD(v27[4]) = v32[9];
    v27[0] = *&v32[1];
    v27[1] = *&v32[3];
    if (v36[448] == 255)
    {
      outlined destroy of Binding<NavigationSplitViewColumn>(v27, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);

      goto LABEL_54;
    }

    outlined init with copy of NavigationState.Base?(v36, v30, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base);
    if (!v31)
    {

      outlined destroy of Binding<NavigationSplitViewColumn>(v27, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      NavigationState.Base.count.getter();
      goto LABEL_54;
    }

    if (v31 != 1)
    {
      v26[2] = *&v30[5];
      v26[3] = *&v30[7];
      LOWORD(v26[4]) = v30[9];
      v26[0] = *&v30[1];
      v26[1] = *&v30[3];
      v24[2] = *&v30[5];
      v24[3] = *&v30[7];
      v25 = v30[9];
      v24[0] = *&v30[1];
      v24[1] = *&v30[3];
      v28[2] = v27[2];
      v28[3] = v27[3];
      v29 = v27[4];
      v28[1] = v27[1];
      v28[0] = v27[0];
      v15 = specialized static NavigationColumnState.change(from:to:previousSplitViewState:splitViewState:)(v30[0], v10, v24, v28);
      if (!v2)
      {
        v21 = v15;

        v22 = MEMORY[0x1E69E6720];
        outlined destroy of Binding<NavigationSplitViewColumn>(v27, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
        outlined destroy of Binding<NavigationSplitViewColumn>(v26, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, v22);
        outlined destroy of Binding<NavigationSplitViewColumn>(v36, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base, v22);
        outlined destroy of NavigationState.Base(__dst);
        return v21;
      }

      v16 = MEMORY[0x1E69E6720];
      outlined destroy of Binding<NavigationSplitViewColumn>(v27, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      outlined destroy of Binding<NavigationSplitViewColumn>(v26, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, v16);
LABEL_43:
      outlined destroy of Binding<NavigationSplitViewColumn>(v36, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base, MEMORY[0x1E69E6720]);
      return outlined destroy of NavigationState.Base(__dst);
    }

    outlined destroy of Binding<NavigationSplitViewColumn>(v27, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
    v11 = v30;
LABEL_58:
    outlined destroy of NavigationState.Base(v11);
    goto LABEL_59;
  }

  if (v36[448] == 255 || (outlined init with copy of NavigationState.Base?(v36, v32, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base), !v34))
  {
    outlined destroy of Binding<NavigationSplitViewColumn>(v36, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base, MEMORY[0x1E69E6720]);
    outlined destroy of NavigationState.Base(__dst);
    return 1;
  }

  result = outlined init with copy of NavigationState.Base?(a1, v30, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (v31 == 255)
  {
    goto LABEL_66;
  }

  v7 = NavigationState.Base.count.getter();
  outlined destroy of NavigationState.StackContent(v30);
  if (v7 >= 2)
  {
    result = outlined init with copy of NavigationState.Base?(a1, v30, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
    if (v31 == 255)
    {
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v8 = NavigationState.Base.count.getter();
    result = outlined destroy of NavigationState.StackContent(v30);
    v9 = v8 - 1;
    if (!__OFSUB__(v8, 1))
    {
      outlined destroy of NavigationState.Base(v32);
      outlined destroy of Binding<NavigationSplitViewColumn>(v36, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base, MEMORY[0x1E69E6720]);
      outlined destroy of NavigationState.Base(__dst);
      return v9;
    }

    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (!v34)
  {
    v11 = v32;
    goto LABEL_58;
  }

  if (v34 == 1)
  {
    outlined consume of ResolvedNavigationDestinations?(v33);
    memcpy(v27, v32, 0x163uLL);
    result = outlined init with copy of NavigationState.Base?(a1, v30, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
    if (v31 != 255)
    {
      v17 = NavigationState.Base.count.getter();
      outlined destroy of NavigationState.StackContent(v30);
      if (v17 != 1)
      {
        v14 = v27;
LABEL_39:
        outlined destroy of NavigationColumnState(v14);
LABEL_59:
        outlined destroy of (NavigationState.Base, NavigationState.Base?)(__dst, type metadata accessor for (NavigationState.Base, NavigationState.Base?));
        return 2;
      }

      v18 = NavigationColumnState.isRootReplaced.getter();
      outlined destroy of NavigationColumnState(v27);
      if (v18)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      outlined destroy of Binding<NavigationSplitViewColumn>(v36, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base, MEMORY[0x1E69E6720]);
      outlined destroy of NavigationState.Base(__dst);
      return v9;
    }

    goto LABEL_68;
  }

  outlined destroy of NavigationState.Base(v32);
  result = outlined init with copy of NavigationState.Base?(a1, v30, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (v31 == 255)
  {
LABEL_69:
    __break(1u);
    return result;
  }

  v23 = NavigationState.Base.count.getter();
  outlined destroy of NavigationState.StackContent(v30);
  if (v23 != 1)
  {
    goto LABEL_59;
  }

  outlined destroy of Binding<NavigationSplitViewColumn>(v36, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base, MEMORY[0x1E69E6720]);
  outlined destroy of NavigationState.Base(__dst);
  return 1;
}

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)> and conformance TupleView<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for NavigationState.Base(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 449))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 448);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void type metadata accessor for _ContentShapeKindModifier<Rectangle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void _s7SwiftUI25_ContentShapeKindModifierVyAA9RectangleVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t storeEnumTagSinglePayload for NavigationState.Base(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 448) = 0;
    *(result + 416) = 0u;
    *(result + 432) = 0u;
    *(result + 384) = 0u;
    *(result + 400) = 0u;
    *(result + 352) = 0u;
    *(result + 368) = 0u;
    *(result + 320) = 0u;
    *(result + 336) = 0u;
    *(result + 288) = 0u;
    *(result + 304) = 0u;
    *(result + 256) = 0u;
    *(result + 272) = 0u;
    *(result + 224) = 0u;
    *(result + 240) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 449) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 449) = 0;
    }

    if (a2)
    {
      *(result + 448) = -a2;
    }
  }

  return result;
}

void *specialized Sequence.reduce<A>(_:_:)(void *result, void *(*a2)(void **__return_ptr, void **, uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = result;
  v6 = result;
  if (a4 == a5)
  {
    return v6;
  }

  v8 = a4;
  if (a5 >= a4)
  {
    while (a5 != v8)
    {
      v11 = v8;
      result = a2(&v10, &v12, &v11);
      if (!v5)
      {
        ++v8;
        v6 = v10;
        v12 = v10;
        if (a5 != v8)
        {
          continue;
        }
      }

      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI9ViewAliasPAAE14_viewListCount6inputsSiSgAA01_cfG6InputsV_tFZAA015NavigationSplitC18StyleConfigurationV7SidebarV_Tt0B5Tm(__int128 *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = a1[3];
  v33 = a1[2];
  v34 = v7;
  v35 = a1[4];
  v8 = a1[1];
  v31 = *a1;
  v32 = v8;
  type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(0, a2, a3, a4, type metadata accessor for SourceInput);
  v9 = outlined init with copy of _ViewListCountInputs(a1, &v26);
  a5(v9);
  PropertyList.subscript.getter();
  if (*&v25[0])
  {
    v10 = *(*&v25[0] + 48);
    v11 = *(*&v25[0] + 16);
    v12 = *(*&v25[0] + 24);
    v13 = *(*&v25[0] + 32);
    v14 = *(*&v25[0] + 40);
    v15 = *(*&v25[0] + 44);

    *&v25[0] = v10;
    *&v26 = v10;
    PropertyList.subscript.setter();
    if (v11)
    {
      _ViewListCountInputs.resetCurrentStyleableView()();
      v24[2] = v33;
      v24[3] = v34;
      v24[4] = v35;
      v24[0] = v31;
      v24[1] = v32;
      v21 = v33;
      v22 = v34;
      v23 = v35;
      v19 = v31;
      v20 = v32;
      v16 = *(v12 + 24);
      outlined init with copy of _ViewListCountInputs(v24, &v26);
      LOBYTE(v26) = v15;
      v17 = v16(v11, v12, v13, v14 | (v15 << 32), &v19, v11, v12);
      v25[2] = v21;
      v25[3] = v22;
      v25[4] = v23;
      v25[0] = v19;
      v25[1] = v20;
      outlined destroy of _ViewListCountInputs(v25);
      v28 = v33;
      v29 = v34;
      v30 = v35;
      v26 = v31;
      v27 = v32;
      outlined destroy of _ViewListCountInputs(&v26);
      return v17;
    }
  }

  else
  {
    *&v26 = 0;
    PropertyList.subscript.setter();
  }

  v28 = v33;
  v29 = v34;
  v30 = v35;
  v26 = v31;
  v27 = v32;
  outlined destroy of _ViewListCountInputs(&v26);
  return 0;
}

uint64_t static SourceFormula.viewListCount(source:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  v7 = a5[3];
  v10[2] = a5[2];
  v10[3] = v7;
  v10[4] = a5[4];
  v8 = a5[1];
  v10[0] = *a5;
  v10[1] = v8;
  if ((a4 & 0x100000000) != 0)
  {
    return (*(a7 + 40))(v10);
  }

  else
  {
    return static Optional<A>._viewListCount(inputs:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSAttributedStringKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA8StaticIfVyAA23GestureContainerFeatureVAaBPAAE020globallySimultaneousF0_4name9isEnabledQrqd___SSSgSbtAA0F0Rd__lFQOyAA15ModifiedContentVyxAA03AddF8ModifierVyAaLPAAE14truePreferenceyQrqd__mAA0S3KeyRd__Sb5ValueRtd__lFQOyAA0qF0VyAA09CallbacksF0VyAA09PressablefV033_C70334A42970E36EF599A57E69899EA7LLVySbGGAA09LongPressF0VG_AA013IsCancellablefT0VQo_AA07DefaultF8CombinerVGG_AA015PrimitiveButtonF0VQo_A12_GAaBHPAfA0C14InputPredicateHPyHC_qd0__AaBHD3_A15_HOA12_AaBHPxAaBHD1__A11_AA0cQ0HPyHCHCHCTm(uint64_t a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(255);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(a3, a4);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for StaticIf();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

void type metadata accessor for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>()
{
  if (!lazy cache variable for type metadata for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>)
  {
    type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0(255, &lazy cache variable for type metadata for <<opaque return type of Gesture.truePreference<A>(_:)>>.0, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongPressGesture>, &lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongPressGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongPressGesture>);
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongPressGesture>(255);
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongPressGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongPressGesture>);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
    v0 = type metadata accessor for AddGestureModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>)
  {
    type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0();
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>();
    lazy protocol witness table accessor for type PressableGestureCallbacks<SpatialLongPressGesture.Value> and conformance PressableGestureCallbacks<A>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
    v0 = type metadata accessor for AddGestureModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>)
  {
    type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0();
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongRemoteTouchGesture>();
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongRemoteTouchGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongRemoteTouchGesture>);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
    v0 = type metadata accessor for AddGestureModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>)
  {
    type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0();
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, TextSelectionGesture>();
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, TextSelectionGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, TextSelectionGesture>);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
    v0 = type metadata accessor for AddGestureModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>)
  {
    type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0(255, &lazy cache variable for type metadata for <<opaque return type of Gesture.truePreference<A>(_:)>>.0, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, DelayedLongPressGesture>, &lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, DelayedLongPressGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, DelayedLongPressGesture>);
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, DelayedLongPressGesture>(255);
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, DelayedLongPressGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, DelayedLongPressGesture>);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
    v0 = type metadata accessor for AddGestureModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for (_UIImageNamedColorStyle, UIColor)()
{
  if (!lazy cache variable for type metadata for (_UIImageNamedColorStyle, UIColor))
  {
    type metadata accessor for _UIImageNamedColorStyle(255);
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIColor);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (_UIImageNamedColorStyle, UIColor));
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(_UIImageNamedColorStyle, UIColor)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(_UIImageNamedColorStyle, UIColor)>)
  {
    type metadata accessor for (_UIImageNamedColorStyle, UIColor)();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_UIImageNamedColorStyle, UIColor)>);
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo23_UIImageNamedColorStylea_So7UIColorCTt0g5Tf4g_nTm(uint64_t a1, void (*a2)(void), uint64_t (*a3)(id))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    a2(0);
    v6 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *i;
      v9 = *(i - 1);
      v10 = v8;
      result = a3(v9);
      if (v12)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v6[6] + 8 * result) = v9;
      *(v6[7] + 8 * result) = v10;
      v13 = v6[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v6[2] = v15;
      if (!--v3)
      {

        return v6;
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

void type metadata accessor for _DictionaryStorage<_UIImageNamedColorStyle, UIColor>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<_UIImageNamedColorStyle, UIColor>)
  {
    type metadata accessor for _UIImageNamedColorStyle(255);
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIColor);
    lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type _UIImageNamedColorStyle and conformance _UIImageNamedColorStyle, type metadata accessor for _UIImageNamedColorStyle);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<_UIImageNamedColorStyle, UIColor>);
    }
  }
}

uint64_t outlined destroy of (_UIImageNamedColorStyle, UIColor)(uint64_t a1)
{
  type metadata accessor for (_UIImageNamedColorStyle, UIColor)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIImageNamedColorStyle and conformance _UIImageNamedColorStyle()
{
  result = lazy protocol witness table cache variable for type _UIImageNamedColorStyle and conformance _UIImageNamedColorStyle;
  if (!lazy protocol witness table cache variable for type _UIImageNamedColorStyle and conformance _UIImageNamedColorStyle)
  {
    type metadata accessor for _UIImageNamedColorStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIImageNamedColorStyle and conformance _UIImageNamedColorStyle);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UISceneSessionRole()
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

uint64_t View.accessibilityHint(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for _ContiguousArrayStorage<Text>();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18CD63400;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3 & 1;
  *(v12 + 56) = a4;
  v14 = v12;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E6980100], &v14, 1, a5, MEMORY[0x1E6980100], a6);
}

uint64_t protocol witness for static View._viewListCount(inputs:) in conformance PrimitiveButtonStyleConfiguration.Label(__int128 *a1)
{
  v1 = a1[3];
  v4[2] = a1[2];
  v4[3] = v1;
  v4[4] = a1[4];
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return _s7SwiftUI9ViewAliasPAAE14_viewListCount6inputsSiSgAA01_cfG6InputsV_tFZAA015NavigationSplitC18StyleConfigurationV7SidebarV_Tt0B5Tm(v4, &lazy cache variable for type metadata for SourceInput<ButtonStyleConfiguration.Label>, lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, &type metadata for ButtonStyleConfiguration.Label, lazy protocol witness table accessor for type SourceInput<ButtonStyleConfiguration.Label> and conformance SourceInput<A>);
}

uint64_t protocol witness for static View._viewListCount(inputs:) in conformance ViewThatFits<A>()
{
  return protocol witness for static View._viewListCount(inputs:) in conformance ViewThatFits<A>();
}

{
  swift_getWitnessTable();
  return static UnaryView._viewListCount(inputs:)();
}

unint64_t lazy protocol witness table accessor for type SourceInput<ButtonStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ButtonStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ButtonStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ButtonStyleConfiguration.Label>, lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, &type metadata for ButtonStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ButtonStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

uint64_t View.accessibilityHint<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  View.accessibilityHint(_:)(v9, v10, v12 & 1, v14, a2, a4);
  outlined consume of Text.Storage(v9, v11, v13 & 1);
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<TextAlignment>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860], MEMORY[0x1E69808E8]);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>();
    lazy protocol witness table accessor for type _UnaryViewAdaptor<BorderedButton_CarCatalyst> and conformance _UnaryViewAdaptor<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>);
    lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

_BYTE *destructiveInjectEnumTag for SearchScopeActivation.Role(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for HandGestureShortcutInteractiveControl.BorderShape(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

void type metadata accessor for (ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, ModifiedContent<Divider, _PaddingLayout>?)()
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, ModifiedContent<Divider, _PaddingLayout>?))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, type metadata accessor for ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>);
    type metadata accessor for ModifiedContent<Divider, _PaddingLayout>?();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, ModifiedContent<Divider, _PaddingLayout>?));
    }
  }
}

_BYTE *initializeWithCopy for BarItemModifier(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakCopyInit();
  return a1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilityLargeContentViewBehaviorModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t static AccessibilityLargeContentViewBehaviorModifier._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2[3];
  v32 = a2[2];
  v33 = v9;
  v34 = a2[4];
  v35 = *(a2 + 20);
  v10 = a2[1];
  v30 = *a2;
  v31 = v10;
  lazy protocol witness table accessor for type LargeContentViewerBehavior and conformance LargeContentViewerBehavior();
  PropertyList.subscript.getter();
  v11 = (*(a6 + 8))(a5, a6);
  if (v11 == 1 || v24 != 3 && v24 == v11)
  {
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v24 = v30;
    v25 = v31;
    return a3();
  }

  else
  {
    v16 = v32;
    v17 = v33;
    v18 = v34;
    v19 = v35;
    v14 = v30;
    v15 = v31;
    LOBYTE(v22[0]) = v11;
    outlined init with copy of _ViewInputs(&v30, &v24);
    PropertyList.subscript.setter();
    v20[2] = v16;
    v20[3] = v17;
    v20[4] = v18;
    v21 = v19;
    v20[0] = v14;
    v20[1] = v15;
    v26 = v16;
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v24 = v14;
    v25 = v15;
    v13 = outlined init with copy of _ViewInputs(v20, v22);
    (a3)(v13, &v24);
    v22[2] = v26;
    v22[3] = v27;
    v22[4] = v28;
    v23 = v29;
    v22[0] = v24;
    v22[1] = v25;
    outlined destroy of _ViewInputs(v22);
    MEMORY[0x1EEE9AC00](v17);

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();

    v26 = v16;
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v24 = v14;
    v25 = v15;
    return outlined destroy of _ViewInputs(&v24);
  }
}

uint64_t storeEnumTagSinglePayload for WindowResizability(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, MEMORY[0x1E697F528], MEMORY[0x1E697F518], MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ContentShapeKindModifier<ToolbarButtonHoverShape> and conformance _ContentShapeKindModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ContentShapeKindModifier<ToolbarButtonHoverShape> and conformance _ContentShapeKindModifier<A>;
  if (!lazy protocol witness table cache variable for type _ContentShapeKindModifier<ToolbarButtonHoverShape> and conformance _ContentShapeKindModifier<A>)
  {
    type metadata accessor for ToggleStyleModifier<ButtonToggleStyle>(255, &lazy cache variable for type metadata for _ContentShapeKindModifier<ToolbarButtonHoverShape>, lazy protocol witness table accessor for type ToolbarButtonHoverShape and conformance ToolbarButtonHoverShape, &type metadata for ToolbarButtonHoverShape, MEMORY[0x1E69805E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ContentShapeKindModifier<ToolbarButtonHoverShape> and conformance _ContentShapeKindModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomHoverEffectModifier<HoverEffect> and conformance CustomHoverEffectModifier<A>()
{
  result = lazy protocol witness table cache variable for type CustomHoverEffectModifier<HoverEffect> and conformance CustomHoverEffectModifier<A>;
  if (!lazy protocol witness table cache variable for type CustomHoverEffectModifier<HoverEffect> and conformance CustomHoverEffectModifier<A>)
  {
    type metadata accessor for ToggleStyleModifier<ButtonToggleStyle>(255, &lazy cache variable for type metadata for CustomHoverEffectModifier<HoverEffect>, lazy protocol witness table accessor for type HoverEffect and conformance HoverEffect, &type metadata for HoverEffect, type metadata accessor for CustomHoverEffectModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomHoverEffectModifier<HoverEffect> and conformance CustomHoverEffectModifier<A>);
  }

  return result;
}

uint64_t implicit closure #4 in static AccessibilityLargeContentViewModifier._makeView(modifier:inputs:body:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a1[5];
  v23 = a1[4];
  v24 = v6;
  v7 = a1[7];
  v25 = a1[6];
  v26 = v7;
  v8 = a1[1];
  v19 = *a1;
  v20 = v8;
  v9 = a1[3];
  v21 = a1[2];
  v22 = v9;
  *&v27 = a2;
  *(&v27 + 1) = a3;
  *&v28 = a4;
  *(&v28 + 1) = a5;
  v10 = type metadata accessor for AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform();
  v17 = v10;
  WitnessTable = swift_getWitnessTable();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v27, a1, v10);
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v19, partial apply for closure #1 in Attribute.init<A>(_:), v16, v10, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v27 = v19;
  v28 = v20;
  v29 = v21;
  v30 = v22;
  (*(v11 + 8))(&v27, v10);
  return v15;
}

void type metadata accessor for ModifiedContent<Divider, _PaddingLayout>?()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Divider, _PaddingLayout>?)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_3(255, &lazy cache variable for type metadata for ModifiedContent<Divider, _PaddingLayout>, &type metadata for Divider, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Divider, _PaddingLayout>?);
    }
  }
}

uint64_t initializeWithTake for BarItemView(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 96) = *(a2 + 96);
  swift_unknownObjectWeakTakeInit();
  return a1;
}

unint64_t type metadata accessor for UIBarButtonItem()
{
  result = lazy cache variable for type metadata for UIBarButtonItem;
  if (!lazy cache variable for type metadata for UIBarButtonItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIBarButtonItem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BarEdgeInput and conformance BarEdgeInput()
{
  result = lazy protocol witness table cache variable for type BarEdgeInput and conformance BarEdgeInput;
  if (!lazy protocol witness table cache variable for type BarEdgeInput and conformance BarEdgeInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BarEdgeInput and conformance BarEdgeInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BarEdgeInput and conformance BarEdgeInput;
  if (!lazy protocol witness table cache variable for type BarEdgeInput and conformance BarEdgeInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BarEdgeInput and conformance BarEdgeInput);
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v3 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v3;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v4 = *(a2 + 120);
  *(a1 + 120) = v4;

  v5 = v4;
  return a1;
}

void destroy for AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform(uint64_t a1)
{

  v2 = *(a1 + 120);
}

uint64_t View.onScrollVisibilityChange(threshold:_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a4 < 0.0)
  {
    a4 = 0.0;
  }

  if (a4 > 1.0)
  {
    a4 = 1.0;
  }

  *v5 = a4;
  v5[1] = a1;
  v5[2] = a2;
  v6 = 0;
  v7 = 0;
  return MEMORY[0x18D00A570](v5, a3, &unk_1EFFAF280);
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Text.Sizing>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.Sizing>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.Sizing>);
    }
  }
}

uint64_t View.textSizing(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t sub_18BF54278@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.textSizing.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

void FlipForRTLTransform.value.getter(uint64_t a1@<X8>)
{
  v2 = *AGGraphGetValue();
  if (v2 != 2 && *AGGraphGetValue() == (v2 & 1))
  {
    Value = AGGraphGetValue();
    v7 = *(Value + 8);
    *a1 = *Value;
    *(a1 + 8) = v7;
    v8 = *(Value + 32);
    *(a1 + 16) = *(Value + 16);
    *(a1 + 32) = v8;
    type metadata accessor for CGPoint(0);

    v9 = AGGraphGetValue();
    ViewTransform.resetPosition(_:)(*v9);
    AGGraphGetValue();
    ViewSize.width.getter();
    *&v11.a = 0xBFF0000000000000;
    v11.c = 0.0;
    v11.d = 1.0;
    v11.tx = v10;
    v11.ty = 0.0;
    ViewTransform.appendAffineTransform(_:inverse:)(&v11, 1);
  }

  else
  {
    v3 = AGGraphGetValue();
    v4 = *(v3 + 8);
    *a1 = *v3;
    *(a1 + 8) = v4;
    v5 = *(v3 + 32);
    *(a1 + 16) = *(v3 + 16);
    *(a1 + 32) = v5;
  }
}

uint64_t assignWithCopy for DefaultToolbarBarPocketModifier(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of _ViewList_View?(a1, &lazy cache variable for type metadata for Environment<ToolbarItemPlacement.Role>.Content, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E697DCB8], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
    if (*(a2 + 41))
    {
      if (*(a2 + 40) == 1)
      {
        v4 = *(a2 + 3);
        *(a1 + 24) = v4;
        *(a1 + 32) = *(a2 + 4);
        (**(v4 - 8))(a1, a2);
        *(a1 + 40) = 1;
      }

      else
      {
        v5 = *a2;
        v6 = a2[1];
        *(a1 + 25) = *(a2 + 25);
        *a1 = v5;
        *(a1 + 16) = v6;
      }

      *(a1 + 41) = 1;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 41) = 0;
    }
  }

  v7 = *(a2 + 6);
  v8 = *(a2 + 56);
  outlined copy of Environment<Selector?>.Content(v7, v8);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  return a1;
}

uint64_t assignWithCopy for InsetListLabelStyle.StyleView(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v4);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of Environment<Selector?>.Content(v5, v6);
  return a1;
}

uint64_t assignWithCopy for ToolbarButtonStyle(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of Environment<ToolbarItemPlacement.Role>.Content(a1);
    if (*(a2 + 41))
    {
      if (*(a2 + 40) == 1)
      {
        v4 = *(a2 + 3);
        *(a1 + 24) = v4;
        *(a1 + 32) = *(a2 + 4);
        (**(v4 - 8))(a1, a2);
        *(a1 + 40) = 1;
      }

      else
      {
        v5 = *a2;
        v6 = a2[1];
        *(a1 + 25) = *(a2 + 25);
        *a1 = v5;
        *(a1 + 16) = v6;
      }

      *(a1 + 41) = 1;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 41) = 0;
    }
  }

  v7 = *(a2 + 6);
  v8 = *(a2 + 56);
  outlined copy of Environment<Selector?>.Content(v7, v8);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = *(a2 + 8);
  v12 = *(a2 + 72);
  outlined copy of Environment<Selector?>.Content(v11, v12);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  *(a1 + 64) = v11;
  *(a1 + 72) = v12;
  outlined consume of Environment<Selector?>.Content(v13, v14);
  return a1;
}

uint64_t assignWithCopy for SearchCompletionButtonStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 72);
  if (*(a1 + 72) != 255)
  {
    if (v6 == 255)
    {
      outlined destroy of TextInputSuggestionCompletionKind(a1);
      *a1 = *a2;
      v10 = *(a2 + 32);
      v9 = *(a2 + 48);
      v11 = *(a2 + 16);
      *(a1 + 57) = *(a2 + 57);
      *(a1 + 32) = v10;
      *(a1 + 48) = v9;
      *(a1 + 16) = v11;
    }

    else if (a1 != a2)
    {
      outlined destroy of TextInputSuggestionCompletionKind(a1);
      if (*(a2 + 72))
      {
        goto LABEL_5;
      }

LABEL_9:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 72) = 0;

      if (a1 == a2)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    if (a1 == a2)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (v6 != 255)
  {
    if (v6)
    {
LABEL_5:
      v7 = *(a2 + 24);
      *(a1 + 24) = v7;
      (**(v7 - 8))(a1, a2);
      v8 = *(a2 + 56);
      *(a1 + 56) = v8;
      *(a1 + 64) = *(a2 + 64);
      (**(v8 - 8))(a1 + 32, a2 + 32);
      *(a1 + 72) = 1;
      if (a1 == a2)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    goto LABEL_9;
  }

  *a1 = *a2;
  v19 = *(a2 + 16);
  v20 = *(a2 + 32);
  v21 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v20;
  *(a1 + 48) = v21;
  *(a1 + 16) = v19;
  if (a1 == a2)
  {
    goto LABEL_21;
  }

LABEL_13:
  v12 = *(a3 + 20);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  outlined destroy of Environment<DismissSearchAccessoryAction>.Content(a1 + v12, type metadata accessor for Environment<DismissSearchAccessoryAction>.Content);
  type metadata accessor for Environment<DismissSearchAccessoryAction>.Content();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Binding<SearchFieldState>(0);
    v16 = v15;
    v17 = *(v15 - 8);
    if ((*(v17 + 48))(v14, 1, v15))
    {
      _s7SwiftUI11EnvironmentV7ContentOyAA7BindingVy10Foundation16AttributedStringVGSg_GMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>?, type metadata accessor for Binding<SearchFieldState>, MEMORY[0x1E69E6720]);
      memcpy(v13, v14, *(*(v18 - 8) + 64));
    }

    else
    {
      *v13 = *v14;
      v45 = v17;
      v13[1] = v14[1];
      v22 = *(v16 + 32);
      v23 = v13 + v22;
      v24 = v14 + v22;
      *v23 = *(v14 + v22);
      v23[1] = *(v14 + v22 + 1);
      v23[2] = *(v14 + v22 + 2);
      v23[3] = *(v14 + v22 + 3);
      LODWORD(v22) = *(v14 + v22 + 4);
      v23[8] = v24[8];
      *(v23 + 1) = v22;
      v25 = type metadata accessor for SearchFieldState(0);
      v46 = a3;
      v26 = v25[9];
      v27 = type metadata accessor for AttributedString();
      v44 = *(*(v27 - 8) + 16);

      v28 = &v23[v26];
      v29 = &v24[v26];
      a3 = v46;
      v44(v28, v29, v27);
      v23[v25[10]] = v24[v25[10]];
      v30 = v25[11];
      v31 = &v23[v30];
      v32 = &v24[v30];
      v33 = v32[4];
      *v31 = *v32;
      v31[4] = v33;
      (*(v45 + 56))(v13, 0, 1, v16);
    }
  }

  else
  {
    *v13 = *v14;
  }

  swift_storeEnumTagMultiPayload();
LABEL_21:
  v34 = *(a3 + 24);
  v35 = a1 + v34;
  v36 = a2 + v34;
  v37 = *v36;
  v38 = *(v36 + 8);
  v39 = *(v36 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(*v36, v38, v39);
  v40 = *v35;
  v41 = *(v35 + 8);
  v42 = *(v35 + 16);
  *v35 = v37;
  *(v35 + 8) = v38;
  *(v35 + 16) = v39;
  outlined consume of Environment<TriggerSubmitAction?>.Content(v40, v41, v42, outlined consume of TriggerSubmitAction?);
  return a1;
}

uint64_t outlined destroy of Environment<DismissSearchAccessoryAction>.Content(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *assignWithCopy for ToolbarButtonStyle.ResolvedBody(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  if (a1 != a2)
  {
    v7 = *(v6 + 24);
    v8 = &a1[v7];
    v9 = &a2[v7];
    outlined destroy of ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>(&a1[v7], type metadata accessor for ButtonAction);
    type metadata accessor for ButtonAction();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v26 = *v9;
      v27 = *(v9 + 1);
      v28 = v9[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v9, v27, v28);
      *v8 = v26;
      *(v8 + 1) = v27;
      v8[16] = v28;
      v29 = *(v9 + 3);
      *(v8 + 3) = v29;
      v30 = *(v9 + 5);
      *(v8 + 4) = *(v9 + 4);
      *(v8 + 5) = v30;
      v31 = v29;
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v41 = a3;
        v11 = *v9;
        v12 = *(v9 + 1);
        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        v15 = v9[34];
        v16 = *(v9 + 16);
        outlined copy of Environment<OpenURLAction>.Content(*v9, v12, v14, v13, v16, v15);
        *v8 = v11;
        *(v8 + 1) = v12;
        *(v8 + 2) = v14;
        *(v8 + 3) = v13;
        *(v8 + 16) = v16;
        v8[34] = v15;
        v17 = *(v9 + 5);
        v18 = *(v9 + 6);
        v19 = *(v9 + 7);
        v20 = *(v9 + 8);
        LOBYTE(v12) = v9[74];
        LOWORD(v14) = *(v9 + 36);
        outlined copy of Environment<OpenURLAction>.Content(v17, v18, v19, v20, v14, v12);
        *(v8 + 5) = v17;
        *(v8 + 6) = v18;
        *(v8 + 7) = v19;
        *(v8 + 8) = v20;
        *(v8 + 36) = v14;
        v8[74] = v12;
        a3 = v41;
        v21 = *(type metadata accessor for LinkDestination() + 24);
        v22 = &v8[v21];
        v23 = &v9[v21];
        v24 = type metadata accessor for URL();
        (*(*(v24 - 8) + 16))(v22, v23, v24);
        v25 = type metadata accessor for LinkDestination.Configuration();
        v22[*(v25 + 20)] = v23[*(v25 + 20)];
LABEL_8:
        swift_storeEnumTagMultiPayload();
        goto LABEL_9;
      }

      v32 = *(v9 + 1);
      *v8 = *v9;
      *(v8 + 1) = v32;
    }

    goto LABEL_8;
  }

LABEL_9:
  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  v33 = *(a3 + 24);
  v34 = &a1[v33];
  v35 = &a2[v33];
  v36 = *v35;
  v37 = v35[8];
  outlined copy of Environment<Selector?>.Content(*v35, v37);
  v38 = *v34;
  v39 = v34[8];
  *v34 = v36;
  v34[8] = v37;
  outlined consume of Environment<Selector?>.Content(v38, v39);
  return a1;
}

uint64_t assignWithCopy for ToolbarButtonContentModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  outlined copy of Environment<Selector?>.Content(v3, v4);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  outlined consume of Environment<Selector?>.Content(v5, v6);
  return a1;
}

uint64_t assignWithCopy for UIKitSystemButtonConfigurationModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIButton.Configuration();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for ToolbarButtonLabelModifier(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of Environment<ToolbarItemPlacement.Role>.Content(a1);
    if (*(a2 + 41))
    {
      if (*(a2 + 40) == 1)
      {
        v4 = *(a2 + 3);
        *(a1 + 24) = v4;
        *(a1 + 32) = *(a2 + 4);
        (**(v4 - 8))(a1, a2);
        *(a1 + 40) = 1;
      }

      else
      {
        v5 = *a2;
        v6 = a2[1];
        *(a1 + 25) = *(a2 + 25);
        *a1 = v5;
        *(a1 + 16) = v6;
      }

      *(a1 + 41) = 1;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 41) = 0;
    }
  }

  v7 = *(a2 + 6);
  v8 = *(a2 + 7);
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  v11 = *(a2 + 81);
  v12 = *(a2 + 80);
  outlined copy of Environment<ToolbarItemMetrics?>.Content(v7, v8, v9, v10, v12, v11);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v17 = *(a1 + 81);
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  *(a1 + 72) = v10;
  v18 = *(a1 + 80);
  *(a1 + 80) = v12;
  *(a1 + 81) = v11;
  outlined consume of Environment<ToolbarItemMetrics?>.Content(v13, v14, v15, v16, v18, v17);
  v19 = *(a2 + 11);
  LOBYTE(v8) = *(a2 + 96);
  outlined copy of Environment<Selector?>.Content(v19, v8);
  v20 = *(a1 + 88);
  v21 = *(a1 + 96);
  *(a1 + 88) = v19;
  *(a1 + 96) = v8;
  outlined consume of Environment<Selector?>.Content(v20, v21);
  v22 = *(a2 + 13);
  LOBYTE(v8) = *(a2 + 112);
  outlined copy of Environment<Selector?>.Content(v22, v8);
  v23 = *(a1 + 104);
  v24 = *(a1 + 112);
  *(a1 + 104) = v22;
  *(a1 + 112) = v8;
  outlined consume of Environment<Selector?>.Content(v23, v24);
  v25 = *(a2 + 15);
  LOBYTE(v8) = *(a2 + 128);
  outlined copy of Environment<Selector?>.Content(v25, v8);
  v26 = *(a1 + 120);
  v27 = *(a1 + 128);
  *(a1 + 120) = v25;
  *(a1 + 128) = v8;
  outlined consume of Environment<Selector?>.Content(v26, v27);
  v28 = *(a2 + 17);
  v29 = *(a2 + 144);
  outlined copy of Environment<Selector?>.Content(v28, v29);
  v30 = *(a1 + 136);
  v31 = *(a1 + 144);
  *(a1 + 136) = v28;
  *(a1 + 144) = v29;
  outlined consume of Environment<Selector?>.Content(v30, v31);
  return a1;
}

uint64_t partial apply for closure #1 in OnScrollVisibilityChangeModifier.body(content:)()
{
  return partial apply for closure #1 in OnScrollVisibilityChangeModifier.body(content:)();
}

{
  if (*(v0 + 48))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Text.Sizing> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Sizing> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Sizing> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Text.Sizing>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Sizing> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

Swift::Void __swiftcall ToolbarMakeEntries.updateValue()()
{
  v1 = v0;
  v90 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ToolbarViewListVisitor(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*AGGraphGetValue())
  {
    v68 = MEMORY[0x1E69E7CC0];
    type metadata accessor for [ToolbarStorage.Entry](0, &lazy cache variable for type metadata for [ToolbarStorage.Entry], type metadata accessor for ToolbarStorage.Entry, MEMORY[0x1E69E62F8]);
    AGGraphSetOutputValue();
    return;
  }

  type metadata accessor for ViewList();
  Value = AGGraphGetValue();
  outlined init with copy of _Benchmark(Value, v86);
  v6 = *(v0 + 72);
  default argument 2 of _VariadicView_Children.init(_:contentSubgraph:transform:)();
  v87 = v6;
  v88 = v68;
  v89 = v69;
  v7 = *(v1 + 80);
  v8 = v6;
  v9 = AGGraphGetValue();
  outlined init with copy of ToolbarItemPlacement(v9, &v84);
  v82 = v84;
  v83[0] = v85[0];
  *(v83 + 9) = *(v85 + 9);
  v10 = *MEMORY[0x1E698D3F8];
  if (*(v1 + 64) == *MEMORY[0x1E698D3F8])
  {
    v11 = 5;
  }

  else
  {
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for ToolbarDefaultItemKind?);
    v11 = *AGGraphGetValue();
  }

  v59 = v11;
  if (*(v1 + 40) == v10)
  {
    v57 = 0;
  }

  else
  {
    v57 = *AGGraphGetValue();
  }

  v12 = *(v1 + 44);
  v60 = v7;
  v61 = v8;
  if (v12 == v10)
  {
    v56 = 0;
  }

  else
  {
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for Color?);
    v56 = *AGGraphGetValue();
  }

  v68 = *v1;
  v13 = *(v1 + 8);
  v14 = *(v1 + 12);
  v15 = *(v1 + 16);
  v63 = *(v1 + 20);
  v72 = *(v1 + 21);
  v73 = *(v1 + 23);
  v16 = *(v1 + 40);
  v17 = *(v1 + 44);
  v18 = *(v1 + 52);
  v19 = *(v1 + 56);
  v20 = *(v1 + 64);
  v21 = *(v1 + 60);
  v81 = *(v1 + 80);
  v80 = v20;
  v69 = __PAIR64__(v14, v13);
  v58 = v15;
  v70 = v15;
  v71 = v63;
  v62 = *(v1 + 24);
  v74 = v62;
  LODWORD(v52) = v16;
  v75 = v16;
  v76 = v17;
  v77 = v18;
  v78 = v19;
  v79 = v21;
  v55 = ToolbarMakeEntries.resolvedDefaultVisibility.getter();
  if (v18 == v10)
  {
    v54 = 0;
    if (v19 != v10)
    {
LABEL_14:
      type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for Visibility?);
      v22 = *AGGraphGetValue();
      goto LABEL_17;
    }
  }

  else
  {
    v54 = *AGGraphGetValue();
    if (v19 != v10)
    {
      goto LABEL_14;
    }
  }

  v22 = 3;
LABEL_17:
  v53 = v22;
  if (v21 == v10 || (v23 = AGGraphGetValue(), v62 == v10) || (v24 = *v23, type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for String?), AGGraphGetValue(), v52 != v10) && *AGGraphGetValue())
  {
    v24 = 0;
  }

  type metadata accessor for PreferenceBridge();
  AGGraphGetValue();
  swift_weakInit();
  swift_weakAssign();
  v25 = 0;
  v26 = 0;
  if (v62 != v10)
  {
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for String?);
    v27 = AGGraphGetValue();
    v25 = *v27;
    v26 = v27[1];
  }

  if (DWORD1(v62) == v10)
  {
    v50 = 0;
    v28 = 0;
  }

  else
  {
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for String?);
    v29 = AGGraphGetValue();
    v28 = v29[1];
    v50 = *v29;
  }

  v51 = v26;
  v52 = v25;
  v30 = v24;
  if (DWORD2(v62) == v10)
  {
    v31 = 0;
    v32 = 0;
    v62 = 0u;
    v49 = 0u;
  }

  else
  {
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for MatchedTransitionIdentifier?);
    v33 = AGGraphGetValue();
    outlined init with copy of MatchedTransitionIdentifier?(v33, v65);
    v49 = v65[1];
    v62 = v65[0];
    v31 = v66;
    v32 = v67;
  }

  v34 = v63;
  v35 = v2[18];
  v36 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  (*(*(v36 - 8) + 56))(&v4[v35], 1, 1, v36);
  *v4 = v60;
  v37 = v83[0];
  *(v4 + 8) = v82;
  *(v4 + 24) = v37;
  *(v4 + 33) = *(v83 + 9);
  v4[49] = v59;
  v4[50] = v57;
  *(v4 + 7) = v56;
  v38 = v54;
  v4[64] = v55;
  v4[65] = v38;
  v4[66] = v53;
  *(v4 + 9) = v30;
  outlined init with take of WeakBox<PreferenceBridge>(&v64, (v4 + 80));
  *(v4 + 11) = v61;
  v4[96] = v34;
  *(v4 + 13) = 0;
  *(v4 + 14) = 0;
  v39 = &v4[v2[19]];
  v40 = v51;
  *v39 = v52;
  *(v39 + 1) = v40;
  v41 = &v4[v2[20]];
  *v41 = v50;
  *(v41 + 1) = v28;
  v42 = &v4[v2[21]];
  v43 = v49;
  *v42 = v62;
  *(v42 + 1) = v43;
  *(v42 + 4) = v31;
  *(v42 + 5) = v32;
  v4[v2[22]] = 0;
  v44 = v2[23];
  *&v4[v44] = MEMORY[0x1E69E7CC0];
  outlined init with copy of _VariadicView_Children(v86, &v68);
  *&v65[0] = 0;
  lazy protocol witness table accessor for type ToolbarViewListVisitor and conformance ToolbarViewListVisitor();
  _ViewList_Backing.visitViews<A>(applying:from:)();
  outlined destroy of _ViewList_Backing(&v68);
  ToolbarViewListVisitor.finalizeGroup()();
  LODWORD(v65[0]) = *AGGraphGetValue();
  ViewIdentity.Tracker.update(for:)();
  v45 = *&v4[v44];
  v46 = v45[2];
  if (v46)
  {
    v47 = *(v1 + 88);

    for (i = 0; i != v46; ++i)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = specialized _ArrayBuffer._consumeAndCreateNew()(v45);
      }

      if (i >= v45[2])
      {
        __break(1u);
      }

      type metadata accessor for ToolbarStorage.Entry(0);
      specialized ToolbarStorage.Entry.bindID<A>(_:)(v47);
    }
  }

  else
  {
  }

  v68 = v45;
  type metadata accessor for [ToolbarStorage.Entry](0, &lazy cache variable for type metadata for [ToolbarStorage.Entry], type metadata accessor for ToolbarStorage.Entry, MEMORY[0x1E69E62F8]);
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView_Children(v86);

  outlined destroy of ToolbarViewListVisitor(v4, type metadata accessor for ToolbarViewListVisitor);
}

uint64_t protocol witness for Rule.value.getter in conformance ToolbarModifier<A, B>.TransformSearch@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X2>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v7 = a2(*v4, a1[2], a1[3], a1[4]);
  v9 = v8;
  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 24) = v9;
  *a4 = a3;
  a4[1] = result;
  return result;
}

uint64_t sub_18BF55C1C()
{

  return swift_deallocObject();
}

uint64_t closure #1 in View.presentationCommon(_:onDismiss:id:)(void *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  _ss11AnyHashableVSgWOhTm_0(a1, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);
  v20 = *a2;
  v21 = *(a3 + 144);
  v36 = *(a3 + 128);
  v37 = v21;
  v38 = *(a3 + 160);
  v39 = *(a3 + 176);
  v22 = *(a3 + 80);
  v32 = *(a3 + 64);
  v33 = v22;
  v23 = *(a3 + 112);
  v34 = *(a3 + 96);
  v35 = v23;
  v24 = *(a3 + 16);
  v28 = *a3;
  v29 = v24;
  v25 = *(a3 + 48);
  v30 = *(a3 + 32);
  v31 = v25;
  if (getEnumTag for AccessibilityActionCategory.Category(&v28) == 1)
  {
    a1[34] = 0;
    *(a1 + 15) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 13) = 0u;
    *(a1 + 14) = 0u;
    *(a1 + 11) = 0u;
    *(a1 + 12) = 0u;
    *(a1 + 9) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
  }

  else
  {
    v48 = v36;
    v49 = v37;
    v50 = v38;
    v51 = v39;
    v44 = v32;
    v45 = v33;
    v46 = v34;
    v47 = v35;
    v40 = v28;
    v41 = v29;
    v42 = v30;
    v43 = v31;
    _ss11AnyHashableVSgWOcTm_1(a6, &v27[13], &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
    v27[8] = v48;
    v27[9] = v49;
    v27[10] = v50;
    LOBYTE(v27[11]) = v51;
    v27[4] = v44;
    v27[5] = v45;
    v27[6] = v46;
    v27[7] = v47;
    v27[0] = v40;
    v27[1] = v41;
    v27[2] = v42;
    v27[3] = v43;
    *(&v27[11] + 1) = a4;
    *&v27[12] = a5;
    DWORD2(v27[12]) = v20;
    *(&v27[15] + 1) = a7;
    *&v27[16] = a8;
    *(&v27[16] + 1) = a9;
    *&v27[17] = a10;
    memcpy(a1, v27, 0x118uLL);
    outlined copy of AppIntentExecutor?(a4);
  }

  return _ss11AnyHashableVSgWOcTm_1(a3, v27, &lazy cache variable for type metadata for Alert?, &type metadata for Alert);
}

double ToolbarGraphUtilities.MakeToolbarEnvironment.value.getter@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = HIDWORD(a1);
  Value = AGGraphGetValue();
  v5 = Value[1];
  *&v7 = *Value;
  *(&v7 + 1) = v5;
  if (*MEMORY[0x1E698D3F8] == v3)
  {
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<PreferencesOutputs>(0, &lazy cache variable for type metadata for [ContentScrollViewBox], &type metadata for ContentScrollViewBox, MEMORY[0x1E69E62F8]);

    AGGraphGetValue();
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_barConfiguration>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_barConfiguration>, &type metadata for EnvironmentValues.__Key_barConfiguration, &protocol witness table for EnvironmentValues.__Key_barConfiguration, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_barConfiguration> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (v5)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  result = *&v7;
  *a2 = v7;
  return result;
}

uint64_t partial apply for closure #1 in ToolbarModifier.TransformSearch.value.getter(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t closure #1 in ToolbarModifier.TransformSearch.value.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ToolbarStorage.SearchItem?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_1(a1, v6, type metadata accessor for ToolbarStorage.SearchItem?);
  v7 = type metadata accessor for ToolbarStorage.SearchItem(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
  {
    return _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOhTm_0(v6, type metadata accessor for ToolbarStorage.SearchItem?);
  }

  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOhTm_0(a1, type metadata accessor for ToolbarStorage.SearchItem?);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOhTm_0(v6, type metadata accessor for ToolbarStorage.SearchItem?);
  return _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_1(a2, a1, type metadata accessor for ToolbarStorage.SearchItem?);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined init with take of (offset: Int, element: ToolbarStorage.Item)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Void __swiftcall ToolbarViewListVisitor.finalizeGroup()()
{
  v1 = type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0);
  v85 = *(v1 - 8);
  v86 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ToolbarStorage.Entry(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Int, ToolbarStorage.Item)();
  v79 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (offset: Int, element: ToolbarStorage.Item)();
  v12 = v11;
  v84 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v68 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v68 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v68 - v21;
  v23 = *(v0 + 112);
  if (!v23)
  {
    return;
  }

  v75 = v3;
  v76 = v7;
  v77 = v4;
  v78 = v5;
  v81 = v0;
  v24 = *(v23 + 16);

  v26 = MEMORY[0x1E69E7CC0];
  v27 = v25;
  if (!v24)
  {
LABEL_13:
    v37 = *(v26 + 16);
    if (!v37)
    {

      return;
    }

    v74 = v27;
    if (v37 != 1)
    {

      v43 = v27;
      v24 = v81;
      goto LABEL_21;
    }

    outlined init with copy of ToolbarStorage.GroupItem(v26 + ((*(v84 + 80) + 32) & ~*(v84 + 80)), v16, type metadata accessor for (offset: Int, element: ToolbarStorage.Item));

    v38 = *v16;
    v39 = *(v79 + 48);
    v40 = v80;
    outlined init with take of (offset: Int, element: ToolbarStorage.Item)(v16 + *(v12 + 48), &v80[v39], type metadata accessor for ToolbarStorage.Item);
    _s7SwiftUI16CommandOperationVWOhTm_3(&v40[v39], type metadata accessor for ToolbarStorage.Item);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v27;
    v24 = v81;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v38 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v43 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
      if ((v38 & 0x8000000000000000) == 0)
      {
LABEL_18:
        if (v38 < *(v43 + 16))
        {
          v42 = type metadata accessor for ToolbarStorage.Item(0);
          *(v43 + ((*(*(v42 - 8) + 80) + 32) & ~*(*(v42 - 8) + 80)) + *(*(v42 - 8) + 72) * v38 + *(v42 + 80)) = 1;
LABEL_21:
          v44 = type metadata accessor for ToolbarViewListVisitor(0);
          v45 = (v24 + v44[19]);
          v47 = *v45;
          v46 = v45[1];
          v48 = (v24 + v44[20]);
          v49 = v48[1];
          v87 = *v48;
          _s7SwiftUI7ToolbarO13UpdateContextVSgWOcTm_0(v24 + v44[21], v91, &lazy cache variable for type metadata for MatchedTransitionIdentifier?, &type metadata for MatchedTransitionIdentifier, MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
          outlined init with copy of ToolbarItemPlacement.Role(v24 + 8, &v89);
          LODWORD(v84) = *(v24 + 50);
          v50 = *(v24 + 56);
          LODWORD(v80) = *(v24 + 64);
          LODWORD(v79) = *(v24 + 65);
          v73 = *(v24 + 66);
          v72 = *(v24 + 72);
          v51 = *(v43 + 16);
          if (v51)
          {
            v69 = v47;
            v88 = MEMORY[0x1E69E7CC0];
            v71 = v46;

            v70 = v49;

            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51, 0);
            v52 = v88;
            v53 = *(type metadata accessor for ToolbarStorage.Item(0) - 8);
            v54 = v43 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
            v55 = *(v53 + 72);
            v56 = v75;
            do
            {
              outlined init with copy of ToolbarStorage.GroupItem(v54, v56, type metadata accessor for ToolbarStorage.Item);
              swift_storeEnumTagMultiPayload();
              v88 = v52;
              v58 = *(v52 + 16);
              v57 = *(v52 + 24);
              if (v58 >= v57 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v57 > 1, v58 + 1, 1);
                v52 = v88;
              }

              *(v52 + 16) = v58 + 1;
              outlined init with take of (offset: Int, element: ToolbarStorage.Item)(v56, v52 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v58, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
              v54 += v55;
              --v51;
            }

            while (v51);

            v24 = v81;
            v46 = v71;
            v49 = v70;
            v47 = v69;
          }

          else
          {

            v52 = MEMORY[0x1E69E7CC0];
          }

          v28 = v44[18];
          v59 = v83;
          _s7SwiftUI7ToolbarO13UpdateContextVSgWOcTm_0(v24 + v28, v83 + *(v76 + 15), &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720], _s7SwiftUI16CommandOperationVSgMaTm_3);
          *&v60 = v47;
          *(&v60 + 1) = v46;
          *&v61 = v87;
          *(&v61 + 1) = v49;
          *v59 = v60;
          *(v59 + 16) = v61;
          v62 = v91[1];
          *(v59 + 32) = v91[0];
          *(v59 + 48) = v62;
          v63 = v89;
          v64 = v90[0];
          *(v59 + 64) = v91[2];
          *(v59 + 80) = v63;
          *(v59 + 96) = v64;
          *(v59 + 105) = *(v90 + 9);
          *(v59 + 121) = v84;
          *(v59 + 128) = v50;
          *(v59 + 136) = v80;
          *(v59 + 137) = v79;
          *(v59 + 138) = v73;
          *(v59 + 144) = v72;
          *(v59 + 152) = v52;
          v22 = v82;
          outlined init with copy of ToolbarStorage.GroupItem(v59, v82, type metadata accessor for ToolbarStorage.GroupItem);
          type metadata accessor for ToolbarStorage.Entry.Kind(0);
          swift_storeEnumTagMultiPayload();
          v22[*(v77 + 20)] = 2;
          v16 = v44[23];
          v7 = *(v24 + v16);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_29;
          }

          goto LABEL_34;
        }

LABEL_37:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v28 = 0;
  while (v28 < v27[2])
  {
    v29 = (type metadata accessor for ToolbarStorage.Item(0) - 8);
    v7 = v27;
    v30 = v27 + ((*(*v29 + 80) + 32) & ~*(*v29 + 80)) + *(*v29 + 72) * v28;
    v31 = *(v12 + 48);
    *v19 = v28;
    outlined init with copy of ToolbarStorage.GroupItem(v30, v19 + v31, type metadata accessor for ToolbarStorage.Item);
    outlined init with take of (offset: Int, element: ToolbarStorage.Item)(v19, v22, type metadata accessor for (offset: Int, element: ToolbarStorage.Item));
    outlined init with copy of ToolbarStorage.GroupItem(v22, v16, type metadata accessor for (offset: Int, element: ToolbarStorage.Item));
    v32 = v16 + *(v12 + 48);
    v33 = *(v32 + v29[21]);
    _s7SwiftUI16CommandOperationVWOhTm_3(v32, type metadata accessor for ToolbarStorage.Item);
    if (v33)
    {
      _s7SwiftUI16CommandOperationVWOhTm_3(v22, type metadata accessor for (offset: Int, element: ToolbarStorage.Item));
    }

    else
    {
      outlined init with take of (offset: Int, element: ToolbarStorage.Item)(v22, v87, type metadata accessor for (offset: Int, element: ToolbarStorage.Item));
      v34 = swift_isUniquelyReferenced_nonNull_native();
      *&v91[0] = v26;
      if ((v34 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 16) + 1, 1);
        v26 = *&v91[0];
      }

      v36 = *(v26 + 16);
      v35 = *(v26 + 24);
      if (v36 >= v35 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1);
        v26 = *&v91[0];
      }

      *(v26 + 16) = v36 + 1;
      outlined init with take of (offset: Int, element: ToolbarStorage.Item)(v87, v26 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v36, type metadata accessor for (offset: Int, element: ToolbarStorage.Item));
    }

    ++v28;
    v27 = v7;
    if (v24 == v28)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_34:
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
LABEL_29:
  v66 = v7[2];
  v65 = v7[3];
  if (v66 >= v65 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v65 > 1, v66 + 1, 1, v7);
  }

  _s7SwiftUI16CommandOperationVWOhTm_3(v83, type metadata accessor for ToolbarStorage.GroupItem);
  v7[2] = v66 + 1;
  outlined init with take of (offset: Int, element: ToolbarStorage.Item)(v22, v7 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v66, type metadata accessor for ToolbarStorage.Entry);

  *(v24 + v16) = v7;
  *(v24 + 112) = 0;
  outlined destroy of _ViewList_View?(v24 + v28, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720], _s7SwiftUI16CommandOperationVSgMaTm_3);
  v67 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  (*(*(v67 - 8) + 56))(v24 + v28, 1, 1, v67);
}

void type metadata accessor for (offset: Int, element: ToolbarStorage.Item)()
{
  if (!lazy cache variable for type metadata for (offset: Int, element: ToolbarStorage.Item))
  {
    type metadata accessor for ToolbarStorage.Item(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: ToolbarStorage.Item));
    }
  }
}

char *initializeWithCopy for ToolbarStorage.Entry(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *a1 = *a2;
      v16 = a1 + 8;
      if (a2[48] == 1)
      {
        v17 = *(a2 + 2);
        *(a1 + 2) = v17;
        (**(v17 - 8))(v16, (a2 + 8));
        a1[48] = 1;
      }

      else
      {
        v18 = *(a2 + 24);
        *v16 = *(a2 + 8);
        *(a1 + 24) = v18;
        *(a1 + 33) = *(a2 + 33);
      }

      a1[49] = a2[49];
      *(a1 + 7) = *(a2 + 7);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 9) = *(a2 + 9);

      swift_storeEnumTagMultiPayload();
      goto LABEL_144;
    case 1:
      v12 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v12;
      v13 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v13;
      v14 = *(a2 + 7);

      if (v14)
      {
        v15 = *(a2 + 8);
        *(a1 + 7) = v14;
        *(a1 + 8) = v15;
        (**(v14 - 8))((a1 + 32), (a2 + 32), v14);
        *(a1 + 9) = *(a2 + 9);
      }

      else
      {
        v19 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v19;
        *(a1 + 4) = *(a2 + 4);
      }

      v273 = a3;
      if (a2[120] == 1)
      {
        v20 = *(a2 + 104);
        *(a1 + 104) = v20;
        (**(v20 - 8))((a1 + 80), (a2 + 80));
        a1[120] = 1;
      }

      else
      {
        v21 = *(a2 + 6);
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = v21;
        *(a1 + 105) = *(a2 + 105);
      }

      a1[121] = a2[121];
      *(a1 + 16) = *(a2 + 16);
      a1[136] = a2[136];
      *(a1 + 137) = *(a2 + 137);
      v22 = *(a2 + 19);
      *(a1 + 18) = *(a2 + 18);
      *(a1 + 19) = v22;
      v23 = *(type metadata accessor for ToolbarStorage.GroupItem(0) + 60);
      v24 = &a1[v23];
      v25 = &a2[v23];
      v26 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
      v27 = *(v26 - 8);
      v28 = *(v27 + 48);

      if (v28(v25, 1, v26))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
        memcpy(v24, v25, *(*(v29 - 8) + 64));
LABEL_143:
        swift_storeEnumTagMultiPayload();
        a3 = v273;
        goto LABEL_144;
      }

      v271 = v24;
      v263 = v27;
      v265 = v26;
      type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
      v30 = v25;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v78 = *(v25 + 3);
        v79 = v24;
        *(v24 + 3) = v78;
        (**(v78 - 8))(v24, v25);
        v80 = v25[6];
        v24[5] = v25[5];
        v24[6] = v80;
        v24[7] = v25[7];
        v24[8] = v25[8];
        *(v24 + 9) = *(v25 + 9);
        v81 = v25[11];
        v24[11] = v81;

        v82 = v81;
        v83 = v265;
LABEL_142:
        swift_storeEnumTagMultiPayload();
        v239 = *(v83 + 20);
        v240 = *&v30[v239];
        *(v79 + v239) = v240;
        v241 = *(v27 + 56);
        v242 = v240;
        v241(v79, 0, 1, v83);
        goto LABEL_143;
      }

      v269 = a1;
      v31 = *v25;
      v32 = v25[1];
      v33 = v24;
      *v24 = *v25;
      v24[1] = v32;
      v34 = v25[3];
      v24[2] = v25[2];
      v24[3] = v34;
      *(v24 + 32) = *(v25 + 32);
      v35 = v25[6];
      v24[5] = v25[5];
      v24[6] = v35;
      *(v24 + 56) = *(v25 + 56);
      v36 = v25[24];
      v37 = v31;
      v38 = v32;

      if (v36 >> 1 == 4294967294)
      {
        v39 = *(v25 + 13);
        *(v24 + 12) = *(v25 + 12);
        *(v24 + 13) = v39;
        *(v24 + 14) = *(v25 + 14);
        *(v24 + 235) = *(v25 + 235);
        v40 = *(v25 + 9);
        *(v24 + 8) = *(v25 + 8);
        *(v24 + 9) = v40;
        v41 = *(v25 + 11);
        *(v24 + 10) = *(v25 + 10);
        *(v24 + 11) = v41;
        v42 = *(v25 + 5);
        *(v24 + 4) = *(v25 + 4);
        *(v24 + 5) = v42;
        v43 = *(v25 + 7);
        *(v24 + 6) = *(v25 + 6);
        *(v24 + 7) = v43;
      }

      else
      {
        v86 = *(v25 + 72);
        if (v86 == 255)
        {
          v24[8] = v25[8];
          *(v24 + 72) = *(v25 + 72);
        }

        else
        {
          v87 = v25[8];
          outlined copy of GraphicsImage.Contents(v87, *(v25 + 72));
          v24[8] = v87;
          *(v24 + 72) = v86;
          v36 = v25[24];
        }

        v24[10] = v25[10];
        *(v24 + 11) = *(v25 + 11);
        *(v24 + 104) = *(v25 + 104);
        *(v24 + 108) = *(v25 + 108);
        *(v24 + 121) = *(v25 + 121);
        *(v24 + 17) = *(v25 + 17);
        *(v24 + 19) = *(v25 + 19);
        *(v24 + 84) = *(v25 + 84);
        *(v24 + 170) = *(v25 + 170);
        *(v24 + 171) = *(v25 + 171);
        if (v36 >> 1 == 0xFFFFFFFF)
        {
          v163 = *(v25 + 12);
          *(v24 + 11) = *(v25 + 11);
          *(v24 + 12) = v163;
        }

        else
        {
          v164 = v25[22];
          v165 = v25[23];
          v166 = v25[25];
          outlined copy of AccessibilityImageLabel(*(v30 + 22), *(v30 + 23), v36);
          v24[22] = v164;
          v24[23] = v165;
          v24[24] = v36;
          v24[25] = v166;
        }

        v167 = *(v30 + 27);
        v24[26] = *(v30 + 26);
        v24[27] = v167;
        *(v24 + 112) = *(v30 + 112);
        *(v24 + 57) = *(v30 + 57);
        *(v24 + 232) = v30[232];
        v168 = *(v30 + 30);
        v24[30] = v168;
        *(v24 + 124) = *(v30 + 124);
        *(v24 + 250) = v30[250];
        swift_unknownObjectRetain();

        v169 = v168;
      }

      v170 = *(v30 + 33);
      if (v170)
      {
        v24[32] = *(v30 + 32);
        v24[33] = v170;
        v171 = *(v30 + 34);

        if (v171 >= 2)
        {
          v172 = v171;
        }

        v24[34] = v171;
        *(v24 + 70) = *(v30 + 70);
        *(v24 + 284) = v30[284];
        *(v24 + 285) = *(v30 + 285);
        v173 = *(v30 + 37);
        v24[36] = *(v30 + 36);
        v24[37] = v173;
      }

      else
      {
        v174 = *(v30 + 17);
        *(v24 + 16) = *(v30 + 16);
        *(v24 + 17) = v174;
        *(v24 + 18) = *(v30 + 18);
      }

      v175 = *(v30 + 42);
      v268 = v30;
      if (v175 >> 2 == 0xFFFFFFFF)
      {
        v176 = *(v30 + 24);
        *(v24 + 23) = *(v30 + 23);
        *(v24 + 24) = v176;
        v24[50] = *(v30 + 50);
        v177 = *(v30 + 20);
        *(v24 + 19) = *(v30 + 19);
        *(v24 + 20) = v177;
        v178 = *(v30 + 22);
        *(v24 + 21) = *(v30 + 21);
        *(v24 + 22) = v178;
      }

      else
      {
        v179 = *(v30 + 38);
        v180 = *(v30 + 39);
        v181 = *(v30 + 40);
        v182 = *(v30 + 41);
        v183 = v268[43];
        v184 = v268[44];
        v244 = v268[46];
        v246 = v268[47];
        v250 = v268[48];
        v256 = v268[49];
        __dstc = v268[50];
        v185 = v268[45];
        outlined copy of PlatformItemList.Item.SystemItem(v179, v180, v181, v268[41], v175, v183, v184, v185, v244, v246, v250, v256, __dstc);
        v271[38] = v179;
        v271[39] = v180;
        v271[40] = v181;
        v271[41] = v182;
        v30 = v268;
        v271[42] = v175;
        v271[43] = v183;
        v33 = v271;
        v271[44] = v184;
        v271[45] = v185;
        v271[46] = v244;
        v271[47] = v246;
        v271[48] = v250;
        v271[49] = v256;
        v271[50] = __dstc;
      }

      v186 = *(v30 + 52);
      if (v186 == 1)
      {
        v187 = *(v30 + 456);
        *(v33 + 55) = *(v30 + 440);
        *(v33 + 57) = v187;
        *(v33 + 472) = v30[472];
        v188 = *(v30 + 424);
        *(v33 + 51) = *(v30 + 408);
        *(v33 + 53) = v188;
      }

      else
      {
        *(v33 + 102) = *(v30 + 102);
        *(v33 + 412) = v30[412];
        if (v186)
        {
          v189 = *(v30 + 53);
          v33[52] = v186;
          v33[53] = v189;
        }

        else
        {
          *(v33 + 26) = *(v30 + 26);
        }

        v190 = *(v30 + 54);
        if (v190)
        {
          v191 = *(v30 + 55);
          v33[54] = v190;
          v33[55] = v191;
        }

        else
        {
          *(v33 + 27) = *(v30 + 27);
        }

        v192 = *(v30 + 56);
        if (v192)
        {
          v193 = *(v30 + 57);
          v33[56] = v192;
          v33[57] = v193;
        }

        else
        {
          *(v33 + 28) = *(v30 + 28);
        }

        v33[58] = *(v30 + 58);
        *(v33 + 472) = v30[472];
      }

      v194 = *(v30 + 61);
      v33[60] = *(v30 + 60);
      v33[61] = v194;
      v33[62] = *(v30 + 62);
      *(v33 + 504) = v30[504];
      v195 = *(v30 + 64);

      if (v195)
      {
        v196 = *(v30 + 65);
        v33[64] = v195;
        v33[65] = v196;
      }

      else
      {
        *(v33 + 32) = *(v30 + 32);
      }

      *(v33 + 528) = v30[528];
      if (!*(v30 + 102))
      {
        memcpy(v33 + 67, v30 + 536, 0x130uLL);
        goto LABEL_127;
      }

      v33[67] = *(v30 + 67);
      v33[68] = *(v30 + 68);
      *(v33 + 552) = v30[552];
      v33[70] = *(v30 + 70);
      *(v33 + 568) = v30[568];
      *(v33 + 36) = *(v30 + 36);
      *(v33 + 592) = v30[592];
      v197 = v33 + 75;
      v198 = v30 + 600;
      v199 = *(v30 + 78);

      if (v199)
      {
        if (v199 == 1)
        {
          v200 = *(v30 + 616);
          *v197 = *v198;
          *(v33 + 77) = v200;
          *(v33 + 79) = *(v30 + 632);
LABEL_123:
          v33[81] = *(v30 + 81);
          *(v33 + 656) = v30[656];
          v202 = v33 + 83;
          v203 = v30 + 664;
          v204 = *(v30 + 97);
          if (v204 == 1)
          {
            v205 = *(v30 + 776);
            *(v33 + 95) = *(v30 + 760);
            *(v33 + 97) = v205;
            *(v33 + 99) = *(v30 + 792);
            *(v33 + 808) = v30[808];
            v206 = *(v30 + 712);
            *(v33 + 87) = *(v30 + 696);
            *(v33 + 89) = v206;
            v207 = *(v30 + 744);
            *(v33 + 91) = *(v30 + 728);
            *(v33 + 93) = v207;
            v208 = *(v30 + 680);
            *v202 = *v203;
            *(v33 + 85) = v208;
          }

          else
          {
            *v202 = *v203;
            *(v33 + 672) = v30[672];
            v33[85] = *(v30 + 85);
            *(v33 + 688) = v30[688];
            *(v33 + 689) = *(v30 + 689);
            *(v33 + 691) = v30[691];
            *(v33 + 692) = v30[692];
            v33[87] = *(v30 + 87);
            v209 = *(v30 + 45);
            *(v33 + 44) = *(v30 + 44);
            *(v33 + 45) = v209;
            v33[92] = *(v30 + 92);
            *(v33 + 372) = *(v30 + 372);
            *(v33 + 47) = *(v30 + 47);
            *(v33 + 768) = v30[768];
            v33[97] = v204;
            *(v33 + 49) = *(v30 + 49);
            v33[100] = *(v30 + 100);
            *(v33 + 808) = v30[808];
          }

          v33[102] = *(v30 + 102);
          v33[103] = *(v30 + 103);
          v33[104] = *(v30 + 104);

LABEL_127:
          v210 = v33 + 105;
          v211 = v30 + 840;
          v212 = *(v30 + 108);
          if (v212)
          {
            if (v212 == 1)
            {
              v213 = *(v30 + 856);
              *v210 = *v211;
              *(v33 + 107) = v213;
              *(v33 + 109) = *(v30 + 872);
              v33[111] = *(v30 + 111);
LABEL_135:
              v217 = *(v30 + 112);
              v33[112] = v217;
              v33[113] = *(v30 + 113);
              v33[114] = *(v30 + 114);
              v33[115] = *(v30 + 115);
              v33[116] = *(v30 + 116);
              v33[117] = *(v30 + 117);
              v33[118] = *(v30 + 118);
              *(v33 + 476) = *(v30 + 476);
              *(v33 + 954) = v30[954];
              v218 = type metadata accessor for PlatformItemList.Item();
              v219 = *(v218 + 112);
              v257 = v218;
              __dsta = v33 + v219;
              v220 = &v30[v219];
              v221 = type metadata accessor for CommandOperation();
              v222 = *(v221 - 8);
              v251 = *(v222 + 48);
              v223 = v217;

              if (v251(v220, 1, v221))
              {
                _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                memcpy(__dsta, v220, *(*(v224 - 8) + 64));
                v30 = v268;
                a1 = v269;
                v27 = v263;
                v83 = v265;
                v79 = v271;
              }

              else
              {
                v247 = v222;
                v252 = v221;
                v225 = v220;
                *__dsta = *v220;
                v226 = *(v221 + 20);
                v227 = &__dsta[v226];
                v228 = &v225[v226];
                v229 = *&v225[v226];
                v230 = *&v225[v226 + 8];
                v231 = v225[v226 + 16];
                outlined copy of Text.Storage(v229, v230, v231);
                *v227 = v229;
                *(v227 + 1) = v230;
                v227[16] = v231;
                *(v227 + 3) = *(v228 + 3);
                v232 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                v233 = type metadata accessor for UUID();
                v234 = *(*(v233 - 8) + 16);

                v234(&v227[v232], &v228[v232], v233);
                v235 = *(v252 + 24);
                v236 = &__dsta[v235];
                v237 = &v225[v235];
                if (*v237)
                {
                  v238 = *(v237 + 1);
                  *v236 = *v237;
                  *(v236 + 1) = v238;
                }

                else
                {
                  *v236 = *v237;
                }

                v30 = v268;
                a1 = v269;
                v27 = v263;
                v83 = v265;
                v79 = v271;
                (*(v247 + 56))(__dsta, 0, 1, v252);
              }

              *(v79 + v257[29]) = v30[v257[29]];
              *(v79 + v257[30]) = v30[v257[30]];
              *(v79 + v257[31]) = v30[v257[31]];
              *(v79 + v257[32]) = v30[v257[32]];
              *(v79 + v257[33]) = v30[v257[33]];
              *(v79 + v257[34]) = *&v30[v257[34]];

              goto LABEL_142;
            }

            v33[108] = v212;
            v33[109] = *(v30 + 109);
            (**(v212 - 1))(v210, v211);
          }

          else
          {
            v214 = *(v30 + 856);
            *v210 = *v211;
            *(v33 + 107) = v214;
            v33[109] = *(v30 + 109);
          }

          v215 = *(v30 + 110);
          if (v215)
          {
            v216 = *(v30 + 111);
            v33[110] = v215;
            v33[111] = v216;
          }

          else
          {
            *(v33 + 55) = *(v30 + 55);
          }

          goto LABEL_135;
        }

        v33[78] = v199;
        v33[79] = *(v30 + 79);
        (**(v199 - 1))((v33 + 75), (v30 + 600), v199);
      }

      else
      {
        v201 = *(v30 + 616);
        *v197 = *v198;
        *(v33 + 77) = v201;
        v33[79] = *(v30 + 79);
      }

      v33[80] = *(v30 + 80);

      goto LABEL_123;
    case 0:
      *a1 = *a2;
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 1) = *(a2 + 1);
      v8 = *(a2 + 5);
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 5) = v8;
      v9 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v9;
      v10 = *(a2 + 11);

      if (v10)
      {
        v11 = *(a2 + 12);
        *(a1 + 11) = v10;
        *(a1 + 12) = v11;
        (**(v10 - 8))((a1 + 64), (a2 + 64), v10);
        *(a1 + 13) = *(a2 + 13);
      }

      else
      {
        v44 = *(a2 + 5);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = v44;
        *(a1 + 6) = *(a2 + 6);
      }

      v274 = a3;
      if (a2[152] == 1)
      {
        v45 = *(a2 + 136);
        *(a1 + 136) = v45;
        (**(v45 - 8))((a1 + 112), (a2 + 112));
        a1[152] = 1;
      }

      else
      {
        v46 = *(a2 + 8);
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = v46;
        *(a1 + 137) = *(a2 + 137);
      }

      *(a1 + 153) = *(a2 + 153);
      *(a1 + 20) = *(a2 + 20);
      a1[168] = a2[168];
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 22) = *(a2 + 22);
      v47 = *(a2 + 13);
      *(a1 + 13) = v47;
      v48 = v47;
      v49 = **(v47 - 8);

      v49(a1 + 184, a2 + 184, v48);
      v50 = *(a2 + 29);
      *(a1 + 28) = *(a2 + 28);
      *(a1 + 29) = v50;
      *(a1 + 30) = *(a2 + 30);
      *(a1 + 31) = *(a2 + 31);
      *(a1 + 16) = *(a2 + 16);
      v51 = *(a2 + 34);
      v52 = *(a2 + 35);
      *(a1 + 34) = v51;
      *(a1 + 35) = v52;
      v267 = type metadata accessor for ToolbarStorage.Item(0);
      v270 = a1;
      v53 = v267[17];
      v272 = &a1[v53];
      v266 = a2;
      v54 = &a2[v53];
      v55 = type metadata accessor for PlatformItemList.Item();
      v56 = *(v55 - 8);
      v57 = *(v56 + 48);

      v58 = v51;
      v59 = v52;
      if (v57(v54, 1, v55))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
        memcpy(v272, v54, *(*(v60 - 8) + 64));
        a3 = v274;
LABEL_86:
        a2 = v266;
        swift_weakCopyInit();
        a1[v267[19]] = v266[v267[19]];
        a1[v267[20]] = v266[v267[20]];
        a1[v267[21]] = v266[v267[21]];
        swift_storeEnumTagMultiPayload();
        goto LABEL_144;
      }

      v262 = v56;
      v264 = v55;
      v61 = *v54;
      v62 = *(v54 + 1);
      v63 = v272;
      *v272 = *v54;
      *(v272 + 1) = v62;
      v64 = *(v54 + 3);
      *(v272 + 2) = *(v54 + 2);
      *(v272 + 3) = v64;
      v272[32] = v54[32];
      v65 = *(v54 + 6);
      *(v272 + 5) = *(v54 + 5);
      *(v272 + 6) = v65;
      v272[56] = v54[56];
      v66 = *(v54 + 24);
      v67 = v61;
      v68 = v62;

      if (v66 >> 1 == 4294967294)
      {
        v69 = *(v54 + 13);
        *(v272 + 12) = *(v54 + 12);
        *(v272 + 13) = v69;
        *(v272 + 14) = *(v54 + 14);
        *(v272 + 235) = *(v54 + 235);
        v70 = *(v54 + 9);
        *(v272 + 8) = *(v54 + 8);
        *(v272 + 9) = v70;
        v71 = *(v54 + 11);
        *(v272 + 10) = *(v54 + 10);
        *(v272 + 11) = v71;
        v72 = *(v54 + 5);
        *(v272 + 4) = *(v54 + 4);
        *(v272 + 5) = v72;
        v73 = *(v54 + 7);
        *(v272 + 6) = *(v54 + 6);
        *(v272 + 7) = v73;
        v74 = *(v54 + 33);
        if (v74)
        {
LABEL_30:
          *(v272 + 32) = *(v54 + 32);
          *(v272 + 33) = v74;
          v75 = *(v54 + 34);

          if (v75 >= 2)
          {
            v76 = v75;
          }

          *(v272 + 34) = v75;
          *(v272 + 70) = *(v54 + 70);
          v272[284] = v54[284];
          *(v272 + 285) = *(v54 + 285);
          v77 = *(v54 + 37);
          *(v272 + 36) = *(v54 + 36);
          *(v272 + 37) = v77;

LABEL_44:
          v96 = *(v54 + 42);
          if (v96 >> 2 == 0xFFFFFFFF)
          {
            v97 = *(v54 + 24);
            *(v272 + 23) = *(v54 + 23);
            *(v272 + 24) = v97;
            *(v272 + 50) = *(v54 + 50);
            v98 = *(v54 + 20);
            *(v272 + 19) = *(v54 + 19);
            *(v272 + 20) = v98;
            v99 = *(v54 + 22);
            *(v272 + 21) = *(v54 + 21);
            *(v272 + 22) = v99;
          }

          else
          {
            v100 = *(v54 + 38);
            v101 = *(v54 + 39);
            v103 = *(v54 + 40);
            v102 = *(v54 + 41);
            v105 = *(v54 + 43);
            v104 = *(v54 + 44);
            v107 = *(v54 + 45);
            v106 = *(v54 + 46);
            v245 = *(v54 + 47);
            v248 = *(v54 + 48);
            v253 = *(v54 + 49);
            __dstb = *(v54 + 50);
            outlined copy of PlatformItemList.Item.SystemItem(v100, v101, v103, v102, v96, v105, v104, v107, v106, v245, v248, v253, __dstb);
            *(v272 + 38) = v100;
            *(v272 + 39) = v101;
            *(v272 + 40) = v103;
            *(v272 + 41) = v102;
            v63 = v272;
            *(v272 + 42) = v96;
            *(v272 + 43) = v105;
            *(v272 + 44) = v104;
            *(v272 + 45) = v107;
            *(v272 + 46) = v106;
            *(v272 + 47) = v245;
            *(v272 + 48) = v248;
            *(v272 + 49) = v253;
            *(v272 + 50) = __dstb;
          }

          v108 = *(v54 + 52);
          if (v108 == 1)
          {
            v109 = *(v54 + 456);
            *(v63 + 55) = *(v54 + 440);
            *(v63 + 57) = v109;
            *(v63 + 472) = v54[472];
            v110 = *(v54 + 424);
            *(v63 + 51) = *(v54 + 408);
            *(v63 + 53) = v110;
            goto LABEL_57;
          }

          *(v63 + 102) = *(v54 + 102);
          *(v63 + 412) = v54[412];
          if (v108)
          {
            v111 = *(v54 + 53);
            v63[52] = v108;
            v63[53] = v111;

            v112 = *(v54 + 54);
            if (v112)
            {
              goto LABEL_51;
            }
          }

          else
          {
            *(v63 + 26) = *(v54 + 26);
            v112 = *(v54 + 54);
            if (v112)
            {
LABEL_51:
              v113 = *(v54 + 55);
              v63[54] = v112;
              v63[55] = v113;

              v114 = *(v54 + 56);
              if (v114)
              {
LABEL_52:
                v115 = *(v54 + 57);
                v63[56] = v114;
                v63[57] = v115;

LABEL_56:
                v63[58] = *(v54 + 58);
                *(v63 + 472) = v54[472];
LABEL_57:
                v116 = *(v54 + 61);
                v63[60] = *(v54 + 60);
                v63[61] = v116;
                v63[62] = *(v54 + 62);
                *(v63 + 504) = v54[504];
                v117 = *(v54 + 64);

                if (v117)
                {
                  v118 = *(v54 + 65);
                  v63[64] = v117;
                  v63[65] = v118;
                }

                else
                {
                  *(v63 + 32) = *(v54 + 32);
                }

                *(v63 + 528) = v54[528];
                if (!*(v54 + 102))
                {
                  memcpy(v63 + 67, v54 + 536, 0x130uLL);
                  goto LABEL_72;
                }

                v63[67] = *(v54 + 67);
                v63[68] = *(v54 + 68);
                *(v63 + 552) = v54[552];
                v63[70] = *(v54 + 70);
                *(v63 + 568) = v54[568];
                *(v63 + 36) = *(v54 + 36);
                *(v63 + 592) = v54[592];
                v119 = v63 + 75;
                v120 = v54 + 600;
                v121 = *(v54 + 78);

                if (v121)
                {
                  if (v121 == 1)
                  {
                    v122 = *(v54 + 616);
                    *v119 = *v120;
                    *(v63 + 77) = v122;
                    *(v63 + 79) = *(v54 + 632);
LABEL_68:
                    v63[81] = *(v54 + 81);
                    *(v63 + 656) = v54[656];
                    v124 = v63 + 83;
                    v125 = v54 + 664;
                    v126 = *(v54 + 97);
                    if (v126 == 1)
                    {
                      v127 = *(v54 + 776);
                      *(v63 + 95) = *(v54 + 760);
                      *(v63 + 97) = v127;
                      *(v63 + 99) = *(v54 + 792);
                      *(v63 + 808) = v54[808];
                      v128 = *(v54 + 712);
                      *(v63 + 87) = *(v54 + 696);
                      *(v63 + 89) = v128;
                      v129 = *(v54 + 744);
                      *(v63 + 91) = *(v54 + 728);
                      *(v63 + 93) = v129;
                      v130 = *(v54 + 680);
                      *v124 = *v125;
                      *(v63 + 85) = v130;
                    }

                    else
                    {
                      *v124 = *v125;
                      *(v63 + 672) = v54[672];
                      v63[85] = *(v54 + 85);
                      *(v63 + 688) = v54[688];
                      *(v63 + 689) = *(v54 + 689);
                      *(v63 + 691) = v54[691];
                      *(v63 + 692) = v54[692];
                      v63[87] = *(v54 + 87);
                      v131 = *(v54 + 45);
                      *(v63 + 44) = *(v54 + 44);
                      *(v63 + 45) = v131;
                      v63[92] = *(v54 + 92);
                      *(v63 + 372) = *(v54 + 372);
                      *(v63 + 47) = *(v54 + 47);
                      *(v63 + 768) = v54[768];
                      v63[97] = v126;
                      *(v63 + 49) = *(v54 + 49);
                      v63[100] = *(v54 + 100);
                      *(v63 + 808) = v54[808];
                    }

                    v63[102] = *(v54 + 102);
                    v63[103] = *(v54 + 103);
                    v63[104] = *(v54 + 104);

LABEL_72:
                    v132 = v63 + 105;
                    v133 = v54 + 840;
                    v134 = *(v54 + 108);
                    if (v134)
                    {
                      if (v134 == 1)
                      {
                        v135 = *(v54 + 856);
                        *v132 = *v133;
                        *(v63 + 107) = v135;
                        *(v63 + 109) = *(v54 + 872);
                        v63[111] = *(v54 + 111);
LABEL_79:
                        v139 = *(v54 + 112);
                        v63[112] = v139;
                        v63[113] = *(v54 + 113);
                        v63[114] = *(v54 + 114);
                        v63[115] = *(v54 + 115);
                        v63[116] = *(v54 + 116);
                        v63[117] = *(v54 + 117);
                        v63[118] = *(v54 + 118);
                        *(v63 + 476) = *(v54 + 476);
                        *(v63 + 954) = v54[954];
                        v140 = v264[28];
                        __dst = v63 + v140;
                        v141 = &v54[v140];
                        v142 = type metadata accessor for CommandOperation();
                        v143 = *(v142 - 8);
                        v254 = *(v143 + 48);
                        v144 = v139;

                        if (v254(v141, 1, v142))
                        {
                          _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                          memcpy(__dst, v141, *(*(v145 - 8) + 64));
                          a1 = v270;
                          a3 = v274;
                          v147 = v262;
                          v146 = v264;
                          v148 = v272;
                        }

                        else
                        {
                          v249 = v143;
                          v255 = v142;
                          *__dst = *v141;
                          v149 = *(v142 + 20);
                          v150 = &__dst[v149];
                          v151 = &v141[v149];
                          v152 = *&v141[v149];
                          v153 = *&v141[v149 + 8];
                          v154 = v141[v149 + 16];
                          outlined copy of Text.Storage(v152, v153, v154);
                          *v150 = v152;
                          *(v150 + 1) = v153;
                          v150[16] = v154;
                          *(v150 + 3) = *(v151 + 3);
                          v155 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                          v156 = type metadata accessor for UUID();
                          v157 = *(*(v156 - 8) + 16);

                          v157(&v150[v155], &v151[v155], v156);
                          v158 = *(v255 + 24);
                          v159 = &__dst[v158];
                          v160 = &v141[v158];
                          if (*v160)
                          {
                            v161 = *(v160 + 1);
                            *v159 = *v160;
                            *(v159 + 1) = v161;
                          }

                          else
                          {
                            *v159 = *v160;
                          }

                          a1 = v270;
                          a3 = v274;
                          v147 = v262;
                          v146 = v264;
                          v148 = v272;
                          (*(v249 + 56))(__dst, 0, 1, v255);
                        }

                        *(v148 + v146[29]) = v54[v146[29]];
                        *(v148 + v146[30]) = v54[v146[30]];
                        *(v148 + v146[31]) = v54[v146[31]];
                        *(v148 + v146[32]) = v54[v146[32]];
                        *(v148 + v146[33]) = v54[v146[33]];
                        *(v148 + v146[34]) = *&v54[v146[34]];
                        v162 = *(v147 + 56);

                        v162(v148, 0, 1, v146);
                        goto LABEL_86;
                      }

                      v63[108] = v134;
                      v63[109] = *(v54 + 109);
                      (**(v134 - 8))(v132, v133);
                      v137 = *(v54 + 110);
                      if (!v137)
                      {
LABEL_78:
                        *(v63 + 55) = *(v54 + 55);
                        goto LABEL_79;
                      }
                    }

                    else
                    {
                      v136 = *(v54 + 856);
                      *v132 = *v133;
                      *(v63 + 107) = v136;
                      v63[109] = *(v54 + 109);
                      v137 = *(v54 + 110);
                      if (!v137)
                      {
                        goto LABEL_78;
                      }
                    }

                    v138 = *(v54 + 111);
                    v63[110] = v137;
                    v63[111] = v138;

                    goto LABEL_79;
                  }

                  v63[78] = v121;
                  v63[79] = *(v54 + 79);
                  (**(v121 - 8))((v63 + 75), (v54 + 600), v121);
                }

                else
                {
                  v123 = *(v54 + 616);
                  *v119 = *v120;
                  *(v63 + 77) = v123;
                  v63[79] = *(v54 + 79);
                }

                v63[80] = *(v54 + 80);

                goto LABEL_68;
              }

LABEL_55:
              *(v63 + 28) = *(v54 + 28);
              goto LABEL_56;
            }
          }

          *(v63 + 27) = *(v54 + 27);
          v114 = *(v54 + 56);
          if (v114)
          {
            goto LABEL_52;
          }

          goto LABEL_55;
        }
      }

      else
      {
        v84 = v54[72];
        if (v84 == 255)
        {
          *(v272 + 8) = *(v54 + 8);
          v272[72] = v54[72];
        }

        else
        {
          v85 = *(v54 + 8);
          outlined copy of GraphicsImage.Contents(v85, v54[72]);
          *(v272 + 8) = v85;
          v272[72] = v84;
          v66 = *(v54 + 24);
        }

        *(v272 + 10) = *(v54 + 10);
        *(v272 + 88) = *(v54 + 88);
        v272[104] = v54[104];
        *(v272 + 108) = *(v54 + 108);
        *(v272 + 121) = *(v54 + 121);
        *(v272 + 136) = *(v54 + 136);
        *(v272 + 152) = *(v54 + 152);
        *(v272 + 84) = *(v54 + 84);
        v272[170] = v54[170];
        v272[171] = v54[171];
        if (v66 >> 1 == 0xFFFFFFFF)
        {
          v88 = *(v54 + 12);
          *(v272 + 11) = *(v54 + 11);
          *(v272 + 12) = v88;
        }

        else
        {
          v89 = *(v54 + 22);
          v90 = *(v54 + 23);
          v91 = *(v54 + 25);
          outlined copy of AccessibilityImageLabel(v89, v90, v66);
          *(v272 + 22) = v89;
          *(v272 + 23) = v90;
          *(v272 + 24) = v66;
          *(v272 + 25) = v91;
        }

        v92 = *(v54 + 27);
        *(v272 + 26) = *(v54 + 26);
        *(v272 + 27) = v92;
        *(v272 + 112) = *(v54 + 112);
        *(v272 + 57) = *(v54 + 57);
        v272[232] = v54[232];
        v93 = *(v54 + 30);
        *(v272 + 30) = v93;
        *(v272 + 124) = *(v54 + 124);
        v272[250] = v54[250];
        swift_unknownObjectRetain();

        v94 = v93;
        v74 = *(v54 + 33);
        if (v74)
        {
          goto LABEL_30;
        }
      }

      v95 = *(v54 + 17);
      *(v272 + 16) = *(v54 + 16);
      *(v272 + 17) = v95;
      *(v272 + 18) = *(v54 + 18);
      goto LABEL_44;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_144:
  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

uint64_t destroy for ToolbarViewListVisitor(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  }

  swift_weakDestroy();

  v4 = a1 + *(a2 + 72);
  v5 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v4);

LABEL_44:
      goto LABEL_45;
    }

    v6 = *(v4 + 192);
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v8 = *(v4 + 72);
      if (v8 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v4 + 64), v8);
        v6 = *(v4 + 192);
        v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v7 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v4 + 176), *(v4 + 184), v6);
      }

      swift_unknownObjectRelease();
    }

    if (*(v4 + 264))
    {

      v9 = *(v4 + 272);
      if (v9 >= 2)
      {
      }
    }

    v10 = *(v4 + 336);
    if (v10 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(v4 + 304), *(v4 + 312), *(v4 + 320), *(v4 + 328), v10, *(v4 + 344), *(v4 + 352), *(v4 + 360), *(v4 + 368), *(v4 + 376), *(v4 + 384), *(v4 + 392), *(v4 + 400));
    }

    v11 = *(v4 + 416);
    if (v11)
    {
      if (v11 == 1)
      {
        goto LABEL_24;
      }
    }

    if (*(v4 + 432))
    {
    }

    if (*(v4 + 448))
    {
    }

LABEL_24:

    if (*(v4 + 512))
    {
    }

    if (!*(v4 + 816))
    {
LABEL_34:
      v13 = *(v4 + 864);
      if (v13)
      {
        if (v13 == 1)
        {
LABEL_39:

          v14 = v4 + *(type metadata accessor for PlatformItemList.Item() + 112);
          v15 = type metadata accessor for CommandOperation();
          if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
          {
            v16 = v14 + *(v15 + 20);
            outlined consume of Text.Storage(*v16, *(v16 + 8), *(v16 + 16));

            v17 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v18 = type metadata accessor for UUID();
            (*(*(v18 - 8) + 8))(v16 + v17, v18);
            if (*(v14 + *(v15 + 24)))
            {
            }
          }

          goto LABEL_44;
        }

        __swift_destroy_boxed_opaque_existential_1(v4 + 840);
      }

      if (*(v4 + 880))
      {
      }

      goto LABEL_39;
    }

    v12 = *(v4 + 624);
    if (v12)
    {
      if (v12 == 1)
      {
LABEL_31:
        if (*(v4 + 776) != 1)
        {
        }

        goto LABEL_34;
      }

      __swift_destroy_boxed_opaque_existential_1(v4 + 600);
    }

    goto LABEL_31;
  }

LABEL_45:

  v19 = a1 + *(a2 + 84);
  if (*(v19 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
  }
}

uint64_t specialized NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return specialized NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, &unk_1F00027A8, &unk_1F00027F8, partial apply for specialized closure #2 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:), qword_1F00027D0);
}

{
  return specialized NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, &unk_1F00029D8, &unk_1F0002A28, partial apply for specialized closure #2 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:), qword_1F0002A00);
}

uint64_t specialized $defer #2 <A>() in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(uint64_t a1, void *a2)
{
  outlined init with copy of NavigationState.StackContent?(a1, __src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (__src[448] == 255)
  {
    return outlined destroy of PPTTestCase?(__src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  }

  memcpy(v5, __src, 0x1C1uLL);
  v3 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xB0);
  swift_beginAccess();
  outlined assign with take of NavigationState.StackContent?(v5, a2 + v3, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  return swift_endAccess();
}

void type metadata accessor for _EnvironmentKeyTransformModifier<NavigationEventHandlers>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t destroy for PositionedNavigationDestination.Storage.SeededRequest(uint64_t a1)
{
  switch(*(a1 + 96))
  {
    case 0:
      goto LABEL_29;
    case 1:

      goto LABEL_29;
    case 2:

      __swift_destroy_boxed_opaque_existential_1(a1 + 16);
      break;
    case 3:

      break;
    case 4:
    case 5:

      goto LABEL_29;
    case 6:

      goto LABEL_29;
    case 0xA:
    case 0x11:
      __swift_destroy_boxed_opaque_existential_1(a1);

      goto LABEL_29;
    case 0xB:
      __swift_destroy_boxed_opaque_existential_1(a1);
      break;
    case 0xC:
    case 0xD:

      if (*(a1 + 32))
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 8);
      }

      if (*(a1 + 56) != 1)
      {
      }

      goto LABEL_29;
    case 0xE:

      if (*(a1 + 32))
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 8);
      }

      v2 = *(a1 + 56);
      goto LABEL_24;
    case 0x12:

      if (*(a1 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 16);
      }

      if (*(a1 + 64) != 1)
      {
      }

      goto LABEL_29;
    case 0x13:
      if (*(a1 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v2 = *(a1 + 48);
LABEL_24:
      if (v2 == 1)
      {
        break;
      }

      goto LABEL_29;
    case 0x15:
      if (*a1)
      {
      }

      if (*(a1 + 16))
      {
LABEL_29:
      }

      break;
    default:
      break;
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, _OWORD *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 176 * v9;

    return outlined assign with take of PositionedNavigationDestination.Storage.SeededRequest(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

uint64_t $defer #1 <A>() in PositionedNavigationDestinationProcessor.PollingRule.updateValue()(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = *(a3 + 168);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 64);
  *(a1 + 64) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v5, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 64) = v8;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationStackViewPosition, VersionSeed>, lazy protocol witness table accessor for type NavigationStackViewPosition and conformance NavigationStackViewPosition);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = a2;
    v8 = 0;
    v38 = (v5 + 64);
    v39 = v5;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v37 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v40 = (v11 - 1) & v11;
LABEL_15:
      v19 = v15 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(v5 + 48) + 48 * v19;
      v23 = *v21;
      v22 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      v26 = *(v21 + 32);
      v27 = *(v21 + 40);
      v41 = *(v20 + 4 * v19);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v23);
      MEMORY[0x18D00F6F0](v22);
      MEMORY[0x18D00F6F0](v24);
      MEMORY[0x18D00F6F0](v25);
      MEMORY[0x18D00F6F0](v26);
      Hasher._combine(_:)(v27);
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v12 + 8 * v30);
          if (v34 != -1)
          {
            v13 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v7 + 48) + 48 * v13;
      *v14 = v23;
      *(v14 + 8) = v22;
      *(v14 + 16) = v24;
      *(v14 + 24) = v25;
      *(v14 + 32) = v26;
      *(v14 + 40) = v27;
      *(*(v7 + 56) + 4 * v13) = v41;
      ++*(v7 + 16);
      v5 = v39;
      v11 = v40;
    }

    v16 = v8;
    result = v38;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v37)
      {
        break;
      }

      v18 = v38[v8];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v38, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v38 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, _OWORD *a2, int a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  *(v4 + 25) = *(a2 + 25);
  *(a4[7] + 4 * result) = a3;
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemPlacementKey>, &type metadata for ToolbarItemPlacementKey, &protocol witness table for ToolbarItemPlacementKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t specialized closure #2 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t *))
{
  v36 = a3;
  type metadata accessor for UINavigationPresentationAdaptor?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v32 - v18;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    v39 = a5;
    v38 = a11;
    v37 = a9;
    static Log.navigation.getter();
    v22 = type metadata accessor for Logger();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v19, 1, v22) == 1)
    {
      outlined destroy of UINavigationPresentationAdaptor?(v19, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v34 = a4;
      v35 = a7;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v33 = a8;
        v27 = v26;
        *v26 = 0;
        _os_log_impl(&dword_18BD4A000, v24, v25, "Updating stack views in place", v26, 2u);
        v28 = v27;
        a8 = v33;
        MEMORY[0x18D0110E0](v28, -1, -1);
      }

      (*(v23 + 8))(v19, v22);
      a4 = v34;
      a7 = v35;
    }

    outlined init with copy of NavigationState.StackContent?(a2, v42, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
    v29 = v39;
    if (v42[448] == 255)
    {
      outlined init with copy of NavigationState.StackContent(v36, v43);
      if (v42[448] != 255)
      {
        outlined destroy of PPTTestCase?(v42, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
      }
    }

    else
    {
      memcpy(v43, v42, 0x1C1uLL);
    }

    outlined init with copy of NavigationState.Base(v43, v41);
    outlined init with copy of NavigationState.Base(v41, v40);
    v30 = swift_allocObject();
    v30[2] = a4;
    v30[3] = v29;
    v30[4] = a6;
    v40[57] = a10;
    v40[58] = v30;
    v40[59] = a6;
    outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v40, v42, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);

    swift_bridgeObjectRetain_n();

    v31 = specialized NavigationState.StackContent.Views.ViewsSequence.unusedRoots()();
    outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v40, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    outlined destroy of NavigationState.StackContent.Views(v41);
    specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(a7, v42, a8, v38);
    if (v31)
    {
      outlined init with copy of NavigationAuthority(v21 + *((*MEMORY[0x1E69E7D40] & *v21) + 0x68), v40);
      NavigationAuthority.controllerCache.getter();
      outlined destroy of NavigationAuthority(v40);
      specialized NavigationHostingControllerCache_UIKit.updateUnusedRoots(_:transaction:)(v31);
    }

    else
    {
    }

    outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v42, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    return outlined destroy of NavigationState.StackContent(v43);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationState.StackContent.Views.ViewsSequence(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 480))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 456);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18BF59BF4()
{
  type metadata accessor for ScrollTransitionModifier.EffectApplicationModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for PlaceholderContentView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void type metadata accessor for _SetStorage<String>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type FocusableFillerBoundsTransform and conformance FocusableFillerBoundsTransform()
{
  result = lazy protocol witness table cache variable for type FocusableFillerBoundsTransform and conformance FocusableFillerBoundsTransform;
  if (!lazy protocol witness table cache variable for type FocusableFillerBoundsTransform and conformance FocusableFillerBoundsTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusableFillerBoundsTransform and conformance FocusableFillerBoundsTransform);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance NavigationDestinationScopeModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type NavigationDestinationScopeModifier and conformance NavigationDestinationScopeModifier();

  return MEMORY[0x1EEDE0CC8](a1, a2, a3, a4, a5, v10);
}

uint64_t specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, &type metadata for NavigationDestinationKey, &protocol witness table for NavigationDestinationKey, MEMORY[0x1E697E440]);
}

{
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, MEMORY[0x1E69807E8], MEMORY[0x1E69807E0], MEMORY[0x1E697E438]);
}

uint64_t View.accessibilityRespondsToUserInteraction(_:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = 21;
    return View.accessibilityAddTraits(_:)(&v4, a2, a3);
  }

  else
  {
    v5 = 21;
    return View.accessibilityRemoveTraits(_:)(&v5, a2, a3);
  }
}

uint64_t ScrollViewChildSafeAreaInsets.value.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  Value = AGGraphGetValue();
  v6 = *Value;
  v7 = Value[1];
  EdgeInsets.xFlipIfRightToLeft(layoutDirection:)();
  type metadata accessor for _SemanticFeature<Semantics_v5>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SafeAreaInsets.Element>, MEMORY[0x1E697E490], MEMORY[0x1E69E6F90]);
    result = swift_allocObject();
    *(result + 16) = xmmword_18CD63400;
    *(result + 32) = 1;
    *(result + 56) = v7;
    *(result + 40) = v6;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 1;
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  a1[1] = result;
  a1[2] = 0;
  *a1 = v3;
  return result;
}

uint64_t ScrollTransitionModifier.StageProgress.updateValue()()
{
  v36 = *MEMORY[0x1E69E9840];
  ++*(v0 + 7);
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  v1 = *v0;
  LOBYTE(v27) = *MEMORY[0x1E698D3F8] == *(v0 + 6);
  GeometryProxy.init(owner:size:environment:transform:position:safeAreaInsets:seed:)();
  ScrollTransitionModifier.StageProgress.container.getter(&v18);
  if (v1)
  {
    v3 = *(&v23 + 1);
    v2 = v23;
    v5 = *(&v24 + 1);
    v4 = v24;
    v7 = *(&v25 + 1);
    v6 = v25;
    v33 = v24;
    v34 = v25;
    v35 = v26;
    v29 = v20;
    v30 = v21;
    v31 = v22;
    v32 = v23;
    *&v15 = *(&v22 + 1);
  }

  else
  {
    v2 = *(&v19 + 1);
    v4 = *(&v20 + 1);
    v3 = v20;
    v6 = *(&v21 + 1);
    v5 = v21;
    v7 = v22;
    v33 = v24;
    v34 = v25;
    v35 = v26;
    v29 = v20;
    v30 = v21;
    v31 = v22;
    v32 = v23;
    *&v15 = v19;
  }

  v27 = v18;
  v28 = v19;

  *(&v15 + 1) = v2;
  v16 = v6;
  outlined copy of ScrollTransitionConfiguration.Mode(v2, v3, v4, v5, v6);
  v8 = type metadata accessor for ScrollTransitionModifier();
  (*(*(v8 - 8) + 8))(&v27, v8);
  v9 = *v0;
  v27 = v15;
  *&v28 = v3;
  *(&v28 + 1) = v4;
  *&v29 = v5;
  *(&v29 + 1) = v6;
  *&v30 = v7;

  outlined copy of ScrollTransitionConfiguration.Mode(v2, v3, v4, v5, v6);
  v10 = ScrollTransitionModifier.StageProgress.progress(for:geometryProxy:)(&v27, v17, v9 & 1);
  v11 = *(&v27 + 1);
  v12 = v28;
  v13 = v29;

  outlined consume of ScrollTransitionConfiguration.Mode(v11, v12, *(&v12 + 1), v13, *(&v13 + 1));
  *&v27 = v10;
  AGGraphSetOutputValue();

  return outlined consume of ScrollTransitionConfiguration.Mode(v2, v3, v4, v5, v16);
}

uint64_t ScrollTransitionModifier.StageProgress.container.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ScrollTransitionModifier();
  Value = AGGraphGetValue();
  v16[0] = *Value;
  v4 = *(Value + 64);
  v6 = *(Value + 16);
  v5 = *(Value + 32);
  v16[3] = *(Value + 48);
  v16[4] = v4;
  v16[1] = v6;
  v16[2] = v5;
  v8 = *(Value + 96);
  v7 = *(Value + 112);
  v9 = *(Value + 80);
  v17 = *(Value + 128);
  v16[6] = v8;
  v16[7] = v7;
  v16[5] = v9;
  v10 = *(Value + 112);
  *(a1 + 96) = *(Value + 96);
  *(a1 + 112) = v10;
  *(a1 + 128) = *(Value + 128);
  v11 = *(Value + 48);
  *(a1 + 32) = *(Value + 32);
  *(a1 + 48) = v11;
  v12 = *(Value + 80);
  *(a1 + 64) = *(Value + 64);
  *(a1 + 80) = v12;
  v13 = *(Value + 16);
  *a1 = *Value;
  *(a1 + 16) = v13;
  return (*(*(v2 - 8) + 16))(v15, v16, v2);
}

uint64_t ScrollTransitionModifier.EffectApplicationModifier.effect(for:)@<X0>(uint64_t (*a1)(double)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v54 = a4;
  v10 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v40 - v12;
  v47 = *(a2 - 8);
  v14 = v47;
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v48 = &v40 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v53 = &v40 - v22;
  v23 = a1(v21);
  v24 = (a1)(v23, 1);
  (a1)(v24, 2);
  (*(v14 + 16))(v54, v19, a2);
  v55 = *(v10 + 24);
  v51 = v10 + 24;
  v55(a2, v10);
  v25 = *(v10 + 40);
  v26 = v25(v57, a2, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v50 = *(AssociatedConformanceWitness + 8);
  dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  v28 = *(v56 + 8);
  v56 += 8;
  v49 = v28;
  v28(v13, AssociatedTypeWitness);
  v26(v57, 0);
  v29 = v25(v57, a2, v10);
  v30 = *(AssociatedConformanceWitness + 16);
  v43 = v25;
  v44 = v30;
  v45 = AssociatedConformanceWitness;
  v46 = AssociatedConformanceWitness + 16;
  v30(AssociatedTypeWitness, AssociatedConformanceWitness, a5);
  v29(v57, 0);
  v55(a2, v10);
  v41 = v25(v57, a2, v10);
  dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  v31 = v49;
  v49(v13, AssociatedTypeWitness);
  v41(v57, 0);
  v42 = v10;
  v55(a2, v10);
  v32 = v10;
  v33 = v43;
  v41 = v43(v57, a2, v32);
  dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  v31(v13, AssociatedTypeWitness);
  v41(v57, 0);
  v34 = v42;
  v35 = v33(v57, a2, v42);
  v44(AssociatedTypeWitness, v45, a6);
  v35(v57, 0);
  v36 = v52;
  v55(a2, v34);
  v37 = v33(v57, a2, v34);
  dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  v49(v13, AssociatedTypeWitness);
  v37(v57, 0);
  v38 = *(v47 + 8);
  v38(v36, a2);
  v38(v48, a2);
  return (v38)(v53, a2);
}

uint64_t ScrollableProvider.value.getter@<X0>(unint64_t a1@<X1>, int a2@<W2>, uint64_t *a3@<X8>)
{
  v5 = HIDWORD(a1);
  v6 = AGCreateWeakAttribute();
  v7 = AGCreateWeakAttribute();
  v8 = AGCreateWeakAttribute();
  v9 = *MEMORY[0x1E698D3F8];
  if (*MEMORY[0x1E698D3F8] != v5)
  {
    v13 = AGCreateWeakAttribute();
    v10 = v13;
    v17 = HIDWORD(v13);
    if (v9 != a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    LODWORD(v16) = 0;
    goto LABEL_6;
  }

  v10 = 0;
  LODWORD(v17) = 0;
  if (v9 == a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = AGCreateWeakAttribute();
  v12 = v11;
  v16 = HIDWORD(v11);
LABEL_6:
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E697DAC0]);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  a3[3] = &unk_1F0019578;
  a3[4] = lazy protocol witness table accessor for type ScrollViewScrollable and conformance ScrollViewScrollable();
  result = swift_allocObject();
  *a3 = result;
  *(result + 16) = v6;
  *(result + 24) = v7;
  *(result + 32) = v8;
  *(result + 40) = v10;
  *(result + 44) = v17;
  *(result + 48) = v12;
  *(result + 52) = v16;
  *(result + 56) = v14;
  return result;
}

uint64_t sub_18BF5ABB8()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ScrollViewScrollable and conformance ScrollViewScrollable()
{
  result = lazy protocol witness table cache variable for type ScrollViewScrollable and conformance ScrollViewScrollable;
  if (!lazy protocol witness table cache variable for type ScrollViewScrollable and conformance ScrollViewScrollable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewScrollable and conformance ScrollViewScrollable);
  }

  return result;
}

unint64_t partial apply for specialized closure #1 in BidirectionalCollection.last(where:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  return specialized closure #1 in BidirectionalCollection.last(where:)(a1, *(v2 + 16), a2);
}

{
  return specialized closure #1 in BidirectionalCollection.last(where:)(a1, *(v2 + 16), a2);
}

uint64_t specialized Set._Variant.insert(_:)(_OWORD *a1, _OWORD *a2)
{
  v3 = v2;
  v6 = *v2;
  Hasher.init(_seed:)();
  ToolbarItemPlacement.Role.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      outlined init with copy of ToolbarItemPlacement.Role(*(v6 + 48) + 48 * v9, v16);
      v11 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v16, a2);
      outlined destroy of ToolbarItemPlacement.Role(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of ToolbarItemPlacement.Role(a2);
    outlined init with copy of ToolbarItemPlacement.Role(*(v6 + 48) + 48 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of ToolbarItemPlacement.Role(a2, v16);
    v15 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = a2[1];
    *a1 = *a2;
    a1[1] = v13;
    *(a1 + 25) = *(a2 + 25);
    return 1;
  }
}

uint64_t ToolbarItemPlacement.Role.hash(into:)()
{
  outlined init with copy of ToolbarItemPlacement.Role(v0, &v7);
  v1 = v7;
  if (v10)
  {
    if (v10 == 1)
    {
      v5[0] = v7;
      v5[1] = v8;
      v6 = v9;
      MEMORY[0x18D00F6F0](18);
      AnyHashable.hash(into:)();
      return outlined destroy of AnyHashable(v5);
    }

    if (*(&v8 + 1) | v9 | v7 | v8 | *(&v7 + 1))
    {
      v4 = *(&v8 + 1) | v9 | v8 | *(&v7 + 1);
      if (v7 != 1 || v4)
      {
        if (v7 != 2 || v4)
        {
          if (v7 != 3 || v4)
          {
            if (v7 != 4 || v4)
            {
              if (v7 != 5 || v4)
              {
                if (v7 != 6 || v4)
                {
                  if (v7 != 7 || v4)
                  {
                    if (v7 != 8 || v4)
                    {
                      if (v7 != 9 || v4)
                      {
                        if (v7 != 10 || v4)
                        {
                          if (v7 != 11 || v4)
                          {
                            if (v7 != 12 || v4)
                            {
                              if (v7 != 13 || v4)
                              {
                                if (v7 != 14 || v4)
                                {
                                  if (v7 != 15 || v4)
                                  {
                                    if (v7 != 16 || v4)
                                    {
                                      if (v7 != 17 || v4)
                                      {
                                        if (v7 != 18 || v4)
                                        {
                                          if (v7 != 19 || v4)
                                          {
                                            if (v7 != 20 || v4)
                                            {
                                              if (v7 != 21 || v4)
                                              {
                                                if (v7 != 22 || v4)
                                                {
                                                  if (v7 != 23 || v4)
                                                  {
                                                    if (v7 != 24 || v4)
                                                    {
                                                      if (v7 != 25 || v4)
                                                      {
                                                        if (v7 != 26 || v4)
                                                        {
                                                          if (v7 != 27 || v4)
                                                          {
                                                            if (v7 != 28 || v4)
                                                            {
                                                              if (v7 != 29 || v4)
                                                              {
                                                                if (v7 != 30 || v4)
                                                                {
                                                                  if (v7 != 31 || v4)
                                                                  {
                                                                    v3 = 34;
                                                                  }

                                                                  else
                                                                  {
                                                                    v3 = 33;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v3 = 32;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v3 = 31;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v3 = 30;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v3 = 29;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v3 = 28;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v3 = 27;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v3 = 26;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v3 = 25;
                                                  }
                                                }

                                                else
                                                {
                                                  v3 = 24;
                                                }
                                              }

                                              else
                                              {
                                                v3 = 23;
                                              }
                                            }

                                            else
                                            {
                                              v3 = 22;
                                            }
                                          }

                                          else
                                          {
                                            v3 = 21;
                                          }
                                        }

                                        else
                                        {
                                          v3 = 20;
                                        }
                                      }

                                      else
                                      {
                                        v3 = 19;
                                      }
                                    }

                                    else
                                    {
                                      v3 = 17;
                                    }
                                  }

                                  else
                                  {
                                    v3 = 16;
                                  }
                                }

                                else
                                {
                                  v3 = 15;
                                }
                              }

                              else
                              {
                                v3 = 14;
                              }
                            }

                            else
                            {
                              v3 = 13;
                            }
                          }

                          else
                          {
                            v3 = 12;
                          }
                        }

                        else
                        {
                          v3 = 11;
                        }
                      }

                      else
                      {
                        v3 = 10;
                      }
                    }

                    else
                    {
                      v3 = 9;
                    }
                  }

                  else
                  {
                    v3 = 8;
                  }
                }

                else
                {
                  v3 = 7;
                }
              }

              else
              {
                v3 = 6;
              }
            }

            else
            {
              v3 = 5;
            }
          }

          else
          {
            v3 = 4;
          }
        }

        else
        {
          v3 = 2;
        }
      }

      else
      {
        v3 = 1;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    MEMORY[0x18D00F6F0](3);
    v3 = v1;
  }

  return MEMORY[0x18D00F6F0](v3);
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarStorage.Entry>, type metadata accessor for ToolbarStorage.Entry, type metadata accessor for ToolbarStorage.Entry);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityNodeAttachment>, MEMORY[0x1E6980770], MEMORY[0x1E6980770]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<TableCellFormula>, type metadata accessor for TableCellFormula, type metadata accessor for TableCellFormula);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<TableColumnCollection.Entry>, type metadata accessor for TableColumnCollection.Entry, type metadata accessor for TableColumnCollection.Entry);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, type metadata accessor for PlatformItemList.Item);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<MainMenuItem.Template>, type metadata accessor for MainMenuItem.Template, type metadata accessor for MainMenuItem.Template);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<URL>, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<Predicate<Pack{String}>>, type metadata accessor for Predicate<Pack{String}>, type metadata accessor for Predicate<Pack{String}>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarStorage.GroupItem.GroupSubItem>, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, type metadata accessor for _ContiguousArrayStorage<(offset: Int, element: ToolbarStorage.Item)>, &lazy cache variable for type metadata for (offset: Int, element: ToolbarStorage.Item), type metadata accessor for ToolbarStorage.Item, type metadata accessor for (offset: Int, element: ToolbarStorage.Item));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedString.Index>, MEMORY[0x1E69687E8], MEMORY[0x1E69687E8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<WidgetAuxiliaryViewMetadata>, type metadata accessor for WidgetAuxiliaryViewMetadata, type metadata accessor for WidgetAuxiliaryViewMetadata);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformTickLabelItem>, type metadata accessor for PlatformTickLabelItem, type metadata accessor for PlatformTickLabelItem);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<IndexPath>, MEMORY[0x1E6969C28], MEMORY[0x1E6969C28]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<SystemSegmentItem>, type metadata accessor for SystemSegmentItem, type metadata accessor for SystemSegmentItem);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<UpdateCoalescingCollectionView.UpdateInvalidation>, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
  *v3 = result;
  return result;
}

uint64_t outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Toolbar.BarLocation.priority(for:context:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  outlined init with copy of Toolbar.BarLocation(v2, &v49);
  result = 0;
  switch(*(&v50 + 1))
  {
    case 0:
      *v39 = 1;
      memset(&v39[8], 0, 32);
      LOBYTE(v40) = 2;
      v9 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(a1, v39);
      outlined destroy of ToolbarItemPlacement.Role(v39);
      if (v9)
      {
        return 1;
      }

      *v39 = 20;
      memset(&v39[8], 0, 32);
      LOBYTE(v40) = 2;
      v10 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(a1, v39);
      outlined destroy of ToolbarItemPlacement.Role(v39);
      if (v10)
      {
        return 1;
      }

      v11 = 11;
      goto LABEL_40;
    case 1:
      v11 = 12;
      goto LABEL_40;
    case 2:
      outlined init with copy of ToolbarItemPlacement.Role(a1, v39);
      if (v40 != 2)
      {
        goto LABEL_58;
      }

      if (!(*&v39[24] | *&v39[32] | *v39 | *&v39[16] | *&v39[8]))
      {
        if (v4)
        {
          return 10;
        }

        else
        {
          return 0;
        }
      }

      if (*v39 == 3 && !(*&v39[24] | *&v39[32] | *&v39[16] | *&v39[8]))
      {
        return 20;
      }

      goto LABEL_58;
    case 3:
      outlined init with copy of ToolbarItemPlacement.Role(a1, v39);
      if (!v40)
      {
        return 30;
      }

      if (v40 != 2)
      {
        goto LABEL_58;
      }

      if (!(*&v39[24] | *&v39[32] | *v39 | *&v39[16] | *&v39[8]))
      {
        return 0;
      }

      v18 = *&v39[24] | *&v39[32] | *&v39[16] | *&v39[8];
      if (*v39 == 2 && !v18)
      {
        if ((v6 ^ 1 | v5))
        {
          return 0;
        }

        else
        {
          return 20;
        }
      }

      if ((*v39 & 0xFFFFFFFFFFFFFFFDLL) == 5 && !v18)
      {
        return 40;
      }

      v35 = *v39 == 25 || *v39 == 10;
      if (v35 && !v18)
      {
        return 10;
      }

      if (*v39 == 29 && !v18)
      {
        return 35;
      }

      goto LABEL_58;
    case 4:
      v11 = 15;
      goto LABEL_40;
    case 5:
      v11 = 16;
      goto LABEL_40;
    case 6:
      outlined init with copy of ToolbarItemPlacement.Role(a1, v39);
      if (v40 != 2)
      {
        goto LABEL_58;
      }

      v15 = vorrq_s8(*&v39[8], *&v39[24]);
      v16 = vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
      if (*v39 == 2 && *&v16 == 0)
      {
        if (v5 & 1 | ((v6 & 1) == 0))
        {
          return 30;
        }

        return 0;
      }

      if (*v39 == 6 && !*&v16)
      {
        return 20;
      }

      if (*v39 != 9 || *&v16)
      {
        if (*v39 == 21 && !*&v16)
        {
          return (v7 & 1) == 0;
        }

        if (*v39 != 26 || *&v16)
        {
LABEL_58:
          outlined destroy of ToolbarItemPlacement.Role(v39);
          return 0;
        }
      }

      return 10;
    case 7:
    case 0xBLL:
    case 0xCLL:
    case 0xFLL:
    case 0x12:
    case 0x13:
    case 0x14:
      return result;
    case 8:
      v11 = 14;
LABEL_40:
      *v39 = v11;
      memset(&v39[8], 0, 32);
      LOBYTE(v40) = 2;
      v22 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(a1, v39);
      outlined destroy of ToolbarItemPlacement.Role(v39);
      return v22 & 1;
    case 9:
      outlined init with copy of ToolbarItemPlacement.Role(a1, v39);
      if (v40 != 2)
      {
        goto LABEL_58;
      }

      v12 = vorrq_s8(*&v39[8], *&v39[24]);
      v13 = vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
      v14 = *v39 == 27;
      goto LABEL_54;
    case 0xALL:
      outlined init with copy of ToolbarItemPlacement.Role(a1, v39);
      if (v40 != 2)
      {
        goto LABEL_58;
      }

      v27 = vorrq_s8(*&v39[8], *&v39[24]);
      v13 = vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
      v14 = *v39 == 28;
      goto LABEL_54;
    case 0xDLL:
      outlined init with copy of ToolbarItemPlacement.Role(a1, v39);
      if (v40 != 2)
      {
        goto LABEL_58;
      }

      v19 = vorrq_s8(*&v39[8], *&v39[24]);
      v13 = vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
      v14 = *v39 == 30;
      goto LABEL_54;
    case 0xELL:
      outlined init with copy of ToolbarItemPlacement.Role(a1, v39);
      if (v40 != 2)
      {
        goto LABEL_58;
      }

      v21 = vorrq_s8(*&v39[8], *&v39[24]);
      v13 = vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
      v14 = *v39 == 31;
      goto LABEL_54;
    case 0x10:
      outlined init with copy of ToolbarItemPlacement.Role(a1, v39);
      if (v40 != 2)
      {
        goto LABEL_58;
      }

      v23 = *v39 == 13 || *v39 == 4;
      v24 = vorrq_s8(*&v39[8], *&v39[24]);
      v25 = vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
      if (!v23 || *&v25 != 0)
      {
        goto LABEL_58;
      }

      return 1;
    case 0x11:
      outlined init with copy of ToolbarItemPlacement.Role(a1, v39);
      if (v40 != 2)
      {
        goto LABEL_58;
      }

      v20 = vorrq_s8(*&v39[8], *&v39[24]);
      v13 = vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
      v14 = *v39 == 8;
LABEL_54:
      if (!v14 || *&v13 != 0)
      {
        goto LABEL_58;
      }

      return 1;
    default:
      v47[0] = v49;
      v47[1] = v50;
      v48 = v51;
      outlined init with copy of ToolbarItemPlacement.Role(a1, v39);
      if (v40 == 1)
      {
        v44 = *v39;
        v45 = *&v39[16];
        v46 = *&v39[32];
      }

      else
      {
        outlined destroy of ToolbarItemPlacement.Role(v39);
        v44 = 0u;
        v45 = 0u;
        v46 = 0;
      }

      outlined init with copy of AnyHashable(v47, v43);
      v29 = MEMORY[0x1E69E69B8];
      v30 = MEMORY[0x1E69E6720];
      _s7SwiftUI7ToolbarO13UpdateContextVSgWOcTm_0(&v44, v39, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
      _s7SwiftUI7ToolbarO13UpdateContextVSgWOcTm_0(v43, &v40, &lazy cache variable for type metadata for AnyHashable?, v29, v30, _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
      if (*&v39[24])
      {
        _s7SwiftUI7ToolbarO13UpdateContextVSgWOcTm_0(v39, v38, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
        if (*(&v41 + 1))
        {
          v36[0] = v40;
          v36[1] = v41;
          v37 = v42;
          v22 = MEMORY[0x18D00E7E0](v38, v36);
          outlined destroy of AnyHashable(v36);
          v31 = MEMORY[0x1E69E69B8];
          v32 = MEMORY[0x1E69E6720];
          outlined destroy of _ViewList_View?(v43, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
          outlined destroy of _ViewList_View?(&v44, &lazy cache variable for type metadata for AnyHashable?, v31, v32, _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
          outlined destroy of AnyHashable(v47);
          outlined destroy of AnyHashable(v38);
          outlined destroy of _ViewList_View?(v39, &lazy cache variable for type metadata for AnyHashable?, v31, v32, _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
          return v22 & 1;
        }

        v34 = MEMORY[0x1E69E6720];
        outlined destroy of _ViewList_View?(v43, &lazy cache variable for type metadata for AnyHashable?, v29, MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
        outlined destroy of _ViewList_View?(&v44, &lazy cache variable for type metadata for AnyHashable?, v29, v34, _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
        outlined destroy of AnyHashable(v47);
        outlined destroy of AnyHashable(v38);
      }

      else
      {
        v33 = MEMORY[0x1E69E6720];
        outlined destroy of _ViewList_View?(v43, &lazy cache variable for type metadata for AnyHashable?, v29, MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
        outlined destroy of _ViewList_View?(&v44, &lazy cache variable for type metadata for AnyHashable?, v29, v33, _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
        outlined destroy of AnyHashable(v47);
        if (!*(&v41 + 1))
        {
          outlined destroy of _ViewList_View?(v39, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
          v22 = 1;
          return v22 & 1;
        }
      }

      _s7SwiftUI16CommandOperationVWOhTm_3(v39, type metadata accessor for (AnyHashable?, AnyHashable?));
      v22 = 0;
      return v22 & 1;
  }
}

uint64_t ToolbarStorage.Entry.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ToolbarStorage.Entry(v2, v16, type metadata accessor for ToolbarStorage.Entry.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      result = _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v16, v10, type metadata accessor for ToolbarStorage.GroupItem);
      v29 = *(v10 + 19);
      if (!*(v29 + 16))
      {
        __break(1u);
        return result;
      }

      outlined init with copy of ToolbarStorage.Entry(v29 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v7, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
      ToolbarStorage.GroupItem.GroupSubItem.id.getter(&v35);
      outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v7, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
      v30 = v35;
      v31 = v36;
      v32 = v37;
      lazy protocol witness table accessor for type ToolbarStorage.ID and conformance ToolbarStorage.ID();

      AnyHashable.init<A>(_:)();

      outlined init with copy of ToolbarItemPlacement.Role((v10 + 80), a1 + 40);
      v21 = type metadata accessor for ToolbarStorage.GroupItem;
      v22 = v10;
    }

    else
    {
      _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v16, v13, type metadata accessor for ToolbarStorage.Item);
      v18 = *(v13 + 1);
      v19 = *(v13 + 4);
      v20 = *(v13 + 5);
      *&v35 = *v13;
      *(&v35 + 1) = v18;
      v36 = *(v13 + 1);
      *&v37 = v19;
      *(&v37 + 1) = v20;
      lazy protocol witness table accessor for type ToolbarStorage.ID and conformance ToolbarStorage.ID();

      AnyHashable.init<A>(_:)();
      outlined init with copy of ToolbarItemPlacement.Role((v13 + 112), a1 + 40);
      v21 = type metadata accessor for ToolbarStorage.Item;
      v22 = v13;
    }

    return outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v22, v21);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v23 = v16[1];
    v35 = *v16;
    v36 = v23;
    v24 = v16[3];
    v37 = v16[2];
    v38 = v24;
    v39 = v16[4];
    if (v35)
    {
      v25 = 0xD000000000000017;
    }

    else
    {
      v25 = 0xD000000000000014;
    }

    if (v35)
    {
      v26 = "swiftui-fixed-spacer";
    }

    else
    {
      v26 = "@UIActivityViewController8@?0";
    }

    v33 = v25;
    v34 = v26 | 0x8000000000000000;
    AnyHashable.init<A>(_:)();
    outlined init with copy of ToolbarItemPlacement.Role(&v35 + 8, a1 + 40);
    result = outlined destroy of ToolbarStorage.SpacerItem(&v35);
    v28 = v31;
    *a1 = v30;
    *(a1 + 16) = v28;
    *(a1 + 32) = v32;
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      strcpy(&v35, "swiftui-search");
      HIBYTE(v35) = -18;
    }

    else
    {
      *&v35 = 0xD000000000000010;
      *(&v35 + 1) = 0x800000018CD4EDC0;
    }

    result = AnyHashable.init<A>(_:)();
    *(a1 + 72) = 0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 80) = -1;
  }

  return result;
}

uint64_t initializeWithCopy for ToolbarStorage.ID(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;

  return a1;
}

uint64_t destroy for ToolbarStorage.ID()
{
}

void type metadata accessor for _DictionaryStorage<ToolbarStorage.Entry.ID, Int>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, void, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID();
    v7 = a3(a1, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E6530], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void _s7SwiftUI7BindingVySiGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t destroy for ToolbarStorage.Entry.ID(uint64_t a1)
{
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (*(a1 + 80) == 1)
  {

    return __swift_destroy_boxed_opaque_existential_1(a1 + 40);
  }

  return result;
}

BOOL specialized static ToolbarStorage.Entry.ID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x18D00E7E0]() & 1) == 0)
  {
    return 0;
  }

  v4 = MEMORY[0x1E69E6720];
  outlined init with copy of ToolbarItemPlacement.Role?(a1 + 40, v10, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], _s7SwiftUI7BindingVySiGMaTm_0);
  outlined init with copy of ToolbarItemPlacement.Role?(a2 + 40, &v11, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, v4, _s7SwiftUI7BindingVySiGMaTm_0);
  if (v10[40] == 255)
  {
    if (v12[24] == 255)
    {
      outlined destroy of ToolbarItemPlacement.Role?(v10, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720]);
      return 1;
    }
  }

  else
  {
    outlined init with copy of ToolbarItemPlacement.Role?(v10, v9, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], _s7SwiftUI7BindingVySiGMaTm_0);
    if (v12[24] != 255)
    {
      v7 = v11;
      v8[0] = *v12;
      *(v8 + 9) = *&v12[9];
      v5 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v9, &v7);
      outlined destroy of ToolbarItemPlacement.Role(&v7);
      outlined destroy of ToolbarItemPlacement.Role(v9);
      outlined destroy of ToolbarItemPlacement.Role?(v10, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720]);
      return (v5 & 1) != 0;
    }

    outlined destroy of ToolbarItemPlacement.Role(v9);
  }

  outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v10, type metadata accessor for (ToolbarItemPlacement.Role?, ToolbarItemPlacement.Role?));
  return 0;
}

uint64_t storeEnumTagSinglePayload for ToolbarStorage.ID(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolbarStorage.ID(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t specialized static ToolbarStorage.ID.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v8 = a2[3];
  v7 = a2[4];
  v9 = a2[5];

  v10 = static _ViewList_ID.== infix(_:_:)();

  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v4 == v8)
  {
    if (v5)
    {
      if (v9 && (v3 == v7 && v5 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v9)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t initializeWithCopy for OnScrollVisibilityChangeModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

void type metadata accessor for [TableColumnCustomizationID](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined init with copy of ToolbarStorage.Entry.Kind(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI14ToolbarStorageV5EntryV4KindOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of ToolbarStorage.NavigationProperties(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t closure #1 in closure #1 in UIKitToolbarStrategy.makeBarItems()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t a7)
{
  v79 = a7;
  v75 = a6;
  v78 = a5;
  v72 = a4;
  v71 = a3;
  v9 = type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0);
  v77 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v76 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v70 = &v66 - v12;
  v69 = type metadata accessor for ToolbarStorage.GroupItem(0);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v66 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - v21;
  v23 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v66 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v66 - v30;
  v32 = *a2;
  v73 = a2;
  v33 = *(a2 + 8);
  if (v33 == 1)
  {
    type metadata accessor for PlatformItemList.Item.SystemItem?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_18CD69590;
    *(v34 + 32) = v32;
    v35 = v32;
    goto LABEL_36;
  }

  v74 = a1;
  outlined init with copy of ToolbarStorage.Entry.Kind(a1, v22, type metadata accessor for ToolbarStorage.Entry.Kind);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of ToolbarStorage.NavigationProperties(v22, type metadata accessor for ToolbarStorage.Entry.Kind);
    v36 = v74;
  }

  else
  {
    outlined init with take of ToolbarStorage.NavigationProperties(v22, v28, type metadata accessor for ToolbarStorage.Item);
    outlined init with take of ToolbarStorage.NavigationProperties(v28, v31, type metadata accessor for ToolbarStorage.Item);
    if (v31[153] == 3)
    {
      type metadata accessor for PlatformItemList.Item.SystemItem?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_18CD69590;
      v37 = v71 + direct field offset for ToolbarBridge.platformVended;
      swift_beginAccess();
      *(v34 + 32) = [*(v37 + 8) searchBarPlacementBarButtonItem];
      outlined destroy of ToolbarStorage.NavigationProperties(v31, type metadata accessor for ToolbarStorage.Item);
      goto LABEL_36;
    }

    outlined destroy of ToolbarStorage.NavigationProperties(v31, type metadata accessor for ToolbarStorage.Item);
    v36 = v74;
  }

  outlined init with copy of ToolbarStorage.Entry.Kind(v36, v19, type metadata accessor for ToolbarStorage.Entry.Kind);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of ToolbarStorage.NavigationProperties(v19, type metadata accessor for ToolbarStorage.Entry.Kind);
    outlined init with copy of ToolbarStorage.Entry.Kind(v36, v16, type metadata accessor for ToolbarStorage.Entry.Kind);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined consume of OpenURLOptions?(v32, v33);
      v38 = v16[1];
      v81 = *v16;
      *v82 = v38;
      v39 = v16[3];
      *&v82[16] = v16[2];
      v83 = v39;
      v84 = v16[4];
      v40 = v81;
      v41 = objc_opt_self();
      if (v40 == 1)
      {
        v42 = [v41 flexibleSpaceItem];
      }

      else
      {
        v42 = [v41 fixedSpaceItemOfWidth_];
      }

      v50 = v42;
      v51 = v73;
      *v73 = v50;
      *(v51 + 8) = 0;
      type metadata accessor for PlatformItemList.Item.SystemItem?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_18CD69590;
      *(v34 + 32) = v50;
      v52 = v50;
      outlined destroy of ToolbarStorage.SpacerItem(&v81);
    }

    else
    {
      outlined destroy of ToolbarStorage.NavigationProperties(v16, type metadata accessor for ToolbarStorage.Entry.Kind);
      v49 = v70;
      ToolbarStorage.Entry.groupItem.getter(v70);
      if ((*(v68 + 48))(v49, 1, v69) == 1)
      {
        outlined destroy of ToolbarStorage.NavigationProperties?(v49, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720]);
        v34 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v53 = v49;
        v54 = v67;
        outlined init with take of ToolbarStorage.NavigationProperties(v53, v67, type metadata accessor for ToolbarStorage.GroupItem);
        if (!v72)
        {
          return outlined destroy of ToolbarStorage.NavigationProperties(v54, type metadata accessor for ToolbarStorage.GroupItem);
        }

        v55 = *(v54 + 152);
        v34 = MEMORY[0x1E69E7CC0];
        *&v81 = MEMORY[0x1E69E7CC0];
        v56 = *(v55 + 16);
        v57 = v72;
        if (v56)
        {
          v58 = 0;
          v79 = v56 - 1;
          do
          {
            v59 = v58;
            v60 = v71;
            while (1)
            {
              if (v59 >= *(v55 + 16))
              {
                __break(1u);

                outlined destroy of ToolbarStorage.NavigationProperties(v14, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);

                __break(1u);
                return result;
              }

              v61 = v76;
              outlined init with copy of ToolbarStorage.Entry.Kind(v55 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v59, v76, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
              closure #3 in closure #1 in closure #1 in UIKitToolbarStrategy.makeBarItems()(v61, v60, v57, v78, v80);
              v62 = outlined destroy of ToolbarStorage.NavigationProperties(v61, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
              v14 = *v80;
              if (*v80)
              {
                break;
              }

              if (v56 == ++v59)
              {
                goto LABEL_35;
              }
            }

            MEMORY[0x18D00CC30](v62);
            if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v58 = v59 + 1;
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v34 = v81;
          }

          while (v79 != v59);
        }

LABEL_35:

        outlined destroy of ToolbarStorage.NavigationProperties(v67, type metadata accessor for ToolbarStorage.GroupItem);
      }
    }
  }

  else
  {
    outlined init with take of ToolbarStorage.NavigationProperties(v19, v25, type metadata accessor for ToolbarStorage.Item);
    if (!v72)
    {
      return outlined destroy of ToolbarStorage.NavigationProperties(v25, type metadata accessor for ToolbarStorage.Item);
    }

    v43 = v72;
    outlined consume of OpenURLOptions?(v32, v33);
    v44 = specialized static UIKitBarButtonItem.makeVended(item:context:)(v25, v43, v78);
    v46 = v73;
    *v73 = v44;
    *(v46 + 8) = v47;
    if (v45)
    {
      v48 = v45;
      type metadata accessor for PlatformItemList.Item.SystemItem?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_18CD69590;
      *(v34 + 32) = v48;
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC0];
    }

    outlined destroy of ToolbarStorage.NavigationProperties(v25, type metadata accessor for ToolbarStorage.Item);
  }

LABEL_36:
  ToolbarStorage.Entry.placement.getter(v80);
  if (v80[40] == 255)
  {
    outlined destroy of PushTarget?(v80, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
  }

  else
  {
    v81 = *v80;
    *v82 = *&v80[16];
    *&v82[9] = *&v80[25];
    *v80 = 4;
    memset(&v80[8], 0, 32);
    v80[40] = 2;
    v64 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(&v81, v80);
    outlined destroy of ToolbarItemPlacement.Role(v80);
    if (v64)
    {

      specialized Array.append<A>(contentsOf:)(v65);
      outlined destroy of ToolbarItemPlacement.Role(&v81);
    }

    outlined destroy of ToolbarItemPlacement.Role(&v81);
  }

  return specialized Array.append<A>(contentsOf:)(v34);
}

id specialized static UIKitBarButtonItem.makeVended(item:context:)(uint64_t a1, void *a2, int a3)
{
  v6 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of _ViewList_View(a1 + 184, v54);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v54[96] = a3;
  v54[97] = 0;
  outlined init with copy of BarItemView(v54, &v50);
  v9 = *(a1 + 280);
  _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(0, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for UIKitBarItemHost);
  v11 = objc_allocWithZone(v10);
  v12 = MEMORY[0x1E69E7D40];
  v13 = &v11[*((*MEMORY[0x1E69E7D40] & *v11) + 0x710)];
  *v13 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(v13 + 1) = 0;
  v14 = &v11[*((*v12 & *v11) + 0x720)];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  *&v11[*((*v12 & *v11) + 0x718)] = v9;
  outlined init with copy of BarItemView(&v50, v49);
  v15 = v9;
  v16 = specialized _UIHostingView.init(rootView:)(v49);
  v17 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.safeAreaRegions.setter();

  outlined destroy of BarItemView(&v50);
  UIHostingViewBase.viewGraph.getter();

  swift_weakLoadStrong();
  ViewGraph.preferenceBridge.setter();

  outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(a1, v8, type metadata accessor for ToolbarStorage.Item);
  v18 = objc_allocWithZone(type metadata accessor for UIKitBarButtonItem(0));
  v19 = v16;
  v20 = a2;
  v21 = specialized UIKitBarButtonItem.init(item:context:host:)(v8, v20, a3, v19);

  [v19 bounds];
  v23 = v22;
  v25 = v24;

  if (v23 == 0.0 && v25 == 0.0)
  {
    lazy protocol witness table accessor for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>();
    v26 = ViewRendererHost.idealSize()();
    [v19 setBounds_];
  }

  lazy protocol witness table accessor for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>();
  ViewRendererHost.updateViewGraph<A>(body:)();
  v27 = v50;
  outlined init with copy of ToolbarItemPlacement.Role(a1 + 112, &v50);
  if ((v53 != 2 || (v50 != 4 ? (v28 = v50 == 1) : (v28 = 1), !v28 ? (v29 = v50 == 11) : (v29 = 1), !v29 ? (v30 = v50 - 25 > 1) : (v30 = 0), v30 || (v31 = vorrq_s8(v51, v52), *&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL))))) && (outlined destroy of ToolbarItemPlacement.Role(&v50), v27[2] == 1) && (v32 = *(type metadata accessor for PlatformItemList.Item() - 8), v33 = (v27 + ((*(v32 + 80) + 32) & ~*(v32 + 80))), v34 = v33[42], v34 >> 62 == 3) && (v34 & 0xFFFFFFFFFFFFFFFCLL) != 0x3FFFFFFFCLL && v34 == 0xC000000000000000 && v33[38] == 1 && (v35 = v33[39], v36 = v33[40], v37 = v33[41], !(v36 | v35 | v37)) && (v38 = v33[43], v39 = v33[44], v40 = v33[45], v41 = v33[46], v42 = v33[47], v43 = v33[48], v45 = v33[49], v44 = v33[50], !(v39 | v38 | v40 | v41 | v42 | v43 | v45 | v44)))
  {
    outlined copy of PlatformItemList.Item.SystemItem(1, v35, v36, v37, 0xC000000000000000, v38, v39, v40, v41, v42, v43, v45, v44);

    v46 = [objc_opt_self() flexibleSpaceItem];

    v21 = v46;
  }

  else
  {
    UIKitBarButtonItem.initializePlatformItem(_:)(v27);
  }

  outlined destroy of BarItemView(v54);
  return v21;
}

unint64_t lazy protocol witness table accessor for type BarItemView and conformance BarItemView()
{
  result = lazy protocol witness table cache variable for type BarItemView and conformance BarItemView;
  if (!lazy protocol witness table cache variable for type BarItemView and conformance BarItemView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BarItemView and conformance BarItemView);
  }

  return result;
}

void type metadata accessor for _UIHostingView<BarItemView>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t assignWithTake for BarItemView(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  v6 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  swift_unknownObjectWeakTakeAssign();
  return a1;
}

uint64_t PlatformItemListViewGraph.readAndUpdate(graph:)(uint64_t a1)
{
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = *WeakValue;
  *(v1 + 8) = 1;
  swift_beginAccess();
  if (*(a1 + 41))
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (*(v1 + 9))
    {
      goto LABEL_8;
    }

LABEL_7:
    if ((v5 & 1) == 0)
    {
      return v6;
    }

    goto LABEL_8;
  }

  if ((*(v1 + 9) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  *(v1 + 8) = 0;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(a1 + 208);
    ObjectType = swift_getObjectType();
    v9 = type metadata accessor for PlatformItemListHost();
    (*(v7 + 16))(v14, v9, v9, ObjectType, v7);
    swift_unknownObjectRelease();
    if (v14[0])
    {
      v10 = v14[1];
      v11 = swift_getObjectType();
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(v10 + 8))(partial apply for closure #1 in PlatformItemListViewGraph.readAndUpdate(graph:), v12);
      swift_unknownObjectRelease();
    }
  }

  return v6;
}

uint64_t outlined assign with take of PlatformItemList.Item.Accessibility?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI5ImageVAAE8ResolvedVSgMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for PlatformItemList.Item.Accessibility(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 280);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t outlined init with take of PlatformItemList.Item(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatformItemList.Item();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of PlatformItemList.Item(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatformItemList.Item();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for CGFloat?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for _ContiguousArrayStorage<PlatformItemList.Item>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t _UIHostingView.platformItemListDidChange(list:)(uint64_t (*a1)(void))
{
  v3 = (*MEMORY[0x1E69E7D40] & *v1);
  v4 = v1 + v3[56];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v8 = a1();
    (*(v6 + 48))(v1, v8, v3[10], v3[11], ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

void UIKitBarButtonItem.updatePlatformItem(_:)(void *a1)
{
  v3 = MEMORY[0x1E69E6720];
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for UIBarButtonItem.Badge?, MEMORY[0x1E69DC3E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, v3);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  if (a1[2])
  {
    PlatformItemList.mergedContentItem.getter(a1, v9);
    v10 = type metadata accessor for PlatformItemList.Item();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v10 = type metadata accessor for PlatformItemList.Item();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  v11 = &v1[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem];
  swift_beginAccess();
  outlined assign with take of PlatformItemList.Item?(v9, v11, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  swift_endAccess();
  UIKitBarButtonItem.updateRepresentation()();
  type metadata accessor for PlatformItemList.Item();
  if ((*(*(v10 - 8) + 48))(v11, 1, v10) || !*(v11 + 928))
  {
    v12 = type metadata accessor for UIBarButtonItem.Badge();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  else
  {

    static UIBarButtonItem.Badge.string(_:)();
    v13 = type metadata accessor for UIBarButtonItem.Badge();
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  }

  UIBarButtonItem.badge.setter();
  if (UIKitBarButtonItem.updateBridging()())
  {
    v14 = 0;
LABEL_13:
    [v1 setCustomView_];
    return;
  }

  v15 = [v1 customView];
  v16 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host;
  if (!v15 || (v17 = *&v1[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host], v18 = v15, v15, v18 != v17))
  {
    v14 = *&v1[v16];
    goto LABEL_13;
  }
}

uint64_t outlined init with take of PlatformItemList.Item(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VWObTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for BorderlessButtonStyleEnvironment.UpdateEnvironment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 14))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t getEnumTagSinglePayload for PlatformItemList.Item.SystemItem(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t assignWithTake for ToolbarButtonStyle(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of Environment<ToolbarItemPlacement.Role>.Content(a1);
    v4 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v4;
    *(a1 + 26) = *(a2 + 26);
  }

  v5 = *(a2 + 56);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 72);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  return a1;
}

_BYTE *initializeWithCopy for ToolbarButtonStyle.ResolvedBody(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v7 = &a1[v6];
  v8 = &a2[v6];
  type metadata accessor for ButtonAction();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v25 = *v8;
    v26 = *(v8 + 1);
    v27 = v8[16];
    outlined copy of Environment<AppIntentExecutor?>.Content(*v8, v26, v27);
    *v7 = v25;
    *(v7 + 1) = v26;
    v7[16] = v27;
    v28 = *(v8 + 5);
    v29 = *(v8 + 24);
    *(v7 + 24) = v29;
    *(v7 + 5) = v28;
    v30 = v29;
LABEL_6:

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v31 = *(v8 + 1);
    *v7 = *v8;
    *(v7 + 1) = v31;
    goto LABEL_6;
  }

  v38 = a3;
  v10 = *v8;
  v11 = *(v8 + 1);
  v13 = *(v8 + 2);
  v12 = *(v8 + 3);
  v14 = v8[34];
  v15 = *(v8 + 16);
  outlined copy of Environment<OpenURLAction>.Content(*v8, v11, v13, v12, v15, v14);
  *v7 = v10;
  *(v7 + 1) = v11;
  *(v7 + 2) = v13;
  *(v7 + 3) = v12;
  *(v7 + 16) = v15;
  v7[34] = v14;
  v16 = *(v8 + 5);
  v17 = *(v8 + 6);
  v18 = *(v8 + 7);
  v19 = *(v8 + 8);
  LOBYTE(v11) = v8[74];
  LOWORD(v13) = *(v8 + 36);
  outlined copy of Environment<OpenURLAction>.Content(v16, v17, v18, v19, v13, v11);
  *(v7 + 5) = v16;
  *(v7 + 6) = v17;
  *(v7 + 7) = v18;
  *(v7 + 8) = v19;
  *(v7 + 36) = v13;
  v7[74] = v11;
  a3 = v38;
  v20 = *(type metadata accessor for LinkDestination() + 24);
  v21 = &v7[v20];
  v22 = &v8[v20];
  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 16))(v21, v22, v23);
  v24 = type metadata accessor for LinkDestination.Configuration();
  v21[*(v24 + 20)] = v22[*(v24 + 20)];
LABEL_7:
  swift_storeEnumTagMultiPayload();
  v32 = *(a3 + 24);
  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  v33 = &a1[v32];
  v34 = &a2[v32];
  v35 = *&a2[v32];
  v36 = v34[8];
  outlined copy of Environment<Selector?>.Content(v35, v36);
  *v33 = v35;
  v33[8] = v36;
  return a1;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ToolbarButtonContentModifier@<X0>(void (**a1)(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[16];
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  *a1 = partial apply for closure #1 in ToolbarButtonContentModifier.body(content:);
  a1[1] = v6;

  return outlined copy of Environment<Selector?>.Content(v4, v5);
}

uint64_t sub_18BF5EC18()
{
  outlined consume of Environment<Selector?>.Content(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

void type metadata accessor for ToolbarStorage?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, UIKitSystemButtonConfigurationModifier, UIKitButtonStyleModifier<BorderlessButtonStyleBase>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, UIKitSystemButtonConfigurationModifier, UIKitButtonStyleModifier<BorderlessButtonStyleBase>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, UIKitSystemButtonConfigurationModifier, UIKitButtonStyleModifier<BorderlessButtonStyleBase>>>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, UIKitSystemButtonConfigurationModifier, UIKitButtonStyleModifier<BorderlessButtonStyleBase>>);
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, UIKitSystemButtonConfigurationModifier, UIKitButtonStyleModifier<BorderlessButtonStyleBase>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>>);
    }
  }
}

uint64_t destroy for ToolbarButtonLabelModifier(uint64_t a1)
{
  if (*(a1 + 41))
  {
    if (*(a1 + 40) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  else
  {
  }

  outlined consume of Environment<ToolbarItemMetrics?>.Content(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 81));
  outlined consume of Environment<Selector?>.Content(*(a1 + 88), *(a1 + 96));
  outlined consume of Environment<Selector?>.Content(*(a1 + 104), *(a1 + 112));
  outlined consume of Environment<Selector?>.Content(*(a1 + 120), *(a1 + 128));
  v2 = *(a1 + 136);
  v3 = *(a1 + 144);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t closure #2 in BarAppearanceBridge.didUpdate(bar:barUpdates:)()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.setter();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<AnyHashable, Any>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    v5 = MEMORY[0x1E69E7CA0];
    v6 = MEMORY[0x1E69E69B8];
    while (1)
    {
      outlined init with copy of (String, TabEntry)(v4, v15, &lazy cache variable for type metadata for (AnyHashable, Any), v6, v5 + 8, type metadata accessor for (Badge, Spacer));
      result = specialized __RawDictionaryStorage.find<A>(_:)(v15);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v3[6] + 40 * result;
      v10 = v15[0];
      v11 = v15[1];
      *(v9 + 32) = v16;
      *v9 = v10;
      *(v9 + 16) = v11;
      result = outlined init with take of Any(&v17, (v3[7] + 32 * result));
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 72;
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

uint64_t assignWithCopy for ToolbarItemGroup(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of ToolbarItemPlacement.Role(a1);
    if (*(a2 + 40) == 1)
    {
      v6 = *(a2 + 3);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 4);
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = 1;
    }

    else
    {
      v7 = *a2;
      v8 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v7;
      *(a1 + 16) = v8;
    }
  }

  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 24;
  v11 = *(v9 + 80);
  v12 = (v11 + 41 + a1) & ~v11;
  v13 = (a2 + v11 + 41) & ~v11;
  (*(v9 + 24))(v12, v13);
  *(*(v10 + 40) + v12) = *(*(v10 + 40) + v13);
  return a1;
}

uint64_t ReadDestinationsModifier.RequestsTransform.updateValue()(uint64_t a1)
{
  v87 = *MEMORY[0x1E69E9840];
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v54 - v4;
  if (*AGGraphGetValue() == 1)
  {
    v61 = a1;
    _s7SwiftUI19NavigationAuthorityVSgMaTm_1(0, &lazy cache variable for type metadata for NavigationStackViewPosition?, &type metadata for NavigationStackViewPosition, MEMORY[0x1E69E6720]);
    Value = AGGraphGetValue();
    v60 = v7;
    v9 = *Value;
    v8 = *(Value + 8);
    v62 = *(Value + 16);
    v10 = *(Value + 24);
    v11 = *(Value + 32);
    v12 = *(Value + 40);
    v70 = *(v1 + 4);
    v13 = v1[1];
    v68 = *v1;
    v69 = v13;
    type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for [NavigationDestinationResolverBase], type metadata accessor for NavigationDestinationResolverBase, MEMORY[0x1E69E62F8]);
    v14 = AGGraphGetValue();
    if (v12 == 2)
    {
      type metadata accessor for (_:)();
      result = AGGraphGetOutputValue();
      if (!result)
      {
        goto LABEL_6;
      }

      return result;
    }

    v17 = v15;
    v58 = v10;
    v59 = v5;
    v63 = *v14;
    *&v66 = v9;
    *(&v66 + 1) = v8;
    v57 = v8;
    v18 = v62;
    LOBYTE(v67[0]) = v62;
    *(&v67[0] + 1) = v10;
    *&v67[1] = v11;
    BYTE8(v67[1]) = v12 & 1;
    v19 = HIDWORD(v70);
    v20 = type metadata accessor for (_:)();
    result = AGGraphGetOutputValue();
    if (!result || (v60 & 1) != 0)
    {
      if ((v17 & 1) == 0)
      {
LABEL_13:
        if (v18 == 4)
        {
          v21 = v11;
        }

        else
        {
          v21 = v9;
        }

        if ((v12 & 1) == 0)
        {
          v21 = -1;
        }

        v22 = v70;
        v23 = v63;
        v76[0] = v63;
        v76[1] = v21;
        v77 = v69;
        v78 = 3;
        v79 = v57;
        v80 = v18;
        v86 = 0;
        v81 = v58;
        v82 = 0;
        v84 = 0;
        v83 = 0;
        v85 = 0;
        v56 = *(&v69 + 1);
        v60 = v69;
        if (v70)
        {
          v24 = v61;
          v25 = v20;
          if (v70 != -1)
          {
            v22 = merge32(_:_:)(v70, v19);
          }
        }

        else
        {
          v25 = v20;
          v22 = v19;
          v24 = v61;
        }

        outlined init with copy of NavigationRequest(v76, v74);
        v75 = v22;
        swift_bridgeObjectRetain_n();
        v26 = *(v24 - 8);
        v27 = *(v26 + 16);
        v27(v72, &v68, v24);
        v28 = v59;
        static Log.navigation.getter();
        v29 = type metadata accessor for Logger();
        v30 = *(v29 - 8);
        if ((*(v30 + 48))(v28, 1, v29) == 1)
        {

          _s7SwiftUI19NavigationAuthorityVSgWOhTm_2(v28, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for Attribute<(_:)>);
        }

        else
        {

          v27(v72, &v68, v24);
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v31, v32))
          {
            v55 = v32;
            v57 = v31;
            v58 = v30;
            v62 = v25;
            v33 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v71 = v54;
            *v33 = 136315650;
            v34 = NavigationStackViewPosition.description.getter();
            v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v71);

            *(v33 + 4) = v36;
            *(v33 + 12) = 2080;
            v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v56, &v71);
            (*(v26 + 8))(&v68, v24);
            *(v33 + 14) = v31;
            v60 = v33;
            *(v33 + 22) = 2080;
            *&v72[0] = 91;
            *(&v72[0] + 1) = 0xE100000000000000;
            if (v23 >> 62)
            {
              goto LABEL_44;
            }

            v30 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_27:
            v61 = v29;
            if (v30)
            {
              v24 = 0;
              v37 = v23 & 0xC000000000000001;
              v29 = v23 & 0xFFFFFFFFFFFFFF8;
              v28 = 0xE200000000000000;
              while (1)
              {
                if (v37)
                {
                  v38 = MEMORY[0x18D00E9C0](v24, v23);
                  v26 = v24 + 1;
                  if (__OFADD__(v24, 1))
                  {
LABEL_36:
                    __break(1u);
                    goto LABEL_37;
                  }
                }

                else
                {
                  if (v24 >= *(v29 + 16))
                  {
                    __break(1u);
LABEL_44:
                    v30 = __CocoaSet.count.getter();
                    goto LABEL_27;
                  }

                  v38 = *(v23 + 8 * v24 + 32);

                  v26 = v24 + 1;
                  if (__OFADD__(v24, 1))
                  {
                    goto LABEL_36;
                  }
                }

                v39 = (*(*v38 + 128))();
                v64 = 2314;
                v65 = 0xE200000000000000;
                MEMORY[0x18D00C9B0](v39);

                v31 = v72;
                MEMORY[0x18D00C9B0](v64, v65);

                ++v24;
                v23 = v63;
                if (v26 == v30)
                {
                  v41 = *(&v72[0] + 1);
                  v40 = *&v72[0];
                  v28 = v59;
                  goto LABEL_39;
                }
              }
            }

            v40 = 91;
            v41 = 0xE100000000000000;
LABEL_39:

            *&v72[0] = 93;
            *(&v72[0] + 1) = 0xE100000000000000;
            v64 = v40;
            v65 = v41;
            v64 = String.init<A>(_:)();
            v65 = v42;
            String.append<A>(contentsOf:)();
            v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v71);

            v44 = v60;
            *(v60 + 24) = v43;
            v45 = v57;
            _os_log_impl(&dword_18BD4A000, v57, v55, "Reading navigation destinations at %s\nReader: %s\nDestinations: %s", v44, 0x20u);
            v46 = v54;
            swift_arrayDestroy();
            MEMORY[0x18D0110E0](v46, -1, -1);
            MEMORY[0x18D0110E0](v44, -1, -1);

            v29 = v61;
            v30 = v58;
          }

          else
          {
LABEL_37:

            (*(v26 + 8))(&v68, v24);
          }

          (*(v30 + 8))(v28, v29);
        }

        outlined init with copy of PositionedNavigationDestination.Storage.SeededRequest(v74, v72);
        v47 = swift_allocObject();
        v48 = v67[0];
        v47[1] = v66;
        v47[2] = v48;
        *(v47 + 41) = *(v67 + 9);
        v49 = v73[0];
        v47[12] = v72[8];
        v47[13] = v49;
        *(v47 + 220) = *(v73 + 12);
        v50 = v72[5];
        v47[8] = v72[4];
        v47[9] = v50;
        v51 = v72[7];
        v47[10] = v72[6];
        v47[11] = v51;
        v52 = v72[1];
        v47[4] = v72[0];
        v47[5] = v52;
        v53 = v72[3];
        v47[6] = v72[2];
        v47[7] = v53;
        v64 = partial apply for closure #4 in ReadDestinationsModifier.RequestsTransform.updateValue();
        v65 = v47;
        AGGraphSetOutputValue();
        outlined destroy of PositionedNavigationDestination.Storage.SeededRequest(v74);
        outlined destroy of NavigationRequest(v76);
      }
    }

    else if ((v17 & 1) == 0)
    {
      return result;
    }

    *(v1 + 9) = ++v19;
    goto LABEL_13;
  }

  type metadata accessor for (_:)();
  result = AGGraphGetOutputValue();
  if (!result)
  {
LABEL_6:
    v74[0] = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
    v74[1] = 0;
    return AGGraphSetOutputValue();
  }

  return result;
}

uint64_t sub_18BF5FBE8()
{
  switch(*(v0 + 160))
  {
    case 0:
      goto LABEL_29;
    case 1:

      goto LABEL_29;
    case 2:

      __swift_destroy_boxed_opaque_existential_1(v0 + 80);
      break;
    case 3:

      break;
    case 4:
    case 5:

      goto LABEL_29;
    case 6:

      goto LABEL_29;
    case 0xA:
    case 0x11:
      __swift_destroy_boxed_opaque_existential_1(v0 + 64);

      goto LABEL_29;
    case 0xB:
      __swift_destroy_boxed_opaque_existential_1(v0 + 64);
      break;
    case 0xC:
    case 0xD:

      if (*(v0 + 96))
      {
        __swift_destroy_boxed_opaque_existential_1(v0 + 72);
      }

      if (*(v0 + 120) != 1)
      {
      }

      goto LABEL_29;
    case 0xE:

      if (*(v0 + 96))
      {
        __swift_destroy_boxed_opaque_existential_1(v0 + 72);
      }

      v1 = *(v0 + 120);
      goto LABEL_24;
    case 0x12:

      if (*(v0 + 104))
      {
        __swift_destroy_boxed_opaque_existential_1(v0 + 80);
      }

      if (*(v0 + 128) != 1)
      {
      }

      goto LABEL_29;
    case 0x13:
      if (*(v0 + 88))
      {
        __swift_destroy_boxed_opaque_existential_1(v0 + 64);
      }

      v1 = *(v0 + 112);
LABEL_24:
      if (v1 == 1)
      {
        break;
      }

      goto LABEL_29;
    case 0x15:
      if (*(v0 + 64))
      {
      }

      if (*(v0 + 80))
      {
LABEL_29:
      }

      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t View._onButtonGesture(pressing:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v12 = a3;
  *(&v12 + 1) = a4;
  *&v13 = a1;
  *(&v13 + 1) = a2;
  *&v14 = 0;
  BYTE8(v14) = 1;
  *&v15 = a3;
  *(&v15 + 1) = a4;

  outlined copy of AppIntentExecutor?(a1);
  type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for ButtonActionModifier<_ButtonGesture>, &type metadata for _ButtonGesture, &protocol witness table for _ButtonGesture, type metadata accessor for ButtonActionModifier);
  v10 = v9;

  MEMORY[0x18D00A570](&v12, a5, v10, a6);
  v16[0] = v12;
  v16[1] = v13;
  v16[2] = v14;
  v16[3] = v15;
  return outlined destroy of ButtonActionModifier<_ButtonGesture>(v16);
}

uint64_t outlined destroy of ButtonActionModifier<_ButtonGesture>(uint64_t a1)
{
  type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for ButtonActionModifier<_ButtonGesture>, &type metadata for _ButtonGesture, &protocol witness table for _ButtonGesture, type metadata accessor for ButtonActionModifier);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t assignWithCopy for OnScrollVisibilityGeometryAction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t closure #1 in OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder.enqueueAction(isVisible:)(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = a2;

  static Update.enqueueAction(reason:_:)();
}

uint64_t sub_18BF6009C()
{

  return swift_deallocObject();
}

void *destructiveInjectEnumTag for ScrollTransitionConfiguration.Threshold.Storage(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

uint64_t ToolbarModifier.TransformToolbar.updateValue()()
{
  v21 = *MEMORY[0x1E69E9840];
  AGGraphClearUpdate();
  closure #1 in ToolbarModifier.TransformToolbar.updateValue()(&v16);
  AGGraphSetUpdate();
  v0 = v16;
  Value = AGGraphGetValue();
  v16 = *Value;
  v3 = *(Value + 32);
  v2 = *(Value + 48);
  v4 = *(Value + 16);
  v20 = *(Value + 64);
  v18 = v3;
  v19 = v2;
  v17 = v4;
  outlined init with copy of ToolbarStorage(&v16, v15);
  type metadata accessor for _ContiguousArrayStorage<PreferencesOutputs>(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v5 = AGGraphGetValue();
  v6 = v5[1];
  v13 = *v5;
  type metadata accessor for Binding<Int>?();

  v7 = AGGraphGetValue();
  v14 = *v7;
  v8 = *(v7 + 16);
  v9 = swift_allocObject();
  v10 = v19;
  *(v9 + 48) = v18;
  *(v9 + 64) = v10;
  *(v9 + 80) = v20;
  v11 = v17;
  *(v9 + 16) = v16;
  *(v9 + 32) = v11;
  *&v11 = v13;
  *(&v11 + 1) = v6;
  *(v9 + 104) = v14;
  *(v9 + 88) = v11;
  *(v9 + 120) = v8;
  *(v9 + 128) = v0;
  v15[0] = partial apply for closure #2 in ToolbarModifier.TransformToolbar.updateValue();
  v15[1] = v9;
  type metadata accessor for (_:)();
  outlined copy of Binding<Int>?(v14, *(&v14 + 1));
  AGGraphSetOutputValue();
}