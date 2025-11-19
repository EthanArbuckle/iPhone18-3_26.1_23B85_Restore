uint64_t specialized TabViewCoordinator_Phone.updateHosts<A, B>(_:tabs:selected:environment:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, __int128 a10, uint64_t a11)
{
  v12 = v11;
  v107 = a2;
  type metadata accessor for Binding<SearchFieldState>?(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v87 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v88 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selectionCache;
  swift_beginAccess();
  v25 = *(v12 + v24);
  if (!v25)
  {
    return swift_endAccess();
  }

  if (!*(v25 + 16))
  {
    return swift_endAccess();
  }

  v26 = specialized __RawDictionaryStorage.find<A>(_:)(a9);
  if ((v27 & 1) == 0)
  {
    return swift_endAccess();
  }

  v28 = (*(v25 + 56) + 32 * v26);
  v29 = v28[2];
  v81 = v28[1];
  v75 = v29;
  v30 = v28[3];
  swift_endAccess();
  v80 = v30;

  v31 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_searchState;
  v109 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_searchIndex;
  v77 = a1;
  v78 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache;
  swift_unknownObjectRetain();
  v76 = a5;
  swift_unknownObjectRetain();
  v79 = v31;
  swift_beginAccess();
  v33 = a4 >> 1;
  if (a4 >> 1 == a3)
  {
LABEL_5:

    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  v35 = 0;
  v73 = v12 + v109;
  v74 = a11;
  v83 = a10;
  v36 = a8 >> 1;
  v86 = (&v124[16] + 8);
  v37 = a6 + 288 * a7;
  *&v32 = 136315138;
  v72 = v32;
  v82 = v12;
  v84 = a8 >> 1;
  v85 = v33;
  while (a3 < v33)
  {
    if (v36 == a7)
    {
      goto LABEL_5;
    }

    if (a7 >= v36)
    {
      goto LABEL_54;
    }

    v38 = *(v107 + 8 * a3);
    *&v124[0] = v38;
    outlined init with copy of TabEntry(v37, v124 + 8);
    if (__OFADD__(v35, 1))
    {
      goto LABEL_55;
    }

    v109 = v35;
    v106 = v37;
    v39 = v12;
    v104 = *(&v124[1] + 8);
    v105 = *(v124 + 8);
    v102 = *(&v124[3] + 8);
    v103 = *(&v124[2] + 8);
    v100 = *(&v124[5] + 8);
    v101 = *(&v124[4] + 8);
    v98 = *(&v124[7] + 8);
    v99 = *(&v124[6] + 8);
    v96 = *(&v124[9] + 8);
    v97 = *(&v124[8] + 8);
    v94 = *(&v124[11] + 8);
    v95 = *(&v124[10] + 8);
    v92 = *(&v124[13] + 8);
    v93 = *(&v124[12] + 8);
    v90 = *(&v124[15] + 8);
    v91 = *(&v124[14] + 8);
    v89 = *v86;
    v40 = *&v124[0];
    v41 = v126;
    v42 = v127;
    v43 = v38;
    v108 = v40;
    if (!v40)
    {
      goto LABEL_5;
    }

    v124[0] = v105;
    v124[1] = v104;
    v124[2] = v103;
    v124[3] = v102;
    v124[4] = v101;
    v124[5] = v100;
    v124[6] = v99;
    v124[7] = v98;
    v124[8] = v97;
    v124[9] = v96;
    v124[10] = v95;
    v124[11] = v94;
    v124[12] = v93;
    v124[13] = v92;
    v124[14] = v91;
    v124[15] = v90;
    v124[16] = v89;
    v125 = v41;
    LOBYTE(v126) = v42;
    outlined init with copy of TabEntry(v124, v122);
    if (v123)
    {
      memcpy(v118, v122, sizeof(v118));
      outlined init with copy of TabItem?(&v118[48], v117);
      if (*(&v117[1] + 1))
      {
        v110 = *&v117[6];
        v44 = one-time initialization token for defaultValue;

        v12 = v39;
        if (v44 != -1)
        {
          swift_once();
        }

        v113 = static TabOptions.TraitKey.defaultValue;
        v114[0] = unk_1EAB09380;
        *(v114 + 9) = *(&word_1EAB09388 + 1);
        v120 = static TabOptions.TraitKey.defaultValue;
        v121[0] = unk_1EAB09380;
        *(v121 + 9) = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v113, &v115);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v115 = v120;
        v116[0] = v121[0];
        *(v116 + 9) = *(v121 + 9);
        outlined destroy of TabOptions(&v115);
        outlined destroy of TabItemGroup(v118);

        v120 = v111;
        v121[0] = v112[0];
        *(v121 + 9) = *(v112 + 9);
        outlined destroy of TabOptions(&v120);
        v45 = BYTE1(v120);
        outlined destroy of TabItem(v117);
        if (v45)
        {
          goto LABEL_8;
        }
      }

      else
      {
        outlined destroy of TabItemGroup(v118);
        _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(v117, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
        v12 = v39;
      }
    }

    else
    {
      *&v118[80] = *&v122[80];
      *&v118[96] = *&v122[96];
      *v118 = *v122;
      *&v118[16] = *&v122[16];
      *&v118[48] = *&v122[48];
      *&v118[64] = *&v122[64];
      *&v118[32] = *&v122[32];
      *&v111 = *&v122[96];
      v46 = one-time initialization token for defaultValue;

      if (v46 != -1)
      {
        swift_once();
      }

      v115 = static TabOptions.TraitKey.defaultValue;
      v116[0] = unk_1EAB09380;
      *(v116 + 9) = *(&word_1EAB09388 + 1);
      v117[0] = static TabOptions.TraitKey.defaultValue;
      v117[1] = unk_1EAB09380;
      *(&v117[1] + 9) = *(&word_1EAB09388 + 1);
      outlined init with copy of TabOptions(&v115, &v120);
      ViewTraitCollection.value<A>(for:defaultValue:)();
      v120 = v117[0];
      v121[0] = v117[1];
      *(v121 + 9) = *(&v117[1] + 9);
      outlined destroy of TabOptions(&v120);
      outlined destroy of TabItem(v118);

      v117[0] = v113;
      v117[1] = v114[0];
      *(&v117[1] + 9) = *(v114 + 9);
      outlined destroy of TabOptions(v117);
      v36 = v84;
      v12 = v39;
      if (BYTE1(v117[0]) == 1)
      {
LABEL_8:
        outlined destroy of TabEntry(v124);

        goto LABEL_9;
      }
    }

    v47 = v88;
    static Log.tabView.getter();
    v48 = type metadata accessor for Logger();
    v49 = *(v48 - 8);
    if ((*(v49 + 48))(v47, 1, v48) == 1)
    {
      _s2os6LoggerVSgWOhTm_0(v47, type metadata accessor for Logger?);
    }

    else
    {
      outlined init with copy of TabEntry(v124, v122);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        LODWORD(v105) = v51;
        v52 = swift_slowAlloc();
        *&v104 = swift_slowAlloc();
        *&v120 = v104;
        *v52 = v72;
        outlined init with copy of TabEntry(v122, v118);
        if (v119)
        {
          outlined destroy of TabEntry(v122);
          memcpy(v117, v118, 0x118uLL);
          v53 = *(&v117[1] + 1);
          v54 = *&v117[2];
          outlined copy of TabCustomizationID.Base();
          outlined destroy of TabItemGroup(v117);
        }

        else
        {
          v117[4] = *&v118[64];
          v117[5] = *&v118[80];
          v117[6] = *&v118[96];
          v117[0] = *v118;
          v117[1] = *&v118[16];
          v117[2] = *&v118[32];
          v117[3] = *&v118[48];
          v53 = TabItem.platformIdentifier.getter();
          v54 = v55;
          outlined destroy of TabItem(v117);
          outlined destroy of TabEntry(v122);
        }

        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v120);

        *(v52 + 4) = v56;
        _os_log_impl(&dword_18BD4A000, v50, v105, "Updating tab %s", v52, 0xCu);
        v57 = v104;
        __swift_destroy_boxed_opaque_existential_1(v104);
        MEMORY[0x18D0110E0](v57, -1, -1);
        MEMORY[0x18D0110E0](v52, -1, -1);

        v12 = v82;
        v36 = v84;
      }

      else
      {

        outlined destroy of TabEntry(v122);
      }

      (*(v49 + 8))(v88, v48);
    }

    type metadata accessor for TabHostingController(0);
    v58 = v108;
    v59 = swift_dynamicCastClassUnconditional();
    *v122 = v83;
    TabViewCoordinator_Phone.updateTabElementCreatingIfNeeded(on:using:environment:)(v59, v124, v122);
    if (v81 == v109)
    {
      v60 = v87;
      outlined init with copy of UIKitAdaptableTabView(v12 + v79, v87, type metadata accessor for Binding<SearchFieldState>?);
      type metadata accessor for Binding<SearchFieldState>(0);
      v62 = 1;
      v63 = (*(*(v61 - 8) + 48))(v60, 1, v61);
      _s2os6LoggerVSgWOhTm_0(v60, type metadata accessor for Binding<SearchFieldState>?);
      if (v63 != 1)
      {
        if (*(v73 + 8))
        {
          v62 = 2;
        }

        else if (*v73 == v81)
        {
          v62 = 2;
        }

        else
        {
          v62 = 1;
        }
      }

      v64 = *(v82 + v78);
      if (!v64)
      {
        goto LABEL_56;
      }

      outlined init with copy of TabEntry(v124, v122);
      if (v123)
      {
        memcpy(v118, v122, sizeof(v118));
        v120 = v83;
        v65 = v80;

        TabViewCoordinator_Phone.visibleTab(in:selectedID:tabCache:environment:)(v118, v75, v65, v64, &v120, v117);

        outlined destroy of TabItemGroup(v118);
      }

      else
      {
        v117[4] = *&v122[64];
        v117[5] = *&v122[80];
        v117[6] = *&v122[96];
        v117[0] = *v122;
        v117[1] = *&v122[16];
        v117[2] = *&v122[32];
        v117[3] = *&v122[48];
      }

      v66 = v108;
      outlined init with copy of TabItem?(v117, v122);
      v36 = v84;
      if (*&v122[24])
      {
        v121[3] = *&v122[64];
        v121[4] = *&v122[80];
        v121[5] = *&v122[96];
        v120 = *v122;
        v121[0] = *&v122[16];
        v121[1] = *&v122[32];
        v121[2] = *&v122[48];
        outlined init with copy of TabItem(&v120, v118);
        v118[112] = 0;
        v118[113] = v62;
        outlined init with copy of TabEntry(v124, v122);
        v67 = v123;
        outlined destroy of TabEntry(v122);
        if (v67)
        {
          v68 = TabItem.platformIdentifier.getter();
          v12 = v82;
          TabHostingController.setChildRootViewCreatingHostIfNeeded(_:childID:transaction:coordinator:)(v118, v68, v69, v74, v82);
          v66 = v108;
        }

        else
        {
          v71 = *&v59[direct field offset for UIHostingController.host];
          specialized _UIHostingView.setRootView(_:transaction:)(v118);

          v12 = v82;
        }

        *v122 = v83;
        TabHostingController.updateTabEnvironment(environment:coordinator:)(v122, v12);

        outlined destroy of TabItem.RootView(v118);
        outlined destroy of TabItem(&v120);
        _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(v117, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
        outlined destroy of TabEntry(v124);
      }

      else
      {

        v70 = MEMORY[0x1E69E6720];
        _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(v117, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
        outlined destroy of TabEntry(v124);
        _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(v122, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, v70);
        v12 = v82;
      }
    }

    else
    {
      outlined destroy of TabEntry(v124);
    }

LABEL_9:
    ++a3;
    v37 = v106 + 288;
    v35 = v109 + 1;
    ++a7;
    v33 = v85;
    if (v85 == a3)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int_optional __swiftcall TabViewCoordinator_Phone.updatedSelection(didSelect:viewController:selectionCache:)(UITabBarController *didSelect, UIViewController *viewController, Swift::OpaquePointer_optional selectionCache)
{
  rawValue = selectionCache.value._rawValue;
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.tabView.getter();
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    _s2os6LoggerVSgWOhTm_0(v8, type metadata accessor for Logger?);
  }

  else
  {
    v37 = didSelect;
    v11 = viewController;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v35 = viewController;
      v36 = rawValue;
      v14 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v40 = v34;
      *v14 = 136315138;
      v15 = [(UIViewController *)v11 _uip_tabElement];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 title];

        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      v38 = v18;
      v39 = v20;
      type metadata accessor for TabItem?(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      v21 = String.init<A>(describing:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v40);

      *(v14 + 4) = v23;
      _os_log_impl(&dword_18BD4A000, v12, v13, "UITabBarController, didSelect viewController. Element:\n%s", v14, 0xCu);
      v24 = v34;
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x18D0110E0](v24, -1, -1);
      MEMORY[0x18D0110E0](v14, -1, -1);

      viewController = v35;
      rawValue = v36;
    }

    else
    {
    }

    (*(v10 + 8))(v8, v9);
    didSelect = v37;
  }

  v25 = [(UITabBarController *)didSelect selectedIndex];
  if (v25 == NSNotFound.getter())
  {
    v26 = 0;
    v27 = 1;
  }

  else
  {
    v28 = [(UIViewController *)viewController _uip_tabElement];
    TabViewCoordinator_Phone.getIndex(selectedElement:selectionCache:)(v28, rawValue);
    v30 = v29;
    v27 = v31;

    v26 = v30;
  }

  v32 = v27 & 1;
  result.value = v26;
  result.is_nil = v32;
  return result;
}

uint64_t TabViewCoordinator_Phone.acceptDropItems(from:onto:tabCache:)(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.tabView.getter();
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    _s2os6LoggerVSgWOhTm_0(v8, type metadata accessor for Logger?);
  }

  else
  {
    v27 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_18BD4A000, v11, v12, "acceptDropItems:fromSession:", v13, 2u);
      MEMORY[0x18D0110E0](v13, -1, -1);
    }

    (*(v10 + 8))(v8, v9);
  }

  TabViewCoordinator_Phone.getElement(for:tabCache:)(a2, a3, &v34);
  if (!*(&v35[0] + 1))
  {
    return _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(&v34, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
  }

  v37[5] = v35[4];
  v38 = v36;
  v37[0] = v34;
  v37[1] = v35[0];
  v37[3] = v35[2];
  v37[4] = v35[3];
  v37[2] = v35[1];
  *&v31 = v36;
  memset(v33, 0, sizeof(v33));
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v14 = v34;
  if (v34)
  {
    v15 = *(&v34 + 1);
    v16 = *&v35[0];
    v17 = BYTE8(v35[0]);
    v18 = *(&v35[1] + 1);
    v27 = *&v35[1];
    swift_getObjectType();
    v19 = UIDropSession.itemProviders(for:)(v14);
    v28 = v38;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v31 = static TabOptions.TraitKey.defaultValue;
    v32[0] = unk_1EAB09380;
    *(v32 + 9) = *(&word_1EAB09388 + 1);
    v34 = static TabOptions.TraitKey.defaultValue;
    v35[0] = unk_1EAB09380;
    *(v35 + 9) = *(&word_1EAB09388 + 1);
    outlined init with copy of TabOptions(&v31, v33);
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v33[0] = v34;
    v33[1] = v35[0];
    *(&v33[1] + 9) = *(v35 + 9);
    outlined destroy of TabOptions(v33);
    v34 = v29;
    v35[0] = *v30;
    *(v35 + 9) = *&v30[9];
    v20 = *(&v29 + 1);
    v21 = *v30;
    v22 = v30[8];
    outlined copy of TabCustomizationID?(*(&v29 + 1), *&v35[0], SBYTE8(v35[0]));
    outlined destroy of TabOptions(&v34);
    v23 = v22 == 255;
    if (v22 == 255)
    {
      v24 = 0;
    }

    else
    {
      v24 = v20;
    }

    if (v23)
    {
      v21 = 0;
    }

    LOBYTE(v28) = 17;
    v25 = swift_allocObject();
    *(v25 + 16) = v14;
    *(v25 + 24) = v15;
    *(v25 + 32) = v16;
    *(v25 + 40) = v17;
    *(v25 + 41) = v29;
    *(v25 + 44) = *(&v29 + 3);
    *(v25 + 48) = v27;
    *(v25 + 56) = v18;
    *(v25 + 64) = v24;
    *(v25 + 72) = v21;
    *(v25 + 80) = v19;

    outlined copy of Binding<Int>?(v15, v16);

    static Update.enqueueAction(reason:_:)();

    outlined consume of Binding<NavigationSplitViewColumn>?(v15, v16);
  }

  return outlined destroy of TabItem(v37);
}

uint64_t TabViewCoordinator_Phone.mayHaveCustomizedTabBarVisibility(of:customization:tabCache:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v70 = type metadata accessor for TabViewCustomization();
  MEMORY[0x1EEE9AC00](v70);
  v66 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v64 - v10;
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v64 - v15;
  type metadata accessor for Binding<TabViewCustomization>(0);
  v77 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = __CocoaSet.count.getter();
  if (result >= 1)
  {
LABEL_3:
    outlined init with copy of UIKitAdaptableTabView(a2, v16, type metadata accessor for Binding<TabViewCustomization>?);
    if ((*(v18 + 48))(v16, 1, v77) == 1)
    {
      v21 = type metadata accessor for Binding<TabViewCustomization>?;
      v22 = v16;
      return _s2os6LoggerVSgWOhTm_0(v22, v21);
    }

    v23 = v76;
    outlined init with take of Binding<TabViewCustomization>(v16, v76, type metadata accessor for Binding<TabViewCustomization>);
    if (!a3)
    {
      v21 = type metadata accessor for Binding<TabViewCustomization>;
      v22 = v23;
      return _s2os6LoggerVSgWOhTm_0(v22, v21);
    }

    if (a1 >> 62)
    {
      v24 = v71;
      result = __CocoaSet.count.getter();
      if (!result)
      {
LABEL_62:
        v21 = type metadata accessor for Binding<TabViewCustomization>;
        v22 = v76;
        return _s2os6LoggerVSgWOhTm_0(v22, v21);
      }
    }

    else
    {
      v24 = v71;
      result = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_62;
      }
    }

    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v25 = 0;
    v74 = v24 & 0xC000000000000001;
    v75 = result;
    v72 = (v18 + 56);
    v68 = a3;
    v69 = v4;
    v67 = v13;
    while (1)
    {
      if (v74)
      {
        v26 = MEMORY[0x18D00E9C0](v25, v24);
      }

      else
      {
        v26 = *(v24 + 8 * v25 + 32);
      }

      v27 = v26;
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        v30 = v27;
        v31 = [v29 _children];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _UITab);
        v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        outlined init with copy of UIKitAdaptableTabView(v76, v13, type metadata accessor for Binding<TabViewCustomization>);
        (*v72)(v13, 0, 1, v77);
        TabViewCoordinator_Phone.mayHaveCustomizedTabBarVisibility(of:customization:tabCache:)(v32, v13, a3);

        _s2os6LoggerVSgWOhTm_0(v13, type metadata accessor for Binding<TabViewCustomization>?);
      }

      v33 = v27;
      v34 = [v33 identifier];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      if (!*(a3 + 16))
      {

LABEL_14:

        goto LABEL_15;
      }

      v38 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v37);
      v40 = v39;

      if ((v40 & 1) == 0)
      {
        goto LABEL_14;
      }

      outlined init with copy of TabEntry(*(a3 + 56) + 288 * v38, v90);
      memcpy(v91, v90, 0x119uLL);
      outlined init with copy of TabEntry(v91, v90);
      if (BYTE8(v90[17]))
      {
        outlined destroy of TabEntry(v90);
        v41 = 1;
      }

      else
      {
        v89[5] = v90[5];
        v89[6] = v90[6];
        v89[0] = v90[0];
        v89[1] = v90[1];
        v89[3] = v90[3];
        v89[4] = v90[4];
        v89[2] = v90[2];
        *&v87 = *&v90[6];
        *&v85 = MEMORY[0x1E69E7CC0];
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v42 = *(*&v90[0] + 16);

        if (!v42 || (*&v90[0] = *&v89[6], LOBYTE(v85) = 0, ViewTraitCollection.value<A>(for:defaultValue:)(), v41 = 0, (v87 & 1) != 0))
        {
          *&v90[0] = *&v89[6];
          v41 = ViewTraitCollection.isAuxiliaryContent.getter() ^ 1;
        }

        LOBYTE(v90[0]) = 0;
        v43 = TabItem.clientDefaultVisibility(for:)(v90);
        if (v43)
        {
          v41 = v43 == 1;
        }

        outlined destroy of TabItem(v89);
      }

      outlined init with copy of TabEntry(v91, v90);
      if (BYTE8(v90[17]))
      {
        memcpy(v89, v90, 0x118uLL);
        v44 = *(&v89[1] + 1);
        v45 = *&v89[2];
        LOBYTE(v46) = BYTE8(v89[2]);
        outlined copy of TabCustomizationID.Base();
        outlined destroy of TabItemGroup(v89);
      }

      else
      {
        v89[4] = v90[4];
        v89[5] = v90[5];
        v89[6] = v90[6];
        v89[0] = v90[0];
        v89[1] = v90[1];
        v89[2] = v90[2];
        v89[3] = v90[3];
        if ((TabItem.needsCustomizationIDForEnablement.getter() & 1) == 0)
        {
          goto LABEL_37;
        }

        v80 = *&v89[6];
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v83 = static TabOptions.TraitKey.defaultValue;
        v84[0] = unk_1EAB09380;
        *(v84 + 9) = *(&word_1EAB09388 + 1);
        v78 = static TabOptions.TraitKey.defaultValue;
        v79[0] = unk_1EAB09380;
        *(v79 + 9) = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v83, &v81);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v85 = v78;
        v86[0] = v79[0];
        *(v86 + 9) = *(v79 + 9);
        outlined destroy of TabOptions(&v85);
        v87 = v81;
        v88[0] = *v82;
        *(v88 + 9) = *&v82[9];
        v44 = *(&v81 + 1);
        v45 = *v82;
        v46 = v82[8];
        outlined copy of TabCustomizationID?(*(&v81 + 1), *v82, v82[8]);
        outlined destroy of TabOptions(&v87);
        if (v46 == 255)
        {
LABEL_37:
          v44 = TabItem.platformIdentifier.getter();
          v45 = v47;
          LOBYTE(v46) = 1;
        }

        outlined destroy of TabItem(v89);
      }

      v48 = v73;
      MEMORY[0x18D00ACC0](v77);
      v49 = *(v48 + *(v70 + 20));
      if (!*(v49 + 16))
      {
        break;
      }

      v50 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v45, v46 & 1);
      v52 = v51;
      outlined consume of TabCustomizationID.Base();
      if ((v52 & 1) == 0)
      {
        goto LABEL_43;
      }

      v53 = *(*(v49 + 56) + 2 * v50 + 1);
      v54 = 6u >> (v53 & 7);
      v55 = 4u >> (v53 & 7);
LABEL_44:
      a3 = v68;
      _s2os6LoggerVSgWOhTm_0(v73, type metadata accessor for TabViewCustomization);
      v56 = [v33 hasVisiblePlacement];

      if (v54 & 1) != 0 || ((v41 ^ v56))
      {
        if (v56)
        {
          v13 = v67;
          if ((v53 & 1) == 0)
          {
            v57 = 1;
LABEL_53:
            v65 = v57;
            outlined init with copy of TabEntry(v91, v90);
            if (BYTE8(v90[17]))
            {
              memcpy(v89, v90, 0x118uLL);
              v58 = *&v89[2];
              LOBYTE(v59) = BYTE8(v89[2]);
              v64 = *(&v89[1] + 1);
              outlined copy of TabCustomizationID.Base();
              outlined destroy of TabItemGroup(v89);
              v24 = v71;
            }

            else
            {
              v89[4] = v90[4];
              v89[5] = v90[5];
              v89[6] = v90[6];
              v89[0] = v90[0];
              v89[1] = v90[1];
              v89[2] = v90[2];
              v89[3] = v90[3];
              v60 = TabItem.needsCustomizationIDForEnablement.getter();
              v24 = v71;
              if ((v60 & 1) == 0)
              {
                goto LABEL_59;
              }

              v80 = *&v89[6];
              if (one-time initialization token for defaultValue != -1)
              {
                swift_once();
              }

              v83 = static TabOptions.TraitKey.defaultValue;
              v84[0] = unk_1EAB09380;
              *(v84 + 9) = *(&word_1EAB09388 + 1);
              v78 = static TabOptions.TraitKey.defaultValue;
              v79[0] = unk_1EAB09380;
              *(v79 + 9) = *(&word_1EAB09388 + 1);
              outlined init with copy of TabOptions(&v83, &v81);
              ViewTraitCollection.value<A>(for:defaultValue:)();
              v85 = v78;
              v86[0] = v79[0];
              *(v86 + 9) = *(v79 + 9);
              outlined destroy of TabOptions(&v85);
              v87 = v81;
              v88[0] = *v82;
              *(v88 + 9) = *&v82[9];
              v61 = *(&v81 + 1);
              v58 = *v82;
              v59 = v82[8];
              outlined copy of TabCustomizationID?(*(&v81 + 1), *v82, v82[8]);
              outlined destroy of TabOptions(&v87);
              if (v59 == 255)
              {
LABEL_59:
                v61 = TabItem.platformIdentifier.getter();
                v58 = v62;
                LOBYTE(v59) = 1;
              }

              v64 = v61;
              outlined destroy of TabItem(v89);
            }

            v63 = v66;
            MEMORY[0x18D00ACC0](v77);
            TabViewCustomization.subscript.setter(v65, v64, v58, v59 & 1);
            dispatch thunk of AnyLocation.set(_:transaction:)();

            _s2os6LoggerVSgWOhTm_0(v63, type metadata accessor for TabViewCustomization);
            outlined destroy of TabEntry(v91);
            a3 = v68;
            goto LABEL_15;
          }
        }

        else
        {
          v13 = v67;
          if ((v55 & 1) == 0)
          {
            v57 = 2;
            goto LABEL_53;
          }
        }

        outlined destroy of TabEntry(v91);

        v24 = v71;
      }

      else
      {
        outlined destroy of TabEntry(v91);

        v24 = v71;
        v13 = v67;
      }

LABEL_15:
      if (v75 == ++v25)
      {
        goto LABEL_62;
      }
    }

    outlined consume of TabCustomizationID.Base();
LABEL_43:
    LOBYTE(v54) = 0;
    LOBYTE(v55) = 0;
    v53 = 0;
    goto LABEL_44;
  }

  return result;
}

