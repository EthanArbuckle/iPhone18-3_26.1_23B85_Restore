void closure #1 in IdentifiedDocumentGroupDocumentCreation.writeNewDocumentToDisk(_:_:)(char a1, void (*a2)(char *, void), uint64_t a3, void *a4, uint64_t a5)
{
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = aBlock - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  if (a1)
  {
    (*(v14 + 16))(aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v13, v16);
    v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    (*(v14 + 32))(v18 + v17, aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    aBlock[4] = partial apply for closure #1 in closure #1 in IdentifiedDocumentGroupDocumentCreation.writeNewDocumentToDisk(_:_:);
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    aBlock[3] = &block_descriptor_88;
    v19 = _Block_copy(aBlock);

    [a4 closeWithCompletionHandler_];
    _Block_release(v19);
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13, v16);
    a2(v12, 0);
    outlined destroy of NavigationItemDescription?(v12, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  }
}

uint64_t closure #1 in closure #1 in IdentifiedDocumentGroupDocumentCreation.writeNewDocumentToDisk(_:_:)(char a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = v11;
  if (a1)
  {
    (*(v11 + 16))(v9, a4, v10);
    (*(v12 + 56))(v9, 0, 1, v10);
    v13 = 2;
  }

  else
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    v13 = 0;
  }

  a2(v9, v13);
  return outlined destroy of NavigationItemDescription?(v9, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance NavigationItemDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 28);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  return v4 != -1 && v5 != -1 && v4 == v5;
}

unint64_t lazy protocol witness table accessor for type DocumentPresentationModeLocation and conformance DocumentPresentationModeLocation()
{
  result = lazy protocol witness table cache variable for type DocumentPresentationModeLocation and conformance DocumentPresentationModeLocation;
  if (!lazy protocol witness table cache variable for type DocumentPresentationModeLocation and conformance DocumentPresentationModeLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentPresentationModeLocation and conformance DocumentPresentationModeLocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentPresentationModeLocation and conformance DocumentPresentationModeLocation;
  if (!lazy protocol witness table cache variable for type DocumentPresentationModeLocation and conformance DocumentPresentationModeLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentPresentationModeLocation and conformance DocumentPresentationModeLocation);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [URL]) -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  type metadata accessor for URL();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

uint64_t outlined destroy of NavigationItemDescription?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for NavigationItemDescription?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void specialized IdentifiedDocumentGroupDocumentCreation.createNewDocument(with:url:newDocumentProvider:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a6;
  v59 = a5;
  v58 = a4;
  v57 = a3;
  v8 = MEMORY[0x1E69E6720];
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v56 = &v52 - v10;
  v55 = type metadata accessor for UTType();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E6968FB0];
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], v8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v52 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v52 - v21;
  outlined init with copy of DocumentGroupConfiguration(a1, v63);
  _s10Foundation3URLVSgWOcTm_0(a2, v15, &lazy cache variable for type metadata for URL?, v12, v8);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    (*(v17 + 32))(v22, v15, v16);
    goto LABEL_5;
  }

  v52 = v22;
  outlined destroy of NavigationItemDescription?(v15, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass_];
  v67._object = 0x800000018CD43470;
  v25.value._countAndFlagsBits = 0x746E656D75636F44;
  v26._countAndFlagsBits = 0x64656C7469746E55;
  v26._object = 0xE800000000000000;
  v25.value._object = 0xE900000000000073;
  v27._countAndFlagsBits = 0x64656C7469746E55;
  v27._object = 0xE800000000000000;
  v67._countAndFlagsBits = 0xD00000000000001DLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v25, v24, v27, v67);

  if (*(v66 + 16))
  {
    v28 = v54;
    v29 = v53;
    v30 = v55;
    (*(v54 + 16))(v53, v66 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v55);
    v31 = [objc_opt_self() defaultManager];
    v32 = [v31 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v52;
    URL.appendingPathComponent(_:conformingTo:)();

    (*(v17 + 8))(v19, v16);
    v34 = v29;
    v22 = v33;
    (*(v28 + 8))(v34, v30);
LABEL_5:
    v36 = v64;
    v35 = v65;
    v37 = (*(v65 + 8))(v64, v65);
    (*(v17 + 16))(v19, v22, v16);
    v38 = (*(v37 + 120))(v19, v36, v35);
    v39 = type metadata accessor for TaskPriority();
    v40 = v56;
    (*(*(v39 - 8) + 56))(v56, 1, 1, v39);
    outlined init with copy of DocumentGroupConfiguration(v63, v61);
    type metadata accessor for MainActor();
    v41 = v57;
    v42 = v58;
    outlined copy of AppIntentExecutor?(v57);
    v43 = v38;
    v44 = v60;

    v45 = static MainActor.shared.getter();
    v46 = swift_allocObject();
    v47 = v61[2];
    *(v46 + 120) = v61[3];
    v48 = v61[5];
    *(v46 + 136) = v61[4];
    *(v46 + 152) = v48;
    v49 = v61[1];
    *(v46 + 72) = v61[0];
    *(v46 + 88) = v49;
    v50 = MEMORY[0x1E69E85E0];
    *(v46 + 16) = v45;
    *(v46 + 24) = v50;
    *(v46 + 32) = v41;
    *(v46 + 40) = v42;
    v51 = v59;
    *(v46 + 48) = v43;
    *(v46 + 56) = v51;
    *(v46 + 64) = v44;
    *(v46 + 168) = v62;
    *(v46 + 104) = v47;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v40, &async function pointer to partial apply for closure #1 in IdentifiedDocumentGroupDocumentCreation.createNewDocument(with:url:newDocumentProvider:_:), v46);

    (*(v17 + 8))(v22, v16);
    outlined destroy of DocumentGroupConfiguration(v63);
    return;
  }

  __break(1u);
}

uint64_t partial apply for closure #1 in IdentifiedDocumentGroupDocumentCreation.createNewDocument(with:url:newDocumentProvider:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in IdentifiedDocumentGroupDocumentCreation.createNewDocument(with:url:newDocumentProvider:_:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

void type metadata accessor for InheritedEnvironmentSettable?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = type metadata accessor for Optional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for LocationBox<DocumentPresentationModeLocation>()
{
  if (!lazy cache variable for type metadata for LocationBox<DocumentPresentationModeLocation>)
  {
    lazy protocol witness table accessor for type DocumentPresentationModeLocation and conformance DocumentPresentationModeLocation();
    v0 = type metadata accessor for LocationBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LocationBox<DocumentPresentationModeLocation>);
    }
  }
}

uint64_t partial apply for closure #1 in closure #1 in DocumentViewController.init<A>(documentBrowserMediator:onDocumentClose:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in closure #1 in DocumentViewController.init<A>(documentBrowserMediator:onDocumentClose:)(a1, v4, v5, v7, v6);
}

void specialized DocumentViewController.presentationController(_:willPresentWithAdaptiveStyle:transitionCoordinator:)(void *a1)
{
  if (a1)
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4[4] = partial apply for closure #1 in DocumentViewController.presentationController(_:willPresentWithAdaptiveStyle:transitionCoordinator:);
    v4[5] = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 1107296256;
    v4[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    v4[3] = &block_descriptor_92_1;
    v3 = _Block_copy(v4);
    swift_unknownObjectRetain();

    [a1 animateAlongsideTransition:0 completion:v3];
    _Block_release(v3);
    swift_unknownObjectRelease();
  }

  else
  {

    DocumentViewController.dismissDocument()();
  }
}

uint64_t specialized IdentifiedDocumentGroupDocumentCreation.documentBrowser(_:didRequestDocumentCreationWithHandler:)(void *a1, char *a2, void (**a3)(void, void, void))
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  v100 = v6;
  v101 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v98 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6720];
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v99 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v93 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v93 - v15;
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], v9);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v102 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v93 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v93 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v93 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v93 - v28;
  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  _Block_copy(a3);
  IdentifiedDocumentGroupDocumentCreation.defaultEditorConfiguration.getter(&v117);
  if (!*(&v117 + 1))
  {
    outlined destroy of AnyAccessibilityValue?(&v117, &lazy cache variable for type metadata for IdentifiedDocumentGroupConfiguration?);
    v37 = type metadata accessor for URL();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v29, 1, 1, v37);
    _s10Foundation3URLVSgWOcTm_0(v29, v26, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v40 = 0;
    if ((*(v38 + 48))(v26, 1, v37) != 1)
    {
      URL._bridgeToObjectiveC()(v39);
      v40 = v41;
      (*(v38 + 8))(v26, v37);
    }

    (a3)[2](a3, v40, 0);

    outlined destroy of NavigationItemDescription?(v29, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  }

  v97 = v16;
  v124[4] = v121;
  v124[5] = v122;
  v125[0] = v123[0];
  *(v125 + 9) = *(v123 + 9);
  v124[0] = v117;
  v124[1] = v118;
  v124[2] = v119;
  v124[3] = v120;
  v31 = [a1 activeDocumentCreationIntent];
  if (v31)
  {
    v32 = *MEMORY[0x1E69DDCD0];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
    if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
    {

LABEL_10:
      v43 = type metadata accessor for URL();
      (*(*(v43 - 8) + 56))(v23, 1, 1, v43);
      v44 = swift_allocObject();
      v44[2] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSURL?, @unowned UIDocumentBrowserImportMode) -> ();
      v44[3] = v30;
      v44[4] = a2;

      v45 = a2;
      specialized IdentifiedDocumentGroupDocumentCreation.createNewDocument(with:url:newDocumentProvider:_:)(v124, v23, 0, 0, partial apply for closure #1 in IdentifiedDocumentGroupDocumentCreation.documentBrowser(_:didRequestDocumentCreationWithHandler:), v44);

      outlined destroy of NavigationItemDescription?(v23, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      outlined destroy of IdentifiedDocumentGroupConfiguration(v124);
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v42)
    {
      goto LABEL_10;
    }
  }

  v94 = v23;
  v95 = a2;
  v96 = v30;
  v46 = *&a2[OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation_strategies];
  v47 = *(v46 + 16);
  if (!v47)
  {
LABEL_24:
    v59 = type metadata accessor for URL();
    v60 = *(v59 - 8);
    v61 = v103;
    (*(v60 + 56))(v103, 1, 1, v59);
    v62 = v102;
    _s10Foundation3URLVSgWOcTm_0(v61, v102, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v64 = 0;
    if ((*(v60 + 48))(v62, 1, v59) != 1)
    {
      URL._bridgeToObjectiveC()(v63);
      v64 = v65;
      (*(v60 + 8))(v62, v59);
    }

    (a3)[2](a3, v64, 0);

    outlined destroy of NavigationItemDescription?(v61, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    outlined destroy of IdentifiedDocumentGroupConfiguration(v124);
  }

  v48 = v46 + 32;

  v50 = 0;
  while (1)
  {
    if (v50 >= *(v46 + 16))
    {
      __break(1u);
      return result;
    }

    outlined init with copy of _Benchmark(v48, &v107);
    v51 = *(&v108 + 1);
    v52 = v109;
    __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
    v53 = (*(v52 + 16))(v51, v52);
    v55 = v54;
    if (!v31)
    {

      goto LABEL_14;
    }

    if (v53 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56)
    {
      break;
    }

    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v58)
    {
      goto LABEL_28;
    }

LABEL_14:
    ++v50;
    result = __swift_destroy_boxed_opaque_existential_1(&v107);
    v48 += 40;
    if (v47 == v50)
    {

      goto LABEL_24;
    }
  }

LABEL_28:

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v107, &v117);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v117, v114);
  v122 = 0u;
  memset(v123, 0, 25);
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v117 = 0u;
  v66 = v115;
  v67 = v116;
  __swift_project_boxed_opaque_existential_1(v114, v115);
  (*(v67 + 24))(v66, v67);
  v68 = v104;
  v70 = v100;
  v69 = v101;
  v71 = *(v101 + 48);
  v72 = v71(v104, 1, v100);
  v74 = v95;
  v73 = v96;
  if (v72 == 1)
  {
    v75 = v115;
    v76 = v116;
    __swift_project_boxed_opaque_existential_1(v114, v115);
    v77 = (*(v76 + 40))(v75, v76);
    if (*(v77 + 16))
    {
      v69 = v101;
      v78 = v97;
      (*(v101 + 16))(v97, v77 + ((*(v101 + 80) + 32) & ~*(v101 + 80)), v70);
      v79 = 0;
    }

    else
    {
      v79 = 1;
      v78 = v97;
      v69 = v101;
    }

    (*(v69 + 56))(v78, v79, 1, v70);
    v80 = v104;
    if (v71(v104, 1, v70) != 1)
    {
      outlined destroy of NavigationItemDescription?(v80, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    }
  }

  else
  {
    v78 = v97;
    (*(v69 + 32))(v97, v68, v70);
    (*(v69 + 56))(v78, 0, 1, v70);
  }

  v81 = v99;
  _s10Foundation3URLVSgWOcTm_0(v78, v99, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  if (v71(v81, 1, v70) == 1)
  {
    outlined destroy of NavigationItemDescription?(v81, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  }

  else
  {
    v82 = v98;
    (*(v69 + 32))(v98, v81, v70);
    IdentifiedDocumentGroupDocumentCreation.findConfiguration(for:)(&v107);
    (*(v69 + 8))(v82, v70);
    outlined destroy of AnyAccessibilityValue?(&v117, &lazy cache variable for type metadata for IdentifiedDocumentGroupConfiguration?);
    v121 = v111;
    v122 = v112;
    v123[0] = v113[0];
    *(v123 + 9) = *(v113 + 9);
    v117 = v107;
    v118 = v108;
    v119 = v109;
    v120 = v110;
  }

  outlined init with copy of AnyAccessibilityValue?(&v117, v105, &lazy cache variable for type metadata for IdentifiedDocumentGroupConfiguration?);
  if (*(&v105[0] + 1))
  {
    v111 = v105[4];
    v112 = v105[5];
    v113[0] = v106[0];
    *(v113 + 9) = *(v106 + 9);
    v107 = v105[0];
    v108 = v105[1];
    v109 = v105[2];
    v110 = v105[3];
  }

  else
  {
    outlined init with copy of IdentifiedDocumentGroupConfiguration(v124, &v107);
    if (*(&v105[0] + 1))
    {
      outlined destroy of AnyAccessibilityValue?(v105, &lazy cache variable for type metadata for IdentifiedDocumentGroupConfiguration?);
    }
  }

  v83 = type metadata accessor for URL();
  v84 = v94;
  (*(*(v83 - 8) + 56))(v94, 1, 1, v83);
  v85 = v115;
  v86 = v116;
  __swift_project_boxed_opaque_existential_1(v114, v115);
  v87 = (*(v86 + 32))(v85, v86);
  v89 = v88;
  v90 = swift_allocObject();
  v90[2] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSURL?, @unowned UIDocumentBrowserImportMode) -> ();
  v90[3] = v73;
  v90[4] = v74;

  v91 = v74;
  specialized IdentifiedDocumentGroupDocumentCreation.createNewDocument(with:url:newDocumentProvider:_:)(&v107, v84, v87, v89, partial apply for closure #3 in IdentifiedDocumentGroupDocumentCreation.documentBrowser(_:didRequestDocumentCreationWithHandler:), v90);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v87);

  v92 = MEMORY[0x1E69E6720];
  outlined destroy of NavigationItemDescription?(v84, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  outlined destroy of IdentifiedDocumentGroupConfiguration(&v107);
  outlined destroy of NavigationItemDescription?(v97, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], v92);
  outlined destroy of AnyAccessibilityValue?(&v117, &lazy cache variable for type metadata for IdentifiedDocumentGroupConfiguration?);
  outlined destroy of IdentifiedDocumentGroupConfiguration(v124);
  __swift_destroy_boxed_opaque_existential_1(v114);
}

uint64_t _s10Foundation3URLVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for NavigationItemDescription?(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t objectdestroy_72Tm()
{

  return swift_deallocObject();
}

uint64_t specialized IdentifiedDocumentGroupDocumentCreation.writeNewDocumentToDisk(_:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = aBlock - v12;
  v14 = [a1 fileURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  (*(v7 + 16))(v9, v13, v6);
  v18 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = a1;
  (*(v7 + 32))(&v19[v18], v9, v6);
  aBlock[4] = partial apply for closure #1 in IdentifiedDocumentGroupDocumentCreation.writeNewDocumentToDisk(_:_:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_82;
  v20 = _Block_copy(aBlock);

  v21 = a1;

  [v21 saveToURL:v17 forSaveOperation:0 completionHandler:v20];
  _Block_release(v20);

  return (*(v7 + 8))(v13, v6);
}

void partial apply for closure #1 in IdentifiedDocumentGroupDocumentCreation.writeNewDocumentToDisk(_:_:)(char a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  closure #1 in IdentifiedDocumentGroupDocumentCreation.writeNewDocumentToDisk(_:_:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in IdentifiedDocumentGroupDocumentCreation.writeNewDocumentToDisk(_:_:)(char a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #1 in closure #1 in IdentifiedDocumentGroupDocumentCreation.writeNewDocumentToDisk(_:_:)(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type UTType and conformance UTType()
{
  result = lazy protocol witness table cache variable for type UTType and conformance UTType;
  if (!lazy protocol witness table cache variable for type UTType and conformance UTType)
  {
    type metadata accessor for UTType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTType and conformance UTType);
  }

  return result;
}

void type metadata accessor for (key: IdentifiedDocumentGroupConfiguration, value: WeakBox<PlatformDocument>)()
{
  if (!lazy cache variable for type metadata for (key: IdentifiedDocumentGroupConfiguration, value: WeakBox<PlatformDocument>))
  {
    type metadata accessor for NavigationItemDescription?(255, &lazy cache variable for type metadata for WeakBox<PlatformDocument>, type metadata accessor for PlatformDocument, MEMORY[0x1E6981A78]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: IdentifiedDocumentGroupConfiguration, value: WeakBox<PlatformDocument>));
    }
  }
}

uint64_t outlined init with copy of NewDocumentProvider?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for InheritedEnvironmentSettable?(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t outlined assign with take of IdentifiedDocumentGroupConfiguration??(uint64_t a1, uint64_t a2)
{
  type metadata accessor for InheritedEnvironmentSettable?(0, &lazy cache variable for type metadata for IdentifiedDocumentGroupConfiguration??, &lazy cache variable for type metadata for IdentifiedDocumentGroupConfiguration?, &type metadata for IdentifiedDocumentGroupConfiguration, type metadata accessor for AnyAccessibilityValue?);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (NavigationItemDescription?, NavigationItemDescription?)()
{
  if (!lazy cache variable for type metadata for (NavigationItemDescription?, NavigationItemDescription?))
  {
    type metadata accessor for NavigationItemDescription?(255, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NavigationItemDescription?, NavigationItemDescription?));
    }
  }
}

uint64_t outlined init with copy of NavigationItemDescription(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationItemDescription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of NavigationItemDescription?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of NavigationItemDescription?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for implicit closure #2 in NavigationItemDescription.merge(with:)@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  *&v11[9] = *(v2 + 57);
  v6 = *&v11[9];
  v10[1] = v4;
  *v11 = v5;
  v10[0] = v3;
  *(a1 + 41) = v6;
  v7 = v2[2];
  *a1 = v2[1];
  a1[1] = v7;
  a1[2] = v2[3];
  return outlined init with copy of NavigationTitleStorage(v10, &v9);
}

uint64_t outlined assign with copy of NavigationItemDescription?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NewDocumentProvider?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for InheritedEnvironmentSettable?(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void type metadata accessor for NavigationItemDescription?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined assign with copy of RootModifier?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for RootModifier?);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t SelectionShapeStyle.hasProminentAppearance(in:)(uint64_t a1)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled>);

    PropertyList.Tracker.value<A>(_:for:)();

    if (v3 == 1)
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey>);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey>);

      PropertyList.Tracker.value<A>(_:for:)();

      return v2;
    }
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled>);
    PropertyList.subscript.getter();
    if (v3)
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey>);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey>);
      PropertyList.subscript.getter();
      return v2;
    }
  }

  return 1;
}

uint64_t SelectionShapeStyle._apply(to:)(uint64_t a1)
{
  v6 = *(a1 + 48);
  if (SelectionShapeStyle.hasProminentAppearance(in:)(&v6))
  {
    v2 = static Color.accentColor.getter();
  }

  else
  {
    v2 = static Color.gray.getter();
  }

  *&v6 = v2;
  AnyShapeStyle.init<A>(_:)();
  dispatch thunk of AnyShapeStyleBox.apply(to:)();

  if (*(a1 + 24) == 4)
  {
    v4 = *(a1 + 56);
    *&v6 = *(a1 + 48);
    *(&v6 + 1) = v4;

    v5 = SelectionShapeStyle.hasProminentAppearance(in:)(&v6);

    if (v5)
    {
      static BackgroundProminence.increased.getter();
    }

    else
    {
      static BackgroundProminence.standard.getter();
    }

    return EnvironmentValues.backgroundProminence.setter();
  }

  return result;
}