uint64_t TabViewCoordinator_Phone.dragSessionItems(for:tabCache:)(void *a1, uint64_t a2)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.tabView.getter();
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    _s2os6LoggerVSgWOhTm_0(v7, type metadata accessor for Logger?);
  }

  else
  {
    v33 = v2;
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39[0] = v31;
      *v13 = 136315138;
      v14 = [v10 title];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = a2;
      v16 = v15;
      HIDWORD(v30) = v12;
      v17 = a1;
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v19, v39);
      a1 = v17;

      *(v13 + 4) = v20;
      a2 = v32;
      _os_log_impl(&dword_18BD4A000, v11, BYTE4(v30), "dragSessionItems: forTab: %s", v13, 0xCu);
      v21 = v31;
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x18D0110E0](v21, -1, -1);
      MEMORY[0x18D0110E0](v13, -1, -1);
    }

    (*(v9 + 8))(v7, v8);
  }

  TabViewCoordinator_Phone.getElement(for:tabCache:)(a1, a2, v39);
  outlined init with copy of TabItem?(v39, v38);
  if (!v38[3])
  {
    _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(v38, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
    goto LABEL_12;
  }

  v35 = 0;
  v36 = v38[12];
  v34 = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v22 = v37[0];
  if (!v37[0])
  {
    outlined destroy of TabItem(v38);
    goto LABEL_12;
  }

  v23 = v37[1];
  v24 = outlined destroy of TabItem(v38);
  v22(v37, v24);
  outlined consume of TriggerSubmitAction?(v22, v23);
  v25 = v37[0];
  if (!v37[0])
  {
LABEL_12:
    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  type metadata accessor for TabItem?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_18CD69590;
  v27 = objc_allocWithZone(MEMORY[0x1E69DC990]);
  v28 = v25;
  *(v26 + 32) = [v27 initWithItemProvider_];

LABEL_13:
  _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(v39, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
  return v26;
}

id TabViewCoordinator_Phone.swipeActionsConfiguration(for:edge:tabCache:)(void *a1, int a2, uint64_t a3)
{
  LODWORD(v5) = a2;
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.tabView.getter();
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    _s2os6LoggerVSgWOhTm_0(v9, type metadata accessor for Logger?);
  }

  else
  {
    v35 = v3;
    v12 = a1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v33 = a3;
      v16 = v15;
      v32 = swift_slowAlloc();
      v38[0] = v32;
      *v16 = 136315394;
      v36[0] = v5 & 1;
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v38);
      v34 = v5;
      v20 = v19;

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v21 = [v12 title];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = v5;
      LOBYTE(v5) = v34;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, v38);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_18BD4A000, v13, v14, "%s swipeActionsConfiguration tab: %s", v16, 0x16u);
      v26 = v32;
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v26, -1, -1);
      v27 = v16;
      a3 = v33;
      MEMORY[0x18D0110E0](v27, -1, -1);
    }

    (*(v11 + 8))(v9, v10);
  }

  TabViewCoordinator_Phone.getElement(for:tabCache:)(a1, a3, v38);
  outlined init with copy of TabItem?(v38, v36);
  if (v37)
  {
    v28 = TabItem.swipeActionsConfiguration(for:)(v5 & 1);
    _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(v38, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
    outlined destroy of TabItem(v36);
  }

  else
  {
    v29 = MEMORY[0x1E69E6720];
    _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(v38, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
    _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(v36, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, v29);
    return 0;
  }

  return v28;
}

unint64_t TabViewCoordinator_Phone.contextMenu(for:tabCache:)(void *a1, uint64_t a2)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.tabView.getter();
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    _s2os6LoggerVSgWOhTm_0(v7, type metadata accessor for Logger?);
  }

  else
  {
    v28 = v2;
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v27 = a1;
      v14 = v13;
      v26 = swift_slowAlloc();
      v31[0] = v26;
      *v14 = 136315138;
      v15 = [v10 title];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = a2;
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v19, v31);
      a2 = v17;

      *(v14 + 4) = v20;
      _os_log_impl(&dword_18BD4A000, v11, v12, "contextMenu: forTab: %s", v14, 0xCu);
      v21 = v26;
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x18D0110E0](v21, -1, -1);
      v22 = v14;
      a1 = v27;
      MEMORY[0x18D0110E0](v22, -1, -1);
    }

    (*(v9 + 8))(v7, v8);
  }

  TabViewCoordinator_Phone.getElement(for:tabCache:)(a1, a2, v31);
  outlined init with copy of TabItem?(v31, v29);
  if (v30)
  {
    v23 = TabItem.menuConfiguration()();
    _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(v31, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
    outlined destroy of TabItem(v29);
  }

  else
  {
    v24 = MEMORY[0x1E69E6720];
    _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(v31, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
    _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(v29, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, v24);
    return 0;
  }

  return v23;
}

uint64_t specialized UIHostingController.updateProperties(on:using:customization:environment:coordinator:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v37 = a4;
  *(&v37 + 1) = a5;
  v8 = *(a2 + 96);
  *&v35 = v8;
  v39 = 0uLL;
  v40[0] = xmmword_18CD67BD0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v9 = v41;
  v10 = v42;
  v11 = specialized TabViewCoordinator_Phone.badgeValue(environment:badgeLabel:)(&v37, v41, *(&v41 + 1), v42);
  v13 = v12;
  outlined consume of BadgeLabel?(v9, *(&v9 + 1), v10);
  v14 = [a1 badgeValue];
  if (!v14)
  {
    if (!v13)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (!v13)
  {
    if (!v18)
    {
      goto LABEL_15;
    }

    v21 = 0;
    goto LABEL_14;
  }

  if (!v18)
  {
LABEL_11:
    v21 = MEMORY[0x18D00C850](v11, v13);
LABEL_14:

    [a1 setBadgeValue_];

    goto LABEL_15;
  }

  if (v11 != v16 || v13 != v18)
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {

      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_15:
  *&v39 = v8;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  ViewTraitCollection.value<A>(for:defaultValue:)();
  PlatformItem.applyAccessibilityProperties(on:item:)(a1, a2);
  type metadata accessor for InterfaceIdiomPredicate<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SpringLoadingBehavior.Key>, &type metadata for SpringLoadingBehavior.Key, &protocol witness table for SpringLoadingBehavior.Key, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SpringLoadingBehavior.Key>, &type metadata for SpringLoadingBehavior.Key, &protocol witness table for SpringLoadingBehavior.Key);
  if (a5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  LOBYTE(v35) = v39;
  TabItem.resolvedSpringLoadingBehavior(environmentBehavior:)(&v35);
  v22 = v37;
  v23 = v37 != 2;
  if (v23 != [a1 isSpringLoaded])
  {
    [a1 setSpringLoaded_];
  }

  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v35 = static TabOptions.TraitKey.defaultValue;
  v36[0] = unk_1EAB09380;
  *(v36 + 9) = *(&word_1EAB09388 + 1);
  v39 = static TabOptions.TraitKey.defaultValue;
  v40[0] = unk_1EAB09380;
  *(v40 + 9) = *(&word_1EAB09388 + 1);
  outlined init with copy of TabOptions(&v35, &v37);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v37 = v39;
  v38[0] = v40[0];
  *(v38 + 9) = *(v40 + 9);
  outlined destroy of TabOptions(&v37);
  v39 = v33;
  v40[0] = *v34;
  *(v40 + 9) = *&v34[9];
  outlined destroy of TabOptions(&v39);
  v24 = BYTE2(v39);
  if (v24 == [a1 isEnabled])
  {
    [a1 setEnabled_];
  }

  specialized UIHostingController.updateCustomizationProperties(on:using:customization:)(a1, a2, a3);
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  ViewTraitCollection.value<A>(for:defaultValue:)();
  v25 = *(v33 + 16);

  if (v25)
  {
    type metadata accessor for TabHostingController(0);
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v27 = v26;
      v28 = v32;
      ViewTraitCollection.value<A>(for:defaultValue:)();
      v29 = v28;
      TabViewCoordinator_Phone.updatePopoverPresentation(presentations:presenter:host:)(v33, a1, v27);
    }
  }

  specialized UIHostingController.updateTitleImage(on:using:)(a1, &v41);
  return outlined destroy of PlatformItem(&v41);
}

void specialized UIHostingController.updateTabGroupCreatingIfNeeded(using:customization:environment:coordinator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = [v5 _uip_tabElement];
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
LABEL_8:

LABEL_9:
    outlined init with copy of TabItemGroup(a1, v40);
    v41 = 1;
    v24 = specialized UIHostingController.createBridgedTab(using:coordinator:)(v40, a5);
    outlined destroy of TabEntry(v40);
    objc_opt_self();
    v15 = swift_dynamicCastObjCClassUnconditional();
    v25 = v24;
    [v6 _uip_setTabElement_];
    goto LABEL_12;
  }

  v15 = v14;
  v32 = a2;
  v16 = a3;
  v17 = a4;
  v18 = [v14 identifier];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v19 == *(a1 + 24) && *(a1 + 32) == v21)
  {

    a4 = v17;
    a3 = v16;
    a2 = v32;
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a4 = v17;
    a3 = v16;
    a2 = v32;
    if ((v23 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v26 = v13;
LABEL_12:
  outlined init with copy of TabItem?(a1 + 48, &v33);
  if (*(&v34 + 1))
  {
    v40[4] = v37;
    v40[5] = v38;
    v40[6] = v39;
    v40[0] = v33;
    v40[1] = v34;
    v40[2] = v35;
    v40[3] = v36;
    specialized UIHostingController.updateProperties(on:using:customization:environment:coordinator:)(v15, v40, a2, a3, a4);
    outlined destroy of TabItem(v40);
  }

  else
  {
    _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(&v33, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
  }

  v27 = TabItemGroup.sidebarReorderable.getter();
  if (v27 != [v15 _allowsReordering])
  {
    [v15 _setAllowsReordering_];
  }

  specialized UIHostingController.updateChildrenCreatingIfNeeded(of:using:customization:environment:coordinator:)(v15, a1, a2, a3, a4, a5);
  v28 = [v15 _selectedElement];
  if (v28)
  {
  }

  else
  {
    v29 = [v15 _children];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _UITab);
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *&v33 = v30;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _UITabElement);
    type metadata accessor for [_UITab]();
    lazy protocol witness table accessor for type [_UITab] and conformance [A]();
    Sequence.first<A>(ofType:)();

    v31 = *&v40[0];
    [v15 _setSelectedElement_];
  }
}

uint64_t specialized UIHostingController.updateChildrenCreatingIfNeeded(of:using:customization:environment:coordinator:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v319 = a5;
  v333 = a6;
  v318 = a4;
  v322 = a3;
  v316 = a1;
  type metadata accessor for TabViewCustomization?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v305 = v302 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = type metadata accessor for TabViewCustomization();
  v304 = *(v307 - 8);
  MEMORY[0x1EEE9AC00](v307);
  v309 = v302 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v303 = v302 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v308 = v302 - v14;
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v336 = v302 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v342 = v302 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v306 = v302 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v302 - v22;
  static Log.tabView.getter();
  v24 = type metadata accessor for Logger();
  v313 = *(v24 - 8);
  v25 = *(v313 + 48);
  v346 = v24;
  v343 = v25;
  v344 = v313 + 48;
  v26 = (v25)(v23, 1);
  v27 = MEMORY[0x1E69E7CC0];
  v337 = a2;
  if (v26 == 1)
  {
    _s2os6LoggerVSgWOhTm_0(v23, type metadata accessor for Logger?);
  }

  else
  {
    outlined init with copy of TabItemGroup(a2, v365);
    outlined init with copy of TabItemGroup(a2, &v367);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      LODWORD(v347) = v29;
      v30 = swift_slowAlloc();
      v345 = swift_slowAlloc();
      *&v374 = v345;
      *v30 = 136315394;
      v31 = *&v365[24];
      v32 = *&v365[32];
      outlined copy of TabCustomizationID.Base();
      outlined destroy of TabItemGroup(v365);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v374);
      outlined consume of TabCustomizationID.Base();
      *(v30 + 2) = v33;
      v348 = v30;
      v30[6] = 2080;
      v34 = TabItemGroup.allChildEntries.getter();
      v6 = *(v34 + 16);
      if (v6)
      {
        v340 = v28;
        v341 = v23;
        *&v372 = v27;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
        v35 = v372;
        v339 = v34;
        v36 = v34 + 32;
        do
        {
          outlined init with copy of TabEntry(v36, v363);
          outlined init with copy of TabEntry(v363, v380);
          if (BYTE8(v380[17]))
          {
            memcpy(v364, v380, 0x118uLL);
            v37 = *(&v364[1] + 1);
            v38 = *&v364[2];
            outlined copy of TabCustomizationID.Base();
            outlined destroy of TabItemGroup(v364);
          }

          else
          {
            v364[4] = v380[4];
            v364[5] = v380[5];
            v364[6] = v380[6];
            v364[0] = v380[0];
            v364[1] = v380[1];
            v364[3] = v380[3];
            v364[2] = v380[2];
            v37 = TabItem.platformIdentifier.getter();
            v38 = v39;
            outlined destroy of TabItem(v364);
          }

          outlined destroy of TabEntry(v363);
          *&v372 = v35;
          v41 = *(v35 + 16);
          v40 = *(v35 + 24);
          if (v41 >= v40 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
            v35 = v372;
          }

          *(v35 + 16) = v41 + 1;
          v42 = v35 + 16 * v41;
          *(v42 + 32) = v37;
          *(v42 + 40) = v38;
          v36 += 288;
          --v6;
        }

        while (v6);

        v28 = v340;
        v23 = v341;
      }

      else
      {

        v35 = MEMORY[0x1E69E7CC0];
      }

      v363[0] = v35;
      v43 = MEMORY[0x1E69E6158];
      type metadata accessor for TabItem?(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type [AnyHashable] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &lazy cache variable for type metadata for [String], v43);
      v44 = BidirectionalCollection<>.joined(separator:)();
      v46 = v45;

      outlined destroy of TabItemGroup(&v367);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v374);

      v48 = v348;
      *(v348 + 14) = v47;
      _os_log_impl(&dword_18BD4A000, v28, v347, "Resolved children of group %s:\n%s", v48, 0x16u);
      v49 = v345;
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v49, -1, -1);
      MEMORY[0x18D0110E0](v48, -1, -1);
    }

    else
    {

      outlined destroy of TabItemGroup(&v367);
      outlined destroy of TabItemGroup(v365);
    }

    (*(v313 + 8))(v23, v346);
  }

  v50 = [v316 _children];
  v321 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _UITab);
  v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v51 >> 62)
  {
    v52 = __CocoaSet.count.getter();
    if (v52)
    {
      goto LABEL_19;
    }

LABEL_29:

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v52)
  {
    goto LABEL_29;
  }

LABEL_19:
  v363[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52 & ~(v52 >> 63), 0);
  if (v52 < 0)
  {
    __break(1u);
LABEL_356:
    __break(1u);
LABEL_357:

    v363[0] = 0xD000000000000021;
    v363[1] = 0x800000018CD52B70;
    *&v380[0] = v6;
    v300 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v300);

    while (1)
    {
LABEL_359:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v53 = 0;
  v6 = v363[0];
  v54 = v51;
  v348 = v51 & 0xC000000000000001;
  v55 = v51;
  do
  {
    if (v348)
    {
      v56 = MEMORY[0x18D00E9C0](v53, v54);
    }

    else
    {
      v56 = *(v54 + 8 * v53 + 32);
    }

    v57 = v56;
    v58 = [v57 identifier];
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    v62 = v6;
    v363[0] = v6;
    v64 = *(v6 + 16);
    v63 = *(v6 + 24);
    if (v64 >= v63 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1);
      v62 = v363[0];
    }

    ++v53;
    *(v62 + 16) = v64 + 1;
    v6 = v62;
    v65 = v62 + 16 * v64;
    *(v65 + 32) = v59;
    *(v65 + 40) = v61;
    v54 = v55;
  }

  while (v52 != v53);

LABEL_30:
  v66 = TabItemGroup.allChildEntries.getter();
  v67 = *(v66 + 16);
  v341 = v6;
  if (v67)
  {
    *&v367 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67, 0);
    v68 = v367;
    v69 = v66 + 32;
    do
    {
      outlined init with copy of TabEntry(v69, v363);
      outlined init with copy of TabEntry(v363, v380);
      if (BYTE8(v380[17]))
      {
        memcpy(v365, v380, sizeof(v365));
        v70 = *&v365[24];
        v71 = *&v365[32];
        outlined copy of TabCustomizationID.Base();
        outlined destroy of TabItemGroup(v365);
      }

      else
      {
        *&v365[64] = v380[4];
        *&v365[80] = v380[5];
        *&v365[96] = v380[6];
        *v365 = v380[0];
        *&v365[16] = v380[1];
        *&v365[48] = v380[3];
        *&v365[32] = v380[2];
        v70 = TabItem.platformIdentifier.getter();
        v71 = v72;
        outlined destroy of TabItem(v365);
      }

      outlined destroy of TabEntry(v363);
      v73 = v68;
      *&v367 = v68;
      v75 = *(v68 + 16);
      v74 = *(v68 + 24);
      if (v75 >= v74 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1);
        v73 = v367;
      }

      *(v73 + 16) = v75 + 1;
      v68 = v73;
      v76 = v73 + 16 * v75;
      *(v76 + 32) = v70;
      *(v76 + 40) = v71;
      v69 += 288;
      --v67;
    }

    while (v67);

    v6 = v341;
  }

  else
  {

    v68 = MEMORY[0x1E69E7CC0];
  }

  *&v380[0] = v6;
  v311 = v68;
  *v365 = v68;
  v363[0] = MEMORY[0x1E69E7CC0];
  type metadata accessor for CollectionChanges<Int, Int>();
  v77 = MEMORY[0x1E69E6158];
  type metadata accessor for TabItem?(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v79 = v78;
  v302[0] = lazy protocol witness table accessor for type [AnyHashable] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &lazy cache variable for type metadata for [String], v77);
  CollectionChanges.formChanges<A, B>(from:to:)();
  v324 = v363[0];
  v80 = [v316 _children];
  v314 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v81 = v337;
  v82 = *(TabItemGroup.allChildEntries.getter() + 16);

  v338 = _sSa9repeating5countSayxGx_SitcfCSo6_UITabCSg_Tt1g5Tf4gn_n(0, v82);
  v83 = *(v81 + 24);
  v84 = *(v81 + 32);
  LODWORD(v68) = *(v81 + 40);
  v85 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_groupHostCache;
  v86 = v333;
  swift_beginAccess();
  v310 = v85;
  v87 = *(v86 + v85);
  v88 = *(v87 + 16);
  outlined copy of TabCustomizationID.Base();
  v317 = v84;
  v302[1] = v79;
  v312 = v83;
  if (v88)
  {
    outlined copy of TabCustomizationID.Base();
    v89 = specialized __RawDictionaryStorage.find<A>(_:)(v83, v84);
    v91 = v90;
    outlined consume of TabCustomizationID.Base();
    if (v91)
    {
      v92 = (*(v87 + 56) + 32 * v89);
      v94 = *v92;
      v93 = v92[1];
      v88 = v92[2];
      v95 = v92[3];

      goto LABEL_46;
    }

    v94 = 0;
    v93 = 0;
    v88 = 0;
  }

  else
  {
    v94 = 0;
    v93 = 0;
  }

  v95 = 0;
LABEL_46:
  v376 = v94;
  v377 = v93;
  v378 = v88;
  v379 = v95;
  swift_endAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_221;
  }

  while (1)
  {
    v97 = *(v324 + 16);
    v315 = v68;
    if (!v97)
    {
      break;
    }

    v98 = 0;
    v323 = v324 + 32;
    v330 = v314 & 0xC000000000000001;
    v328 = v314 + 32;
    v329 = v314 & 0xFFFFFFFFFFFFFF8;
    v334 = (v313 + 8);
    v335 = v338 + 32;
    v339 = v6 + 32;
    *&v96 = 136315138;
    v325 = v96;
    *&v96 = 134218498;
    v320 = v96;
    while (1)
    {
      if (v98 >= v97)
      {
        goto LABEL_214;
      }

      v99 = v323 + 40 * v98;
      v100 = *v99;
      v101 = *(v99 + 8);
      v102 = *(v99 + 32);
      v347 = v101;
      v348 = v100;
      v331 = v98;
      if (!v102)
      {
        break;
      }

      if (v102 == 1)
      {
        if (v100 != v101)
        {
          v6 = v348;
          if (v101 < v348)
          {
            goto LABEL_219;
          }

          v103 = *(v337 + 16);
          v340 = *(v337 + 8);
          v104 = *(v103 + 16);
          v332 = v103 + 32;
          v345 = v104;
          while (2)
          {
            if (v6 >= v101)
            {
              goto LABEL_202;
            }

            if (v104)
            {
              *v365 = MEMORY[0x1E69E7CC0];
              specialized ContiguousArray.reserveCapacity(_:)(v104);
              v105 = *v365;
              v106 = v332;
              do
              {
                outlined init with copy of TabItem(v106, v380);
                BYTE8(v380[17]) = 0;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v105 + 16) + 1, 1);
                  v105 = *v365;
                }

                v108 = *(v105 + 16);
                v107 = *(v105 + 24);
                v68 = v108 + 1;
                if (v108 >= v107 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v107 > 1), v108 + 1, 1);
                  v105 = *v365;
                }

                *(v105 + 16) = v68;
                memcpy((v105 + 288 * v108 + 32), v380, 0x119uLL);
                v106 += 112;
                --v104;
              }

              while (v104);
              v104 = v345;
            }

            else
            {
              v105 = MEMORY[0x1E69E7CC0];
            }

            *&v380[0] = v340;

            specialized Array.append<A>(contentsOf:)(v105);
            if (v348 < 0 || v6 >= *(*&v380[0] + 16))
            {
              goto LABEL_357;
            }

            outlined init with copy of TabEntry(*&v380[0] + 288 * v6 + 32, v363);

            outlined init with copy of TabEntry(v363, v380);
            if (BYTE8(v380[17]))
            {
              memcpy(v365, v380, sizeof(v365));
              outlined init with copy of TabItem?(&v365[48], &v367);
              if (!*(&v368[0] + 1))
              {
                outlined destroy of TabItemGroup(v365);
                _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(&v367, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
                goto LABEL_81;
              }

              *&v360 = v369;
              v109 = one-time initialization token for defaultValue;

              if (v109 != -1)
              {
                swift_once();
              }

              v372 = static TabOptions.TraitKey.defaultValue;
              v373[0] = unk_1EAB09380;
              *(v373 + 9) = *(&word_1EAB09388 + 1);
              v364[0] = static TabOptions.TraitKey.defaultValue;
              v364[1] = unk_1EAB09380;
              *(&v364[1] + 9) = *(&word_1EAB09388 + 1);
              outlined init with copy of TabOptions(&v372, &v374);
              ViewTraitCollection.value<A>(for:defaultValue:)();
              v374 = v364[0];
              v375[0] = v364[1];
              *(v375 + 9) = *(&v364[1] + 9);
              outlined destroy of TabOptions(&v374);
              outlined destroy of TabItemGroup(v365);

              v364[0] = v370;
              v364[1] = v371[0];
              *(&v364[1] + 9) = *(v371 + 9);
              outlined destroy of TabOptions(v364);
              v110 = BYTE1(v364[0]);
              outlined destroy of TabItem(&v367);
              v104 = v345;
              if ((v110 & 1) == 0)
              {
LABEL_81:
                v112 = v336;
                static Log.tabView.getter();
                if (v343(v112, 1, v346) == 1)
                {
                  _s2os6LoggerVSgWOhTm_0(v112, type metadata accessor for Logger?);
                }

                else
                {
                  outlined init with copy of TabItemGroup(v337, &v367);
                  outlined init with copy of TabEntry(v363, v380);
                  v113 = Logger.logObject.getter();
                  v114 = static os_log_type_t.default.getter();
                  if (os_log_type_enabled(v113, v114))
                  {
                    v327 = v114;
                    v115 = swift_slowAlloc();
                    v326 = swift_slowAlloc();
                    *&v374 = v326;
                    *v115 = v320;
                    *(v115 + 4) = v6;
                    *(v115 + 12) = 2080;
                    v116 = *(&v368[0] + 1);
                    v117 = *&v368[1];
                    outlined copy of TabCustomizationID.Base();
                    outlined destroy of TabItemGroup(&v367);
                    v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, &v374);
                    outlined consume of TabCustomizationID.Base();
                    *(v115 + 14) = v118;
                    *(v115 + 22) = 2080;
                    outlined init with copy of TabEntry(v380, v365);
                    if (v366)
                    {
                      memcpy(v364, v365, 0x118uLL);
                      v68 = *(&v364[1] + 1);
                      v119 = *&v364[2];
                      outlined copy of TabCustomizationID.Base();
                      outlined destroy of TabItemGroup(v364);
                    }

                    else
                    {
                      v364[4] = *&v365[64];
                      v364[5] = *&v365[80];
                      v364[6] = *&v365[96];
                      v364[0] = *v365;
                      v364[1] = *&v365[16];
                      v364[3] = *&v365[48];
                      v364[2] = *&v365[32];
                      v68 = TabItem.platformIdentifier.getter();
                      v119 = v120;
                      outlined destroy of TabItem(v364);
                    }

                    v121 = v327;
                    outlined destroy of TabEntry(v380);
                    v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v119, &v374);

                    *(v115 + 24) = v122;
                    _os_log_impl(&dword_18BD4A000, v113, v121, "Inserting UITab child @ idx %ld into group\n%s; id %s", v115, 0x20u);
                    v123 = v326;
                    swift_arrayDestroy();
                    MEMORY[0x18D0110E0](v123, -1, -1);
                    MEMORY[0x18D0110E0](v115, -1, -1);

                    v104 = v345;
                  }

                  else
                  {

                    outlined destroy of TabEntry(v380);
                    outlined destroy of TabItemGroup(&v367);
                  }

                  (*v334)(v336, v346);
                }

                v124 = specialized UIHostingController.createBridgedTab(using:coordinator:)(v363, v333);
                outlined destroy of TabEntry(v363);
                if (v6 >= *(v338 + 16))
                {
                  goto LABEL_206;
                }

                v125 = *(v335 + 8 * v6);
                *(v335 + 8 * v6) = v124;

                goto LABEL_57;
              }
            }

            else
            {
              *&v365[96] = v380[6];
              *&v365[64] = v380[4];
              *&v365[80] = v380[5];
              *v365 = v380[0];
              *&v365[16] = v380[1];
              *&v365[48] = v380[3];
              *&v365[32] = v380[2];
              *&v370 = *&v380[6];
              v111 = one-time initialization token for defaultValue;

              if (v111 != -1)
              {
                swift_once();
              }

              v374 = static TabOptions.TraitKey.defaultValue;
              v375[0] = unk_1EAB09380;
              *(v375 + 9) = *(&word_1EAB09388 + 1);
              v367 = static TabOptions.TraitKey.defaultValue;
              v368[0] = unk_1EAB09380;
              *(v368 + 9) = *(&word_1EAB09388 + 1);
              outlined init with copy of TabOptions(&v374, v364);
              ViewTraitCollection.value<A>(for:defaultValue:)();
              v364[0] = v367;
              v364[1] = v368[0];
              *(&v364[1] + 9) = *(v368 + 9);
              outlined destroy of TabOptions(v364);
              outlined destroy of TabItem(v365);

              v367 = v372;
              v368[0] = v373[0];
              *(v368 + 9) = *(v373 + 9);
              outlined destroy of TabOptions(&v367);
              v104 = v345;
              if (BYTE1(v367) != 1)
              {
                goto LABEL_81;
              }
            }

            outlined destroy of TabEntry(v363);
LABEL_57:
            ++v6;
            v101 = v347;
            if (v6 == v347)
            {
              break;
            }

            continue;
          }
        }
      }

      else
      {
        v6 = *(v99 + 16);
        v150 = *(v99 + 24);
        if (v100 != v101)
        {
          if (v101 < v348)
          {
            goto LABEL_218;
          }

          if (v6 <= v150)
          {
            v151 = *(v99 + 24);
          }

          else
          {
            v151 = *(v99 + 16);
          }

          v345 = v151;
          v152 = v6;
          v340 = v6;
          v332 = v150;
          while (2)
          {
            if (v348 == v101)
            {
              goto LABEL_207;
            }

            if (v152 == v150)
            {
              goto LABEL_49;
            }

            if (v150 < v6)
            {
              goto LABEL_208;
            }

            if (v152 == v345)
            {
              goto LABEL_209;
            }

            v153 = *(v337 + 8);
            v154 = *(v337 + 16);
            v155 = *(v154 + 16);
            if (v155)
            {
              *v365 = MEMORY[0x1E69E7CC0];
              specialized ContiguousArray.reserveCapacity(_:)(v155);
              v156 = v154 + 32;
              v157 = *v365;
              do
              {
                outlined init with copy of TabItem(v156, v380);
                BYTE8(v380[17]) = 0;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v157 + 16) + 1, 1);
                  v157 = *v365;
                }

                v159 = *(v157 + 16);
                v158 = *(v157 + 24);
                if (v159 >= v158 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v158 > 1), v159 + 1, 1);
                  v157 = *v365;
                }

                *(v157 + 16) = v159 + 1;
                memcpy((v157 + 288 * v159 + 32), v380, 0x119uLL);
                v156 += 112;
                --v155;
              }

              while (v155);
            }

            else
            {
              v157 = MEMORY[0x1E69E7CC0];
            }

            *&v380[0] = v153;

            specialized Array.append<A>(contentsOf:)(v157);
            v6 = v340;
            if (v340 < 0 || (v68 = v348, v152 >= *(*&v380[0] + 16)))
            {

              v363[0] = 0xD000000000000021;
              v363[1] = 0x800000018CD52B70;
              *&v380[0] = v152;
              v301 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x18D00C9B0](v301);

              goto LABEL_359;
            }

            outlined init with copy of TabEntry(*&v380[0] + 288 * v152 + 32, v363);

            outlined init with copy of TabEntry(v363, v380);
            if (BYTE8(v380[17]))
            {
              memcpy(v365, v380, sizeof(v365));
              outlined init with copy of TabItem?(&v365[48], &v367);
              if (*(&v368[0] + 1))
              {
                *&v360 = v369;
                v160 = one-time initialization token for defaultValue;

                if (v160 != -1)
                {
                  swift_once();
                }

                v372 = static TabOptions.TraitKey.defaultValue;
                v373[0] = unk_1EAB09380;
                *(v373 + 9) = *(&word_1EAB09388 + 1);
                v364[0] = static TabOptions.TraitKey.defaultValue;
                v364[1] = unk_1EAB09380;
                *(&v364[1] + 9) = *(&word_1EAB09388 + 1);
                outlined init with copy of TabOptions(&v372, &v374);
                ViewTraitCollection.value<A>(for:defaultValue:)();
                v374 = v364[0];
                v375[0] = v364[1];
                *(v375 + 9) = *(&v364[1] + 9);
                outlined destroy of TabOptions(&v374);
                outlined destroy of TabItemGroup(v365);

                v364[0] = v370;
                v364[1] = v371[0];
                *(&v364[1] + 9) = *(v371 + 9);
                outlined destroy of TabOptions(v364);
                v161 = BYTE1(v364[0]);
                outlined destroy of TabItem(&v367);
                if ((v161 & 1) == 0)
                {
                  goto LABEL_173;
                }

LABEL_147:
                outlined destroy of TabEntry(v363);
LABEL_148:
                ++v68;
                ++v152;
                v348 = v68;
                v101 = v347;
                v150 = v332;
                if (v68 == v347)
                {
                  goto LABEL_49;
                }

                continue;
              }

              outlined destroy of TabItemGroup(v365);
              _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(&v367, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
              if (v330)
              {
LABEL_180:
                v163 = MEMORY[0x18D00E9C0](v68, v314);
LABEL_177:
                v164 = v163;
                outlined destroy of TabEntry(v363);
                if (v152 >= *(v338 + 16))
                {
                  goto LABEL_212;
                }

                v165 = *(v335 + 8 * v152);
                *(v335 + 8 * v152) = v164;

                goto LABEL_148;
              }
            }

            else
            {
              *&v365[96] = v380[6];
              *&v365[64] = v380[4];
              *&v365[80] = v380[5];
              *v365 = v380[0];
              *&v365[16] = v380[1];
              *&v365[48] = v380[3];
              *&v365[32] = v380[2];
              *&v370 = *&v380[6];
              v162 = one-time initialization token for defaultValue;

              if (v162 != -1)
              {
                swift_once();
              }

              v374 = static TabOptions.TraitKey.defaultValue;
              v375[0] = unk_1EAB09380;
              *(v375 + 9) = *(&word_1EAB09388 + 1);
              v367 = static TabOptions.TraitKey.defaultValue;
              v368[0] = unk_1EAB09380;
              *(v368 + 9) = *(&word_1EAB09388 + 1);
              outlined init with copy of TabOptions(&v374, v364);
              ViewTraitCollection.value<A>(for:defaultValue:)();
              v364[0] = v367;
              v364[1] = v368[0];
              *(&v364[1] + 9) = *(v368 + 9);
              outlined destroy of TabOptions(v364);
              outlined destroy of TabItem(v365);

              v367 = v372;
              v368[0] = v373[0];
              *(v368 + 9) = *(v373 + 9);
              outlined destroy of TabOptions(&v367);
              if (BYTE1(v367) == 1)
              {
                goto LABEL_147;
              }

LABEL_173:
              if (v330)
              {
                goto LABEL_180;
              }
            }

            break;
          }

          if ((v68 & 0x8000000000000000) != 0)
          {
            goto LABEL_211;
          }

          if (v68 >= *(v329 + 16))
          {
            goto LABEL_213;
          }

          v163 = *(v328 + 8 * v68);
          goto LABEL_177;
        }
      }