void UIKitMainMenuController.buildMenu(with:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MainMenuItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v86 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v76 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v76 - v11;
  v13 = type metadata accessor for CommandsList.Item(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = static AppGraph.shared;
  if (static AppGraph.shared)
  {

    v18 = specialized UIKitMainMenuController.supportsMainMenu.getter();
    if (v18)
    {
      v77 = a1;
      if (one-time initialization token for textEditing != -1)
      {
        goto LABEL_71;
      }

      while (1)
      {
        MEMORY[0x1EEE9AC00](v18);
        v76[-2] = v17;
        v76[-1] = v19;
        v20 = static Update.ensure<A>(_:)();
        if (v94 == 1)
        {
          v21 = *(v2 + OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_optionalMenus);
          if ((v21 & 1) == 0)
          {
            *(v2 + OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_optionalMenus) = v21 | 1;
          }
        }

        v90 = v5;
        if (one-time initialization token for textFormatting != -1)
        {
          v20 = swift_once();
        }

        MEMORY[0x1EEE9AC00](v20);
        v76[-2] = v17;
        v76[-1] = v22;
        v23 = static Update.ensure<A>(_:)();
        if (v94 == 1)
        {
          v24 = *(v2 + OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_optionalMenus);
          if ((v24 & 2) == 0)
          {
            *(v2 + OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_optionalMenus) = v24 | 2;
          }
        }

        if (one-time initialization token for toolbar != -1)
        {
          v23 = swift_once();
        }

        MEMORY[0x1EEE9AC00](v23);
        v76[-2] = v17;
        v76[-1] = v25;
        v26 = static Update.ensure<A>(_:)();
        if (v94 == 1)
        {
          v27 = *(v2 + OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_optionalMenus);
          if ((v27 & 4) == 0)
          {
            *(v2 + OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_optionalMenus) = v27 | 4;
          }
        }

        if (one-time initialization token for sidebar != -1)
        {
          v26 = swift_once();
        }

        MEMORY[0x1EEE9AC00](v26);
        v76[-2] = v17;
        v76[-1] = v28;
        v29 = static Update.ensure<A>(_:)();
        if (v94 == 1)
        {
          v30 = *(v2 + OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_optionalMenus);
          if ((v30 & 8) == 0)
          {
            *(v2 + OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_optionalMenus) = v30 | 8;
          }
        }

        if (one-time initialization token for printing != -1)
        {
          v29 = swift_once();
        }

        MEMORY[0x1EEE9AC00](v29);
        v76[-2] = v17;
        v76[-1] = v31;
        static Update.ensure<A>(_:)();
        v87 = 0;
        if (v94 == 1)
        {
          v32 = *(v2 + OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_optionalMenus);
          if ((v32 & 0x10) == 0)
          {
            *(v2 + OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_optionalMenus) = v32 | 0x10;
          }
        }

        GraphHost.environment.getter();

        v96 = v91;
        EnvironmentValues.configuredForRoot()();

        v78 = v94;
        Value = AGGraphGetValue();
        v34 = *Value;
        LODWORD(v83) = *(Value + 8);
        v35 = *(Value + 16);
        v81 = *(Value + 24);
        v82 = v35;
        v85 = v34;

        AGGraphClearUpdate();
        v36 = MEMORY[0x1E69E7CC0];
        v37 = MEMORY[0x1E69E7CC0];
        if (*(v17 + 236) != *MEMORY[0x1E698D3F8])
        {
          v37 = *AGGraphGetValue();
        }

        v84 = v12;
        v76[2] = v17;
        v88 = v2;
        AGGraphSetUpdate();
        v38 = *(v37 + 16);
        if (v38)
        {
          v39 = 0;
          v40 = *(v13 + 20);
          v41 = v37 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
          v42 = *(v14 + 72);
          do
          {
            outlined init with copy of CommandsList.Item(v41, v16, type metadata accessor for CommandsList.Item);
            v43 = *&v16[v40];
            outlined destroy of CommandsList.Item(v16, type metadata accessor for CommandsList.Item);
            if (v43 > v39)
            {
              v39 = v43;
            }

            v41 += v42;
            --v38;
          }

          while (v38);
        }

        else
        {
          v39 = 0;
        }

        v2 = v88;
        *(v88 + OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_commandsListVersion) = v39;
        *&v94 = v36;
        *(&v94 + 1) = MEMORY[0x1E69E7CC8];
        v95 = MEMORY[0x1E69E7CD0];
        CommandsList.resolveOperations(into:)(&v94, v37);

        v93 = v36;
        v91 = v94;
        v92 = v95;
        v96 = v78;

        v44 = _ResolvedCommands.mainMenuItems(env:)(&v96);

        v45 = v44;
        v46 = v44[2];
        if (v46)
        {
          v47 = OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_topLevelItemCoordinators;
          v48 = (*(v90 + 80) + 32) & ~*(v90 + 80);
          v76[1] = v45;
          v16 = v45 + v48;
          v79 = *(v90 + 72);
          v49 = v84;
          v80 = v9;
          do
          {
            outlined init with copy of CommandsList.Item(v16, v49, type metadata accessor for MainMenuItem);
            v51 = *v49;
            v50 = v49[1];
            swift_beginAccess();
            v52 = *(v2 + v47);
            v53 = *(v52 + 16);

            v89 = v51;
            v90 = v50;
            if (v53 && (v54 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v50), (v55 & 1) != 0))
            {
              v56 = *(*(v52 + 56) + 8 * v54);
              swift_endAccess();
            }

            else
            {
              swift_endAccess();
              outlined init with copy of CommandsList.Item(v49, v9, type metadata accessor for MainMenuItem);
              v91 = v78;
              type metadata accessor for MainMenuItemCoordinator();
              swift_allocObject();

              v56 = MainMenuItemCoordinator.init(_:environment:)(v9, &v91);
            }

            outlined init with copy of CommandsList.Item(v49, v9, type metadata accessor for MainMenuItem);
            v57 = *(v56 + 16);
            v58 = v86;
            outlined init with copy of CommandsList.Item(v9, v86, type metadata accessor for MainMenuItem);
            v59 = OBJC_IVAR____TtC7SwiftUI16MainMenuItemHost_mainMenuItem;
            swift_beginAccess();

            outlined assign with copy of MainMenuItem(v58, v57 + v59);
            swift_endAccess();
            type metadata accessor for MainMenuItemHost(0);
            lazy protocol witness table accessor for type MainMenuItemHost and conformance MainMenuItemHost(&lazy protocol witness table cache variable for type MainMenuItemHost and conformance MainMenuItemHost);
            ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

            outlined destroy of CommandsList.Item(v58, type metadata accessor for MainMenuItem);
            outlined destroy of CommandsList.Item(v9, type metadata accessor for MainMenuItem);
            v60 = *(v56 + 16) + OBJC_IVAR____TtC7SwiftUI16MainMenuItemHost_focusedValues;
            v61 = *(v60 + 24);
            *v60 = v85;
            *(v60 + 8) = v83;
            v62 = v81;
            *(v60 + 16) = v82;
            *(v60 + 24) = v62;

            if (v61 != v62)
            {
              ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
            }

            MainMenuItemCoordinator.updateIfNeeded()();

            MEMORY[0x18D00CC30](v63);
            v2 = v88;
            if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v14 = v93;

            UIKitMainMenuController.resolveOptionalMenus(_:)(v64);

            swift_beginAccess();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v96 = *(v2 + v47);
            *(v2 + v47) = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v56, v89, v90, isUniquelyReferenced_nonNull_native);

            *(v2 + v47) = v96;
            swift_endAccess();

            v49 = v84;
            outlined destroy of CommandsList.Item(v84, type metadata accessor for MainMenuItem);
            v16 += v79;
            --v46;
            v9 = v80;
          }

          while (v46);
        }

        else
        {

          v14 = MEMORY[0x1E69E7CC0];
        }

        v66 = v77;
        v5 = v2;
        UIKitMainMenuController.synthesizeSystemMenus(_:)(v77);
        v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12KeyCommandIDV_yycTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        if (v14 >> 62)
        {
          v12 = __CocoaSet.count.getter();
          if (!v12)
          {
LABEL_73:

            v75 = OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_keyCommandMap;
            swift_beginAccess();
            *(v2 + v75) = v17;

            return;
          }
        }

        else
        {
          v12 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v12)
          {
            goto LABEL_73;
          }
        }

        v13 = 0;
        v89 = v14 & 0xC000000000000001;
        v82 = v14 + 32;
        v83 = v14 & 0xFFFFFFFFFFFFFF8;
        v86 = v14;
        v84 = v12;
        while (v89)
        {
          v14 = MEMORY[0x18D00E9C0](v13, v14);
          v69 = __OFADD__(v13++, 1);
          if (v69)
          {
            goto LABEL_69;
          }

LABEL_63:
          v16 = *(v14 + 64);
          v9 = *(v16 + 2);
          if (v9)
          {
            v90 = v17;
            swift_getObjectType();

            v70 = (v16 + 48);
            v71 = v66;
            do
            {
              v72 = *(v70 - 2);
              v73 = *(v70 - 1);
              v74 = *v70;
              v70 += 24;
              outlined copy of MenuBuilderInstruction(v72, v73, v74);
              UIMenuBuilder.perform(instruction:)(v72, v73, v74);
              outlined consume of MenuBuilderInstruction(v72, v73, v74);
              --v9;
            }

            while (v9);

            v2 = v88;
            v66 = v71;
            v17 = v90;
            v12 = v84;
          }

          v5 = *(v14 + 32);
          if (*(v5 + 16))
          {

            v67 = swift_isUniquelyReferenced_nonNull_native();
            *&v91 = v17;
            v68 = v87;
            specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v5, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v67, &v91);
            v87 = v68;

            v17 = v91;
          }

          else
          {
          }

          v14 = v86;
          if (v13 == v12)
          {
            goto LABEL_73;
          }
        }

        if (v13 >= *(v83 + 16))
        {
          goto LABEL_70;
        }

        v14 = *(v82 + 8 * v13);

        v69 = __OFADD__(v13++, 1);
        if (!v69)
        {
          goto LABEL_63;
        }

LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        v18 = swift_once();
      }
    }
  }
}

uint64_t UIKitMainMenuController.canPerformAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  outlined init with copy of Any?(a2, &v27);
  if (*(&v28 + 1))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIKeyCommand);
    if (swift_dynamicCast())
    {
      v7 = v30;
      v8 = UIKeyCommand.discoverabilityID.getter();
      v10 = v9;

      if ((v10 & 1) == 0)
      {
        v11 = OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_keyCommandMap;
        swift_beginAccess();
        if (*(*&v3[v11] + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v8);
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        swift_endAccess();
        return v13 & 1;
      }
    }
  }

  else
  {
    _sypSgWOhTm_4(&v27, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<MenuBuilderInstruction>);
  }

  if (static Selector.== infix(_:_:)())
  {
    v14 = OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_currentResponderCommands;
    swift_beginAccess();
    v15 = *&v3[v14];
    if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v17 & 1) != 0))
    {
      outlined init with copy of _Benchmark(*(v15 + 56) + 40 * v16, &v27);
    }

    else
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
    }

    swift_endAccess();
    v13 = *(&v28 + 1) != 0;
    _sypSgWOhTm_4(&v27, &lazy cache variable for type metadata for CommandAction?, type metadata accessor for CommandAction, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<CommandGroupPlacement>);
  }

  else
  {
    outlined init with copy of Any?(a2, &v27);
    v18 = *(&v28 + 1);
    if (*(&v28 + 1))
    {
      v19 = __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
      v20 = *(v18 - 8);
      v21 = MEMORY[0x1EEE9AC00](v19);
      v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v23, v21);
      v24 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v20 + 8))(v23, v18);
      __swift_destroy_boxed_opaque_existential_1(&v27);
    }

    else
    {
      v24 = 0;
    }

    v26.receiver = v3;
    v26.super_class = ObjectType;
    v13 = objc_msgSendSuper2(&v26, sel_canPerformAction_withSender_, a1, v24);
    swift_unknownObjectRelease();
  }

  return v13 & 1;
}

Swift::Void __swiftcall UIKitMainMenuController._performMainMenuShortcutKeyCommand(_:)(UIKeyCommand *a1)
{
  v2 = v1;
  v3 = UIKeyCommand.discoverabilityID.getter();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    v6 = OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_keyCommandMap;
    swift_beginAccess();
    v7 = *(v2 + v6);
    if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
    {
      v10 = *(*(v7 + 56) + 16 * v8);
      swift_endAccess();

      v10(v11);
    }

    else
    {
      swift_endAccess();
    }
  }
}

uint64_t UIKitMainMenuController.delete(_:)()
{
  v1 = OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_currentResponderCommands;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(sel_delete_), (v4 & 1) != 0))
  {
    outlined init with copy of _Benchmark(*(v2 + 56) + 40 * v3, &v11);
    if (*(&v12 + 1))
    {
      outlined init with copy of _Benchmark(&v11, v8);
      _sypSgWOhTm_4(&v11, &lazy cache variable for type metadata for CommandAction?, type metadata accessor for CommandAction, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<CommandGroupPlacement>);
      swift_endAccess();
      v5 = v9;
      v6 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v6 + 8))(v5, v6);
      return __swift_destroy_boxed_opaque_existential_1(v8);
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  _sypSgWOhTm_4(&v11, &lazy cache variable for type metadata for CommandAction?, type metadata accessor for CommandAction, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<CommandGroupPlacement>);
  return swift_endAccess();
}

Swift::Void __swiftcall UIKitMainMenuController.commandsDidChange()()
{
  v1 = type metadata accessor for CommandsList.Item(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static AppGraph.shared)
  {
    if (*(static AppGraph.shared + 236) == *MEMORY[0x1E698D3F8])
    {
      v6 = MEMORY[0x1E69E7CC0];
      v7 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = v3;

      v6 = *AGGraphGetValue();

      v3 = v13;
      v7 = *(v6 + 16);
      if (v7)
      {
LABEL_4:
        v8 = 0;
        v9 = *(v3 + 20);
        v10 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
        v11 = *(v2 + 72);
        do
        {
          outlined init with copy of CommandsList.Item(v10, v5, type metadata accessor for CommandsList.Item);
          v12 = *&v5[v9];
          outlined destroy of CommandsList.Item(v5, type metadata accessor for CommandsList.Item);
          if (v12 > v8)
          {
            v8 = v12;
          }

          v10 += v11;
          --v7;
        }

        while (v7);

LABEL_11:
        if (v8 == *(v0 + OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_commandsListVersion))
        {
          return;
        }

        goto LABEL_12;
      }
    }

    v8 = 0;
    goto LABEL_11;
  }

LABEL_12:
  if (specialized UIKitMainMenuController.supportsMainMenu.getter())
  {
    v14 = [objc_opt_self() mainSystem];
    [v14 setNeedsRebuild];
  }
}

id UIKitMainMenuController.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_topLevelItemCoordinators;
  v3 = MEMORY[0x1E69E7CC0];
  *&v0[v2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI23MainMenuItemCoordinator33_B619265B3CBBC7F42E2392FC185432F2LLCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4 = OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_keyCommandMap;
  *&v0[v4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12KeyCommandIDV_yycTt0g5Tf4g_n(v3);
  v5 = OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_currentResponderCommands;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  *&v0[v5] = static ResponderCommandsKey.defaultValue;
  *&v0[OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_commandsListVersion] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_optionalMenus] = 0;
  v10.receiver = v0;
  v10.super_class = ObjectType;

  v6 = objc_msgSendSuper2(&v10, sel_init);
  v7 = static AppGraph.shared;
  if (static AppGraph.shared)
  {

    v8 = v6;
    specialized AppGraph.addObserver(_:)(v8, v7);
  }

  return v6;
}

void MainMenuItemCoordinator.updateIfNeeded()()
{
  v1 = v0;
  v2 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v36[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  if (*(v0 + 72) == 1)
  {
    *(v0 + 72) = 0;
    v5 = *(*(v0 + 16) + 16);
    swift_beginAccess();
    v6 = *(v5 + 361);
    *(v5 + 361) = v6 | 2;
    if ((v6 | 2) != v6)
    {

      GraphHost.uninstantiate(immediately:)(0);
    }

    *&v37[0] = 0;
    BYTE8(v37[0]) = 1;
    type metadata accessor for MainMenuItemHost(0);
    lazy protocol witness table accessor for type MainMenuItemHost and conformance MainMenuItemHost(&lazy protocol witness table cache variable for type MainMenuItemHost and conformance MainMenuItemHost);

    ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();

    lazy protocol witness table accessor for type MainMenuItemHost and conformance MainMenuItemHost(&lazy protocol witness table cache variable for type MainMenuItemHost and conformance MainMenuItemHost);

    ViewRendererHost.updateViewGraph<A>(body:)();

    v7 = *&v37[0];
    if (*(*&v37[0] + 16))
    {
      v8 = MEMORY[0x1E69E7CC0];
      *&v37[0] = MEMORY[0x1E69E7CC0];
      v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v10 = MEMORY[0x1E69E7CC8];
      v4[8] = 0;
      *(v4 + 2) = v10;
      *(v4 + 3) = v9;
      *(v4 + 4) = v8;
      *(v4 + 5) = v10;
      v4[48] = 0;
      type metadata accessor for _ContiguousArrayStorage<CommandGroupPlacement>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
      v11 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
      v12 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
      v13 = swift_allocObject();
      v35 = xmmword_18CD63400;
      *(v13 + 16) = xmmword_18CD63400;
      if (one-time initialization token for empty != -1)
      {
        swift_once();
      }

      v14 = __swift_project_value_buffer(v11, static MenuVisitor.MenuStackGroup.empty);
      outlined init with copy of CommandsList.Item(v14, v13 + v12, type metadata accessor for MenuVisitor.MenuStackGroup);
      *(v4 + 7) = v13;
      v15 = *(v2 + 32);
      v16 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
      (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
      *v4 = 3;
      MenuVisitor.visit(_:uniqueNames:)(v7, v37);

      v17 = v4[8];
      v18 = *(v4 + 2);
      v19 = *(v4 + 3);
      v20 = *(v4 + 4);
      v21 = *(v4 + 5);

      outlined destroy of CommandsList.Item(v4, type metadata accessor for MenuVisitor);
      *(v1 + 24) = v17;
      *(v1 + 32) = v18;
      *(v1 + 40) = v19;
      *(v1 + 48) = v20;
      *(v1 + 56) = v21;

      if (v17)
      {
        if (v17 == 1)
        {
          type metadata accessor for _ContiguousArrayStorage<MenuBuilderInstruction>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuBuilderInstruction>, &type metadata for MenuBuilderInstruction, MEMORY[0x1E69E6F90]);
          v22 = swift_allocObject();
          *(v22 + 16) = v35;
          v23 = *MEMORY[0x1E69DE238];
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
          v24 = (*(v1 + 16) + OBJC_IVAR____TtC7SwiftUI16MainMenuItemHost_mainMenuItem);
          swift_beginAccess();
          v26 = *v24;
          v25 = v24[1];
          v27 = *(v1 + 48);
          v28 = v23;

          v29._countAndFlagsBits = v26;
          v29._object = v25;
          v42.value.super.isa = 0;
          v42.is_nil = 0;
          UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v30, v29, 0, v42, 0, 0xFFFFFFFFFFFFFFFFLL, v27, v34);
          *(v22 + 32) = v28;
          *(v22 + 40) = v31;
          *(v22 + 48) = 4;
        }

        else
        {
          v32 = *(v1 + 40);
          v37[0] = *(v1 + 24);
          v37[1] = v32;
          v38 = *(v1 + 56);
          v39 = *(&v37[0] + 1);
          v40 = v32;
          v41 = v38;
          outlined init with copy of CommandsList.Item(&v39, v36, type metadata accessor for [KeyCommandID : ()]);
          outlined init with copy of MenuBuilderContext.PlacementMap(&v40, v36);
          outlined init with copy of CommandsList.Item(&v40 + 8, v36, type metadata accessor for [UIMenuElement]);
          outlined init with copy of CommandsList.Item(&v41, v36, type metadata accessor for [UIMenuElement : CommandOperation]);
          v22 = specialized MainMenuItemCoordinator.mergeInstructions(from:)(v37);
          outlined destroy of CommandsList.Item(&v39, type metadata accessor for [KeyCommandID : ()]);
          outlined destroy of MenuBuilderContext.PlacementMap(&v40);
          outlined destroy of CommandsList.Item(&v40 + 8, type metadata accessor for [UIMenuElement]);
          outlined destroy of CommandsList.Item(&v41, type metadata accessor for [UIMenuElement : CommandOperation]);
        }

        *(v1 + 64) = v22;
      }

      v33 = [objc_opt_self() mainSystem];
      [v33 setNeedsRebuild];
    }

    else
    {
    }
  }
}

void UIKitMainMenuController.resolveOptionalMenus(_:)(uint64_t a1)
{
  v71 = OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_optionalMenus;
  v2 = *(v1 + OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_optionalMenus);
  if ((v2 & 2) == 0)
  {
    v3 = (a1 + 48);
    v4 = *(a1 + 16) + 1;
    while (1)
    {
      if (!--v4)
      {
        v2 = *(v72 + v71);
        goto LABEL_14;
      }

      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
      if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
      {
        break;
      }

      v3 += 24;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v5;
      outlined copy of MenuBuilderInstruction(v5, v6, v7);

      outlined consume of MenuBuilderInstruction(v5, v6, v7);

      if (v13)
      {
        goto LABEL_12;
      }
    }

    v15 = v5;
    outlined copy of MenuBuilderInstruction(v5, v6, v7);

    outlined consume of MenuBuilderInstruction(v5, v6, v7);

LABEL_12:
    v2 = *(v72 + v71);
    if ((v2 & 2) == 0)
    {
      v2 |= 2uLL;
      *(v72 + v71) = v2;
    }
  }

LABEL_14:
  if ((v2 & 1) == 0)
  {
    v16 = (a1 + 48);
    v17 = *(a1 + 16) + 1;
    while (1)
    {
      if (!--v17)
      {
        v2 = *(v72 + v71);
        goto LABEL_27;
      }

      v18 = *(v16 - 2);
      v19 = *(v16 - 1);
      v20 = *v16;
      v73 = v18;
      outlined copy of MenuBuilderInstruction(v18, v19, v20);
      v21 = MEMORY[0x18D00C850](0xD000000000000029, 0x800000018CD51A60);
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      if (v22 == v25 && v24 == v27)
      {
        break;
      }

      v16 += 24;
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined consume of MenuBuilderInstruction(v18, v19, v20);

      if (v29)
      {
        goto LABEL_25;
      }
    }

    outlined consume of MenuBuilderInstruction(v18, v19, v20);

LABEL_25:
    v2 = *(v72 + v71);
    if ((v2 & 1) == 0)
    {
      v2 |= 1uLL;
      *(v72 + v71) = v2;
    }
  }

LABEL_27:
  if ((v2 & 4) == 0)
  {
    v30 = (a1 + 48);
    v31 = *(a1 + 16) + 1;
    while (1)
    {
      if (!--v31)
      {
        v2 = *(v72 + v71);
        goto LABEL_40;
      }

      v32 = *(v30 - 2);
      v33 = *(v30 - 1);
      v34 = *v30;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;
      if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
      {
        break;
      }

      v30 += 24;
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v41 = v32;
      outlined copy of MenuBuilderInstruction(v32, v33, v34);

      outlined consume of MenuBuilderInstruction(v32, v33, v34);

      if (v40)
      {
        goto LABEL_38;
      }
    }

    v42 = v32;
    outlined copy of MenuBuilderInstruction(v32, v33, v34);

    outlined consume of MenuBuilderInstruction(v32, v33, v34);

LABEL_38:
    v2 = *(v72 + v71);
    if ((v2 & 4) == 0)
    {
      v2 |= 4uLL;
      *(v72 + v71) = v2;
    }
  }

LABEL_40:
  if ((v2 & 8) == 0)
  {
    v43 = (a1 + 48);
    v44 = *(a1 + 16) + 1;
    while (1)
    {
      if (!--v44)
      {
        v2 = *(v72 + v71);
        goto LABEL_53;
      }

      v45 = *(v43 - 2);
      v46 = *(v43 - 1);
      v47 = *v43;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;
      if (v48 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v50 == v51)
      {
        break;
      }

      v43 += 24;
      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v54 = v45;
      outlined copy of MenuBuilderInstruction(v45, v46, v47);

      outlined consume of MenuBuilderInstruction(v45, v46, v47);

      if (v53)
      {
        goto LABEL_51;
      }
    }

    v55 = v45;
    outlined copy of MenuBuilderInstruction(v45, v46, v47);

    outlined consume of MenuBuilderInstruction(v45, v46, v47);

LABEL_51:
    v2 = *(v72 + v71);
    if ((v2 & 8) == 0)
    {
      v2 |= 8uLL;
      *(v72 + v71) = v2;
    }
  }

LABEL_53:
  if ((v2 & 0x10) == 0)
  {
    v56 = (a1 + 48);
    v57 = *(a1 + 16) + 1;
    while (--v57)
    {
      v58 = *(v56 - 2);
      v59 = *(v56 - 1);
      v60 = *v56;
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;
      if (v61 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v63 == v64)
      {
        v68 = v58;
        outlined copy of MenuBuilderInstruction(v58, v59, v60);

        outlined consume of MenuBuilderInstruction(v58, v59, v60);

LABEL_63:
        v69 = *(v72 + v71);
        if ((v69 & 0x10) == 0)
        {
          *(v72 + v71) = v69 | 0x10;
        }

        return;
      }

      v56 += 24;
      v66 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v67 = v58;
      outlined copy of MenuBuilderInstruction(v58, v59, v60);

      outlined consume of MenuBuilderInstruction(v58, v59, v60);

      if (v66)
      {
        goto LABEL_63;
      }
    }
  }
}

uint64_t UIKitMainMenuController.synthesizeSystemMenus(_:)(void *a1)
{
  v2 = v1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
  v20.is_nil = MEMORY[0x18D00C850](0xD00000000000002ALL, 0x800000018CD51A30);
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v20.value.super.isa = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(MEMORY[0x1E69E7CC0], v4, 0, v20, 1, 0xFFFFFFFFFFFFFFFFLL, MEMORY[0x1E69E7CC0], v13);
  v6 = v5;
  [a1 insertSiblingMenu:v5 afterMenuForIdentifier:*MEMORY[0x1E69DE0D8]];

  v7 = OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_optionalMenus;
  if ((*(v2 + OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_optionalMenus) & 0x10) == 0)
  {
    static Semantics.v7.getter();
    if (isLinkedOnOrAfter(_:)())
    {
      [a1 removeMenuForIdentifier_];
    }
  }

  if ((*(v2 + v7) & 1) != 0 || (static Semantics.v7.getter(), (isLinkedOnOrAfter(_:)() & 1) == 0))
  {
    v8 = *MEMORY[0x1E69DE0F8];
    v18 = specialized thunk for @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned [UIMenuElement]);
    v19 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned [UIMenuElement]);
    v17 = &block_descriptor_33;
    v9 = _Block_copy(&aBlock);

    [a1 replaceChildrenOfMenuForIdentifier:v8 fromChildrenBlock:v9];
    _Block_release(v9);
    result = swift_isEscapingClosureAtFileLocation();
    if (result)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    [a1 removeMenuForIdentifier_];
    [a1 removeMenuForIdentifier_];
    [a1 removeMenuForIdentifier_];
    [a1 removeMenuForIdentifier_];
    [a1 removeMenuForIdentifier_];
  }

  if ((*(v2 + v7) & 2) == 0)
  {
    static Semantics.v7.getter();
    if (isLinkedOnOrAfter(_:)())
    {
      result = [a1 removeMenuForIdentifier_];
      goto LABEL_12;
    }
  }

  v11 = *MEMORY[0x1E69DE118];
  v18 = specialized thunk for @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned [UIMenuElement]);
  v19 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned [UIMenuElement]);
  v17 = &block_descriptor_36_0;
  v12 = _Block_copy(&aBlock);

  [a1 replaceChildrenOfMenuForIdentifier:v11 fromChildrenBlock:v12];
  _Block_release(v12);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

LABEL_12:
  if ((*(v2 + v7) & 4) == 0)
  {
    static Semantics.v7.getter();
    result = isLinkedOnOrAfter(_:)();
    if (result)
    {
      result = [a1 removeMenuForIdentifier_];
    }
  }

  if ((*(v2 + v7) & 8) == 0)
  {
    static Semantics.v7.getter();
    result = isLinkedOnOrAfter(_:)();
    if (result)
    {
      return [a1 removeMenuForIdentifier_];
    }
  }

  return result;
}

id UIMenuBuilder.perform(instruction:)(uint64_t isEscapingClosureAtFileLocation, void *a2, unsigned __int8 a3)
{
  v6 = a3;
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v8 = swift_allocObject();
        *(v8 + 16) = a2;
        v9 = swift_allocObject();
        *(v9 + 16) = partial apply for closure #2 in UIMenuBuilder.perform(instruction:);
        *(v9 + 24) = v8;
        v26 = thunk for @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned [UIMenuElement])partial apply;
        v27 = v9;
        v22 = MEMORY[0x1E69E9820];
        v23 = 1107296256;
        v24 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned [UIMenuElement]);
        v25 = &block_descriptor_20;
        v10 = _Block_copy(&v22);
        v11 = a2;

        [v3 replaceChildrenOfMenuForIdentifier:isEscapingClosureAtFileLocation fromChildrenBlock:v10];
        _Block_release(v10);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return result;
        }

        __break(1u);
        goto LABEL_10;
      }
    }

    else
    {
      v13 = swift_allocObject();
      *(v13 + 16) = a2;
      v14 = swift_allocObject();
      *(v14 + 16) = partial apply for closure #1 in UIMenuBuilder.perform(instruction:);
      *(v14 + 24) = v13;
      v26 = thunk for @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned [UIMenuElement])partial apply;
      v27 = v14;
      v22 = MEMORY[0x1E69E9820];
      v23 = 1107296256;
      v24 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned [UIMenuElement]);
      v25 = &block_descriptor_30;
      v15 = _Block_copy(&v22);
      v16 = a2;

      [v3 replaceChildrenOfMenuForIdentifier:isEscapingClosureAtFileLocation fromChildrenBlock:v15];
      _Block_release(v15);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    v7 = &selRef_insertChildMenu_atStartOfMenuForIdentifier_;
    goto LABEL_15;
  }

  if (a3 <= 4u)
  {
    v7 = &selRef_insertChildMenu_atEndOfMenuForIdentifier_;
    if (a3 != 3)
    {
      v7 = &selRef_insertSiblingMenu_beforeMenuForIdentifier_;
    }

    goto LABEL_15;
  }

LABEL_10:
  if (v6 == 5)
  {
    v7 = &selRef_insertSiblingMenu_afterMenuForIdentifier_;
LABEL_15:
    v17 = *v7;

    return [v3 v17];
  }

  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  v19 = swift_allocObject();
  *(v19 + 16) = partial apply for closure #3 in UIMenuBuilder.perform(instruction:);
  *(v19 + 24) = v18;
  v26 = partial apply for thunk for @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned [UIMenuElement]);
  v27 = v19;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned [UIMenuElement]);
  v25 = &block_descriptor_52;
  v20 = _Block_copy(&v22);

  [v3 replaceChildrenOfMenuForIdentifier:isEscapingClosureAtFileLocation fromChildrenBlock:v20];
  _Block_release(v20);
  v21 = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in UIKitMainMenuController.synthesizeTextEditingMenu(_:)(unint64_t a1)
{
  v1 = a1;
  children._rawValue = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_19:

    return v1;
  }

LABEL_3:
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = *MEMORY[0x1E69DE1B8];
  while (1)
  {
    if (v4)
    {
      v6 = MEMORY[0x18D00E9C0](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v6 = *(v1 + 8 * v3 + 32);
    }

    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {

      v16 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_49;
      }

      goto LABEL_18;
    }

    v9 = [v8 identifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_21;
    }

    v16 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      v2 = __CocoaSet.count.getter();
      if (!v2)
      {
        goto LABEL_19;
      }

      goto LABEL_3;
    }

LABEL_18:
    ++v3;
    if (v16 == v2)
    {
      goto LABEL_19;
    }
  }

LABEL_21:
  v32 = v1;
  v17 = v3 + 4;
  if (__OFADD__(v3, 4))
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v17 < v3)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (children._rawValue)
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      v5 = v1;
    }

    else
    {
      v5 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    if (__CocoaSet.count.getter() >= v3)
    {
      result = __CocoaSet.count.getter();
      goto LABEL_31;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result < v3)
  {
    goto LABEL_55;
  }

LABEL_31:
  if (result < v17)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (!v4 || v3 == v17)
  {
    swift_bridgeObjectRetain_n();
    v19 = v1 & 0xFFFFFFFFFFFFFF8;
    if (!children._rawValue)
    {
      goto LABEL_35;
    }

LABEL_38:

    v19 = _CocoaArrayWrapper.subscript.getter();
    v5 = v21;
    v1 = v22;
    if ((v22 & 1) == 0)
    {
LABEL_39:
      specialized _copyCollectionToContiguousArray<A>(_:)(v19, v20, v5, v1);
      preferredElementSize = v23;
      goto LABEL_46;
    }

LABEL_40:
    v4 = v20;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v12 = v19;
    v25 = swift_dynamicCastClass();
    if (!v25)
    {
      swift_unknownObjectRelease();
      v25 = MEMORY[0x1E69E7CC0];
    }

    v26 = *(v25 + 16);

    if (!__OFSUB__(v1 >> 1, v5))
    {
      if (v26 == (v1 >> 1) - v5)
      {
        preferredElementSize = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (preferredElementSize == UIMenuElementSizeSmall)
        {
          preferredElementSize = MEMORY[0x1E69E7CC0];
LABEL_46:
          swift_unknownObjectRelease();
        }

        type metadata accessor for _ContiguousArrayStorage<MenuBuilderInstruction>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_18CD69590;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
        v33.is_nil = MEMORY[0x18D00C850](0xD000000000000029, 0x800000018CD51A60);
        v28._countAndFlagsBits = 0;
        v28._object = 0xE000000000000000;
        v33.value.super.isa = 0;
        UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v29, v28, 0, v33, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children);
        *(v27 + 32) = v30;
        specialized Array.replaceSubrange<A>(_:with:)(v3, v3 + 4, v27);

        return v32;
      }

LABEL_58:
      v19 = v12;
      swift_unknownObjectRelease();
      v20 = v4;
      goto LABEL_39;
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v3 < v17)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
    swift_bridgeObjectRetain_n();
    _ArrayBuffer._typeCheckSlowPath(_:)(v3);
    _ArrayBuffer._typeCheckSlowPath(_:)(v3 + 1);
    _ArrayBuffer._typeCheckSlowPath(_:)(v3 + 2);
    _ArrayBuffer._typeCheckSlowPath(_:)(v3 + 3);
    if (children._rawValue)
    {
      goto LABEL_38;
    }

LABEL_35:
    v20 = v19 + 32;
    v1 = (2 * v17) | 1;
    v5 = v3;
    goto LABEL_40;
  }

  __break(1u);
  return result;
}

Class thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned [UIMenuElement])(uint64_t a1)
{
  v1 = *(a1 + 32);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v1();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

uint64_t closure #1 in UIKitMainMenuController.synthesizeFormatMenu(_:)(UIMenuElementSize a1)
{
  type metadata accessor for _ContiguousArrayStorage<MenuBuilderInstruction>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18CD69590;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
  v3 = MEMORY[0x18D00C850](0xD00000000000002CLL, 0x800000018CD51A90);

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v9.value.super.isa = 0;
  v9.is_nil = v3;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v5, v4, 0, v9, 1, 0xFFFFFFFFFFFFFFFFLL, a1, v8);
  *(v2 + 32) = v6;
  return v2;
}

void *UIKitMainMenuController.documentCommands()()
{
  v1 = type metadata accessor for CommandGroupPlacement(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _ContiguousArrayStorage<CommandGroupPlacement>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CommandGroupPlacement>, type metadata accessor for CommandGroupPlacement, MEMORY[0x1E69E6F90]);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v39 = *(v2 + 72);
  v33 = swift_allocObject();
  v6 = v33 + v5;
  if (one-time initialization token for saveItem != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v7 = __swift_project_value_buffer(v1, static CommandGroupPlacement.saveItem);
    outlined init with copy of CommandsList.Item(v7, v6, type metadata accessor for CommandGroupPlacement);
    if (one-time initialization token for printItem != -1)
    {
      swift_once();
    }

    v38 = v1;
    v8 = __swift_project_value_buffer(v1, static CommandGroupPlacement.printItem);
    outlined init with copy of CommandsList.Item(v8, v6 + v39, type metadata accessor for CommandGroupPlacement);
    v9 = OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_topLevelItemCoordinators;
    swift_beginAccess();
    v10 = *(v0 + v9);
    v0 = v10 + 64;
    v11 = 1 << *(v10 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v1 = v12 & *(v10 + 64);
    v13 = (v11 + 63) >> 6;
    v36 = v10;

    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    v34 = v13;
    v35 = v0;
LABEL_8:
    if (!v1)
    {
      break;
    }

    v16 = v14;
LABEL_13:
    v37 = (v1 - 1) & v1;
    v17 = *(*(v36 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v1)))));

    v18 = 0;
    v19 = 0;
    while (1)
    {
      v1 = v18;
      v20 = v6;
      v21 = *(v17 + 40);
      outlined init with copy of CommandsList.Item(v6 + v19 * v39, v4, type metadata accessor for CommandGroupPlacement);
      if (*(v21 + 16))
      {
        v22 = *(v38 + 20);

        v23 = specialized __RawDictionaryStorage.find<A>(_:)(&v4[v22]);
        v0 = MEMORY[0x1E69E7CC0];
        if (v24)
        {
          v0 = *(*(v21 + 56) + 8 * v23);
        }
      }

      else
      {
        v0 = MEMORY[0x1E69E7CC0];
      }

      outlined destroy of CommandsList.Item(v4, type metadata accessor for CommandGroupPlacement);
      v25 = *(v0 + 16);
      v26 = v15[2];
      v6 = v26 + v25;
      if (__OFADD__(v26, v25))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v6 <= v15[3] >> 1)
      {
        if (*(v0 + 16))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v26 <= v6)
        {
          v28 = v26 + v25;
        }

        else
        {
          v28 = v26;
        }

        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v28, 1, v15);
        if (*(v0 + 16))
        {
LABEL_30:
          v6 = (v15[3] >> 1) - v15[2];
          type metadata accessor for PlatformItemList.Item();
          if (v6 < v25)
          {
            goto LABEL_37;
          }

          swift_arrayInitWithCopy();

          if (v25)
          {
            v29 = v15[2];
            v30 = __OFADD__(v29, v25);
            v31 = v29 + v25;
            if (v30)
            {
              goto LABEL_38;
            }

            v15[2] = v31;
          }

          goto LABEL_15;
        }
      }

      if (v25)
      {
        goto LABEL_36;
      }

LABEL_15:
      v18 = 1;
      v19 = 1;
      v6 = v20;
      if (v1)
      {

        v14 = v16;
        v13 = v34;
        v0 = v35;
        v1 = v37;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_39;
    }

    if (v16 >= v13)
    {
      break;
    }

    v1 = *(v0 + 8 * v16);
    ++v14;
    if (v1)
    {
      goto LABEL_13;
    }
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return v15;
}

uint64_t MainMenuItemCoordinator.init(_:environment:)(uint64_t a1, unint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for MainMenuItem(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = a2[1];
  v11 = MEMORY[0x1E69E7CC0];
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v3 + 24) = 0;
  v13 = MEMORY[0x1E69E7CC8];
  *(v3 + 32) = MEMORY[0x1E69E7CC8];
  *(v3 + 40) = v12;
  *(v3 + 48) = v11;
  *(v3 + 56) = v13;
  *(v3 + 64) = v11;
  *(v3 + 72) = 1;
  outlined init with copy of CommandsList.Item(a1, v8, type metadata accessor for MainMenuItem);
  v22[0] = v9;
  v22[1] = v10;
  v19 = 0;
  v20 = 0;
  v21 = xmmword_18CD76350;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(v11);
  v18[0] = 0;
  v18[1] = v11;
  v18[2] = v14;
  type metadata accessor for MainMenuItemHost(0);
  swift_allocObject();
  v15 = MainMenuItemHost.init(_:environment:focusedValues:focusStore:)(v8, v22, &v19, v18);
  outlined destroy of CommandsList.Item(a1, type metadata accessor for MainMenuItem);
  *(v3 + 16) = v15;
  *(v15 + OBJC_IVAR____TtC7SwiftUI16MainMenuItemHost_delegate + 8) = &protocol witness table for MainMenuItemCoordinator;
  swift_unknownObjectUnownedAssign();
  return v3;
}

void closure #1 in MainMenuItemCoordinator.mergeInstructions(from:)(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v83 = a4;
  v9 = type metadata accessor for CommandGroupPlacement(0);
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CommandOperation();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v83 - v16;
  v18 = *(a2 + 32);
  if (!*(v18 + 16) || (v19 = *a1, v20 = specialized __RawDictionaryStorage.find<A>(_:)(v19), (v21 & 1) == 0))
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = -1;
    return;
  }

  outlined init with copy of CommandsList.Item(*(v18 + 56) + *(v12 + 72) * v20, v14, type metadata accessor for CommandOperation);
  outlined init with take of CommandOperation(v14, v17);
  v22 = v84;
  outlined init with copy of CommandsList.Item(&v17[*(v11 + 20)], v84, type metadata accessor for CommandGroupPlacement);
  v23 = *v17;
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v19;
  }

  if (one-time initialization token for placements != -1)
  {
    swift_once();
  }

  v26 = static MenuBuilderInstruction.placements;
  if (*(static MenuBuilderInstruction.placements + 2) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v22 + *(v9 + 20)), (v28 & 1) != 0))
  {
    v29 = *(v26[7] + 8 * v27);
    if (v23 == 2)
    {
      if (v24)
      {
        v47 = v29;
        if ([v24 options])
        {
          v48 = *v83;
          if (*(*v83 + 16) && (v49 = specialized __RawDictionaryStorage.find<A>(_:)(v47), (v50 & 1) != 0))
          {
            v86 = *(*(v48 + 56) + 8 * v49);

            v51 = [v24 children];
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
            v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            specialized Array.append<A>(contentsOf:)(v52);
            v53 = v86;
            v54 = v83;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v85 = *v54;
            *v54 = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v53, v47, isUniquelyReferenced_nonNull_native);

            *v54 = v85;
          }

          else
          {
            v79 = [v24 children];
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
            v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v81 = v83;
            v82 = swift_isUniquelyReferenced_nonNull_native();
            v86 = *v81;
            *v81 = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v80, v47, v82);

            *v81 = v86;
          }

          outlined destroy of CommandsList.Item(v17, type metadata accessor for CommandOperation);
          v37 = 0;
          v19 = 0;
          v45 = -1;
          v22 = v84;
          goto LABEL_41;
        }
      }

      else
      {
        v60 = v29;
      }

      v61 = v29;
      v62 = v83;
      v63 = *v83;
      if (*(*v83 + 16) && (v64 = specialized __RawDictionaryStorage.find<A>(_:)(v61), (v65 & 1) != 0))
      {
        v86 = *(*(v63 + 56) + 8 * v64);
        v66 = v19;

        MEMORY[0x18D00CC30](v67);
        if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v22 = v84;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v68 = v86;
        v69 = swift_isUniquelyReferenced_nonNull_native();
        v85 = *v62;
        *v62 = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v68, v61, v69);

        v70 = v85;
      }

      else
      {
        type metadata accessor for _ContiguousArrayStorage<MenuBuilderInstruction>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v71 = swift_allocObject();
        *(v71 + 16) = xmmword_18CD69590;
        *(v71 + 32) = v19;
        v72 = v19;
        v73 = swift_isUniquelyReferenced_nonNull_native();
        v86 = *v62;
        *v62 = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, v61, v73);

        v70 = v86;
      }

      *v62 = v70;
      goto LABEL_39;
    }

    if (v23 != 1)
    {
      if (!v23)
      {
        if (v24)
        {
          v19 = v24;
          v30 = *a3;
          v31 = *(*a3 + 16);
          v32 = v29;
          v33 = v32;
          v34 = v32;
          if (v31)
          {
            v35 = specialized __RawDictionaryStorage.find<A>(_:)(v32);
            v34 = v33;
            if (v36)
            {
              v34 = *(*(v30 + 56) + 8 * v35);
            }
          }

          v37 = v34;
          v38 = [v19 identifier];
          v39 = v33;
          v40 = swift_isUniquelyReferenced_nonNull_native();
          v86 = *a3;
          *a3 = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v38, v39, v40);

          *a3 = v86;
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;
          if (v41 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v43 == v44)
          {
          }

          else
          {
            v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v77 & 1) == 0)
            {
              outlined destroy of CommandsList.Item(v17, type metadata accessor for CommandOperation);

              v45 = 5;
              v22 = v84;
              goto LABEL_41;
            }
          }

          outlined destroy of CommandsList.Item(v17, type metadata accessor for CommandOperation);

          v45 = 3;
          v22 = v84;
LABEL_41:
          *a5 = v37;
          *(a5 + 8) = v19;
          goto LABEL_42;
        }

        v74 = *(*v83 + 16);
        v75 = v29;
        v37 = v75;
        if (!v74 || (specialized __RawDictionaryStorage.find<A>(_:)(v75), (v76 & 1) == 0))
        {
          outlined destroy of CommandsList.Item(v17, type metadata accessor for CommandOperation);
          v78 = v19;
          v45 = 1;
          goto LABEL_41;
        }

LABEL_45:

        outlined destroy of CommandsList.Item(v17, type metadata accessor for CommandOperation);

        goto LABEL_40;
      }

LABEL_39:

      outlined destroy of CommandsList.Item(v17, type metadata accessor for CommandOperation);
LABEL_40:
      v37 = 0;
      v19 = 0;
      v45 = -1;
      goto LABEL_41;
    }

    if (!v24)
    {
      v56 = *(*v83 + 16);
      v57 = v29;
      v37 = v57;
      if (!v56 || (specialized __RawDictionaryStorage.find<A>(_:)(v57), (v58 & 1) == 0))
      {
        outlined destroy of CommandsList.Item(v17, type metadata accessor for CommandOperation);
        v59 = v19;
        v45 = 0;
        goto LABEL_41;
      }

      goto LABEL_45;
    }

    v46 = v29;
    outlined destroy of CommandsList.Item(v17, type metadata accessor for CommandOperation);
    *a5 = v46;
    *(a5 + 8) = v24;
    v45 = 4;
  }

  else
  {

    outlined destroy of CommandsList.Item(v17, type metadata accessor for CommandOperation);
    *a5 = 0;
    *(a5 + 8) = 0;
    v45 = -1;
  }

LABEL_42:
  *(a5 + 16) = v45;
  outlined destroy of CommandsList.Item(v22, type metadata accessor for CommandGroupPlacement);
}

uint64_t MainMenuItemCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id outlined copy of MenuBuilderInstruction(id result, void *a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    goto LABEL_12;
  }

  if (a3 <= 4u)
  {
    if (a3 != 3 && a3 != 4)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (a3 == 5)
  {
LABEL_12:
    v4 = result;

    return a2;
  }

  if (a3 == 6)
  {
    v3 = result;
  }

  return result;
}

void outlined consume of MenuBuilderInstruction(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    goto LABEL_12;
  }

  if (a3 <= 4u)
  {
    if (a3 != 3 && a3 != 4)
    {
      return;
    }

    goto LABEL_12;
  }

  if (a3 == 5)
  {
LABEL_12:

    return;
  }

  if (a3 == 6)
  {
  }
}