LABEL_49:
      v98 = v331 + 1;
      v97 = *(v324 + 16);
      v6 = v341;
      if (v331 + 1 == v97)
      {
        goto LABEL_181;
      }
    }

    if (v100 == v101)
    {
      goto LABEL_49;
    }

    v126 = v348;
    if (v101 < v348)
    {
      goto LABEL_220;
    }

    while (2)
    {
      if (v126 >= v101)
      {
        goto LABEL_203;
      }

      if ((v348 & 0x8000000000000000) == 0)
      {
        if (v126 >= *(v341 + 2))
        {
          goto LABEL_205;
        }

        v127 = (v339 + 16 * v126);
        v128 = *v127;
        v6 = v127[1];

        v129 = v342;
        static Log.tabView.getter();
        if (v343(v129, 1, v346) == 1)
        {
          _s2os6LoggerVSgWOhTm_0(v129, type metadata accessor for Logger?);
          v130 = v378;
          if (!v378)
          {
            goto LABEL_95;
          }

LABEL_106:
          v134 = v377;
          v135 = *(v130 + 16);
          if (v377)
          {

            v136 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v128, v6, v130 + 32, v135, (v134 + 16));
            v138 = v137;
            v140 = v139;

            if (v138)
            {
              goto LABEL_96;
            }

            v141 = *(v130 + 16);
            swift_beginAccess();
            if ((*(v134 + 16) & 0x3FLL) == (*(v134 + 24) & 0x3FLL))
            {
              v68 = &v376;
              if (!v141)
              {
LABEL_130:
                specialized ContiguousArray.remove(at:)(v136);

                if (v134)
                {
                  swift_beginAccess();
                  v144 = *(v134 + 24) & 0x3FLL;
                }

                else
                {
                  v144 = 0;
                }

                v145 = v378;
                v146 = *(v378 + 16);
                if (v144 || v146 >= 0x10)
                {
                  v147 = MEMORY[0x18D000DA0](v146);
                  if (v144 <= v147)
                  {
                    v148 = v147;
                  }

                  else
                  {
                    v148 = v144;
                  }

                  v149 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySSG_Tt2g5(v145, v148, 0, v144);

                  v377 = v149;
                }

                else
                {

                  v377 = 0;
                }

LABEL_140:

LABEL_96:
                ++v126;
                v101 = v347;
                if (v126 == v347)
                {
                  goto LABEL_49;
                }

                continue;
              }
            }

            else
            {
              v68 = &v376;
              if (v141 <= MEMORY[0x18D000D80]())
              {
                goto LABEL_130;
              }
            }

            if ((swift_isUniquelyReferenced_native() & 1) == 0)
            {
              v143 = _HashTable.copy()();

              v377 = v143;
              v134 = v143;
              if (!v143)
              {
                goto LABEL_356;
              }
            }

            specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(v140, (v134 + 16), v134 + 32, &v377);
            if (__OFADD__(v136, 1))
            {
              goto LABEL_216;
            }

            if (v136 + 1 < v136)
            {
              goto LABEL_217;
            }

            specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(v136, v136 + 1, v130, (v134 + 16));
          }

          else
          {
            if (!v135)
            {
              goto LABEL_95;
            }

            v136 = 0;
            v68 = v130 + 40;
            while (1)
            {
              v142 = *(v68 - 8) == v128 && *v68 == v6;
              if (v142 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              ++v136;
              v68 += 16;
              if (v135 == v136)
              {
                goto LABEL_95;
              }
            }

            if (!*(v130 + 16))
            {
              v68 = &v376;
              goto LABEL_130;
            }

            v68 = &v376;
          }

          specialized ContiguousArray.remove(at:)(v136);

          goto LABEL_140;
        }

        v131 = Logger.logObject.getter();
        v132 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v363[0] = v68;
          *v133 = v325;
          *(v133 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v6, v363);
          _os_log_impl(&dword_18BD4A000, v131, v132, "Removing VC for cached child '%s'", v133, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v68);
          MEMORY[0x18D0110E0](v68, -1, -1);
          MEMORY[0x18D0110E0](v133, -1, -1);
        }

        (*v334)(v342, v346);
        v130 = v378;
        if (v378)
        {
          goto LABEL_106;
        }

LABEL_95:

        goto LABEL_96;
      }

      break;
    }

LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    v338 = specialized _ArrayBuffer._consumeAndCreateNew()();
  }

LABEL_181:

  v166 = 0;
  v167 = MEMORY[0x1E69E7CC0];
  v363[0] = MEMORY[0x1E69E7CC0];
  v168 = v338;
  v169 = *(v338 + 16);
  v170 = v316;
  while (v169 != v166)
  {
    if (v166 >= *(v168 + 16))
    {
      goto LABEL_210;
    }

    v171 = *(v168 + 8 * v166++ + 32);
    if (v171)
    {
      v172 = v171;
      MEMORY[0x18D00CC30]();
      if (*((v363[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v363[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v167 = v363[0];
      v170 = v316;
      v168 = v338;
    }
  }

  v348 = [v170 _selectedElement];
  v173 = v167;
  if (v167 >> 62)
  {
    v174 = __CocoaSet.count.getter();
    v175 = v317;
    if (v174)
    {
      goto LABEL_190;
    }
  }

  else
  {
    v174 = *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v175 = v317;
    if (v174)
    {
LABEL_190:
      v176 = 0;
      v68 = v167 & 0xC000000000000001;
      v6 = v167 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v68)
        {
          v177 = MEMORY[0x18D00E9C0](v176, v173);
          v178 = v176 + 1;
          if (__OFADD__(v176, 1))
          {
            goto LABEL_201;
          }
        }

        else
        {
          if (v176 >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_215;
          }

          v177 = *(v173 + 8 * v176 + 32);
          v178 = v176 + 1;
          if (__OFADD__(v176, 1))
          {
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
            goto LABEL_204;
          }
        }

        v179 = v348;
        if (v348)
        {
          v180 = v177;
          v181 = v179;
          v182 = static NSObject.== infix(_:_:)();

          v175 = v317;
          if (v182)
          {
            goto LABEL_225;
          }
        }

        else
        {
        }

        ++v176;
      }

      while (v178 != v174);
    }
  }

  if (v348)
  {
    *&v380[0] = v173;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _UITabElement);
    type metadata accessor for [_UITab]();
    lazy protocol witness table accessor for type [_UITab] and conformance [A]();

    v175 = v317;
    Sequence.first<A>(ofType:)();
    v183 = v363[0];
    [v316 _setSelectedElement_];
  }

LABEL_225:
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v316 _setChildren_];

  v185 = v376;
  v186 = v377;
  v187 = v378;
  v188 = v379;
  swift_beginAccess();
  outlined copy of TabItemGroup.HostCache?(v185, v186, v187);
  v340 = v186;
  v341 = v185;
  v339 = v187;
  v336 = v188;
  specialized Dictionary.subscript.setter(v185, v186, v187, v188, v312, v175);
  swift_endAccess();
  v189 = TabItemGroup.allChildEntries.getter();
  v190 = v189;
  v191 = *(v189 + 16);
  if (v191)
  {
    v192 = 0;
    v193 = v189 + 32;
    v194 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v192 >= v190[2])
      {
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
LABEL_353:
        v283 = __CocoaSet.count.getter();
        if (!v283)
        {
          goto LABEL_348;
        }

LABEL_327:
        v284 = 0;
        v285 = v193 & 0xC000000000000001;
        v346 = v193 & 0xC000000000000001;
        v347 = v193 & 0xFFFFFFFFFFFFFF8;
        v286 = (v194 + 32);
        v342 = v194;
        v345 = v283;
        while (1)
        {
          if (v285)
          {
            v287 = MEMORY[0x18D00E9C0](v284, v193);
          }

          else
          {
            if (v284 >= *(v347 + 16))
            {
              goto LABEL_350;
            }

            v287 = *(v193 + 8 * v284 + 32);
          }

          v288 = v287;
          v289 = *(v194 + 2);
          if (v284 == v289)
          {
            break;
          }

          if (v284 >= v289)
          {
            goto LABEL_351;
          }

          outlined init with copy of TabEntry(v286, &v363[1]);
          outlined init with copy of TabEntry(&v363[1], v380);
          if (BYTE8(v380[17]))
          {
            memcpy(v365, v380, sizeof(v365));
            objc_opt_self();
            v290 = swift_dynamicCastObjCClass();
            if (!v290)
            {
              goto LABEL_359;
            }

            v291 = v290;
            outlined init with copy of TabItem?(&v365[48], v364);
            if (*(&v364[1] + 1))
            {
              v368[3] = v364[4];
              v368[4] = v364[5];
              v369 = v364[6];
              v367 = v364[0];
              v368[0] = v364[1];
              v368[2] = v364[3];
              v368[1] = v364[2];
              v292 = v288;
              specialized UIHostingController.updateProperties(on:using:customization:environment:coordinator:)(v291, &v367, v322, v318, v319);
              outlined destroy of TabItem(&v367);
            }

            else
            {
              v293 = v288;
              _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(v364, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
            }

            v294 = TabItemGroup.sidebarReorderable.getter();
            if (v294 != [v291 _allowsReordering])
            {
              [v291 _setAllowsReordering_];
            }

            specialized UIHostingController.updateChildrenCreatingIfNeeded(of:using:customization:environment:coordinator:)(v291, v365, v322, v318, v319, v333);
            v295 = [v291 v190[227]];
            if (v295)
            {
              v296 = v295;
            }

            else
            {
              v297 = [v291 _children];
              v298 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              *&v364[0] = v298;
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _UITabElement);
              type metadata accessor for [_UITab]();
              lazy protocol witness table accessor for type [_UITab] and conformance [A]();
              v190 = &selRef_setConfiguration_;
              v194 = v342;
              Sequence.first<A>(ofType:)();
              v283 = v345;

              v296 = v367;
              [v291 _setSelectedElement_];
            }

            outlined destroy of TabItemGroup(v365);
            v285 = v346;
          }

          else
          {
            *&v365[64] = v380[4];
            *&v365[80] = v380[5];
            *&v365[96] = v380[6];
            *v365 = v380[0];
            *&v365[16] = v380[1];
            *&v365[48] = v380[3];
            *&v365[32] = v380[2];
            specialized UIHostingController.updateProperties(on:using:customization:environment:coordinator:)(v288, v365, v322, v318, v319);

            outlined destroy of TabItem(v365);
          }

          ++v284;
          outlined destroy of TabEntry(&v363[1]);
          v286 += 288;
          if (v283 == v284)
          {
            goto LABEL_348;
          }
        }

        goto LABEL_348;
      }

      outlined init with copy of TabEntry(v193, v363);
      outlined init with copy of TabEntry(v363, v380);
      if (BYTE8(v380[17]))
      {
        memcpy(v365, v380, sizeof(v365));
        outlined init with copy of TabItem?(&v365[48], &v367);
        if (!*(&v368[0] + 1))
        {
          outlined destroy of TabItemGroup(v365);
          _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(&v367, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
LABEL_241:
          memcpy(v380, v363, 0x119uLL);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v360 = v194;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v194 + 2) + 1, 1);
            v194 = v360;
          }

          v200 = *(v194 + 2);
          v199 = *(v194 + 3);
          if (v200 >= v199 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v199 > 1), v200 + 1, 1);
            v194 = v360;
          }

          *(v194 + 2) = v200 + 1;
          memcpy(&v194[288 * v200 + 32], v380, 0x119uLL);
          goto LABEL_228;
        }

        *&v358 = v369;
        v195 = one-time initialization token for defaultValue;

        if (v195 != -1)
        {
          swift_once();
        }

        v372 = static TabOptions.TraitKey.defaultValue;
        v373[0] = unk_1EAB09380;
        *(v373 + 9) = *(&word_1EAB09388 + 1);
        v364[0] = static TabOptions.TraitKey.defaultValue;
        v364[1] = unk_1EAB09380;
        *(&v364[1] + 9) = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v372, &v374);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v374 = v364[0];
        v375[0] = v364[1];
        *(v375 + 9) = *(&v364[1] + 9);
        outlined destroy of TabOptions(&v374);
        outlined destroy of TabItemGroup(v365);

        v364[0] = v370;
        v364[1] = v371[0];
        *(&v364[1] + 9) = *(v371 + 9);
        outlined destroy of TabOptions(v364);
        v196 = BYTE1(v364[0]);
        outlined destroy of TabItem(&v367);
        if ((v196 & 1) == 0)
        {
          goto LABEL_241;
        }
      }

      else
      {
        *&v365[96] = v380[6];
        *&v365[64] = v380[4];
        *&v365[80] = v380[5];
        *v365 = v380[0];
        *&v365[16] = v380[1];
        *&v365[48] = v380[3];
        *&v365[32] = v380[2];
        *&v370 = *&v380[6];
        v197 = one-time initialization token for defaultValue;

        if (v197 != -1)
        {
          swift_once();
        }

        v374 = static TabOptions.TraitKey.defaultValue;
        v375[0] = unk_1EAB09380;
        *(v375 + 9) = *(&word_1EAB09388 + 1);
        v367 = static TabOptions.TraitKey.defaultValue;
        v368[0] = unk_1EAB09380;
        *(v368 + 9) = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v374, v364);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v364[0] = v367;
        v364[1] = v368[0];
        *(&v364[1] + 9) = *(v368 + 9);
        outlined destroy of TabOptions(v364);
        outlined destroy of TabItem(v365);

        v367 = v372;
        v368[0] = v373[0];
        *(v368 + 9) = *(v373 + 9);
        outlined destroy of TabOptions(&v367);
        if (BYTE1(v367) != 1)
        {
          goto LABEL_241;
        }
      }

      outlined destroy of TabEntry(v363);
LABEL_228:
      ++v192;
      v193 += 288;
      if (v191 == v192)
      {
        goto LABEL_247;
      }
    }
  }

  v194 = MEMORY[0x1E69E7CC0];
LABEL_247:

  v201 = [v316 identifier];
  v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v203 = v202;

  v204 = v308;
  outlined init with copy of UIKitAdaptableTabView(v322, v308, type metadata accessor for Binding<TabViewCustomization>?);
  type metadata accessor for Binding<TabViewCustomization>(0);
  v206 = v205;
  v207 = *(v205 - 8);
  v208 = *(v207 + 48);
  v209 = v207 + 48;
  if ((v208)(v204, 1, v205) == 1)
  {

    _s2os6LoggerVSgWOhTm_0(v204, type metadata accessor for Binding<TabViewCustomization>?);
    goto LABEL_268;
  }

  v210 = v309;
  MEMORY[0x18D00ACC0](v206);
  _s2os6LoggerVSgWOhTm_0(v204, type metadata accessor for Binding<TabViewCustomization>);
  v211 = *(v210 + *(v307 + 24));
  if (*(v211 + 16) && (v212 = specialized __RawDictionaryStorage.find<A>(_:)(v193, v203, 0), (v213 & 1) != 0))
  {
    v214 = *(*(v211 + 56) + 8 * v212);
  }

  else
  {
    v214 = MEMORY[0x1E69E7CC0];
  }

  v215 = TabSectionCustomizationEntry.clientOrder.getter(v214);
  _s2os6LoggerVSgWOhTm_0(v309, type metadata accessor for TabViewCustomization);

  if (!v215 || (v216 = *(v215 + 16), , !v216))
  {
LABEL_268:

    v224 = v316;
    v225 = [v316 _displayOrder];
    v226 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v227 = *(v226 + 16);

    v190 = &selRef_setConfiguration_;
    if (v227)
    {
      v228 = Array._bridgeToObjectiveC()().super.isa;
      [v224 _setDisplayOrder_];
    }

    goto LABEL_325;
  }

  v332 = v209;
  v334 = v208;
  v335 = v206;
  v217 = *(v194 + 2);
  if (v217)
  {
    v218 = 0;
    v190 = (v194 + 32);
    v345 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v218 >= *(v194 + 2))
      {
        goto LABEL_352;
      }

      outlined init with copy of TabEntry(v190, v363);
      outlined init with copy of TabEntry(v363, v380);
      if (BYTE8(v380[17]))
      {
        break;
      }

      *&v365[96] = v380[6];
      *&v365[64] = v380[4];
      *&v365[80] = v380[5];
      *v365 = v380[0];
      *&v365[16] = v380[1];
      *&v365[48] = v380[3];
      *&v365[32] = v380[2];
      *&v380[0] = *&v380[6];
      v219 = ViewTraitCollection.isAuxiliaryContent.getter();
      outlined destroy of TabItem(v365);
      if ((v219 & 1) == 0)
      {
        goto LABEL_263;
      }

      outlined destroy of TabEntry(v363);
LABEL_258:
      ++v218;
      v190 += 36;
      if (v217 == v218)
      {
        goto LABEL_271;
      }
    }

    outlined destroy of TabEntry(v380);
LABEL_263:
    memcpy(v380, v363, 0x119uLL);
    v220 = v345;
    v221 = swift_isUniquelyReferenced_nonNull_native();
    *&v367 = v220;
    if ((v221 & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v220 + 16) + 1, 1);
      v220 = v367;
    }

    v223 = *(v220 + 16);
    v222 = *(v220 + 24);
    v193 = v223 + 1;
    if (v223 >= v222 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v222 > 1), v223 + 1, 1);
      v220 = v367;
    }

    *(v220 + 16) = v193;
    v345 = v220;
    memcpy((v220 + 288 * v223 + 32), v380, 0x119uLL);
    goto LABEL_258;
  }

  v345 = MEMORY[0x1E69E7CC0];
LABEL_271:
  v229 = *(v345 + 16);
  if (v229)
  {
    v230 = v345;
    v362 = MEMORY[0x1E69E7CC0];
    v347 = v229;
    specialized ContiguousArray.reserveCapacity(_:)(v229);
    v231 = v230 + 32;
    v330 = 0xD000000000000016;
    v331 = 0x800000018CD45E10;
    while (1)
    {
      outlined init with copy of TabEntry(v231, v363);
      outlined init with copy of TabEntry(v363, v380);
      if ((BYTE8(v380[17]) & 1) == 0)
      {
        break;
      }

      outlined destroy of TabEntry(v363);
      memcpy(v365, v380, sizeof(v365));
      v232 = *&v365[24];
      v233 = *&v365[32];
      LOBYTE(v234) = v365[40];
      outlined copy of TabCustomizationID.Base();
      outlined destroy of TabItemGroup(v365);
LABEL_291:
      v239 = v362;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v239 + 16) + 1, 1);
        v239 = v362;
      }

      v241 = *(v239 + 16);
      v240 = *(v239 + 24);
      if (v241 >= v240 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v240 > 1), v241 + 1, 1);
        v239 = v362;
      }

      *(v239 + 16) = v241 + 1;
      v242 = v239 + 24 * v241;
      *(v242 + 32) = v232;
      *(v242 + 40) = v233;
      *(v242 + 48) = v234 & 1;
      v231 += 288;
      --v347;
      v243 = v315;
      if (!v347)
      {

        v244 = v337;
        goto LABEL_298;
      }
    }

    *&v365[96] = v380[6];
    *&v365[64] = v380[4];
    *&v365[80] = v380[5];
    *v365 = v380[0];
    *&v365[16] = v380[1];
    *&v365[48] = v380[3];
    *&v365[32] = v380[2];
    *&v370 = *&v380[6];
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v374 = static TabOptions.TraitKey.defaultValue;
    v375[0] = unk_1EAB09380;
    *(v375 + 9) = *(&word_1EAB09388 + 1);
    v367 = static TabOptions.TraitKey.defaultValue;
    v368[0] = unk_1EAB09380;
    *(v368 + 9) = *(&word_1EAB09388 + 1);
    outlined init with copy of TabOptions(&v374, v364);
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v364[0] = v367;
    v364[1] = v368[0];
    *(&v364[1] + 9) = *(v368 + 9);
    outlined destroy of TabOptions(v364);
    v367 = v372;
    v368[0] = v373[0];
    *(v368 + 9) = *(v373 + 9);
    outlined destroy of TabOptions(&v367);
    if (!BYTE10(v368[0]) || (*&v354 = *&v365[96], v360 = static TabOptions.TraitKey.defaultValue, v361[0] = unk_1EAB09380, *(v361 + 9) = *(&word_1EAB09388 + 1), v356 = static TabOptions.TraitKey.defaultValue, v357[0] = unk_1EAB09380, *(v357 + 9) = *(&word_1EAB09388 + 1), outlined init with copy of TabOptions(&v360, &v358), ViewTraitCollection.value<A>(for:defaultValue:)(), v370 = v356, v371[0] = v357[0], *(v371 + 9) = *(v357 + 9), outlined destroy of TabOptions(&v370), v372 = v358, v373[0] = *v359, *(v373 + 9) = *&v359[9], outlined destroy of TabOptions(&v372), !BYTE9(v373[0])) || (TabItem.alwaysRequiresCustomizationID.getter() & 1) != 0)
    {
      *&v354 = *&v365[96];
      v360 = static TabOptions.TraitKey.defaultValue;
      v361[0] = unk_1EAB09380;
      *(v361 + 9) = *(&word_1EAB09388 + 1);
      v356 = static TabOptions.TraitKey.defaultValue;
      v357[0] = unk_1EAB09380;
      *(v357 + 9) = *(&word_1EAB09388 + 1);
      outlined init with copy of TabOptions(&v360, &v358);
      ViewTraitCollection.value<A>(for:defaultValue:)();
      v370 = v356;
      v371[0] = v357[0];
      *(v371 + 9) = *(v357 + 9);
      outlined destroy of TabOptions(&v370);
      v372 = v358;
      v373[0] = *v359;
      *(v373 + 9) = *&v359[9];
      v232 = *(&v358 + 1);
      v233 = *v359;
      v234 = v359[8];
      outlined copy of TabCustomizationID?(*(&v358 + 1), *v359, v359[8]);
      outlined destroy of TabOptions(&v372);
      if (v234 != 255)
      {
        outlined destroy of TabEntry(v363);
LABEL_290:
        outlined destroy of TabItem(v365);
        goto LABEL_291;
      }
    }

    *&v372 = *&v365[104];
    v232 = dispatch thunk of CustomStringConvertible.description.getter();
    v233 = v235;
    *&v372 = *&v365[96];
    if ((ViewTraitCollection.isAuxiliaryContent.getter() & 1) == 0)
    {
      *&v352 = *&v365[96];
      v360 = static TabOptions.TraitKey.defaultValue;
      v361[0] = unk_1EAB09380;
      *(v361 + 9) = *(&word_1EAB09388 + 1);
      v356 = static TabOptions.TraitKey.defaultValue;
      v357[0] = unk_1EAB09380;
      *(v357 + 9) = *(&word_1EAB09388 + 1);
      outlined init with copy of TabOptions(&v360, &v354);
      ViewTraitCollection.value<A>(for:defaultValue:)();
      v370 = v356;
      v371[0] = v357[0];
      *(v371 + 9) = *(v357 + 9);
      outlined destroy of TabOptions(&v370);
      v372 = v358;
      v373[0] = *v359;
      *(v373 + 9) = *&v359[9];
      outlined destroy of TabOptions(&v372);
      if ((BYTE8(v373[1]) & 1) == 0)
      {

        outlined destroy of TabEntry(v363);
        v232 = v330;
        v233 = v331;
        goto LABEL_289;
      }

      if (TabItem.needsCustomizationIDForEnablement.getter())
      {
        v351 = *&v365[96];
        v354 = static TabOptions.TraitKey.defaultValue;
        v355[0] = unk_1EAB09380;
        *(v355 + 9) = *(&word_1EAB09388 + 1);
        v349 = static TabOptions.TraitKey.defaultValue;
        v350[0] = unk_1EAB09380;
        *(v350 + 9) = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v354, &v352);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v356 = v349;
        v357[0] = v350[0];
        *(v357 + 9) = *(v350 + 9);
        outlined destroy of TabOptions(&v356);
        outlined destroy of TabEntry(v363);
        v358 = v352;
        *v359 = *v353;
        *&v359[9] = *&v353[9];
        v236 = *(&v352 + 1);
        v237 = *v353;
        v238 = v353[8];
        outlined copy of TabCustomizationID?(*(&v352 + 1), *v353, v353[8]);
        outlined destroy of TabOptions(&v358);
        if (v238 != 255)
        {

          v232 = v236;
          v233 = v237;
        }

        goto LABEL_289;
      }
    }

    outlined destroy of TabEntry(v363);
LABEL_289:
    LOBYTE(v234) = 1;
    goto LABEL_290;
  }

  v239 = MEMORY[0x1E69E7CC0];
  v244 = v337;
  v243 = v315;