uint64_t initializeBufferWithCopyOfBuffer for MenuBuilderInstruction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of MenuBuilderInstruction(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for MenuBuilderInstruction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of MenuBuilderInstruction(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of MenuBuilderInstruction(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for MenuBuilderInstruction(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of MenuBuilderInstruction(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for MenuBuilderInstruction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MenuBuilderInstruction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t one-time initialization function for placements()
{
  type metadata accessor for _ContiguousArrayStorage<CommandGroupPlacement>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(UUID, UIMenuIdentifier)>, type metadata accessor for (UUID, UIMenuIdentifier), MEMORY[0x1E69E6F90]);
  type metadata accessor for (UUID, UIMenuIdentifier)();
  v1 = v0;
  v2 = *(*(v0 - 8) + 72);
  v3 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18CDC5050;
  v93 = v4;
  v5 = v4 + v3;
  v6 = *(v1 + 48);
  if (one-time initialization token for appInfo != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for CommandGroupPlacement(0);
  v8 = __swift_project_value_buffer(v7, static CommandGroupPlacement.appInfo);
  v9 = *(v7 + 20);
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 16);
  v11(v5, v8 + v9, v10);
  v12 = *MEMORY[0x1E69DE0B0];
  *(v5 + v6) = *MEMORY[0x1E69DE0B0];
  v13 = *(v1 + 48);
  v14 = one-time initialization token for appSettings;
  v15 = v12;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v7, static CommandGroupPlacement.appSettings);
  v11(v5 + v2, v16 + *(v7 + 20), v10);
  v17 = *MEMORY[0x1E69DE170];
  *(v5 + v2 + v13) = *MEMORY[0x1E69DE170];
  v18 = *(v1 + 48);
  v19 = one-time initialization token for systemServices;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v7, static CommandGroupPlacement.systemServices);
  v11(v5 + 2 * v2, v21 + *(v7 + 20), v10);
  v22 = *MEMORY[0x1E69DE198];
  *(v5 + 2 * v2 + v18) = *MEMORY[0x1E69DE198];
  v23 = *(v1 + 48);
  v24 = one-time initialization token for appVisibility;
  v25 = v22;
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v7, static CommandGroupPlacement.appVisibility);
  v11(v5 + 3 * v2, v26 + *(v7 + 20), v10);
  v27 = *MEMORY[0x1E69DE130];
  *(v5 + 3 * v2 + v23) = *MEMORY[0x1E69DE130];
  v28 = *(v1 + 48);
  v29 = one-time initialization token for appTermination;
  v30 = v27;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v7, static CommandGroupPlacement.appTermination);
  v11(v5 + 4 * v2, v31 + *(v7 + 20), v10);
  v32 = *MEMORY[0x1E69DE180];
  *(v5 + 4 * v2 + v28) = *MEMORY[0x1E69DE180];
  v33 = *(v1 + 48);
  v34 = one-time initialization token for newItem;
  v35 = v32;
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v7, static CommandGroupPlacement.newItem);
  v11(v5 + 5 * v2, v36 + *(v7 + 20), v10);
  v37 = *MEMORY[0x1E69DE150];
  *(v5 + 5 * v2 + v33) = *MEMORY[0x1E69DE150];
  v38 = *(v1 + 48);
  v39 = one-time initialization token for saveItem;
  v40 = v37;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v7, static CommandGroupPlacement.saveItem);
  v11(v5 + 6 * v2, v41 + *(v7 + 20), v10);
  v42 = *MEMORY[0x1E69DE0D8];
  *(v5 + 6 * v2 + v38) = *MEMORY[0x1E69DE0D8];
  v43 = *(v1 + 48);
  v44 = one-time initialization token for importExport;
  v45 = v42;
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v7, static CommandGroupPlacement.importExport);
  v11(v5 - v2 + 8 * v2, v46 + *(v7 + 20), v10);
  *(v5 - v2 + 8 * v2 + v43) = MEMORY[0x18D00C850](0xD00000000000002ALL, 0x800000018CD51A30);
  v47 = *(v1 + 48);
  if (one-time initialization token for printItem != -1)
  {
    swift_once();
  }

  v48 = __swift_project_value_buffer(v7, static CommandGroupPlacement.printItem);
  v11(v5 + 8 * v2, v48 + *(v7 + 20), v10);
  v49 = *MEMORY[0x1E69DE178];
  *(v5 + 8 * v2 + v47) = *MEMORY[0x1E69DE178];
  v50 = *(v1 + 48);
  v51 = one-time initialization token for undoRedo;
  v52 = v49;
  if (v51 != -1)
  {
    swift_once();
  }

  v53 = __swift_project_value_buffer(v7, static CommandGroupPlacement.undoRedo);
  v11(v5 + 9 * v2, v53 + *(v7 + 20), v10);
  v54 = *MEMORY[0x1E69DE228];
  *(v5 + 9 * v2 + v50) = *MEMORY[0x1E69DE228];
  v55 = *(v1 + 48);
  v56 = one-time initialization token for pasteboard;
  v57 = v54;
  if (v56 != -1)
  {
    swift_once();
  }

  v58 = __swift_project_value_buffer(v7, static CommandGroupPlacement.pasteboard);
  v11(v5 + 10 * v2, v58 + *(v7 + 20), v10);
  v59 = *MEMORY[0x1E69DE1D0];
  *(v5 + 10 * v2 + v55) = *MEMORY[0x1E69DE1D0];
  v60 = *(v1 + 48);
  v61 = one-time initialization token for textEditing;
  v62 = v59;
  if (v61 != -1)
  {
    swift_once();
  }

  v63 = __swift_project_value_buffer(v7, static CommandGroupPlacement.textEditing);
  v11(v5 + 11 * v2, v63 + *(v7 + 20), v10);
  *(v5 + 11 * v2 + v60) = MEMORY[0x18D00C850](0xD000000000000029, 0x800000018CD51A60);
  v64 = *(v1 + 48);
  if (one-time initialization token for textFormatting != -1)
  {
    swift_once();
  }

  v65 = __swift_project_value_buffer(v7, static CommandGroupPlacement.textFormatting);
  v11(v5 + 12 * v2, v65 + *(v7 + 20), v10);
  *(v5 + 12 * v2 + v64) = MEMORY[0x18D00C850](0xD00000000000002CLL, 0x800000018CD51A90);
  v66 = *(v1 + 48);
  if (one-time initialization token for toolbar != -1)
  {
    swift_once();
  }

  v67 = __swift_project_value_buffer(v7, static CommandGroupPlacement.toolbar);
  v11(v5 + 13 * v2, v67 + *(v7 + 20), v10);
  v68 = *MEMORY[0x1E69DE218];
  *(v5 + 13 * v2 + v66) = *MEMORY[0x1E69DE218];
  v69 = *(v1 + 48);
  v70 = one-time initialization token for sidebar;
  v71 = v68;
  if (v70 != -1)
  {
    swift_once();
  }

  v72 = __swift_project_value_buffer(v7, static CommandGroupPlacement.sidebar);
  v11(v5 + 14 * v2, v72 + *(v7 + 20), v10);
  v73 = *MEMORY[0x1E69DE1A8];
  *(v5 + 14 * v2 + v69) = *MEMORY[0x1E69DE1A8];
  v74 = v5 - v2 + 16 * v2;
  v75 = *(v1 + 48);
  v76 = one-time initialization token for windowSize;
  v77 = v73;
  if (v76 != -1)
  {
    swift_once();
  }

  v78 = __swift_project_value_buffer(v7, static CommandGroupPlacement.windowSize);
  v11(v74, v78 + *(v7 + 20), v10);
  v79 = *MEMORY[0x1E69DE148];
  *(v74 + v75) = *MEMORY[0x1E69DE148];
  v80 = *(v1 + 48);
  v81 = one-time initialization token for windowArrangement;
  v82 = v79;
  if (v81 != -1)
  {
    swift_once();
  }

  v83 = __swift_project_value_buffer(v7, static CommandGroupPlacement.windowArrangement);
  v11(v5 + 16 * v2, v83 + *(v7 + 20), v10);
  v84 = *MEMORY[0x1E69DE0D0];
  *(v5 + 16 * v2 + v80) = *MEMORY[0x1E69DE0D0];
  v85 = *(v1 + 48);
  v86 = one-time initialization token for help;
  v87 = v84;
  if (v86 != -1)
  {
    swift_once();
  }

  v88 = __swift_project_value_buffer(v7, static CommandGroupPlacement.help);
  v11(v5 + 17 * v2, v88 + *(v7 + 20), v10);
  v89 = *MEMORY[0x1E69DE128];
  *(v5 + 17 * v2 + v85) = *MEMORY[0x1E69DE128];
  v90 = v89;
  v91 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So16UIMenuIdentifieraTt0g5Tf4g_n(v93);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static MenuBuilderInstruction.placements = v91;
  return result;
}

uint64_t closure #1 in UIMenuBuilder.perform(instruction:)(uint64_t a1, void *a2)
{
  type metadata accessor for _ContiguousArrayStorage<MenuBuilderInstruction>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18CD69590;
  *(v3 + 32) = a2;
  v7 = v3;
  v4 = a2;

  specialized Array.append<A>(contentsOf:)(v5);
  return v7;
}

uint64_t closure #2 in UIMenuBuilder.perform(instruction:)(uint64_t a1, void *a2)
{
  type metadata accessor for _ContiguousArrayStorage<MenuBuilderInstruction>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD69590;
  *(inited + 32) = a2;
  v5 = a2;

  specialized Array.append<A>(contentsOf:)(inited);
  return a1;
}

unint64_t lazy protocol witness table accessor for type OptionalMenus and conformance OptionalMenus()
{
  result = lazy protocol witness table cache variable for type OptionalMenus and conformance OptionalMenus;
  if (!lazy protocol witness table cache variable for type OptionalMenus and conformance OptionalMenus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OptionalMenus and conformance OptionalMenus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OptionalMenus and conformance OptionalMenus;
  if (!lazy protocol witness table cache variable for type OptionalMenus and conformance OptionalMenus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OptionalMenus and conformance OptionalMenus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OptionalMenus and conformance OptionalMenus;
  if (!lazy protocol witness table cache variable for type OptionalMenus and conformance OptionalMenus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OptionalMenus and conformance OptionalMenus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OptionalMenus and conformance OptionalMenus;
  if (!lazy protocol witness table cache variable for type OptionalMenus and conformance OptionalMenus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OptionalMenus and conformance OptionalMenus);
  }

  return result;
}

uint64_t specialized UIKitMainMenuController.supportsMainMenu.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1)
  {
    return 1;
  }

  os_eligibility_get_domain_answer();
  return 0;
}

uint64_t lazy protocol witness table accessor for type MainMenuItemHost and conformance MainMenuItemHost(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MainMenuItemHost(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<CommandGroupPlacement>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *specialized Sequence.compactMap<A>(_:)(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x18D00E9C0](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v10 = *(a1 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v23 = v10;
      closure #1 in MainMenuItemCoordinator.mergeInstructions(from:)(&v23, a2, a3, a4, &v21);
      if (v4)
      {

        return v8;
      }

      v13 = v22;
      if (v22 != 255)
      {
        v20 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
        }

        v15 = *(v8 + 2);
        v14 = *(v8 + 3);
        if (v15 >= v14 >> 1)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v8);
        }

        *(v8 + 2) = v15 + 1;
        v9 = &v8[24 * v15];
        *(v9 + 2) = v20;
        v9[48] = v13;
      }

      ++v7;
      if (v12 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t specialized MainMenuItemCoordinator.mergeInstructions(from:)(void *a1)
{
  v21 = MEMORY[0x1E69E7CC8];
  v22 = MEMORY[0x1E69E7CC8];
  v2 = a1[1];
  v24 = a1[2];
  v25 = v2;
  v3 = a1[3];
  v23 = a1[4];
  outlined init with copy of CommandsList.Item(&v25, v20, type metadata accessor for [KeyCommandID : ()]);
  outlined init with copy of MenuBuilderContext.PlacementMap(&v24, v20);

  outlined init with copy of CommandsList.Item(&v23, v20, type metadata accessor for [UIMenuElement : CommandOperation]);
  v4 = specialized Sequence.compactMap<A>(_:)(v3, a1, &v22, &v21);
  outlined destroy of CommandsList.Item(&v25, type metadata accessor for [KeyCommandID : ()]);
  outlined destroy of MenuBuilderContext.PlacementMap(&v24);

  outlined destroy of CommandsList.Item(&v23, type metadata accessor for [UIMenuElement : CommandOperation]);
  v5 = v21;
  v6 = v21 + 64;
  v7 = 1 << *(v21 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v21 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v4;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      do
      {
LABEL_8:
        v14 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
        v15 = *(*(v5 + 56) + v14);
        v16 = *(*(v5 + 48) + v14);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
          v4 = result;
        }

        v18 = *(v4 + 2);
        v17 = *(v4 + 3);
        if (v18 >= v17 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v4);
          v4 = result;
        }

        v9 &= v9 - 1;
        *(v4 + 2) = v18 + 1;
        v19 = &v4[24 * v18];
        *(v19 + 4) = v16;
        *(v19 + 5) = v15;
        v19[48] = 6;
      }

      while (v9);
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type UIMenuElement and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIMenuElement and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIMenuElement and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIMenuElement);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIMenuElement and conformance NSObject);
  }

  return result;
}

uint64_t outlined init with take of CommandOperation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandOperation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (UUID, UIMenuIdentifier)()
{
  if (!lazy cache variable for type metadata for (UUID, UIMenuIdentifier))
  {
    type metadata accessor for UUID();
    type metadata accessor for UIMenuIdentifier(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UUID, UIMenuIdentifier));
    }
  }
}

uint64_t outlined assign with copy of MainMenuItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainMenuItem(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [SupportedResponderCommand] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SupportedResponderCommand] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SupportedResponderCommand] and conformance [A])
  {
    type metadata accessor for _ContiguousArrayStorage<MenuBuilderInstruction>(255, &lazy cache variable for type metadata for [SupportedResponderCommand], &type metadata for SupportedResponderCommand, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SupportedResponderCommand] and conformance [A]);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<MenuBuilderInstruction>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type SupportedResponderCommand and conformance SupportedResponderCommand()
{
  result = lazy protocol witness table cache variable for type SupportedResponderCommand and conformance SupportedResponderCommand;
  if (!lazy protocol witness table cache variable for type SupportedResponderCommand and conformance SupportedResponderCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SupportedResponderCommand and conformance SupportedResponderCommand);
  }

  return result;
}

uint64_t TitleAndIconLabelStyle.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  result = swift_getKeyPath();
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  return result;
}

__n128 TitleAndIconLabelStyle.makeBody(configuration:)@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v19 = *v1;
  *v20 = v3;
  *&v20[10] = *(v1 + 26);
  v4 = specialized Environment.wrappedValue.getter(v3, v20[8] | (v20[9] << 8));
  if (v5)
  {
    v6 = specialized Environment.wrappedValue.getter(*&v20[16], v20[24] | (v20[25] << 8));
    v8 = v7;
  }

  else
  {
    v6 = v4;
    v8 = 0;
  }

  *&v15 = swift_getKeyPath();
  BYTE8(v15) = 0;
  v16.n128_u64[0] = swift_getKeyPath();
  v16.n128_u8[8] = 1;
  closure #2 in TitleAndIconLabelStyle.makeBody(configuration:)(v6, v8 & 1, &v19, v17);
  v9 = v18[0];
  a1[10] = v17[8];
  a1[11] = v9;
  *(a1 + 185) = *(v18 + 9);
  v10 = v17[5];
  a1[6] = v17[4];
  a1[7] = v10;
  v11 = v17[7];
  a1[8] = v17[6];
  a1[9] = v11;
  v12 = v17[1];
  a1[2] = v17[0];
  a1[3] = v12;
  v13 = v17[3];
  a1[4] = v17[2];
  a1[5] = v13;
  result = v16;
  *a1 = v15;
  a1[1] = v16;
  return result;
}

__n128 closure #2 in TitleAndIconLabelStyle.makeBody(configuration:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = static VerticalAlignment.firstTextLineCenter.getter();
  v9 = a2 & 1;
  LOBYTE(v17) = a2 & 1;
  closure #1 in closure #1 in closure #2 in TitleAndIconLabelStyle.makeBody(configuration:)(a3, &v31);
  v23 = v31;
  v24 = v32;
  v25[0] = v33[0];
  *(v25 + 9) = *(v33 + 9);
  v26[0] = v31;
  v26[1] = v32;
  v27[0] = v33[0];
  *(v27 + 9) = *(v33 + 9);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>(&v23, &v28);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>(v26);
  *(v22 + 7) = v23;
  *(&v22[1] + 7) = v24;
  *(&v22[2] + 7) = v25[0];
  v22[3] = *(v25 + 9);
  v10 = a2 & 1;
  v11 = static VerticalAlignment.firstTextLineCenter.getter();
  v21 = v9;
  closure #1 in closure #1 in closure #2 in TitleAndIconLabelStyle.makeBody(configuration:)(a3, &v17);
  v28 = v17;
  v29 = v18;
  v30[0] = v19[0];
  *(v30 + 9) = *(v19 + 9);
  v31 = v17;
  v32 = v18;
  v33[0] = v19[0];
  *(v33 + 9) = *(v19 + 9);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>(&v28, v16);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>(&v31);
  *&v20[7] = v28;
  *&v20[23] = v29;
  *&v20[39] = v30[0];
  *&v20[48] = *(v30 + 9);
  v12 = v21;
  *a4 = v8;
  *(a4 + 8) = a1;
  *(a4 + 16) = v10;
  *(a4 + 17) = v22[0];
  *(a4 + 33) = v22[1];
  *(a4 + 49) = v22[2];
  *(a4 + 65) = v22[3];
  *(a4 + 88) = v11;
  *(a4 + 96) = a1;
  *(a4 + 104) = v12;
  result = *v20;
  v14 = *&v20[16];
  v15 = *&v20[32];
  *(a4 + 153) = *&v20[48];
  *(a4 + 137) = v15;
  *(a4 + 121) = v14;
  *(a4 + 105) = result;
  return result;
}

uint64_t assignWithCopy for TitleAndIconLabelStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 9);
  v6 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v6, v5);
  v7 = *a1;
  v8 = *(a1 + 9);
  *a1 = v4;
  v9 = *(a1 + 8);
  *(a1 + 8) = v6;
  *(a1 + 9) = v5;
  outlined consume of Environment<CGFloat?>.Content(v7, v9, v8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 25);
  v12 = *(a2 + 24);
  outlined copy of Environment<CGFloat?>.Content(v10, v12, v11);
  v13 = *(a1 + 16);
  v14 = *(a1 + 25);
  *(a1 + 16) = v10;
  v15 = *(a1 + 24);
  *(a1 + 24) = v12;
  *(a1 + 25) = v11;
  outlined consume of Environment<CGFloat?>.Content(v13, v15, v14);
  v16 = *(a2 + 32);
  v17 = *(a2 + 41);
  v18 = *(a2 + 40);
  outlined copy of Environment<CGFloat?>.Content(v16, v18, v17);
  v19 = *(a1 + 32);
  v20 = *(a1 + 41);
  *(a1 + 32) = v16;
  v21 = *(a1 + 40);
  *(a1 + 40) = v18;
  *(a1 + 41) = v17;
  outlined consume of Environment<CGFloat?>.Content(v19, v21, v20);
  return a1;
}

uint64_t getEnumTagSinglePayload for TitleAndIconLabelStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
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

uint64_t storeEnumTagSinglePayload for TitleAndIconLabelStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 9) = -a2;
    }
  }

  return result;
}

void UtilityWindow.init(_:id:content:)(uint64_t a1, uint64_t a2, char a3)
{

  outlined consume of Text.Storage(a1, a2, a3 & 1);

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void UtilityWindow.init(_:id:content:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void UtilityWindow.init<A>(_:id:content:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t type metadata completion function for UtilityWindow()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for UtilityWindow(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-49 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
    v12 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);

    outlined copy of Text.Storage(v13, v14, v15);
    *v11 = v13;
    *(v11 + 8) = v14;
    *(v11 + 16) = v15;
    *(v11 + 24) = *(v12 + 24);
    v16 = *(v5 + 16);

    v16(v11 + 32, v12 + 32, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

uint64_t destroy for UtilityWindow(uint64_t a1, uint64_t a2)
{

  v4 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));

  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (v4 + *(v5 + 80) + 32) & ~*(v5 + 80);

  return v6(v7);
}

void *initializeWithCopy for UtilityWindow(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  v6 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);

  outlined copy of Text.Storage(v8, v9, v10);
  *v6 = v8;
  *(v6 + 8) = v9;
  *(v6 + 16) = v10;
  *(v6 + 24) = *(v7 + 24);
  v11 = *(a3 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v14 = *(v12 + 80);

  v13((v14 + 32 + v6) & ~v14, (v14 + 32 + v7) & ~v14, v11);
  return a1;
}

void *assignWithCopy for UtilityWindow(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v6 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  outlined copy of Text.Storage(*v7, v9, v10);
  v11 = *v6;
  v12 = *(v6 + 8);
  v13 = *(v6 + 16);
  *v6 = v8;
  *(v6 + 8) = v9;
  *(v6 + 16) = v10;
  outlined consume of Text.Storage(v11, v12, v13);
  *(v6 + 24) = *(v7 + 24);

  v14 = *(*(a3 + 16) - 8);
  (*(v14 + 24))((*(v14 + 80) + 32 + v6) & ~*(v14 + 80), (*(v14 + 80) + 32 + v7) & ~*(v14 + 80));
  return a1;
}

_OWORD *initializeWithTake for UtilityWindow(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5[1];
  *v4 = *v5;
  v4[1] = v6;
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 32))((v4 + *(v7 + 80) + 32) & ~*(v7 + 80), (v5 + *(v7 + 80) + 32) & ~*(v7 + 80));
  return a1;
}

void *assignWithTake for UtilityWindow(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  v10 = *v7;
  v11 = *(v7 + 8);
  v12 = *(v7 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  outlined consume of Text.Storage(v10, v11, v12);
  *(v7 + 24) = *(v8 + 24);

  v13 = *(*(a3 + 16) - 8);
  (*(v13 + 40))((*(v13 + 80) + 32 + v7) & ~*(v13 + 80), (*(v13 + 80) + 32 + v8) & ~*(v13 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for UtilityWindow(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 48) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 32) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for UtilityWindow(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 48) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 32) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t initializeWithCopy for HoverEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for HoverEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for HoverEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for HoverEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HoverEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t HoverEvent.customHitTestOptions.getter@<X0>(uint64_t a1@<X8>)
{
  result = static ViewResponder.ContainsPointsOptions.platformDefault.getter();
  *a1 = v3 | 0x40;
  *(a1 + 8) = 0;
  return result;
}

uint64_t protocol witness for EventType.init(_:) in conformance HoverEvent@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for EventType();
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v6;
    v4 = v8;
    v5 = v9;
    *(a1 + 8) = v7;
  }

  else
  {
    result = outlined consume of WheelEvent?(0, 0, 1);
    v3 = 0;
    v5 = 0;
    *(a1 + 8) = 0;
    v4 = xmmword_18CD6A6D0;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

BOOL specialized static HoverEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (!v5)
  {
    if (!v6)
    {
      return *(a1 + 32) == *(a2 + 32) && *(a1 + 24) == *(a2 + 24);
    }

    goto LABEL_14;
  }

  if (!v6)
  {
LABEL_14:

    return 0;
  }

  if (v5 != v6)
  {
    return 0;
  }

  return *(a1 + 32) == *(a2 + 32) && *(a1 + 24) == *(a2 + 24);
}

id static NSBundle.swiftUI.getter()
{
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

void CirclePlaybackButtonStyle._storage.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
}

void protocol witness for PlaybackButtonStyle._storage.getter in conformance CirclePlaybackButtonStyle(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
}

void *initializeBufferWithCopyOfBuffer for CirclePlaybackButtonStyleBody(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v16 = *a2;
    *a1 = *a2;
    v3 = (v16 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    outlined copy of Environment<Bool>.Content(*a2, v7);
    *v3 = v6;
    *(v3 + 8) = v7;
    v9 = *(a3 + 20);
    v10 = v3 + v9;
    v11 = a2 + v9;
    type metadata accessor for ClosedRange<Date>();
    v13 = v12;
    v14 = *(v12 - 8);
    if ((*(v14 + 48))(v11, 1, v12))
    {
      type metadata accessor for ClosedRange<Date>?(0);
      memcpy(v10, v11, *(*(v15 - 8) + 64));
    }

    else
    {
      v17 = type metadata accessor for Date();
      v18 = *(*(v17 - 8) + 16);
      v18(v10, v11, v17);
      v18(&v10[*(v13 + 36)], &v11[*(v13 + 36)], v17);
      (*(v14 + 56))(v10, 0, 1, v13);
    }

    v19 = type metadata accessor for PlaybackButton.Configuration(0);
    v20 = v19[5];
    v21 = type metadata accessor for Date();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(&v11[v20], 2, v21))
    {
      v23 = type metadata accessor for PlaybackButton.State(0);
      memcpy(&v10[v20], &v11[v20], *(*(v23 - 8) + 64));
    }

    else
    {
      (*(v22 + 16))(&v10[v20], &v11[v20], v21);
      (*(v22 + 56))(&v10[v20], 0, 2, v21);
    }

    v24 = v19[6];
    v25 = &v10[v24];
    v26 = &v11[v24];
    v27 = *(v26 + 1);
    *v25 = *v26;
    *(v25 + 1) = v27;
    v10[v19[7]] = v11[v19[7]];
    v10[v19[8]] = v11[v19[8]];
    *&v10[v19[9]] = *&v11[v19[9]];
    v28 = v19[10];
    v29 = &v10[v28];
    v30 = &v11[v28];
    v31 = *&v11[v28];
    v32 = *&v11[v28 + 8];
    v33 = v30[16];

    outlined copy of Environment<AppIntentExecutor?>.Content(v31, v32, v33);
    *v29 = v31;
    *(v29 + 1) = v32;
    v29[16] = v33;
    v34 = *(v30 + 5);
    v35 = *(v30 + 24);
    *(v29 + 24) = v35;
    *(v29 + 5) = v34;
    v36 = v35;
  }

  return v3;
}

uint64_t initializeWithTake for CirclePlaybackButtonStyleBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a3 + 20);
  v5 = (a1 + v4);
  v6 = (a2 + v4);
  type metadata accessor for ClosedRange<Date>();
  v8 = v7;
  v9 = *(v7 - 8);
  if ((*(v9 + 48))(v6, 1, v7))
  {
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v5, v6, *(*(v10 - 8) + 64));
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 32);
    v12(v5, v6, v11);
    v12(&v5[*(v8 + 36)], &v6[*(v8 + 36)], v11);
    (*(v9 + 56))(v5, 0, 1, v8);
  }

  v13 = type metadata accessor for PlaybackButton.Configuration(0);
  v14 = v13[5];
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(&v6[v14], 2, v15))
  {
    v17 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v5[v14], &v6[v14], *(*(v17 - 8) + 64));
  }

  else
  {
    (*(v16 + 32))(&v5[v14], &v6[v14], v15);
    (*(v16 + 56))(&v5[v14], 0, 2, v15);
  }

  *&v5[v13[6]] = *&v6[v13[6]];
  v5[v13[7]] = v6[v13[7]];
  v5[v13[8]] = v6[v13[8]];
  *&v5[v13[9]] = *&v6[v13[9]];
  v18 = v13[10];
  v19 = &v5[v18];
  v20 = &v6[v18];
  v21 = *(v20 + 1);
  *v19 = *v20;
  *(v19 + 1) = v21;
  *(v19 + 2) = *(v20 + 2);
  return a1;
}

uint64_t *assignWithTake for CirclePlaybackButtonStyleBody(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v10 = *(a3 + 20);
  v11 = a1 + v10;
  v12 = a2 + v10;
  type metadata accessor for ClosedRange<Date>();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v11, 1, v13);
  v18 = v16(v12, 1, v14);
  if (v17)
  {
    if (!v18)
    {
      v19 = type metadata accessor for Date();
      v20 = *(*(v19 - 8) + 32);
      v20(v11, v12, v19);
      v20(&v11[*(v14 + 36)], &v12[*(v14 + 36)], v19);
      (*(v15 + 56))(v11, 0, 1, v14);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v18)
  {
    _sSNy10Foundation4DateVGWOhTm_3(v11, type metadata accessor for ClosedRange<Date>);
LABEL_6:
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v11, v12, *(*(v21 - 8) + 64));
    goto LABEL_7;
  }

  v43 = type metadata accessor for Date();
  v44 = *(*(v43 - 8) + 40);
  v44(v11, v12, v43);
  v44(&v11[*(v14 + 36)], &v12[*(v14 + 36)], v43);
LABEL_7:
  v22 = type metadata accessor for PlaybackButton.Configuration(0);
  v23 = v22[5];
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v27 = v26(&v11[v23], 2, v24);
  v28 = v26(&v12[v23], 2, v24);
  if (!v27)
  {
    if (!v28)
    {
      (*(v25 + 40))(&v11[v23], &v12[v23], v24);
      goto LABEL_13;
    }

    (*(v25 + 8))(&v11[v23], v24);
    goto LABEL_12;
  }

  if (v28)
  {
LABEL_12:
    v29 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v11[v23], &v12[v23], *(*(v29 - 8) + 64));
    goto LABEL_13;
  }

  (*(v25 + 32))(&v11[v23], &v12[v23], v24);
  (*(v25 + 56))(&v11[v23], 0, 2, v24);
LABEL_13:
  v30 = v22[6];
  v31 = &v11[v30];
  v32 = &v12[v30];
  v34 = *v32;
  v33 = *(v32 + 1);
  *v31 = v34;
  *(v31 + 1) = v33;

  v11[v22[7]] = v12[v22[7]];
  v11[v22[8]] = v12[v22[8]];
  *&v11[v22[9]] = *&v12[v22[9]];
  v35 = v22[10];
  v36 = &v11[v35];
  v37 = &v12[v35];
  LOBYTE(v35) = v37[16];
  v38 = *v36;
  v39 = *(v36 + 1);
  v40 = v36[16];
  *v36 = *v37;
  v36[16] = v35;
  outlined consume of Environment<AppIntentExecutor?>.Content(v38, v39, v40);
  v41 = *(v36 + 3);
  *(v36 + 3) = *(v37 + 3);

  *(v36 + 2) = *(v37 + 2);

  return a1;
}

void *closure #1 in CirclePlaybackButtonStyleBody.resolvedProgressStroke.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = static Alignment.center.getter();
  v6 = v5;
  closure #1 in CirclePlaybackButtonStyleBody.progressStroke(interval:referenceDate:)(a1, __src);
  memcpy(__dst, __src, 0x141uLL);
  memcpy(v11, __src, 0x141uLL);
  outlined init with copy of PlaybackButton.Configuration(__dst, &v8, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?);
  _sSNy10Foundation4DateVGWOhTm_3(v11, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?);
  *a2 = v4;
  a2[1] = v6;
  return memcpy(a2 + 2, __dst, 0x141uLL);
}

uint64_t CirclePlaybackButtonStyleBody.trackStroke.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PlaybackButton.Specs();
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v28 - v8;
  v10 = *(type metadata accessor for CirclePlaybackButtonStyleBody() + 20);
  outlined init with copy of PlaybackButton.Configuration(v1 + v10, v9, type metadata accessor for PlaybackButton.Configuration);
  *&v9[v4[7]] = 0x4000000000000000;
  *&v9[v4[8]] = 0x3FB47AE147AE147BLL;
  *&v9[v4[9]] = 0x3FA999999999999ALL;
  _sSNy10Foundation4DateVGWOhTm_3(v9, type metadata accessor for PlaybackButton.Specs);
  static Color.white.getter();
  outlined init with copy of PlaybackButton.Configuration(v1 + v10, v9, type metadata accessor for PlaybackButton.Configuration);
  *&v9[v4[7]] = 0x4000000000000000;
  *&v9[v4[8]] = 0x3FB47AE147AE147BLL;
  *&v9[v4[9]] = 0x3FA999999999999ALL;
  _sSNy10Foundation4DateVGWOhTm_3(v9, type metadata accessor for PlaybackButton.Specs);
  v28[0] = Color.opacity(_:)();

  outlined init with copy of PlaybackButton.Configuration(v1 + v10, v9, type metadata accessor for PlaybackButton.Configuration);
  *&v9[v4[7]] = 0x4000000000000000;
  *&v9[v4[8]] = 0x3FB47AE147AE147BLL;
  *&v9[v4[9]] = 0x3FA999999999999ALL;
  _sSNy10Foundation4DateVGWOhTm_3(v9, type metadata accessor for PlaybackButton.Specs);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v11 = v28[1];
  v12 = v28[3];
  v13 = v28[4];
  v14 = v28[5];
  v15 = static Alignment.center.getter();
  v17 = v16;
  static UnitPoint.center.getter();
  v19 = v18;
  v21 = v20;
  outlined init with copy of PlaybackButton.Configuration(v1 + v10, v6, type metadata accessor for PlaybackButton.Configuration);
  *&v6[v4[7]] = 0x4000000000000000;
  *&v6[v4[8]] = 0x3FB47AE147AE147BLL;
  *&v6[v4[9]] = 0x3FA999999999999ALL;
  v22 = v6[*(type metadata accessor for PlaybackButton.Configuration(0) + 32)];
  _sSNy10Foundation4DateVGWOhTm_3(v6, type metadata accessor for PlaybackButton.Specs);
  if (v22)
  {
    v23 = 0.9;
  }

  else
  {
    v23 = 1.0;
  }

  result = static UnitPoint.center.getter();
  *a1 = 0x3FF0000000000000;
  v25 = v28[2];
  *(a1 + 8) = v11;
  *(a1 + 16) = v25;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = v28[0];
  *(a1 + 56) = 256;
  *(a1 + 64) = v15;
  *(a1 + 72) = v17;
  *(a1 + 80) = 0xBFF921FB54442D18;
  *(a1 + 88) = v19;
  *(a1 + 96) = v21;
  *(a1 + 104) = v23;
  *(a1 + 112) = v23;
  *(a1 + 120) = v26;
  *(a1 + 128) = v27;
  return result;
}

void type metadata accessor for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>.Storage(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t outlined init with take of _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>.Storage(0, &lazy cache variable for type metadata for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, type metadata accessor for ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *partial apply for closure #1 in CirclePlaybackButtonStyleBody.resolvedProgressStroke.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for CirclePlaybackButtonStyleBody() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  type metadata accessor for ClosedRange<Date>();

  return closure #1 in CirclePlaybackButtonStyleBody.resolvedProgressStroke.getter(v1 + v4, a1);
}

uint64_t specialized InteractiveResizeBridge.handleLiveResize(isResizing:host:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = result & 1;
  if (*(a3 + 16) != (result & 1))
  {
    (*(*(a5 + 8) + 8))(a4, *(a5 + 8));
    default argument 1 of GraphHost.asyncTransaction<A>(_:id:invalidating:style:mayDeferUpdate:)();
    type metadata accessor for AssignmentGraphMutation<Bool>();
    lazy protocol witness table accessor for type AssignmentGraphMutation<Bool> and conformance AssignmentGraphMutation<A>();
    GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();

    *(a3 + 16) = v5;
  }

  return result;
}

void type metadata accessor for AssignmentGraphMutation<Bool>()
{
  if (!lazy cache variable for type metadata for AssignmentGraphMutation<Bool>)
  {
    v0 = type metadata accessor for AssignmentGraphMutation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AssignmentGraphMutation<Bool>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AssignmentGraphMutation<Bool> and conformance AssignmentGraphMutation<A>()
{
  result = lazy protocol witness table cache variable for type AssignmentGraphMutation<Bool> and conformance AssignmentGraphMutation<A>;
  if (!lazy protocol witness table cache variable for type AssignmentGraphMutation<Bool> and conformance AssignmentGraphMutation<A>)
  {
    type metadata accessor for AssignmentGraphMutation<Bool>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssignmentGraphMutation<Bool> and conformance AssignmentGraphMutation<A>);
  }

  return result;
}

id UISecureWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UISecureWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static Image.transferRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  type metadata accessor for (DataRepresentation<Image>, DataRepresentation<Image>)();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UTType();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DataRepresentation<Image>();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  static UTType.png.getter();
  v16 = lazy protocol witness table accessor for type Image and conformance Image();
  v17 = MEMORY[0x1E6981748];
  MEMORY[0x18D000CA0](v7, &async function pointer to closure #1 in static Image.transferRepresentation.getter, 0, &async function pointer to closure #2 in static Image.transferRepresentation.getter, 0, MEMORY[0x1E6981748], v16);
  static UTType.jpeg.getter();
  MEMORY[0x18D000CA0](v7, &async function pointer to closure #3 in static Image.transferRepresentation.getter, 0, &async function pointer to closure #4 in static Image.transferRepresentation.getter, 0, v17, v16);
  v18 = *(v2 + 48);
  v19 = *(v10 + 16);
  v19(v4, v15, v9);
  v19(&v4[v18], v12, v9);
  TupleTransferRepresentation.init(_:)();
  v20 = *(v10 + 8);
  v20(v12, v9);
  return (v20)(v15, v9);
}

void type metadata accessor for (DataRepresentation<Image>, DataRepresentation<Image>)()
{
  if (!lazy cache variable for type metadata for (DataRepresentation<Image>, DataRepresentation<Image>))
  {
    type metadata accessor for DataRepresentation<Image>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (DataRepresentation<Image>, DataRepresentation<Image>));
    }
  }
}

void type metadata accessor for DataRepresentation<Image>()
{
  if (!lazy cache variable for type metadata for DataRepresentation<Image>)
  {
    lazy protocol witness table accessor for type Image and conformance Image();
    v0 = type metadata accessor for DataRepresentation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DataRepresentation<Image>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Image and conformance Image()
{
  result = lazy protocol witness table cache variable for type Image and conformance Image;
  if (!lazy protocol witness table cache variable for type Image and conformance Image)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image and conformance Image);
  }

  return result;
}

uint64_t closure #1 in static Image.transferRepresentation.getter(uint64_t *a1)
{
  v3 = type metadata accessor for UTType();
  v1[2] = v3;
  v1[3] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *a1;
  v1[4] = v4;
  v1[5] = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in static Image.transferRepresentation.getter, 0, 0);
}

uint64_t closure #1 in static Image.transferRepresentation.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  static UTType.png.getter();
  v3 = specialized static Image.getData(from:contentType:)(v2, v1);
  v5 = v4;
  (*(v0[3] + 8))(v0[4], v0[2]);

  v6 = v0[1];

  return v6(v3, v5);
}

uint64_t closure #2 in static Image.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UTType();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in static Image.transferRepresentation.getter, 0, 0);
}

uint64_t closure #2 in static Image.transferRepresentation.getter()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  static UTType.png.getter();
  v6 = static Image.makeImage(from:contentType:)(v5, v3, v1);
  (*(v2 + 8))(v1, v4);
  **(v0 + 16) = v6;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t static Image.makeImage(from:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = CGDataProviderCreateWithCFData(isa);

  if (v12)
  {
    (*(v5 + 16))(v10, a3, v4);
    static UTType.png.getter();
    lazy protocol witness table accessor for type TupleTransferRepresentation<Image, (DataRepresentation<Image>, DataRepresentation<Image>)> and conformance TupleTransferRepresentation<A, B>(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450]);
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    v14 = *(v5 + 8);
    v14(v7, v4);
    if (v13)
    {
      v14(v10, v4);
      if (!CGImageCreateWithPNGDataProvider(v12, 0, 0, kCGRenderingIntentDefault))
      {
LABEL_9:
        v15 = type metadata accessor for TransferableError();
        lazy protocol witness table accessor for type TupleTransferRepresentation<Image, (DataRepresentation<Image>, DataRepresentation<Image>)> and conformance TupleTransferRepresentation<A, B>(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, MEMORY[0x1E6965BD8]);
        swift_allocError();
        (*(*(v15 - 8) + 104))(v18, *MEMORY[0x1E6965BD0], v15);
        swift_willThrow();

        return v15;
      }
    }

    else
    {
      static UTType.jpeg.getter();
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v14(v7, v4);
      v14(v10, v4);
      if ((v17 & 1) == 0 || !CGImageCreateWithJPEGDataProvider(v12, 0, 0, kCGRenderingIntentDefault))
      {
        goto LABEL_9;
      }
    }

    v15 = Image.init(decorative:scale:orientation:)();
  }

  else
  {
    v15 = type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TupleTransferRepresentation<Image, (DataRepresentation<Image>, DataRepresentation<Image>)> and conformance TupleTransferRepresentation<A, B>(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, MEMORY[0x1E6965BD8]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x1E6965BD0], v15);
    swift_willThrow();
  }

  return v15;
}

uint64_t closure #3 in static Image.transferRepresentation.getter(uint64_t *a1)
{
  v3 = type metadata accessor for UTType();
  v1[2] = v3;
  v1[3] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *a1;
  v1[4] = v4;
  v1[5] = v5;

  return MEMORY[0x1EEE6DFA0](closure #3 in static Image.transferRepresentation.getter, 0, 0);
}

uint64_t closure #3 in static Image.transferRepresentation.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  static UTType.jpeg.getter();
  v3 = specialized static Image.getData(from:contentType:)(v2, v1);
  v5 = v4;
  (*(v0[3] + 8))(v0[4], v0[2]);

  v6 = v0[1];

  return v6(v3, v5);
}

uint64_t closure #4 in static Image.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UTType();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #4 in static Image.transferRepresentation.getter, 0, 0);
}

uint64_t closure #4 in static Image.transferRepresentation.getter()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  static UTType.jpeg.getter();
  v6 = static Image.makeImage(from:contentType:)(v5, v3, v1);
  (*(v2 + 8))(v1, v4);
  **(v0 + 16) = v6;

  v7 = *(v0 + 8);

  return v7();
}

void type metadata accessor for TupleTransferRepresentation<Image, (DataRepresentation<Image>, DataRepresentation<Image>)>()
{
  if (!lazy cache variable for type metadata for TupleTransferRepresentation<Image, (DataRepresentation<Image>, DataRepresentation<Image>)>)
  {
    type metadata accessor for (DataRepresentation<Image>, DataRepresentation<Image>)();
    lazy protocol witness table accessor for type Image and conformance Image();
    v0 = type metadata accessor for TupleTransferRepresentation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TupleTransferRepresentation<Image, (DataRepresentation<Image>, DataRepresentation<Image>)>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleTransferRepresentation<Image, (DataRepresentation<Image>, DataRepresentation<Image>)> and conformance TupleTransferRepresentation<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

CFMutableDataRef specialized static Image.getData(from:contentType:)(uint64_t a1, uint64_t a2)
{
  v22[1] = a2;
  type metadata accessor for Text.Style?();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageResolutionContext();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  EnvironmentValues.init()();
  static DisplayGamut.deviceDefault.getter();
  LOBYTE(v35[0]) = v37[0];
  EnvironmentValues.displayGamut.setter();
  default argument 2 of RasterizationOptions.init(colorMode:allowedDynamicRange:flags:)();
  v8 = LODWORD(v37[0]) | 1u;
  v35[0] = v38[7];
  v9 = type metadata accessor for Text.Style();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);

  MEMORY[0x18D008220](v10);
  ImageResolutionContext.init(environment:textStyle:transaction:)();
  Image.resolve(in:)();
  v43 = v37[4];
  v44[0] = v38[0];
  *(v44 + 12) = *(v38 + 12);
  v39 = v37[0];
  v40 = v37[1];
  v41 = v37[2];
  v42 = v37[3];
  outlined init with copy of GraphicsImage(v37, v35);
  outlined destroy of Image.Resolved(v37);
  type metadata accessor for CGImageRef(0);
  v35[4] = v43;
  v36[0] = v44[0];
  *(v36 + 12) = *(v44 + 12);
  v35[0] = v39;
  v35[1] = v40;
  v35[2] = v41;
  v35[3] = v42;
  GraphicsImage.size.getter();
  v33 = v43;
  v34[0] = v44[0];
  *(v34 + 12) = *(v44 + 12);
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v32 = v42;
  GraphicsImage.scale.getter();
  v11 = v7[1];
  v27 = *v7;
  v28 = v11;
  v23 = -1;
  v24 = 768;
  v25 = v8;
  v26 = 3;
  v22[4] = &v39;

  v12 = static CGImageRef.render(size:scale:environment:options:renderer:)();

  if (!v12)
  {
    v18 = type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TupleTransferRepresentation<Image, (DataRepresentation<Image>, DataRepresentation<Image>)> and conformance TupleTransferRepresentation<A, B>(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, MEMORY[0x1E6965BD8]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x1E6965BC8], v18);
    swift_willThrow();
    outlined destroy of GraphicsImage(v37);
    goto LABEL_9;
  }

  result = CFDataCreateMutable(0, 0);
  if (result)
  {
    v14 = result;
    v15 = UTType.identifier.getter();
    v8 = MEMORY[0x18D00C850](v15);

    v16 = CGImageDestinationCreateWithData(v14, v8, 1uLL, 0);

    if (v16)
    {
      CGImageDestinationAddImage(v16, v12, 0);
      if (CGImageDestinationFinalize(v16))
      {
        v17 = v14;
        v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        outlined destroy of GraphicsImage(v37);

        outlined destroy of ImageResolutionContext(v7);

        return v8;
      }
    }

    v20 = type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TupleTransferRepresentation<Image, (DataRepresentation<Image>, DataRepresentation<Image>)> and conformance TupleTransferRepresentation<A, B>(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, MEMORY[0x1E6965BD8]);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x1E6965BC8], v20);
    swift_willThrow();
    outlined destroy of GraphicsImage(v37);

LABEL_9:
    outlined destroy of ImageResolutionContext(v7);

    return v8;
  }

  __break(1u);
  return result;
}

void type metadata accessor for Text.Style?()
{
  if (!lazy cache variable for type metadata for Text.Style?)
  {
    type metadata accessor for Text.Style();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Text.Style?);
    }
  }
}

uint64_t outlined destroy of ImageResolutionContext(uint64_t a1)
{
  v2 = type metadata accessor for ImageResolutionContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SystemScrollViewContainer.init(configuration:content:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  outlined init with take of ScrollViewConfiguration(a1, a3);
  type metadata accessor for SystemScrollViewContainer();
  return a2();
}

uint64_t (*ScrollView.axes.modify(uint64_t a1, uint64_t a2))(uint64_t result)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v2 + *(a2 + 36));
  return ScrollView.axes.modify;
}

uint64_t (*ScrollView.showsIndicators.modify(uint64_t a1, uint64_t a2))(uint64_t result)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v2 + *(a2 + 36) + 1);
  return ScrollView.showsIndicators.modify;
}

uint64_t protocol witness for Rule.value.getter in conformance ResolvedScrollBehaviorModifier.UpdateEnvironment@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
  v7 = 0;
  memset(v6, 0, sizeof(v6));

  return EnvironmentValues.focusGroupID.setter(v6);
}

uint64_t protocol witness for Rule.value.getter in conformance ResolvedScrollBehaviorModifier.MakeBehaviorTransform@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ResolvedScrollBehavior?();
  Value = AGGraphGetValue();
  return outlined init with copy of ResolvedScrollBehavior?(Value, a1, type metadata accessor for ResolvedScrollBehavior?);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ResolvedScrollBehaviorModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v8);
  v7 = v4;
  v5 = specialized static ResolvedScrollBehaviorModifier._makeInputs(modifier:inputs:)(&v7, v8);
  a3(v5, v8);
  return outlined destroy of _ViewListInputs(v8);
}

uint64_t assignWithTake for ScrollView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 1) = *(v8 + 1);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 40) = *(v8 + 40);
  v9 = (v7 + 48);
  v10 = *(v8 + 48);
  if (*(v7 + 48))
  {
    if (v10)
    {
      v11 = *(v8 + 56);
      *(v7 + 48) = v10;
      *(v7 + 56) = v11;

      goto LABEL_6;
    }

    outlined destroy of ScrollToTopGestureAction(v9);
  }

  *v9 = *(v8 + 48);