LABEL_298:
  v245 = v303;
  outlined init with copy of UIKitAdaptableTabView(v322, v303, type metadata accessor for Binding<TabViewCustomization>?);
  v246 = 1;
  v247 = v335;
  v248 = (v334)(v245, 1, v335);
  v249 = type metadata accessor for Binding<TabViewCustomization>?;
  v250 = v305;
  if (v248 != 1)
  {
    MEMORY[0x18D00ACC0](v247);
    v246 = 0;
    v249 = type metadata accessor for Binding<TabViewCustomization>;
  }

  _s2os6LoggerVSgWOhTm_0(v245, v249);
  (*(v304 + 56))(v250, v246, 1, v307);
  v251 = _s7SwiftUI20TabViewCustomizationV16arrangedChildren_13customization9sectionID13includeHidden2idSayxGq__ACSgAA0ceJ0VSbALxXEt7ElementQy_RszSlR_r0_lFZAL_SayALGTt4g503_s7a32UI19UIHostingControllerC30updateg114CreatingIfNeeded33_E387C3C47C0D2A0931533D8490A5A8B72of5using13customization11environment11coordinatorySo18_UITabn11GroupC_AA12c26ItemGroupVAA7BindingVyAA20cde30VGSgAA17EnvironmentValuesVAA24cd24Coordinator_PhoneCtFAA18cE11IDVAZXEfU4_Tf1nnnnc_n(v239, v250, v312, v317, v243, 1);

  _s2os6LoggerVSgWOhTm_0(v250, type metadata accessor for TabViewCustomization?);
  v252 = *(v251 + 16);
  if (v252)
  {
    v363[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)(v252);
    v253 = v363[0];
    v347 = v251;
    v254 = v251 + 48;
    v255 = v252;
    do
    {
      v256 = *(v254 - 16);
      v257 = *(v254 - 8);
      outlined copy of TabCustomizationID.Base();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v253 + 16) + 1, 1);
        v253 = v363[0];
      }

      v259 = *(v253 + 16);
      v258 = *(v253 + 24);
      if (v259 >= v258 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v258 > 1), v259 + 1, 1);
        v253 = v363[0];
      }

      *(v253 + 16) = v259 + 1;
      v260 = v253 + 16 * v259;
      *(v260 + 32) = v256;
      *(v260 + 40) = v257;
      v254 += 24;
      --v255;
      v244 = v337;
    }

    while (v255);

    v251 = v347;
  }

  else
  {
  }

  v261 = Array._bridgeToObjectiveC()().super.isa;

  [v316 _setDisplayOrder_];

  v262 = v306;
  static Log.tabView.getter();
  if (v343(v262, 1, v346) == 1)
  {

    _s2os6LoggerVSgWOhTm_0(v262, type metadata accessor for Logger?);
  }

  else
  {
    outlined init with copy of TabItemGroup(v244, v363);

    v263 = Logger.logObject.getter();
    v264 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v263, v264))
    {
      LODWORD(v344) = v264;
      v265 = swift_slowAlloc();
      v343 = swift_slowAlloc();
      *&v380[0] = v343;
      *v265 = 136315394;
      v266 = v363[3];
      v267 = v363[4];
      outlined copy of TabCustomizationID.Base();
      outlined destroy of TabItemGroup(v363);
      v268 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v266, v267, v380);
      outlined consume of TabCustomizationID.Base();
      *(v265 + 4) = v268;
      v345 = v265;
      *(v265 + 12) = 2080;
      if (v252)
      {
        v338 = v263;
        *v365 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)(v252);
        v269 = *v365;
        v347 = v251;
        v270 = v251 + 48;
        do
        {
          v272 = *(v270 - 16);
          v271 = *(v270 - 8);
          outlined copy of TabCustomizationID.Base();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v269 + 16) + 1, 1);
            v269 = *v365;
          }

          v274 = *(v269 + 16);
          v273 = *(v269 + 24);
          if (v274 >= v273 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v273 > 1), v274 + 1, 1);
            v269 = *v365;
          }

          *(v269 + 16) = v274 + 1;
          v275 = v269 + 16 * v274;
          *(v275 + 32) = v272;
          *(v275 + 40) = v271;
          v270 += 24;
          --v252;
        }

        while (v252);

        v263 = v338;
      }

      else
      {

        v269 = MEMORY[0x1E69E7CC0];
      }

      *v365 = v269;
      v276 = BidirectionalCollection<>.joined(separator:)();
      v278 = v277;

      v279 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v276, v278, v380);

      v280 = v345;
      *(v345 + 14) = v279;
      _os_log_impl(&dword_18BD4A000, v263, v344, "Set display order of group %s:\n%s", v280, 0x16u);
      v281 = v343;
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v281, -1, -1);
      MEMORY[0x18D0110E0](v280, -1, -1);
    }

    else
    {

      outlined destroy of TabItemGroup(v363);
    }

    (*(v313 + 8))(v306, v346);
  }

  v224 = v316;
  v190 = &selRef_setConfiguration_;
LABEL_325:
  v282 = [v224 _children];
  v193 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v193 >> 62)
  {
    goto LABEL_353;
  }

  v283 = *((v193 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v283)
  {
    goto LABEL_327;
  }

LABEL_348:

  return outlined consume of TabItemGroup.HostCache?(v341, v340, v339);
}

void specialized UIHostingController.updateTitleImage(on:using:)(void *a1, _OWORD *a2)
{
  v3 = v2;
  v6 = a2[15];
  v100 = a2[14];
  v101 = v6;
  v102 = a2[16];
  v7 = a2[11];
  v96 = a2[10];
  v97 = v7;
  v8 = a2[13];
  v98 = a2[12];
  v99 = v8;
  v9 = a2[7];
  v92 = a2[6];
  v93 = v9;
  v10 = a2[9];
  v94 = a2[8];
  v95 = v10;
  v11 = a2[3];
  v88 = a2[2];
  v89 = v11;
  v12 = a2[5];
  v90 = a2[4];
  v91 = v12;
  if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v88) != 1)
  {
    v85 = v100;
    v86 = v101;
    v87 = v102;
    v81 = v96;
    v82 = v97;
    v83 = v98;
    v84 = v99;
    v77 = v92;
    v78 = v93;
    v79 = v94;
    v80 = v95;
    v73 = v88;
    v74 = v89;
    v75 = v90;
    v76 = v91;
    v13 = PlatformItem.PrimaryContent.text.getter();
    if (v13)
    {
      v14 = v13;
      v15 = [v13 string];

      v16 = v15;
      if (!v15)
      {
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = MEMORY[0x18D00C850](v17);
      }

      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      v21 = [a1 title];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      if (v22 == v18 && v24 == v20)
      {
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v25 & 1) == 0)
        {
          [a1 setTitle_];
        }
      }
    }
  }

  v26 = a2[15];
  v85 = a2[14];
  v86 = v26;
  v87 = a2[16];
  v27 = a2[11];
  v81 = a2[10];
  v82 = v27;
  v28 = a2[13];
  v83 = a2[12];
  v84 = v28;
  v29 = a2[7];
  v77 = a2[6];
  v78 = v29;
  v30 = a2[9];
  v79 = a2[8];
  v80 = v30;
  v31 = a2[3];
  v73 = a2[2];
  v74 = v31;
  v32 = a2[5];
  v75 = a2[4];
  v76 = v32;
  if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v73) == 1 || (v70 = v85, v71 = v86, v72 = v87, v66 = v81, v67 = v82, v68 = v83, v69 = v84, v62 = v77, v63 = v78, v64 = v79, v65 = v80, v58 = v73, v59 = v74, v60 = v75, v61 = v76, (v33 = PlatformItem.PrimaryContent.secondaryText.getter()) == 0))
  {
    v36 = 0;
    v38 = 0;
  }

  else
  {
    v34 = v33;
    v35 = [v33 string];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  v39 = [a1 subtitle];
  if (v39)
  {
    v40 = v39;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (!v38)
    {
      v44 = 0;
LABEL_26:

      [a1 setSubtitle_];

      goto LABEL_27;
    }

    if (v41 == v36 && v38 == v43)
    {

LABEL_24:

      goto LABEL_27;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v45)
    {
      goto LABEL_24;
    }

LABEL_25:
    v44 = MEMORY[0x18D00C850](v36, v38);
    goto LABEL_26;
  }

  if (v38)
  {
    goto LABEL_25;
  }

LABEL_27:
  if (PlatformItem.coreMakePlatformImage()())
  {
    objc_opt_self();
    v46 = swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    v46 = 0;
  }

  v47 = [a1 image];
  if (v47)
  {
    v48 = v47;
    if (v46)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      v49 = v46;
      v50 = static NSObject.== infix(_:_:)();

      if (v50)
      {
        goto LABEL_38;
      }
    }

    else
    {
    }

LABEL_37:
    [a1 setImage_];
    goto LABEL_38;
  }

  if (v46)
  {
    goto LABEL_37;
  }

LABEL_38:
  v51 = [v3 tabBarItem];
  if (!v51)
  {
    __break(1u);
LABEL_50:
    __break(1u);
    return;
  }

  v52 = v51;
  v53 = [v51 image];

  if (v53)
  {
    if (v46)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      v54 = v46;
      v55 = static NSObject.== infix(_:_:)();

      if (v55)
      {
        goto LABEL_48;
      }
    }

    else
    {
    }

LABEL_46:
    v56 = [v3 tabBarItem];
    if (v56)
    {
      v57 = v56;
      [v56 setImage_];

      v54 = v46;
LABEL_48:

      return;
    }

    goto LABEL_50;
  }

  if (v46)
  {
    goto LABEL_46;
  }
}

void PrimitiveAdaptableTabView.BodyContent.representable(isPhone:)(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v55 = type metadata accessor for PrimitiveAdaptableTabView.BodyContent(0);
  v6 = _VariadicView_Children.endIndex.getter();
  if (_VariadicView_Children.endIndex.getter() < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v7 = _VariadicView_Children.endIndex.getter();
  if (v6 < 0 || v7 < v6)
  {
    goto LABEL_21;
  }

  v54 = a2;
  v8 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v66 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v9 = 0;
    v8 = v66;
    while (1)
    {
      _VariadicView_Children.subscript.getter();
      outlined init with copy of _VariadicView_Children.Element(v59, v58);
      outlined init with copy of _VariadicView_Children.Element(v58, v56);
      ViewTraitCollection.value<A>(for:defaultValue:)();
      if (BYTE8(v60) == 1)
      {
        v10 = AGMakeUniqueID();
      }

      else
      {
        v10 = v60;
      }

      outlined destroy of _VariadicView_Children.Element(v59);
      outlined destroy of _VariadicView_Children.Element(v58);
      *(&v57 + 1) = v10;
      v63 = v56[4];
      v64 = v56[5];
      v60 = v56[0];
      v61 = v56[1];
      v62[0] = v56[2];
      v62[1] = v56[3];
      v65 = v57;
      v66 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v8 = v66;
      }

      *(v8 + 16) = v12 + 1;
      v13 = (v8 + 112 * v12);
      v14 = v60;
      v15 = v62[0];
      v13[3] = v61;
      v13[4] = v15;
      v13[2] = v14;
      v16 = v62[1];
      v17 = v63;
      v18 = v65;
      v13[7] = v64;
      v13[8] = v18;
      v13[5] = v16;
      v13[6] = v17;
      if (v9 >= _VariadicView_Children.endIndex.getter())
      {
        break;
      }

      if (v6 == ++v9)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_13:
  if (a1 & 1) == 0 && ((specialized Environment.wrappedValue.getter(*(v3 + v55[8]), *(v3 + v55[8] + 8), &v60), v60 == 2) || (v60))
  {
    v19 = static AdaptableTabView.makeTabGroups(_:depth:maxDepth:)(v8, 0, 2);
    v32 = (v3 + v55[10]);
    v27 = *v32;
    v29 = v32[1];
    v52 = v32[2];
    v53 = v33;

    v31 = 0;
  }

  else
  {
    v19 = specialized static AdaptableTabView.extractTabs(_:)(v8);
    v53 = v20;
    v21 = (v3 + v55[10]);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    type metadata accessor for ItemIndexTabsOnlyIndexProjection();
    swift_allocObject();

    v26 = specialized ItemIndexTabsOnlyIndexProjection.init(_:)(v25);

    v27 = specialized Binding.projecting<A>(_:)(v26, v22, v23, v24);
    v29 = v28;
    v52 = v30;

    v31 = 1;
  }

  v49 = v19;
  v51 = static AdaptableTabView.makeSelectionCache(items:selectionValueOnlyIncludesTabs:processedTabs:)(v8, v31, v19);

  v34 = v3 + v55[5];
  v35 = *v34;
  v36 = *(v34 + 8);

  specialized Environment.wrappedValue.getter(v35, v36, &v60);
  v50 = v60;
  specialized Environment.wrappedValue.getter(*(v3 + v55[6]), *(v3 + v55[6] + 8), v56);
  v37 = v56[0];
  v38 = specialized Environment.wrappedValue.getter(*(v3 + v55[7]), *(v3 + v55[7] + 8));
  v39 = v55[11];
  v40 = *(v3 + v55[12]);
  v41 = v38 & 1;
  v42 = *(v3 + v39 + 16);
  v60 = *(v3 + v39);
  v61 = v42;
  v62[0] = *(v3 + v39 + 32);
  *(v62 + 9) = *(v3 + v39 + 41);
  v43 = type metadata accessor for UIKitAdaptableTabView(0);
  v44 = v43[7];

  outlined init with copy of TabSidebarConfiguration(&v60, v56);
  specialized Environment.wrappedValue.getter(a2 + v44);
  v45 = v61;
  *(a2 + 40) = v60;
  *a2 = v27;
  *(a2 + 8) = v29;
  *(a2 + 16) = v52;
  *(a2 + 24) = v50;
  *(a2 + 25) = v37;
  *(a2 + 26) = v41;
  *(a2 + 32) = v40;
  *(a2 + 56) = v45;
  *(a2 + 72) = v62[0];
  *(a2 + 81) = *(v62 + 9);
  *(a2 + v43[8]) = v49;
  *(a2 + v43[9]) = v53;
  *(a2 + v43[10]) = v51;
  v46 = v43[11];
  *(v54 + v46) = closure #1 in variable initialization expression of SheetBridge.clientNeedsOutOfWindowPresentationSuppression() & 1;
  LOBYTE(v44) = static Edge.Set.all.getter();

  type metadata accessor for ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>, type metadata accessor for ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>);
  v48 = v54 + *(v47 + 36);
  *v48 = -1;
  *(v48 + 8) = v44;
}

void protocol witness for View.body.getter in conformance PrimitiveAdaptableTabView.BodyContent(uint64_t a1@<X8>)
{
  PrimitiveAdaptableTabView.BodyContent.representable(isPhone:)(1, a1);
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<PhoneInterfaceIdiom>, ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>>();
  PrimitiveAdaptableTabView.BodyContent.representable(isPhone:)(0, a1 + *(v2 + 44));
}

id UIKitAdaptableTabView.makeCoordinator()()
{
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v5 = v0[1];
  v6 = v0[2];
  v7 = *(v0 + 7);
  v27 = *(v0 + 5);
  v28 = v7;
  v29[0] = *(v0 + 9);
  *(v29 + 9) = *(v0 + 81);
  v8 = type metadata accessor for UIKitAdaptableTabView(0);
  outlined init with copy of UIKitAdaptableTabView(v0 + *(v8 + 28), v3, type metadata accessor for Binding<TabViewCustomization>?);
  v9 = type metadata accessor for TabViewCoordinator_Phone();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache] = 0;
  *&v10[OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selectionCache] = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *&v10[OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_viewControllers] = MEMORY[0x1E69E7CC0];
  v12 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_groupHostCache;
  outlined init with copy of TabSidebarConfiguration(&v27, v26);
  *&v10[v12] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI12TabItemGroupV9HostCacheVTt0g5Tf4g_n(v11);
  *&v10[OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_currentTabIdentifiers] = v11;
  v10[OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_lastSizeClass] = 2;
  swift_unknownObjectWeakInit();
  v10[OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_isUIKitSidebarVisible] = 0;
  v13 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_customization;
  type metadata accessor for Binding<TabViewCustomization>(0);
  (*(*(v14 - 8) + 56))(&v10[v13], 1, 1, v14);
  swift_unknownObjectWeakInit();
  *&v10[OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_nextPopoverSeed] = 1;
  v15 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_searchState;
  type metadata accessor for Binding<SearchFieldState>(0);
  (*(*(v16 - 8) + 56))(&v10[v15], 1, 1, v16);
  v17 = &v10[OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_searchIndex];
  *v17 = 0;
  v17[8] = 1;
  *&v10[OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_currentTabDropTarget] = 0;
  v18 = &v10[OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selected];
  *v18 = v4;
  v18[1] = v5;
  v18[2] = v6;
  v19 = &v10[OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration];
  v20 = v27;
  v21 = v28;
  v22 = v29[0];
  *(v19 + 41) = *(v29 + 9);
  v19[1] = v21;
  v19[2] = v22;
  *v19 = v20;
  swift_beginAccess();

  outlined assign with copy of Binding<TabViewCustomization>?(v3, &v10[v13]);
  swift_endAccess();
  *&v10[OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabs] = v11;
  v25.receiver = v10;
  v25.super_class = v9;
  v23 = objc_msgSendSuper2(&v25, sel_init);
  _s2os6LoggerVSgWOhTm_0(v3, type metadata accessor for Binding<TabViewCustomization>?);
  return v23;
}

id UIKitAdaptableTabView.makeUIViewController(context:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = [objc_allocWithZone(type metadata accessor for UIKitTabBarController()) init];
  [v3 setDelegate_];
  v4 = [v3 sidebar];
  [v4 setDelegate_];

  [v3 setMode_];
  swift_unknownObjectWeakAssign();
  return v3;
}