LABEL_6:
  swift_unknownObjectWeakTakeAssign();
  v13 = (v7 + 80);
  v12 = *(v7 + 80);
  *(v7 + 72) = *(v8 + 72);
  v15 = (v8 + 80);
  v14 = *(v8 + 80);
  if (v12)
  {
    if (v14)
    {
      v16 = *(v8 + 88);
      *(v7 + 80) = v14;
      *(v7 + 88) = v16;

      *(v7 + 96) = *(v8 + 96);
    }

    else
    {
      outlined destroy of RefreshAction(v7 + 80);
      v18 = *(v8 + 96);
      *v13 = *v15;
      *(v7 + 96) = v18;
    }
  }

  else
  {
    v17 = *v15;
    *(v7 + 96) = *(v8 + 96);
    *v13 = v17;
  }

  *(v7 + 104) = *(v8 + 104);
  *(v7 + 112) = *(v8 + 112);

  return a1;
}

uint64_t initializeWithTake for ScrollViewConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  swift_unknownObjectWeakTakeInit();
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t assignWithTake for ScrollViewConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = (a1 + 48);
  v6 = (a2 + 48);
  v5 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (v5)
    {
      v7 = *(a2 + 56);
      *(a1 + 48) = v5;
      *(a1 + 56) = v7;

      goto LABEL_6;
    }

    outlined destroy of ScrollToTopGestureAction(a1 + 48);
  }

  *v4 = *v6;
LABEL_6:
  swift_unknownObjectWeakTakeAssign();
  v8 = *(a2 + 80);
  v9 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  if (!v9)
  {
LABEL_10:
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_11;
  }

  if (!v8)
  {
    outlined destroy of RefreshAction(a1 + 80);
    goto LABEL_10;
  }

  v10 = *(a2 + 88);
  *(a1 + 80) = v8;
  *(a1 + 88) = v10;

  *(a1 + 96) = *(a2 + 96);
LABEL_11:
  v11 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v11;

  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollViewConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 72) & 0xF000000000000007) != 0)
  {
    v2 = *(a1 + 64) & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollViewConfiguration(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 72) = 1;
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithTake for SystemScrollViewContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v6 = (a1 + 48);
  v8 = (a2 + 48);
  v7 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (v7)
    {
      v9 = *(a2 + 56);
      *(a1 + 48) = v7;
      *(a1 + 56) = v9;

      goto LABEL_6;
    }

    outlined destroy of ScrollToTopGestureAction(a1 + 48);
  }

  *v6 = *v8;
LABEL_6:
  swift_unknownObjectWeakTakeAssign();
  v10 = *(a2 + 80);
  v11 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  if (!v11)
  {
LABEL_10:
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_11;
  }

  if (!v10)
  {
    outlined destroy of RefreshAction(a1 + 80);
    goto LABEL_10;
  }

  v12 = *(a2 + 88);
  *(a1 + 80) = v10;
  *(a1 + 88) = v12;

  *(a1 + 96) = *(a2 + 96);
LABEL_11:
  v13 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v13;

  v14 = *(*(a3 + 16) - 8);
  (*(v14 + 40))((*(v14 + 80) + 120 + a1) & ~*(v14 + 80), (*(v14 + 80) + 120 + a2) & ~*(v14 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for SystemScrollViewContainer(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 120) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 120) & ~v6);
      }

      if ((*(a1 + 9) & 0xF000000000000007) != 0)
      {
        return (*(a1 + 16) & 0x7FFFFFFFu) + 1;
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for SystemScrollViewContainer(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 120) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 120] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 8) = a2 - 1;
    *(a1 + 9) = 1;
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier>)
  {
    type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier>)
  {
    type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48], MEMORY[0x1E697EC20]);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>)
  {
    type metadata accessor for BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>);
    }
  }
}

void type metadata accessor for BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>()
{
  if (!lazy cache variable for type metadata for BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>)
  {
    type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
    lazy protocol witness table accessor for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature();
    v0 = type metadata accessor for BothFeatures();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>();
    _s7SwiftUI24ScrollEnvironmentStorageCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature> and conformance BothFeatures<A, B>, type metadata accessor for BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t assignWithTake for ResolvedScrollBehaviorModifier.BehaviorTransform(uint64_t result, uint64_t a2)
{
  if (*(result + 24))
  {
    v3 = result;
    if (*(a2 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(result);
      v4 = *(a2 + 16);
      *v3 = *a2;
      *(v3 + 16) = v4;
      *(v3 + 32) = *(a2 + 32);
      *(v3 + 40) = *(a2 + 40);
      *(v3 + 44) = *(a2 + 44);
      *(v3 + 48) = *(a2 + 48);
      *(v3 + 64) = *(a2 + 64);
    }

    else
    {
      outlined destroy of AccessibilityRelationshipScope.Key(result);
      v7 = *(a2 + 48);
      *(v3 + 32) = *(a2 + 32);
      *(v3 + 48) = v7;
      *(v3 + 64) = *(a2 + 64);
      v8 = *(a2 + 16);
      *v3 = *a2;
      *(v3 + 16) = v8;
    }

    return v3;
  }

  else
  {
    v5 = *(a2 + 48);
    *(result + 32) = *(a2 + 32);
    *(result + 48) = v5;
    *(result + 64) = *(a2 + 64);
    v6 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v6;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResolvedScrollBehaviorModifier.BehaviorTransform(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ResolvedScrollBehaviorModifier.BehaviorTransform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for ResolvedScrollBehaviorModifier.MakeBehavior(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 32);
  if (*(a1 + 32))
  {
    v5 = (a1 + 8);
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(v5, (a2 + 8));
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 52) = *(a2 + 52);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 60) = *(a2 + 60);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 68) = *(a2 + 68);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 76) = *(a2 + 76);
    }

    else
    {
      outlined destroy of AccessibilityRelationshipScope.Key(v5);
      *(a1 + 8) = *(a2 + 8);
      v6 = *(a2 + 40);
      v7 = *(a2 + 56);
      v8 = *(a2 + 72);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 72) = v8;
      *(a1 + 56) = v7;
      *(a1 + 40) = v6;
    }
  }

  else if (v4)
  {
    *(a1 + 32) = v4;
    *(a1 + 40) = *(a2 + 40);
    (**(v4 - 8))(a1 + 8, a2 + 8);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 52) = *(a2 + 52);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    v9 = *(a2 + 24);
    v10 = *(a2 + 40);
    v11 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v11;
    *(a1 + 40) = v10;
    *(a1 + 24) = v9;
  }

  return a1;
}

__n128 assignWithTake for ResolvedScrollBehaviorModifier.MakeBehavior(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 8);
      v5 = v2[1];
      *(a1 + 8) = *v2;
      *(a1 + 24) = v5;
      *(a1 + 40) = *(v2 + 4);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 52) = *(a2 + 52);
      *(a1 + 56) = *(a2 + 56);
      result.n128_u64[0] = *(a2 + 72);
      *(a1 + 72) = result.n128_u64[0];
    }

    else
    {
      outlined destroy of AccessibilityRelationshipScope.Key(a1 + 8);
      v10 = *v2;
      *(a1 + 24) = v2[1];
      result = v2[2];
      v11 = v2[3];
      *(a1 + 40) = result;
      *(a1 + 56) = v11;
      *(a1 + 72) = *(v2 + 8);
      *(a1 + 8) = v10;
    }
  }

  else
  {
    v7 = *v2;
    *(a1 + 24) = *(a2 + 24);
    result = *(a2 + 40);
    v8 = *(a2 + 56);
    *(a1 + 40) = result;
    *(a1 + 56) = v8;
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 8) = v7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResolvedScrollBehaviorModifier.MakeBehavior(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ResolvedScrollBehaviorModifier.MakeBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t View.unbridgedInspectorModifier<A>(isPresented:isActive:width:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v26 = a9;
  v25 = a6;
  v23 = a3;
  v24 = a4;
  type metadata accessor for _UnaryViewAdaptor();
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v28 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  v16 = type metadata accessor for UnbridgedInspectorModifier();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - v18;

  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = v24;
  v19[16] = v23;
  v19[17] = v20;
  v21 = *a5;
  *(v19 + 40) = a5[1];
  v19[56] = *(a5 + 32);
  *(v19 + 24) = v21;
  closure #1 in View.unbridgedInspectorModifier<A>(isPresented:isActive:width:content:)(v25, a7, a8, a10, a11, &v19[*(v16 + 44)]);
  MEMORY[0x18D00A570](v19, a7, v16, a10);
  return (*(v17 + 8))(v19, v16);
}

uint64_t closure #1 in View.unbridgedInspectorModifier<A>(isPresented:isActive:width:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a1;
  v26 = a4;
  v27 = a6;
  v9 = type metadata accessor for _UnaryViewAdaptor();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  v28 = a2;
  v29 = a3;
  v30 = v26;
  v31 = a5;
  v32 = v25;
  _UnaryViewAdaptor.init(content:)();
  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v10 + 8))(v12, v9);
  v33 = WitnessTable;
  v34 = MEMORY[0x1E697EBF8];
  v20 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v16, v13, v20);
  v21 = *(v14 + 8);
  v21(v16, v13);
  static ViewBuilder.buildExpression<A>(_:)(v19, v13, v20);
  return (v21)(v19, v13);
}

uint64_t closure #1 in closure #1 in View.unbridgedInspectorModifier<A>(isPresented:isActive:width:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v10, v11, v12);
  static ViewBuilder.buildExpression<A>(_:)(v9, a3, a5);
  return (*(v7 + 8))(v9, a3);
}

uint64_t static UnbridgedInspectorModifier._makeView(modifier:inputs:body:)(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  v4 = *(a2 + 56);
  v20 = *(a2 + 40);
  v21[0] = v4;
  *(v21 + 12) = *(a2 + 68);
  v18 = *(a2 + 8);
  v19 = v3;
  type metadata accessor for UnbridgedInspectorModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v5 = _GraphValue.value.getter();
  _s7SwiftUI7BindingVySbGMaTm_9(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  _GraphValue.subscript.getter();
  v6 = v14[0];
  _GraphValue.subscript.getter();
  v7 = v14[0];
  v12 = v2;
  _s7SwiftUI7BindingVySbGMaTm_9(0, &lazy cache variable for type metadata for InspectorColumnWidth?, &type metadata for InspectorColumnWidth, MEMORY[0x1E69E6720]);
  _GraphValue.subscript.getter();
  v8 = v14[0];
  lazy protocol witness table accessor for type IsInNavigationV4Context and conformance IsInNavigationV4Context();
  PropertyList.subscript.getter();
  v14[0] = v5;
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = _GraphInputs.horizontalSizeClass.getter();
  v15 = v12;
  type metadata accessor for UnbridgedInspectorModifier.SplitWrapperModifier();
  v17 = 0uLL;
  v16 = 0;
  v9 = type metadata accessor for UnbridgedInspectorModifier.SplitWrapper();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v13, v14, v9);
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
  return (*(v10 + 8))(v14, v9);
}

uint64_t closure #1 in static UnbridgedInspectorModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnbridgedInspectorModifier();
  v5 = *(v4 + 44);
  v9[2] = v4;
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v5, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t closure #2 in static UnbridgedInspectorModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v7[2] = type metadata accessor for UnbridgedInspectorModifier();
  _s7SwiftUI7BindingVySbGMaTm_9(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v3 = v2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v7, v3, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t closure #3 in static UnbridgedInspectorModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v6[2] = type metadata accessor for UnbridgedInspectorModifier();
  v2 = MEMORY[0x1E69E6370];
  v3 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 17, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_1, v6, v2, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v4);
  return v6[5];
}

uint64_t closure #4 in static UnbridgedInspectorModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v7[2] = type metadata accessor for UnbridgedInspectorModifier();
  _s7SwiftUI7BindingVySbGMaTm_9(0, &lazy cache variable for type metadata for InspectorColumnWidth?, &type metadata for InspectorColumnWidth, MEMORY[0x1E69E6720]);
  v3 = v2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 24, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_14, v7, v3, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t UnbridgedInspectorModifier.SplitWrapper.isPresented.getter()
{
  _s7SwiftUI7BindingVySbGMaTm_9(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v0 = *AGGraphGetValue();

  return v0;
}

uint64_t UnbridgedInspectorModifier.SplitWrapper.updateValue()(uint64_t a1)
{
  v2 = v1;
  v86[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v69 = a1;
  v5 = type metadata accessor for UnbridgedInspectorModifier.SplitWrapperModifier();
  v65 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v60[-v6];
  v7 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = type metadata accessor for ModifiedContent();
  v63 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v62 = &v60[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60[-v13];
  v15 = *(v2 + 3);
  v16 = *(v2 + 4);
  v17 = *(v2 + 5);
  Value = AGGraphGetValue();
  v19 = (*(v7 + 16))(v10, Value, v4);
  v70 = v14;
  v67 = v3;
  MEMORY[0x18D00A570](v19, v4, &unk_1EFFE3B68, v3);
  (*(v7 + 8))(v10, v4);
  v66 = v5;
  if (!AGGraphGetOutputValue())
  {
    v83 = v17;
    v84 = v16;
    v82 = v15;
    v20 = lazy protocol witness table accessor for type PreparedInspectorModifier and conformance PreparedInspectorModifier();
    v75 = v67;
    v76 = v20;
    swift_getWitnessTable();
    v21 = objc_allocWithZone(type metadata accessor for InspectorHostingView());
    v22 = specialized _UIHostingView.init(rootView:)(v70);
    type metadata accessor for _UIHostingView();
    v23 = type metadata accessor for Optional();
    v24 = *(*(v23 - 8) + 8);
    v25 = v22;
    v24(&v84, v23);
    *(v2 + 4) = v22;
    v26 = [objc_opt_self() clearColor];
    [v25 setBackgroundColor_];

    type metadata accessor for UIHostingController();
    v27 = UIHostingController.__allocating_init(hostingView:)(v25);
    v28 = type metadata accessor for Optional();
    v29 = *(*(v28 - 8) + 8);
    v30 = v27;
    v29(&v83, v28);
    *(v2 + 5) = v27;
    v31 = [objc_allocWithZone(type metadata accessor for UIKitNavigationController()) initWithRootViewController_];

    outlined destroy of UIKitNavigationController?(&v82);
    *(v2 + 3) = v31;
  }

  v32 = v2[1];
  v79 = *v2;
  v80 = v32;
  v81 = v2[2];
  v33 = UnbridgedInspectorModifier.SplitWrapper.isPresented.getter();
  v35 = v34;
  v37 = v36;
  v38 = *AGGraphGetValue();
  v39 = MEMORY[0x1E69E6720];
  _s7SwiftUI7BindingVySbGMaTm_9(0, &lazy cache variable for type metadata for InspectorColumnWidth?, &type metadata for InspectorColumnWidth, MEMORY[0x1E69E6720]);
  v40 = AGGraphGetValue();
  v41 = *(v40 + 32);
  v42 = *(v40 + 16);
  v77[0] = *v40;
  v77[1] = v42;
  v78 = v41;
  v71 = *(v2 + 20);
  v43 = *(v2 + 3);
  v44 = *(v2 + 5);
  v86[0] = v43;
  _s7SwiftUI7BindingVySbGMaTm_9(0, &lazy cache variable for type metadata for UserInterfaceSizeClass?, MEMORY[0x1E697FF58], v39);
  v45 = *AGGraphGetValue();
  v74[0] = (v45 == 2) | v45 & 1;
  v46 = v86[0];
  if (!v86[0])
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v61 = v38;
  v85 = v44;
  if (!v44)
  {
    goto LABEL_7;
  }

  v47 = v71;
  v48 = v63;
  v49 = v62;
  v50 = v68;
  (*(v63 + 16))(v62, v70, v68);
  v51 = v67;
  v59[0] = v49;
  v52 = v64;
  v53 = UnbridgedInspectorModifier.SplitWrapperModifier.init(isPresented:activeInspectorOverride:width:horizontalSizeClass:hostedPortableInspector:hostingControllerInspector:inspectorContent:inNavigationContext:)(v33, v35, v37 & 1, v61, v77, v74, v46, v44, v64, v59[0], v47);
  MEMORY[0x1EEE9AC00](v53);
  v59[2] = v69;
  v59[3] = swift_getWitnessTable();
  outlined init with copy of UIKitNavigationController?(v86, v74);
  v54 = lazy protocol witness table accessor for type PreparedInspectorModifier and conformance PreparedInspectorModifier();
  v72 = v51;
  v73 = v54;
  swift_getWitnessTable();
  type metadata accessor for UIHostingController();
  v55 = type metadata accessor for Optional();
  (*(*(v55 - 8) + 16))(v74, &v85, v55);
  v56 = v66;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v52, partial apply for closure #1 in StatefulRule.value.setter, v59, v66, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v57);
  (*(v65 + 8))(v52, v56);
  return (*(v48 + 8))(v70, v50);
}

uint64_t UnbridgedInspectorModifier.SplitWrapperModifier.init(isPresented:activeInspectorOverride:width:horizontalSizeClass:hostedPortableInspector:hostingControllerInspector:inspectorContent:inNavigationContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  v12 = *(a5 + 16);
  *(a9 + 24) = *a5;
  v13 = *a8;
  v14 = *MEMORY[0x1E69E7D40];
  v15 = *a6;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 40) = v12;
  *(a9 + 56) = *(a5 + 32);
  *(a9 + 57) = v15;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  v16 = *((v14 & v13) + 0x50);
  v17 = type metadata accessor for UnbridgedInspectorModifier.SplitWrapperModifier();
  result = (*(*(v16 - 8) + 32))(a9 + *(v17 + 56), a10, v16);
  *(a9 + *(v17 + 60)) = a11;
  return result;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance UnbridgedInspectorModifier<A>.SplitWrapper@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UnbridgedInspectorModifier.SplitWrapperModifier();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t UnbridgedInspectorModifier.SplitWrapperModifier.containedInspector(for:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v51 = a3;
  v52 = a2;
  v44 = type metadata accessor for ModifiedContent();
  v5 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v38 - v6;
  v42 = *(a2 + 24);
  v38 = type metadata accessor for ContainerViewControllerRepresentable();
  v46 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v8 = &v38 - v7;
  type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>, &type metadata for PresentationOptionsPreferenceKey, &protocol witness table for PresentationOptionsPreferenceKey, MEMORY[0x1E6980750]);
  v9 = type metadata accessor for ModifiedContent();
  v49 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
  v12 = type metadata accessor for ModifiedContent();
  v48 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>, &type metadata for PresentationOptionsPreferenceKey, &protocol witness table for PresentationOptionsPreferenceKey, MEMORY[0x1E6980910]);
  v15 = type metadata accessor for ModifiedContent();
  v47 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v45 = type metadata accessor for ModifiedContent();
  v50 = *(v45 - 8);
  v18 = MEMORY[0x1EEE9AC00](v45);
  v39 = &v38 - v19;
  LOBYTE(v19) = *v43;
  v20 = v3;
  v40 = v3;
  LOBYTE(v61[0]) = *(v3 + 57);
  v62 = v19;
  v21 = *(v3 + 64);
  v22 = *(v20 + 72);
  v23 = *(v5 + 16);
  v24 = v41;
  v23(v41, v20 + *(v52 + 56), v44, v18);
  ContainerViewControllerRepresentable.init(currentSizeClass:activeSizeClass:hostedPortableInspector:hostingController:inspectorContent:)(v61, &v62, v21, v22, v24, v8);
  v25 = v21;
  v26 = v22;
  UIHostingController.presentationOptions.getter();
  v27 = v38;
  View.preference<A>(key:value:)();
  outlined destroy of PresentationOptionsPreference(v61);
  (*(v46 + 8))(v8, v27);
  v61[0] = static Color.clear.getter();
  static Edge.Set.all.getter();
  v28 = lazy protocol witness table accessor for type _PreferenceWritingModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceWritingModifier<A>();
  v59 = &protocol witness table for ContainerViewControllerRepresentable<A>;
  v60 = v28;
  WitnessTable = swift_getWitnessTable();
  View.background<A>(_:ignoresSafeAreaEdges:)();

  (*(v49 + 8))(v11, v9);
  v30 = lazy protocol witness table accessor for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>();
  v57 = WitnessTable;
  v58 = v30;
  v31 = swift_getWitnessTable();
  View.transformPreference<A>(_:_:)();
  (*(v48 + 8))(v14, v12);
  v32 = lazy protocol witness table accessor for type _PreferenceTransformModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceTransformModifier<A>();
  v55 = v31;
  v56 = v32;
  v33 = swift_getWitnessTable();
  v34 = v39;
  MEMORY[0x18D00A570](v33, v15, &type metadata for UpdateBridgesToAllowedBehaviors, v33);
  (*(v47 + 8))(v17, v15);
  LOBYTE(v61[0]) = *(v40 + *(v52 + 60));
  v53 = v33;
  v54 = &protocol witness table for UpdateBridgesToAllowedBehaviors;
  v35 = v45;
  v36 = swift_getWitnessTable();
  MEMORY[0x18D00A570](v61, v35, &type metadata for InspectorBarManagement, v36);
  return (*(v50 + 8))(v34, v35);
}

uint64_t ContainerViewControllerRepresentable.init(currentSizeClass:activeSizeClass:hostedPortableInspector:hostingController:inspectorContent:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a4;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = *a2;
  *a6 = *a1;
  *(a6 + 1) = v10;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  v11 = *((v9 & v8) + 0x50);
  v12 = type metadata accessor for ContainerViewControllerRepresentable();
  v13 = *(*(v11 - 8) + 32);
  v14 = a6 + *(v12 + 48);

  return v13(v14, a5, v11);
}

void UIHostingController.presentationOptions.getter()
{
  v0 = specialized UIHostingController.host.getter();
  type metadata accessor for _UIHostingView();
  v1 = v0;
  swift_getWitnessTable();
  ViewRendererHost.preferenceValue<A>(_:)();
}

uint64_t closure #1 in UnbridgedInspectorModifier.SplitWrapperModifier.containedInspector(for:)(uint64_t result)
{
  v1 = result;
  if (*(result + 48) == 2)
  {
    v2 = *MEMORY[0x1E69DE3B8];
    *(result + 48) = *MEMORY[0x1E69DE3B8];
    result = v2;
  }

  if (!*(*v1 + 16))
  {
    static _GraphInputs.defaultInterfaceIdiom.getter();
    result = static Solarium.isEnabled(for:)();
    if ((result & 1) == 0)
    {
      v3 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI18PresentationDetentV_Tt0g5Tf4g_n(&outlined read-only object #0 of closure #1 in UnbridgedInspectorModifier.SplitWrapperModifier.containedInspector(for:));

      *v1 = v3;
    }
  }

  return result;
}

uint64_t UnbridgedInspectorModifier.SplitWrapperModifier.modifiedContent(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 17) == 1)
  {
    v26 = *(v3 + 57) ^ 1;
  }

  else
  {
    v26 = 0;
  }

  v8 = *v3;
  v23 = *(v3 + 8);
  v24 = v8;
  v25 = *(v3 + 16);
  v9 = *(v5 + 16);

  v9(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = *(a2 + 24);
  *(v11 + 16) = *(a2 + 16);
  *(v11 + 24) = v12;
  (*(v5 + 32))(v11 + v10, v7, a2);
  swift_getWitnessTable();
  v13 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ContainerViewControllerRepresentable();
  type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>, &type metadata for PresentationOptionsPreferenceKey, &protocol witness table for PresentationOptionsPreferenceKey, MEMORY[0x1E6980750]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>, &type metadata for PresentationOptionsPreferenceKey, &protocol witness table for PresentationOptionsPreferenceKey, MEMORY[0x1E6980910]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v14 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v16 = lazy protocol witness table accessor for type _PreferenceWritingModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceWritingModifier<A>();
  v38 = &protocol witness table for ContainerViewControllerRepresentable<A>;
  v39 = v16;
  v17 = swift_getWitnessTable();
  v18 = lazy protocol witness table accessor for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>();
  v36 = v17;
  v37 = v18;
  v19 = swift_getWitnessTable();
  v20 = lazy protocol witness table accessor for type _PreferenceTransformModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceTransformModifier<A>();
  v34 = v19;
  v35 = v20;
  v32 = swift_getWitnessTable();
  v33 = &protocol witness table for UpdateBridgesToAllowedBehaviors;
  v30 = swift_getWitnessTable();
  v31 = &protocol witness table for InspectorBarManagement;
  v28 = swift_getWitnessTable();
  v29 = MEMORY[0x1E6980A30];
  v21 = swift_getWitnessTable();
  View.inspectorSheet<A>(isPresented:activeInspector:content:)(v24, v23, v25, v26 & 1, partial apply for closure #1 in UnbridgedInspectorModifier.SplitWrapperModifier.modifiedContent(content:), v11, v13, v14, WitnessTable, v21);
}

uint64_t closure #1 in UnbridgedInspectorModifier.SplitWrapperModifier.modifiedContent(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[3] = a1;
  v23[4] = a2;
  type metadata accessor for ContainerViewControllerRepresentable();
  type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>, &type metadata for PresentationOptionsPreferenceKey, &protocol witness table for PresentationOptionsPreferenceKey, MEMORY[0x1E6980750]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
  v23[0] = type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>, &type metadata for PresentationOptionsPreferenceKey, &protocol witness table for PresentationOptionsPreferenceKey, MEMORY[0x1E6980910]);
  v23[1] = type metadata accessor for ModifiedContent();
  v23[2] = type metadata accessor for ModifiedContent();
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - v4;
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  v24 = 0;
  v13 = type metadata accessor for UnbridgedInspectorModifier.SplitWrapperModifier();
  UnbridgedInspectorModifier.SplitWrapperModifier.containedInspector(for:)(&v24, v13, v5);
  static Edge.Set.all.getter();
  v14 = lazy protocol witness table accessor for type _PreferenceWritingModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceWritingModifier<A>();
  v23[15] = &protocol witness table for ContainerViewControllerRepresentable<A>;
  v23[16] = v14;
  WitnessTable = swift_getWitnessTable();
  v16 = lazy protocol witness table accessor for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>();
  v23[13] = WitnessTable;
  v23[14] = v16;
  v17 = swift_getWitnessTable();
  v18 = lazy protocol witness table accessor for type _PreferenceTransformModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceTransformModifier<A>();
  v23[11] = v17;
  v23[12] = v18;
  v23[9] = swift_getWitnessTable();
  v23[10] = &protocol witness table for UpdateBridgesToAllowedBehaviors;
  v23[7] = swift_getWitnessTable();
  v23[8] = &protocol witness table for InspectorBarManagement;
  v19 = swift_getWitnessTable();
  View.ignoresSafeArea(_:edges:)();
  (*(v3 + 8))(v5, v2);
  v23[5] = v19;
  v23[6] = MEMORY[0x1E6980A30];
  v20 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v9, v6, v20);
  v21 = *(v7 + 8);
  v21(v9, v6);
  static ViewBuilder.buildExpression<A>(_:)(v12, v6, v20);
  return (v21)(v12, v6);
}

uint64_t UnbridgedInspectorModifier.SplitWrapperModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v43 = a2;
  type metadata accessor for ContainerViewControllerRepresentable();
  type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>, &type metadata for PresentationOptionsPreferenceKey, &protocol witness table for PresentationOptionsPreferenceKey, MEMORY[0x1E6980750]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>, &type metadata for PresentationOptionsPreferenceKey, &protocol witness table for PresentationOptionsPreferenceKey, MEMORY[0x1E6980910]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v4);
  v41 = a1;
  v42 = &v36 - v5;
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  v6 = v4;
  v7 = type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.InspectorKey>, &type metadata for SheetPreference.InspectorKey, &protocol witness table for SheetPreference.InspectorKey, type metadata accessor for NullSheetAnchor);
  v40 = v8;
  v9 = lazy protocol witness table accessor for type _PreferenceWritingModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceWritingModifier<A>();
  v73 = &protocol witness table for ContainerViewControllerRepresentable<A>;
  v74 = v9;
  WitnessTable = swift_getWitnessTable();
  v11 = lazy protocol witness table accessor for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>();
  v71 = WitnessTable;
  v72 = v11;
  v12 = swift_getWitnessTable();
  v13 = lazy protocol witness table accessor for type _PreferenceTransformModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceTransformModifier<A>();
  v69 = v12;
  v70 = v13;
  v67 = swift_getWitnessTable();
  v68 = &protocol witness table for UpdateBridgesToAllowedBehaviors;
  v65 = swift_getWitnessTable();
  v66 = &protocol witness table for InspectorBarManagement;
  v39 = v6;
  v63 = swift_getWitnessTable();
  v64 = MEMORY[0x1E6980A30];
  v14 = v63;
  v36 = v63;
  v15 = swift_getWitnessTable();
  v16 = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.InspectorKey> and conformance NullSheetAnchor<A>();
  v44 = v7;
  v45 = v40;
  v46 = v15;
  v47 = v16;
  type metadata accessor for SheetPresentationModifier();
  v17 = type metadata accessor for ModifiedContent();
  v18 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v61 = v18;
  v62 = v19;
  v38 = v17;
  v37 = swift_getWitnessTable();
  v44 = v17;
  v45 = v6;
  v46 = v37;
  v47 = v14;
  v20 = type metadata accessor for InspectorSplitView();
  v40 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v36 - v24;
  v27 = *v2;
  v26 = v2[1];
  LOBYTE(v14) = *(v2 + 16);
  v28 = *(v2 + 17);
  LOBYTE(v17) = *(v2 + 56);
  v60 = 1;

  *&v53 = v27;
  *(&v53 + 1) = v26;
  v54 = v14;
  v55 = 1;
  v56 = v28;
  v30 = *(v2 + 3);
  v58 = *(v2 + 5);
  v57 = v30;
  v59 = v17;
  v31 = v41;
  UnbridgedInspectorModifier.SplitWrapperModifier.modifiedContent(content:)(v29, v41, v51);
  v49[0] = v51[0];
  v49[1] = v51[1];
  v50[0] = v52[0];
  *(v50 + 11) = *(v52 + 11);
  LOBYTE(v44) = 1;
  v32 = v42;
  UnbridgedInspectorModifier.SplitWrapperModifier.containedInspector(for:)(&v44, v31, v42);
  v48 = *(v2 + 57);
  LOBYTE(v26) = UIHostingController.hasToolbarItems.getter();
  UIHostingController.presentationOptions.getter();
  InspectorSplitView.init(inspectorState:mainContent:inspectorContent:horizontalSizeClass:inspectorHasToolbarItems:presentationOptions:)(&v53, v49, v32, &v48, v26 & 1, &v44, v38, v39, v22);
  v33 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v22, v20, v33);
  v34 = *(v40 + 8);
  v34(v22, v20);
  static ViewBuilder.buildExpression<A>(_:)(v25, v20, v33);
  return v34(v25, v20);
}

BOOL UIHostingController.hasToolbarItems.getter()
{
  v0 = specialized UIHostingController.host.getter();
  type metadata accessor for _UIHostingView();
  v1 = v0;
  swift_getWitnessTable();
  ViewRendererHost.preferenceValue<A>(_:)();

  v9[2] = v6;
  v9[3] = v7;
  v10 = v8;
  v9[0] = v4;
  v9[1] = v5;
  v2 = *(v7 + 16);
  outlined destroy of ToolbarStorage(v9);
  return v2 != 0;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance UnbridgedInspectorModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance InspectorBarManagement(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v23 = *(a2 + 32);
  v24 = v4;
  v6 = *(a2 + 48);
  v25 = *(a2 + 64);
  v7 = *(a2 + 16);
  v22[0] = *a2;
  v22[1] = v7;
  v18 = v23;
  v19 = v6;
  v20 = *(a2 + 64);
  v26 = *(a2 + 80);
  v21 = *(a2 + 80);
  v16 = v22[0];
  v17 = v5;
  outlined init with copy of _ViewInputs(v22, v31);
  _s7SwiftUI33ViewGraphBridgePropertiesModifierPAAE11_makeInputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA22InspectorBarManagement33_DB4085A53F7E00BD5F11F3B74D2A8BAELLV_Tt1B5();
  v27[2] = v18;
  v27[3] = v19;
  v27[4] = v20;
  v28 = v21;
  v27[0] = v16;
  v27[1] = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v10 = v16;
  v11 = v17;
  v8 = outlined init with copy of _ViewInputs(v27, v31);
  a3(v8, &v10);
  v29[2] = v12;
  v29[3] = v13;
  v29[4] = v14;
  v30 = v15;
  v29[0] = v10;
  v29[1] = v11;
  outlined destroy of _ViewInputs(v29);
  v31[2] = v18;
  v31[3] = v19;
  v31[4] = v20;
  v32 = v21;
  v31[0] = v16;
  v31[1] = v17;
  return outlined destroy of _ViewInputs(v31);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance InspectorBarManagement(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  Inputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA22InspectorBarManagement33_DB4085A53F7E00BD5F11F3B74D2A8BAELLV_Tt1B5 = _s7SwiftUI33ViewGraphBridgePropertiesModifierPAAE11_makeInputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA22InspectorBarManagement33_DB4085A53F7E00BD5F11F3B74D2A8BAELLV_Tt1B5();
  a3(Inputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA22InspectorBarManagement33_DB4085A53F7E00BD5F11F3B74D2A8BAELLV_Tt1B5, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t static NavigationBarDefaults._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, void (*a2)(uint64_t, __int128 *)@<X2>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[1];
  v20 = a1[2];
  v21 = v5;
  v7 = a1[3];
  v22 = a1[4];
  v8 = a1[1];
  v18 = *a1;
  v19 = v8;
  v14 = v20;
  v15 = v7;
  v16 = a1[4];
  v23 = *(a1 + 20);
  v17 = *(a1 + 20);
  v12 = v18;
  v13 = v6;
  outlined init with copy of _ViewInputs(&v18, &v28);
  PreferenceKeys.add(_:)();
  PreferenceKeys.add(_:)();
  v28 = v18;
  v29 = v19;
  v30 = v20;
  _GraphInputs.horizontalSizeClass.getter();
  v24[2] = v14;
  v24[3] = v15;
  v24[4] = v16;
  v25 = v17;
  v24[0] = v12;
  v24[1] = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v28 = v12;
  v29 = v13;
  v9 = outlined init with copy of _ViewInputs(v24, v26);
  a2(v9, &v28);
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  outlined destroy of _ViewInputs(v26);
  v10 = *(a3 + 8);
  *&v28 = *a3;
  DWORD2(v28) = v10;

  PreferencesOutputs.subscript.getter();

  *&v28 = v15;
  DWORD2(v28) = DWORD2(v15);

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();

  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v28 = v12;
  v29 = v13;
  return outlined destroy of _ViewInputs(&v28);
}

uint64_t implicit closure #1 in static NavigationBarDefaults._makeView(modifier:inputs:body:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type NavigationBarDefaults.DefaultTitle and conformance NavigationBarDefaults.DefaultTitle();

  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t implicit closure #2 in static NavigationBarDefaults._makeView(modifier:inputs:body:)()
{
  lazy protocol witness table accessor for type IsInNavigationV4Context and conformance IsInNavigationV4Context();
  PropertyList.subscript.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type NavigationBarDefaults.DefaultNavigationBarVisibility and conformance NavigationBarDefaults.DefaultNavigationBarVisibility();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t closure #1 in NavigationBarDefaults.DefaultTitle.value.getter(uint64_t result)
{
  v1 = result;
  if (*(result + 24) == 1 || *(result + 40) == 5)
  {
    v2 = *(result + 16);
    v15 = *result;
    v16 = v2;
    *v17 = *(result + 32);
    *&v17[9] = *(result + 41);
    v3 = *(&v2 + 1);
    if (*(&v2 + 1) == 1)
    {
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 1;
      v9 = 3;
    }

    else
    {
      v5 = *(&v15 + 1);
      v6 = v15;
      v4 = v16;
      v8 = *v17;
      v14[0] = *(result + 41);
      *(v14 + 3) = *(result + 44);
      v7 = *&v17[16];
      v9 = v17[24];
    }

    v10 = *(result + 16);
    v12[0] = *result;
    v12[1] = v10;
    v13[0] = *(result + 32);
    *(v13 + 9) = *(result + 41);
    outlined init with copy of NavigationTitleStorage?(&v15, &v11);
    result = outlined destroy of NavigationTitleStorage?(v12);
    *v1 = v6;
    *(v1 + 8) = v5;
    *(v1 + 16) = v4;
    *(v1 + 24) = v3;
    *(v1 + 32) = v8;
    *(v1 + 41) = v14[0];
    *(v1 + 44) = *(v14 + 3);
    *(v1 + 48) = v7;
    *(v1 + 56) = v9;
    *(v1 + 40) = 3;
  }

  return result;
}

uint64_t closure #1 in NavigationBarDefaults.DefaultNavigationBarVisibility.value.getter(uint64_t result, int a2, char a3)
{
  if (a3)
  {
    v3 = result;
    _s7SwiftUI7BindingVySbGMaTm_9(0, &lazy cache variable for type metadata for UserInterfaceSizeClass?, MEMORY[0x1E697FF58], MEMORY[0x1E69E6720]);
    v5 = *AGGraphGetValue();
    if (v5 == 2 || (v5 & 1) != 0)
    {
      memset(v47, 0, 40);
      v7 = *v3;
      v44 = v3;
      if (*(*v3 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v47), (v9 & 1) != 0))
      {
        v10 = (*(v7 + 56) + 80 * v8);
        *v62 = *v10;
        v12 = v10[2];
        v11 = v10[3];
        v13 = *(v10 + 57);
        *&v62[16] = v10[1];
        *&v62[32] = v12;
        *&v62[57] = v13;
        *&v62[48] = v11;
        outlined init with copy of ToolbarAppearanceConfiguration(v62, v55);
        outlined destroy of ToolbarPlacement.Role(v47);
        v14 = v62[0];
        v60 = *&v62[2];
        v61 = *&v62[6];
        v15 = *&v62[8];
        v16 = *&v62[16];
        v17 = v62[24];
        LODWORD(v49[0]) = *&v62[25];
        *(v49 + 3) = *&v62[28];
        v18 = *&v62[32];
        v19 = v62[40];
        LODWORD(v45[0]) = *&v62[41];
        *(v45 + 3) = *&v62[44];
        v20 = *&v62[48];
        v21 = v62[56];
        v22 = v62[57];
        v23 = v62[58];
        v57 = v62[63];
        v56 = *&v62[59];
        v24 = *&v62[64];
        v25 = v62[72];
      }

      else
      {
        outlined destroy of ToolbarPlacement.Role(v47);
        v20 = 0;
        v18 = 0;
        v17 = 0;
        v16 = 0;
        v15 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v21 = 1;
        v59 = 1;
        v58 = 1;
        v22 = 2;
        v19 = 1;
        v14 = 1;
      }

      v39 = v21;
      v40 = v24;
      v41 = v25;
      v42 = v17;
      v43 = v18;
      *&v53 = 0;
      v51 = 0u;
      v52 = 0u;
      v62[0] = v14;
      v62[1] = 2;
      *&v62[2] = v60;
      *&v62[6] = v61;
      *&v62[8] = v15;
      *&v62[16] = v16;
      v62[24] = v17;
      *&v62[25] = v49[0];
      *&v62[28] = *(v49 + 3);
      *&v62[32] = v18;
      v62[40] = v19;
      *&v62[44] = *(v45 + 3);
      *&v62[41] = v45[0];
      *&v62[48] = v20;
      v62[56] = v21;
      v62[57] = v22;
      v62[58] = v23;
      v62[63] = v57;
      *&v62[59] = v56;
      *&v62[64] = v24;
      v62[72] = v25;
      v35 = v15;
      outlined init with copy of ToolbarAppearanceConfiguration(v62, v55);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v55 = *v44;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v62, &v51, isUniquelyReferenced_nonNull_native);
      outlined destroy of ToolbarPlacement.Role(&v51);
      *v44 = *v55;
      v55[0] = v14;
      v55[1] = 2;
      *&v55[2] = v60;
      *&v55[6] = v61;
      *&v55[8] = v35;
      *&v55[16] = v16;
      v55[24] = v42;
      *&v55[25] = v49[0];
      *&v55[28] = *(v49 + 3);
      *&v55[32] = v43;
      v55[40] = v19;
      *&v55[44] = *(v45 + 3);
      *&v55[41] = v45[0];
      *&v55[48] = v20;
      v55[56] = v39;
      v55[57] = v22;
      v55[58] = v23;
      v55[63] = v57;
      *&v55[59] = v56;
      *&v55[64] = v40;
      v55[72] = v41;
      v37 = v55;
      return outlined destroy of ToolbarAppearanceConfiguration(v37);
    }

    v50 = 0;
    memset(v49, 0, sizeof(v49));
    v26 = *v3;
    if (*(*v3 + 16))
    {
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v49);
      if (v28)
      {
        v29 = (*(v26 + 56) + 80 * v27);
        *v55 = *v29;
        v31 = v29[2];
        v30 = v29[3];
        v32 = *(v29 + 57);
        *&v55[16] = v29[1];
        *&v55[32] = v31;
        *&v55[57] = v32;
        *&v55[48] = v30;
        outlined init with copy of ToolbarAppearanceConfiguration(v55, v62);
        outlined destroy of ToolbarPlacement.Role(v49);
        v33 = v55[0];
        v34 = v55[1];
        v53 = *&v55[34];
        v54[0] = *&v55[50];
        *(v54 + 15) = *&v55[65];
        v51 = *&v55[2];
        v52 = *&v55[18];
        if (*MEMORY[0x1E698D3F8] == a2)
        {
          if (!v55[1])
          {
LABEL_21:
            memset(v45, 0, sizeof(v45));
            *&v62[18] = v52;
            *&v62[34] = v53;
            *&v62[50] = v54[0];
            v46 = 0;
            v62[0] = v33;
            v62[1] = 2;
            *&v62[65] = *(v54 + 15);
            *&v62[2] = v51;
            outlined init with copy of ToolbarAppearanceConfiguration(v62, v47);
            v38 = swift_isUniquelyReferenced_nonNull_native();
            *v47 = *v3;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v62, v45, v38);
            outlined destroy of ToolbarPlacement.Role(v45);
            *v3 = *v47;
            v47[0] = v33;
            v47[1] = 2;
            *&v47[18] = v52;
            *&v47[34] = v53;
            *v48 = v54[0];
            *&v48[15] = *(v54 + 15);
            *&v47[2] = v51;
            v37 = v47;
            return outlined destroy of ToolbarAppearanceConfiguration(v37);
          }
        }

        else
        {
          _s7SwiftUI7BindingVySbGMaTm_9(0, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
          if (*(AGGraphGetValue() + 24) <= 1uLL && !v55[1])
          {
            goto LABEL_21;
          }
        }

        v62[0] = v33;
        v62[1] = v34;
        *&v62[18] = v52;
        *&v62[34] = v53;
        *&v62[50] = v54[0];
        *&v62[65] = *(v54 + 15);
        *&v62[2] = v51;
        v37 = v62;
        return outlined destroy of ToolbarAppearanceConfiguration(v37);
      }
    }

    return outlined destroy of ToolbarPlacement.Role(v49);
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance NavigationBarDefaults.DefaultNavigationBarVisibility@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = *(v1 + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = *v1;
  *(v4 + 24) = v3;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in NavigationBarDefaults.DefaultNavigationBarVisibility.value.getter;
  *(result + 24) = v4;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a1[1] = result;
  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance PreparedInspectorModifier@<X0>(_BYTE *a1@<X8>)
{
  result = static Edge.Set.all.getter();
  *a1 = result;
  return result;
}

id ContainerCoordinator.add(_:to:)(void *a1, id a2)
{
  [a2 addChildViewController_];
  result = [a2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v6 = result;
  result = [a1 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v7 = result;
  [v6 addSubview_];

  result = [a1 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v8 = result;
  result = [a2 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v9 = result;
  swift_beginAccess();
  v10 = *(v2 + 24);
  if (v10 >> 62)
  {
    goto LABEL_21;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v2 = *(v2 + 24);
      v15 = v9;
      v16 = v8;
      v11 = v2 >> 62 ? __CocoaSet.count.getter() : *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v11)
      {
        break;
      }

      v9 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x18D00E9C0](v9, v2);
        }

        else
        {
          if (v9 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v12 = *(v2 + 8 * v9 + 32);
        }

        v13 = v12;
        v8 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          break;
        }

        [v12 setActive_];

        ++v9;
        if (v8 == v11)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_22;
      }
    }

LABEL_18:

    v9 = v15;
    v8 = v16;
  }

  else
  {
LABEL_22:
    v14 = UIView.constrainToView(_:exceptEdges:identifier:)(v9, 0, 0x6F74636570736E69, 0xE900000000000072);
    swift_beginAccess();
    specialized Array.append<A>(contentsOf:)(v14);
    swift_endAccess();
  }

  return [a1 didMoveToParentViewController_];
}

uint64_t ContainerCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *ContainerViewControllerRepresentable.makeUIViewController(context:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD258]) initWithNibName:0 bundle:0];
  v5 = v4;
  v6 = *(v2 + 1);
  v7 = *v2;
  v8 = *(v3 + 16);
  if (v7 == v8)
  {
    v9 = [v4 childViewControllers];
    type metadata accessor for UIViewController();
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v11)
    {
      ContainerCoordinator.add(_:to:)(v6, v5);
      return v5;
    }

    v8 = *(v3 + 16);
  }

  if (v7 != v8)
  {
    specialized ContainerCoordinator.remove(_:from:)(v6);
  }

  return v5;
}

uint64_t ContainerViewControllerRepresentable.makeCoordinator()()
{
  v1 = *(v0 + 1);
  type metadata accessor for ContainerCoordinator();
  result = swift_allocObject();
  *(result + 24) = MEMORY[0x1E69E7CC0];
  *(result + 16) = v1;
  return result;
}

void ContainerViewControllerRepresentable.updateUIViewController(_:context:)(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a2;
  v7 = *(v4 + 1);
  v8 = *v4;
  v9 = *(*a2 + 16);
  if (v8 == v9)
  {
    v11 = [a1 childViewControllers];
    type metadata accessor for UIViewController();
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v12 >> 62)
    {
      v13 = __CocoaSet.count.getter();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v13)
    {
      ContainerCoordinator.add(_:to:)(v7, a1);
      goto LABEL_9;
    }

    v9 = *(v6 + 16);
  }

  if (v8 != v9)
  {
    specialized ContainerCoordinator.remove(_:from:)(v7);
  }

LABEL_9:
  v14 = specialized UIHostingController.host.getter();
  v15 = *(a3 + 48);
  v16 = v14;
  _UIHostingView.setRootView(_:transaction:)(&v4[v15]);
}

uint64_t protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance ContainerViewControllerRepresentable<A>@<X0>(uint64_t *a1@<X8>)
{
  result = ContainerViewControllerRepresentable.makeCoordinator()();
  *a1 = result;
  return result;
}