uint64_t UIKitAdaptableTabView.updateUIViewController(_:context:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = v134;
  v7 = type metadata accessor for TabViewCustomization();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v93 = &v90[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v105 = &v90[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Binding<TabViewCustomization>(0);
  v110 = v11;
  v103 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v90[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v94 = &v90[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v95 = &v90[-v16];
  type metadata accessor for Binding<SearchFieldState>?(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v90[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *a2;
  v113 = a2[1];
  v21 = a2[2];
  v119 = a2[3];
  v22 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_viewControllers;
  swift_beginAccess();
  v23 = *(v20 + v22);
  v100 = v19;
  if (v23 >> 62)
  {
LABEL_66:
    v112 = __CocoaSet.count.getter();
  }

  else
  {
    v112 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v99 = type metadata accessor for UIKitAdaptableTabView(0);
  v120 = *(v3 + *(v99 + 32));
  v111 = v120[2];
  v24 = *v3;
  v25 = *(v3 + 2);
  v115 = *(v3 + 1);
  v116 = v24;
  *&v135[0] = v24;
  *(&v135[0] + 1) = v115;
  v114 = v25;
  *&v135[1] = v25;
  type metadata accessor for TabItem?(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
  v27 = v26;
  MEMORY[0x18D00ACC0](v134);
  v102 = *&v134[0];
  v28 = *(v20 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selected);
  v97 = (v20 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selected);
  v29 = *(v20 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selected + 16);
  v6[18] = v28;
  *&v135[1] = v29;
  v109 = v27;
  MEMORY[0x18D00ACC0](v134, v27);
  v101 = *&v134[0];
  *&v135[0] = v21;
  *(&v135[0] + 1) = v119;

  EnvironmentValues.horizontalSizeClass.getter();
  v30 = LOBYTE(v134[0]) == 2;
  v98 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_lastSizeClass;
  v31 = *(v20 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_lastSizeClass);
  if (v31 != 2)
  {
    v30 = 0;
  }

  if (LOBYTE(v134[0]) != 2 && v31 != 2)
  {
    v30 = ((v31 ^ LOBYTE(v134[0])) & 1) == 0;
  }

  v108 = LOBYTE(v134[0]);
  v91 = v30;
  v104 = v22;
  v117 = a1;
  v118 = v20;
  v106 = v3;
  v107 = v21;
  v3 = &v126;
  v20 = v120;
  v21 = v120[2];
  if (v21)
  {
    v6 = 0;
    v32 = (v120 + 4);
    v22 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v6 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_66;
      }

      outlined init with copy of TabEntry(v32, v135);
      outlined init with copy of TabEntry(v135, v134);
      if (BYTE8(v134[17]))
      {
        memcpy(v133, v134, 0x118uLL);
        outlined init with copy of TabItem?(&v133[3], &v130);
        if (!*(&v131[0] + 1))
        {
          outlined destroy of TabItemGroup(v133);
          _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(&v130, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
LABEL_24:
          memcpy(v134, v135, 0x119uLL);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v136 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1);
            v22 = v136;
          }

          v38 = *(v22 + 16);
          v37 = *(v22 + 24);
          a1 = (v38 + 1);
          if (v38 >= v37 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
            v22 = v136;
          }

          *(v22 + 16) = a1;
          memcpy((v22 + 288 * v38 + 32), v134, 0x119uLL);
          v20 = v120;
          goto LABEL_11;
        }

        a1 = v132;
        v121 = v132;
        v33 = one-time initialization token for defaultValue;

        if (v33 != -1)
        {
          swift_once();
        }

        v124 = static TabOptions.TraitKey.defaultValue;
        v125[0] = unk_1EAB09380;
        *(v125 + 9) = *(&word_1EAB09388 + 1);
        v128 = static TabOptions.TraitKey.defaultValue;
        v129[0] = unk_1EAB09380;
        *(v129 + 9) = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v124, &v126);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        outlined destroy of TabItemGroup(v133);
        v126 = v128;
        v127[0] = v129[0];
        *(v127 + 9) = *(v129 + 9);
        outlined destroy of TabOptions(&v126);

        v128 = v122;
        v129[0] = v123[0];
        *(v129 + 9) = *(v123 + 9);
        outlined destroy of TabOptions(&v128);
        v34 = BYTE1(v128);
        outlined destroy of TabItem(&v130);
        if ((v34 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v133[5] = v134[5];
        v133[6] = v134[6];
        v133[0] = v134[0];
        v133[1] = v134[1];
        v133[3] = v134[3];
        v133[4] = v134[4];
        v133[2] = v134[2];
        a1 = *&v134[6];
        *&v122 = *&v134[6];
        v35 = one-time initialization token for defaultValue;

        if (v35 != -1)
        {
          swift_once();
        }

        v126 = static TabOptions.TraitKey.defaultValue;
        v127[0] = unk_1EAB09380;
        *(v127 + 9) = *(&word_1EAB09388 + 1);
        v130 = static TabOptions.TraitKey.defaultValue;
        v131[0] = unk_1EAB09380;
        *(v131 + 9) = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v126, &v128);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        outlined destroy of TabItem(v133);
        v128 = v130;
        v129[0] = v131[0];
        *(v129 + 9) = *(v131 + 9);
        outlined destroy of TabOptions(&v128);

        v130 = v124;
        v131[0] = v125[0];
        *(v131 + 9) = *(v125 + 9);
        outlined destroy of TabOptions(&v130);
        if ((BYTE1(v130) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      outlined destroy of TabEntry(v135);
LABEL_11:
      v6 = (v6 + 1);
      v32 += 288;
      if (v21 == v6)
      {
        goto LABEL_30;
      }
    }
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v39 = [v117 selectedIndex];
  v40 = *(v22 + 16);

  if (v39 == NSNotFound.getter())
  {
    v96 = 0;
    v41 = v106;
    v42 = v107;
  }

  else
  {
    v41 = v106;
    v42 = v107;
    if (v39 >= v40 || (LOBYTE(v135[0]) = v108, result = specialized static SystemTabConstants.maxTabs(in:)(v135), result >= v40))
    {
      v44 = 1;
    }

    else
    {
      if (__OFSUB__(result, 1))
      {
        __break(1u);
        return result;
      }

      v44 = v39 < result - 1;
    }

    v96 = v44;
  }

  v45 = v97;
  v46 = v115;
  *v97 = v116;
  v45[1] = v46;
  v45[2] = v114;

  v47 = v118;
  *(v118 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabs) = v20;

  v48 = v99;
  *(v47 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache) = *(v41 + *(v99 + 36));

  v49 = *(v41 + *(v48 + 40));
  v50 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selectionCache;
  swift_beginAccess();
  *(v47 + v50) = v49;

  v51 = *(v41 + 56);
  v134[0] = *(v41 + 40);
  v134[1] = v51;
  v134[2] = *(v41 + 72);
  *(&v134[2] + 9) = *(v41 + 81);
  v53 = *(v47 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 16);
  v52 = *(v47 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 32);
  v54 = *(v47 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration);
  *(&v135[2] + 9) = *(v47 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 41);
  v135[1] = v53;
  v135[2] = v52;
  v135[0] = v54;
  memmove((v47 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration), v41 + 40, 0x39uLL);
  outlined init with copy of TabSidebarConfiguration(v134, v133);
  outlined destroy of TabSidebarConfiguration(v135);
  v55 = *(v48 + 28);
  v56 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_customization;
  swift_beginAccess();
  outlined assign with copy of Binding<TabViewCustomization>?(v41 + v55, v47 + v56);
  swift_endAccess();
  *(v47 + v98) = v108;
  *&v128 = v42;
  *(&v128 + 1) = v119;
  v57 = v100;
  EnvironmentValues.searchFieldState.getter(v100);
  v58 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_searchState;
  swift_beginAccess();
  outlined assign with take of Binding<SearchFieldState>?(v57, v47 + v58);
  swift_endAccess();
  v59 = *(v41 + 26);
  v60 = *(v41 + 4);
  LOWORD(v133[0]) = *(v41 + 12);
  BYTE2(v133[0]) = v59;
  *(&v133[0] + 1) = v60;

  UIKitTabBarController.updateTabBarToConfiguration(_:transaction:)(v133);

  specialized UIKitTabBarController.updateSidebarToConfiguration(coordinator:customization:transaction:)(v47, v41 + v55);
  if (v112 == v111)
  {
    v65 = *(v47 + v104);
    v64 = v104;
    v66 = v110;
    if (v65 >> 62)
    {
      v67 = __CocoaSet.count.getter();
    }

    else
    {
      v67 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v68._rawValue = v120;
    v69 = v94;
    if (!v67)
    {
      goto LABEL_55;
    }

    static Log.tabView.getter();
    v70 = type metadata accessor for Logger();
    v71 = *(v70 - 8);
    if ((*(v71 + 48))(v69, 1, v70) == 1)
    {
      _s2os6LoggerVSgWOhTm_0(v69, type metadata accessor for Logger?);
    }

    else
    {
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_18BD4A000, v76, v77, "Updating tabview hosts", v78, 2u);
        v42 = v107;
        MEMORY[0x18D0110E0](v78, -1, -1);
      }

      (*(v71 + 8))(v94, v70);
      v68._rawValue = v120;
    }

    v79 = v118;
    swift_beginAccess();
    UIKitAdaptableTabView.rearrangeHosts(_:toMatch:)((v79 + v64), v68._rawValue);
    swift_endAccess();
    v80 = *(v79 + v64);
    *&v133[0] = v116;
    *(&v133[0] + 1) = v115;
    *&v133[1] = v114;

    MEMORY[0x18D00ACC0](&v128, v109);
    specialized TabViewCoordinator_Phone.updateHosts<A, B>(_:tabs:selected:environment:transaction:)(v80, v68._rawValue, v128, v42, v119, v113);
  }

  else
  {
    v61 = v95;
    static Log.tabView.getter();
    v62 = type metadata accessor for Logger();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v61, 1, v62) == 1)
    {
      _s2os6LoggerVSgWOhTm_0(v61, type metadata accessor for Logger?);
      v64 = v104;
    }

    else
    {
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();
      v74 = os_log_type_enabled(v72, v73);
      v64 = v104;
      if (v74)
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_18BD4A000, v72, v73, "Building the tabview", v75, 2u);
        v42 = v107;
        MEMORY[0x18D0110E0](v75, -1, -1);
      }

      (*(v63 + 8))(v95, v62);
    }

    *&v133[0] = v116;
    *(&v133[0] + 1) = v115;
    *&v133[1] = v114;
    MEMORY[0x18D00ACC0](&v128, v109);
    v68._rawValue = v120;
    specialized TabViewCoordinator_Phone.rebuildTabs<A>(tabBarController:tabs:selected:environment:transaction:)(v120, v128, v42, v119, v113);
  }

  v66 = v110;
LABEL_55:
  v81 = v105;
  outlined init with copy of UIKitAdaptableTabView(v41 + v55, v105, type metadata accessor for Binding<TabViewCustomization>?);
  if ((*(v103 + 48))(v81, 1, v66) == 1)
  {
    v82 = type metadata accessor for Binding<TabViewCustomization>?;
    v83 = v81;
  }

  else
  {
    v84 = v92;
    outlined init with take of Binding<TabViewCustomization>(v81, v92, type metadata accessor for Binding<TabViewCustomization>);
    v85 = v93;
    MEMORY[0x18D00ACC0](v66);
    TabViewCustomization.validateCustomization(entries:)(v68);
    _s2os6LoggerVSgWOhTm_0(v85, type metadata accessor for TabViewCustomization);
    v82 = type metadata accessor for Binding<TabViewCustomization>;
    v83 = v84;
  }

  _s2os6LoggerVSgWOhTm_0(v83, v82);
  v87 = v101;
  v86 = v102;
  TabViewCoordinator_Phone.dismissPresentationIfNeeded()();
  v88 = v96;
  if (v86 != v87)
  {
    v88 = 1;
  }

  if ((v88 & 1) != 0 || v112 != v111)
  {
    v89 = *(v118 + v64);
    *&v133[0] = v116;
    *(&v133[0] + 1) = v115;
    *&v133[1] = v114;

    MEMORY[0x18D00ACC0](&v128, v109);
    *&v133[0] = v42;
    *(&v133[0] + 1) = v119;
    UIKitAdaptableTabView.setViewControllers(on:allViewControllers:tabs:selected:environment:forceUpdate:)(v117, v89, v68._rawValue, v128, v133, !v91);
  }

  else
  {
  }
}

uint64_t UIKitAdaptableTabView.rearrangeHosts(_:toMatch:)(unint64_t *a1, unint64_t a2)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v96 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v95 = a1;
  v7 = *a1;
  v106 = a2;
  v8 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
LABEL_92:
    v9 = __CocoaSet.count.getter();
    v10 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  v11 = 0;
  v12 = v7 & 0xC000000000000001;
  do
  {
    v13 = v11;
    while (1)
    {
      if (v12)
      {
        v14 = MEMORY[0x18D00E9C0](v13, v7);
      }

      else
      {
        if (v13 >= *(v8 + 16))
        {
          goto LABEL_87;
        }

        v14 = *(v7 + 8 * v13 + 32);
      }

      v15 = v14;
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
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
        goto LABEL_92;
      }

      v16 = [v14 v10[163]];
      if (v16)
      {
        break;
      }

      ++v13;
      if (v11 == v9)
      {
        goto LABEL_25;
      }
    }

    v98 = v7;
    v17 = v16;
    v18 = [v16 identifier];

    v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = v99;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v127[0] = v21;
    v104 = v20;
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v105, v20);
    v25 = *(v21 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
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
LABEL_100:
      __break(1u);
LABEL_101:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    if (*(v21 + 24) >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v7 = v98;
        if ((v23 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v30 = v23;
        specialized _NativeDictionary.copy()();
        v7 = v98;
        if ((v30 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

LABEL_20:

      v99 = *&v127[0];
      *(*(*&v127[0] + 56) + 8 * v24) = v13;

      goto LABEL_24;
    }

    LODWORD(v103) = v23;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v105, v104);
    if ((v103 & 1) != (v29 & 1))
    {
      goto LABEL_101;
    }

    v24 = v28;
    v7 = v98;
    if (v103)
    {
      goto LABEL_20;
    }

LABEL_22:
    v31 = *&v127[0];
    *(*&v127[0] + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v32 = (v31[6] + 16 * v24);
    v33 = v104;
    *v32 = v105;
    v32[1] = v33;
    *(v31[7] + 8 * v24) = v13;

    v34 = v31[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_95;
    }

    v99 = v31;
    v31[2] = v36;
LABEL_24:
    v10 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
  }

  while (v11 != v9);
LABEL_25:
  v8 = *(v106 + 16);
  if (v8)
  {
    v37 = 0;
    v103 = (&v127[16] + 8);
    v97 = 0x800000018CD45E10;
    v38 = v106 + 32;
    *&v6 = 134218752;
    v93 = v6;
    v101 = v8;
    v94 = v106 + 32;
    while (2)
    {
      v39 = v7 & 0xFFFFFFFFFFFFFF8;
      v98 = v7;
      v104 = v7 + 32;
      v105 = v7 & 0xC000000000000001;
      v40 = v38 + 288 * v37;
      v102 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_30:
      if (v37 >= v8)
      {
        goto LABEL_88;
      }

      v41 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_89;
      }

      *&v127[0] = v37;
      outlined init with copy of TabEntry(v40, v127 + 8);
      if (v130 == 255)
      {
      }

      v42 = *v103;
      v43 = *&v127[0];
      v127[0] = *(v127 + 8);
      v127[1] = *(&v127[1] + 8);
      v127[2] = *(&v127[2] + 8);
      v127[3] = *(&v127[3] + 8);
      v127[4] = *(&v127[4] + 8);
      v127[5] = *(&v127[5] + 8);
      v127[6] = *(&v127[6] + 8);
      v127[7] = *(&v127[7] + 8);
      v127[8] = *(&v127[8] + 8);
      v127[9] = *(&v127[9] + 8);
      v127[10] = *(&v127[10] + 8);
      v127[11] = *(&v127[11] + 8);
      v127[12] = *(&v127[12] + 8);
      v127[13] = *(&v127[13] + 8);
      v127[14] = *(&v127[14] + 8);
      v127[15] = *(&v127[15] + 8);
      v127[16] = v42;
      v128 = v129;
      LOBYTE(v129) = v130;
      if (v105)
      {
        v44 = MEMORY[0x18D00E9C0](v43, v98);
      }

      else
      {
        if ((v43 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        if (v43 >= *(v39 + 16))
        {
          goto LABEL_91;
        }

        v44 = *(v104 + 8 * v43);
      }

      v45 = v44;
      v7 = [v44 _uip_tabElement];

      if (v7)
      {
        v106 = v37 + 1;
        v46 = [v7 identifier];

        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        outlined init with copy of TabEntry(v127, v125);
        if (v126)
        {
          memcpy(v124, v125, 0x118uLL);
          v49 = *(&v124[1] + 1);
          v50 = *&v124[2];
          outlined copy of TabCustomizationID.Base();
          outlined destroy of TabItemGroup(v124);
          if (v49 != v7)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v100 = v7;
          v124[5] = *&v125[80];
          v124[6] = *&v125[96];
          v124[0] = *v125;
          v124[1] = *&v125[16];
          v124[3] = *&v125[48];
          v124[4] = *&v125[64];
          v124[2] = *&v125[32];
          *&v122 = *&v125[104];
          v49 = dispatch thunk of CustomStringConvertible.description.getter();
          v50 = v51;
          *&v122 = *&v124[6];
          if ((ViewTraitCollection.isAuxiliaryContent.getter() & 1) == 0)
          {
            *&v110 = *&v124[6];
            if (one-time initialization token for defaultValue != -1)
            {
              swift_once();
            }

            v118 = static TabOptions.TraitKey.defaultValue;
            v119[0] = unk_1EAB09380;
            *(v119 + 9) = *(&word_1EAB09388 + 1);
            v114 = static TabOptions.TraitKey.defaultValue;
            v115[0] = unk_1EAB09380;
            *(v115 + 9) = *(&word_1EAB09388 + 1);
            outlined init with copy of TabOptions(&v118, &v112);
            ViewTraitCollection.value<A>(for:defaultValue:)();
            v120 = v114;
            v121[0] = v115[0];
            *(v121 + 9) = *(v115 + 9);
            outlined destroy of TabOptions(&v120);
            v122 = v116;
            v123[0] = v117[0];
            *(v123 + 9) = *(v117 + 9);
            outlined destroy of TabOptions(&v122);
            if (BYTE8(v123[1]))
            {
              if (TabItem.needsCustomizationIDForEnablement.getter())
              {
                v109 = *&v124[6];
                v112 = static TabOptions.TraitKey.defaultValue;
                v113[0] = unk_1EAB09380;
                *(v113 + 9) = *(&word_1EAB09388 + 1);
                v107 = static TabOptions.TraitKey.defaultValue;
                v108[0] = unk_1EAB09380;
                *(v108 + 9) = *(&word_1EAB09388 + 1);
                outlined init with copy of TabOptions(&v112, &v110);
                ViewTraitCollection.value<A>(for:defaultValue:)();
                v114 = v107;
                v115[0] = v108[0];
                *(v115 + 9) = *(v108 + 9);
                outlined destroy of TabOptions(&v114);
                v116 = v110;
                v117[0] = *v111;
                *(v117 + 9) = *&v111[9];
                v52 = *v111;
                v53 = v111[8];
                v92 = *(&v110 + 1);
                outlined copy of TabCustomizationID?(*(&v110 + 1), *v111, v111[8]);
                outlined destroy of TabOptions(&v116);
                if (v53 != 255)
                {

                  v49 = v92;
                  v50 = v52;
                }
              }
            }

            else
            {

              v49 = 0xD000000000000016;
              v50 = v97;
            }
          }

          v7 = v100;
          outlined destroy of TabItem(v124);
          if (v49 != v7)
          {
            goto LABEL_52;
          }
        }

        if (v50 == v48)
        {
        }

        else
        {
LABEL_52:
          v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v7 & 1) == 0)
          {
            v54 = v99;
            if (*(v99 + 16))
            {
              v55 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v50);
              v57 = v56;

              if (v57)
              {
                v58 = *(*(v54 + 56) + 8 * v55);
                v59 = v96;
                static Log.tabView.getter();
                v60 = type metadata accessor for Logger();
                v61 = *(v60 - 8);
                v62 = (*(v61 + 48))(v59, 1, v60);
                v8 = v101;
                v100 = v58;
                if (v62 == 1)
                {
                  _s2os6LoggerVSgWOhTm_0(v59, type metadata accessor for Logger?);
                  if (v105)
                  {
                    goto LABEL_59;
                  }

LABEL_63:
                  if ((v43 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_98;
                  }

                  v70 = *(v102 + 16);
                  if (v43 >= v70)
                  {
                    goto LABEL_99;
                  }

                  if (v58 >= v70)
                  {
                    goto LABEL_100;
                  }

                  v71 = *(v104 + 8 * v58);
                  v64 = *(v104 + 8 * v43);
                  v65 = v71;
                  v63 = v98;
                }

                else
                {
                  v66 = Logger.logObject.getter();
                  v67 = static os_log_type_t.default.getter();
                  if (os_log_type_enabled(v66, v67))
                  {
                    v68 = swift_slowAlloc();
                    *v68 = v93;
                    v69 = v100;
                    *(v68 + 4) = v100;
                    *(v68 + 12) = 2048;
                    *(v68 + 14) = v43;
                    *(v68 + 22) = 2048;
                    *(v68 + 24) = v43;
                    *(v68 + 32) = 2048;
                    *(v68 + 34) = v69;
                    _os_log_impl(&dword_18BD4A000, v66, v67, "Swapping host from idx %ld to %ld,\nmoving other host at %ld to %ld to\nget it out of the way", v68, 0x2Au);
                    MEMORY[0x18D0110E0](v68, -1, -1);
                  }

                  (*(v61 + 8))(v96, v60);
                  v58 = v100;
                  if (!v105)
                  {
                    goto LABEL_63;
                  }

LABEL_59:
                  v63 = v98;
                  v64 = MEMORY[0x18D00E9C0](v43, v98);
                  v65 = MEMORY[0x18D00E9C0](v58, v63);
                }

                if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v63 & 0x8000000000000000) != 0 || (v63 & 0x4000000000000000) != 0)
                {
                  v63 = specialized _ArrayBuffer._consumeAndCreateNew()(v63);
                  v73 = v63 & 0xFFFFFFFFFFFFFF8;
                  v72 = (v63 >> 62) & 1;
                }

                else
                {
                  LODWORD(v72) = 0;
                  v73 = v102;
                }

                v74 = v73;
                v75 = v73 + 8 * v43;
                v76 = *(v75 + 32);
                *(v75 + 32) = v65;

                v77 = v64;
                v98 = v63;
                if ((v63 & 0x8000000000000000) != 0 || v72)
                {
                  v98 = specialized _ArrayBuffer._consumeAndCreateNew()(v98);
                  v74 = v98 & 0xFFFFFFFFFFFFFF8;
                }

                v37 = v106;
                v78 = v100;
                if ((v100 & 0x8000000000000000) != 0)
                {
                  goto LABEL_96;
                }

                if (v100 >= *(v74 + 16))
                {
                  goto LABEL_97;
                }

                v79 = v74 + 8 * v100;
                v80 = *(v79 + 32);
                *(v79 + 32) = v77;

                *v95 = v98;
                v81 = [v77 _uip_tabElement];
                if (v81)
                {
                  v82 = v78;
                  v83 = v81;
                  v84 = [v81 identifier];
                  v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v87 = v86;

                  v88 = v99;
                  v89 = swift_isUniquelyReferenced_nonNull_native();
                  *v125 = v88;
                  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v82, v85, v87, v89);

                  v37 = v106;

                  outlined destroy of TabEntry(v127);
                  v99 = *v125;
                }

                else
                {
                  outlined destroy of TabEntry(v127);
                }

LABEL_78:
                v7 = v98;
                v38 = v94;
                if (v37 != v8)
                {
                  continue;
                }
              }

              outlined destroy of TabEntry(v127);
            }

            else
            {
              outlined destroy of TabEntry(v127);
            }

            v8 = v101;
            v37 = v106;
            goto LABEL_78;
          }
        }

        outlined destroy of TabEntry(v127);

        v8 = v101;
        v39 = v102;
        v41 = v106;
      }

      else
      {
        outlined destroy of TabEntry(v127);
      }

      break;
    }

    ++v37;
    v40 += 288;
    if (v41 == v8)
    {
    }

    goto LABEL_30;
  }
}

void UIKitAdaptableTabView.setViewControllers(on:allViewControllers:tabs:selected:environment:forceUpdate:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6)
{
  v7 = v6;
  LODWORD(v8) = a6;
  v66 = a3;
  v13 = type metadata accessor for UIKitAdaptableTabView(0);
  v59 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v60 = v14;
  v61 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v6 + *(v15 + 48));
  if (*(v16 + 16))
  {
    v17 = *a5;
    v18 = a5[1];
    v58 = v17;
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
    if (v20)
    {
      v56 = v18;
      v21 = (*(v16 + 56) + 32 * v19);
      v22 = *v21;
      v23 = v21[1];
      v25 = v21[2];
      v24 = v21[3];
      v65 = a2 & 0xC000000000000001;
      v55 = v22;
      if ((a2 & 0xC000000000000001) != 0)
      {
        goto LABEL_55;
      }

      if ((v23 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v23 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v26 = v7;
        v27 = *(a2 + 8 * v23 + 32);

        v28 = v27;
        v7 = v26;
        while (1)
        {
          v29 = v28;
          type metadata accessor for TabHostingController(0);
          v57 = swift_dynamicCastClass();
          if (!v57)
          {
            goto LABEL_58;
          }

          v53 = v8;
          if ((v23 & 0x8000000000000000) != 0 || v23 >= *(v66 + 16))
          {

            if (a2 >> 62)
            {
              goto LABEL_51;
            }
          }

          else
          {
            outlined init with copy of TabEntry(v66 + 288 * v23 + 32, v81);
            if (v81[35])
            {
              memcpy(v80, v81, 0x118uLL);
              v8 = [v57 _uip_tabElement];
              v23 = v80;
              TabItemGroup.updateChildSelection(in:selectedID:)(v8, v25, v24);

              outlined destroy of TabItemGroup(v80);
              if (a2 >> 62)
              {
                goto LABEL_51;
              }
            }

            else
            {

              outlined destroy of TabEntry(v81);
              if (a2 >> 62)
              {
LABEL_51:
                v30 = __CocoaSet.count.getter();
                goto LABEL_15;
              }
            }
          }

          v30 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
          v52 = v7;
          v54 = a1;
          v25 = MEMORY[0x1E69E7CC0];
          if (!v30)
          {
            goto LABEL_42;
          }

          v24 = 0;
          v8 = &v72;
          v62 = a2 & 0xFFFFFFFFFFFFFF8;
          v63 = v29;
          a1 = v66 + 32;
          v7 = &static TabOptions.TraitKey.defaultValue;
          v64 = v30;
          while (1)
          {
            if (v65)
            {
              v31 = MEMORY[0x18D00E9C0](v24, a2);
            }

            else
            {
              if (v24 >= *(v62 + 16))
              {
                goto LABEL_54;
              }

              v31 = *(a2 + 8 * v24 + 32);
            }

            v32 = *(v66 + 16);
            if (v24 == v32)
            {
              break;
            }

            if (v24 >= v32)
            {
              goto LABEL_53;
            }

            *v80 = v31;
            outlined init with copy of TabEntry(a1, &v80[8]);
            memcpy(v81, v80, 0x121uLL);
            outlined init with copy of TabEntry(&v81[1], v80);
            if (v80[280])
            {
              memcpy(v79, v80, sizeof(v79));
              outlined init with copy of TabItem?(&v79[48], &v76);
              if (!*(&v77[0] + 1))
              {
                outlined destroy of TabItemGroup(v79);
                _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(&v76, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
LABEL_36:
                memcpy(v80, v81, sizeof(v80));
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v82 = v25;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 16) + 1, 1);
                  v25 = v82;
                }

                v38 = *(v25 + 16);
                v37 = *(v25 + 24);
                v23 = v64;
                if (v38 >= v37 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
                  v23 = v64;
                  v25 = v82;
                }

                *(v25 + 16) = v38 + 1;
                memcpy((v25 + 296 * v38 + 32), v80, 0x121uLL);
                v29 = v63;
                goto LABEL_18;
              }

              v67 = v78;
              v33 = one-time initialization token for defaultValue;

              if (v33 != -1)
              {
                swift_once();
              }

              v70 = static TabOptions.TraitKey.defaultValue;
              v71[0] = unk_1EAB09380;
              *(v71 + 9) = *(&word_1EAB09388 + 1);
              v74 = static TabOptions.TraitKey.defaultValue;
              v75[0] = unk_1EAB09380;
              *(v75 + 9) = *(&word_1EAB09388 + 1);
              outlined init with copy of TabOptions(&v70, &v72);
              ViewTraitCollection.value<A>(for:defaultValue:)();
              outlined destroy of TabItemGroup(v79);
              v72 = v74;
              v73[0] = v75[0];
              *(v73 + 9) = *(v75 + 9);
              outlined destroy of TabOptions(&v72);

              v74 = v68;
              v75[0] = v69[0];
              *(v75 + 9) = *(v69 + 9);
              outlined destroy of TabOptions(&v74);
              v34 = BYTE1(v74);
              outlined destroy of TabItem(&v76);
              if ((v34 & 1) == 0)
              {
                goto LABEL_36;
              }
            }

            else
            {
              *&v79[80] = *&v80[80];
              *&v79[96] = *&v80[96];
              *v79 = *v80;
              *&v79[16] = *&v80[16];
              *&v79[48] = *&v80[48];
              *&v79[64] = *&v80[64];
              *&v79[32] = *&v80[32];
              *&v68 = *&v80[96];
              v35 = one-time initialization token for defaultValue;

              if (v35 != -1)
              {
                swift_once();
              }

              v72 = static TabOptions.TraitKey.defaultValue;
              v73[0] = unk_1EAB09380;
              *(v73 + 9) = *(&word_1EAB09388 + 1);
              v76 = static TabOptions.TraitKey.defaultValue;
              v77[0] = unk_1EAB09380;
              *(v77 + 9) = *(&word_1EAB09388 + 1);
              outlined init with copy of TabOptions(&v72, &v74);
              ViewTraitCollection.value<A>(for:defaultValue:)();
              outlined destroy of TabItem(v79);
              v74 = v76;
              v75[0] = v77[0];
              *(v75 + 9) = *(v77 + 9);
              outlined destroy of TabOptions(&v74);

              v76 = v70;
              v77[0] = v71[0];
              *(v77 + 9) = *(v71 + 9);
              outlined destroy of TabOptions(&v76);
              if ((BYTE1(v76) & 1) == 0)
              {
                goto LABEL_36;
              }
            }

            _s2os6LoggerVSgWOhTm_0(v81, type metadata accessor for (UIViewController, TabEntry));
            v23 = v64;
LABEL_18:
            ++v24;
            a1 += 288;
            if (v23 == v24)
            {
              goto LABEL_42;
            }
          }

LABEL_42:
          v24 = *(v25 + 16);
          if (!v24)
          {

            v39 = MEMORY[0x1E69E7CC0];
LABEL_48:
            LOBYTE(v81[0]) = 17;
            v40 = v61;
            outlined init with copy of UIKitAdaptableTabView(v52, v61, type metadata accessor for UIKitAdaptableTabView);
            v41 = (*(v59 + 80) + 41) & ~*(v59 + 80);
            v42 = (v60 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
            v43 = swift_allocObject();
            v45 = v54;
            v44 = v55;
            *(v43 + 16) = v54;
            *(v43 + 24) = v39;
            *(v43 + 32) = v44;
            *(v43 + 40) = v53 & 1;
            outlined init with take of Binding<TabViewCustomization>(v40, v43 + v41, type metadata accessor for UIKitAdaptableTabView);
            v46 = v58;
            *(v43 + v42) = v57;
            v47 = (v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8));
            v48 = v56;
            *v47 = v46;
            v47[1] = v48;

            v49 = v45;
            v50 = v29;

            static Update.enqueueAction(reason:_:)();

            return;
          }

          v81[0] = MEMORY[0x1E69E7CC0];
          v23 = v81;
          specialized ContiguousArray.reserveCapacity(_:)();
          a2 = 0;
          a1 = 32;
          while (a2 < *(v25 + 16))
          {
            ++a2;
            v7 = *(v25 + a1);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v8 = *(v81[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v23 = v81;
            specialized ContiguousArray._endMutation()();
            a1 += 296;
            if (v24 == a2)
            {

              v39 = v81[0];
              goto LABEL_48;
            }
          }

          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:

          v28 = MEMORY[0x18D00E9C0](v23, a2);
        }
      }

      __break(1u);
LABEL_58:
      swift_getObjectType();
      v81[0] = 0;
      v81[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v81[0] = 0xD000000000000029;
      v81[1] = 0x800000018CD52BD0;
      v51 = _typeName(_:qualified:)();
      MEMORY[0x18D00C9B0](v51);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

uint64_t closure #3 in UIKitAdaptableTabView.setViewControllers(on:allViewControllers:tabs:selected:environment:forceUpdate:)(void *a1, uint64_t a2, id a3, char a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a1 setViewControllers_];

  [a1 setCustomizableViewControllers_];
  if ([a1 selectedIndex] != a3 || (a4 & 1) != 0)
  {
    [a1 setSelectedIndex_];
  }

  result = type metadata accessor for UIKitAdaptableTabView(0);
  if (*(a5 + *(result + 44)) == 1)
  {
    return UIKitTabBarController.updateColorScheme(selectedHostVC:environment:)(a6);
  }

  return result;
}

id protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance UIKitAdaptableTabView@<X0>(void *a1@<X8>)
{
  result = UIKitAdaptableTabView.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t TabViewCoordinator_Phone.updateTabElementCreatingIfNeeded(on:using:environment:)(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34[-v12];
  v14 = *a3;
  v15 = a3[1];
  outlined init with copy of TabEntry(a2, v36);
  if (v37)
  {
    memcpy(v35, v36, 0x118uLL);
    v16 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_customization;
    swift_beginAccess();
    outlined init with copy of UIKitAdaptableTabView(v4 + v16, v10, type metadata accessor for Binding<TabViewCustomization>?);
    specialized UIHostingController.updateTabGroupCreatingIfNeeded(using:customization:environment:coordinator:)(v35, v10, v14, v15, v4);
    _s2os6LoggerVSgWOhTm_0(v10, type metadata accessor for Binding<TabViewCustomization>?);
    return outlined destroy of TabItemGroup(v35);
  }

  v35[4] = *&v36[64];
  v35[5] = *&v36[80];
  v35[6] = *&v36[96];
  v35[0] = *v36;
  v35[1] = *&v36[16];
  v35[2] = *&v36[32];
  v35[3] = *&v36[48];
  v18 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_customization;
  swift_beginAccess();
  outlined init with copy of UIKitAdaptableTabView(v4 + v18, v13, type metadata accessor for Binding<TabViewCustomization>?);
  v19 = [a1 _uip_tabElement];
  if (!v19)
  {
    goto LABEL_10;
  }

  v20 = v19;
  v21 = [v19 identifier];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v22 != TabItem.platformIdentifier.getter() || v24 != v25)
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
      goto LABEL_8;
    }

LABEL_10:
    if (TabItem.isSearchItem.getter())
    {
      v27 = [objc_allocWithZone(MEMORY[0x1E69DD7B0]) init];
      [a1 _uip_setTabElement_];
    }

    else
    {
      v28 = specialized UIHostingController.createBridgedTab(using:)(v35);
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        v30 = v28;
      }

      v27 = v28;
      [a1 _uip_setTabElement_];
    }

    goto LABEL_15;
  }

LABEL_8:
  v27 = v20;
LABEL_15:
  specialized UIHostingController.updateProperties(on:using:customization:environment:coordinator:)(v27, v35, v13, v14, v15);
  if (TabItem.isSearchItem.getter())
  {
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      v32 = v31;
      type metadata accessor for InterfaceIdiomPredicate<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation>, &type metadata for EnvironmentValues.__Key_tabViewSearchActivation, &protocol witness table for EnvironmentValues.__Key_tabViewSearchActivation, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation>, &type metadata for EnvironmentValues.__Key_tabViewSearchActivation, &protocol witness table for EnvironmentValues.__Key_tabViewSearchActivation);
      v33 = v27;
      if (v15)
      {

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        PropertyList.subscript.getter();
      }

      [v32 setAutomaticallyActivatesSearch_];
    }
  }

  _s2os6LoggerVSgWOhTm_0(v13, type metadata accessor for Binding<TabViewCustomization>?);
  return outlined destroy of TabItem(v35);
}

__n128 TabViewCoordinator_Phone.visibleTab(in:selectedID:tabCache:environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[0] = *a5;
  EnvironmentValues.horizontalSizeClass.getter();
  if (LOBYTE(v48[0]) != 2 && (v48[0] & 1) == 0)
  {
    outlined init with copy of TabItem?(a1 + 160, v49);
    if (*(&v49[1] + 1))
    {
      v48[3] = v49[3];
      v48[4] = v49[4];
      v48[5] = v49[5];
      v48[6] = v49[6];
      v48[0] = v49[0];
      v48[1] = v49[1];
      v48[2] = v49[2];
      static Log.tabView.getter();
      v16 = type metadata accessor for Logger();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v14, 1, v16) == 1)
      {
        _s2os6LoggerVSgWOhTm_0(v14, type metadata accessor for Logger?);
      }

      else
      {
        outlined init with copy of TabItem(v48, v47);
        outlined init with copy of TabItemGroup(a1, v49);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v44 = v23;
          v25 = v24;
          v45 = swift_slowAlloc();
          v46 = v45;
          *v25 = 136315394;
          v43 = v22;
          v26 = TabItem.platformIdentifier.getter();
          v28 = v27;
          outlined destroy of TabItem(v47);
          v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v46);

          v42 = v25;
          *(v25 + 4) = v29;
          *(v25 + 12) = 2080;
          v30 = *(&v49[1] + 1);
          v31 = *&v49[2];
          outlined copy of TabCustomizationID.Base();
          outlined destroy of TabItemGroup(v49);
          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v46);
          outlined consume of TabCustomizationID.Base();
          v33 = v42;
          v34 = v43;
          *(v42 + 14) = v32;
          v35 = v33;
          _os_log_impl(&dword_18BD4A000, v34, v44, "Using compact tab '%s' for group '%s'", v33, 0x16u);
          v36 = v45;
          swift_arrayDestroy();
          MEMORY[0x18D0110E0](v36, -1, -1);
          MEMORY[0x18D0110E0](v35, -1, -1);
        }

        else
        {

          outlined destroy of TabItemGroup(v49);
          outlined destroy of TabItem(v47);
        }

        (*(v17 + 8))(v14, v16);
      }

      result = v48[3];
      v37 = v48[5];
      v38 = v48[6];
      *(a6 + 64) = v48[4];
      *(a6 + 80) = v37;
      *(a6 + 96) = v38;
      v39 = v48[1];
      v40 = v48[2];
      *a6 = v48[0];
      *(a6 + 16) = v39;
      *(a6 + 32) = v40;
      *(a6 + 48) = result;
      return result;
    }

    _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(v49, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
  }

  if (*(a4 + 16))
  {
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v19)
    {
      outlined init with copy of TabEntry(*(a4 + 56) + 288 * v18, v49);
      memcpy(v48, v49, 0x119uLL);
      if (BYTE8(v48[17]) != 1)
      {
        v20 = v49[5];
        *(a6 + 64) = v49[4];
        *(a6 + 80) = v20;
        *(a6 + 96) = v49[6];
        v21 = v49[1];
        *a6 = v49[0];
        *(a6 + 16) = v21;
        result = v49[3];
        *(a6 + 32) = v49[2];
        *(a6 + 48) = result;
        return result;
      }

      outlined destroy of TabEntry(v48);
    }
  }

  result.n128_u64[0] = 0;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *a6 = 0u;
  return result;
}

void TabViewCoordinator_Phone.getIndex(selectedElement:selectionCache:)(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (a1)
    {

      v4 = TabViewCoordinator_Phone.findRootSelectedElement(_:)(a1);
      v5 = [v4 identifier];
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {

      v6 = 0;
      v8 = 0;
      v4 = 0;
    }

    v9 = 0;
    v10 = 1 << *(a2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a2 + 64);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = v12;
LABEL_14:
      v12 = (v14 - 1) & v14;
      if (v8)
      {
        v16 = *(a2 + 56) + 32 * (__clz(__rbit64(v14)) | (v9 << 6));
        v17 = *(v16 + 16) == v6 && v8 == *(v16 + 24);
        if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return;
        }
      }
    }

    while (1)
    {
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v14 = *(a2 + 64 + 8 * v15);
      ++v9;
      if (v14)
      {
        v9 = v15;
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

__n128 TabViewCoordinator_Phone.getElement(for:tabCache:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for Logger?();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = [a1 identifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (a2 && *(a2 + 16))
    {
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v13);
      v16 = v15;

      if (v16)
      {
        outlined init with copy of TabEntry(*(a2 + 56) + 288 * v14, v36);
        if (v37)
        {
          memcpy(v35, v36, sizeof(v35));
          outlined init with copy of TabItem?(&v35[6], a3);
          outlined destroy of TabItemGroup(v35);
        }

        else
        {
          v31 = *&v36[80];
          *(a3 + 64) = *&v36[64];
          *(a3 + 80) = v31;
          *(a3 + 96) = *&v36[96];
          v32 = *&v36[16];
          *a3 = *v36;
          *(a3 + 16) = v32;
          result = *&v36[48];
          *(a3 + 32) = *&v36[32];
          *(a3 + 48) = result;
        }

        return result;
      }
    }

    else
    {
    }
  }

  static Log.tabView.getter();
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v9, 1, v18) == 1)
  {
    _s2os6LoggerVSgWOhTm_0(v9, type metadata accessor for Logger?);
  }

  else
  {
    v20 = a1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v34 = v22;
      v23 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35[0] = v33;
      *v23 = 136315138;
      if (a1)
      {
        v24 = [v20 title];
        a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      *v36 = a1;
      *&v36[8] = v26;
      type metadata accessor for TabItem?(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      v27 = String.init<A>(describing:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v35);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_18BD4A000, v21, v34, "Couldn't find element for tab\n'%s'", v23, 0xCu);
      v30 = v33;
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x18D0110E0](v30, -1, -1);
      MEMORY[0x18D0110E0](v23, -1, -1);
    }

    (*(v19 + 8))(v9, v18);
  }

  result.n128_u64[0] = 0;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