_BYTE *specialized static InspectorBarManagement.makeBridgeProperties(modifier:properties:)(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  if ((*a2 & 0x10) != 0)
  {
    v3 &= ~0x10uLL;
    *a2 = v3;
  }

  v7 = 0;
  memset(v6, 0, sizeof(v6));
  specialized Set._Variant.insert(_:)(v8, v6);
  outlined destroy of ToolbarPlacement.Role(v8);
  result = AGGraphGetValue();
  if (*result == 1)
  {
    v5 = v3 | 1;
  }

  else
  {
    if ((v3 & 1) == 0)
    {
      return result;
    }

    v5 = v3 & 0xFFFFFFFFFFFFFFFELL;
  }

  *a2 = v5;
  return result;
}

id specialized ContainerCoordinator.remove(_:from:)(void *a1)
{
  [a1 willMoveToParentViewController_];
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x18D00E9C0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 setActive_];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_12:

  result = [a1 view];
  if (result)
  {
    v10 = result;
    [result removeFromSuperview];

    return [a1 removeFromParentViewController];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata completion function for UnbridgedInspectorModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for UnbridgedInspectorModifier(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-58 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v10;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = *(a2 + 17);
    v11 = (a1 + 25) & 0xFFFFFFFFFFFFFFF8;
    v12 = (a2 + 25) & 0xFFFFFFFFFFFFFFF8;
    v13 = *v12;
    v14 = *(v12 + 16);
    *(v11 + 32) = *(v12 + 32);
    *v11 = v13;
    *(v11 + 16) = v14;
    v15 = v11 + v6 + 33;
    v16 = v12 + v6 + 33;
    v17 = *(v5 + 16);

    v17(v15 & ~v6, v16 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return v3;
}

uint64_t destroy for UnbridgedInspectorModifier(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (((a1 + 25) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 33) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t initializeWithCopy for UnbridgedInspectorModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v5 = (a1 + 25) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 25) & 0xFFFFFFFFFFFFFFF8;
  v7 = *v6;
  v8 = *(v6 + 16);
  *(v5 + 32) = *(v6 + 32);
  *v5 = v7;
  *(v5 + 16) = v8;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 8) + 16);
  v11 = *(*(v9 - 8) + 80);
  v12 = v11 + 33 + v5;
  v13 = v11 + 33 + v6;

  v10(v12 & ~v11, v13 & ~v11, v9);
  return a1;
}

uint64_t assignWithCopy for UnbridgedInspectorModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v6 = (a1 + 25) & 0xFFFFFFFFFFFFFFF8;
  v7 = (a2 + 25) & 0xFFFFFFFFFFFFFFF8;
  v8 = *v7;
  v9 = *(v7 + 16);
  *(v6 + 32) = *(v7 + 32);
  *v6 = v8;
  *(v6 + 16) = v9;
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 24))((*(v10 + 80) + 33 + v6) & ~*(v10 + 80), (*(v10 + 80) + 33 + v7) & ~*(v10 + 80));
  return a1;
}

uint64_t initializeWithTake for UnbridgedInspectorModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v4 = (a1 + 25) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 25) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  v7 = *(v5 + 16);
  *(v4 + 32) = *(v5 + 32);
  *v4 = v6;
  *(v4 + 16) = v7;
  v8 = *(*(a3 + 16) - 8);
  (*(v8 + 32))((*(v8 + 80) + 33 + v4) & ~*(v8 + 80), (*(v8 + 80) + 33 + v5) & ~*(v8 + 80));
  return a1;
}

uint64_t assignWithTake for UnbridgedInspectorModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v6 = (a1 + 25) & 0xFFFFFFFFFFFFFFF8;
  v7 = (a2 + 25) & 0xFFFFFFFFFFFFFFF8;
  v8 = *v7;
  v9 = *(v7 + 16);
  *(v6 + 32) = *(v7 + 32);
  *v6 = v8;
  *(v6 + 16) = v9;
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 40))((*(v10 + 80) + 33 + v6) & ~*(v10 + 80), (*(v10 + 80) + 33 + v7) & ~*(v10 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for UnbridgedInspectorModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 57) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 25) & 0xFFFFFFFFFFFFFFF8) + v6 + 33) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for UnbridgedInspectorModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 57) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 25) & 0xFFFFFFFFFFFFFFF8) + v9 + 33) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    a1[16] = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void destroy for UnbridgedInspectorModifier.SplitWrapper(uint64_t a1)
{
  v2 = *(a1 + 40);
}

uint64_t initializeWithCopy for UnbridgedInspectorModifier.SplitWrapper(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  v5 = *(a2 + 40);
  *(a1 + 40) = v5;
  v6 = v3;
  v7 = v4;
  v8 = v5;
  return a1;
}

uint64_t assignWithCopy for UnbridgedInspectorModifier.SplitWrapper(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  v6 = v5;

  v7 = *(a1 + 32);
  v8 = *(a2 + 32);
  *(a1 + 32) = v8;
  v9 = v8;

  v10 = *(a1 + 40);
  v11 = *(a2 + 40);
  *(a1 + 40) = v11;
  v12 = v11;

  return a1;
}

uint64_t assignWithTake for UnbridgedInspectorModifier.SplitWrapper(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);

  v4 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);

  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t type metadata completion function for UnbridgedInspectorModifier.SplitWrapperModifier()
{
  result = type metadata accessor for ModifiedContent();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for UnbridgedInspectorModifier.SplitWrapperModifier(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || v7 - ((-81 - v6) | v6) > 0x18)
  {
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  else
  {
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = *(a2 + 17);
    v12 = (a1 + 25) & 0xFFFFFFFFFFFFFFF8;
    v13 = (a2 + 25) & 0xFFFFFFFFFFFFFFF8;
    v14 = *v13;
    v15 = *(v13 + 16);
    *(v12 + 32) = *(v13 + 32);
    *v12 = v14;
    *(v12 + 16) = v15;
    *(v12 + 33) = *(v13 + 33);
    v16 = (v12 + 41) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v13 + 41) & 0xFFFFFFFFFFFFFFF8;
    v19 = *v17;
    v17 += 15;
    v18 = v19;
    *v16 = v19;
    v16 += 15;
    v20 = (v17 & 0xFFFFFFFFFFFFFFF8) + 8;
    v21 = *(v17 & 0xFFFFFFFFFFFFFFF8);
    *(v16 & 0xFFFFFFFFFFFFFFF8) = v21;
    v22 = (v16 & 0xFFFFFFFFFFFFFFF8) + 8;
    v23 = *(v5 + 16);

    v24 = v18;
    v25 = v21;
    v23(v22, v20, v4);
    *(v7 + v22) = *(v7 + v20);
  }

  return a1;
}

uint64_t destroy for UnbridgedInspectorModifier.SplitWrapperModifier(uint64_t a1, uint64_t a2)
{

  v4 = ((((a1 + 25) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8);

  v5 = ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(*(a2 + 16) - 8);
  v7 = *(v6 + 8);
  v8 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);

  return v7(v8);
}

uint64_t initializeWithCopy for UnbridgedInspectorModifier.SplitWrapperModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v5 = (a1 + 25) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 25) & 0xFFFFFFFFFFFFFFF8;
  v7 = *v6;
  v8 = *(v6 + 16);
  *(v5 + 32) = *(v6 + 32);
  *v5 = v7;
  *(v5 + 16) = v8;
  *(v5 + 33) = *(v6 + 33);
  v9 = ((v5 + 41) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v6 + 41) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  *v9 = *v10;
  v12 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  *v12 = *v13;
  v15 = *(a3 + 16);
  v16 = *(*(v15 - 8) + 16);
  v17 = *(v15 - 8) + 16;
  v18 = *(*(v15 - 8) + 80);
  v19 = (v12 + v18 + 8) & ~v18;
  v20 = (v13 + v18 + 8) & ~v18;

  v21 = v11;
  v22 = v14;
  v16(v19, v20, v15);
  *(*(v17 + 48) + v19) = *(*(v17 + 48) + v20);
  return a1;
}

uint64_t assignWithCopy for UnbridgedInspectorModifier.SplitWrapperModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v6 = (a1 + 25) & 0xFFFFFFFFFFFFFFF8;
  v7 = (a2 + 25) & 0xFFFFFFFFFFFFFFF8;
  v8 = *v7;
  v9 = *(v7 + 16);
  *(v6 + 32) = *(v7 + 32);
  *v6 = v8;
  *(v6 + 16) = v9;
  *(v6 + 33) = *(v7 + 33);
  v10 = ((v6 + 41) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v7 + 41) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *v10;
  *v10 = *v11;
  v14 = v12;

  v15 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = *v16;
  v18 = *v15;
  *v15 = *v16;
  v19 = v17;

  v20 = *(*(a3 + 16) - 8);
  v21 = v20 + 24;
  v22 = *(v20 + 80);
  v23 = (v15 + v22 + 8) & ~v22;
  v24 = (v16 + v22 + 8) & ~v22;
  (*(v20 + 24))(v23, v24);
  *(*(v21 + 40) + v23) = *(*(v21 + 40) + v24);
  return a1;
}

uint64_t initializeWithTake for UnbridgedInspectorModifier.SplitWrapperModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v4 = (a1 + 25) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 25) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  v7 = *(v5 + 16);
  *(v4 + 32) = *(v5 + 32);
  *v4 = v6;
  *(v4 + 16) = v7;
  *(v4 + 33) = *(v5 + 33);
  v8 = ((v4 + 41) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v5 + 41) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = *(*(a3 + 16) - 8);
  v13 = v12 + 32;
  v14 = *(v12 + 80);
  v15 = (v10 + v14 + 8) & ~v14;
  v16 = (v11 + v14 + 8) & ~v14;
  (*(v12 + 32))(v15, v16);
  *(*(v13 + 32) + v15) = *(*(v13 + 32) + v16);
  return a1;
}

uint64_t assignWithTake for UnbridgedInspectorModifier.SplitWrapperModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v6 = (a1 + 25) & 0xFFFFFFFFFFFFFFF8;
  v7 = (a2 + 25) & 0xFFFFFFFFFFFFFFF8;
  v8 = *v7;
  v9 = *(v7 + 16);
  *(v6 + 32) = *(v7 + 32);
  *v6 = v8;
  *(v6 + 16) = v9;
  *(v6 + 33) = *(v7 + 33);
  v10 = ((v6 + 41) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v7 + 41) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v10;
  *v10 = *v11;

  v13 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = *v13;
  *v13 = *v14;

  v16 = *(*(a3 + 16) - 8);
  v17 = v16 + 40;
  v18 = *(v16 + 80);
  v19 = (v13 + v18 + 8) & ~v18;
  v20 = (v14 + v18 + 8) & ~v18;
  (*(v16 + 40))(v19, v20);
  *(*(v17 + 24) + v19) = *(*(v17 + 24) + v20);
  return a1;
}

uint64_t getEnumTagSinglePayload for UnbridgedInspectorModifier.SplitWrapperModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 80) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((((((a1 + 25) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for UnbridgedInspectorModifier.SplitWrapperModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = v10 + ((v9 + 80) & ~v9) + 1;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v10 + ((v9 + 80) & ~v9) != -1)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_57:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v14)
  {
    goto LABEL_30;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = ((((((((a1 + 25) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9);
    if (v7 >= a2)
    {
      v24 = *(v6 + 56);

      v24(v20);
    }

    else
    {
      if (v10 <= 3)
      {
        v21 = ~(-1 << (8 * v10));
      }

      else
      {
        v21 = -1;
      }

      if (v10)
      {
        v22 = v21 & (~v7 + a2);
        if (v10 <= 3)
        {
          v23 = v10;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v10);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    a1[16] = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

unint64_t lazy protocol witness table accessor for type PreparedInspectorModifier and conformance PreparedInspectorModifier()
{
  result = lazy protocol witness table cache variable for type PreparedInspectorModifier and conformance PreparedInspectorModifier;
  if (!lazy protocol witness table cache variable for type PreparedInspectorModifier and conformance PreparedInspectorModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreparedInspectorModifier and conformance PreparedInspectorModifier);
  }

  return result;
}

uint64_t outlined destroy of UIKitNavigationController?(uint64_t a1)
{
  type metadata accessor for UIKitNavigationController?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for UIKitNavigationController?()
{
  if (!lazy cache variable for type metadata for UIKitNavigationController?)
  {
    type metadata accessor for UIKitNavigationController();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIKitNavigationController?);
    }
  }
}

uint64_t outlined init with copy of UIKitNavigationController?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIKitNavigationController?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>, &type metadata for PresentationOptionsPreferenceKey, &protocol witness table for PresentationOptionsPreferenceKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in UnbridgedInspectorModifier.SplitWrapperModifier.modifiedContent(content:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnbridgedInspectorModifier.SplitWrapperModifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #1 in UnbridgedInspectorModifier.SplitWrapperModifier.modifiedContent(content:)(v4, a1);
}

uint64_t type metadata completion function for ContainerViewControllerRepresentable()
{
  result = type metadata accessor for ModifiedContent();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ContainerViewControllerRepresentable(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-25 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    v10 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + 9) & 0xFFFFFFFFFFFFFFF8);
    v12 = *v11;
    *v10 = *v11;
    v13 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
    v14 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    v15 = *v14;
    *v13 = *v14;
    v16 = *(v5 + 16);
    v17 = v12;
    v18 = v15;
    v16(v13 + 1, v14 + 1, v4);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return v3;
}

uint64_t destroy for ContainerViewControllerRepresentable(uint64_t a1, uint64_t a2)
{
  v3 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);

  v4 = ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);

  return v6(v7);
}

_BYTE *initializeWithCopy for ContainerViewControllerRepresentable(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = ((a2 + 9) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v4;
  v7 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  *v7 = *v8;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  v13 = *(v11 + 80);
  v14 = v7 + v13 + 8;
  v15 = v8 + v13 + 8;
  v16 = v5;
  v17 = v9;
  v12(v14 & ~v13, v15 & ~v13, v10);
  return a1;
}

_BYTE *assignWithCopy for ContainerViewControllerRepresentable(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v5 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 9) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *v5;
  *v5 = *v6;
  v9 = v7;

  v10 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *v10;
  *v10 = *v11;
  v14 = v12;

  v15 = *(*(a3 + 16) - 8);
  (*(v15 + 24))((v10 + *(v15 + 80) + 8) & ~*(v15 + 80), (v11 + *(v15 + 80) + 8) & ~*(v15 + 80));
  return a1;
}

_BYTE *initializeWithTake for ContainerViewControllerRepresentable(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = ((a2 + 9) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v4;
  v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  (*(v8 + 32))((v6 + *(v8 + 80) + 8) & ~*(v8 + 80), (v7 + *(v8 + 80) + 8) & ~*(v8 + 80));
  return a1;
}

_BYTE *assignWithTake for ContainerViewControllerRepresentable(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v5 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 9) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v5;
  *v5 = *v6;

  v8 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v8;
  *v8 = *v9;

  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 40))((v8 + *(v11 + 80) + 8) & ~*(v11 + 80), (v9 + *(v11 + 80) + 8) & ~*(v11 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for ContainerViewControllerRepresentable(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for ContainerViewControllerRepresentable(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = ((v9 + 24) & ~v9) + v10;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_58:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_58;
            }
          }

          goto LABEL_55;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_58;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_58;
      }
    }

LABEL_55:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v14)
  {
    goto LABEL_30;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  v20 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v22 = ((((v20 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9);
    if (v7 >= a2)
    {
      v26 = *(v6 + 56);

      v26((((v20 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9);
    }

    else
    {
      if (v10 <= 3)
      {
        v23 = ~(-1 << (8 * v10));
      }

      else
      {
        v23 = -1;
      }

      if (v10)
      {
        v24 = v23 & (~v7 + a2);
        if (v10 <= 3)
        {
          v25 = v10;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v10);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v21 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v21 = a2 - 1;
    }

    *v20 = v21;
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<PreparedInspectorModifier>, StyleContextWriter<InspectorStyleContext>>, NavigationBarDefaults>, _BackgroundStyleModifier<BackgroundStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<PreparedInspectorModifier>, StyleContextWriter<InspectorStyleContext>>, NavigationBarDefaults>, _BackgroundStyleModifier<BackgroundStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<PreparedInspectorModifier>, StyleContextWriter<InspectorStyleContext>>, NavigationBarDefaults>();
    type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<BackgroundStyle>, MEMORY[0x1E697E610], MEMORY[0x1E697E608], MEMORY[0x1E6980460]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<PreparedInspectorModifier>, StyleContextWriter<InspectorStyleContext>>, NavigationBarDefaults>, _BackgroundStyleModifier<BackgroundStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<PreparedInspectorModifier>, StyleContextWriter<InspectorStyleContext>>, NavigationBarDefaults>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<PreparedInspectorModifier>, StyleContextWriter<InspectorStyleContext>>, NavigationBarDefaults>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<PreparedInspectorModifier>, StyleContextWriter<InspectorStyleContext>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<PreparedInspectorModifier>, StyleContextWriter<InspectorStyleContext>>, NavigationBarDefaults>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<PreparedInspectorModifier>, StyleContextWriter<InspectorStyleContext>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<PreparedInspectorModifier>, StyleContextWriter<InspectorStyleContext>>)
  {
    type metadata accessor for _ViewModifier_Content<PreparedInspectorModifier>();
    type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for StyleContextWriter<InspectorStyleContext>, MEMORY[0x1E697FC48], MEMORY[0x1E697FC40], MEMORY[0x1E697F4C8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<PreparedInspectorModifier>, StyleContextWriter<InspectorStyleContext>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<PreparedInspectorModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<PreparedInspectorModifier>)
  {
    lazy protocol witness table accessor for type PreparedInspectorModifier and conformance PreparedInspectorModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<PreparedInspectorModifier>);
    }
  }
}

void type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<PreparedInspectorModifier>, StyleContextWriter<InspectorStyleContext>>, NavigationBarDefaults> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<PreparedInspectorModifier>, StyleContextWriter<InspectorStyleContext>>, NavigationBarDefaults> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<PreparedInspectorModifier>, StyleContextWriter<InspectorStyleContext>>, NavigationBarDefaults> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<PreparedInspectorModifier>, StyleContextWriter<InspectorStyleContext>>, NavigationBarDefaults>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<PreparedInspectorModifier>, StyleContextWriter<InspectorStyleContext>>, NavigationBarDefaults>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PreparedInspectorModifier>, StyleContextWriter<InspectorStyleContext>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<PreparedInspectorModifier>, StyleContextWriter<InspectorStyleContext>>, lazy protocol witness table accessor for type _ViewModifier_Content<PreparedInspectorModifier> and conformance _ViewModifier_Content<A>, lazy protocol witness table accessor for type StyleContextWriter<InspectorStyleContext> and conformance StyleContextWriter<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<PreparedInspectorModifier>, StyleContextWriter<InspectorStyleContext>>, NavigationBarDefaults> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<PreparedInspectorModifier>, StyleContextWriter<InspectorStyleContext>>, NavigationBarDefaults>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<PreparedInspectorModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<PreparedInspectorModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<PreparedInspectorModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<PreparedInspectorModifier>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<PreparedInspectorModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<InspectorStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<InspectorStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<InspectorStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for StyleContextWriter<InspectorStyleContext>, MEMORY[0x1E697FC48], MEMORY[0x1E697FC40], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<InspectorStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _BackgroundStyleModifier<BackgroundStyle> and conformance _BackgroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _BackgroundStyleModifier<BackgroundStyle> and conformance _BackgroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _BackgroundStyleModifier<BackgroundStyle> and conformance _BackgroundStyleModifier<A>)
  {
    type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<BackgroundStyle>, MEMORY[0x1E697E610], MEMORY[0x1E697E608], MEMORY[0x1E6980460]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _BackgroundStyleModifier<BackgroundStyle> and conformance _BackgroundStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationBarDefaults.DefaultNavigationBarVisibility and conformance NavigationBarDefaults.DefaultNavigationBarVisibility()
{
  result = lazy protocol witness table cache variable for type NavigationBarDefaults.DefaultNavigationBarVisibility and conformance NavigationBarDefaults.DefaultNavigationBarVisibility;
  if (!lazy protocol witness table cache variable for type NavigationBarDefaults.DefaultNavigationBarVisibility and conformance NavigationBarDefaults.DefaultNavigationBarVisibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationBarDefaults.DefaultNavigationBarVisibility and conformance NavigationBarDefaults.DefaultNavigationBarVisibility);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationBarDefaults.DefaultTitle and conformance NavigationBarDefaults.DefaultTitle()
{
  result = lazy protocol witness table cache variable for type NavigationBarDefaults.DefaultTitle and conformance NavigationBarDefaults.DefaultTitle;
  if (!lazy protocol witness table cache variable for type NavigationBarDefaults.DefaultTitle and conformance NavigationBarDefaults.DefaultTitle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationBarDefaults.DefaultTitle and conformance NavigationBarDefaults.DefaultTitle);
  }

  return result;
}

uint64_t type metadata completion function for ComponentGestureRecognizerSource()
{
  type metadata accessor for ComponentGestureRecognizerSource.RecognitionStream();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *static ViewResponderGestureContainerFactory.makeComponentGestureRecognizerSource<A>(_:)()
{
  type metadata accessor for ComponentGestureRecognizerSource();
  swift_allocObject();

  v0 = specialized ComponentGestureRecognizerSource.init(_:)();

  swift_getWitnessTable();
  return v0;
}

char *protocol witness for static GestureContainerFactory.makeGestureContainer(responder:) in conformance ViewResponderGestureContainerFactory(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(type metadata accessor for ViewResponderGestureContainer());

  return ViewResponderGestureContainer.init(responder:)(v4, a2);
}

uint64_t ComponentGestureRecognizerSource.RecognitionStream.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v23 = a1;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Error();
  v4 = type metadata accessor for AsyncThrowingStream.Continuation.BufferingPolicy();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for AsyncThrowingStream.Continuation();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = a2;
  v22 = type metadata accessor for ComponentGestureRecognizerSource.RecognitionStream();
  v16 = *(v22 + 40);
  type metadata accessor for [GestureRelation](0, &lazy cache variable for type metadata for MutableBox<Task<(), Never>?>, type metadata accessor for Task<(), Never>?, MEMORY[0x1E697DAC0]);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = v24;
  *(v24 + v16) = v17;
  v19 = *(v7 - 8);
  (*(v19 + 56))(v14, 1, 1, v7);
  swift_checkMetadataState();
  v25 = v23;
  v26 = v15;
  v27 = v14;
  default argument 1 of AsyncThrowingStream.init<>(_:bufferingPolicy:_:)(v6);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
  (*(v9 + 16))(v11, v14, v8);
  result = (*(v19 + 48))(v11, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v19 + 32))(v18 + *(v22 + 36), v11, v7);
    return (*(v9 + 8))(v14, v8);
  }

  return result;
}

uint64_t closure #1 in ComponentGestureRecognizerSource.RecognitionStream.init()(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Error();
  v4 = type metadata accessor for AsyncThrowingStream.Continuation();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(a2, v5);
  v8 = *(v4 - 8);
  (*(v8 + 16))(a2, a1, v4);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, v4);
}

uint64_t default argument 1 of AsyncThrowingStream.init<>(_:bufferingPolicy:_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8790];
  type metadata accessor for Error();
  v3 = type metadata accessor for AsyncThrowingStream.Continuation.BufferingPolicy();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}