uint64_t _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for TabItem?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t TabViewCoordinator_Phone.updateTargeting(_:for:tabCache:)(char a1, void *a2, uint64_t a3)
{
  TabViewCoordinator_Phone.getElement(for:tabCache:)(a2, a3, &v7);
  if (!*(&v8 + 1))
  {
    return _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(&v7, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
  }

  v14[5] = v12;
  v14[6] = v13;
  v14[0] = v7;
  v14[1] = v8;
  v14[3] = v10;
  v14[4] = v11;
  v14[2] = v9;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v7)
  {
    v4 = v8;
    if (v8)
    {
      v5 = *(&v7 + 1);
      LOBYTE(v7) = a1 & 1;

      dispatch thunk of AnyLocation.set(_:transaction:)();

      outlined consume of Binding<NavigationSplitViewColumn>?(v5, v4);
    }

    else
    {
    }
  }

  return outlined destroy of TabItem(v14);
}

uint64_t closure #1 in TabViewCoordinator_Phone.updatedOrder(within:newOrder:customization:tabCache:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  if (*(a2 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(*a1, a1[1]), (v12 & 1) != 0))
  {
    outlined init with copy of TabEntry(*(a2 + 56) + 288 * v11, v33);
    outlined init with copy of TabEntry(v33, v31);
    if (v32)
    {
      outlined destroy of TabEntry(v33);
      memcpy(v30, v31, sizeof(v30));
      v13 = *&v30[24];
      v14 = *&v30[32];
      v15 = v30[40];
      outlined copy of TabCustomizationID.Base();
      result = outlined destroy of TabItemGroup(v30);
    }

    else
    {
      *&v30[64] = *&v31[64];
      *&v30[80] = *&v31[80];
      *&v30[96] = *&v31[96];
      *v30 = *v31;
      *&v30[16] = *&v31[16];
      *&v30[32] = *&v31[32];
      *&v30[48] = *&v31[48];
      v13 = TabItem.resolvedCustomizationID.getter();
      v14 = v26;
      v15 = v27;
      outlined destroy of TabItem(v30);
      result = outlined destroy of TabEntry(v33);
    }

    v25 = v15 & 1;
    *a3 = v13;
    *(a3 + 8) = v14;
  }

  else
  {
    static Log.tabView.getter();
    v17 = type metadata accessor for Logger();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v8, 1, v17) == 1)
    {
      result = _s2os6LoggerVSgWOhTm_0(v8, type metadata accessor for Logger?);
    }

    else
    {

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      v29 = v20;
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v28 = v19;
        v23 = v22;
        v33[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v33);
        v24 = v28;
        _os_log_impl(&dword_18BD4A000, v28, v29, "Tab identifier %s missing from cache", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x18D0110E0](v23, -1, -1);
        MEMORY[0x18D0110E0](v21, -1, -1);
      }

      else
      {
      }

      result = (*(v18 + 8))(v8, v17);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    v25 = -1;
  }

  *(a3 + 16) = v25;
  return result;
}

id TabViewCoordinator_Phone.findRootSelectedElement(_:)(void *a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = a1;
    v4 = [v2 _selectedElement];
    if (v4)
    {
      v5 = v4;
      v6 = TabViewCoordinator_Phone.findRootSelectedElement(_:)();

      return v6;
    }
  }

  return a1;
}

id specialized TabViewCoordinator_Phone.host(for:child:searchAdjustment:)(uint64_t a1, uint64_t a2, char a3)
{
  outlined init with copy of TabItem(a2, v19);
  v19[112] = 0;
  v19[113] = a3;
  outlined init with copy of TabItem.RootView(v19, v17);
  v4 = type metadata accessor for TabHostingController(0);
  v5 = objc_allocWithZone(v4);
  outlined init with copy of TabItem.RootView(v17, v16);
  v6 = type metadata accessor for TabHostingController.HostingView(0);
  v7 = objc_allocWithZone(v6);
  outlined init with copy of TabItem.RootView(v16, v15);
  v8 = specialized _UIHostingView.init(rootView:)(v15);
  outlined destroy of TabItem.RootView(v16);
  v9 = specialized UIHostingController.init(_hostingView:)(v8);
  outlined destroy of TabItem.RootView(v17);
  v17[0] = v9;
  v18 = 1;
  outlined init with copy of TabItem.RootView(v17, v16);
  v10 = objc_allocWithZone(v4);
  outlined init with copy of TabItem.RootView(v16, v15);
  objc_allocWithZone(v6);
  outlined init with copy of TabItem.RootView(v15, v14);
  v9;
  v11 = specialized _UIHostingView.init(rootView:)(v14);
  outlined destroy of TabItem.RootView(v15);
  v12 = specialized UIHostingController.init(_hostingView:)(v11);
  outlined destroy of TabItem.RootView(v16);
  outlined destroy of TabItem.RootView(v17);
  outlined destroy of TabItem.RootView(v19);
  return v12;
}

id specialized UIHostingController.updateCustomizationProperties(on:using:customization:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = TabItem.tabPlacement(customization:)(a3);
  if (v5 != [a1 preferredPlacement])
  {
    [a1 setPreferredPlacement_];
  }

  v6 = TabItem.visibleInSidebar(customization:)(a3);
  if (((v6 ^ [a1 isHidden]) & 1) == 0)
  {
    [a1 setHidden_];
  }

  if ((TabItem.needsCustomizationIDForEnablement.getter() & 1) != 0 && !TabItem.hasCustomizationID.getter())
  {
    result = [a1 allowsHiding];
    if ((result & 1) == 0)
    {
      return result;
    }

    v7 = 0;
    return [a1 setAllowsHiding_];
  }

  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v11 = static TabOptions.TraitKey.defaultValue;
  v12[0] = unk_1EAB09380;
  *(v12 + 9) = *(&word_1EAB09388 + 1);
  v15 = static TabOptions.TraitKey.defaultValue;
  *v16 = unk_1EAB09380;
  *&v16[9] = *(&word_1EAB09388 + 1);
  outlined init with copy of TabOptions(&v11, &v13);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v13 = v15;
  v14[0] = *v16;
  *(v14 + 9) = *&v16[9];
  outlined destroy of TabOptions(&v13);
  v15 = v9;
  *v16 = *v10;
  *&v16[9] = *&v10[9];
  outlined destroy of TabOptions(&v15);
  v7 = v16[9] == 0;
  result = [a1 allowsHiding];
  if (v7 != result)
  {
    return [a1 setAllowsHiding_];
  }

  return result;
}

id specialized UIHostingController.createBridgedTab(using:)(uint64_t a1)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v48 - v6;
  v51[0] = *(a1 + 96);
  if (ViewTraitCollection.isAuxiliaryContent.getter())
  {
    static Log.tabView.getter();
    v8 = type metadata accessor for Logger();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      _s2os6LoggerVSgWOhTm_0(v7, type metadata accessor for Logger?);
    }

    else
    {
      outlined init with copy of TabItem(a1, v51);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v56[0] = v50;
        *v14 = 136315138;
        v15 = TabItem.platformIdentifier.getter();
        v17 = v16;
        outlined destroy of TabItem(v51);
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v56);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_18BD4A000, v12, v13, "Creating UITabAction id %s", v14, 0xCu);
        v19 = v50;
        __swift_destroy_boxed_opaque_existential_1(v50);
        MEMORY[0x18D0110E0](v19, -1, -1);
        MEMORY[0x18D0110E0](v14, -1, -1);
      }

      else
      {

        outlined destroy of TabItem(v51);
      }

      (*(v9 + 8))(v7, v8);
    }

    v56[0] = *(a1 + 96);
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    ViewTraitCollection.value<A>(for:defaultValue:)();
    v28 = v52;
    v29 = v53;
    v30 = v54;
    v31 = v55;
    outlined copy of PlatformItem.SelectionContent?(v52, v53, v54, v55);
    outlined destroy of PlatformItem(v51);
    v32 = TabItem.platformIdentifier.getter();
    v34 = v33;
    v50 = v33;
    v35 = swift_allocObject();
    v35[2] = v28;
    v35[3] = v29;
    v35[4] = v30;
    v35[5] = v31;
    v36 = swift_allocObject();
    *(v36 + 16) = partial apply for closure #1 in UIHostingController.createBridgedTab(using:);
    *(v36 + 24) = v35;
    v49 = objc_allocWithZone(MEMORY[0x1E69DD788]);
    outlined copy of PlatformItem.SelectionContent?(v28, v29, v30, v31);

    v37 = MEMORY[0x18D00C850](v32, v34);
    v38 = MEMORY[0x18D00C850](0, 0xE000000000000000);
    v51[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v51[5] = v36;
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 1107296256;
    v51[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v51[3] = &block_descriptor_57;
    v39 = _Block_copy(v51);
    v40 = [v49 initWithIdentifier:v37 title:v38 image:0 handler:v39];

    _Block_release(v39);

    outlined consume of PlatformItem.SelectionContent?(v28, v29, v30, v31);
  }

  else
  {
    static Log.tabView.getter();
    v10 = type metadata accessor for Logger();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v4, 1, v10) == 1)
    {
      _s2os6LoggerVSgWOhTm_0(v4, type metadata accessor for Logger?);
    }

    else
    {
      outlined init with copy of TabItem(a1, v51);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v56[0] = v50;
        *v22 = 136315138;
        v23 = TabItem.platformIdentifier.getter();
        v25 = v24;
        outlined destroy of TabItem(v51);
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v56);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_18BD4A000, v20, v21, "Creating UITabElement id %s", v22, 0xCu);
        v27 = v50;
        __swift_destroy_boxed_opaque_existential_1(v50);
        MEMORY[0x18D0110E0](v27, -1, -1);
        MEMORY[0x18D0110E0](v22, -1, -1);
      }

      else
      {

        outlined destroy of TabItem(v51);
      }

      (*(v11 + 8))(v4, v10);
    }

    v41 = TabItem.platformIdentifier.getter();
    v43 = v42;
    v44 = objc_allocWithZone(MEMORY[0x1E69DD7A0]);
    v45 = MEMORY[0x18D00C850](v41, v43);

    v46 = MEMORY[0x18D00C850](0, 0xE000000000000000);
    v40 = [v44 initWithIdentifier:v45 title:v46 image:0];
  }

  return v40;
}

id specialized UIHostingController.createBridgedTab(using:coordinator:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TabEntry(a1, v32);
  if (v33)
  {
    memcpy(v31, v32, sizeof(v31));
    static Log.tabView.getter();
    v7 = type metadata accessor for Logger();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      _s2os6LoggerVSgWOhTm_0(v6, type metadata accessor for Logger?);
    }

    else
    {
      outlined init with copy of TabItemGroup(v31, v30);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v26 = v12;
        v28 = swift_slowAlloc();
        v29 = v28;
        *v12 = 136315138;
        v13 = v30[3];
        v14 = v30[4];
        v27 = v11;
        outlined copy of TabCustomizationID.Base();
        outlined destroy of TabItemGroup(v30);
        v15 = a2;
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v29);
        outlined consume of TabCustomizationID.Base();
        v17 = v26;
        *(v26 + 1) = v16;
        a2 = v15;
        _os_log_impl(&dword_18BD4A000, v10, v27, "Creating UITabGroup id %s", v17, 0xCu);
        v18 = v28;
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x18D0110E0](v18, -1, -1);
        MEMORY[0x18D0110E0](v17, -1, -1);
      }

      else
      {

        outlined destroy of TabItemGroup(v30);
      }

      (*(v8 + 8))(v6, v7);
    }

    v19 = *&v31[24];
    v20 = *&v31[32];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _UITabElementGroup);
    v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    outlined copy of TabCustomizationID.Base();
    v22 = MEMORY[0x18D00C850](v19, v20);
    outlined consume of TabCustomizationID.Base();
    v23 = MEMORY[0x18D00C850](0, 0xE000000000000000);
    v9 = [v21 initWithIdentifier:v22 title:v23 image:0];

    [v9 _setDelegate_];
    outlined destroy of TabItemGroup(v31);
  }

  else
  {
    *&v31[64] = *&v32[64];
    *&v31[80] = *&v32[80];
    *&v31[96] = *&v32[96];
    *v31 = *v32;
    *&v31[16] = *&v32[16];
    *&v31[32] = *&v32[32];
    *&v31[48] = *&v32[48];
    v9 = specialized UIHostingController.createBridgedTab(using:)(v31);
    outlined destroy of TabItem(v31);
  }

  return v9;
}

void specialized TabViewCoordinator_Phone.removeHosts<A>(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  if (a3 >> 1 != a2)
  {
    v5 = v3;
    v6 = a2;
    v7 = a1;
    v8 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_groupHostCache;
    v9 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
    v24 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_groupHostCache;
    while (v6 < v4)
    {
      v11 = *(v7 + 8 * v6);
      v12 = [v11 v9[163]];
      if (v12)
      {
        v13 = v12;
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v15 = [v14 identifier];
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;

          swift_beginAccess();
          v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v18);
          if (v20)
          {
            v21 = v19;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v23 = *(v5 + v8);
            *(v5 + v8) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              specialized _NativeDictionary.copy()();
            }

            specialized _NativeDictionary._delete(at:)(v21, v23);
            v8 = v24;
            *(v5 + v24) = v23;
            v7 = a1;
          }

          swift_endAccess();

          v10 = v13;
          v9 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
        }

        else
        {
          v10 = v11;
          v11 = v13;
        }
      }

      ++v6;

      if (v4 == v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

void specialized TabViewCoordinator_Phone.rebuildTabs<A>(tabBarController:tabs:selected:environment:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  *&v112 = a3;
  *(&v112 + 1) = a4;
  v111 = a2;
  type metadata accessor for Binding<SearchFieldState>?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v86 - v13;
  specialized TabViewCoordinator_Phone.updateSearchIndex<A>(tabs:)(a1);
  v15 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_viewControllers;
  swift_beginAccess();
  v95 = v15;
  v16 = *(v6 + v15);
  if (v16 >> 62)
  {
    goto LABEL_159;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v114 = v6;
  if (!v17)
  {
    v27 = MEMORY[0x1E69E7CC0];
    v123 = MEMORY[0x1E69E7CC0];
    v28 = *(a1 + 16);
    v29 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_searchIndex;
    v109 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_searchState;
    swift_beginAccess();
    v110 = v28;
    if (v28)
    {
      v30 = 0;
      v107 = v6 + v29;
      v113 = a1;
      v31 = a1 + 32;
      v108 = (&v117[16] + 8);
      v32 = MEMORY[0x1E69E7CC0];
      v11 = MEMORY[0x1E69E7CC0];
      do
      {
        *&v117[0] = v30;
        outlined init with copy of TabEntry(v31, v117 + 8);
        if (v120 == 255)
        {
          break;
        }

        v33 = v32;
        v34 = *&v117[0];
        v35 = *v108;
        v117[0] = *(v117 + 8);
        v117[1] = *(&v117[1] + 8);
        v117[2] = *(&v117[2] + 8);
        v117[3] = *(&v117[3] + 8);
        v117[4] = *(&v117[4] + 8);
        v117[5] = *(&v117[5] + 8);
        v117[6] = *(&v117[6] + 8);
        v117[7] = *(&v117[7] + 8);
        v117[8] = *(&v117[8] + 8);
        v117[9] = *(&v117[9] + 8);
        v117[10] = *(&v117[10] + 8);
        v117[11] = *(&v117[11] + 8);
        v117[12] = *(&v117[12] + 8);
        v117[13] = *(&v117[13] + 8);
        v117[14] = *(&v117[14] + 8);
        v117[15] = *(&v117[15] + 8);
        v117[16] = v35;
        v118 = v119;
        LOBYTE(v119) = v120;
        outlined init with copy of UIKitAdaptableTabView(v114 + v109, v14, type metadata accessor for Binding<SearchFieldState>?);
        type metadata accessor for Binding<SearchFieldState>(0);
        v37 = 1;
        v38 = (*(*(v36 - 8) + 48))(v14, 1, v36);
        _s2os6LoggerVSgWOhTm_0(v14, type metadata accessor for Binding<SearchFieldState>?);
        if (v38 != 1)
        {
          if (*(v107 + 8))
          {
            v37 = 2;
          }

          else if (*v107 == v34)
          {
            v37 = 2;
          }

          else
          {
            v37 = 1;
          }
        }

        specialized TabViewCoordinator_Phone.host<A>(tab:tabs:searchAdjustment:selected:environment:)(v117, v113, v37, v111, v112, *(&v112 + 1));
        MEMORY[0x18D00CC30]();
        if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = v123;
        outlined init with copy of TabEntry(v117, v125);
        if (v126)
        {
          memcpy(v124, v125, 0x118uLL);
          v115 = *(&v124[1] + 1);
          v116 = *&v124[2];
          outlined copy of TabCustomizationID.Base();
          AnyHashable.init<A>(_:)();
          outlined destroy of TabItemGroup(v124);
        }

        else
        {
          v124[4] = *&v125[64];
          v124[5] = *&v125[80];
          v124[6] = *&v125[96];
          v124[0] = *v125;
          v124[1] = *&v125[16];
          v124[2] = *&v125[32];
          v124[3] = *&v125[48];
          _ViewList_View.viewID.getter();
          outlined destroy of TabItem(v124);
        }

        *v125 = v127;
        *&v125[16] = v128;
        *&v125[32] = v129;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
        }

        v40 = *(v33 + 2);
        v39 = *(v33 + 3);
        v41 = v33;
        if (v40 >= v39 >> 1)
        {
          v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v33);
        }

        ++v30;
        outlined destroy of TabEntry(v117);
        *(v41 + 2) = v40 + 1;
        v32 = v41;
        v42 = &v41[40 * v40];
        v43 = *&v125[32];
        v44 = *&v125[16];
        *(v42 + 2) = *v125;
        *(v42 + 3) = v44;
        *(v42 + 8) = v43;
        v31 += 288;
      }

      while (v110 != v30);
    }

    else
    {
      v11 = v27;
      v32 = v27;
    }

    v6 = v114;
    goto LABEL_140;
  }

  v92 = a5;
  v18 = *(a1 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  v98 = v18;
  v113 = a1;
  if (v18)
  {
    v115 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v20 = v115;
    v21 = a1 + 32;
    do
    {
      outlined init with copy of TabEntry(v21, v117);
      outlined init with copy of TabEntry(v117, v125);
      if (v126)
      {
        memcpy(v124, v125, 0x118uLL);
        v121 = *(&v124[1] + 1);
        v122 = *&v124[2];
        outlined copy of TabCustomizationID.Base();
        AnyHashable.init<A>(_:)();
        outlined destroy of TabItemGroup(v124);
      }

      else
      {
        v124[4] = *&v125[64];
        v124[5] = *&v125[80];
        v124[6] = *&v125[96];
        v124[0] = *v125;
        v124[1] = *&v125[16];
        v124[2] = *&v125[32];
        v124[3] = *&v125[48];
        _ViewList_View.viewID.getter();
        outlined destroy of TabItem(v124);
      }

      outlined destroy of TabEntry(v117);
      *v125 = v127;
      *&v125[16] = v128;
      *&v125[32] = v129;
      v115 = v20;
      v23 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v20 = v115;
      }

      *(v20 + 16) = v23 + 1;
      v24 = v20 + 40 * v23;
      v25 = *v125;
      v26 = *&v125[16];
      *(v24 + 64) = *&v125[32];
      *(v24 + 32) = v25;
      *(v24 + 48) = v26;
      v21 += 288;
      --v18;
    }

    while (v18);
    v6 = v114;
    v19 = MEMORY[0x1E69E7CC0];
    v18 = v98;
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  *v125 = *(v6 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_currentTabIdentifiers);
  v106 = v20;
  *&v124[0] = v20;
  *&v117[0] = v19;
  type metadata accessor for CollectionChanges<Int, Int>();
  a1 = MEMORY[0x1E69E69B8];
  type metadata accessor for TabItem?(0, &lazy cache variable for type metadata for [AnyHashable], MEMORY[0x1E69E69B8], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [AnyHashable] and conformance [A](&lazy protocol witness table cache variable for type [AnyHashable] and conformance [A], &lazy cache variable for type metadata for [AnyHashable], a1);
  CollectionChanges.formChanges<A, B>(from:to:)();
  v14 = *&v117[0];
  v45 = *(v6 + v95);

  v46 = _sSa9repeating5countSayxGx_SitcfCSo16UIViewControllerCSg_Tt1g5Tf4gn_n(0, v18);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v46 = specialized _ArrayBuffer._consumeAndCreateNew()();
  }

  v47 = *(v14 + 2);
  if (v45 < 0)
  {
    v48 = v45;
  }

  else
  {
    v48 = v45 & 0xFFFFFFFFFFFFFF8;
  }

  v99 = v48;
  v32 = v106;
  v105 = v47;
  if (!v47)
  {
    goto LABEL_130;
  }

  v49 = 0;
  v109 = v6 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_searchIndex;
  v103 = v14 + 32;
  v97 = v113 + 32;
  v110 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_searchState;
  v100 = v45 & 0xC000000000000001;
  v101 = v45 & 0xFFFFFFFFFFFFFF8;
  v96 = (v45 & 0xFFFFFFFFFFFFFF8) + 32;
  v91 = v45 + 32;
  v107 = v45 >> 62;
  v104 = v45;
  v102 = v14;
  while (2)
  {
    a5 = v46 + 32;
    while (1)
    {
      if (v49 >= *(v14 + 2))
      {
        goto LABEL_144;
      }

      v52 = &v103[40 * v49];
      a1 = *v52;
      v53 = *(v52 + 1);
      v54 = v52[32];
      v108 = (v49 + 1);
      if (!v54)
      {
        if (v107)
        {
          v67 = __CocoaSet.count.getter();
          v60 = v101;
          if (v67 < a1)
          {
            goto LABEL_145;
          }
        }

        else
        {
          v60 = v101;
          if (*(v101 + 16) < a1)
          {
            goto LABEL_145;
          }
        }

        if (a1 < 0)
        {
          goto LABEL_146;
        }

        if (v107)
        {
          v61 = __CocoaSet.count.getter();
        }

        else
        {
          v61 = *(v60 + 16);
        }

        if (v61 < v53)
        {
          goto LABEL_147;
        }

        if (v53 < 0)
        {
          goto LABEL_148;
        }

        if (!v100)
        {
          goto LABEL_76;
        }

        if (v53 < a1)
        {
          goto LABEL_149;
        }

        if (v53 != a1)
        {
          if (v53 <= a1)
          {
            goto LABEL_152;
          }

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);

          v62 = a1;
          do
          {
            v63 = v62 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v62);
            v62 = v63;
          }

          while (v53 != v63);
        }

        else
        {
LABEL_76:
        }

        if (v107)
        {

          _CocoaArrayWrapper.subscript.getter();
          v51 = v64;
          a1 = v65;
          v50 = v66;
        }

        else
        {
          v50 = (2 * v53) | 1;
          v51 = v96;
        }

        specialized TabViewCoordinator_Phone.removeHosts<A>(_:)(v51, a1, v50);
        swift_unknownObjectRelease();
        goto LABEL_44;
      }

      if (v54 != 1)
      {
        break;
      }

      if (v53 != a1)
      {
        if (v53 < a1)
        {
          goto LABEL_150;
        }

        if (v53 > a1)
        {
          swift_beginAccess();
          if (a1 <= v98)
          {
            v14 = v98;
          }

          else
          {
            v14 = a1;
          }

          v55 = v97 + 288 * a1;
          while (1)
          {
            outlined init with copy of UIKitAdaptableTabView(v6 + v110, v11, type metadata accessor for Binding<SearchFieldState>?);
            type metadata accessor for Binding<SearchFieldState>(0);
            v57 = 1;
            v6 = (*(*(v56 - 8) + 48))(v11, 1, v56);
            _s2os6LoggerVSgWOhTm_0(v11, type metadata accessor for Binding<SearchFieldState>?);
            if (v6 != 1)
            {
              if (*(v109 + 8))
              {
                v57 = 2;
              }

              else if (a1 == *v109)
              {
                v57 = 2;
              }

              else
              {
                v57 = 1;
              }
            }

            if (v14 == a1)
            {
              break;
            }

            v6 = v114;
            v58 = specialized TabViewCoordinator_Phone.host<A>(tab:tabs:searchAdjustment:selected:environment:)(v55, v113, v57, v111, v112, *(&v112 + 1));
            if (a1 >= *(v46 + 16))
            {
              goto LABEL_142;
            }

            v59 = *(a5 + 8 * a1);
            *(a5 + 8 * a1) = v58;

            v55 += 288;
            if (v53 == ++a1)
            {
              goto LABEL_44;
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
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
        }

        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        v17 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

LABEL_44:
      v32 = v106;
      v49 = v108;
      v14 = v102;
      if (v108 == v105)
      {
        goto LABEL_130;
      }
    }

    v68 = *(v52 + 2);
    v94 = *(v52 + 3);
    if (!v107)
    {
      v69 = v101;
      if (*(v101 + 16) >= a1)
      {
        goto LABEL_86;
      }

LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    v84 = __CocoaSet.count.getter();
    v69 = v101;
    if (v84 < a1)
    {
      goto LABEL_160;
    }

LABEL_86:
    if (a1 < 0)
    {
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
      goto LABEL_163;
    }

    if (v107)
    {
      v70 = __CocoaSet.count.getter();
    }

    else
    {
      v70 = *(v69 + 16);
    }

    if (v70 < v53)
    {
      goto LABEL_162;
    }

    if (v53 < 0)
    {
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    if (!v100)
    {
      goto LABEL_95;
    }

    if (v53 < a1)
    {
      goto LABEL_167;
    }

    if (v53 != a1)
    {
      if (v53 > a1)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);

        v71 = a1;
        do
        {
          v72 = v71 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v71);
          v71 = v72;
        }

        while (v53 != v72);
        goto LABEL_99;
      }

LABEL_169:
      __break(1u);
      return;
    }

LABEL_95:

LABEL_99:
    if (v107)
    {

      v73 = _CocoaArrayWrapper.subscript.getter();
      v89 = v74;
      v90 = v73;
      v87 = v76;
      v88 = v75;
    }

    else
    {
      v89 = v96;
      v90 = v101;
      v87 = (2 * v53) | 1;
      v88 = a1;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = specialized _ArrayBuffer._consumeAndCreateNew()();
    }

    v14 = (v53 - a1);
    v77 = v94;
    if (v53 != a1)
    {
      if (v53 >= a1)
      {
        v78 = 0;
        if (v68 <= v94)
        {
          v79 = v94;
        }

        else
        {
          v79 = v68;
        }

        v93 = v91 + 8 * a1;
        v6 = v79 - v68;
        a5 = v94 - v68;
        v80 = v46 + 8 * v68 + 32;
        while (v14 != v78)
        {
          if (a5 == v78)
          {
            goto LABEL_105;
          }

          if (v77 < v68)
          {
            goto LABEL_154;
          }

          if (v6 == v78)
          {
            goto LABEL_155;
          }

          v81 = &v78[a1];
          if (v100)
          {
            v82 = MEMORY[0x18D00E9C0](v81, v104);
            if (v68 < 0)
            {
              goto LABEL_156;
            }
          }

          else
          {
            if (v81 >= *(v101 + 16))
            {
              goto LABEL_157;
            }

            v82 = *(v93 + 8 * v78);
            if (v68 < 0)
            {
              goto LABEL_156;
            }
          }

          if (&v78[v68] >= *(v46 + 16))
          {
            goto LABEL_158;
          }

          v83 = *(v80 + 8 * v78);
          *(v80 + 8 * v78) = v82;

          ++v78;
          v77 = v94;
          if (v14 == v78)
          {
            goto LABEL_106;
          }
        }

        goto LABEL_153;
      }

      goto LABEL_168;
    }

LABEL_105:
    if (v68 < 0)
    {
      goto LABEL_164;
    }

LABEL_106:
    if (v98 < v68 || v98 < v77)
    {
      goto LABEL_165;
    }

    v6 = v114;
    v14 = v102;
    if (v77 < 0)
    {
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
      goto LABEL_169;
    }

    specialized TabViewCoordinator_Phone.updateHosts<A, B>(_:tabs:selected:environment:transaction:)(v90, v89, v88, v87, v113, v97, v68, (2 * v77) | 1, v111, v112, v92);
    swift_unknownObjectRelease();
    v32 = v106;
    v49 = v108;
    if (v108 != v105)
    {
      continue;
    }

    break;
  }

LABEL_130:

  a5 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *v125 = MEMORY[0x1E69E7CC0];
  a1 = *(v46 + 16);
  while (a1 != a5)
  {
    if (a5 >= *(v46 + 16))
    {
      goto LABEL_143;
    }

    v85 = *(v46 + 8 * a5++ + 32);
    if (v85)
    {
      v14 = v85;
      MEMORY[0x18D00CC30]();
      if (*((*v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v11 = *v125;
      v32 = v106;
    }
  }

LABEL_140:
  *(v6 + v95) = v11;

  *(v6 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_currentTabIdentifiers) = v32;
}

uint64_t specialized TabViewCoordinator_Phone.operationToAcceptDropItems(from:onto:tabCache:)(void *a1, uint64_t a2)
{
  TabViewCoordinator_Phone.getElement(for:tabCache:)(a1, a2, v6);
  if (v7)
  {
    ViewTraitCollection.value<A>(for:defaultValue:)();
    outlined destroy of TabItem(v6);
    if (v3)
    {
      outlined consume of TabDropConfiguration?(v3, v4, v5);
      return 2;
    }
  }

  else
  {
    _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(v6, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
  }

  return 0;
}

uint64_t specialized TabViewCoordinator_Phone.updatedSidebarVisibility(for:customization:tabCache:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v50 = type metadata accessor for TabViewCustomization();
  MEMORY[0x1EEE9AC00](v50);
  v56 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<TabViewCustomization>(0);
  v54 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.tabView.getter();
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);
  v53 = a1;
  if (v17 == 1)
  {
    _s2os6LoggerVSgWOhTm_0(v14, type metadata accessor for Logger?);
  }

  else
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_18BD4A000, v18, v19, "visibilityDidChange:forTabs:", v20, 2u);
      MEMORY[0x18D0110E0](v20, -1, -1);
    }

    (*(v16 + 8))(v14, v15);
    a1 = v53;
  }

  v21 = v55;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 1)
    {
      return result;
    }

LABEL_8:
    outlined init with copy of UIKitAdaptableTabView(a2, v8, type metadata accessor for Binding<TabViewCustomization>?);
    if ((*(v10 + 48))(v8, 1, v54) == 1)
    {
      v23 = type metadata accessor for Binding<TabViewCustomization>?;
      v24 = v8;
      return _s2os6LoggerVSgWOhTm_0(v24, v23);
    }

    result = outlined init with take of Binding<TabViewCustomization>(v8, v21, type metadata accessor for Binding<TabViewCustomization>);
    v25 = v52;
    if (v52)
    {
      if (!(a1 >> 62))
      {
        v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          goto LABEL_41;
        }

        goto LABEL_15;
      }

      result = __CocoaSet.count.getter();
      v26 = result;
      if (result)
      {
LABEL_15:
        if (v26 < 1)
        {
          __break(1u);
          return result;
        }

        v27 = 0;
        v57 = a1 & 0xC000000000000001;
        do
        {
          if (v57)
          {
            v28 = MEMORY[0x18D00E9C0](v27, a1);
          }

          else
          {
            v28 = *(a1 + 8 * v27 + 32);
          }

          v29 = v28;
          v30 = [v28 identifier];
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          if (*(v25 + 16))
          {
            v34 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v33);
            v36 = v35;

            if (v36)
            {
              outlined init with copy of TabEntry(*(v25 + 56) + 288 * v34, v70);
              memcpy(v71, v70, 0x119uLL);
              v51 = [v29 isHidden];
              outlined init with copy of TabEntry(v71, v70);
              if (BYTE8(v70[17]))
              {
                memcpy(v69, v70, 0x118uLL);
                v38 = *(&v69[1] + 1);
                v37 = *&v69[2];
                LOBYTE(v39) = BYTE8(v69[2]);
                outlined copy of TabCustomizationID.Base();
                outlined destroy of TabItemGroup(v69);
              }

              else
              {
                v69[4] = v70[4];
                v69[5] = v70[5];
                v69[6] = v70[6];
                v69[0] = v70[0];
                v69[1] = v70[1];
                v69[2] = v70[2];
                v69[3] = v70[3];
                if ((TabItem.needsCustomizationIDForEnablement.getter() & 1) == 0)
                {
                  goto LABEL_31;
                }

                v60 = *&v69[6];
                if (one-time initialization token for defaultValue != -1)
                {
                  swift_once();
                }

                v63 = static TabOptions.TraitKey.defaultValue;
                v64[0] = unk_1EAB09380;
                *(v64 + 9) = *(&word_1EAB09388 + 1);
                v58 = static TabOptions.TraitKey.defaultValue;
                v59[0] = unk_1EAB09380;
                *(v59 + 9) = *(&word_1EAB09388 + 1);
                outlined init with copy of TabOptions(&v63, &v61);
                ViewTraitCollection.value<A>(for:defaultValue:)();
                v65 = v58;
                v66[0] = v59[0];
                *(v66 + 9) = *(v59 + 9);
                outlined destroy of TabOptions(&v65);
                v67 = v61;
                v68[0] = *v62;
                *(v68 + 9) = *&v62[9];
                v38 = *(&v61 + 1);
                v37 = *v62;
                v39 = v62[8];
                outlined copy of TabCustomizationID?(*(&v61 + 1), *v62, v62[8]);
                outlined destroy of TabOptions(&v67);
                if (v39 == 255)
                {
LABEL_31:
                  v38 = TabItem.platformIdentifier.getter();
                  v37 = v40;
                  LOBYTE(v39) = 1;
                }

                outlined destroy of TabItem(v69);
              }

              v41 = v56;
              MEMORY[0x18D00ACC0](v54);
              v42 = *(v50 + 20);
              v43 = *&v41[v42];
              if (*(v43 + 16) && (v44 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v37, v39 & 1), (v45 & 1) != 0))
              {
                v46 = *(*(v43 + 56) + 2 * v44 + 1);
              }

              else
              {
                v46 = 0;
              }

              v47 = v56;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v70[0] = *(v47 + v42);
              if (v51)
              {
                v49 = 2;
              }

              else
              {
                v49 = 1;
              }

              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v49 | (v46 << 8), v38, v37, v39 & 1, isUniquelyReferenced_nonNull_native);
              outlined consume of TabCustomizationID.Base();
              *(v47 + v42) = *&v70[0];
              v21 = v55;
              dispatch thunk of AnyLocation.set(_:transaction:)();

              _s2os6LoggerVSgWOhTm_0(v47, type metadata accessor for TabViewCustomization);
              outlined destroy of TabEntry(v71);
              v25 = v52;
              a1 = v53;
              goto LABEL_19;
            }
          }

          else
          {
          }

LABEL_19:
          ++v27;
        }

        while (v26 != v27);
      }
    }

LABEL_41:
    v23 = type metadata accessor for Binding<TabViewCustomization>;
    v24 = v21;
    return _s2os6LoggerVSgWOhTm_0(v24, v23);
  }

  result = __CocoaSet.count.getter();
  if (result >= 1)
  {
    goto LABEL_8;
  }

  return result;
}

void specialized TabViewCoordinator_Phone.updatedSelection(didSelect:element:selectionCache:)(void *a1, uint64_t a2)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.tabView.getter();
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    _s2os6LoggerVSgWOhTm_0(v7, type metadata accessor for Logger?);
  }

  else
  {
    v25 = v2;
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v24 = a1;
      v14 = v13;
      v23 = swift_slowAlloc();
      v26 = v23;
      *v14 = 136315138;
      v15 = [v10 title];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = a2;
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v19, &v26);
      a2 = v17;

      *(v14 + 4) = v20;
      _os_log_impl(&dword_18BD4A000, v11, v12, "group: didSelect element: %s", v14, 0xCu);
      v21 = v23;
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x18D0110E0](v21, -1, -1);
      v22 = v14;
      a1 = v24;
      MEMORY[0x18D0110E0](v22, -1, -1);
    }

    (*(v9 + 8))(v7, v8);
  }

  TabViewCoordinator_Phone.getIndex(selectedElement:selectionCache:)(a1, a2);
}

uint64_t specialized TabViewCoordinator_Phone.updatedOrder(within:newOrder:customization:tabCache:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = a4;
  *&v71 = a3;
  v69 = a1;
  v5 = type metadata accessor for TabViewCustomization();
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<TabViewCustomization>(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.tabView.getter();
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v17, 1, v18);
  v66 = a2;
  if (v20 == 1)
  {
    _s2os6LoggerVSgWOhTm_0(v17, type metadata accessor for Logger?);
    v21 = v71;
  }

  else
  {
    v70 = v11;
    v22 = v14;
    v67 = v5;

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    v64 = v24;
    v65 = v23;
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v63 = v22;
      v26 = v25;
      v62 = swift_slowAlloc();
      v76[0] = v62;
      *v26 = 136315138;
      v27 = MEMORY[0x18D00CC60](a2, MEMORY[0x1E69E6158]);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v76);

      *(v26 + 4) = v29;
      v11 = v70;
      v30 = v65;
      _os_log_impl(&dword_18BD4A000, v65, v64, "group: didCustomizeDisplayOrder %s", v26, 0xCu);
      v31 = v62;
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x18D0110E0](v31, -1, -1);
      v32 = v26;
      v14 = v63;
      MEMORY[0x18D0110E0](v32, -1, -1);
    }

    else
    {

      v14 = v22;
      v11 = v70;
    }

    (*(v19 + 8))(v17, v18);
    v21 = v71;
    v5 = v67;
  }

  outlined init with copy of UIKitAdaptableTabView(v21, v9, type metadata accessor for Binding<TabViewCustomization>?);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    v33 = type metadata accessor for Binding<TabViewCustomization>?;
    v34 = v9;
  }

  else
  {
    outlined init with take of Binding<TabViewCustomization>(v9, v14, type metadata accessor for Binding<TabViewCustomization>);
    v35 = v72;
    if (v72)
    {
      v70 = v11;
      v36 = [v69 identifier];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      if (*(v35 + 16))
      {
        v40 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v39);
        v42 = v41;

        if (v42)
        {
          v67 = v5;
          v63 = v14;
          outlined init with copy of TabEntry(*(v35 + 56) + 288 * v40, v76);
          v43 = *(v66 + 16);
          if (v43)
          {
            v44 = (v66 + 40);
            v45 = MEMORY[0x1E69E7CC0];
            do
            {
              v47 = *v44;
              *&v73[0] = *(v44 - 1);
              *(&v73[0] + 1) = v47;

              closure #1 in TabViewCoordinator_Phone.updatedOrder(within:newOrder:customization:tabCache:)(v73, v35, v74);

              v48 = v74[16];
              if (v74[16] != 255)
              {
                v71 = *v74;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 2) + 1, 1, v45);
                }

                v50 = *(v45 + 2);
                v49 = *(v45 + 3);
                if (v50 >= v49 >> 1)
                {
                  v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v45);
                }

                *(v45 + 2) = v50 + 1;
                v46 = &v45[24 * v50];
                *(v46 + 2) = v71;
                v46[48] = v48 & 1;
                v35 = v72;
              }

              v44 += 2;
              --v43;
            }

            while (v43);
          }

          else
          {
            v45 = MEMORY[0x1E69E7CC0];
          }

          outlined init with copy of TabEntry(v76, v74);
          v14 = v63;
          if (v75)
          {
            memcpy(v73, v74, 0x118uLL);
            v51 = *(&v73[1] + 1);
            v52 = *&v73[2];
            v53 = BYTE8(v73[2]);
            outlined copy of TabCustomizationID.Base();
            outlined destroy of TabItemGroup(v73);
          }

          else
          {
            v73[4] = *&v74[64];
            v73[5] = *&v74[80];
            v73[6] = *&v74[96];
            v73[0] = *v74;
            v73[1] = *&v74[16];
            v73[2] = *&v74[32];
            v73[3] = *&v74[48];
            v51 = TabItem.resolvedCustomizationID.getter();
            v52 = v54;
            v53 = v55;
            outlined destroy of TabItem(v73);
          }

          MEMORY[0x18D00ACC0](v70);
          if (*(v45 + 2))
          {
            v56 = v68;
            v57 = *(v67 + 24);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v74 = *&v56[v57];
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v51, v52, v53 & 1, isUniquelyReferenced_nonNull_native);
            outlined consume of TabCustomizationID.Base();
            *&v56[v57] = *v74;
          }

          else
          {

            specialized Dictionary._Variant.removeValue(forKey:)(v51, v52, v53 & 1);

            outlined consume of TabCustomizationID.Base();
          }

          v59 = v68;
          dispatch thunk of AnyLocation.set(_:transaction:)();
          _s2os6LoggerVSgWOhTm_0(v59, type metadata accessor for TabViewCustomization);
          outlined destroy of TabEntry(v76);
        }
      }

      else
      {
      }
    }

    v33 = type metadata accessor for Binding<TabViewCustomization>;
    v34 = v14;
  }

  return _s2os6LoggerVSgWOhTm_0(v34, v33);
}

uint64_t outlined init with copy of UIKitAdaptableTabView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined consume of TabDropConfiguration?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    outlined consume of Binding<NavigationSplitViewColumn>?(a2, a3);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PrimitiveAdaptableTabView.BodyContent(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    type metadata accessor for Environment<Binding<TabViewCustomization>?>.Content(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for Binding<TabViewCustomization>(0);
      v8 = v7;
      v9 = *(v7 - 8);
      if ((*(v9 + 48))(a2, 1, v7))
      {
        type metadata accessor for Binding<TabViewCustomization>?(0);
        memcpy(a1, a2, *(*(v10 - 8) + 64));
      }

      else
      {
        v12 = a2[1];
        *a1 = *a2;
        a1[1] = v12;
        v13 = *(v8 + 32);
        v14 = a1 + v13;
        v15 = a2 + v13;
        v16 = type metadata accessor for UUID();
        v59 = *(*(v16 - 8) + 16);

        v59(v14, v15, v16);
        v17 = type metadata accessor for TabViewCustomization();
        *&v14[*(v17 + 20)] = *&v15[*(v17 + 20)];
        *&v14[*(v17 + 24)] = *&v15[*(v17 + 24)];
        v18 = *(v9 + 56);

        v18(a1, 0, 1, v8);
      }
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
    v19 = a3[5];
    v20 = a1 + v19;
    v21 = a2 + v19;
    v22 = *v21;
    v23 = v21[8];
    outlined copy of Environment<Selector?>.Content(*v21, v23);
    *v20 = v22;
    v20[8] = v23;
    v24 = a3[6];
    v25 = a1 + v24;
    v26 = a2 + v24;
    v27 = *v26;
    v28 = v26[8];
    outlined copy of Environment<Selector?>.Content(*v26, v28);
    *v25 = v27;
    v25[8] = v28;
    v29 = a3[7];
    v30 = a1 + v29;
    v31 = a2 + v29;
    v32 = *v31;
    v33 = v31[8];
    outlined copy of Environment<Selector?>.Content(*v31, v33);
    *v30 = v32;
    v30[8] = v33;
    v34 = a3[8];
    v35 = a1 + v34;
    v36 = a2 + v34;
    v37 = *v36;
    v38 = v36[8];
    outlined copy of Environment<Selector?>.Content(*v36, v38);
    *v35 = v37;
    v35[8] = v38;
    v39 = a3[9];
    v40 = (a1 + v39);
    v41 = (a2 + v39);
    v42 = *(a2 + v39 + 24);
    *(a1 + v39 + 24) = v42;
    (**(v42 - 8))(a1 + v39, a2 + v39);
    v43 = v41[5];
    v44 = v41[6];
    v40[5] = v43;
    v40[6] = v44;
    v40[7] = v41[7];
    v45 = a3[10];
    v46 = a3[11];
    v47 = (a1 + v45);
    v48 = (a2 + v45);
    v49 = v48[1];
    *v47 = *v48;
    v47[1] = v49;
    v47[2] = v48[2];
    v50 = a1 + v46;
    v51 = a2 + v46;
    *(a1 + v46) = *(a2 + v46);
    v52 = a1 + v46 + 8;
    v53 = *(a2 + v46 + 16);
    v54 = v43;

    if (v53)
    {
      *(v50 + 1) = *(v51 + 1);
      *(v50 + 2) = v53;
      v50[24] = v51[24];
    }

    else
    {
      *v52 = *(v51 + 8);
      *(v52 + 16) = v51[24];
    }

    v55 = *(v51 + 4);
    if (v55 == 1)
    {
      *(v50 + 2) = *(v51 + 2);
      *(v50 + 6) = *(v51 + 6);
    }

    else
    {
      v56 = *(v51 + 5);
      v57 = *(v51 + 6);
      *(v50 + 4) = v55;
      *(v50 + 5) = v56;
      *(v50 + 6) = v57;
    }

    v50[56] = v51[56];
    *(a1 + a3[12]) = *(a2 + a3[12]);
  }

  return a1;
}

uint64_t destroy for PrimitiveAdaptableTabView.BodyContent(uint64_t a1, int *a2)
{
  type metadata accessor for Environment<Binding<TabViewCustomization>?>.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Binding<TabViewCustomization>(0);
    v5 = v4;
    if (!(*(*(v4 - 8) + 48))(a1, 1, v4))
    {

      v6 = a1 + *(v5 + 32);
      v7 = type metadata accessor for UUID();
      (*(*(v7 - 8) + 8))(v6, v7);
      type metadata accessor for TabViewCustomization();
    }
  }

  else
  {
  }

  outlined consume of Environment<Selector?>.Content(*(a1 + a2[5]), *(a1 + a2[5] + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + a2[6]), *(a1 + a2[6] + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + a2[7]), *(a1 + a2[7] + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + a2[8]), *(a1 + a2[8] + 8));
  v8 = a1 + a2[9];
  __swift_destroy_boxed_opaque_existential_1(v8);

  v9 = a1 + a2[11];
  if (*(v9 + 16))
  {
  }

  if (*(v9 + 32) != 1)
  {
  }
}

void *initializeWithCopy for PrimitiveAdaptableTabView.BodyContent(void *a1, void *a2, int *a3)
{
  type metadata accessor for Environment<Binding<TabViewCustomization>?>.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Binding<TabViewCustomization>(0);
    v7 = v6;
    v8 = *(v6 - 8);
    if ((*(v8 + 48))(a2, 1, v6))
    {
      type metadata accessor for Binding<TabViewCustomization>?(0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      v10 = a2[1];
      *a1 = *a2;
      a1[1] = v10;
      v11 = *(v7 + 32);
      v12 = a1 + v11;
      v13 = a2 + v11;
      v14 = type metadata accessor for UUID();
      v57 = *(*(v14 - 8) + 16);

      v57(v12, v13, v14);
      v15 = type metadata accessor for TabViewCustomization();
      *&v12[*(v15 + 20)] = *&v13[*(v15 + 20)];
      *&v12[*(v15 + 24)] = *&v13[*(v15 + 24)];
      v16 = *(v8 + 56);

      v16(a1, 0, 1, v7);
    }
  }

  else
  {
    *a1 = *a2;
  }

  swift_storeEnumTagMultiPayload();
  v17 = a3[5];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *v19;
  v21 = v19[8];
  outlined copy of Environment<Selector?>.Content(*v19, v21);
  *v18 = v20;
  v18[8] = v21;
  v22 = a3[6];
  v23 = a1 + v22;
  v24 = a2 + v22;
  v25 = *v24;
  v26 = v24[8];
  outlined copy of Environment<Selector?>.Content(*v24, v26);
  *v23 = v25;
  v23[8] = v26;
  v27 = a3[7];
  v28 = a1 + v27;
  v29 = a2 + v27;
  v30 = *v29;
  v31 = v29[8];
  outlined copy of Environment<Selector?>.Content(*v29, v31);
  *v28 = v30;
  v28[8] = v31;
  v32 = a3[8];
  v33 = a1 + v32;
  v34 = a2 + v32;
  v35 = *v34;
  v36 = v34[8];
  outlined copy of Environment<Selector?>.Content(*v34, v36);
  *v33 = v35;
  v33[8] = v36;
  v37 = a3[9];
  v38 = (a1 + v37);
  v39 = (a2 + v37);
  v40 = *(a2 + v37 + 24);
  *(a1 + v37 + 24) = v40;
  (**(v40 - 8))(a1 + v37, a2 + v37);
  v41 = v39[5];
  v42 = v39[6];
  v38[5] = v41;
  v38[6] = v42;
  v38[7] = v39[7];
  v43 = a3[10];
  v44 = a3[11];
  v45 = (a1 + v43);
  v46 = (a2 + v43);
  v47 = v46[1];
  *v45 = *v46;
  v45[1] = v47;
  v45[2] = v46[2];
  v48 = a1 + v44;
  v49 = a2 + v44;
  *(a1 + v44) = *(a2 + v44);
  v50 = a1 + v44 + 8;
  v51 = *(a2 + v44 + 16);
  v52 = v41;

  if (v51)
  {
    *(v48 + 1) = *(v49 + 1);
    *(v48 + 2) = v51;
    v48[24] = v49[24];
  }

  else
  {
    *v50 = *(v49 + 8);
    *(v50 + 16) = v49[24];
  }

  v53 = *(v49 + 4);
  if (v53 == 1)
  {
    *(v48 + 2) = *(v49 + 2);
    *(v48 + 6) = *(v49 + 6);
  }

  else
  {
    v54 = *(v49 + 5);
    v55 = *(v49 + 6);
    *(v48 + 4) = v53;
    *(v48 + 5) = v54;
    *(v48 + 6) = v55;
  }

  v48[56] = v49[56];
  *(a1 + a3[12]) = *(a2 + a3[12]);

  return a1;
}

void *assignWithCopy for PrimitiveAdaptableTabView.BodyContent(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    _s2os6LoggerVSgWOhTm_0(a1, type metadata accessor for Environment<Binding<TabViewCustomization>?>.Content);
    type metadata accessor for Environment<Binding<TabViewCustomization>?>.Content(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for Binding<TabViewCustomization>(0);
      v7 = v6;
      v8 = *(v6 - 8);
      if ((*(v8 + 48))(a2, 1, v6))
      {
        type metadata accessor for Binding<TabViewCustomization>?(0);
        memcpy(a1, a2, *(*(v9 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        a1[1] = a2[1];
        v10 = *(v7 + 32);
        v11 = a1 + v10;
        v12 = a2 + v10;
        v13 = type metadata accessor for UUID();
        v66 = *(*(v13 - 8) + 16);

        v66(v11, v12, v13);
        v14 = type metadata accessor for TabViewCustomization();
        *&v11[*(v14 + 20)] = *&v12[*(v14 + 20)];
        *&v11[*(v14 + 24)] = *&v12[*(v14 + 24)];
        v15 = *(v8 + 56);

        v15(a1, 0, 1, v7);
      }
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  v16 = a3[5];
  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = *v18;
  v20 = v18[8];
  outlined copy of Environment<Selector?>.Content(*v18, v20);
  v21 = *v17;
  v22 = v17[8];
  *v17 = v19;
  v17[8] = v20;
  outlined consume of Environment<Selector?>.Content(v21, v22);
  v23 = a3[6];
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = *v25;
  v27 = v25[8];
  outlined copy of Environment<Selector?>.Content(*v25, v27);
  v28 = *v24;
  v29 = v24[8];
  *v24 = v26;
  v24[8] = v27;
  outlined consume of Environment<Selector?>.Content(v28, v29);
  v30 = a3[7];
  v31 = a1 + v30;
  v32 = a2 + v30;
  v33 = *v32;
  v34 = v32[8];
  outlined copy of Environment<Selector?>.Content(*v32, v34);
  v35 = *v31;
  v36 = v31[8];
  *v31 = v33;
  v31[8] = v34;
  outlined consume of Environment<Selector?>.Content(v35, v36);
  v37 = a3[8];
  v38 = a1 + v37;
  v39 = a2 + v37;
  v40 = *v39;
  v41 = v39[8];
  outlined copy of Environment<Selector?>.Content(*v39, v41);
  v42 = *v38;
  v43 = v38[8];
  *v38 = v40;
  v38[8] = v41;
  outlined consume of Environment<Selector?>.Content(v42, v43);
  v44 = a3[9];
  v45 = (a1 + v44);
  v46 = (a2 + v44);
  __swift_assign_boxed_opaque_existential_1((a1 + v44), (a2 + v44));
  v47 = v46[5];
  v48 = v45[5];
  v45[5] = v47;
  v49 = v47;

  v45[6] = v46[6];

  v45[7] = v46[7];
  v50 = a3[10];
  v51 = a1 + v50;
  v52 = a2 + v50;
  *(a1 + v50) = *(a2 + v50);

  *(v51 + 1) = *(v52 + 1);

  *(v51 + 2) = *(v52 + 2);
  v53 = a3[11];
  v54 = a1 + v53;
  v55 = a2 + v53;
  *(a1 + v53) = *(a2 + v53);
  v56 = *(a1 + v53 + 16);
  v57 = *(a2 + v53 + 16);
  if (v56)
  {
    if (v57)
    {
      *(v54 + 1) = *(v55 + 1);

      *(v54 + 2) = *(v55 + 2);

      v54[24] = v55[24];
    }

    else
    {
      _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0((v54 + 8), &lazy cache variable for type metadata for Binding<Visibility>, MEMORY[0x1E697DB50], MEMORY[0x1E6981948]);
      v58 = v55[24];
      *(v54 + 8) = *(v55 + 8);
      v54[24] = v58;
    }
  }

  else if (v57)
  {
    *(v54 + 1) = *(v55 + 1);
    *(v54 + 2) = *(v55 + 2);
    v54[24] = v55[24];
  }

  else
  {
    v59 = *(v55 + 8);
    v54[24] = v55[24];
    *(v54 + 8) = v59;
  }

  v60 = (v54 + 32);
  v62 = (v55 + 32);
  v61 = *(v55 + 4);
  if (*(v54 + 4) == 1)
  {
    if (v61 == 1)
    {
      v63 = *v62;
      *(v54 + 6) = *(v55 + 6);
      *v60 = v63;
    }

    else
    {
      *(v54 + 4) = v61;
      *(v54 + 5) = *(v55 + 5);
      *(v54 + 6) = *(v55 + 6);
    }
  }

  else if (v61 == 1)
  {
    outlined destroy of TabSidebarAccessoryViewConfiguration((v54 + 32));
    v64 = *(v55 + 6);
    *v60 = *v62;
    *(v54 + 6) = v64;
  }

  else
  {
    *(v54 + 4) = v61;

    *(v54 + 5) = *(v55 + 5);

    *(v54 + 6) = *(v55 + 6);
  }

  v54[56] = v55[56];
  *(a1 + a3[12]) = *(a2 + a3[12]);

  return a1;
}

void *initializeWithTake for PrimitiveAdaptableTabView.BodyContent(void *a1, void *a2, int *a3)
{
  type metadata accessor for Environment<Binding<TabViewCustomization>?>.Content(0);
  v7 = v6;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Binding<TabViewCustomization>(0);
    v9 = v8;
    v10 = *(v8 - 8);
    if ((*(v10 + 48))(a2, 1, v8))
    {
      type metadata accessor for Binding<TabViewCustomization>?(0);
      memcpy(a1, a2, *(*(v11 - 8) + 64));
    }

    else
    {
      v12 = a2[1];
      *a1 = *a2;
      a1[1] = v12;
      v13 = *(v9 + 32);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = type metadata accessor for UUID();
      (*(*(v16 - 8) + 32))(v14, v15, v16);
      v17 = type metadata accessor for TabViewCustomization();
      *&v14[*(v17 + 20)] = *&v15[*(v17 + 20)];
      *&v14[*(v17 + 24)] = *&v15[*(v17 + 24)];
      (*(v10 + 56))(a1, 0, 1, v9);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v7 - 8) + 64));
  }

  v18 = a3[5];
  v19 = a3[6];
  v20 = a1 + v18;
  v21 = a2 + v18;
  *v20 = *v21;
  v20[8] = v21[8];
  v22 = a1 + v19;
  v23 = a2 + v19;
  *v22 = *v23;
  v22[8] = v23[8];
  v24 = a3[7];
  v25 = a3[8];
  v26 = a1 + v24;
  v27 = a2 + v24;
  *v26 = *v27;
  v26[8] = v27[8];
  v28 = a1 + v25;
  v29 = a2 + v25;
  *v28 = *v29;
  v28[8] = v29[8];
  v30 = a3[9];
  v31 = a3[10];
  v32 = (a1 + v30);
  v33 = (a2 + v30);
  v34 = *v33;
  v35 = v33[1];
  v36 = v33[3];
  v32[2] = v33[2];
  v32[3] = v36;
  *v32 = v34;
  v32[1] = v35;
  v37 = a1 + v31;
  v38 = a2 + v31;
  *(v37 + 2) = *(v38 + 2);
  *v37 = *v38;
  v39 = a3[11];
  v40 = a3[12];
  v41 = (a1 + v39);
  v42 = (a2 + v39);
  *(v41 + 41) = *(v42 + 41);
  v43 = v42[2];
  v41[1] = v42[1];
  v41[2] = v43;
  *v41 = *v42;
  *(a1 + v40) = *(a2 + v40);
  return a1;
}

void *assignWithTake for PrimitiveAdaptableTabView.BodyContent(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    _s2os6LoggerVSgWOhTm_0(a1, type metadata accessor for Environment<Binding<TabViewCustomization>?>.Content);
    type metadata accessor for Environment<Binding<TabViewCustomization>?>.Content(0);
    v7 = v6;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for Binding<TabViewCustomization>(0);
      v9 = v8;
      v10 = *(v8 - 8);
      if ((*(v10 + 48))(a2, 1, v8))
      {
        type metadata accessor for Binding<TabViewCustomization>?(0);
        memcpy(a1, a2, *(*(v11 - 8) + 64));
      }

      else
      {
        v12 = a2[1];
        *a1 = *a2;
        a1[1] = v12;
        v13 = *(v9 + 32);
        v14 = a1 + v13;
        v15 = a2 + v13;
        v16 = type metadata accessor for UUID();
        (*(*(v16 - 8) + 32))(v14, v15, v16);
        v17 = type metadata accessor for TabViewCustomization();
        *&v14[*(v17 + 20)] = *&v15[*(v17 + 20)];
        *&v14[*(v17 + 24)] = *&v15[*(v17 + 24)];
        (*(v10 + 56))(a1, 0, 1, v9);
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }
  }

  v18 = a3[5];
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = *v20;
  LOBYTE(v20) = v20[8];
  v22 = *v19;
  v23 = v19[8];
  *v19 = v21;
  v19[8] = v20;
  outlined consume of Environment<Selector?>.Content(v22, v23);
  v24 = a3[6];
  v25 = a1 + v24;
  v26 = a2 + v24;
  v27 = *v26;
  LOBYTE(v26) = v26[8];
  v28 = *v25;
  v29 = v25[8];
  *v25 = v27;
  v25[8] = v26;
  outlined consume of Environment<Selector?>.Content(v28, v29);
  v30 = a3[7];
  v31 = a1 + v30;
  v32 = a2 + v30;
  v33 = *v32;
  LOBYTE(v32) = v32[8];
  v34 = *v31;
  v35 = v31[8];
  *v31 = v33;
  v31[8] = v32;
  outlined consume of Environment<Selector?>.Content(v34, v35);
  v36 = a3[8];
  v37 = a1 + v36;
  v38 = a2 + v36;
  v39 = *v38;
  LOBYTE(v38) = v38[8];
  v40 = *v37;
  v41 = v37[8];
  *v37 = v39;
  v37[8] = v38;
  outlined consume of Environment<Selector?>.Content(v40, v41);
  v42 = a3[9];
  v43 = a1 + v42;
  v44 = a2 + v42;
  __swift_destroy_boxed_opaque_existential_1(a1 + v42);
  v45 = *(v44 + 1);
  *v43 = *v44;
  *(v43 + 1) = v45;
  v46 = *(v44 + 5);
  v47 = *(v43 + 5);
  *(v43 + 4) = *(v44 + 4);
  *(v43 + 5) = v46;

  *(v43 + 6) = *(v44 + 6);

  *(v43 + 7) = *(v44 + 7);
  v48 = a3[10];
  v49 = a1 + v48;
  v50 = a2 + v48;
  *(a1 + v48) = *(a2 + v48);

  *(v49 + 1) = *(v50 + 1);

  *(v49 + 2) = *(v50 + 2);
  v51 = a3[11];
  v52 = a1 + v51;
  v53 = a2 + v51;
  v54 = a2 + v51 + 8;
  *(a1 + v51) = *(a2 + v51);
  if (*(a1 + v51 + 16))
  {
    if (*(v53 + 2))
    {
      *(v52 + 1) = *(v53 + 1);

      *(v52 + 2) = *(v53 + 2);

      v52[24] = v53[24];
      goto LABEL_13;
    }

    _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0((v52 + 8), &lazy cache variable for type metadata for Binding<Visibility>, MEMORY[0x1E697DB50], MEMORY[0x1E6981948]);
  }

  *(v52 + 8) = *v54;
  v52[24] = *(v54 + 16);
LABEL_13:
  v55 = *(v53 + 4);
  if (*(v52 + 4) != 1)
  {
    if (v55 != 1)
    {
      *(v52 + 4) = v55;

      *(v52 + 5) = *(v53 + 5);

      *(v52 + 6) = *(v53 + 6);

      goto LABEL_18;
    }

    outlined destroy of TabSidebarAccessoryViewConfiguration((v52 + 32));
  }

  *(v52 + 2) = *(v53 + 2);
  *(v52 + 6) = *(v53 + 6);
LABEL_18:
  v52[56] = v53[56];
  *(a1 + a3[12]) = *(a2 + a3[12]);

  return a1;
}

void type metadata completion function for PrimitiveAdaptableTabView.BodyContent()
{
  type metadata accessor for Environment<Binding<TabViewCustomization>?>.Content(319);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<PhoneInterfaceIdiom>, ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<PhoneInterfaceIdiom>, ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>>)
  {
    type metadata accessor for InterfaceIdiomPredicate<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<PhoneInterfaceIdiom>, MEMORY[0x1E697F748], MEMORY[0x1E697F740], MEMORY[0x1E69801E0]);
    type metadata accessor for ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>, type metadata accessor for ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<PhoneInterfaceIdiom>, ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for UIKitAdaptableTabView(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = v5 + ((v4 + 16) & ~v4);
  }

  else
  {
    v8 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v8;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 25) = *(a2 + 25);
    *(a1 + 32) = a2[4];
    *(a1 + 40) = *(a2 + 40);
    v9 = a2[7];

    if (v9)
    {
      *(a1 + 48) = a2[6];
      *(a1 + 56) = v9;
      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      *(a1 + 48) = *(a2 + 3);
      *(a1 + 64) = *(a2 + 64);
    }

    v10 = a2[9];
    if (v10 == 1)
    {
      *(a1 + 72) = *(a2 + 9);
      *(a1 + 88) = a2[11];
    }

    else
    {
      v11 = a2[10];
      v12 = a2[11];
      *(a1 + 72) = v10;
      *(a1 + 80) = v11;
      *(a1 + 88) = v12;
    }

    *(a1 + 96) = *(a2 + 96);
    v13 = a3[7];
    v14 = (a1 + v13);
    v15 = (a2 + v13);
    type metadata accessor for Binding<TabViewCustomization>(0);
    v17 = v16;
    v18 = *(v16 - 8);
    if ((*(v18 + 48))(v15, 1, v16))
    {
      type metadata accessor for Binding<TabViewCustomization>?(0);
      memcpy(v14, v15, *(*(v19 - 8) + 64));
    }

    else
    {
      v20 = v15[1];
      *v14 = *v15;
      v14[1] = v20;
      v21 = *(v17 + 32);
      v22 = v14 + v21;
      v23 = v15 + v21;
      v24 = type metadata accessor for UUID();
      v30 = *(*(v24 - 8) + 16);

      v30(v22, v23, v24);
      v25 = type metadata accessor for TabViewCustomization();
      *&v22[*(v25 + 20)] = *&v23[*(v25 + 20)];
      *&v22[*(v25 + 24)] = *&v23[*(v25 + 24)];
      v26 = *(v18 + 56);

      v26(v14, 0, 1, v17);
    }

    v27 = a3[9];
    *(a1 + a3[8]) = *(a2 + a3[8]);
    *(a1 + v27) = *(a2 + v27);
    v28 = a3[11];
    *(a1 + a3[10]) = *(a2 + a3[10]);
    *(a1 + v28) = *(a2 + v28);
  }

  return a1;
}

uint64_t destroy for UIKitAdaptableTabView(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 56))
  {
  }

  if (*(a1 + 72) != 1)
  {
  }

  v4 = a1 + *(a2 + 28);
  type metadata accessor for Binding<TabViewCustomization>(0);
  v6 = v5;
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v7 = v4 + *(v6 + 32);
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(v7, v8);
    type metadata accessor for TabViewCustomization();
  }
}

uint64_t initializeWithCopy for UIKitAdaptableTabView(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 56);

  if (v7)
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = v7;
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
  }

  v8 = *(a2 + 72);
  if (v8 == 1)
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    v9 = *(a2 + 80);
    v10 = *(a2 + 88);
    *(a1 + 72) = v8;
    *(a1 + 80) = v9;
    *(a1 + 88) = v10;
  }

  *(a1 + 96) = *(a2 + 96);
  v11 = a3[7];
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  type metadata accessor for Binding<TabViewCustomization>(0);
  v15 = v14;
  v16 = *(v14 - 8);
  if ((*(v16 + 48))(v13, 1, v14))
  {
    type metadata accessor for Binding<TabViewCustomization>?(0);
    memcpy(v12, v13, *(*(v17 - 8) + 64));
  }

  else
  {
    v18 = v13[1];
    *v12 = *v13;
    v12[1] = v18;
    v19 = *(v15 + 32);
    v20 = v12 + v19;
    v21 = v13 + v19;
    v22 = type metadata accessor for UUID();
    v28 = *(*(v22 - 8) + 16);

    v28(v20, v21, v22);
    v23 = type metadata accessor for TabViewCustomization();
    *&v20[*(v23 + 20)] = *&v21[*(v23 + 20)];
    *&v20[*(v23 + 24)] = *&v21[*(v23 + 24)];
    v24 = *(v16 + 56);

    v24(v12, 0, 1, v15);
  }

  v25 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v25) = *(a2 + v25);
  v26 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + v26) = *(a2 + v26);

  return a1;
}

uint64_t assignWithCopy for UIKitAdaptableTabView(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  v6 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v6)
    {
      *(a1 + 48) = *(a2 + 48);

      *(a1 + 56) = *(a2 + 56);

      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(a1 + 48, &lazy cache variable for type metadata for Binding<Visibility>, MEMORY[0x1E697DB50], MEMORY[0x1E6981948]);
      v7 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v7;
    }
  }

  else if (v6)
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v8 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v8;
  }

  v9 = (a1 + 72);
  v11 = (a2 + 72);
  v10 = *(a2 + 72);
  if (*(a1 + 72) == 1)
  {
    if (v10 == 1)
    {
      v12 = *v11;
      *(a1 + 88) = *(a2 + 88);
      *v9 = v12;
    }

    else
    {
      *(a1 + 72) = v10;
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
    }
  }

  else if (v10 == 1)
  {
    outlined destroy of TabSidebarAccessoryViewConfiguration(a1 + 72);
    v13 = *(a2 + 88);
    *v9 = *v11;
    *(a1 + 88) = v13;
  }

  else
  {
    *(a1 + 72) = v10;

    *(a1 + 80) = *(a2 + 80);

    *(a1 + 88) = *(a2 + 88);
  }

  *(a1 + 96) = *(a2 + 96);
  v14 = a3[7];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  type metadata accessor for Binding<TabViewCustomization>(0);
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 48);
  v21 = v20(v15, 1, v17);
  v22 = v20(v16, 1, v18);
  if (!v21)
  {
    if (!v22)
    {
      *v15 = *v16;

      v15[1] = v16[1];

      v32 = *(v18 + 32);
      v33 = v15 + v32;
      v34 = v16 + v32;
      v35 = type metadata accessor for UUID();
      (*(*(v35 - 8) + 24))(v33, v34, v35);
      v36 = type metadata accessor for TabViewCustomization();
      *&v33[*(v36 + 20)] = *&v34[*(v36 + 20)];

      *&v33[*(v36 + 24)] = *&v34[*(v36 + 24)];

      goto LABEL_21;
    }

    _s2os6LoggerVSgWOhTm_0(v15, type metadata accessor for Binding<TabViewCustomization>);
    goto LABEL_20;
  }

  if (v22)
  {
LABEL_20:
    type metadata accessor for Binding<TabViewCustomization>?(0);
    memcpy(v15, v16, *(*(v30 - 8) + 64));
    goto LABEL_21;
  }

  *v15 = *v16;
  v15[1] = v16[1];
  v23 = *(v18 + 32);
  v24 = v15 + v23;
  v25 = v16 + v23;
  v38 = a3;
  v26 = type metadata accessor for UUID();
  v37 = *(*(v26 - 8) + 16);

  v27 = v26;
  a3 = v38;
  v37(v24, v25, v27);
  v28 = type metadata accessor for TabViewCustomization();
  *&v24[*(v28 + 20)] = *&v25[*(v28 + 20)];
  *&v24[*(v28 + 24)] = *&v25[*(v28 + 24)];
  v29 = *(v19 + 56);

  v29(v15, 0, 1, v18);
LABEL_21:
  *(a1 + a3[8]) = *(a2 + a3[8]);

  *(a1 + a3[9]) = *(a2 + a3[9]);

  *(a1 + a3[10]) = *(a2 + a3[10]);

  *(a1 + a3[11]) = *(a2 + a3[11]);
  return a1;
}

uint64_t initializeWithTake for UIKitAdaptableTabView(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v6 = a3[7];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  *(a1 + 81) = *(a2 + 81);
  type metadata accessor for Binding<TabViewCustomization>(0);
  v10 = v9;
  v11 = *(v9 - 8);
  if ((*(v11 + 48))(v8, 1, v9))
  {
    type metadata accessor for Binding<TabViewCustomization>?(0);
    memcpy(v7, v8, *(*(v12 - 8) + 64));
  }

  else
  {
    v13 = v8[1];
    *v7 = *v8;
    v7[1] = v13;
    v14 = *(v10 + 32);
    v15 = v7 + v14;
    v16 = v8 + v14;
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 32))(v15, v16, v17);
    v18 = type metadata accessor for TabViewCustomization();
    *&v15[*(v18 + 20)] = *&v16[*(v18 + 20)];
    *&v15[*(v18 + 24)] = *&v16[*(v18 + 24)];
    (*(v11 + 56))(v7, 0, 1, v10);
  }

  v19 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v19) = *(a2 + v19);
  v20 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + v20) = *(a2 + v20);
  return a1;
}

uint64_t assignWithTake for UIKitAdaptableTabView(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  if (*(a1 + 56))
  {
    v6 = *(a2 + 56);
    if (v6)
    {
      *(a1 + 48) = *(a2 + 48);

      *(a1 + 56) = v6;

      *(a1 + 64) = *(a2 + 64);
      goto LABEL_6;
    }

    _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(a1 + 48, &lazy cache variable for type metadata for Binding<Visibility>, MEMORY[0x1E697DB50], MEMORY[0x1E6981948]);
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
LABEL_6:
  v7 = *(a2 + 72);
  if (*(a1 + 72) == 1)
  {
LABEL_9:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    goto LABEL_11;
  }

  if (v7 == 1)
  {
    outlined destroy of TabSidebarAccessoryViewConfiguration(a1 + 72);
    goto LABEL_9;
  }

  *(a1 + 72) = v7;

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

LABEL_11:
  *(a1 + 96) = *(a2 + 96);
  v8 = a3[7];
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  type metadata accessor for Binding<TabViewCustomization>(0);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 48);
  v15 = v14(v9, 1, v11);
  v16 = v14(v10, 1, v12);
  if (!v15)
  {
    if (!v16)
    {
      *v9 = *v10;

      v9[1] = v10[1];

      v25 = *(v12 + 32);
      v26 = v9 + v25;
      v27 = v10 + v25;
      v28 = type metadata accessor for UUID();
      (*(*(v28 - 8) + 40))(v26, v27, v28);
      v29 = type metadata accessor for TabViewCustomization();
      *&v26[*(v29 + 20)] = *&v27[*(v29 + 20)];

      *&v26[*(v29 + 24)] = *&v27[*(v29 + 24)];

      goto LABEL_17;
    }

    _s2os6LoggerVSgWOhTm_0(v9, type metadata accessor for Binding<TabViewCustomization>);
    goto LABEL_16;
  }

  if (v16)
  {
LABEL_16:
    type metadata accessor for Binding<TabViewCustomization>?(0);
    memcpy(v9, v10, *(*(v23 - 8) + 64));
    goto LABEL_17;
  }

  v17 = v10[1];
  *v9 = *v10;
  v9[1] = v17;
  v18 = *(v12 + 32);
  v19 = v9 + v18;
  v20 = v10 + v18;
  v21 = type metadata accessor for UUID();
  (*(*(v21 - 8) + 32))(v19, v20, v21);
  v22 = type metadata accessor for TabViewCustomization();
  *&v19[*(v22 + 20)] = *&v20[*(v22 + 20)];
  *&v19[*(v22 + 24)] = *&v20[*(v22 + 24)];
  (*(v13 + 56))(v9, 0, 1, v12);
LABEL_17:
  *(a1 + a3[8]) = *(a2 + a3[8]);

  *(a1 + a3[9]) = *(a2 + a3[9]);

  *(a1 + a3[10]) = *(a2 + a3[10]);

  *(a1 + a3[11]) = *(a2 + a3[11]);
  return a1;
}

void type metadata completion function for UIKitAdaptableTabView()
{
  type metadata accessor for Binding<TabViewCustomization>?(319);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<PhoneInterfaceIdiom>, ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<PhoneInterfaceIdiom>, ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<PhoneInterfaceIdiom>, ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<PhoneInterfaceIdiom>, ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>>();
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<PhoneInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<PhoneInterfaceIdiom>, ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InterfaceIdiomPredicate<PhoneInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InterfaceIdiomPredicate<PhoneInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>;
  if (!lazy protocol witness table cache variable for type InterfaceIdiomPredicate<PhoneInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>)
  {
    type metadata accessor for InterfaceIdiomPredicate<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<PhoneInterfaceIdiom>, MEMORY[0x1E697F748], MEMORY[0x1E697F740], MEMORY[0x1E69801E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InterfaceIdiomPredicate<PhoneInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout>, type metadata accessor for ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>);
    lazy protocol witness table accessor for type ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier>(255);
    lazy protocol witness table accessor for type TabViewCommonModifier and conformance TabViewCommonModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<UIKitAdaptableTabView, TabViewCommonModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined assign with copy of Binding<TabViewCustomization>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<TabViewCustomization>?(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Binding<SearchFieldState>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<SearchFieldState>?(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for InterfaceIdiomPredicate<PhoneInterfaceIdiom>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InterfaceIdiomPredicate<PhoneInterfaceIdiom>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for [_UITab]()
{
  if (!lazy cache variable for type metadata for [_UITab])
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for _UITab);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [_UITab]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [_UITab] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [_UITab] and conformance [A];
  if (!lazy protocol witness table cache variable for type [_UITab] and conformance [A])
  {
    type metadata accessor for [_UITab]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [_UITab] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [AnyHashable] and conformance [A](unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TabItem?(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined copy of TabItemGroup.HostCache?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined consume of TabItemGroup.HostCache?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined init with take of Binding<TabViewCustomization>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #3 in UIKitAdaptableTabView.setViewControllers(on:allViewControllers:tabs:selected:environment:forceUpdate:)()
{
  v1 = *(type metadata accessor for UIKitAdaptableTabView(0) - 8);
  v2 = (*(v1 + 80) + 41) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + 40);

  return closure #3 in UIKitAdaptableTabView.setViewControllers(on:allViewControllers:tabs:selected:environment:forceUpdate:)(v3, v4, v5, v7, v0 + v2, v6);
}

void type metadata accessor for TabItem?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t assignWithTake for CoordinateSpaceNameModifier(uint64_t result, _OWORD *a2)
{
  if (result != a2)
  {
    v3 = result;
    outlined destroy of CoordinateSpace.Name(result);
    v4 = a2[1];
    *v3 = *a2;
    v3[1] = v4;
    *(v3 + 25) = *(a2 + 25);
    return v3;
  }

  return result;
}

uint64_t specialized static CoordinateSpaceNameModifier._makeViewInputs(modifier:inputs:)(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 48);
  v4 = *(a2 + 16);
  v20 = *(a2 + 32);
  v21 = v3;
  v22 = *(a2 + 64);
  v5 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v5;
  v7 = *(a2 + 48);
  v6 = *(a2 + 64);
  v33 = v20;
  v34 = v7;
  v35 = v6;
  v23 = *(a2 + 80);
  v36 = *(a2 + 80);
  v31 = v19[0];
  v32 = v4;
  outlined init with copy of _ViewInputs(v19, v26);
  _ViewInputs.animatedPosition()();
  v24[2] = v33;
  v24[3] = v34;
  v24[4] = v35;
  v25 = v36;
  v24[0] = v31;
  v24[1] = v32;
  outlined destroy of _ViewInputs(v24);
  v8 = *(a2 + 48);
  v9 = *(a2 + 16);
  v27 = *(a2 + 32);
  v28 = v8;
  v10 = *(a2 + 48);
  v29 = *(a2 + 64);
  v11 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v11;
  v15 = v27;
  v16 = v10;
  v17 = *(a2 + 64);
  v30 = *(a2 + 80);
  v18 = *(a2 + 80);
  v13 = v26[0];
  v14 = v9;
  outlined init with copy of _ViewInputs(v26, &v31);
  _ViewInputs.animatedCGSize()();
  v33 = v15;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v31 = v13;
  v32 = v14;
  outlined destroy of _ViewInputs(&v31);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type CoordinateSpaceNameTransform and conformance CoordinateSpaceNameTransform();
  Attribute.init<A>(body:value:flags:update:)();
  return _ViewInputs.transform.setter();
}

uint64_t ControlGroup.init<A, B>(content:label:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v19(v16);
  a2(v20);
  LabeledControlGroupContent.init(content:label:)(v18, v14, a3, a4, a7);
  v22[0] = a3;
  v22[1] = a4;
  v22[2] = a5;
  v22[3] = a6;
  type metadata accessor for LabeledControlGroupContent();
  swift_getWitnessTable();
  result = type metadata accessor for ControlGroup();
  *(a7 + *(result + 36)) = 1;
  return result;
}

uint64_t ControlGroup.init(content:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1();
  result = type metadata accessor for ControlGroup();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t ControlGroup.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = *(a1 + 16);
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content();
  v11 = *(a1 + 24);
  v42 = &type metadata for ControlGroupStyleConfiguration.Content;
  v43 = v4;
  v44 = v10;
  v45 = v11;
  v32 = v11;
  type metadata accessor for StaticSourceWriter();
  v12 = type metadata accessor for ModifiedContent();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = type metadata accessor for _ConditionalContent();
  v31 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v22 = &v30 - v21;
  if (*(v2 + *(v20 + 36)))
  {
    v23 = v2;
    v24 = v32;
    static ViewBuilder.buildExpression<A>(_:)(v23, v4, v32);
    static ViewBuilder.buildExpression<A>(_:)(v9, v4, v24);
    v40 = lazy protocol witness table accessor for type ResolvedControlGroup and conformance ResolvedControlGroup();
    v41 = &protocol witness table for StaticSourceWriter<A, B>;
    swift_getWitnessTable();
    static ViewBuilder.buildEither<A, B>(second:)(v6, v12, v4);
    v25 = *(v30 + 8);
    v25(v6, v4);
    v25(v9, v4);
  }

  else
  {
    ControlGroup.resolvedBody.getter(v20);
    v34 = lazy protocol witness table accessor for type ResolvedControlGroup and conformance ResolvedControlGroup();
    v35 = &protocol witness table for StaticSourceWriter<A, B>;
    WitnessTable = swift_getWitnessTable();
    static ViewBuilder.buildExpression<A>(_:)(v15, v12, WitnessTable);
    v27 = *(v13 + 8);
    v27(v15, v12);
    static ViewBuilder.buildExpression<A>(_:)(v18, v12, WitnessTable);
    v24 = v32;
    static ViewBuilder.buildEither<A, B>(first:)(v15, v12);
    v27(v15, v12);
    v27(v18, v12);
  }

  v38 = lazy protocol witness table accessor for type ResolvedControlGroup and conformance ResolvedControlGroup();
  v39 = &protocol witness table for StaticSourceWriter<A, B>;
  v36 = swift_getWitnessTable();
  v37 = v24;
  v28 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v22, v19, v28);
  return (*(v31 + 8))(v22, v19);
}

uint64_t ControlGroup.resolvedBody.getter(uint64_t a1)
{
  v1 = *(a1 + 24);
  v5 = *(a1 + 16);
  v6 = v1;
  v2 = lazy protocol witness table accessor for type ResolvedControlGroup and conformance ResolvedControlGroup();
  lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content();
  return View.viewAlias<A, B>(_:_:)(&type metadata for ControlGroupStyleConfiguration.Content, partial apply for closure #1 in ControlGroup.resolvedBody.getter, v4, &type metadata for ResolvedControlGroup, &type metadata for ControlGroupStyleConfiguration.Content, v5, v2);
}

uint64_t closure #1 in ControlGroup.resolvedBody.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v8, v9, v10);
  static ViewBuilder.buildExpression<A>(_:)(v7, a2, a3);
  return (*(v5 + 8))(v7, a2);
}

uint64_t LabeledControlGroupContent.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v28 = lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content();
  v4 = a1[2];
  v5 = a1[4];
  v44 = &type metadata for ControlGroupStyleConfiguration.Content;
  v45 = v4;
  v46 = v28;
  v47 = v5;
  type metadata accessor for StaticSourceWriter();
  v6 = type metadata accessor for ModifiedContent();
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = a1[3];
  v27 = lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label();
  v10 = a1[5];
  v44 = &type metadata for ControlGroupStyleConfiguration.Label;
  v45 = v9;
  v26 = v9;
  v46 = v27;
  v47 = v10;
  type metadata accessor for StaticSourceWriter();
  v11 = type metadata accessor for ModifiedContent();
  v29 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  *&v17 = v4;
  *(&v17 + 1) = v9;
  v25 = v17;
  *&v18 = v5;
  *(&v18 + 1) = v10;
  v24 = v18;
  v37 = v17;
  v38 = v18;
  v39 = v2;
  v19 = lazy protocol witness table accessor for type ResolvedControlGroup and conformance ResolvedControlGroup();
  View.viewAlias<A, B>(_:_:)(&type metadata for ControlGroupStyleConfiguration.Content, partial apply for closure #1 in LabeledControlGroupContent.body.getter, v36, &type metadata for ResolvedControlGroup, &type metadata for ControlGroupStyleConfiguration.Content, v4, v19);
  v33 = v25;
  v34 = v24;
  v35 = v2;
  v42 = v19;
  v43 = &protocol witness table for StaticSourceWriter<A, B>;
  WitnessTable = swift_getWitnessTable();
  View.viewAlias<A, B>(_:_:)(&type metadata for ControlGroupStyleConfiguration.Label, partial apply for closure #2 in LabeledControlGroupContent.body.getter, v32, v6, &type metadata for ControlGroupStyleConfiguration.Label, v26, WitnessTable);
  (*(v30 + 8))(v8, v6);
  v40 = WitnessTable;
  v41 = &protocol witness table for StaticSourceWriter<A, B>;
  v21 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v13, v11, v21);
  v22 = *(v29 + 8);
  v22(v13, v11);
  static ViewBuilder.buildExpression<A>(_:)(v16, v11, v21);
  return (v22)(v16, v11);
}

uint64_t closure #1 in LabeledControlGroupContent.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v9, v10, v11);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a4);
  return (*(v6 + 8))(v8, a2);
}

uint64_t closure #2 in LabeledControlGroupContent.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = v11;
  v17[1] = v12;
  v17[2] = v13;
  v17[3] = v14;
  v15 = type metadata accessor for LabeledControlGroupContent();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v15 + 52), a3, a5);
  static ViewBuilder.buildExpression<A>(_:)(v10, a3, a5);
  return (*(v8 + 8))(v10, a3);
}

uint64_t LabeledControlGroupContent.init(content:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for LabeledControlGroupContent();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

unint64_t lazy protocol witness table accessor for type ResolvedControlGroup and conformance ResolvedControlGroup()
{
  result = lazy protocol witness table cache variable for type ResolvedControlGroup and conformance ResolvedControlGroup;
  if (!lazy protocol witness table cache variable for type ResolvedControlGroup and conformance ResolvedControlGroup)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedControlGroup and conformance ResolvedControlGroup);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedControlGroup and conformance ResolvedControlGroup;
  if (!lazy protocol witness table cache variable for type ResolvedControlGroup and conformance ResolvedControlGroup)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedControlGroup and conformance ResolvedControlGroup);
  }

  return result;
}