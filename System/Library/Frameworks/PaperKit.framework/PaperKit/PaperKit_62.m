uint64_t closure #2 in static LinkLayout.loadItemProvider(_:canvasFrame:frame:rotation:anchor:offset:assetManager:dragItem:completion:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, uint64_t a7, void (*a8)(_BYTE *), uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, char a14)
{
  v66 = *&a12;
  v67 = a13;
  v65 = a11;
  v70 = a9;
  v71 = a8;
  v21 = *a10;
  v22 = *(a10 + 8);
  v23 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v69 = &v64[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = type metadata accessor for Link(0);
  MEMORY[0x1EEE9AC00](v68);
  v26 = &v64[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v64[-v28];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGSgMd);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v64[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v64[-v34];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v64[-v37];
  v39 = type metadata accessor for URL();
  v40 = *(v39 - 8);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v64[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*&a1 == 0.0)
  {
    (*(v40 + 56))(v38, 1, 1, v39, v41);
    goto LABEL_6;
  }

  v72 = *&a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSItemProviderReading_pMd);
  v44 = swift_dynamicCast();
  (*(v40 + 56))(v38, v44 ^ 1u, 1, v39);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
LABEL_6:
    outlined destroy of StocksKitCurrencyCache.Provider?(v38, &_s10Foundation3URLVSgMd);
    goto LABEL_7;
  }

  (*(v40 + 32))(v43, v38, v39);
  v45 = specialized static Link.synapseDataRepresentation(from:)();
  if (v46 >> 60 == 15)
  {
    (*(v40 + 8))(v43, v39);
LABEL_7:
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd);
    (*(*(v47 - 8) + 56))(v32, 1, 1, v47);
    v71(v32);
    return outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence7CapsuleVy8PaperKit4LinkVGSgMd);
  }

  v49 = (*&v21 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  v50 = (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  if (v49 && v50)
  {
    v51 = v21;
  }

  else
  {
    v51 = 0.0;
  }

  if (v49 && v50)
  {
    v52 = v22;
  }

  else
  {
    v52 = 0.0;
  }

  if (*(a10 + 32))
  {
    x = 0.0;
  }

  else
  {
    x = v51;
  }

  if (*(a10 + 32))
  {
    y = 0.0;
  }

  else
  {
    y = v52;
  }

  if (v65 == 9)
  {
    height = 72.0;
    width = 327.0;
  }

  else
  {
    LOBYTE(v72) = v65;
    v57 = v45;
    v73.origin.x = a2;
    v73.origin.y = a3;
    v73.size.width = a4;
    v73.size.height = a5;
    v58 = v46;
    v74 = CGRect.position(in:anchor:)(v73, &v72);
    v46 = v58;
    v45 = v57;
    x = v74.origin.x;
    y = v74.origin.y;
    width = v74.size.width;
    height = v74.size.height;
  }

  if (a14)
  {
    v59 = x;
  }

  else
  {
    v59 = x + v66;
  }

  if (a14)
  {
    v60 = y;
  }

  else
  {
    v60 = y + *&v67;
  }

  v61 = v45;
  v62 = v46;
  outlined copy of Data._Representation(v45, v46);
  v67 = v61;
  v68 = v62;
  Link.init(synapseDataRepresentation:frame:)(v61, v62, v29, v59, v60, width, height);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  if (v72 != a6)
  {
    v72 = a6;
    CRRegister.wrappedValue.setter();
  }

  outlined init with copy of Link(v29, v26);
  static CRKeyPath.unique.getter();
  lazy protocol witness table accessor for type Link and conformance Link();
  Capsule.init(_:id:)();
  outlined destroy of Link(v29);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd);
  (*(*(v63 - 8) + 56))(v35, 0, 1, v63);
  v71(v35);
  outlined consume of Data?(v67, v68);
  outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s9Coherence7CapsuleVy8PaperKit4LinkVGSgMd);
  return (*(v40 + 8))(v43, v39);
}

uint64_t closure #1 in static LinkLayout.addLinkItem(_:in:completion:)(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x700);
  v6 = type metadata accessor for Link(0);
  v7 = lazy protocol witness table accessor for type Link and conformance Link();
  result = v5(a2, 0, 0, 0, v6, v7, &protocol witness table for Link);
  if (a3)
  {
    return a3(result);
  }

  return result;
}

uint64_t specialized static LinkLayout.canHandle(itemProvider:)(void *a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 hasItemConformingToTypeIdentifier_])
  {
    return 1;
  }

  type metadata accessor for SYContentItem();
  if ([a1 canLoadObjectOfClass_])
  {
    return 1;
  }

  static UTType.url.getter();
  v8 = UTType.identifier.getter();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v11 = MEMORY[0x1DA6CCED0](v8, v10);

  v12 = [a1 hasItemConformingToTypeIdentifier_];

  return v12;
}

unint64_t lazy protocol witness table accessor for type Link and conformance Link()
{
  result = lazy protocol witness table cache variable for type Link and conformance Link;
  if (!lazy protocol witness table cache variable for type Link and conformance Link)
  {
    type metadata accessor for Link(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Link and conformance Link);
  }

  return result;
}

uint64_t type metadata accessor for LinkLayout()
{
  result = type metadata singleton initialization cache for LinkLayout;
  if (!type metadata singleton initialization cache for LinkLayout)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Ref<Link> and conformance Ref<A>()
{
  result = lazy protocol witness table cache variable for type Ref<Link> and conformance Ref<A>;
  if (!lazy protocol witness table cache variable for type Ref<Link> and conformance Ref<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence3RefVy8PaperKit4LinkVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Ref<Link> and conformance Ref<A>);
  }

  return result;
}

uint64_t GenerativeModelAvailabilityObserver.update(to:for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for GenerativeModelsAvailability();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GenerativeModelAvailabilityObserver.update(to:for:), 0, 0);
}

uint64_t GenerativeModelAvailabilityObserver.update(to:for:)()
{
  v27 = v0;
  v1 = specialized GenerativeModelAvailabilityObserver.statusFromAvailability(_:)(v0[2]);
  v3 = v2;
  v5 = v4;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];
  v9 = v0[3];
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, generativeLogger);
  (*(v6 + 16))(v7, v9, v8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[6];
  v15 = v0[7];
  v16 = v0[5];
  if (v13)
  {
    v17 = swift_slowAlloc();
    v25 = v1;
    v26 = swift_slowAlloc();
    v18 = v26;
    *v17 = 136315394;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v5, &v26);

    *(v17 + 4) = v19;
    *(v17 + 12) = 1024;
    v20 = GenerativeModelsAvailability.shouldShowEnrollmentScreen()();
    (*(v14 + 8))(v15, v16);
    *(v17 + 14) = v20;
    _os_log_impl(&dword_1D38C4000, v11, v12, "Generation Model Availability changed to %s for this device. Should show enrollment screen: %{BOOL}d", v17, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v21 = v18;
    v1 = v25;
    MEMORY[0x1DA6D0660](v21, -1, -1);
    MEMORY[0x1DA6D0660](v17, -1, -1);
  }

  else
  {
    (*(v14 + 8))(v0[7], v0[5]);
  }

  *(v0[4] + 16) = v1;
  v22 = [objc_opt_self() sharedInstance];
  [v22 handleAvailabilityChange_];

  v23 = v0[1];

  return v23();
}

uint64_t GenerativeModelAvailabilityObserver.__deallocating_deinit()
{
  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + OBJC_IVAR____TtC8PaperKitP33_54D3ACA847AFA52EC5CA5D25834A254535GenerativeModelAvailabilityObserver__availability, &_s16GenerativeModels0aB12AvailabilityVSgMd);

  return swift_deallocClassInstance();
}

void type metadata completion function for GenerativeModelAvailabilityObserver()
{
  type metadata accessor for GenerativeModelsAvailability?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for GenerativeModelsAvailability?()
{
  if (!lazy cache variable for type metadata for GenerativeModelsAvailability?)
  {
    type metadata accessor for GenerativeModelsAvailability();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GenerativeModelsAvailability?);
    }
  }
}

uint64_t EnrollmentViewController.ViewModel.options.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  lazy protocol witness table accessor for type EnrollmentViewController.ViewModel and conformance EnrollmentViewController.ViewModel(&lazy protocol witness table cache variable for type EnrollmentViewController.ViewModel and conformance EnrollmentViewController.ViewModel, type metadata accessor for EnrollmentViewController.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtCC8PaperKitP33_54D3ACA847AFA52EC5CA5D25834A254524EnrollmentViewController9ViewModel__options;
  swift_beginAccess();
  v4 = type metadata accessor for EnrollmentViewOptions();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t key path getter for EnrollmentViewController.ViewModel.options : EnrollmentViewController.ViewModel@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type EnrollmentViewController.ViewModel and conformance EnrollmentViewController.ViewModel(&lazy protocol witness table cache variable for type EnrollmentViewController.ViewModel and conformance EnrollmentViewController.ViewModel, type metadata accessor for EnrollmentViewController.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCC8PaperKitP33_54D3ACA847AFA52EC5CA5D25834A254524EnrollmentViewController9ViewModel__options;
  swift_beginAccess();
  v5 = type metadata accessor for EnrollmentViewOptions();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for EnrollmentViewController.ViewModel.options : EnrollmentViewController.ViewModel(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for EnrollmentViewOptions();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  v14 = v9;
  lazy protocol witness table accessor for type EnrollmentViewController.ViewModel and conformance EnrollmentViewController.ViewModel(&lazy protocol witness table cache variable for type EnrollmentViewController.ViewModel and conformance EnrollmentViewController.ViewModel, type metadata accessor for EnrollmentViewController.ViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return (*(v5 + 8))(v8, v4);
}

uint64_t closure #1 in EnrollmentViewController.ViewModel.options.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCC8PaperKitP33_54D3ACA847AFA52EC5CA5D25834A254524EnrollmentViewController9ViewModel__options;
  swift_beginAccess();
  v5 = type metadata accessor for EnrollmentViewOptions();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t EnrollmentViewController.ViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC8PaperKitP33_54D3ACA847AFA52EC5CA5D25834A254524EnrollmentViewController9ViewModel__options;
  v2 = type metadata accessor for EnrollmentViewOptions();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC8PaperKitP33_54D3ACA847AFA52EC5CA5D25834A254524EnrollmentViewController9ViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t EnrollmentViewController.EnrollmentView.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnrollmentViewOptions();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = a1;
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy8PaperKit24EnrollmentViewController33_54D3ACA847AFA52EC5CA5D25834A2545LLC0G5ModelCGMd);
  State.wrappedValue.getter();
  v8 = v11[3];
  swift_getKeyPath();
  v11[0] = v8;
  lazy protocol witness table accessor for type EnrollmentViewController.ViewModel and conformance EnrollmentViewController.ViewModel(&lazy protocol witness table cache variable for type EnrollmentViewController.ViewModel and conformance EnrollmentViewController.ViewModel, type metadata accessor for EnrollmentViewController.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtCC8PaperKitP33_54D3ACA847AFA52EC5CA5D25834A254524EnrollmentViewController9ViewModel__options;
  swift_beginAccess();
  (*(v5 + 16))(v7, v8 + v9, v4);

  return EnrollmentView.init(useCaseIdentifier:options:)();
}

uint64_t EnrollmentViewController.init()()
{
  v1 = type metadata accessor for EnrollmentViewOptions();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + direct field offset for EnrollmentViewController.viewModel) = 0;
  type metadata accessor for EnrollmentViewController.ViewModel(0);
  v5 = swift_allocObject();
  EnrollmentViewOptions.init(onDismissal:)();
  (*(v2 + 32))(v5 + OBJC_IVAR____TtCC8PaperKitP33_54D3ACA847AFA52EC5CA5D25834A254524EnrollmentViewController9ViewModel__options, v4, v1);
  ObservationRegistrar.init()();
  v8[1] = v5;

  State.init(wrappedValue:)();
  v6 = UIHostingController.init(rootView:)();
  *(v6 + direct field offset for EnrollmentViewController.viewModel) = v5;

  return v6;
}

void @objc EnrollmentViewController.init(coder:)(uint64_t a1)
{
  *(a1 + direct field offset for EnrollmentViewController.viewModel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata completion function for EnrollmentViewController.ViewModel()
{
  result = type metadata accessor for EnrollmentViewOptions();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
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

void closure #1 in EnrollmentContainerViewController.init(enrollmentViewController:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void EnrollmentContainerViewController.viewDidLoad()()
{
  v43.receiver = v0;
  v43.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v43, sel_viewDidLoad);
  v1 = OBJC_IVAR____TtC8PaperKitP33_54D3ACA847AFA52EC5CA5D25834A254533EnrollmentContainerViewController_enrollmentViewController;
  [v0 addChildViewController_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  v4 = [*&v0[v1] view];
  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v3 addSubview_];

  v6 = [*&v0[v1] view];
  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D405B630;
  v9 = [*&v0[v1] view];
  if (!v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v9;
  v11 = [v9 topAnchor];

  v12 = [v0 view];
  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12;
  v14 = [v12 topAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v8 + 32) = v15;
  v16 = [*&v0[v1] view];
  if (!v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v16;
  v18 = [v16 leadingAnchor];

  v19 = [v0 view];
  if (!v19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = v19;
  v21 = [v19 leadingAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v8 + 40) = v22;
  v23 = [*&v0[v1] view];
  if (!v23)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = v23;
  v25 = [v23 trailingAnchor];

  v26 = [v0 view];
  if (!v26)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v27 = v26;
  v28 = [v26 trailingAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v8 + 48) = v29;
  v30 = [*&v0[v1] view];
  if (!v30)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v31 = v30;
  v32 = [v30 bottomAnchor];

  v33 = [v0 view];
  if (!v33)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v34 = v33;
  v35 = objc_opt_self();
  v36 = [v34 bottomAnchor];

  v37 = [v32 constraintEqualToAnchor_];
  *(v8 + 56) = v37;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v35 activateConstraints_];

  [*&v0[v1] didMoveToParentViewController_];
  v39 = [objc_allocWithZone(MEMORY[0x1E69DCD58]) initWithDelegate_];
  v40 = [v0 view];
  if (v40)
  {
    v41 = v40;
    [v40 addInteraction_];

    v42 = [objc_opt_self() defaultCenter];
    [v42 addObserver:v0 selector:sel_toolPickerWillShow_ name:*MEMORY[0x1E6978600] object:0];

    return;
  }

LABEL_25:
  __break(1u);
}

void EnrollmentContainerViewController.viewDidAppear(_:)(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidAppear_, a1 & 1);
  v3 = [v1 viewIfLoaded];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 window];

    if (v5)
    {
      v6 = [objc_opt_self() activeToolPickerForWindow_];

      if (v6)
      {
        if ([v6 isVisible])
        {
          [v1 becomeFirstResponder];
        }
      }
    }
  }
}

void EnrollmentContainerViewController.viewDidDisappear(_:)(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidDisappear_, a1 & 1);
  if ([v1 isBeingDismissed])
  {
    v3 = [v1 viewIfLoaded];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 window];

      if (v5)
      {
        v6 = [objc_opt_self() activeToolPickerForWindow_];

        if (v6)
        {
          [v6 setKeyboardSceneDelegateVisibilityObserver_];
        }
      }
    }
  }
}

void EnrollmentContainerViewController.toolPickerWillShow(_:)()
{
  v1 = v0;
  Notification.object.getter();
  if (v10)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKToolPicker);
    if (swift_dynamicCast())
    {
      v2 = v8;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_sypSgMd);
    v2 = 0;
  }

  v3 = [v0 viewIfLoaded];
  if (v3 && (v4 = v3, v5 = [v3 window], v4, v5))
  {
    v6 = [objc_opt_self() activeToolPickerForWindow_];

    if (!v2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    if (!v2)
    {
LABEL_9:
      if (v6)
      {

        return;
      }

LABEL_14:
      [v1 dismissViewControllerAnimated:1 completion:0];
      return;
    }
  }

  if (v6)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKToolPicker);
    v7 = static NSObject.== infix(_:_:)();

    if ((v7 & 1) == 0)
    {
      return;
    }

    goto LABEL_14;
  }
}

char *static PKGenerationModelAvailabilityController.enrollmentScreenViewController()()
{
  v0 = type metadata accessor for EnrollmentViewOptions();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = 0;
  if ([swift_getObjCClassFromMetadata() shouldShowEnrollmentScreen])
  {
    v5 = objc_allocWithZone(type metadata accessor for EnrollmentViewController(0));
    v6 = EnrollmentViewController.init()();
    v7 = type metadata accessor for EnrollmentContainerViewController();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC8PaperKitP33_54D3ACA847AFA52EC5CA5D25834A254533EnrollmentContainerViewController_enrollmentViewController] = v6;
    v21.receiver = v8;
    v21.super_class = v7;
    v9 = v6;
    v4 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
    v10 = *&v4[OBJC_IVAR____TtC8PaperKitP33_54D3ACA847AFA52EC5CA5D25834A254533EnrollmentContainerViewController_enrollmentViewController];
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = *&v10[direct field offset for EnrollmentViewController.viewModel];
    if (v12)
    {
      v13 = swift_allocObject();
      v19 = v9;
      *(v13 + 16) = partial apply for closure #1 in EnrollmentContainerViewController.init(enrollmentViewController:);
      *(v13 + 24) = v11;
      v17 = v4;
      v18 = v10;
      swift_retain_n();

      EnrollmentViewOptions.init(onDismissal:)();
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v16 - 2) = v12;
      *(&v16 - 1) = v3;
      v20 = v12;
      lazy protocol witness table accessor for type EnrollmentViewController.ViewModel and conformance EnrollmentViewController.ViewModel(&lazy protocol witness table cache variable for type EnrollmentViewController.ViewModel and conformance EnrollmentViewController.ViewModel, type metadata accessor for EnrollmentViewController.ViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      (*(v1 + 8))(v3, v0);
    }

    else
    {
    }
  }

  return v4;
}

char *@objc static PKGenerationModelAvailabilityController.enrollmentScreenViewController()()
{
  swift_getObjCClassMetadata();
  v0 = static PKGenerationModelAvailabilityController.enrollmentScreenViewController()();

  return v0;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  outlined init with copy of Date?(a3, v23 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_sScPSgMd);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    outlined destroy of StocksKitCurrencyCache.Provider?(a3, &_sScPSgMd);

    return v21;
  }

LABEL_8:
  outlined destroy of StocksKitCurrencyCache.Provider?(a3, &_sScPSgMd);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_39(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v4);
}

uint64_t outlined assign with take of GenerativeModelsAvailability?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels0aB12AvailabilityVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Capsule<>.indexableTextContent.getter()
{
  v1 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.root.getter();
  v4 = specialized ContainerCanvasElement.drawingIndexableTextContent<A>(in:)(v0);
  v8 = v0;
  v5 = specialized Sequence.flatMap<A>(_:)(partial apply for specialized closure #1 in ContainerCanvasElement.subelementsIndexableTextContent<A>(in:), v7);
  v9 = v4;
  specialized Array.append<A>(contentsOf:)(v5);
  _s8PaperKit0A0VWOhTm_6(v3, type metadata accessor for Paper);
  return v9;
}

uint64_t ContainerCanvasElement.indexableTextContent<A>(in:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = ContainerCanvasElement.drawingIndexableTextContent<A>(in:)(a1, a2, a3, a4, a5);
  v11 = ContainerCanvasElement.subelementsIndexableTextContent<A>(in:)(a1, a2, a3, a4, a5);
  specialized Array.append<A>(contentsOf:)(v11);
  return v10;
}

uint64_t protocol witness for PaperPage.search<A>(query:fullWordsOnly:caseMatchingOnly:in:) in conformance PaperDocumentPage(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = dispatch thunk of PaperRenderable.renderedImage(in:);

  return ContainerCanvasElement.search<A>(query:fullWordsOnly:caseMatchingOnly:in:)(a1, a2, a3, a4, a5, a8, a6, &protocol witness table for PaperDocumentPage);
}

uint64_t ContainerCanvasElement.search<A>(query:fullWordsOnly:caseMatchingOnly:in:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = dispatch thunk of PaperRenderable.renderedImage(in:);

  return ContainerCanvasElement.searchDrawing<A>(query:fullWordsOnly:caseMatchingOnly:in:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

PaperKit::IndexableTextContent __swiftcall IndexableTextContent.init(_:)(Swift::String a1)
{
  *v1 = a1;
  v1[1] = a1;

  result.presentableText._object = v5;
  result.presentableText._countAndFlagsBits = v4;
  result.indexableText._object = v3;
  result.indexableText._countAndFlagsBits = v2;
  return result;
}

uint64_t protocol witness for PaperPage.search<A>(query:fullWordsOnly:caseMatchingOnly:in:) in conformance Image(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = dispatch thunk of PaperRenderable.renderedImage(in:);

  return ContainerCanvasElement.search<A>(query:fullWordsOnly:caseMatchingOnly:in:)(a1, a2, a3, a4, a5, a8, a6, &protocol witness table for Image);
}

uint64_t protocol witness for PaperPage.search<A>(query:fullWordsOnly:caseMatchingOnly:in:) in conformance Paper(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:);

  return ContainerCanvasElement.search<A>(query:fullWordsOnly:caseMatchingOnly:in:)(a1, a2, a3, a4, a5, a8, a6, &protocol witness table for Paper);
}

uint64_t Capsule<>.search(query:fullWordsOnly:caseMatchingOnly:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 72) = a2;
  *(v5 + 80) = v4;
  *(v5 + 277) = a4;
  *(v5 + 276) = a3;
  *(v5 + 64) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMd);
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd);
  *(v5 + 112) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMd);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  *(v5 + 168) = v8;
  *(v5 + 176) = *(v8 - 8);
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = type metadata accessor for PaperDocument(0);
  *(v5 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVy9Coherence12CROrderedSetVyAC14SharedTagged_3Vy8PaperKit0gH4PageVGGGMd);
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMd);
  *(v5 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Capsule<>.search(query:fullWordsOnly:caseMatchingOnly:), 0, 0);
}

uint64_t Capsule<>.search(query:fullWordsOnly:caseMatchingOnly:)()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  Capsule.root.getter();
  (*(v6 + 16))(v3, v4, v7);
  _s8PaperKit0A0VWOhTm_6(v4, type metadata accessor for PaperDocument);
  (*(v6 + 32))(v5, v3, v7);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  dispatch thunk of Sequence.makeIterator()();
  v8 = *(v2 + 36);
  *(v0 + 272) = v8;
  *(v1 + v8) = 0;
  *(v0 + 232) = MEMORY[0x1E69E7CC0];
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  v11 = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd);
  dispatch thunk of IteratorProtocol.next()();
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v12 = *(v0 + 152);
    v13 = *(v0 + 88);
    v14 = *(v0 + 96);
    outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 112), &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd);
    (*(v14 + 56))(v12, 1, 1, v13);
    v15 = 0;
  }

  else
  {
    v16 = *(v0 + 144);
    v17 = *(v0 + 120);
    v18 = *(v0 + 104);
    v19 = *(v0 + 88);
    v20 = *(*(v0 + 128) + 32);
    v20(v16, *(v0 + 112), v17);
    v21 = *(v19 + 48);
    *v18 = 0;
    v20(v18 + v21, v16, v17);
    v22 = *(v0 + 152);
    v24 = *(v0 + 96);
    v23 = *(v0 + 104);
    v25 = *(v0 + 88);
    v15 = 1;
    *(*(v0 + 224) + *(v0 + 272)) = 1;
    outlined init with take of Range<AttributedString.Index>(v23, v22, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMd);
    (*(v24 + 56))(v22, 0, 1, v25);
  }

  *(v0 + 240) = v15;
  v26 = *(v0 + 160);
  v27 = *(v0 + 88);
  v28 = *(v0 + 96);
  outlined init with take of Range<AttributedString.Index>(*(v0 + 152), v26, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMd);
  if ((*(v28 + 48))(v26, 1, v27) != 1)
  {
    v32 = *(v0 + 160);
    v33 = *(v0 + 128);
    v34 = *(v0 + 136);
    v35 = *(v0 + 120);
    v36 = *(v0 + 88);
    *(v0 + 248) = *v32;
    (*(v33 + 32))(v34, &v32[*(v36 + 48)], v35);
    _s8PaperKit0A8DocumentVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
    SharedTagged_3.subscript.getter();
    v37 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v40 = *(v37 + 216) + **(v37 + 216);
    v38 = swift_task_alloc();
    *(v0 + 256) = v38;
    *v38 = v0;
    v38[1] = Capsule<>.search(query:fullWordsOnly:caseMatchingOnly:);

    __asm { BRAA            X8, X16 }
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 224), &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMd);
  v29 = specialized _arrayForceCast<A, B>(_:)(MEMORY[0x1E69E7CC0]);

  v30 = *(v0 + 8);

  return v30(v29);
}

{
  v1 = *(v0 + 264);
  v2 = *(v1 + 16);
  if (v2)
  {
    *(v0 + 56) = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = *(v0 + 56);
    v4 = v3[2];
    v5 = 5 * v4;
    v6 = (v1 + 48);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      *(v0 + 56) = v3;
      v9 = v3[3];
      v10 = v4 + 1;
      if (v4 >= v9 >> 1)
      {
        v51 = v8;
        v52 = v7;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v4 + 1, 1);
        v8 = v51;
        v7 = v52;
        v3 = *(v0 + 56);
      }

      v11 = *(v0 + 248);
      v3[2] = v10;
      v12 = &v3[v5];
      v12[4] = v11;
      *(v12 + 5) = v7;
      *(v12 + 7) = v8;
      v5 += 5;
      v6 += 2;
      v4 = v10;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  result = *(v0 + 232);
  v14 = v3[2];
  v15 = *(result + 16);
  v16 = v15 + v14;
  if (__OFADD__(v15, v14))
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v0 + 232);
  if (result && v16 <= *(v17 + 24) >> 1)
  {
    if (v3[2])
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  if (v15 <= v16)
  {
    v22 = v15 + v14;
  }

  else
  {
    v22 = v15;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v22, 1, *(v0 + 232));
  v17 = result;
  if (!v3[2])
  {
LABEL_20:

    if (!v14)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_12:
  v18 = *(v17 + 16);
  if ((*(v17 + 24) >> 1) - v18 < v14)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  memcpy((v17 + 40 * v18 + 32), v3 + 4, 40 * v14);

  if (v14)
  {
    v19 = *(v17 + 16);
    v20 = __OFADD__(v19, v14);
    v21 = v19 + v14;
    if (v20)
    {
LABEL_36:
      __break(1u);
      return result;
    }

    *(v17 + 16) = v21;
  }

LABEL_21:
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v23 = *(v0 + 240);
  *(v0 + 232) = v17;
  v24 = *(v0 + 120);
  v25 = *(v0 + 128);
  v26 = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd);
  dispatch thunk of IteratorProtocol.next()();
  if ((*(v25 + 48))(v26, 1, v24) != 1)
  {
    v30 = *(v0 + 144);
    v31 = *(v0 + 120);
    v32 = *(v0 + 104);
    v33 = *(v0 + 88);
    v34 = *(*(v0 + 128) + 32);
    v34(v30, *(v0 + 112), v31);
    v35 = *(v33 + 48);
    *v32 = v23;
    result = v34(&v32[v35], v30, v31);
    v20 = __OFADD__(v23++, 1);
    if (!v20)
    {
      v36 = *(v0 + 152);
      v38 = *(v0 + 96);
      v37 = *(v0 + 104);
      v39 = *(v0 + 88);
      *(*(v0 + 224) + *(v0 + 272)) = v23;
      outlined init with take of Range<AttributedString.Index>(v37, v36, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMd);
      (*(v38 + 56))(v36, 0, 1, v39);
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  v27 = *(v0 + 152);
  v28 = *(v0 + 88);
  v29 = *(v0 + 96);
  outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 112), &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd);
  (*(v29 + 56))(v27, 1, 1, v28);
LABEL_25:
  *(v0 + 240) = v23;
  v40 = *(v0 + 160);
  v41 = *(v0 + 88);
  v42 = *(v0 + 96);
  outlined init with take of Range<AttributedString.Index>(*(v0 + 152), v40, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMd);
  if ((*(v42 + 48))(v40, 1, v41) != 1)
  {
    v44 = *(v0 + 160);
    v45 = *(v0 + 128);
    v46 = *(v0 + 136);
    v47 = *(v0 + 120);
    v48 = *(v0 + 88);
    *(v0 + 248) = *v44;
    (*(v45 + 32))(v46, &v44[*(v48 + 48)], v47);
    _s8PaperKit0A8DocumentVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
    SharedTagged_3.subscript.getter();
    v49 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v53 = *(v49 + 216) + **(v49 + 216);
    v50 = swift_task_alloc();
    *(v0 + 256) = v50;
    *v50 = v0;
    v50[1] = Capsule<>.search(query:fullWordsOnly:caseMatchingOnly:);

    __asm { BRAA            X8, X16 }
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 224), &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMd);
  v55 = specialized _arrayForceCast<A, B>(_:)(v17);

  v43 = *(v0 + 8);

  return v43(v55);
}

uint64_t Capsule<>.search(query:fullWordsOnly:caseMatchingOnly:)(uint64_t a1)
{
  *(*v1 + 264) = a1;

  return MEMORY[0x1EEE6DFA0](Capsule<>.search(query:fullWordsOnly:caseMatchingOnly:), 0, 0);
}

uint64_t ContainerCanvasElement.drawingIndexableTextContent<A>(in:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37[1] = a3;
  v37[2] = a5;
  v38 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v37 - v16;
  (*(a4 + 64))(a2, a4);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v15 + 32))(v17, v13, v14);
  type metadata accessor for Capsule();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKDrawingStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  Capsule.encapsulateTransient<A>(_:)();
  v18 = type metadata accessor for PKDrawingCoherence(0);
  v19 = objc_allocWithZone(v18);
  (*(v8 + 16))(v19 + OBJC_IVAR___PKDrawingCoherence_model, v10, v7);
  v39.receiver = v19;
  v39.super_class = v18;
  v20 = objc_msgSendSuper2(&v39, sel_init);
  (*(v8 + 8))(v10, v7);
  v21 = v20;
  [v21 setRecognitionEnabled_];
  v22 = [v21 indexableContent];

  if (!v22)
  {

    (*(v15 + 8))(v17, v14);
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit20IndexableTextContentVGMd);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D4058CF0;
  v24 = [v22 indexableTextRepresentation];
  if (v24)
  {
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  v29 = [v22 presentableTextRepresentation];
  if (v29)
  {
    v38 = v17;
    v30 = v28;
    v31 = v26;
    v32 = v29;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v26 = v31;
    v28 = v30;
    v17 = v38;
  }

  else
  {
    v33 = 0;
    v35 = 0xE000000000000000;
  }

  *(v23 + 32) = v26;
  *(v23 + 40) = v28;
  *(v23 + 48) = v33;
  *(v23 + 56) = v35;

  (*(v15 + 8))(v17, v14);
  return v23;
}

char *ContainerCanvasElement.subelementsIndexableTextContent<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16[-v12];
  (*(a4 + 88))(a2, a4);
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a1;
  v14 = specialized Sequence.flatMap<A>(_:)(partial apply for closure #1 in ContainerCanvasElement.subelementsIndexableTextContent<A>(in:), v16);
  (*(v11 + 8))(v13, v10);
  return v14;
}

PaperKit::IndexableTextContent __swiftcall IndexableTextContent.init(indexableText:presentableText:)(Swift::String indexableText, Swift::String presentableText)
{
  *v2 = indexableText;
  v2[1] = presentableText;
  result.presentableText = presentableText;
  result.indexableText = indexableText;
  return result;
}

uint64_t closure #1 in ContainerCanvasElement.subelementsIndexableTextContent<A>(in:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X5>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  SharedTagged_10.subscript.getter();
  v8 = v12;
  v9 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  *a4 = (*(v9 + 144))(a1, a2, a3, v8, v9);
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t ContainerCanvasElement.searchDrawing<A>(query:fullWordsOnly:caseMatchingOnly:in:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 88) = v14;
  *(v9 + 96) = v8;
  *(v9 + 72) = a7;
  *(v9 + 80) = a8;
  *(v9 + 56) = a5;
  *(v9 + 64) = a6;
  *(v9 + 185) = a4;
  *(v9 + 184) = a3;
  *(v9 + 40) = a1;
  *(v9 + 48) = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  *(v9 + 104) = v10;
  *(v9 + 112) = *(v10 - 8);
  *(v9 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  *(v9 + 128) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  *(v9 + 136) = v11;
  *(v9 + 144) = *(v11 - 8);
  *(v9 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ContainerCanvasElement.searchDrawing<A>(query:fullWordsOnly:caseMatchingOnly:in:), 0, 0);
}

uint64_t ContainerCanvasElement.searchDrawing<A>(query:fullWordsOnly:caseMatchingOnly:in:)()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  (*(*(v0 + 80) + 64))(*(v0 + 64));
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 128), &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);

    v4 = *(v0 + 8);
    v5 = MEMORY[0x1E69E7CC0];

    return v4(v5);
  }

  else
  {
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = *(v0 + 104);
    v18 = *(v0 + 184);
    v19 = *(v0 + 185);
    v17 = *(v0 + 48);
    v10 = *(v0 + 40);
    (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 128), *(v0 + 136));
    type metadata accessor for Capsule();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKDrawingStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
    Capsule.encapsulateTransient<A>(_:)();
    v11 = type metadata accessor for PKDrawingCoherence(0);
    v12 = objc_allocWithZone(v11);
    (*(v8 + 16))(v12 + OBJC_IVAR___PKDrawingCoherence_model, v7, v9);
    *(v0 + 16) = v12;
    *(v0 + 24) = v11;
    v13 = objc_msgSendSuper2((v0 + 16), sel_init);
    *(v0 + 160) = v13;
    (*(v8 + 8))(v7, v9);
    [v13 setRecognitionEnabled_];
    v14 = swift_task_alloc();
    *(v0 + 168) = v14;
    *(v14 + 16) = v13;
    *(v14 + 24) = v10;
    *(v14 + 32) = v17;
    *(v14 + 40) = v18;
    *(v14 + 41) = v19;
    v15 = swift_task_alloc();
    *(v0 + 176) = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit17SearchQueryResultVGMd);
    *v15 = v0;
    v15[1] = ContainerCanvasElement.searchDrawing<A>(query:fullWordsOnly:caseMatchingOnly:in:);

    return MEMORY[0x1EEE6DDE0](v0 + 32, 0, 0, 0xD000000000000037, 0x80000001D4092400, partial apply for closure #1 in ContainerCanvasElement.searchDrawing<A>(query:fullWordsOnly:caseMatchingOnly:in:), v14, v16);
  }
}

{

  return MEMORY[0x1EEE6DFA0](ContainerCanvasElement.searchDrawing<A>(query:fullWordsOnly:caseMatchingOnly:in:), 0, 0);
}

{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 32);

  v5 = *(v0 + 8);

  return v5(v4);
}

void closure #1 in ContainerCanvasElement.searchDrawing<A>(query:fullWordsOnly:caseMatchingOnly:in:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay8PaperKit17SearchQueryResultVGs5NeverOGMd);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = aBlock - v15;
  v17 = MEMORY[0x1DA6CCED0](a3, a4, v14);
  (*(v13 + 16))(v16, a1, v12);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  (*(v13 + 32))(v19 + v18, v16, v12);
  aBlock[4] = partial apply for closure #1 in closure #1 in ContainerCanvasElement.searchDrawing<A>(query:fullWordsOnly:caseMatchingOnly:in:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [PKSearchQueryItem]) -> ();
  aBlock[3] = &block_descriptor_72;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  [v21 performSearchQuery:v17 fullWordsOnly:a5 & 1 caseMatchingOnly:a6 & 1 withBlock:v20];
  _Block_release(v20);
}

char *closure #1 in closure #1 in ContainerCanvasElement.searchDrawing<A>(query:fullWordsOnly:caseMatchingOnly:in:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay8PaperKit17SearchQueryResultVGs5NeverOGMd);
    return CheckedContinuation.resume(returning:)();
  }

  v18 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6CE0C0](v4, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v16 = *(v18 + 16);
      v15 = *(v18 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      }

      ++v4;
      *(v18 + 16) = v16 + 1;
      v17 = (v18 + 32 * v16);
      v17[4] = v8;
      v17[5] = v10;
      v17[6] = v12;
      v17[7] = v14;
    }

    while (v2 != v4);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [PKSearchQueryItem]) -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  type metadata accessor for PKSearchQueryItem();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

char *Capsule<>.search(query:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  v9 = type metadata accessor for Paper(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.root.getter();
  (*(v6 + 16))(v8, &v12[*(v10 + 56)], v5);
  _s8PaperKit0A0VWOhTm_6(v12, type metadata accessor for Paper);
  v16 = v2;
  v17 = a1;
  v18 = a2;
  v13 = specialized Sequence.flatMap<A>(_:)(partial apply for closure #1 in Capsule<>.search(query:), v15);
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t closure #1 in Capsule<>.search(query:)@<X0>(uint64_t a1@<X1>, char **a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v3 = type metadata accessor for Paper(0);
  v4 = _s8PaperKit0A8DocumentVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  SharedTagged_10.subscript.getter();
  v5 = v30;
  v6 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v7 = *(v6 + 144);
  v34 = a1;
  v8 = v7(a1, v3, v4, v5, v6);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8;
    lazy protocol witness table accessor for type String and conformance String();
    v11 = v10 + 40;
    v12 = MEMORY[0x1E69E7CC0];
    do
    {
      v27 = *(v11 - 8);
      if (StringProtocol.localizedCaseInsensitiveContains<A>(_:)())
      {
        v15 = v30;
        v14 = v31;
        __swift_project_boxed_opaque_existential_1(v29, v30);
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
        Capsule.subscript.getter();

        v32[0] = v27;
        v32[1] = v28;
        v33 = 0;
        v16 = (*(v14 + 136))(v32, v15, v14);
        v18 = v17;
        v20 = v19;
        v22 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        }

        v24 = *(v12 + 2);
        v23 = *(v12 + 3);
        if (v24 >= v23 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v12);
        }

        *(v12 + 2) = v24 + 1;
        v13 = &v12[32 * v24];
        v13[4] = v16;
        *(v13 + 5) = v18;
        *(v13 + 6) = v20;
        *(v13 + 7) = v22;
      }

      v11 += 32;
      --v9;
    }

    while (v9);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v12;
  return __swift_destroy_boxed_opaque_existential_0(v29);
}

char *Capsule<>.indexableTextContent.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-v3];
  v5 = type metadata accessor for PaperDocument(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  Capsule.root.getter();
  (*(v2 + 16))(v4, v7, v1);
  _s8PaperKit0A0VWOhTm_6(v7, type metadata accessor for PaperDocument);
  v11 = v0;
  v8 = specialized Sequence.flatMap<A>(_:)(partial apply for closure #1 in Capsule<>.indexableTextContent.getter, v10);
  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t closure #1 in Capsule<>.indexableTextContent.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  v4 = type metadata accessor for PaperDocument(0);
  v5 = _s8PaperKit0A8DocumentVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
  SharedTagged_3.subscript.getter();
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  *a2 = (*(v7 + 208))(a1, v4, v5, v6, v7);
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t Array<A>.indexableTextContentString.getter(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = (v3 + 32 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
      v13 = BidirectionalCollection<>.joined(separator:)();

      return v13;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_16;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    v9 = HIBYTE(*v5) & 0xF;
    if ((*v5 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    ++v1;
    v5 += 4;
    if (v9)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t Array<A>.presentableTextContentString.getter(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 56;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = (v3 + 32 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
      v13 = BidirectionalCollection<>.joined(separator:)();

      return v13;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_16;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    v9 = HIBYTE(*v5) & 0xF;
    if ((*v5 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    v5 += 4;
    ++v1;
    if (v9)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t IndexableTextContent.indexableText.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IndexableTextContent.presentableText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static IndexableTextContent.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance IndexableTextContent(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t _s8PaperKit0A0VWOhTm_6(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for IndexableTextContent(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for IndexableTextContent(uint64_t result, int a2, int a3)
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

uint64_t _s8PaperKit0A8DocumentVAC9Coherence4CRDTAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

char *partial apply for closure #1 in closure #1 in ContainerCanvasElement.searchDrawing<A>(query:fullWordsOnly:caseMatchingOnly:in:)(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay8PaperKit17SearchQueryResultVGs5NeverOGMd);

  return closure #1 in closure #1 in ContainerCanvasElement.searchDrawing<A>(query:fullWordsOnly:caseMatchingOnly:in:)(a1);
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for PKSearchQueryItem()
{
  result = lazy cache variable for type metadata for PKSearchQueryItem;
  if (!lazy cache variable for type metadata for PKSearchQueryItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PKSearchQueryItem);
  }

  return result;
}

void closure #11 in CanvasEditMenuDelegate.editMenuInteraction(_:menuFor:suggestedActions:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x468);
    v6 = Strong;
    v7 = v5();

    if (v7)
    {
      [a3 sourcePoint];
      [v6 convertPoint:v7 toCoordinateSpace:?];
      [v7 insertSpaceAtLocation_];

      v6 = v7;
    }
  }
}

void closure #10 in CanvasEditMenuDelegate.editMenuInteraction(_:menuFor:suggestedActions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    a6();
  }
}

void closure #13 in CanvasEditMenuDelegate.editMenuInteraction(_:menuFor:suggestedActions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x468))();

    if (v6)
    {
      [v6 _getAllHandwritingTranscription_];
    }
  }
}

void closure #14 in CanvasEditMenuDelegate.editMenuInteraction(_:menuFor:suggestedActions:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a3 sourcePoint];
    Canvas.showOrHideContent(below:)(__PAIR128__(v7, v6));
  }
}

void closure #2 in CanvasEditMenuDelegate.editMenuInteraction(_:menuFor:suggestedActions:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [a3 sourcePoint];
    v12 = v11;
    v14 = v13;
    v15 = Canvas.editingView.getter();
    [v10 convertPoint:v15 toCoordinateSpace:{v12, v14}];
    v17 = v16;
    v19 = v18;

    v20 = Canvas.editingView.getter();
    AnyCanvasElementView.paperBoundsTransform()(&v30);
    v29 = v30;
    CGAffineTransformInvert(&v28, &v29);
    v29 = v28;
    v31.x = v17;
    v31.y = v19;
    v21 = CGPointApplyAffineTransform(v31, &v29);

    v22 = *&v10[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
    if (v22)
    {
      v23 = v22 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(v23 + 24);

      AnyCanvas.performSelectionAction(_:_:at:)(a7, v24, v25, v26, v27, *&v21.x, *&v21.y, 0);
    }

    else
    {
      __break(1u);
    }
  }
}

id @objc CanvasEditMenuDelegate.editMenuInteraction(_:menuFor:suggestedActions:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  specialized CanvasEditMenuDelegate.editMenuInteraction(_:menuFor:suggestedActions:)(v6, v7);
  v10 = v9;

  return v10;
}

void closure #1 in CanvasEditMenuDelegate.editMenuInteraction(_:willDismissMenuFor:animator:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[direct field offset for CanvasEditMenuDelegate.editMenuIsPresented] = 0;
  }
}

void @objc CanvasEditMenuDelegate.editMenuInteraction(_:willDismissMenuFor:animator:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a1;
  specialized CanvasEditMenuDelegate.editMenuInteraction(_:willDismissMenuFor:animator:)(a5);

  swift_unknownObjectRelease();
}

id CanvasEditMenuDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasEditMenuDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized CanvasEditMenuDelegate.init(canvas:)()
{
  swift_unknownObjectWeakInit();
  v0[direct field offset for CanvasEditMenuDelegate.editMenuIsPresented] = 0;
  swift_unknownObjectWeakAssign();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasEditMenuDelegate();
  return objc_msgSendSuper2(&v2, sel_init);
}

void specialized CanvasEditMenuDelegate.editMenuInteraction(_:menuFor:suggestedActions:)(void *a1, void *a2)
{
  v236 = a2;
  v4 = MEMORY[0x1E69E7D40];
  v237 = *MEMORY[0x1E69E7D40] & *v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v7 = *((*v4 & *Strong) + 0x3C8);
  v8 = (*v4 & *Strong) + 968;
  v7(v238);
  if (!LOBYTE(v238[0]))
  {

    return;
  }

  [a1 locationInView_];
  if (v10 != 0.0 || v9 != 0.0)
  {
    v11 = [v6 hitTest:0 withEvent:?];
    if (v11)
    {
      v12 = v11;
      type metadata accessor for AnyCanvasElementView();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = v13;
        v15 = swift_unknownObjectWeakLoadStrong();
        if (v15)
        {

          v16 = v6;
          v17 = v12;
          v18 = specialized CanvasMembers.init(_:)(v14);
          v12 = v16;
          AnyCanvas.selection.setter(v18, v20, v21, v19 & 1);
        }
      }
    }
  }

  v22 = (v7)(v238);
  v231 = v6;
  v227 = v8;
  v228 = v7;
  if (LOBYTE(v238[0]) != 3)
  {
    v34 = 0;
    v225 = 0;
    goto LABEL_41;
  }

  v235 = objc_opt_self();
  v23 = [v235 generalPasteboard];
  v24 = [v23 pasteboardTypes];

  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = 0;
  v28 = (v25 + 40);
  v29 = -*(v25 + 16);
  v30 = -1;
  while (1)
  {
    if (v29 + v30 == -1)
    {

      v35 = [v235 generalPasteboard];
      v36 = [v35 itemProviders];

      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSItemProvider);
      v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v25 >> 62)
      {
        goto LABEL_37;
      }

      v37 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        goto LABEL_20;
      }

LABEL_38:
      v225 = v27;
LABEL_39:

      v34 = 0;
LABEL_40:
      v6 = v231;
      v7 = v228;
LABEL_41:
      (v7)(v238, v22);
      v47 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
      v48 = *&v6[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
      LODWORD(v229) = v34;
      if (LOBYTE(v238[0]))
      {
        if (!v48)
        {
          goto LABEL_171;
        }

        v49 = *(*(v48 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection) + 16) != 0;
      }

      else
      {
        if (!v48)
        {
          goto LABEL_172;
        }

        v49 = 0;
      }

      v230 = *(*(v48 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection) + 16);
      v50 = v6;
      AnyCanvas.availableZAxisMovement.getter();
      v52 = *&v6[v47];
      if (!v52)
      {
        goto LABEL_170;
      }

      v53 = 0xD000000000000010;
      v54 = v52 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
      v55 = *(*v54 + 16);
      v235 = v50;
      v226 = v49;
      if (v55)
      {
        v56 = (v51 >> 1) & 1;
        if ((v51 & 1) == 0)
        {
LABEL_49:
          v248[0] = 0;
          if (v56)
          {
LABEL_59:
            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
            v50 = v235;
            if (one-time initialization token for paperKitBundle != -1)
            {
              swift_once();
            }

            v264._object = 0x80000001D4092670;
            v68._countAndFlagsBits = 0x206F7420646E6553;
            v68._object = 0xEC0000006B636142;
            v255._countAndFlagsBits = 0xD000000000000032;
            v69.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v69.value._object = 0xEB00000000656C62;
            v70._countAndFlagsBits = 0;
            v70._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v68, v69, paperKitBundle, v70, v255);
            v71 = MEMORY[0x1DA6CCED0](0xD000000000000020, 0x80000001D4084320);
            v72 = [objc_opt_self() systemImageNamed_];

            v73 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v74 = swift_allocObject();
            v75 = v237;
            *(v74 + 16) = *(v237 + 80);
            *(v74 + 32) = *(v75 + 96);
            *(v74 + 40) = v73;
            v53 = 0xD000000000000010;
            v76 = v236;
            *(v74 + 48) = v236;
            v77 = v76;
            v220 = partial apply for closure #3 in CanvasEditMenuDelegate.editMenuInteraction(_:menuFor:suggestedActions:);
            v264._object = v74;
            v219 = 0;
            v57 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
            goto LABEL_63;
          }

          v57 = 0;
          v50 = v235;
LABEL_63:
          v78 = 0;
          v248[1] = v57;
          v79 = MEMORY[0x1E69E7CC0];
          v238[0] = MEMORY[0x1E69E7CC0];
          v232 = MEMORY[0x1E69E7CC0];
LABEL_64:
          v233 = v79;
          while (v78 != 2)
          {
            v80 = v248[v78++];
            if (v80)
            {
              v81 = v80;
              MEMORY[0x1DA6CD190]();
              if (*((v238[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v238[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v79 = v238[0];
              goto LABEL_64;
            }
          }

          v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIActionCSgMd);
          swift_arrayDestroy();
          if (v230)
          {
            v224 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
            v82 = 0x80000001D408D860;
            if (one-time initialization token for paperKitBundle != -1)
            {
LABEL_168:
              swift_once();
            }

            v223.super.isa = paperKitBundle.super.isa;
            v264._object = v82;
            v256._countAndFlagsBits = v53 + 11;
            v83._countAndFlagsBits = 7632195;
            v83._object = 0xE300000000000000;
            v84.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v84.value._object = 0xEB00000000656C62;
            v85._countAndFlagsBits = 0;
            v85._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v83, v84, paperKitBundle, v85, v256);
            v86 = MEMORY[0x1DA6CCED0](0x73726F7373696373, 0xE800000000000000);
            v87 = objc_opt_self();
            v88 = [v87 systemImageNamed_];

            v89 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v90 = swift_allocObject();
            v91 = v237;
            v222 = *(v237 + 80);
            v90[2] = v222;
            v92 = v50;
            v50 = *(v91 + 88);
            v90[3] = v50;
            v93 = *(v91 + 96);
            v90[4] = v93;
            v90[5] = v89;
            v94 = v236;
            v90[6] = v236;
            v95 = v92;
            v96 = v94;
            v220 = partial apply for closure #5 in CanvasEditMenuDelegate.editMenuInteraction(_:menuFor:suggestedActions:);
            v264._object = v90;
            v219 = 0;
            v244 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
            v264._object = 0x80000001D4092480;
            v257._countAndFlagsBits = 0xD00000000000001CLL;
            v97._countAndFlagsBits = 2037411651;
            v97._object = 0xE400000000000000;
            v98.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v98.value._object = 0xEB00000000656C62;
            v99._countAndFlagsBits = 0;
            v99._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v97, v98, v223, v99, v257);
            v100 = MEMORY[0x1DA6CCED0](0x642E6E6F2E636F64, 0xEA0000000000636FLL);
            v101 = [v87 systemImageNamed_];

            v102 = swift_allocObject();
            swift_unknownObjectWeakInit();

            v103 = swift_allocObject();
            v103[2] = v222;
            v103[3] = v50;
            v103[4] = v93;
            v103[5] = v102;
            v103[6] = v96;
            v104 = v96;
            v220 = partial apply for closure #6 in CanvasEditMenuDelegate.editMenuInteraction(_:menuFor:suggestedActions:);
            v264._object = v103;
            v219 = 0;
            v105 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          }

          else
          {
            v105 = 0;
            v244 = 0;
          }

          v245 = v105;
          if (v229)
          {
            v229 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
            if (one-time initialization token for paperKitBundle != -1)
            {
              swift_once();
            }

            v264._object = 0x80000001D4083DD0;
            v106._countAndFlagsBits = 0x6574736150;
            v258._countAndFlagsBits = 0xD00000000000001DLL;
            v106._object = 0xE500000000000000;
            v107.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v107.value._object = 0xEB00000000656C62;
            v108._countAndFlagsBits = 0;
            v108._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v106, v107, paperKitBundle, v108, v258);
            v109 = MEMORY[0x1DA6CCED0](0xD000000000000010, 0x80000001D4083DF0);
            v110 = [objc_opt_self() systemImageNamed_];

            v111 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v112 = swift_allocObject();
            v113 = v236;
            v114 = v237;
            v115 = *(v237 + 80);
            v112[2] = v115;
            v50 = *(v114 + 88);
            v112[3] = v50;
            v116 = *(v114 + 96);
            v112[4] = v116;
            v112[5] = v111;
            v112[6] = v113;
            v117 = v113;
            v220 = partial apply for closure #7 in CanvasEditMenuDelegate.editMenuInteraction(_:menuFor:suggestedActions:);
            v264._object = v112;
            v219 = 0;
            v246 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
            if (v230)
            {
              v118 = v117;
              if (one-time initialization token for paperKitBundle != -1)
              {
                swift_once();
              }

              v264._object = 0x80000001D408D8C0;
              v119._countAndFlagsBits = 0x746163696C707544;
              v259._countAndFlagsBits = 0xD000000000000021;
              v119._object = 0xE900000000000065;
              v120.value._countAndFlagsBits = 0x617A696C61636F4CLL;
              v120.value._object = 0xEB00000000656C62;
              v121._countAndFlagsBits = 0;
              v121._object = 0xE000000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v119, v120, paperKitBundle, v121, v259);
              v122 = MEMORY[0x1DA6CCED0](0xD000000000000015, 0x80000001D4083E40);
              v123 = [objc_opt_self() systemImageNamed_];

              v124 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v125 = swift_allocObject();
              v125[2] = v115;
              v125[3] = v50;
              v125[4] = v116;
              v125[5] = v124;
              v125[6] = v118;
              v126 = v118;
              v220 = partial apply for closure #8 in CanvasEditMenuDelegate.editMenuInteraction(_:menuFor:suggestedActions:);
              v264._object = v125;
              v219 = 0;
              v127 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
            }

            else
            {
              v127 = 0;
            }
          }

          else
          {
            v127 = 0;
            v246 = 0;
          }

          v128 = 0;
          v129 = v243;
          v247 = v127;
          v130 = MEMORY[0x1E69E7CC0];
          v238[0] = MEMORY[0x1E69E7CC0];
          v131 = v243;
          v132 = v235;
LABEL_84:
          if (v128 <= 4)
          {
            v133 = 4;
          }

          else
          {
            v133 = v128;
          }

          while (v128 != 4)
          {
            if (v133 == v128)
            {
              __break(1u);
LABEL_137:
              __break(1u);
LABEL_138:
              swift_once();
              goto LABEL_130;
            }

            v134 = v243[v128++ + 4];
            if (v134)
            {
              v135 = v134;
              MEMORY[0x1DA6CD190]();
              if (*((v238[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v238[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v130 = v238[0];
              goto LABEL_84;
            }
          }

          swift_arrayDestroy();
          if (Canvas.hasSelectableContent.getter())
          {
            v228(v238);
            v230 = v242;
            if (LOBYTE(v238[0]) == 1)
            {
              v136 = 0;
            }

            else
            {
              type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
              if (one-time initialization token for paperKitBundle != -1)
              {
                swift_once();
              }

              v264._object = 0x80000001D4092620;
              v137._countAndFlagsBits = 0x41207463656C6553;
              v137._object = 0xEA00000000006C6CLL;
              v260._countAndFlagsBits = 0xD000000000000025;
              v138.value._countAndFlagsBits = 0x617A696C61636F4CLL;
              v138.value._object = 0xEB00000000656C62;
              v139._countAndFlagsBits = 0;
              v139._object = 0xE000000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v137, v138, paperKitBundle, v139, v260);
              v140 = MEMORY[0x1DA6CCED0](0xD000000000000010, 0x80000001D4092650);
              v141 = [objc_opt_self() systemImageNamed_];

              v142 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v143 = swift_allocObject();
              v144 = v237;
              *(v143 + 16) = *(v237 + 80);
              *(v143 + 32) = *(v144 + 96);
              *(v143 + 40) = v142;
              v220 = partial apply for closure #10 in CanvasEditMenuDelegate.editMenuInteraction(_:menuFor:suggestedActions:);
              v264._object = v143;
              v219 = 0;
              v136 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
            }
          }

          else
          {
            v136 = 0;
            v230 = v242;
          }

          v242[0] = v136;
          v145 = (*((*MEMORY[0x1E69E7D40] & *v132) + 0x468))();

          if (v145 && (v146 = [v145 insertSpaceEnabled], v145, v146))
          {
            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
            if (one-time initialization token for paperKitBundle != -1)
            {
              swift_once();
            }

            v264._object = 0x80000001D40925F0;
            v147._countAndFlagsBits = 0x5320747265736E49;
            v147._object = 0xEC00000065636170;
            v261._countAndFlagsBits = 0xD000000000000027;
            v148.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v148.value._object = 0xEB00000000656C62;
            v149._countAndFlagsBits = 0;
            v149._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v147, v148, paperKitBundle, v149, v261);
            v150 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v151 = swift_allocObject();
            v152 = v237;
            *(v151 + 16) = *(v237 + 80);
            *(v151 + 32) = *(v152 + 96);
            *(v151 + 40) = v150;
            v153 = v236;
            *(v151 + 48) = v236;
            v154 = v153;
            v264._object = v151;
            v219 = 0;
            v220 = partial apply for closure #11 in CanvasEditMenuDelegate.editMenuInteraction(_:menuFor:suggestedActions:);
            v155 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          }

          else
          {
            v155 = 0;
          }

          v242[1] = v155;
          v156 = objc_opt_self();
          v157 = [v156 standardUserDefaults];
          v158 = MEMORY[0x1DA6CCED0](0xD000000000000026, 0x80000001D40924A0);
          v159 = [v157 BOOLForKey_];

          if (v159)
          {
            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
            if (one-time initialization token for paperKitBundle != -1)
            {
              swift_once();
            }

            v264._object = 0x80000001D40925C0;
            v160._countAndFlagsBits = 0x6C6C412079706F43;
            v262._countAndFlagsBits = 0xD000000000000023;
            v160._object = 0xE800000000000000;
            v161.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v161.value._object = 0xEB00000000656C62;
            v162._countAndFlagsBits = 0;
            v162._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v160, v161, paperKitBundle, v162, v262);
            v163 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v164 = swift_allocObject();
            v165 = v237;
            *(v164 + 16) = *(v237 + 80);
            *(v164 + 32) = *(v165 + 96);
            *(v164 + 40) = v163;
            v220 = partial apply for closure #12 in CanvasEditMenuDelegate.editMenuInteraction(_:menuFor:suggestedActions:);
            v264._object = v164;
            v219 = 0;
            v166 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          }

          else
          {
            v166 = 0;
          }

          v242[2] = v166;
          v167 = [v156 standardUserDefaults];
          v168 = MEMORY[0x1DA6CCED0](0xD00000000000003ELL, 0x80000001D40924D0);
          v169 = [v167 BOOLForKey_];

          if (v169)
          {
            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
            if (one-time initialization token for paperKitBundle != -1)
            {
              swift_once();
            }

            v264._object = 0x80000001D4092580;
            v170._countAndFlagsBits = 0xD000000000000016;
            v170._object = 0x80000001D4092560;
            v263._countAndFlagsBits = 0xD000000000000031;
            v171.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v171.value._object = 0xEB00000000656C62;
            v172._countAndFlagsBits = 0;
            v172._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v170, v171, paperKitBundle, v172, v263);
            v173 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v174 = swift_allocObject();
            v175 = v237;
            *(v174 + 16) = *(v237 + 80);
            *(v174 + 32) = *(v175 + 96);
            *(v174 + 40) = v173;
            v176 = v236;
            *(v174 + 48) = v236;
            v177 = v176;
            v264._object = v174;
            v219 = 0;
            v220 = partial apply for closure #13 in CanvasEditMenuDelegate.editMenuInteraction(_:menuFor:suggestedActions:);
            v178 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          }

          else
          {
            v178 = 0;
          }

          v242[3] = v178;
          v179 = [v156 standardUserDefaults];
          v180 = MEMORY[0x1DA6CCED0](0xD00000000000002ELL, 0x80000001D4092510);
          v181 = [v179 BOOLForKey_];

          v131 = 0xD000000000000010;
          if (v181)
          {
            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
            v182 = swift_allocObject();
            v50 = v235;
            swift_unknownObjectWeakInit();
            v183 = swift_allocObject();
            v184 = v237;
            *(v183 + 16) = *(v237 + 80);
            *(v183 + 32) = *(v184 + 96);
            *(v183 + 40) = v182;
            v185 = v236;
            *(v183 + 48) = v236;
            v186 = v185;
            v220 = partial apply for closure #14 in CanvasEditMenuDelegate.editMenuInteraction(_:menuFor:suggestedActions:);
            v264._object = v183;
            v219 = 0;
            v187 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          }

          else
          {
            v187 = 0;
            v50 = v235;
          }

          v129 = 0;
          v242[4] = v187;
          v132 = MEMORY[0x1E69E7CC0];
          v238[0] = MEMORY[0x1E69E7CC0];
LABEL_120:
          if (v129 <= 5)
          {
            v188 = 5;
          }

          else
          {
            v188 = v129;
          }

          while (v129 != 5)
          {
            if (v188 == v129)
            {
              goto LABEL_137;
            }

            v189 = v241[v129++ + 4];
            if (v189)
            {
              v190 = v189;
              MEMORY[0x1DA6CD190]();
              if (*((v238[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v238[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v132 = v238[0];
              goto LABEL_120;
            }
          }

          swift_arrayDestroy();
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
          v129 = 0x80000001D4092540;
          if (one-time initialization token for paperKitBundle != -1)
          {
            goto LABEL_138;
          }

LABEL_130:
          v264._object = v129;
          v191._countAndFlagsBits = 0x6574656C6544;
          v264._countAndFlagsBits = v131 + 14;
          v191._object = 0xE600000000000000;
          v192.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v192.value._object = 0xEB00000000656C62;
          v193._countAndFlagsBits = 0;
          v193._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v191, v192, paperKitBundle, v193, v264);
          v194 = MEMORY[0x1DA6CCED0](0x6873617274, 0xE500000000000000);
          v195 = [objc_opt_self() systemImageNamed_];

          v196 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v197 = swift_allocObject();
          v198 = v237;
          *(v197 + 16) = *(v237 + 80);
          *(v197 + 32) = *(v198 + 96);
          *(v197 + 40) = v196;
          v199 = v236;
          *(v197 + 48) = v236;
          v200 = v199;
          v220 = partial apply for closure #16 in CanvasEditMenuDelegate.editMenuInteraction(_:menuFor:suggestedActions:);
          v264._object = v197;
          v219 = 0;
          v201 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          v202 = v233;
          if (v233 >> 62)
          {
            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement);

            v203 = _bridgeCocoaArray<A>(_:)();
          }

          else
          {

            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement);
            v203 = v202;
          }

          v204 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenu);
          v205._countAndFlagsBits = 0;
          v205._object = 0xE000000000000000;
          v249.value.super.isa = 0;
          v249.is_nil = 0;
          v238[6] = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v205, 0, v249, 1, 0xFFFFFFFFFFFFFFFFLL, v203, v221).super.super.isa;
          if (v130 >> 62)
          {
            if (__CocoaSet.count.getter())
            {
              type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement);

              v206 = _bridgeCocoaArray<A>(_:)();

              goto LABEL_135;
            }
          }

          else if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {

            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement);
            v206 = v130;
LABEL_135:

            v207._countAndFlagsBits = 0;
            v207._object = 0xE000000000000000;
            v250.value.super.isa = 0;
            v250.is_nil = 0;
            v208.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v207, 0, v250, 1, 0xFFFFFFFFFFFFFFFFLL, v206, v221).super.super.isa;
            goto LABEL_143;
          }

          v208.super.super.isa = 0;
LABEL_143:
          v238[7] = v208.super.super.isa;
          v53 = v226;
          if (v132 >> 62)
          {
            if (v132 < 0)
            {
              v82 = v132;
            }

            else
            {
              v82 = (v132 & 0xFFFFFFFFFFFFFF8);
            }

            if (__CocoaSet.count.getter())
            {
              type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement);

              v209 = _bridgeCocoaArray<A>(_:)();

LABEL_146:

              v264._object = v209;
              v210._countAndFlagsBits = 0;
              v210._object = 0xE000000000000000;
              v251.value.super.isa = 0;
              v251.is_nil = 0;
              v82 = v204;
              isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v210, 0, v251, 1, 0xFFFFFFFFFFFFFFFFLL, v264._object, v221).super.super.isa;
              if (v53)
              {
LABEL_147:
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
                v211 = swift_allocObject();
                *(v211 + 16) = xmmword_1D405CEB0;
                *(v211 + 32) = v201;
                v212 = v201;
                v264._object = v211;
                v213._countAndFlagsBits = 0;
                v213._object = 0xE000000000000000;
                v252.value.super.isa = 0;
                v252.is_nil = 0;
                v82 = v204;
                v214.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v213, 0, v252, 1, 0xFFFFFFFFFFFFFFFFLL, v264._object, v221).super.super.isa;
                goto LABEL_155;
              }

LABEL_154:
              v214.super.super.isa = 0;
LABEL_155:
              v215 = 0;
              v240 = v214.super.super.isa;
              v238[0] = MEMORY[0x1E69E7CC0];
LABEL_156:
              if (v215 <= 4)
              {
                v216 = 4;
              }

              else
              {
                v216 = v215;
              }

              while (v215 != 4)
              {
                if (v216 == v215)
                {
                  __break(1u);
                  goto LABEL_168;
                }

                v217 = v238[v215++ + 6];
                if (v217)
                {
                  v53 = v217;
                  MEMORY[0x1DA6CD190]();
                  if (*((v238[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v238[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v50 = v235;
                  }

                  v82 = v238;
                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  v232 = v238[0];
                  goto LABEL_156;
                }
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIMenuElementCSgMd);
              swift_arrayDestroy();
              v218._countAndFlagsBits = 0;
              v218._object = 0xE000000000000000;
              v253.value.super.isa = 0;
              v253.is_nil = 0;
              UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v218, 0, v253, 0, 0xFFFFFFFFFFFFFFFFLL, v232, v221);

              return;
            }
          }

          else
          {
            v82 = (v132 & 0xFFFFFFFFFFFFFF8);
            if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {

              dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
              type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement);
              v209 = v132;
              goto LABEL_146;
            }
          }

          isa = 0;
          if (v53)
          {
            goto LABEL_147;
          }

          goto LABEL_154;
        }
      }

      else
      {
        if (!*(*(v54 + 8) + 16) && (*(v54 + 24) & 1) == 0)
        {
          v57 = 0;
          v248[0] = 0;
          goto LABEL_63;
        }

        v56 = (v51 >> 1) & 1;
        if ((v51 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      v264._object = 0x80000001D4092670;
      v58._countAndFlagsBits = 0x6F7420676E697242;
      v58._object = 0xEE00746E6F724620;
      v254._countAndFlagsBits = 0xD000000000000032;
      v59.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v59.value._object = 0xEB00000000656C62;
      v60._countAndFlagsBits = 0;
      v60._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v58, v59, paperKitBundle, v60, v254);
      v61 = MEMORY[0x1DA6CCED0](0xD00000000000001DLL, 0x80000001D4084390);
      v62 = [objc_opt_self() systemImageNamed_];

      v63 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v64 = swift_allocObject();
      v65 = v237;
      *(v64 + 16) = *(v237 + 80);
      *(v64 + 32) = *(v65 + 96);
      *(v64 + 40) = v63;
      v66 = v236;
      *(v64 + 48) = v236;
      v67 = v66;
      v220 = partial apply for closure #2 in CanvasEditMenuDelegate.editMenuInteraction(_:menuFor:suggestedActions:);
      v264._object = v64;
      v219 = 0;
      v248[0] = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      if (v56)
      {
        goto LABEL_59;
      }

      v57 = 0;
      v50 = v235;
      v53 = 0xD000000000000010;
      goto LABEL_63;
    }

    if (++v30 >= *(v25 + 16))
    {
      break;
    }

    v31 = v28 + 2;
    v32 = *v28;
    v238[0] = *(v28 - 1);
    v238[1] = v32;
    MEMORY[0x1EEE9AC00](v26);
    v264._object = v238;

    v33 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, &v219, &outlined read-only object #0 of CanvasEditMenuDelegate.editMenuInteraction(_:menuFor:suggestedActions:));
    swift_arrayDestroy();

    v28 = v31;
    if (v33)
    {
      v225 = 0;
LABEL_33:

      v34 = 1;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  while (2)
  {
    __break(1u);
LABEL_37:
    v37 = __CocoaSet.count.getter();
    if (!v37)
    {
      goto LABEL_38;
    }

LABEL_20:
    v38 = 0;
    v39 = v25 & 0xC000000000000001;
    v233 = v25 + 32;
    v234 = v25 & 0xFFFFFFFFFFFFFF8;
    v235 = v25;
LABEL_21:
    if (v39)
    {
      v40 = MEMORY[0x1DA6CE0C0](v38, v25);
      goto LABEL_25;
    }

    if (v38 < *(v234 + 16))
    {
      v40 = *(v233 + 8 * v38);
LABEL_25:
      v41 = v40;
      v225 = v27;
      if (__OFADD__(v38++, 1))
      {
        continue;
      }

      v25 = AnyCanvas.acceptedDropLayouts.getter();
      v43 = v25 + 40;
      v44 = -*(v25 + 16);
      v45 = -1;
      while (v44 + v45 != -1)
      {
        if (++v45 >= *(v25 + 16))
        {
          goto LABEL_35;
        }

        v27 = v43 + 16;
        v46 = (*(*v43 + 32))(v41);
        v43 = v27;
        if (v46)
        {

          goto LABEL_33;
        }
      }

      v27 = v225;
      v25 = v235;
      if (v38 == v37)
      {
        goto LABEL_39;
      }

      goto LABEL_21;
    }

    break;
  }

  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
}

void specialized CanvasEditMenuDelegate.editMenuInteraction(_:willDismissMenuFor:animator:)(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40] & *v1;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = *(v5 + 80);
  *(v7 + 32) = *((v4 & v3) + 0x60);
  *(v7 + 40) = v6;
  v9[4] = partial apply for closure #1 in CanvasEditMenuDelegate.editMenuInteraction(_:willDismissMenuFor:animator:);
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v9[3] = &block_descriptor_73;
  v8 = _Block_copy(v9);

  [a1 addCompletion_];
  _Block_release(v8);
}

uint64_t block_copy_helper_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_9Tm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t type metadata accessor for MiniMagicButtons()
{
  result = type metadata singleton initialization cache for MiniMagicButtons;
  if (!type metadata singleton initialization cache for MiniMagicButtons)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MiniMagicButtons()
{
  type metadata accessor for Bindable<MiniMenuState>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FeedbackManager();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Bindable<MiniMenuState>()
{
  if (!lazy cache variable for type metadata for Bindable<MiniMenuState>)
  {
    type metadata accessor for MiniMenuState(255);
    v0 = type metadata accessor for Bindable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Bindable<MiniMenuState>);
    }
  }
}

uint64_t MiniMagicButtons.body.getter@<X0>(uint64_t a1@<X8>)
{
  v106 = a1;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA08ModifiedD0Vy8PaperKit04MiniI0VyAgAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverO0Rd__lFQOyAgAEAHyQrqd__AA09PrimitiveiH0Rd__lFQOyAKyAA0I0VyACyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindY0VyAA6CircleVGGA1_GGAA010_AlignmentxY0VG_AA05PlainiH0VQo__AA04LiftsO0VQo_GA9_G_AL0miH0VQo_A26__GMd);
  MEMORY[0x1EEE9AC00](v104);
  v105 = v84 - v2;
  v3 = type metadata accessor for MiniMagicButtons();
  v99 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v100 = v4;
  v101 = v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy8PaperKit10MiniButtonVyAA4ViewPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverK0Rd__lFQOyAhAE11buttonStyleyQrqd__AA09PrimitivehQ0Rd__lFQOyACyAA0H0VyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindX0VyAA6CircleVGGAZGGAA010_AlignmentwX0VG_AA05PlainhQ0VQo__AA04LiftoK0VQo_GA6_GMd);
  MEMORY[0x1EEE9AC00](v103);
  v102 = v84 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA15ModifiedContentVy8PaperKit04MiniF0VyAcAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverM0Rd__lFQOyAcAEADyQrqd__AA09PrimitivefE0Rd__lFQOyAGyAA0F0VyAA012_ConditionalH0VyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_h9ShapeKindX0VyAA6CircleVGGA_GGAA010_AlignmentwX0VG_AA05PlainfE0VQo__AA04LiftqM0VQo_GA7_G_AH0kfE0VQo_Md);
  v109 = *(v6 - 8);
  v110 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v108 = v84 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA08ModifiedD0Vy8PaperKit04MiniH0VyAeAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverN0Rd__lFQOyAeAEAFyQrqd__AA09PrimitivehG0Rd__lFQOyAIyAA0H0VyACyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindX0VyAA6CircleVGGA_GGAA010_AlignmentwX0VG_AA05PlainhG0VQo__AA04LiftrN0VQo_GA7_G_AJ0lhG0VQo_A24_GSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v112 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v111 = v84 - v11;
  v94 = type metadata accessor for MenuOrder();
  v96 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v91 = v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4MenuVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelF0Rd__lFQOyAA0G0VyAA4TextVAA15ModifiedContentVyAMyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentO0VGAA14_PaddingLayoutVGAA01_j9ShapeKindO0VyAA6CircleVGGG_AA08IconOnlygF0VQo_AA05TupleD0VyAA6ButtonVyAIyAkOGG_A16_tGGMd);
  v89 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v87 = v84 - v13;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE9menuOrderyQrAA04MenuE0VFQOyAA0F0VyAcAE10labelStyleyQrqd__AA05LabelH0Rd__lFQOyAA0I0VyAA4TextVAA15ModifiedContentVyAPyAPyAPyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentQ0VGAA14_PaddingLayoutVGAA01_l9ShapeKindQ0VyAA6CircleVGGG_AA08IconOnlyiH0VQo_AA05TupleC0VyAA6ButtonVyALyAnRGG_A19_tGG_Qo_Md);
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v88 = v84 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAeAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAeAE05labelG0yQrqd__AA05LabelG0Rd__lFQOyAA0M0VyAA4TextVACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentS0VGAA14_PaddingLayoutVGAA01_d9ShapeKindS0VyAA6CircleVGGG_AA08IconOnlymG0VQo_AA05TupleE0VyAA0H0VyAPyArTGG_A21_tGG_Qo__8PaperKit04MinihG0VQo_AA06_FrameX0VGMd);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v90 = v84 - v17;
  v98 = type metadata accessor for FBKSEvaluation.Action();
  v18 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v84 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAeAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAeAE05labelG0yQrqd__AA05LabelG0Rd__lFQOyAA0M0VyAA4TextVACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentS0VGAA14_PaddingLayoutVGAA01_d9ShapeKindS0VyAA6CircleVGGG_AA08IconOnlymG0VQo_AA05TupleE0VyAA0H0VyAPyArTGG_A21_tGG_Qo__8PaperKit04MinihG0VQo_AA06_FrameX0VGSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v107 = v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v113 = v84 - v26;
  has_internal_ui = os_variant_has_internal_ui();
  *(&v119 + 1) = &type metadata for FeedbackFeatures;
  *&v120 = lazy protocol witness table accessor for type FeedbackFeatures and conformance FeedbackFeatures();
  v28 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v118);
  if ((v28 & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMd), Bindable.wrappedValue.getter(), v29 = v118, swift_getKeyPath(), *&v118 = v29, _s8PaperKit13MiniMenuStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v30 = *(v29 + 40), , (((v30 & 0x80000) != 0) & has_internal_ui) == 1))
  {
    v31 = *MEMORY[0x1E699C1F0];
    v86 = v18;
    v32 = *(v18 + 104);
    v85 = v22;
    (v32)(v22, v31, v98);
    v33 = v97;
    v34 = v32();
    v84[1] = v84;
    MEMORY[0x1EEE9AC00](v34);
    v35 = v1;
    v84[-4] = v1;
    v84[-3] = v22;
    v84[-2] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10labelStyleyQrqd__AA05LabelE0Rd__lFQOyAA0F0VyAA4TextVAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentN0VGAA14_PaddingLayoutVGAA01_i9ShapeKindN0VyAA6CircleVGGG_AA08IconOnlyfE0VQo_Md);
    v84[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AMtGMd);
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5LabelVyAA4TextVAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentK0VGAA14_PaddingLayoutVGAA01_f9ShapeKindK0VyAA6CircleVGGGMd);
    v37 = type metadata accessor for IconOnlyLabelStyle();
    v38 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Label<Text, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentK0VGAA14_PaddingLayoutVGAA01_f9ShapeKindK0VyAA6CircleVGGGMd);
    v39 = _s8PaperKit13MiniMenuStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle, MEMORY[0x1E697C4E8]);
    *&v118 = v36;
    *(&v118 + 1) = v37;
    *&v119 = v38;
    *(&v119 + 1) = v39;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(Button<Label<Text, Image>>, Button<Label<Text, Image>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AMtGMd);
    v40 = v87;
    Menu.init(content:label:)();
    v41 = v91;
    static MenuOrder.fixed.getter();
    v42 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Menu<<<opaque return type of View.labelStyle<A>(_:)>>.0, TupleView<(Button<Label<Text, Image>>, Button<Label<Text, Image>>)>> and conformance Menu<A, B>, &_s7SwiftUI4MenuVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelF0Rd__lFQOyAA0G0VyAA4TextVAA15ModifiedContentVyAMyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentO0VGAA14_PaddingLayoutVGAA01_j9ShapeKindO0VyAA6CircleVGGG_AA08IconOnlygF0VQo_AA05TupleD0VyAA6ButtonVyAIyAkOGG_A16_tGGMd);
    v43 = v88;
    v44 = v92;
    View.menuOrder(_:)();
    (*(v96 + 8))(v41, v94);
    (*(v89 + 8))(v40, v44);
    *&v118 = v44;
    *(&v118 + 1) = v42;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type MiniButtonStyle and conformance MiniButtonStyle();
    v45 = v90;
    v46 = v95;
    View.buttonStyle<A>(_:)();
    (*(v93 + 8))(v43, v46);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v47 = (v45 + *(v15 + 36));
    v48 = v119;
    *v47 = v118;
    v47[1] = v48;
    v47[2] = v120;
    v49 = v113;
    sub_1D38F9BB8(v45, v113);
    (*(v16 + 56))(v49, 0, 1, v15);
    v50 = *(v86 + 8);
    v51 = v98;
    v50(v97, v98);
    v50(v85, v51);
  }

  else
  {
    v35 = v1;
    (*(v16 + 56))(v113, 1, 1, v15);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMd);
  Bindable.wrappedValue.getter();
  v52 = v114;
  swift_getKeyPath();
  v114 = v52;
  _s8PaperKit13MiniMenuStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v53 = *(v52 + 40);

  v54 = v111;
  v56 = v108;
  v55 = v109;
  if ((v53 & 0x80) != 0)
  {
    v71 = v101;
    outlined init with copy of MiniMagicButtons(v35, v101);
    v72 = (*(v99 + 80) + 16) & ~*(v99 + 80);
    v73 = swift_allocObject();
    outlined init with take of MiniMagicButtons(v71, v73 + v72);
    v74 = swift_allocObject();
    *(v74 + 16) = partial apply for closure #3 in MiniMagicButtons.body.getter;
    *(v74 + 24) = v73;
    *(v74 + 32) = 1;
    *(v74 + 40) = 0xD000000000000016;
    *(v74 + 48) = 0x80000001D4084120;
    v66 = v103;
    v75 = v102;
    v76 = &v102[*(v103 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd);
    static ContentShapeKinds.interaction.getter();
    *v76 = 0;
    *v75 = closure #1 in miniButton(systemName:withPadding:_:)partial apply;
    v75[1] = v74;
    v69 = lazy protocol witness table accessor for type ModifiedContent<MiniButton<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>();
    v70 = lazy protocol witness table accessor for type MiniButtonStyle and conformance MiniButtonStyle();
    View.buttonStyle<A>(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v75, &_s7SwiftUI15ModifiedContentVy8PaperKit10MiniButtonVyAA4ViewPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverK0Rd__lFQOyAhAE11buttonStyleyQrqd__AA09PrimitivehQ0Rd__lFQOyACyAA0H0VyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindX0VyAA6CircleVGGAZGGAA010_AlignmentwX0VG_AA05PlainhQ0VQo__AA04LiftoK0VQo_GA6_GMd);
    v60 = v110;
    (*(v55 + 16))(v105, v56, v110);
    goto LABEL_9;
  }

  Bindable.wrappedValue.getter();
  v57 = v114;
  swift_getKeyPath();
  v114 = v57;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v58 = *(v57 + 40);

  v59 = 1;
  v60 = v110;
  if ((v58 & 0x40) != 0)
  {
    v61 = v35;
    v62 = v101;
    outlined init with copy of MiniMagicButtons(v61, v101);
    v63 = (*(v99 + 80) + 16) & ~*(v99 + 80);
    v64 = swift_allocObject();
    outlined init with take of MiniMagicButtons(v62, v64 + v63);
    v65 = swift_allocObject();
    *(v65 + 16) = partial apply for closure #4 in MiniMagicButtons.body.getter;
    *(v65 + 24) = v64;
    *(v65 + 32) = 1;
    *(v65 + 40) = 0xD000000000000016;
    *(v65 + 48) = 0x80000001D4084120;
    v66 = v103;
    v67 = v102;
    v68 = &v102[*(v103 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd);
    static ContentShapeKinds.interaction.getter();
    *v68 = 0;
    *v67 = partial apply for closure #1 in miniButton(systemName:withPadding:_:);
    v67[1] = v65;
    v69 = lazy protocol witness table accessor for type ModifiedContent<MiniButton<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>();
    v70 = lazy protocol witness table accessor for type MiniButtonStyle and conformance MiniButtonStyle();
    View.buttonStyle<A>(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s7SwiftUI15ModifiedContentVy8PaperKit10MiniButtonVyAA4ViewPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverK0Rd__lFQOyAhAE11buttonStyleyQrqd__AA09PrimitivehQ0Rd__lFQOyACyAA0H0VyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindX0VyAA6CircleVGGAZGGAA010_AlignmentwX0VG_AA05PlainhQ0VQo__AA04LiftoK0VQo_GA6_GMd);
    (*(v55 + 16))(v105, v56, v60);
LABEL_9:
    swift_storeEnumTagMultiPayload();
    v114 = v66;
    v115 = &type metadata for MiniButtonStyle;
    v116 = v69;
    v117 = v70;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v55 + 8))(v56, v60);
    v59 = 0;
  }

  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA08ModifiedD0Vy8PaperKit04MiniH0VyAeAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverN0Rd__lFQOyAeAEAFyQrqd__AA09PrimitivehG0Rd__lFQOyAIyAA0H0VyACyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindX0VyAA6CircleVGGA_GGAA010_AlignmentwX0VG_AA05PlainhG0VQo__AA04LiftrN0VQo_GA7_G_AJ0lhG0VQo_A24_GMd);
  (*(*(v77 - 8) + 56))(v54, v59, 1, v77);
  v78 = v113;
  v79 = v107;
  outlined init with copy of Date?(v113, v107, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAeAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAeAE05labelG0yQrqd__AA05LabelG0Rd__lFQOyAA0M0VyAA4TextVACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentS0VGAA14_PaddingLayoutVGAA01_d9ShapeKindS0VyAA6CircleVGGG_AA08IconOnlymG0VQo_AA05TupleE0VyAA0H0VyAPyArTGG_A21_tGG_Qo__8PaperKit04MinihG0VQo_AA06_FrameX0VGSgMd);
  v80 = v112;
  outlined init with copy of Date?(v54, v112, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA08ModifiedD0Vy8PaperKit04MiniH0VyAeAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverN0Rd__lFQOyAeAEAFyQrqd__AA09PrimitivehG0Rd__lFQOyAIyAA0H0VyACyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindX0VyAA6CircleVGGA_GGAA010_AlignmentwX0VG_AA05PlainhG0VQo__AA04LiftrN0VQo_GA7_G_AJ0lhG0VQo_A24_GSgMd);
  v81 = v106;
  outlined init with copy of Date?(v79, v106, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAeAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAeAE05labelG0yQrqd__AA05LabelG0Rd__lFQOyAA0M0VyAA4TextVACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentS0VGAA14_PaddingLayoutVGAA01_d9ShapeKindS0VyAA6CircleVGGG_AA08IconOnlymG0VQo_AA05TupleE0VyAA0H0VyAPyArTGG_A21_tGG_Qo__8PaperKit04MinihG0VQo_AA06_FrameX0VGSgMd);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAeAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAeAE05labelG0yQrqd__AA05LabelG0Rd__lFQOyAA0M0VyAA4TextVACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentS0VGAA14_PaddingLayoutVGAA01_d9ShapeKindS0VyAA6CircleVGGG_AA08IconOnlymG0VQo_AA05TupleE0VyAA0H0VyAPyArTGG_A21_tGG_Qo__8PaperKit04MinihG0VQo_AA06_FrameX0VGSg_AA012_ConditionalD0VyAeAEAFyQrqd__AaGRd__lFQOyACyA25_04MiniH0VyAeAE11hoverEffect_9isEnabledQrqd___SbtAA17CustomHoverEffectRd__lFQOyAeAEAFyQrqd__AA09PrimitivehG0Rd__lFQOyACyA19_yA34_yACyACyA_A4_GA10_GA_GGAA010_AlignmentrS0VG_AA05PlainhG0VQo__AA15LiftHoverEffectVQo_GA10_G_A27_Qo_A56_GSgA25_11MiniDividerVtMd);
  outlined init with copy of Date?(v80, v81 + *(v82 + 48), &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA08ModifiedD0Vy8PaperKit04MiniH0VyAeAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverN0Rd__lFQOyAeAEAFyQrqd__AA09PrimitivehG0Rd__lFQOyAIyAA0H0VyACyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindX0VyAA6CircleVGGA_GGAA010_AlignmentwX0VG_AA05PlainhG0VQo__AA04LiftrN0VQo_GA7_G_AJ0lhG0VQo_A24_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA08ModifiedD0Vy8PaperKit04MiniH0VyAeAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverN0Rd__lFQOyAeAEAFyQrqd__AA09PrimitivehG0Rd__lFQOyAIyAA0H0VyACyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindX0VyAA6CircleVGGA_GGAA010_AlignmentwX0VG_AA05PlainhG0VQo__AA04LiftrN0VQo_GA7_G_AJ0lhG0VQo_A24_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v78, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAeAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAeAE05labelG0yQrqd__AA05LabelG0Rd__lFQOyAA0M0VyAA4TextVACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentS0VGAA14_PaddingLayoutVGAA01_d9ShapeKindS0VyAA6CircleVGGG_AA08IconOnlymG0VQo_AA05TupleE0VyAA0H0VyAPyArTGG_A21_tGG_Qo__8PaperKit04MinihG0VQo_AA06_FrameX0VGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v80, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA08ModifiedD0Vy8PaperKit04MiniH0VyAeAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverN0Rd__lFQOyAeAEAFyQrqd__AA09PrimitivehG0Rd__lFQOyAIyAA0H0VyACyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindX0VyAA6CircleVGGA_GGAA010_AlignmentwX0VG_AA05PlainhG0VQo__AA04LiftrN0VQo_GA7_G_AJ0lhG0VQo_A24_GSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v79, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAeAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAeAE05labelG0yQrqd__AA05LabelG0Rd__lFQOyAA0M0VyAA4TextVACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentS0VGAA14_PaddingLayoutVGAA01_d9ShapeKindS0VyAA6CircleVGGG_AA08IconOnlymG0VQo_AA05TupleE0VyAA0H0VyAPyArTGG_A21_tGG_Qo__8PaperKit04MinihG0VQo_AA06_FrameX0VGSgMd);
}

uint64_t closure #1 in MiniMagicButtons.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v84 = a3;
  v90 = a4;
  v95 = type metadata accessor for FBKSEvaluation.Action();
  v6 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v92 = v7;
  v93 = &countAndFlagsBits - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MiniMagicButtons();
  v80 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v85 = v9;
  v91 = &countAndFlagsBits - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd);
  v89 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v88 = &countAndFlagsBits - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v87 = &countAndFlagsBits - v12;
  MEMORY[0x1EEE9AC00](v13);
  v86 = &countAndFlagsBits - v14;
  MEMORY[0x1EEE9AC00](v15);
  v94 = &countAndFlagsBits - v16;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v17.value._object = 0xEB00000000656C62;
  v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v98._object = 0x80000001D4092700;
  v18._countAndFlagsBits = 0x6F4720736B6F6F4CLL;
  v18._object = 0xEA0000000000646FLL;
  v82.super.isa = paperKitBundle.super.isa;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v97._countAndFlagsBits = 0xD00000000000002FLL;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v17, paperKitBundle, v19, v97);
  countAndFlagsBits = v20._countAndFlagsBits;
  object = v20._object;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMd);
  Bindable.wrappedValue.getter();
  v21 = v96._countAndFlagsBits;
  swift_getKeyPath();
  v96._countAndFlagsBits = v21;
  v79 = _s8PaperKit13MiniMenuStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = *(v21 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__feedbackAction);
  v22 = *(v21 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__feedbackAction + 8);

  v24 = FBKSEvaluation.Action.description.getter();
  if (v22)
  {
    if (v23 == v24 && v22 == v25)
    {
      v26 = 1;
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = specialized FeedbackManager.feedbackImageName(action:hasResponse:)(a2, v26 & 1);
  v28 = v91;
  outlined init with copy of MiniMagicButtons(a1, v91);
  v29 = v6;
  v30 = v93;
  v31 = a2;
  v32 = v95;
  v77 = *(v6 + 16);
  v78 = v6 + 16;
  v77(v93, v31, v95);
  v33 = *(v80 + 80);
  v34 = (v33 + 16) & ~v33;
  v35 = *(v6 + 80);
  v36 = (v85 + v35 + v34) & ~v35;
  v75 = v33 | v35;
  v37 = swift_allocObject();
  v80 = v34;
  outlined init with take of MiniMagicButtons(v28, v37 + v34);
  v38 = *(v29 + 32);
  v85 = v29 + 32;
  v74 = v38;
  v39 = v38(v37 + v36, v30, v32);
  v96._countAndFlagsBits = countAndFlagsBits;
  v96._object = object;
  MEMORY[0x1EEE9AC00](v39);
  *(&countAndFlagsBits - 4) = &v96;
  *(&countAndFlagsBits - 3) = v27;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  countAndFlagsBits = v40;
  Button.init(action:label:)();

  v98._object = 0x80000001D4092750;
  v41._object = 0x80000001D4092730;
  v98._countAndFlagsBits = 0xD000000000000032;
  v41._countAndFlagsBits = 0x1000000000000017;
  v42.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v42.value._object = 0xEB00000000656C62;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, v42, v82, v43, v98);
  Bindable.wrappedValue.getter();
  v45 = v96._countAndFlagsBits;
  swift_getKeyPath();
  v96._countAndFlagsBits = v45;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v47 = *(v45 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__feedbackAction);
  v46 = *(v45 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__feedbackAction + 8);

  v48 = v84;
  v49 = FBKSEvaluation.Action.description.getter();
  if (v46)
  {
    if (v47 == v49 && v46 == v50)
    {
      v51 = 1;
    }

    else
    {
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v51 = 0;
  }

  v52 = specialized FeedbackManager.feedbackImageName(action:hasResponse:)(v48, v51 & 1);
  v54 = v53;
  v55 = a1;
  v56 = v91;
  outlined init with copy of MiniMagicButtons(v55, v91);
  v57 = v93;
  v58 = v48;
  v59 = v95;
  v77(v93, v58, v95);
  v60 = swift_allocObject();
  outlined init with take of MiniMagicButtons(v56, v60 + v80);
  v61 = v74(v60 + v36, v57, v59);
  v96 = v44;
  MEMORY[0x1EEE9AC00](v61);
  *(&countAndFlagsBits - 4) = &v96;
  *(&countAndFlagsBits - 3) = v52;
  v98._object = v54;
  v62 = v86;
  Button.init(action:label:)();

  v63 = v89;
  v64 = *(v89 + 16);
  v65 = v87;
  v66 = v94;
  v67 = v83;
  v64(v87, v94, v83);
  v68 = v88;
  v64(v88, v62, v67);
  v69 = v90;
  v64(v90, v65, v67);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AKtMd);
  v64(&v69[*(v70 + 48)], v68, v67);
  v71 = *(v63 + 8);
  v71(v62, v67);
  v71(v66, v67);
  v71(v68, v67);
  return (v71)(v65, v67);
}

void closure #1 in closure #1 in MiniMagicButtons.body.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMd);
  Bindable.wrappedValue.getter();
  v3 = FBKSEvaluation.Action.description.getter();
  MiniMenuState.feedbackAction.setter(v3, v4);

  type metadata accessor for MiniMagicButtons();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_unknownObjectWeakLoadStrong();

    if (v7)
    {
      CanvasElementResizeView.miniMenuSendFeedback(action:)(a2);
    }
  }
}

uint64_t closure #2 in MiniMagicButtons.body.getter()
{
  v0 = type metadata accessor for IconOnlyLabelStyle();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentK0VGAA14_PaddingLayoutVGAA01_f9ShapeKindK0VyAA6CircleVGGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>();
  Label.init(title:icon:)();
  IconOnlyLabelStyle.init()();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Label<Text, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentK0VGAA14_PaddingLayoutVGAA01_f9ShapeKindK0VyAA6CircleVGGGMd);
  _s8PaperKit13MiniMenuStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle, MEMORY[0x1E697C4E8]);
  View.labelStyle<A>(_:)();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t closure #1 in closure #2 in MiniMagicButtons.body.getter@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t closure #2 in closure #2 in MiniMagicButtons.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v26 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18MiniMenuControllerCyAA0cD7PaletteVGMd);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = Image.init(_:bundle:)();
  if (one-time initialization token for buttonFontSize != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Font.Design();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = static Font.system(size:weight:design:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s7SwiftUI4FontV6DesignOSgMd);
  KeyPath = swift_getKeyPath();
  v26[1] = v10;
  v26[2] = KeyPath;
  v26[3] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityIdentifier(_:)();

  v14 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  outlined init with copy of ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>(v7, a1);
  v23 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGMd) + 36);
  *v23 = v14;
  *(v23 + 8) = v16;
  *(v23 + 16) = v18;
  *(v23 + 24) = v20;
  *(v23 + 32) = v22;
  *(v23 + 40) = 0;
  v24 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd);
  static ContentShapeKinds.interaction.getter();
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd);
  *v24 = 0;
  return result;
}

void closure #3 in MiniMagicButtons.body.getter(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for MiniMagicButtons();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      a2();
    }
  }
}

uint64_t outlined init with copy of MiniMagicButtons(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MiniMagicButtons();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of MiniMagicButtons(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MiniMagicButtons();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MiniButton<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MiniButton<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MiniButton<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy8PaperKit10MiniButtonVyAA4ViewPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverK0Rd__lFQOyAhAE11buttonStyleyQrqd__AA09PrimitivehQ0Rd__lFQOyACyAA0H0VyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindX0VyAA6CircleVGGAZGGAA010_AlignmentwX0VG_AA05PlainhQ0VQo__AA04LiftoK0VQo_GA6_GMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type MiniButton<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0> and conformance MiniButton<A>, &_s8PaperKit10MiniButtonVy7SwiftUI4ViewPADE11hoverEffect_9isEnabledQrqd___SbtAD011CustomHoverI0Rd__lFQOyAfDE11buttonStyleyQrqd__AD09PrimitivedO0Rd__lFQOyAD15ModifiedContentVyAD0D0VyAD012_ConditionalR0VyAMyAMyAMyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD4FontVSgGGAD14_PaddingLayoutVGAD01_r9ShapeKindX0VyAD6CircleVGGAZGGAD010_AlignmentwX0VG_AD05PlaindO0VQo__AD04LiftmI0VQo_GMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<Circle> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MiniButton<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{
  v1 = (type metadata accessor for MiniMagicButtons() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMd);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  MEMORY[0x1DA6D07B0](v0 + v3 + v1[7]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_3Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<Circle> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s8PaperKit13MiniMenuStateCAC11Observation10ObservableAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_24Tm()
{
  v1 = (type metadata accessor for MiniMagicButtons() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for FBKSEvaluation.Action();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMd);
  (*(*(v11 - 8) + 8))(v0 + v3, v11);
  MEMORY[0x1DA6D07B0](v0 + v3 + v1[7]);

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v10 | 7);
}

void partial apply for closure #1 in closure #1 in MiniMagicButtons.body.getter()
{
  v1 = *(type metadata accessor for MiniMagicButtons() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for FBKSEvaluation.Action() - 8);
  closure #1 in closure #1 in MiniMagicButtons.body.getter(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t CropHUDView.body.getter@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a3;
  v71 = a4;
  v69 = a2;
  v5 = type metadata accessor for Material._GlassVariant();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v58 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA8MaterialVGGGMd);
  MEMORY[0x1EEE9AC00](v61);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAHyAHyAA4TextVAA14_PaddingLayoutVGALGAA19_BackgroundModifierVyAA06_ShapeC0VyAA7CapsuleVAA8MaterialVGGG_SbQo_Md);
  v67 = *(v13 - 8);
  v68 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v58 - v14;
  swift_getKeyPath();
  v63 = OBJC_IVAR____TtCC8PaperKit14CropResizeView8HUDState___observationRegistrar;
  v72 = a1;
  v62 = lazy protocol witness table accessor for type CropResizeView.HUDState and conformance CropResizeView.HUDState(&lazy protocol witness table cache variable for type CropResizeView.HUDState and conformance CropResizeView.HUDState, type metadata accessor for CropResizeView.HUDState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(a1 + 32);
  v72 = *(a1 + 24);
  v73 = v15;
  lazy protocol witness table accessor for type String and conformance String();

  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  v21 = type metadata accessor for Font.Design();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  static Font.system(size:weight:design:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s7SwiftUI4FontV6DesignOSgMd);
  Font.monospacedDigit()();

  v60 = Text.font(_:)();
  v23 = v22;
  LOBYTE(v15) = v24;
  v59 = v25;

  outlined consume of Text.Storage(v16, v18, v20 & 1);

  v26 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v15 & 1;
  v75 = v15 & 1;
  v74 = 0;
  LOBYTE(v16) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  LOBYTE(v72) = 0;
  v44 = &v12[*(v61 + 36)];
  v45 = *MEMORY[0x1E697F468];
  v46 = type metadata accessor for RoundedCornerStyle();
  (*(*(v46 - 8) + 104))(v44, v45, v46);
  static Material._GlassVariant.regular.getter();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA7CapsuleVAA8MaterialVGMd);
  static Material._glass(_:)();
  (*(v64 + 8))(v7, v65);
  *&v44[*(v47 + 56)] = 256;
  v48 = static Alignment.center.getter();
  v50 = v49;
  v51 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA8MaterialVGGMd) + 36)];
  *v51 = v48;
  v51[1] = v50;
  *v12 = v60;
  *(v12 + 1) = v23;
  v12[16] = v35;
  *(v12 + 3) = v59;
  v12[32] = v26;
  *(v12 + 5) = v28;
  *(v12 + 6) = v30;
  *(v12 + 7) = v32;
  *(v12 + 8) = v34;
  v12[72] = 0;
  v12[80] = v16;
  *(v12 + 11) = v37;
  *(v12 + 12) = v39;
  *(v12 + 13) = v41;
  *(v12 + 14) = v43;
  v12[120] = 0;
  swift_getKeyPath();
  v72 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v72) = *(a1 + 16);
  v52 = swift_allocObject();
  *(v52 + 16) = a1;
  LOBYTE(v44) = v69;
  *(v52 + 24) = v69;
  v53 = v70;
  *(v52 + 32) = v70;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Material>>> and conformance <> ModifiedContent<A, B>();

  v54 = v66;
  View.onChange<A>(of:initial:_:)();

  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA8MaterialVGGGMd);
  LOBYTE(v72) = v44;
  v73 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  if (v75)
  {
    v55 = 1.0;
  }

  else
  {
    v55 = 0.0;
  }

  v56 = v71;
  (*(v67 + 32))(v71, v54, v68);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyACyACyAA4TextVAA14_PaddingLayoutVGALGAA19_BackgroundModifierVyAA06_ShapeE0VyAA7CapsuleVAA8MaterialVGGG_SbQo_AA14_OpacityEffectVGMd);
  *(v56 + *(result + 36)) = v55;
  return result;
}

uint64_t closure #1 in CropHUDView.body.getter()
{
  static Animation.easeOut(duration:)();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in CropHUDView.body.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CropResizeView.HUDState and conformance CropResizeView.HUDState(&lazy protocol witness table cache variable for type CropResizeView.HUDState and conformance CropResizeView.HUDState, type metadata accessor for CropResizeView.HUDState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  return State.wrappedValue.setter();
}

uint64_t CropResizeView.HUDState.hudIsVisible.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CropResizeView.HUDState and conformance CropResizeView.HUDState(&lazy protocol witness table cache variable for type CropResizeView.HUDState and conformance CropResizeView.HUDState, type metadata accessor for CropResizeView.HUDState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t key path getter for CropResizeView.HUDState.hudIsVisible : CropResizeView.HUDState@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type CropResizeView.HUDState and conformance CropResizeView.HUDState(&lazy protocol witness table cache variable for type CropResizeView.HUDState and conformance CropResizeView.HUDState, type metadata accessor for CropResizeView.HUDState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t CropResizeView.HUDState.hudIsVisible.setter(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type CropResizeView.HUDState and conformance CropResizeView.HUDState(&lazy protocol witness table cache variable for type CropResizeView.HUDState and conformance CropResizeView.HUDState, type metadata accessor for CropResizeView.HUDState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t CropResizeView.HUDState.hudString.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CropResizeView.HUDState and conformance CropResizeView.HUDState(&lazy protocol witness table cache variable for type CropResizeView.HUDState and conformance CropResizeView.HUDState, type metadata accessor for CropResizeView.HUDState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);

  return v1;
}

uint64_t key path getter for CropResizeView.HUDState.hudString : CropResizeView.HUDState@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type CropResizeView.HUDState and conformance CropResizeView.HUDState(&lazy protocol witness table cache variable for type CropResizeView.HUDState and conformance CropResizeView.HUDState, type metadata accessor for CropResizeView.HUDState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t CropResizeView.HUDState.hudString.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type CropResizeView.HUDState and conformance CropResizeView.HUDState(&lazy protocol witness table cache variable for type CropResizeView.HUDState and conformance CropResizeView.HUDState, type metadata accessor for CropResizeView.HUDState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t CropResizeView.HUDState.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC8PaperKit14CropResizeView8HUDState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t closure #1 in CropResizeView.init(frame:canvas:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  type metadata accessor for Image(0);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[20] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[21] = v8;
  v5[22] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in CropResizeView.init(frame:canvas:), v8, v7);
}

uint64_t closure #1 in CropResizeView.init(frame:canvas:)()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[12];
  v5 = direct field offset for Canvas.paperView;
  v0[23] = direct field offset for Canvas.paperView;
  v6 = *(v4 + v5);
  v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x3F0);
  swift_beginAccess();
  v8 = *(v3 + 16);
  v0[24] = v8;
  v0[25] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, &v6[v7], v2);
  Capsule.root.getter();
  v9 = *(v3 + 8);
  v0[26] = v9;
  v0[27] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v2);
  v10 = swift_task_alloc();
  v0[28] = v10;
  *v10 = v0;
  v10[1] = closure #1 in CropResizeView.init(frame:canvas:);

  return Image.imageSize(applyingCrop:)(1);
}

{
  v1 = *(v0 + 232);

  if (v1 > 0.0)
  {
    v2 = *(v0 + 232);
    v3 = *(v0 + 208);
    v4 = *(v0 + 192);
    v5 = *(v0 + 144);
    v6 = *(v0 + 128);
    v7 = *(v0 + 112);
    v15 = *(v0 + 104);
    v8 = *(*(v0 + 96) + *(v0 + 184));
    v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x3F0);
    swift_beginAccess();
    v4(v5, &v8[v9], v6);
    Capsule.root.getter();
    v3(v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();
    outlined destroy of Image(v7);
    v10 = *(v0 + 32) / v2;
    if (v10 > 0.0 && v10 != *(v15 + OBJC_IVAR____TtC8PaperKit14CropResizeView_downsampleScale))
    {
      v12 = *(v0 + 104);
      *(v15 + OBJC_IVAR____TtC8PaperKit14CropResizeView_downsampleScale) = v10;
      [v12 setNeedsLayout];
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in CropResizeView.init(frame:canvas:)(double a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;

  v4 = *(v3 + 120);
  if (v1)
  {

    outlined destroy of Image(v4);
    v5 = *(v3 + 168);
    v6 = *(v3 + 176);
    v7 = closure #1 in CropResizeView.init(frame:canvas:);
  }

  else
  {
    outlined destroy of Image(v4);
    v5 = *(v3 + 168);
    v6 = *(v3 + 176);
    v7 = closure #1 in CropResizeView.init(frame:canvas:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

Swift::Void __swiftcall CropResizeView.layoutSubviews()()
{
  p_t1 = &t1;
  v237.receiver = v0;
  v237.super_class = type metadata accessor for CropResizeView(0);
  objc_msgSendSuper2(&v237, sel_layoutSubviews);
  v3 = *&v0[OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace + 32];
  v4 = *&v0[OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace + 40];
  v223 = *&v0[OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace + 16];
  v228 = *&v0[OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace];
  v220 = &v0[OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace];
  ResizeView.modelToViewTransform.getter(&v238);
  *&t1.a = v228;
  *&t1.c = v223;
  t1.tx = v3;
  t1.ty = v4;
  t2 = v238;
  CGAffineTransformConcat(&v236, &t1, &t2);
  a = v236.a;
  d = v236.d;
  tx = v236.tx;
  ty = v236.ty;
  if (v236.a < 0.0)
  {
    tx = v236.a + v236.tx;
    a = -v236.a;
  }

  if (v236.d < 0.0)
  {
    ty = v236.d + v236.ty;
  }

  *&t1.b = *&v236.b;
  if (v236.d < 0.0)
  {
    d = -v236.d;
  }

  t1.a = a;
  t1.d = d;
  t1.tx = tx;
  t1.ty = ty;
  v243.origin.x = 0.0;
  v243.origin.y = 0.0;
  v243.size.width = 1.0;
  v243.size.height = 1.0;
  v244 = CGRectApplyAffineTransform(v243, &t1);
  v9 = *&v0[OBJC_IVAR____TtC8PaperKit10ResizeView_borderView];
  v10 = &off_1E845F000;
  [v0 convertRect:v9 toCoordinateSpace:{v244.origin.x, v244.origin.y, v244.size.width, v244.size.height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  CropResizeView.editingViewBounds.getter();
  [v0 convertRect:v9 toCoordinateSpace:{0.0, 0.0}];
  v222 = v0;
  v23 = *&v0[OBJC_IVAR____TtC8PaperKit14CropResizeView_marchingAntsLayers];
  if (!(v23 >> 62))
  {
    v221 = v9;
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_44;
    }

LABEL_9:
    v24 = v22;
    v25 = v21;
    v26 = v20;
    v27 = v19;
    CropResizeView.editingViewBounds.getter();
    if (CGRect.isFinite.getter(0.0, 0.0, v28, v29))
    {
      v245.origin.x = v27;
      v245.origin.y = v26;
      v245.size.width = v25;
      v245.size.height = v24;
      v30 = CGPathCreateWithRect(v245, 0);
    }

    else
    {
      v30 = 0;
    }

    v10 = *&v0[OBJC_IVAR____TtC8PaperKit14CropResizeView_maskLayers];
    v229 = v23;
    if (v10 >> 62)
    {
      v31 = __CocoaSet.count.getter();
      if (!v31)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v31 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
        goto LABEL_23;
      }
    }

    if (v31 < 1)
    {
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    v32 = 0;
    v9 = (v10 & 0xC000000000000001);
    do
    {
      if (v9)
      {
        v33 = MEMORY[0x1DA6CE0C0](v32, v10);
      }

      else
      {
        v33 = *(v10 + 8 * v32 + 32);
      }

      v1 = v33;
      ++v32;
      [v33 setPath_];
    }

    while (v31 != v32);
LABEL_23:
    CropResizeView.editingViewBounds.getter();
    if (CGRect.isFinite.getter(0.0, 0.0, v39, v40))
    {
      v246.origin.x = v12;
      v246.origin.y = v14;
      v246.size.width = v16;
      v246.size.height = v18;
      v224 = CGPathCreateWithRect(v246, 0);
    }

    else
    {
      v224 = 0;
    }

    v41 = v23;
    v219 = v30;
    if (v23 >> 62)
    {
      p_t1 = __CocoaSet.count.getter();
      if (!p_t1)
      {
LABEL_43:

        p_t1 = &t1;
        v10 = &off_1E845F000;
        goto LABEL_44;
      }
    }

    else
    {
      p_t1 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!p_t1)
      {
        goto LABEL_43;
      }
    }

    v9 = (v23 & 0xFFFFFFFFFFFFFF8);
    v42 = v10 & 0xC000000000000001;
    v43 = v10 & 0xFFFFFFFFFFFFFF8;
    v44 = 4;
    while (1)
    {
      v45 = v44 - 4;
      if ((v229 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x1DA6CE0C0](v44 - 4, v41);
      }

      else
      {
        if (v45 >= *((v229 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v46 = *(v41 + 8 * v44);
      }

      v1 = v46;
      v47 = v44 - 3;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      [v46 setPath_];
      if (v42)
      {
        v53 = v1;
        v50 = MEMORY[0x1DA6CE0C0](v44 - 4, v10);
      }

      else
      {
        if (v45 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_78;
        }

        v48 = *(v10 + 8 * v44);
        v49 = v1;
        v50 = v48;
      }

      v51 = v50;
      [v1 setMask_];

      [v1 setInvertsMask_];
      ++v44;
      v52 = v47 == p_t1;
      v41 = v229;
      if (v52)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v34 = v19;
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v38 = __CocoaSet.count.getter();
  v22 = v37;
  v21 = v36;
  v20 = v35;
  v19 = v34;
  v221 = v9;
  if (v38)
  {
    goto LABEL_9;
  }

LABEL_44:
  v1 = v222;
  v43 = *&v222[OBJC_IVAR____TtC8PaperKit14CropResizeView_boundedMarchingAntsLayers];
  v42 = v43 >> 62;
  if (!(v43 >> 62))
  {
    v54 = v220;
    if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_80;
    }

    goto LABEL_46;
  }

LABEL_79:
  v54 = v220;
  if (!__CocoaSet.count.getter())
  {
    goto LABEL_80;
  }

LABEL_46:
  v55 = v54[4];
  v56 = v54[5];
  v225 = *(v54 + 1);
  v230 = *v54;
  ResizeView.modelToViewTransform.getter(&t2);
  *&t1.a = v230;
  *&t1.c = v225;
  t1.tx = v55;
  t1.ty = v56;
  v236 = t2;
  CGAffineTransformConcat(&v235, &t1, &v236);
  v57 = v235.a;
  v58 = v235.d;
  v59 = v235.tx;
  v60 = v235.ty;
  if (v235.a < 0.0)
  {
    v59 = v235.a + v235.tx;
    v57 = -v235.a;
  }

  if (v235.d < 0.0)
  {
    v60 = v235.d + v235.ty;
  }

  *(p_t1 + 8) = *&v235.b;
  if (v58 < 0.0)
  {
    v58 = -v58;
  }

  t1.a = v57;
  t1.d = v58;
  t1.tx = v59;
  t1.ty = v60;
  v247.origin.x = 0.0;
  v247.origin.y = 0.0;
  v247.size.width = 1.0;
  v247.size.height = 1.0;
  v248 = CGRectApplyAffineTransform(v247, &t1);
  x = v248.origin.x;
  y = v248.origin.y;
  width = v248.size.width;
  height = v248.size.height;
  CropResizeView.editingViewBounds.getter();
  v280.size.width = v65;
  v280.size.height = v66;
  v280.origin.x = 0.0;
  v280.origin.y = 0.0;
  v249.origin.x = x;
  v249.origin.y = y;
  v249.size.width = width;
  v249.size.height = height;
  v250 = CGRectIntersection(v249, v280);
  v67 = v250.origin.x;
  v68 = v250.origin.y;
  v69 = v250.size.width;
  v70 = v250.size.height;
  [v1 *(v10 + 2208)];
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  if (v42)
  {
    v79 = __CocoaSet.count.getter();
    if (!v79)
    {
      goto LABEL_80;
    }

    goto LABEL_56;
  }

  v79 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v79)
  {
LABEL_56:
    if (v79 < 1)
    {
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    v42 = 0;
    v82 = (*&v67 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v68 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v69 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v70 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
    v9 = (v43 & 0xC000000000000001);
    v83 = !v82;
    do
    {
      if (v9)
      {
        v10 = MEMORY[0x1DA6CE0C0](v42, v43);
        if (v83)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v10 = *(v43 + 8 * v42 + 32);
        if (v83)
        {
LABEL_75:
          v84 = 0;
          goto LABEL_70;
        }
      }

      v251.origin.x = v72;
      v251.origin.y = v74;
      v251.size.width = v76;
      v251.size.height = v78;
      v84 = CGPathCreateWithRect(v251, 0);
LABEL_70:
      ++v42;
      [v10 setPath_];
    }

    while (v79 != v42);
  }

LABEL_80:
  v85 = OBJC_IVAR____TtC8PaperKit14CropResizeView_occludingViews;
  v86 = *&v1[OBJC_IVAR____TtC8PaperKit14CropResizeView_occludingViews];
  if (!(v86 >> 62))
  {
    if (!*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_95;
    }

LABEL_82:
    v87 = *&v1[v85];
    if ((v87 & 0xC000000000000001) != 0)
    {

      v89 = MEMORY[0x1DA6CE0C0](0, v87);

      v88 = v221;
    }

    else
    {
      v88 = v221;
      if (!*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_168;
      }

      v89 = *(v87 + 32);
    }

    v9 = &selRef_PDFView;
    [v1 bounds];
    v90 = CGRectGetWidth(v252);
    v42 = &selRef_PDFView;
    [v88 frame];
    MinY = CGRectGetMinY(v253);
    [v1 bounds];
    v281.origin.x = v92;
    v281.origin.y = v93;
    v281.size.width = v94;
    v281.size.height = v95;
    v254.origin.x = 0.0;
    v254.origin.y = 0.0;
    v254.size.width = v90;
    v254.size.height = MinY;
    v255 = CGRectIntersection(v254, v281);
    v10 = &selRef_PDFView;
    [v89 setFrame_];

    v96 = *&v1[v85];
    if ((v96 & 0xC000000000000001) != 0)
    {

      v97 = MEMORY[0x1DA6CE0C0](1, v96);
    }

    else
    {
      if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
        goto LABEL_170;
      }

      v97 = *(v96 + 40);
    }

    [v88 frame];
    MaxY = CGRectGetMaxY(v256);
    [v1 bounds];
    v99 = CGRectGetWidth(v257);
    [v1 bounds];
    v100 = CGRectGetMaxY(v258);
    [v88 frame];
    v101 = v100 - CGRectGetMaxY(v259);
    [v1 bounds];
    v282.origin.x = v102;
    v282.origin.y = v103;
    v282.size.width = v104;
    v282.size.height = v105;
    v260.origin.x = 0.0;
    v260.origin.y = MaxY;
    v260.size.width = v99;
    v260.size.height = v101;
    v261 = CGRectIntersection(v260, v282);
    [v97 setFrame_];

    v87 = *&v1[v85];
    if ((v87 & 0xC000000000000001) == 0)
    {
      if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        __break(1u);
LABEL_172:
        __break(1u);
        goto LABEL_173;
      }

      v106 = *(v87 + 48);
      goto LABEL_91;
    }

LABEL_168:

    v106 = MEMORY[0x1DA6CE0C0](2, v87);

LABEL_91:
    [v88 *(v42 + 1912)];
    v107 = CGRectGetMinY(v262);
    [v88 *(v42 + 1912)];
    MinX = CGRectGetMinX(v263);
    [v88 *(v42 + 1912)];
    v109 = CGRectGetHeight(v264);
    [v1 v9[115]];
    v283.origin.x = v110;
    v283.origin.y = v111;
    v283.size.width = v112;
    v283.size.height = v113;
    v265.origin.x = 0.0;
    v265.origin.y = v107;
    v265.size.width = MinX;
    v265.size.height = v109;
    v266 = CGRectIntersection(v265, v283);
    [v106 *(v10 + 3976)];

    v96 = *&v1[v85];
    if ((v96 & 0xC000000000000001) == 0)
    {
      if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
      {
        v114 = *(v96 + 56);
LABEL_94:
        [v88 *(v42 + 1912)];
        MaxX = CGRectGetMaxX(v267);
        [v88 *(v42 + 1912)];
        v116 = CGRectGetMinY(v268);
        [v1 v9[115]];
        v117 = CGRectGetMaxX(v269);
        [v88 *(v42 + 1912)];
        v118 = v117 - CGRectGetMaxX(v270);
        [v88 *(v42 + 1912)];
        v119 = CGRectGetHeight(v271);
        [v1 v9[115]];
        v284.origin.x = v120;
        v284.origin.y = v121;
        v284.size.width = v122;
        v284.size.height = v123;
        v272.origin.x = MaxX;
        v272.origin.y = v116;
        v272.size.width = v118;
        v272.size.height = v119;
        v273 = CGRectIntersection(v272, v284);
        [v114 *(v10 + 3976)];

        goto LABEL_95;
      }

      goto LABEL_172;
    }

LABEL_170:

    v114 = MEMORY[0x1DA6CE0C0](3, v96);

    goto LABEL_94;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_82;
  }

LABEL_95:
  v124 = *&v1[OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle];
  if (v124)
  {
    if (v124 == 1)
    {
      v125 = v54[4];
      v126 = v54[5];
      v226 = *(v54 + 1);
      v231 = *v54;
      ResizeView.modelToViewTransform.getter(&t1);
      *&v236.a = v231;
      *&v236.c = v226;
      v236.tx = v125;
      v236.ty = v126;
      v235 = t1;
      CGAffineTransformConcat(&v234, &v236, &v235);
      v127 = v234.a;
      v128 = v234.tx;
      v129 = v234.ty;
      if (v234.a < 0.0)
      {
        v128 = v234.a + v234.tx;
        v127 = -v234.a;
      }

      if (v234.d < 0.0)
      {
        v129 = v234.d + v234.ty;
      }

      v236.a = v127;
      if (v234.d >= 0.0)
      {
        v130 = v234.d;
      }

      else
      {
        v130 = -v234.d;
      }

      *&v236.b = *&v234.b;
      v236.d = v130;
      v236.tx = v128;
      v236.ty = v129;
      v241.x = 0.0;
      v241.y = 0.0;
      v131 = CGPointApplyAffineTransform(v241, &v236);
      v132 = floor(v131.x);
      v133 = ceil(v131.x);
      if (v131.x - v132 < 0.49)
      {
        v133 = v132;
      }

      v232 = v133;
      v134 = floor(v131.y);
      v135 = ceil(v131.y);
      if (v131.y - v134 < 0.49)
      {
        v136 = v134;
      }

      else
      {
        v136 = v135;
      }

      CropResizeView.scaledSelectionRect.getter();
      v138 = v137;
      v140 = v139;
      [v1 bounds];
      v141 = *&v1[OBJC_IVAR____TtC8PaperKit14CropResizeView_initialZoomScale];
      v274.origin.x = v146 / v141;
      v142 = v274.origin.x;
      v274.origin.y = v147 / v141;
      v143 = v274.origin.y;
      v274.size.width = v148 / v141;
      v144 = v274.size.width;
      v274.size.height = v149 / v141;
      v145 = v274.size.height;
      v150 = CGRectGetMinX(v274);
      v275.origin.x = v142;
      v275.origin.y = v143;
      v275.size.width = v144;
      v275.size.height = v145;
      v151 = CGRectGetMaxX(v275);
      if (v150 > v138)
      {
        v152 = v150;
      }

      else
      {
        v152 = v138;
      }

      if (v152 >= v151)
      {
        v153 = v151;
      }

      else
      {
        v153 = v152;
      }

      v276.origin.x = v142;
      v276.origin.y = v143;
      v276.size.width = v144;
      v276.size.height = v145;
      v154 = CGRectGetMinY(v276);
      v277.origin.x = v142;
      v277.origin.y = v143;
      v277.size.width = v144;
      v277.size.height = v145;
      v155 = CGRectGetMaxY(v277);
      if (v154 > v140)
      {
        v156 = v154;
      }

      else
      {
        v156 = v140;
      }

      if (v156 >= v155)
      {
        v157 = v155;
      }

      else
      {
        v157 = v156;
      }

      v158 = OBJC_IVAR____TtC8PaperKit14CropResizeView_downsampleScale;
      v159 = round(v153 / *&v1[OBJC_IVAR____TtC8PaperKit14CropResizeView_downsampleScale]);
      if ((*&v159 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v159 > -9.22337204e18)
        {
          if (v159 < 9.22337204e18)
          {
            v160 = *&v1[OBJC_IVAR____TtC8PaperKit14CropResizeView_hudState];
            *&v235.a = v159;
            *&v236.a = dispatch thunk of CustomStringConvertible.description.getter();
            v236.b = v161;
            MEMORY[0x1DA6CD010](2108448, 0xE300000000000000);
            v162 = round(v157 / *&v1[v158]);
            if ((*&v162 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v162 > -9.22337204e18)
              {
                if (v162 < 9.22337204e18)
                {
                  *&v235.a = v162;
                  v163 = dispatch thunk of CustomStringConvertible.description.getter();
                  MEMORY[0x1DA6CD010](v163);

                  CropResizeView.HUDState.hudString.setter(*&v236.a, *&v236.b);
                  if (*(*&v160 + 16) == 1)
                  {
                    *(*&v160 + 16) = 1;
                  }

                  else
                  {
                    KeyPath = swift_getKeyPath();
                    MEMORY[0x1EEE9AC00](KeyPath);
                    v236.a = v160;
                    lazy protocol witness table accessor for type CropResizeView.HUDState and conformance CropResizeView.HUDState(&lazy protocol witness table cache variable for type CropResizeView.HUDState and conformance CropResizeView.HUDState, type metadata accessor for CropResizeView.HUDState);
                    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
                  }

                  v199 = *&v1[OBJC_IVAR____TtC8PaperKit14CropResizeView_hudView];
                  if (v199)
                  {
                    v200 = v199;
                    [v200 intrinsicContentSize];
                    [v200 setFrame_];

                    return;
                  }

                  goto LABEL_187;
                }

                goto LABEL_185;
              }

              goto LABEL_183;
            }

            goto LABEL_181;
          }

          goto LABEL_179;
        }

        goto LABEL_177;
      }

      goto LABEL_175;
    }

    v166 = v54[4];
    v167 = v54[5];
    v168 = v124;
    v227 = *(v54 + 1);
    v233 = *v54;
    ResizeView.modelToViewTransform.getter(&t1);
    *&v236.a = v233;
    *&v236.c = v227;
    v236.tx = v166;
    v236.ty = v167;
    v235 = t1;
    CGAffineTransformConcat(&v234, &v236, &v235);
    v169 = v168[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type];
    *&v242.x = qword_1D407A938[v169];
    *&v242.y = qword_1D407A978[v169];
    v236 = v234;
    v170 = CGPointApplyAffineTransform(v242, &v236);
    v171 = floor(v170.x);
    v172 = ceil(v170.x);
    if (v170.x - v171 < 0.49)
    {
      v173 = v171;
    }

    else
    {
      v173 = v172;
    }

    v174 = floor(v170.y);
    v175 = ceil(v170.y);
    if (v170.y - v174 < 0.49)
    {
      v176 = v174;
    }

    else
    {
      v176 = v175;
    }

    if ((v169 - 1) >= 5u)
    {
      v177 = -1.0;
    }

    else
    {
      v177 = 1.0;
    }

    CropResizeView.scaledSelectionRect.getter();
    v179 = v178;
    v181 = v180;
    v183 = v182;
    v185 = v184;
    [v1 bounds];
    v186 = *&v1[OBJC_IVAR____TtC8PaperKit14CropResizeView_initialZoomScale];
    v285.origin.x = v187 / v186;
    v285.origin.y = v188 / v186;
    v285.size.width = v189 / v186;
    v285.size.height = v190 / v186;
    v278.origin.x = v179;
    v278.origin.y = v181;
    v278.size.width = v183;
    v278.size.height = v185;
    v279 = CGRectIntersection(v278, v285);
    v191 = OBJC_IVAR____TtC8PaperKit14CropResizeView_downsampleScale;
    v192 = round(v279.size.width / *&v1[OBJC_IVAR____TtC8PaperKit14CropResizeView_downsampleScale]);
    if ((*&v192 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_176;
    }

    if (v192 <= -9.22337204e18)
    {
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    if (v192 >= 9.22337204e18)
    {
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
      goto LABEL_182;
    }

    v193 = v279.size.height;
    v194 = *&v1[OBJC_IVAR____TtC8PaperKit14CropResizeView_hudState];
    *&v235.a = v192;
    *&v236.a = dispatch thunk of CustomStringConvertible.description.getter();
    v236.b = v195;
    MEMORY[0x1DA6CD010](546816800, 0xA400000000000000);
    v196 = round(v193 / *&v1[v191]);
    if ((*&v196 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
      goto LABEL_184;
    }

    if (v196 <= -9.22337204e18)
    {
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    if (v196 >= 9.22337204e18)
    {
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    *&v235.a = v196;
    v197 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1DA6CD010](v197);

    CropResizeView.HUDState.hudString.setter(*&v236.a, *&v236.b);
    if (*(*&v194 + 16) == 1)
    {
      *(*&v194 + 16) = 1;
    }

    else
    {
      v203 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v203);
      v236.a = v194;
      lazy protocol witness table accessor for type CropResizeView.HUDState and conformance CropResizeView.HUDState(&lazy protocol witness table cache variable for type CropResizeView.HUDState and conformance CropResizeView.HUDState, type metadata accessor for CropResizeView.HUDState);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v204 = OBJC_IVAR____TtC8PaperKit14CropResizeView_hudView;
    v205 = *&v1[OBJC_IVAR____TtC8PaperKit14CropResizeView_hudView];
    if (!v205)
    {
      goto LABEL_188;
    }

    v206 = v205;
    [v206 intrinsicContentSize];
    v209 = *&v1[v204];
    if (!v209)
    {
LABEL_189:
      __break(1u);
      return;
    }

    v210 = 0.0;
    if (v177 >= 0.0)
    {
      v211 = 0.0;
    }

    else
    {
      v211 = -1.0;
    }

    if (v169 < 3u)
    {
      v210 = -1.0;
    }

    v212 = v208 * v210;
    v213 = v207 * v211;
    v214 = -5.0;
    if (v169 >= 3u)
    {
      v214 = 5.0;
    }

    v215 = v177 * 5.0 + v173 + v213;
    v216 = v214 + v176 + v212;
    [v209 intrinsicContentSize];
    [v206 setFrame_];

    outlined consume of ResizeView.ActiveHandle(v124);
  }

  else
  {
    v164 = *&v1[OBJC_IVAR____TtC8PaperKit14CropResizeView_hudState];
    if (*(*&v164 + 16))
    {
      v165 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v165);
      t1.a = v164;
      lazy protocol witness table accessor for type CropResizeView.HUDState and conformance CropResizeView.HUDState(&lazy protocol witness table cache variable for type CropResizeView.HUDState and conformance CropResizeView.HUDState, type metadata accessor for CropResizeView.HUDState);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(*&v164 + 16) = 0;
    }
  }
}

void CropResizeView.scaledSelectionRect.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace + 32);
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace + 40);
  v23 = *(v0 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace + 16);
  v24 = *(v0 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace);
  ResizeView.modelToViewTransform.getter(&v28);
  *&t1.a = v24;
  *&t1.c = v23;
  t1.tx = v1;
  t1.ty = v2;
  t2 = v28;
  CGAffineTransformConcat(&v25, &t1, &t2);
  a = v25.a;
  b = v25.b;
  c = v25.c;
  d = v25.d;
  tx = v25.tx;
  ty = v25.ty;
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = 1.0;
  v11 = 1.0;
  if (Strong)
  {
    v12 = Strong;
    v13 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x450))();
    if (v13)
    {
      v14 = v13;
      [v13 zoomScale];
      v11 = v15;
    }

    v10 = 1.0;
  }

  if (d >= 0.0)
  {
    v16 = d;
  }

  else
  {
    v16 = -d;
  }

  if (d >= 0.0)
  {
    v17 = ty;
  }

  else
  {
    v17 = d + ty;
  }

  if (a >= 0.0)
  {
    v18 = a;
  }

  else
  {
    v18 = -a;
  }

  if (a >= 0.0)
  {
    v19 = tx;
  }

  else
  {
    v19 = a + tx;
  }

  CGAffineTransformMakeScale(&t1, v10 / v11, v10 / v11);
  v20 = *&t1.a;
  v21 = *&t1.c;
  v22 = *&t1.tx;
  t1.a = v18;
  t1.b = b;
  t1.c = c;
  t1.d = v16;
  t1.tx = v19;
  t1.ty = v17;
  *&t2.a = v20;
  *&t2.c = v21;
  *&t2.tx = v22;
  CGAffineTransformConcat(&v25, &t1, &t2);
  t1 = v25;
  v29.origin.x = 0.0;
  v29.origin.y = 0.0;
  v29.size.width = 1.0;
  v29.size.height = 1.0;
  CGRectApplyAffineTransform(v29, &t1);
}

double CropResizeView.editingViewBounds.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MEMORY[0x1E69E7D40];
    v3 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x440);
    v4 = v3();
    v5 = (*((*v2 & *v4) + 0x2E0))();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = v3();
    (*((*v2 & *v12) + 0x2D0))();

    v13 = v3();
    v14 = (*((*v2 & *v13) + 0x2E0))();
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v26.origin.x = v14;
    v26.origin.y = v16;
    v26.size.width = v18;
    v26.size.height = v20;
    CGImagePropertyOrientation.originAlignedTransform(_:)(&v25, v26);
    v24 = v25;
    v27.origin.x = v5;
    v27.origin.y = v7;
    v27.size.width = v9;
    v27.size.height = v11;
    v28 = CGRectApplyAffineTransform(v27, &v24);
    v21 = (*((*v2 & *v1) + 0x450))(v28.origin, *&v28.origin.y);
    if (v21)
    {
      v22 = v21;
      [v21 zoomScale];
    }
  }

  return 0.0;
}

__n128 CropResizeView.rectangularSelectionTransformCoordinateSpace.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = (v1 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace);
  v3 = *(v1 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace);
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

Swift::Void __swiftcall CropResizeView.beginTransform()()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace);
  v3 = (v0 + OBJC_IVAR____TtC8PaperKit14CropResizeView_initialCropSpace);
  v4 = *(v0 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace + 16);
  v5 = *(v0 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace + 32);
  *v3 = *(v0 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace);
  v3[1] = v4;
  v3[2] = v5;
  *(v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_isResizing) = 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    AnyCanvas.isResizingChanged()();
  }

  v8 = *v2;
  v9 = v2[1];
  v10 = v2[2];
  v11 = v2[3];
  v12 = v2[4];
  v13 = v2[5];
  v14 = (v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace);
  *v14 = *v2;
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v11;
  v14[4] = v12;
  v14[5] = v13;
  ResizeView.modelToViewTransform.getter(&v21);
  t1.a = v8;
  t1.b = v9;
  t1.c = v10;
  t1.d = v11;
  t1.tx = v12;
  t1.ty = v13;
  t2 = v21;
  CGAffineTransformConcat(&v18, &t1, &t2);
  v15 = *&v18.c;
  v16 = *&v18.tx;
  v17 = (v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpaceScaled);
  *v17 = *&v18.a;
  v17[1] = v15;
  v17[2] = v16;
}

Swift::Void __swiftcall CropResizeView.updateTransform(with:)(CGAffineTransform *with)
{
  v2 = *&v1[OBJC_IVAR____TtC8PaperKit14CropResizeView_initialCropSpace + 16];
  *&t1.a = *&v1[OBJC_IVAR____TtC8PaperKit14CropResizeView_initialCropSpace];
  *&t1.c = v2;
  *&t1.tx = *&v1[OBJC_IVAR____TtC8PaperKit14CropResizeView_initialCropSpace + 32];
  v3 = *&with->c;
  *&v6.a = *&with->a;
  *&v6.c = v3;
  *&v6.tx = *&with->tx;
  CGAffineTransformConcat(&v8, &t1, &v6);
  CGAffineTransform.withFrameRounded(toScale:allowZeroDimensions:)(0, &t1, 1.0);
  v4 = &v1[OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace];
  v5 = *&t1.c;
  *v4 = *&t1.a;
  *(v4 + 1) = v5;
  *(v4 + 2) = *&t1.tx;
  [v1 setNeedsLayout];
}

Swift::Void __swiftcall CropResizeView.endTransform(cancel:)(Swift::Bool cancel)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace);
  v5 = *(v1 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace);
  v6 = *(v1 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace + 24);
  v7 = *(v1 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace + 32);
  v8 = *(v1 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace + 40);
  if (v5 < 0.0)
  {
    v7 = v5 + v7;
    v5 = -v5;
  }

  if (v6 < 0.0)
  {
    v8 = v6 + v8;
  }

  *v4 = v5;
  if (v6 >= 0.0)
  {
    v9 = v6;
  }

  else
  {
    v9 = -v6;
  }

  v4[3] = v9;
  v4[4] = v7;
  v4[5] = v8;
  specialized ResizeView.endTransform(cancel:)();
  if (!cancel)
  {
    v10 = v4[4];
    v11 = v4[5];
    v28 = *(v4 + 1);
    v29 = *v4;
    ResizeView.modelToViewTransform.getter(&v33);
    *&t1.a = v29;
    *&t1.c = v28;
    t1.tx = v10;
    t1.ty = v11;
    t2 = v33;
    CGAffineTransformConcat(&v30, &t1, &t2);
    a = v30.a;
    tx = v30.tx;
    ty = v30.ty;
    if (v30.a < 0.0)
    {
      tx = v30.a + v30.tx;
      a = -v30.a;
    }

    if (v30.d < 0.0)
    {
      ty = v30.d + v30.ty;
    }

    t1.a = a;
    if (v30.d >= 0.0)
    {
      d = v30.d;
    }

    else
    {
      d = -v30.d;
    }

    *&t1.b = *&v30.b;
    t1.d = d;
    t1.tx = tx;
    t1.ty = ty;
    v34.origin.x = 0.0;
    v34.origin.y = 0.0;
    v34.size.width = 1.0;
    v34.size.height = 1.0;
    v35 = CGRectApplyAffineTransform(v34, &t1);
    x = v35.origin.x;
    y = v35.origin.y;
    width = v35.size.width;
    height = v35.size.height;
    CropResizeView.editingViewBounds.getter();
    v39.size.width = v20;
    v39.size.height = v21;
    v39.origin.x = 0.0;
    v39.origin.y = 0.0;
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v37 = CGRectIntersection(v36, v39);
    v22 = v37.origin.x;
    v23 = v37.origin.y;
    v24 = v37.size.width;
    v25 = v37.size.height;
    CGRectGetMidX(v37);
    v38.origin.x = v22;
    v38.origin.y = v23;
    v38.size.width = v24;
    v38.size.height = v25;
    CGRectGetMinY(v38);
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIEditMenuConfiguration);
    memset(&t1, 0, 40);
    v26 = UIEditMenuConfiguration.init(identifier:sourcePoint:)();
    v27 = *(v2 + OBJC_IVAR____TtC8PaperKit14CropResizeView_editMenuInteraction);
    if (v27)
    {
      [v27 presentEditMenuWithConfiguration_];
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall CropResizeView.cancelCrop()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      lazy protocol witness table accessor for type CropResizeView.HUDState and conformance CropResizeView.HUDState(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode) = 0;
      AnyCanvas._isInCanvasSelectionMode.didset(0);
    }
  }
}

Swift::Void __swiftcall CropResizeView.performCrop()()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x1E69E7D40];
    v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))();
    v6 = (*((*v4 & *v5) + 0x2E0))();
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = *(v1 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace + 16);
    *&v24.a = *(v1 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace);
    *&v24.c = v13;
    *&v24.tx = *(v1 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace + 32);
    v14 = 0;
    *&v13 = 0;
    v15 = 1.0;
    v16 = 1.0;
    v27 = CGRectApplyAffineTransform(*(&v13 - 8), &v24);
    v25.origin.x = v6;
    v25.origin.y = v8;
    v25.size.width = v10;
    v25.size.height = v12;
    v26 = CGRectIntersection(v25, v27);
    v17 = CGRect.isFinite.getter(v26.origin.x, v26.origin.y, v26.size.width, v26.size.height);
    if (v17)
    {
      v18 = MEMORY[0x1EEE9AC00](v17);
      (*((*v4 & *v3) + 0x6E8))(1, 0, partial apply for closure #1 in CropResizeView.performCrop(), v18);
      AnyCanvas.canvasDidCrop()();
      v19 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode;
      if (*(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode) == 1)
      {
LABEL_10:
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *&v24.a = v3;
        lazy protocol witness table accessor for type CropResizeView.HUDState and conformance CropResizeView.HUDState(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        return;
      }
    }

    else
    {
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;
        if (*(v20 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode))
        {
          v22 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v22);
          *&v24.a = v21;
          lazy protocol witness table accessor for type CropResizeView.HUDState and conformance CropResizeView.HUDState(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        else
        {
          *(v20 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode) = 0;
          AnyCanvas._isInCanvasSelectionMode.didset(0);
        }
      }

      v19 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode;
      if (*(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode))
      {
        goto LABEL_10;
      }
    }

    *(v3 + v19) = 0;
    AnyCanvas._isInCanvasSelectionMode.didset(0);
  }
}

void closure #1 in CropResizeView.performCrop()(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x440))();
  (*((*v9 & *v10) + 0x2E8))(a2, a3, a4, a5);
}

Swift::Void __swiftcall CropResizeView.performCopy()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v47[-v2];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v0 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace + 16);
    *&v48.a = *(v0 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace);
    *&v48.c = v6;
    *&v48.tx = *(v0 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace + 32);
    v7 = 0;
    *&v6 = 0;
    v8 = 1.0;
    v9 = 1.0;
    v49 = CGRectApplyAffineTransform(*(&v6 - 8), &v48);
    x = v49.origin.x;
    y = v49.origin.y;
    width = v49.size.width;
    height = v49.size.height;
    v14 = MEMORY[0x1E69E7D40];
    v15 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x440);
    v16 = v15();
    v17 = (*((*v14 & *v16) + 0x2E0))();
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v55.origin.x = v17;
    v55.origin.y = v19;
    v55.size.width = v21;
    v55.size.height = v23;
    v51 = CGRectIntersection(v50, v55);
    v24 = v51.origin.x;
    v25 = v51.origin.y;
    v26 = v51.size.width;
    v27 = v51.size.height;
    v28 = v15();
    (*((*v14 & *v28) + 0x2D0))();

    v29 = v15();
    v30 = (*((*v14 & *v29) + 0x2E0))();
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v52.origin.x = v30;
    v52.origin.y = v32;
    v52.size.width = v34;
    v52.size.height = v36;
    CGImagePropertyOrientation.originAlignedTransform(_:)(&v48, v52);
    v53.origin.x = v24;
    v53.origin.y = v25;
    v53.size.width = v26;
    v53.size.height = v27;
    v54 = CGRectApplyAffineTransform(v53, &v48);
    v37 = v54.origin.x;
    v38 = v54.origin.y;
    v39 = v54.size.width;
    v40 = v54.size.height;
    v41 = type metadata accessor for TaskPriority();
    (*(*(v41 - 8) + 56))(v3, 1, 1, v41);
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v43 = static MainActor.shared.getter();
    v44 = swift_allocObject();
    v45 = MEMORY[0x1E69E85E0];
    *(v44 + 2) = v43;
    *(v44 + 3) = v45;
    *(v44 + 4) = v42;
    v44[5] = v37;
    v44[6] = v38;
    v44[7] = v39;
    v44[8] = v40;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in CropResizeView.performCopy(), v44);

    if (*(v5 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode) == 1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v47[-16] = v5;
      v47[-8] = 0;
      *&v48.a = v5;
      lazy protocol witness table accessor for type CropResizeView.HUDState and conformance CropResizeView.HUDState(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v5 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode) = 0;
      AnyCanvas._isInCanvasSelectionMode.didset(0);
    }
  }
}

uint64_t closure #1 in CropResizeView.performCopy()(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a3;
  *(v8 + 72) = a4;
  *(v8 + 48) = a1;
  *(v8 + 56) = a2;
  *(v8 + 40) = a8;
  type metadata accessor for MainActor();
  *(v8 + 80) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 88) = v10;
  *(v8 + 96) = v9;

  return MEMORY[0x1EEE6DFA0](closure #1 in CropResizeView.performCopy(), v10, v9);
}

uint64_t closure #1 in CropResizeView.performCopy()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x8F8);
    v10 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = closure #1 in CropResizeView.performCopy();
    v4.n128_u64[0] = v0[8];
    v5.n128_u64[0] = v0[9];
    v6.n128_u64[0] = v0[6];
    v7.n128_u64[0] = v0[7];

    return v10(v6, v7, v4, v5);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

{
  v1 = *(v0 + 120);

  if (v1)
  {
    v2 = [objc_opt_self() generalPasteboard];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setItems_];
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #1 in CropResizeView.performCopy()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  *(*v1 + 120) = a1;

  v4 = *(v2 + 96);
  v5 = *(v2 + 88);

  return MEMORY[0x1EEE6DFA0](closure #1 in CropResizeView.performCopy(), v5, v4);
}

Swift::Bool __swiftcall CropResizeView.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer *a1)
{
  v2 = v1;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
  if (static NSObject.== infix(_:_:)() & 1) != 0 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (v5 = Strong, swift_getKeyPath(), lazy protocol witness table accessor for type CropResizeView.HUDState and conformance CropResizeView.HUDState(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v6 = v5[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode], v5, (v6))
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v8 = *&v2[OBJC_IVAR____TtC8PaperKit10ResizeView_dragGestureRecognizer];
    if (!v8 || (type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIGestureRecognizer), v9 = a1, v10 = v8, v11 = static NSObject.== infix(_:_:)(), v10, v9, (v11 & 1) == 0) || (-[UIGestureRecognizer locationInView:](v9, sel_locationInView_, v2), v13 = v12, v15 = v14, [*&v2[OBJC_IVAR____TtC8PaperKit10ResizeView_borderView] frame], v20 = CGRectInset(v19, -10.0, -10.0), v18.x = v13, v18.y = v15, (v7 = CGRectContainsPoint(v20, v18)) != 0))
    {
      v17.receiver = v2;
      v17.super_class = type metadata accessor for CropResizeView(0);
      LOBYTE(v7) = [(UIGestureRecognizer *)&v17 gestureRecognizerShouldBegin:a1];
    }
  }

  return v7;
}

Swift::Void __swiftcall CropResizeView.gestureRecognizerDidTap(_:)(UITapGestureRecognizer_optional *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  if (a1)
  {
    v14 = *(v2 + OBJC_IVAR____TtC8PaperKit14CropResizeView_tapGestureRecognizer);
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UITapGestureRecognizer);
    v15 = v14;
    v16 = a1;
    v17 = static NSObject.== infix(_:_:)();

    if (v17)
    {
      [v15 locationInView_];
      v19 = v18;
      v21 = v20;
      [*(v2 + OBJC_IVAR____TtC8PaperKit10ResizeView_borderView) frame];
      v40.x = v19;
      v40.y = v21;
      if (CGRectContainsPoint(v41, v40))
      {
        static Date.now.getter();
        v22 = OBJC_IVAR____TtC8PaperKit14CropResizeView_lastTimeEditMenuDismissed;
        swift_beginAccess();
        outlined init with copy of Date?(v2 + v22, v6);
        v23 = *(v8 + 48);
        if (v23(v6, 1, v7) == 1)
        {
          static Date.distantPast.getter();
          if (v23(v6, 1, v7) != 1)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s10Foundation4DateVSgMd);
          }
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
        }

        Date.timeIntervalSince(_:)();
        v29 = v28;
        v30 = *(v8 + 8);
        v30(v10, v7);
        v30(v13, v7);
        if (v29 > 0.25)
        {
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIEditMenuConfiguration);
          v38 = 0;
          v36 = 0u;
          v37 = 0u;
          v31 = UIEditMenuConfiguration.init(identifier:sourcePoint:)();
          v32 = *(v2 + OBJC_IVAR____TtC8PaperKit14CropResizeView_editMenuInteraction);
          if (v32)
          {
            [v32 presentEditMenuWithConfiguration_];
          }

          else
          {
            __break(1u);
          }
        }
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v25 = Strong[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode];
          v35 = Strong;
          if (v25 == 1)
          {
            KeyPath = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](KeyPath);
            v27 = v35;
            *(&v34 - 2) = v35;
            *(&v34 - 8) = 0;
            *&v36 = v27;
            lazy protocol witness table accessor for type CropResizeView.HUDState and conformance CropResizeView.HUDState(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          }

          else
          {
            Strong[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode] = 0;
            AnyCanvas._isInCanvasSelectionMode.didset(0);
            v33 = v35;
          }
        }
      }
    }
  }
}

Swift::Bool __swiftcall CropResizeView.gestureRecognizer(_:shouldBeRequiredToFailBy:)(UIGestureRecognizer *_, UIGestureRecognizer *shouldBeRequiredToFailBy)
{
  v3 = v2;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
  result = 1;
  if ((static NSObject.== infix(_:_:)() & 1) == 0 && ((v6 = *(v2 + OBJC_IVAR____TtC8PaperKit10ResizeView_dragGestureRecognizer)) == 0 || (type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIGestureRecognizer), v7 = _, v8 = v6, v9 = static NSObject.== infix(_:_:)(), v8, v7, (v9 & 1) == 0)) || (type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPanGestureRecognizer), ([(UIGestureRecognizer *)shouldBeRequiredToFailBy isKindOfClass:swift_getObjCClassFromMetadata()]& 1) == 0))
  {
    v10 = *(v3 + OBJC_IVAR____TtC8PaperKit10ResizeView_rotationGestureRecognizer);
    if (!v10)
    {
      return 0;
    }

    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIGestureRecognizer);
    v11 = _;
    v12 = v10;
    v13 = static NSObject.== infix(_:_:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }

    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPinchGestureRecognizer);
    if (([(UIGestureRecognizer *)shouldBeRequiredToFailBy isKindOfClass:swift_getObjCClassFromMetadata()]& 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CropResizeView.__ivar_destroyer()
{

  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + OBJC_IVAR____TtC8PaperKit14CropResizeView_lastTimeEditMenuDismissed, &_s10Foundation4DateVSgMd);
}

id CropResizeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CropResizeView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for CropResizeView()
{
  type metadata accessor for Date?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata completion function for CropResizeView.HUDState()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void closure #1 in CropResizeView.editMenuInteraction(_:menuFor:suggestedActions:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Material>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Material>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Material>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA8MaterialVGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _BackgroundModifier<_ShapeView<Capsule, Material>> and conformance _BackgroundModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Material>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _BackgroundModifier<_ShapeView<Capsule, Material>> and conformance _BackgroundModifier<A>()
{
  result = lazy protocol witness table cache variable for type _BackgroundModifier<_ShapeView<Capsule, Material>> and conformance _BackgroundModifier<A>;
  if (!lazy protocol witness table cache variable for type _BackgroundModifier<_ShapeView<Capsule, Material>> and conformance _BackgroundModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA8MaterialVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _BackgroundModifier<_ShapeView<Capsule, Material>> and conformance _BackgroundModifier<A>);
  }

  return result;
}

id specialized static CropResizeView.marchingAntsLayer(alternate:color:)(char a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  [v4 setLineWidth_];
  [v4 setLineCap_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D405B640;
  *(v5 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(v5 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSNumber);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setLineDashPattern_];

  [v4 setFillColor_];
  v7 = [a2 CGColor];
  [v4 setStrokeColor_];

  if (a1)
  {
    v8 = 10.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = MEMORY[0x1DA6CCED0](0x68736144656E696CLL, 0xED00006573616850);
  v10 = [objc_opt_self() animationWithKeyPath_];

  v11 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v10 setFromValue_];

  v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  [v10 setToValue_];

  v13 = v10;
  [v13 setDuration_];
  LODWORD(v14) = 2139095040;
  [v13 setRepeatCount_];

  v15 = MEMORY[0x1DA6CCED0](1701734764, 0xE400000000000000);
  [v4 addAnimation:v13 forKey:v15];

  return v4;
}

void specialized CropResizeView.init(frame:canvas:)(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v123 = a5;
  v122 = a4;
  v121 = a3;
  v120 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v115 - v9;
  v11 = (v5 + OBJC_IVAR____TtC8PaperKit14CropResizeView_initialCropSpace);
  *v11 = 0x3FF0000000000000;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 0x3FF0000000000000;
  v11[4] = 0;
  v11[5] = 0;
  *(v5 + OBJC_IVAR____TtC8PaperKit14CropResizeView_occludingViews) = MEMORY[0x1E69E7CC0];
  v12 = OBJC_IVAR____TtC8PaperKit14CropResizeView_tapGestureRecognizer;
  *(v5 + v12) = [objc_allocWithZone(MEMORY[0x1E69DD060]) init];
  v13 = OBJC_IVAR____TtC8PaperKit14CropResizeView_lastTimeEditMenuDismissed;
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v5 + v13, 1, 1, v14);
  *(v5 + OBJC_IVAR____TtC8PaperKit14CropResizeView_editMenuInteraction) = 0;
  v15 = OBJC_IVAR____TtC8PaperKit14CropResizeView_hudState;
  type metadata accessor for CropResizeView.HUDState(0);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0xE000000000000000;
  ObservationRegistrar.init()();
  *(v5 + v15) = v16;
  *(v5 + OBJC_IVAR____TtC8PaperKit14CropResizeView_hudView) = 0;
  *(v5 + OBJC_IVAR____TtC8PaperKit14CropResizeView_downsampleScale) = 0x3FF0000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D4058C60;
  v18 = type metadata accessor for CanvasElementResizeHandle();
  v19 = objc_allocWithZone(v18);
  *(v17 + 32) = CanvasElementResizeHandle.init(_:category:enabled:)(0, 2, 1);
  v20 = objc_allocWithZone(v18);
  *(v17 + 40) = CanvasElementResizeHandle.init(_:category:enabled:)(1, 2, 1);
  v21 = objc_allocWithZone(v18);
  *(v17 + 48) = CanvasElementResizeHandle.init(_:category:enabled:)(2, 2, 1);
  v22 = objc_allocWithZone(v18);
  *(v17 + 56) = CanvasElementResizeHandle.init(_:category:enabled:)(3, 2, 1);
  v23 = objc_allocWithZone(v18);
  *(v17 + 64) = CanvasElementResizeHandle.init(_:category:enabled:)(4, 2, 1);
  v24 = objc_allocWithZone(v18);
  *(v17 + 72) = CanvasElementResizeHandle.init(_:category:enabled:)(5, 2, 1);
  v25 = objc_allocWithZone(v18);
  *(v17 + 80) = CanvasElementResizeHandle.init(_:category:enabled:)(6, 2, 1);
  v26 = objc_allocWithZone(v18);
  v27 = CanvasElementResizeHandle.init(_:category:enabled:)(7, 2, 1);
  v124 = v17;
  *(v17 + 88) = v27;
  v28 = MEMORY[0x1E69E7D40];
  v29 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x440))();
  v30 = (*((*v28 & *v29) + 0x2E0))();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  *&v125 = v30 - v34 * 0.0;
  v119 = v32 - v36 * 0.0;
  v129.origin.x = v30;
  v129.origin.y = v32;
  v129.size.width = v34;
  v117 = v34;
  v129.size.height = v36;
  v37 = v36;
  v118 = v36;
  MidX = CGRectGetMidX(v129);
  v130.origin.x = v30;
  v130.origin.y = v32;
  v130.size.width = v34;
  v130.size.height = v37;
  MidY = CGRectGetMidY(v130);
  CGAffineTransformMakeRotation(&t1, 0.0);
  tx = t1.tx;
  ty = t1.ty;
  v116 = *&t1.a;
  v115 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v46 = t1.tx;
  v47 = t1.ty;
  *&t2.a = v116;
  *&t2.c = v115;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v126, &t1, &t2);
  v48 = v126.tx;
  v49 = v126.ty;
  v116 = *&v126.a;
  v115 = *&v126.c;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v46;
  t1.ty = v47;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.c = v115;
  *&t1.a = v116;
  t1.tx = v48;
  t1.ty = v49;
  CGAffineTransformConcat(&v126, &t1, &t2);
  t1.a = v117;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v118;
  *&t1.tx = v125;
  t1.ty = v119;
  t2 = v126;
  v50 = CGAffineTransformConcat(&v126, &t1, &t2);
  v51 = *&v126.c;
  v52 = *&v126.tx;
  v53 = (v6 + OBJC_IVAR____TtC8PaperKit14CropResizeView_selectionSpace);
  *v53 = *&v126.a;
  v53[1] = v51;
  v53[2] = v52;
  v54 = (*((*v28 & *a1) + 0x450))(v50);
  if (v54)
  {
    v55 = v54;
    [v54 zoomScale];
    v57 = v56;
  }

  else
  {
    v57 = 1.0;
  }

  *(v6 + OBJC_IVAR____TtC8PaperKit14CropResizeView_initialZoomScale) = v57;
  v58 = swift_allocObject();
  v125 = xmmword_1D405B640;
  *(v58 + 16) = xmmword_1D405B640;
  *(v58 + 32) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  *(v58 + 40) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  *(v6 + OBJC_IVAR____TtC8PaperKit14CropResizeView_maskLayers) = v58;
  v59 = swift_allocObject();
  *(v59 + 16) = v125;
  if (one-time initialization token for marchingAntsColorA != -1)
  {
    swift_once();
  }

  v60 = static UIConstants.marchingAntsColorA;
  v61 = [static UIConstants.marchingAntsColorA colorWithAlphaComponent_];
  v62 = specialized static CropResizeView.marchingAntsLayer(alternate:color:)(0, v61);

  *(v59 + 32) = v62;
  if (one-time initialization token for marchingAntsColorB != -1)
  {
    swift_once();
  }

  v63 = static UIConstants.marchingAntsColorB;
  v64 = [static UIConstants.marchingAntsColorB colorWithAlphaComponent_];
  v65 = specialized static CropResizeView.marchingAntsLayer(alternate:color:)(1, v64);

  *(v59 + 40) = v65;
  *(v6 + OBJC_IVAR____TtC8PaperKit14CropResizeView_marchingAntsLayers) = v59;
  v66 = swift_allocObject();
  *(v66 + 16) = v125;
  *(v66 + 32) = specialized static CropResizeView.marchingAntsLayer(alternate:color:)(0, v60);
  *(v66 + 40) = specialized static CropResizeView.marchingAntsLayer(alternate:color:)(1, v63);
  *(v6 + OBJC_IVAR____TtC8PaperKit14CropResizeView_boundedMarchingAntsLayers) = v66;
  v67 = a1;
  v68 = v124;

  ResizeView.init(frame:canvas:resizeHandles:)(v67, v68, v120, v121, v122, v123);
  v70 = v69;
  v71 = OBJC_IVAR____TtC8PaperKit14CropResizeView_tapGestureRecognizer;
  [*&v69[OBJC_IVAR____TtC8PaperKit14CropResizeView_tapGestureRecognizer] addTarget:v69 action:sel_gestureRecognizerDidTap_];
  [v70 addGestureRecognizer_];
  v72 = *&v70[OBJC_IVAR____TtC8PaperKit14CropResizeView_hudState];
  LOBYTE(t2.a) = 0;

  State.init(wrappedValue:)();
  a_low = LOBYTE(t1.a);
  v74 = t1.b;
  t1.a = v72;
  LOBYTE(t1.b) = a_low;
  t1.c = v74;
  v75 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCy8PaperKit11CropHUDViewVGMd));
  v76 = _UIHostingView.init(rootView:)();
  v77 = *&v70[OBJC_IVAR____TtC8PaperKit14CropResizeView_hudView];
  *&v70[OBJC_IVAR____TtC8PaperKit14CropResizeView_hudView] = v76;
  v78 = v76;

  [v70 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit10CanvasViewCyAA5ImageVGMd);
  v79 = swift_dynamicCastClass();
  if (v79)
  {
    v80 = v79;
    v81 = type metadata accessor for TaskPriority();
    (*(*(v81 - 8) + 56))(v10, 1, 1, v81);
    type metadata accessor for MainActor();
    v82 = v67;
    v83 = v70;
    v84 = static MainActor.shared.getter();
    v85 = swift_allocObject();
    v86 = MEMORY[0x1E69E85E0];
    v85[2] = v84;
    v85[3] = v86;
    v85[4] = v80;
    v85[5] = v83;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in CropResizeView.init(frame:canvas:), v85);
  }

  v87 = OBJC_IVAR____TtC8PaperKit10ResizeView_borderView;
  v88 = [*&v70[OBJC_IVAR____TtC8PaperKit10ResizeView_borderView] layer];
  [v88 setBorderColor_];

  v89 = [*&v70[v87] layer];
  [v89 setBorderWidth_];

  v90 = *&v70[OBJC_IVAR____TtC8PaperKit14CropResizeView_marchingAntsLayers];
  if (v90 >> 62)
  {
    v91 = __CocoaSet.count.getter();
    v92 = &off_1E845F000;
    if (!v91)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v92 = &off_1E845F000;
    if (!v91)
    {
      goto LABEL_19;
    }
  }

  if (v91 < 1)
  {
    __break(1u);
    goto LABEL_46;
  }

  v93 = 0;
  do
  {
    if ((v90 & 0xC000000000000001) != 0)
    {
      v94 = MEMORY[0x1DA6CE0C0](v93, v90);
    }

    else
    {
      v94 = *(v90 + 8 * v93 + 32);
    }

    v95 = v94;
    ++v93;
    v96 = [*&v70[v87] layer];
    [v96 v92[243]];
  }

  while (v91 != v93);

LABEL_19:
  v97 = *&v70[OBJC_IVAR____TtC8PaperKit14CropResizeView_boundedMarchingAntsLayers];
  if (v97 >> 62)
  {
    v98 = __CocoaSet.count.getter();
    if (!v98)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v98 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v98)
    {
      goto LABEL_28;
    }
  }

  if (v98 < 1)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v99 = 0;
  do
  {
    if ((v97 & 0xC000000000000001) != 0)
    {
      v100 = MEMORY[0x1DA6CE0C0](v99, v97);
    }

    else
    {
      v100 = *(v97 + 8 * v99 + 32);
    }

    v101 = v100;
    ++v99;
    v102 = [*&v70[v87] layer];
    [v102 v92[243]];
  }

  while (v98 != v99);

LABEL_28:
  v103 = *&v70[OBJC_IVAR____TtC8PaperKit14CropResizeView_maskLayers];
  if (v103 >> 62)
  {
    v104 = __CocoaSet.count.getter();
    if (!v104)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v104 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v104)
    {
      goto LABEL_37;
    }
  }

  v105 = objc_opt_self();
  if (v104 < 1)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v106 = v105;
  *&v125 = v70;

  v107 = 0;
  do
  {
    if ((v103 & 0xC000000000000001) != 0)
    {
      v108 = MEMORY[0x1DA6CE0C0](v107, v103);
    }

    else
    {
      v108 = *(v103 + 8 * v107 + 32);
    }

    v109 = v108;
    ++v107;
    v110 = [v106 blackColor];
    v111 = [v110 CGColor];

    [v109 setFillColor_];
  }

  while (v104 != v107);

  v70 = v125;
LABEL_37:
  v112 = [objc_allocWithZone(MEMORY[0x1E69DC9E0]) initWithDelegate_];
  v113 = *&v70[OBJC_IVAR____TtC8PaperKit14CropResizeView_editMenuInteraction];
  *&v70[OBJC_IVAR____TtC8PaperKit14CropResizeView_editMenuInteraction] = v112;
  v114 = v112;

  if (v114)
  {

    [v70 addInteraction_];

    return;
  }

LABEL_48:
  __break(1u);
}

void specialized CropResizeView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC8PaperKit14CropResizeView_initialCropSpace);
  *v1 = 0x3FF0000000000000;
  v1[1] = 0;
  v1[2] = 0;
  v1[3] = 0x3FF0000000000000;
  v1[4] = 0;
  v1[5] = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit14CropResizeView_occludingViews) = MEMORY[0x1E69E7CC0];
  v2 = OBJC_IVAR____TtC8PaperKit14CropResizeView_tapGestureRecognizer;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD060]) init];
  v3 = OBJC_IVAR____TtC8PaperKit14CropResizeView_lastTimeEditMenuDismissed;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC8PaperKit14CropResizeView_editMenuInteraction) = 0;
  v5 = OBJC_IVAR____TtC8PaperKit14CropResizeView_hudState;
  type metadata accessor for CropResizeView.HUDState(0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0xE000000000000000;
  ObservationRegistrar.init()();
  *(v0 + v5) = v6;
  *(v0 + OBJC_IVAR____TtC8PaperKit14CropResizeView_hudView) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit14CropResizeView_downsampleScale) = 0x3FF0000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

UIMenu specialized CropResizeView.editMenuInteraction(_:menuFor:suggestedActions:)()
{
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  bundle = paperKitBundle.super.isa;
  swift__string._object = 0x80000001D40928F0;
  v0._countAndFlagsBits = 0x7243282079706F43;
  v0._object = 0xEB0000000029706FLL;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  swift__string._countAndFlagsBits = 0xD00000000000001BLL;
  v2._countAndFlagsBits = 2037411651;
  v2._object = 0xE400000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v0, v1, paperKitBundle, v2, swift__string);
  v3 = MEMORY[0x1DA6CCED0](0x642E6E6F2E636F64, 0xEA0000000000636FLL);
  v4 = objc_opt_self();
  v5 = [v4 systemImageNamed_];

  MEMORY[0x1DA6CCED0](0xD000000000000013, 0x80000001D408D8A0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v23[4] = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  swift__stringa._object = 0x80000001D4092910;
  swift__stringa._countAndFlagsBits = 0xD000000000000023;
  v6._countAndFlagsBits = 1886351939;
  v6._object = 0xE400000000000000;
  v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v7.value._object = 0xEB00000000656C62;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, bundle, v8, swift__stringa);
  v9 = MEMORY[0x1DA6CCED0](1886351971, 0xE400000000000000);
  v10 = [v4 systemImageNamed_];

  MEMORY[0x1DA6CCED0](0xD000000000000013, 0x80000001D408F1F0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = 0;
  v23[5] = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  preferredElementSize = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CC0];
  while (v11 != 2)
  {
    v13 = v23[v11++ + 4];
    if (v13)
    {
      v14 = v13;
      MEMORY[0x1DA6CD190](v14, v15, v16, v17, v18);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      preferredElementSize = v22;
    }
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIMenuElementCSgMd);
  swift_arrayDestroy();
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v24.value.super.isa = 0;
  v24.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v19, 0, v24, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 2);
}

uint64_t partial apply for closure #1 in CropResizeView.HUDState.hudString.setter()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

uint64_t lazy protocol witness table accessor for type CropResizeView.HUDState and conformance CropResizeView.HUDState(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_11(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t partial apply for closure #1 in CropResizeView.performCopy()(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in CropResizeView.performCopy()(v7, v8, v9, v10, a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in CropResizeView.init(frame:canvas:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in CropResizeView.init(frame:canvas:)(a1, v4, v5, v7, v6);
}

uint64_t outlined destroy of Image(uint64_t a1)
{
  v2 = type metadata accessor for Image(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyACyACyAA4TextVAA14_PaddingLayoutVGALGAA19_BackgroundModifierVyAA06_ShapeE0VyAA7CapsuleVAA8MaterialVGGG_SbQo_AA14_OpacityEffectVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA8MaterialVGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Material>>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

id PaperTextAttachmentCanvasView.__allocating_init(frame:paperIdentifier:paperURL:coherenceContextURL:encryptionDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v19 = objc_allocWithZone(v9);
  *&v19[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_canvasViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v19[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_canvasTiledView] = 0;
  *&v19[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView] = 0;
  *&v19[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_previousMathDocument] = 0;
  *&v19[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_contentView] = 0;
  v20 = &v19[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_encryptionDelegate];
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v21 = &v19[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_paperIdentifier];
  *v21 = a1;
  *(v21 + 1) = a2;
  v22 = OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_paperURL;
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v19[v22], a3, v23);
  outlined init with copy of Date?(a4, &v19[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_coherenceContextURL], &_s10Foundation3URLVSgMd);
  swift_beginAccess();
  outlined assign with copy of EncryptionDelegate?(a5, v20);
  swift_endAccess();
  v27.receiver = v19;
  v27.super_class = v9;
  v25 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a6, a7, a8, a9);
  PaperTextAttachmentCanvasView.setupViews()();

  outlined destroy of StocksKitCurrencyCache.Provider?(a5, &_s9Coherence18EncryptionDelegate_pSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(a4, &_s10Foundation3URLVSgMd);
  (*(v24 + 8))(a3, v23);
  return v25;
}

uint64_t PaperTextAttachmentCanvasView.liveStreamMessenger.setter(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView);
  if (v3)
  {
    v5 = result;
    v6 = &v3[direct field offset for Canvas.liveStreamMessenger];
    swift_beginAccess();
    *v6 = v5;
    v6[1] = a2;
    v7 = v3;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    specialized Canvas.liveStreamMessenger.didset();

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void PaperTextAttachmentCanvasView.paperBounds.getter()
{
  v1 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView);
  if (v8)
  {
    v9 = *&v8[direct field offset for Canvas.paperView];
    v10 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x3F0);
    swift_beginAccess();
    (*(v5 + 16))(v7, &v9[v10], v4);
    v11 = v8;
    Capsule.root.getter();
    (*(v5 + 8))(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();

    _s8PaperKit0A0VWOhTm_7(v3, type metadata accessor for Paper);
  }

  else
  {
    __break(1u);
  }
}

void PaperTextAttachmentCanvasView.setLinedPaper(horizontalLineSpacing:verticalLineSpacing:horizontalInset:)(double a1, double a2, double a3)
{
  if (a1 > 0.0 || a2 > 0.0)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E6978478]) initWithLineSpacing:a1 horizontalInset:{a2, a3}];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView);
  if (v5)
  {
    v6 = *&v5[direct field offset for PaperTextAttachmentView.linedPaper];
    *&v5[direct field offset for PaperTextAttachmentView.linedPaper] = v4;
    v7 = v5;
    v8 = v4;

    [v7 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void PaperTextAttachmentCanvasView.setMathDocument(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GraphElement(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v70 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd);
  v65 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v63 - v6;
  if (one-time initialization token for mathLogger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, mathLogger);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    swift_beginAccess();
    *(v10 + 4) = *(*(a1 + 56) + 16);

    _os_log_impl(&dword_1D38C4000, v8, v9, "setMathDocument, num expressions: %ld", v10, 0xCu);
    MEMORY[0x1DA6D0660](v10, -1, -1);
  }

  else
  {
  }

  v66 = CanvasCalculateDocumentProxy.calculateDocumentProvider.getter();
  v11 = OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView;
  v12 = *(v2 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView);
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = *(v12 + direct field offset for Canvas._editingView);
  if (v13)
  {
    v14 = *(v12 + direct field offset for Canvas._editingView + 8);
    v15 = *(v12 + direct field offset for Canvas._editingView);
  }

  else
  {
    v15 = *(v12 + direct field offset for Canvas.paperView);
    v14 = &protocol witness table for ContainerCanvasElementView<A>;
  }

  ObjectType = swift_getObjectType();
  v17 = v14[2];
  v18 = v13;
  v19 = v17(ObjectType, v14);

  if (v19)
  {
    v20 = [v19 recognitionController];

    [v20 setCalculateDocumentProvider_];
  }

  v21 = *(v2 + v11);
  if (!v21)
  {
LABEL_16:
    swift_unknownObjectRelease();
    return;
  }

  v22 = OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_previousMathDocument;
  v23 = *(v2 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_previousMathDocument);
  if (v23 && *&v21[direct field offset for PaperNoTextViewTextAttachmentView.hostDocument])
  {
    v24 = v21;

    specialized CanvasCalculateDocument.updateSubDocument(from:to:)(v23, a1);
    v25 = CanvasCalculateDocumentProxy.copy()();
  }

  else
  {
    *&v21[direct field offset for PaperNoTextViewTextAttachmentView.hostDocument] = a1;

    v26 = v21;

    v25 = CanvasCalculateDocumentProxy.copy()();
  }

  *(v2 + v22) = v25;

  v27 = *&v21[direct field offset for PaperNoTextViewTextAttachmentView.hostDocument];
  if (v27)
  {

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      swift_beginAccess();
      *(v30 + 4) = *(*(v27 + 56) + 16);
      _os_log_impl(&dword_1D38C4000, v28, v29, "Host document updated: %ld", v30, 0xCu);
      MEMORY[0x1DA6D0660](v30, -1, -1);
    }
  }

  v31 = &v21[direct field offset for Canvas._editingView];
  v32 = *&v21[direct field offset for Canvas._editingView];
  v64 = v21;
  if (v32)
  {
    v33 = *(v31 + 1);
    v34 = v32;
  }

  else
  {
    v34 = *&v21[direct field offset for Canvas.paperView];
    v33 = &protocol witness table for ContainerCanvasElementView<A>;
  }

  v35 = swift_getObjectType();
  v36 = v33[2];
  v37 = v32;
  v38 = v36(v35, v33);

  if (v38)
  {
    CanvasElementDrawingView.initializeMathRecognitionIfNecessary()();
  }

  v39 = *v31;
  v40 = v64;
  if (*v31)
  {
    v41 = *(v31 + 1);
    v42 = *v31;
  }

  else
  {
    v42 = *&v64[direct field offset for Canvas.paperView];
    v41 = &protocol witness table for ContainerCanvasElementView<A>;
  }

  v43 = swift_getObjectType();
  v44 = v41[8];
  v45 = v39;
  v46 = v44(v43, v41);

  if (!(v46 >> 62))
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47)
    {
      goto LABEL_32;
    }

LABEL_44:

    swift_unknownObjectRelease();

    return;
  }

  v47 = __CocoaSet.count.getter();
  if (!v47)
  {
    goto LABEL_44;
  }

LABEL_32:
  if (v47 < 1)
  {
    __break(1u);
  }

  else
  {
    v48 = 0;
    v71 = v46 & 0xC000000000000001;
    v67 = (v65 + 16);
    v49 = (v65 + 8);
    v50 = MEMORY[0x1E69E7D40];
    do
    {
      if (v71)
      {
        v56 = MEMORY[0x1DA6CE0C0](v48, v46);
      }

      else
      {
        v56 = *(v46 + 8 * v48 + 32);
      }

      v57 = v56;
      type metadata accessor for GraphCanvasElementView(0);
      v58 = swift_dynamicCastClass();
      if (v58)
      {
        v59 = v58;
        v60 = v47;
        specialized CanvasElementView.updateGestures()();
        specialized CanvasElementView.updateFrame()();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v62 = Strong;
          (*((*v50 & *Strong) + 0x928))();
        }

        v51 = *((*v50 & *v59) + 0x3F0);
        swift_beginAccess();
        v52 = v59 + v51;
        v53 = v68;
        v54 = v69;
        (*v67)(v68, v52, v69);
        v55 = v70;
        Capsule.root.getter();
        _s8PaperKit0A0VWOhTm_7(v55, type metadata accessor for GraphElement);
        (*v49)(v53, v54);
        GraphCanvasElementView.cachedGraphableExpressionsState.getter();
        GraphableExpressionsState.update()();

        GraphCanvasElementView.updateGraphView()();
        v47 = v60;
      }

      ++v48;
    }

    while (v47 != v48);

    swift_unknownObjectRelease();
  }
}

void PaperTextAttachmentCanvasView.setMathResult(_:expressionUUID:)(uint64_t a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView);
  if (v3)
  {
    v6 = *(v3 + direct field offset for Canvas._editingView);
    if (v6)
    {
      v7 = *(v3 + direct field offset for Canvas._editingView + 8);
      v8 = *(v3 + direct field offset for Canvas._editingView);
    }

    else
    {
      v8 = *(v3 + direct field offset for Canvas.paperView);
      v7 = &protocol witness table for ContainerCanvasElementView<A>;
    }

    ObjectType = swift_getObjectType();
    v10 = v7[2];
    v11 = v6;
    v17 = v10(ObjectType, v7);

    v12 = v17;
    if (v17)
    {
      v13 = *&v17[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate];
      if (v13)
      {
        v14 = *(v13 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController);
        if (v14)
        {
          v15 = v14;
          if (a2)
          {
            a2 = MEMORY[0x1DA6CCED0](a1, a2);
          }

          isa = UUID._bridgeToObjectiveC()().super.isa;
          [v15 mathResult:a2 itemUUID:isa];

          v12 = v17;
        }
      }
    }
  }
}

Swift::Void __swiftcall PaperTextAttachmentCanvasView.setupMathIfNecessary()()
{
  v16 = &type metadata for PencilAndPaperFeatureFlags;
  v17 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  v15[0] = 5;
  v1 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v15);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView;
    v3 = *(v0 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView);
    if (v3)
    {
      v4 = direct field offset for PaperTextAttachmentView.calculateDocument;
      swift_beginAccess();
      if (*(v3 + v4))
      {
        return;
      }

      v5 = v0;
      if (one-time initialization token for mathLogger != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, mathLogger);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1D38C4000, v7, v8, "Creating CanvasCalculateDocumentProxy", v9, 2u);
        MEMORY[0x1DA6D0660](v9, -1, -1);
      }

      v10 = *(v5 + v2);
      if (v10)
      {
        type metadata accessor for CanvasCalculateDocumentProxy();
        v11 = swift_allocObject();
        *(v11 + 16) = 0;
        v12 = v10;
        v13 = MEMORY[0x1E69E7CC0];
        *(v11 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(v13);
        *(v11 + 40) = 0;
        *(v11 + 48) = 0;
        *(v11 + 32) = v14;
        *(v11 + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVTt0g5Tf4g_n(v13);
        *(v11 + 64) = 0;
        PaperTextAttachmentView.calculateDocument.setter(v11, &protocol witness table for CanvasCalculateDocumentProxy);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t PaperTextAttachmentCanvasView.performTextSearch(queryString:ignoreCase:wholeWords:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 32) = a2;
  *(v5 + 40) = v4;
  *(v5 + 145) = a4;
  *(v5 + 144) = a3;
  *(v5 + 24) = a1;
  v6 = type metadata accessor for PKDrawing();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = type metadata accessor for MainActor();
  *(v5 + 80) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 88) = v8;
  *(v5 + 96) = v7;

  return MEMORY[0x1EEE6DFA0](PaperTextAttachmentCanvasView.performTextSearch(queryString:ignoreCase:wholeWords:), v8, v7);
}

uint64_t PaperTextAttachmentCanvasView.performTextSearch(queryString:ignoreCase:wholeWords:)()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView);
  if (v1 && ((v2 = *(v1 + direct field offset for Canvas._editingView)) == 0 ? (v4 = *(v1 + direct field offset for Canvas.paperView), v3 = &protocol witness table for ContainerCanvasElementView<A>) : (v3 = *(v1 + direct field offset for Canvas._editingView + 8), v4 = *(v1 + direct field offset for Canvas._editingView)), ObjectType = swift_getObjectType(), v6 = v3[2], v7 = v2, v8 = v6(ObjectType, v3), *(v0 + 104) = v8, v4, v8))
  {
    v9 = *(v0 + 64);
    v10 = *(v0 + 32);
    v28 = *(v0 + 40);
    v27 = *(v0 + 145);
    v11 = *(v0 + 144);
    v12 = *(v0 + 24);
    v13 = [v8 drawing];
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = objc_allocWithZone(type metadata accessor for PKDrawingCoherence(0));
    PKDrawing._bridgeToObjectiveC()(v15);
    v17 = v16;
    v18 = [v14 initWithDrawing_];
    *(v0 + 112) = v18;

    [v18 setRecognitionEnabled_];
    v19 = static MainActor.shared.getter();
    *(v0 + 120) = v19;
    v20 = swift_task_alloc();
    *(v0 + 128) = v20;
    *(v20 + 16) = v18;
    *(v20 + 24) = v12;
    *(v20 + 32) = v10;
    *(v20 + 40) = v27;
    *(v20 + 41) = v11;
    *(v20 + 48) = v28;
    *(v20 + 56) = v8;
    *(v20 + 64) = v9;
    v21 = swift_task_alloc();
    *(v0 + 136) = v21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit17DrawingFindResultCGMd);
    *v21 = v0;
    v21[1] = PaperTextAttachmentCanvasView.performTextSearch(queryString:ignoreCase:wholeWords:);
    v23 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DDE0](v0 + 16, v19, v23, 0xD000000000000035, 0x80000001D4092960, partial apply for closure #1 in PaperTextAttachmentCanvasView.performTextSearch(queryString:ignoreCase:wholeWords:), v20, v22);
  }

  else
  {

    v24 = *(v0 + 8);
    v25 = MEMORY[0x1E69E7CC0];

    return v24(v25);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](PaperTextAttachmentCanvasView.performTextSearch(queryString:ignoreCase:wholeWords:), v3, v2);
}

{
  v1 = *(v0 + 104);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);

  v5 = *(v0 + 16);
  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 8);

  return v6(v5);
}

__n128 DrawingFindResult.frames(in:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
  v1 = swift_allocObject();
  v2 = *(v0 + 24);
  *(v1 + 16) = xmmword_1D4058CF0;
  *(v1 + 32) = v2;
  result = *(v0 + 40);
  *(v1 + 48) = result;
  return result;
}

void *DrawingFindResult.draw(for:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25[-v4];
  type metadata accessor for UIGraphicsImageRendererFormat();
  v6 = [swift_getObjCClassFromMetadata() preferredFormat];
  [v6 setScale_];
  [v6 setPreferredRange_];
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = v6;
  v10 = [v9 supportsHighDynamicRange];
  [v9 scale];
  v12 = v11;
  type metadata accessor for ImageRenderer();
  v13 = swift_allocObject();
  *(v13 + 16) = 1;
  *(v13 + 24) = v7;
  *(v13 + 32) = v8;
  *(v13 + 40) = v12;
  *(v13 + 48) = 0;
  *(v13 + 49) = v10;
  *(v13 + 56) = 0;
  *(v13 + 64) = 1;
  *(v13 + 72) = 0;
  *(v13 + 80) = 1;
  type metadata accessor for CanvasElementImageRenderer();
  v14 = swift_allocObject();
  v15 = specialized CanvasElementImageRenderer.init(renderer:)(v13, v14);

  v16 = dispatch_semaphore_create(0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  swift_beginAccess();
  *(v15 + 72) = 0;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v17;
  v19[5] = v15;
  v19[6] = a1;
  v19[7] = v1;
  v19[8] = v16;

  v20 = a1;

  v21 = v16;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in DrawingFindResult.draw(for:), v19);

  OS_dispatch_semaphore.wait()();

  swift_beginAccess();
  v22 = *(v17 + 16);
  v23 = v22;

  return v22;
}

uint64_t specialized CanvasCalculateDocument.updateSubDocument(from:to:)(uint64_t a1, uint64_t a2)
{
  v259 = a2;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLV5valuetMd);
  MEMORY[0x1EEE9AC00](v279);
  v278 = &v248 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v277 = &v248 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v276 = (&v248 - v7);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v268 = &v248 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v262 = &v248 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v251 = &v248 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v253 = &v248 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v249 = &v248 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v252 = &v248 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v255 = &v248 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v254 = &v248 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v250 = &v248 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v257 = &v248 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v256 = &v248 - v30;
  swift_beginAccess();
  v261 = a1;
  v31 = *(a1 + 56);
  v32 = *(v31 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  v280 = v8;
  v269 = v9;
  if (v32)
  {
    v283 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
    v33 = v283;
    v34 = (v31 + 64);
    v35 = _HashTable.startBucket.getter();
    v36 = 0;
    v267 = (v9 + 16);
    *&v266 = v9 + 32;
    v260 = v31 + 72;
    v263 = v32;
    v264 = (v31 + 64);
    v265 = v31;
    while ((v35 & 0x8000000000000000) == 0 && v35 < 1 << *(v31 + 32))
    {
      if ((v34[v35 >> 6] & (1 << v35)) == 0)
      {
        goto LABEL_128;
      }

      v272 = 1 << v35;
      v273 = v35 >> 6;
      v270 = v36;
      v271 = *(v31 + 36);
      v39 = *(v31 + 48);
      v275 = *(v9 + 72);
      v40 = v276;
      (*(v9 + 16))(v276, v39 + v275 * v35, v8);
      v41 = *(v31 + 56) + 40 * v35;
      v274 = v33;
      v42 = *v41;
      v43 = *(v41 + 8);
      v44 = *(v41 + 16);
      v45 = *(v41 + 24);
      v46 = *(v41 + 32);
      v47 = *(v9 + 32);
      v48 = v277;
      v47(v277, v40, v280);
      v49 = v279;
      v50 = &v48[*(v279 + 48)];
      *v50 = v42;
      *(v50 + 1) = v43;
      *(v50 + 2) = v44;
      *(v50 + 3) = v45;
      *(v50 + 4) = v46;
      v51 = v48;
      v52 = v278;
      outlined init with take of (key: UUID, value: SortableCalculateExpression)(v51, v278);
      v53 = (v52 + *(v49 + 48));
      v54 = v9;
      v55 = *v53;
      v56 = v42;
      v33 = v274;

      v8 = v280;

      v57 = v268;
      v47(v268, v52, v8);
      v283 = v33;
      v59 = *(v33 + 16);
      v58 = *(v33 + 24);
      if (v59 >= v58 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v58 > 1, v59 + 1, 1);
        v33 = v283;
      }

      *(v33 + 16) = v59 + 1;
      v47((v33 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + v59 * v275), v57, v8);
      v31 = v265;
      v37 = 1 << *(v265 + 32);
      if (v35 >= v37)
      {
        goto LABEL_129;
      }

      v34 = v264;
      v60 = v264[v273];
      if ((v60 & v272) == 0)
      {
        goto LABEL_130;
      }

      if (v271 != *(v265 + 36))
      {
        goto LABEL_131;
      }

      v61 = v60 & (-2 << (v35 & 0x3F));
      if (v61)
      {
        v9 = v54;
        v37 = __clz(__rbit64(v61)) | v35 & 0x7FFFFFFFFFFFFFC0;
        v38 = v263;
      }

      else
      {
        v62 = v273 << 6;
        v63 = (v273 + 1);
        v64 = (v260 + 8 * v273);
        v38 = v263;
        while (v63 < (v37 + 63) >> 6)
        {
          v66 = *v64++;
          v65 = v66;
          v62 += 64;
          ++v63;
          if (v66)
          {
            outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v35, v271, 0);
            v37 = __clz(__rbit64(v65)) + v62;
            goto LABEL_19;
          }
        }

        outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v35, v271, 0);
LABEL_19:
        v9 = v269;
      }

      v36 = v270 + 1;
      v35 = v37;
      if (v270 + 1 == v38)
      {

        goto LABEL_21;
      }
    }

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
  }

  else
  {
LABEL_21:
    v260 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v33);

    v67 = v259;
    swift_beginAccess();
    v68 = *(v67 + 56);
    v69 = *(v68 + 16);
    v70 = MEMORY[0x1E69E7CC0];
    if (!v69)
    {
LABEL_40:
      v103 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v70);

      v104 = v260;
      if (*(v103 + 16) <= *(v260 + 16) >> 3)
      {
        v282 = v260;

        specialized Set._subtract<A>(_:)(v103);
        v276 = v282;
      }

      else
      {

        v276 = specialized _NativeSet.subtracting<A>(_:)(v103, v104);
      }

      v105 = v258;
      if (*(v104 + 16) <= *(v103 + 16) >> 3)
      {
        v282 = v103;

        specialized Set._subtract<A>(_:)(v104);
        v275 = v282;
      }

      else
      {

        v275 = specialized _NativeSet.subtracting<A>(_:)(v104, v103);
      }

      v274 = specialized _NativeSet.intersection(_:)(v103, v104);

      v106 = 0;
      v108 = (v276 + 7);
      v107 = v276[7];
      v109 = 1 << *(v276 + 32);
      v110 = -1;
      if (v109 < 64)
      {
        v110 = ~(-1 << v109);
      }

      v111 = v110 & v107;
      v112 = (v109 + 63) >> 6;
      v113 = v269;
      v278 = v269 + 32;
      v279 = v269 + 16;
      v277 = (v269 + 8);
      if ((v110 & v107) != 0)
      {
        do
        {
LABEL_55:
          while (1)
          {
            v115 = __clz(__rbit64(v111));
            v111 &= v111 - 1;
            v116 = *(v113 + 72);
            v117 = v256;
            v118 = v280;
            (*(v113 + 16))(v256, v276[6] + v116 * (v115 | (v106 << 6)), v280);
            v119 = v257;
            (*(v113 + 32))(v257, v117, v118);
            v120 = v261;
            swift_beginAccess();
            v121 = *(v120 + 56);
            if (*(v121 + 16))
            {
              v122 = specialized __RawDictionaryStorage.find<A>(_:)(v119);
              if (v123)
              {
                break;
              }
            }

            swift_endAccess();
            (*v277)(v119, v280);
            if (!v111)
            {
              goto LABEL_51;
            }
          }

          v270 = v116;
          v124 = *(v121 + 56) + 40 * v122;
          v126 = *v124;
          v125 = *(v124 + 8);
          v127 = *(v124 + 32);
          swift_endAccess();
          v128 = *v277;
          v271 = v126;

          v272 = v127;
          v129 = v128;
          v130 = v258;

          v131 = v119;
          v132 = v280;
          v129(v131, v280);
          v133 = v250;
          v273 = v125;
          CalculateExpression.id.getter();
          swift_beginAccess();
          v134 = specialized __RawDictionaryStorage.find<A>(_:)(v133);
          if (v135)
          {
            v136 = v134;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v138 = *(v130 + 56);
            v281 = v138;
            *(v130 + 56) = 0x8000000000000000;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
              v138 = v281;
            }

            v139 = v280;
            v129(*(v138 + 48) + v136 * v270, v280);
            v270 = *(*(v138 + 56) + 40 * v136);

            specialized _NativeDictionary._delete(at:)(v136, v138);
            v129(v250, v139);
            v105 = v258;
            *(v258 + 56) = v138;
          }

          else
          {
            v129(v133, v132);
            v105 = v130;
          }

          swift_endAccess();

          *(v105 + 16) = 1;
          v113 = v269;
        }

        while (v111);
      }

      while (1)
      {
LABEL_51:
        v114 = v106 + 1;
        if (__OFADD__(v106, 1))
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v114 >= v112)
        {
          break;
        }

        v111 = *&v108[8 * v114];
        ++v106;
        if (v111)
        {
          v106 = v114;
          goto LABEL_55;
        }
      }

      v141 = 0;
      v142 = v275 + 56;
      v143 = 1 << *(v275 + 32);
      v144 = -1;
      if (v143 < 64)
      {
        v144 = ~(-1 << v143);
      }

      v145 = v144 & *(v275 + 56);
      v146 = (v143 + 63) >> 6;
      *&v140 = 136315394;
      v266 = v140;
      v147 = v277;
      v268 = v146;
      if (!v145)
      {
        while (1)
        {
LABEL_69:
          v148 = v141 + 1;
          if (__OFADD__(v141, 1))
          {
            goto LABEL_125;
          }

          if (v148 >= v146)
          {
            break;
          }

          v145 = *(v142 + 8 * v148);
          ++v141;
          if (v145)
          {
            v141 = v148;
            goto LABEL_73;
          }
        }

        v209 = 0;
        v210 = (v274 + 56);
        v211 = 1 << *(v274 + 32);
        v212 = -1;
        if (v211 < 64)
        {
          v212 = ~(-1 << v211);
        }

        v213 = v212 & *(v274 + 56);
        v214 = (v211 + 63) >> 6;
        v215 = v280;
        v216 = v269;
        v217 = v251;
        if (!v213)
        {
LABEL_102:
          while (1)
          {
            v218 = v209 + 1;
            if (__OFADD__(v209, 1))
            {
              goto LABEL_126;
            }

            if (v218 >= v214)
            {
            }

            v213 = *&v210[8 * v218];
            ++v209;
            if (v213)
            {
              v209 = v218;
              break;
            }
          }
        }

        while (2)
        {
          while (1)
          {
            v219 = __clz(__rbit64(v213));
            v213 &= v213 - 1;
            v220 = v253;
            (*(v216 + 16))(v253, *(v274 + 48) + *(v216 + 72) * (v219 | (v209 << 6)), v215);
            (*(v216 + 32))(v217, v220, v215);
            v221 = v261;
            swift_beginAccess();
            v222 = *(v221 + 56);
            if (*(v222 + 16))
            {
              v223 = specialized __RawDictionaryStorage.find<A>(_:)(v217);
              if (v224)
              {
                break;
              }
            }

            swift_endAccess();
            (*v147)(v217, v215);
            if (!v213)
            {
              goto LABEL_102;
            }
          }

          v225 = *(v222 + 56) + 40 * v223;
          v226 = *v225;
          v227 = *(v225 + 16);
          swift_endAccess();
          v228 = v259;
          swift_beginAccess();
          v229 = *(v228 + 56);
          v230 = *(v229 + 16);
          v231 = v226;

          if (v230 && (v232 = specialized __RawDictionaryStorage.find<A>(_:)(v251), (v233 & 1) != 0))
          {
            v275 = v231;
            v234 = *(v229 + 56) + 40 * v232;
            v235 = *v234;
            v236 = *(v234 + 8);
            v237 = *(v234 + 16);
            v238 = *(v234 + 32);
            swift_endAccess();
            v273 = v235;

            v272 = v238;

            v239 = CalculateExpression.expression.getter();
            v241 = v240;
            v276 = v236;
            if (v239 == CalculateExpression.expression.getter() && v241 == v242)
            {

              v245 = v275;
              if (v227 != v237)
              {
                goto LABEL_116;
              }
            }

            else
            {
              v244 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v245 = v275;
              if ((v244 & 1) == 0 || v227 != v237)
              {
LABEL_116:
                CanvasCalculateDocumentProxy.move(_:sortIndex:)(v276, v237);

                v147 = v277;
                goto LABEL_118;
              }
            }

            v147 = v277;
            v246 = v251;
            v215 = v280;
            (*v277)(v251, v280);

            v217 = v246;
          }

          else
          {
            swift_endAccess();

LABEL_118:
            v217 = v251;
            v215 = v280;
            (*v147)(v251, v280);
          }

          v216 = v269;
          if (!v213)
          {
            goto LABEL_102;
          }

          continue;
        }
      }

      while (1)
      {
LABEL_73:
        while (1)
        {
          v149 = __clz(__rbit64(v145));
          v145 &= v145 - 1;
          v150 = v269;
          v151 = *(v269 + 72);
          v152 = *(v269 + 16);
          v153 = v254;
          v154 = v280;
          v152(v254, *(v275 + 48) + v151 * (v149 | (v141 << 6)), v280);
          v155 = *(v150 + 32);
          v156 = v255;
          v155(v255, v153, v154);
          v157 = v259;
          swift_beginAccess();
          v158 = *(v157 + 56);
          if (*(v158 + 16))
          {
            v159 = specialized __RawDictionaryStorage.find<A>(_:)(v156);
            if (v160)
            {
              break;
            }
          }

          swift_endAccess();
          v147 = v277;
          (*v277)(v156, v280);
          if (!v145)
          {
            goto LABEL_69;
          }
        }

        v272 = v151;
        v267 = v152;
        v161 = *(v158 + 56) + 40 * v159;
        v163 = *v161;
        v162 = *(v161 + 8);
        v164 = *(v161 + 16);
        v165 = *(v161 + 32);
        v273 = *(v161 + 24);
        swift_endAccess();
        v166 = *v277;
        v167 = v163;

        v276 = v166;
        (v166)(v156, v280);
        v168 = v252;
        CalculateExpression.id.getter();
        swift_beginAccess();
        v271 = v162;

        v169 = swift_isUniquelyReferenced_nonNull_native();
        v281 = *(v105 + 56);
        v170 = v281;
        *(v105 + 56) = 0x8000000000000000;
        v171 = specialized __RawDictionaryStorage.find<A>(_:)(v168);
        v173 = v170[2];
        v174 = (v172 & 1) == 0;
        v175 = __OFADD__(v173, v174);
        v176 = v173 + v174;
        if (v175)
        {
          goto LABEL_137;
        }

        v177 = v172;
        v270 = v167;
        if (v170[3] >= v176)
        {
          v147 = v277;
          v180 = v272;
          v179 = v273;
          if ((v169 & 1) == 0)
          {
            v208 = v171;
            specialized _NativeDictionary.copy()();
            v171 = v208;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v176, v169);
          v171 = specialized __RawDictionaryStorage.find<A>(_:)(v252);
          v147 = v277;
          v180 = v272;
          v179 = v273;
          if ((v177 & 1) != (v178 & 1))
          {
            goto LABEL_139;
          }
        }

        v181 = v276;
        v272 = v165;
        v182 = v281;
        if (v177)
        {
          v183 = v281[7] + 40 * v171;
          v184 = *v183;
          v185 = v271;
          *v183 = 0;
          *(v183 + 8) = v185;
          *(v183 + 16) = v164;
          *(v183 + 24) = 0;
          *(v183 + 32) = 0xE000000000000000;
        }

        else
        {
          v281[(v171 >> 6) + 8] |= 1 << v171;
          v186 = v171;
          v267(v182[6] + v171 * v180, v252, v280);
          v187 = (v182[7] + 40 * v186);
          v188 = v271;
          *v187 = 0;
          v187[1] = v188;
          v187[2] = v164;
          v187[3] = 0;
          v187[4] = 0xE000000000000000;
          v189 = v182[2];
          v175 = __OFADD__(v189, 1);
          v190 = v189 + 1;
          if (v175)
          {
            goto LABEL_138;
          }

          v182[2] = v190;
        }

        v181(v252, v280);
        v105 = v258;
        *(v258 + 56) = v182;
        swift_endAccess();
        *(v105 + 16) = 1;
        v191 = v272;
        v192 = HIBYTE(v272) & 0xF;
        if ((v272 & 0x2000000000000000) == 0)
        {
          v192 = v179 & 0xFFFFFFFFFFFFLL;
        }

        if (v192)
        {
          v193 = one-time initialization token for mathLogger;

          if (v193 != -1)
          {
            swift_once();
          }

          v194 = type metadata accessor for Logger();
          __swift_project_value_buffer(v194, mathLogger);
          v195 = v270;

          v196 = Logger.logObject.getter();
          v197 = static os_log_type_t.default.getter();

          v271 = v195;

          LODWORD(v270) = v197;
          if (os_log_type_enabled(v196, v197))
          {
            v198 = swift_slowAlloc();
            v267 = swift_slowAlloc();
            v282 = v267;
            *v198 = v266;

            v199 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v191, &v282);
            v200 = v196;
            v201 = v199;

            *(v198 + 4) = v201;
            *(v198 + 12) = 2080;
            v202 = v249;
            CalculateExpression.id.getter();
            v203 = UUID.uuidString.getter();
            v205 = v204;
            (v276)(v202, v280);
            v206 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v203, v205, &v282);
            v191 = v272;

            *(v198 + 14) = v206;
            _os_log_impl(&dword_1D38C4000, v200, v270, "CalculateDocumentController.updateSubDocument: graphableIdentifier: %s, for: %s", v198, 0x16u);
            v207 = v267;
            swift_arrayDestroy();
            MEMORY[0x1DA6D0660](v207, -1, -1);
            MEMORY[0x1DA6D0660](v198, -1, -1);

            v179 = v273;
            v105 = v258;
          }

          else
          {

            v105 = v258;
            v202 = v249;
          }

          CalculateExpression.id.getter();
          CanvasCalculateDocumentProxy.setGraphableIdentifier(_:for:)(v179, v191, v202);

          (v276)(v202, v280);
        }

        else
        {
        }

        v146 = v268;
        if (!v145)
        {
          goto LABEL_69;
        }
      }
    }

    v282 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69, 0);
    v70 = v282;
    v71 = v68 + 64;
    v72 = _HashTable.startBucket.getter();
    v73 = 0;
    v268 = (v269 + 16);
    v267 = (v269 + 32);
    v263 = (v68 + 72);
    v264 = v69;
    v265 = v68 + 64;
    *&v266 = v68;
    while ((v72 & 0x8000000000000000) == 0 && v72 < 1 << *(v68 + 32))
    {
      if ((*(v71 + 8 * (v72 >> 6)) & (1 << v72)) == 0)
      {
        goto LABEL_133;
      }

      v272 = v72 >> 6;
      v273 = 1 << v72;
      v270 = v73;
      v271 = *(v68 + 36);
      v76 = *(v68 + 48);
      v77 = v269;
      v274 = *(v269 + 72);
      v275 = v70;
      v78 = v276;
      (*(v269 + 16))(v276, v76 + v274 * v72, v8);
      v79 = *(v68 + 56) + 40 * v72;
      v80 = *v79;
      v81 = *(v79 + 8);
      v82 = *(v79 + 16);
      v84 = *(v79 + 24);
      v83 = *(v79 + 32);
      v85 = *(v77 + 32);
      v86 = v277;
      v85(v277, v78, v280);
      v87 = v279;
      v88 = &v86[*(v279 + 48)];
      *v88 = v80;
      *(v88 + 1) = v81;
      *(v88 + 2) = v82;
      *(v88 + 3) = v84;
      *(v88 + 4) = v83;
      v89 = v86;
      v90 = v278;
      outlined init with take of (key: UUID, value: SortableCalculateExpression)(v89, v278);
      v91 = *(v90 + *(v87 + 48));
      v92 = v80;
      v93 = v262;

      v70 = v275;

      v8 = v280;

      v85(v93, v90, v8);
      v282 = v70;
      v95 = *(v70 + 16);
      v94 = *(v70 + 24);
      if (v95 >= v94 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v94 > 1, v95 + 1, 1);
        v93 = v262;
        v70 = v282;
      }

      *(v70 + 16) = v95 + 1;
      v85((v70 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + v95 * v274), v93, v8);
      v68 = v266;
      v74 = 1 << *(v266 + 32);
      if (v72 >= v74)
      {
        goto LABEL_134;
      }

      v71 = v265;
      v96 = *(v265 + 8 * v272);
      if ((v96 & v273) == 0)
      {
        goto LABEL_135;
      }

      if (v271 != *(v266 + 36))
      {
        goto LABEL_136;
      }

      v97 = v96 & (-2 << (v72 & 0x3F));
      if (v97)
      {
        v74 = __clz(__rbit64(v97)) | v72 & 0x7FFFFFFFFFFFFFC0;
        v75 = v264;
      }

      else
      {
        v98 = v272 << 6;
        v99 = v272 + 1;
        v100 = &v263[8 * v272];
        v75 = v264;
        while (v99 < (v74 + 63) >> 6)
        {
          v102 = *v100++;
          v101 = v102;
          v98 += 64;
          ++v99;
          if (v102)
          {
            outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v72, v271, 0);
            v74 = __clz(__rbit64(v101)) + v98;
            goto LABEL_24;
          }
        }

        outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v72, v271, 0);
      }

LABEL_24:
      v73 = v270 + 1;
      v72 = v74;
      if (v270 + 1 == v75)
      {

        goto LABEL_40;
      }
    }
  }

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
LABEL_139:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized Canvas.liveStreamMessenger.didset()
{
  v1 = v0;
  v2 = type metadata accessor for CRMulticastSyncManagerCatchupBehavior();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v62 = v54 - v8;
  v9 = type metadata accessor for CRKeyPath();
  v63 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1 + direct field offset for Canvas.liveStreamMessenger;
  swift_beginAccess();
  if (*v12)
  {
    v13 = *v12;
    v59 = v3;
    v60 = v2;
    v55 = *(v12 + 1);
    v14 = one-time initialization token for multipeerLogger;
    swift_unknownObjectRetain();
    if (v14 != -1)
    {
      swift_once();
    }

    v56 = v9;
    v57 = v12;
    v58 = v5;
    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, multipeerLogger);
    swift_unknownObjectRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    v18 = os_log_type_enabled(v16, v17);
    v61 = v6;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v20 = v7;
      v21 = swift_slowAlloc();
      v65[0] = v21;
      *v19 = 136315138;
      v22 = ObjectIdentifier.debugDescription.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v65);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1D38C4000, v16, v17, "New session for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      v25 = v21;
      v7 = v20;
      MEMORY[0x1DA6D0660](v25, -1, -1);
      v26 = v19;
      v6 = v61;
      MEMORY[0x1DA6D0660](v26, -1, -1);
    }

    v54[1] = v13;
    ObjectType = swift_getObjectType();
    v54[0] = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_context);
    v27 = MEMORY[0x1E69E7D40];
    v28 = v11;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0xCD0))();
    v29 = *(v1 + direct field offset for Canvas.paperView);
    v30 = *((*v27 & *v29) + 0x3F0);
    swift_beginAccess();
    v31 = v62;
    (*(v7 + 16))(v62, &v29[v30], v6);
    v32 = v58;
    v33 = v59;
    v34 = v60;
    (*(v59 + 104))(v58, *MEMORY[0x1E6995390], v60);
    v35 = type metadata accessor for Paper(0);
    v36 = lazy protocol witness table accessor for type PaperTextAttachmentCanvasView and conformance PaperTextAttachmentCanvasView(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper);
    v37 = v55;
    v38 = PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:)(v54[0], v28, v31, v32, 0x7265706150, 0xE500000000000000, ObjectType, v35, v55, v36);
    (*(v33 + 8))(v32, v34);
    (*(v7 + 8))(v31, v61);
    (*(v63 + 8))(v28, v56);
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6CanvasCyAA0A0VGMd);
    PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:)(v38, v1, 0x7265706150, 0xE500000000000000, partial apply for specialized closure #1 in Canvas.liveStreamMessenger.didset, v39, ObjectType, v40, v37, &protocol witness table for AnyCanvas);

    swift_unknownObjectRelease();
    *(v1 + direct field offset for Canvas.multipeerConnection) = v38;

    v12 = v57;
  }

  else
  {
    if (one-time initialization token for multipeerLogger != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, multipeerLogger);
    v42 = v1;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v65[0] = v46;
      *v45 = 136315138;
      v47 = ObjectIdentifier.debugDescription.getter();
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v65);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_1D38C4000, v43, v44, "Ended session for %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x1DA6D0660](v46, -1, -1);
      MEMORY[0x1DA6D0660](v45, -1, -1);
    }

    *(v42 + direct field offset for Canvas.multipeerConnection) = 0;
  }

  AnyCanvas.liveStreamDrawings.setter(*v12 != 0);
  v50 = *(v12 + 1);
  v51 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0);
  v52 = swift_unknownObjectRetain();
  return v51(v52, v50);
}

{
  v1 = v0;
  v2 = type metadata accessor for CRMulticastSyncManagerCatchupBehavior();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v56 - v8;
  v10 = type metadata accessor for CRKeyPath();
  v65 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v1 + direct field offset for Canvas.liveStreamMessenger);
  swift_beginAccess();
  if (*v12)
  {
    v60 = v10;
    v61 = v5;
    v63 = v2;
    v68 = v12[1];
    v13 = one-time initialization token for multipeerLogger;
    swift_unknownObjectRetain();
    if (v13 != -1)
    {
      swift_once();
    }

    v14 = v9;
    v59 = v6;
    v62 = v3;
    v64 = v12;
    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, multipeerLogger);
    swift_unknownObjectRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v70[0] = v19;
      *v18 = 136315138;
      v20 = ObjectIdentifier.debugDescription.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v70);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1D38C4000, v16, v17, "New session for %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1DA6D0660](v19, -1, -1);
      MEMORY[0x1DA6D0660](v18, -1, -1);
    }

    ObjectType = swift_getObjectType();
    v58 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_context);
    v23 = direct field offset for Canvas.paperView;
    v24 = *(v1 + direct field offset for Canvas.paperView);
    v25 = MEMORY[0x1E69E7D40];
    v26 = *((*MEMORY[0x1E69E7D40] & *v24) + 0x3F0);
    swift_beginAccess();
    v27 = *(v7 + 16);
    v28 = v24 + v26;
    v29 = v14;
    v30 = v14;
    v31 = v59;
    v27(v30, v28, v59);
    Capsule.rootID.getter();
    v57 = *(v7 + 8);
    v57(v29, v31);
    v32 = *(v1 + v23);
    v33 = *((*v25 & *v32) + 0x3F0);
    swift_beginAccess();
    v27(v29, &v32[v33], v31);
    v34 = v61;
    v35 = v62;
    v36 = v63;
    (*(v62 + 104))(v61, *MEMORY[0x1E6995390], v63);
    v37 = type metadata accessor for Image(0);
    v38 = lazy protocol witness table accessor for type PaperTextAttachmentCanvasView and conformance PaperTextAttachmentCanvasView(&lazy protocol witness table cache variable for type Image and conformance Image, 255, type metadata accessor for Image);
    v67 = v1;
    v39 = v69;
    v40 = PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:)(v58, v69, v29, v34, 0x7265706150, 0xE500000000000000, ObjectType, v37, v68, v38);
    (*(v35 + 8))(v34, v36);
    v57(v29, v31);
    (*(v65 + 8))(v39, v60);
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6CanvasCyAA5ImageVGMd);
    v1 = v67;
    PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:)(v40, v67, 0x7265706150, 0xE500000000000000, partial apply for specialized closure #1 in Canvas.liveStreamMessenger.didset, v41, ObjectType, v42, v68, &protocol witness table for AnyCanvas);

    swift_unknownObjectRelease();
    v12 = v64;
  }

  else
  {
    if (one-time initialization token for multipeerLogger != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, multipeerLogger);
    v44 = v1;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v70[0] = v48;
      *v47 = 136315138;
      v49 = ObjectIdentifier.debugDescription.getter();
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v70);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_1D38C4000, v45, v46, "Ended session for %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x1DA6D0660](v48, -1, -1);
      MEMORY[0x1DA6D0660](v47, -1, -1);
    }

    v40 = 0;
  }

  *(v1 + direct field offset for Canvas.multipeerConnection) = v40;

  AnyCanvas.liveStreamDrawings.setter(*v12 != 0);
  v52 = v12[1];
  v53 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0);
  v54 = swift_unknownObjectRetain();
  return v53(v54, v52);
}

void specialized closure #1 in Canvas.liveStreamMessenger.didset(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v8 = 3;
    v4 = MEMORY[0x1E69E7D40];
    v5 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x7D8);
    v6 = type metadata accessor for Paper(0);
    v7 = lazy protocol witness table accessor for type PaperTextAttachmentCanvasView and conformance PaperTextAttachmentCanvasView(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper);
    v5(a1, &v8, v6, v7);
    v8 = 3;
    (*((*v4 & *v3) + 0x7B0))(&v8);
  }
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v11 = 3;
    v4 = MEMORY[0x1E69E7D40];
    v5 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x7D8);
    v6 = type metadata accessor for Image(0);
    v7 = lazy protocol witness table accessor for type PaperTextAttachmentCanvasView and conformance PaperTextAttachmentCanvasView(&lazy protocol witness table cache variable for type Image and conformance Image, 255, type metadata accessor for Image);
    v8 = v5(a1, &v11, v6, v7);
    MEMORY[0x1EEE9AC00](v8);
    (*((*v4 & *v3) + 0x7C0))(partial apply for closure #1 in AnyCanvas.forwardChanges(from:));
    v9 = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (v9)
    {
      v10 = *(v9 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController);
      if (v10)
      {
        *(v10 + direct field offset for MiniMenuController.needsStateUpdate) = 1;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t PaperTextAttachmentCanvasView.liveStreamMessenger.getter()
{
  if (*(v0 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView))
  {
    swift_beginAccess();
    return swift_unknownObjectRetain();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *key path getter for PaperTextAttachmentCanvasView.liveStreamMessenger : PaperTextAttachmentCanvasView@<X0>(void *result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*result + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView);
  if (v3)
  {
    v4 = direct field offset for Canvas.liveStreamMessenger;
    swift_beginAccess();
    *a2 = *(v3 + v4);
    return swift_unknownObjectRetain();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void key path setter for PaperTextAttachmentCanvasView.liveStreamMessenger : PaperTextAttachmentCanvasView(uint64_t *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView);
  if (v2)
  {
    v3 = *a1;
    v4 = a1[1];
    v5 = &v2[direct field offset for Canvas.liveStreamMessenger];
    swift_beginAccess();
    *v5 = v3;
    *(v5 + 1) = v4;
    v6 = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    specialized Canvas.liveStreamMessenger.didset();
  }

  else
  {
    __break(1u);
  }
}

void (*PaperTextAttachmentCanvasView.liveStreamMessenger.modify(void (**a1)(uint64_t a1, char a2)))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x68uLL);
  }

  v4 = result;
  *a1 = result;
  v5 = OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView;
  *(result + 11) = v1;
  *(result + 12) = v5;
  v6 = *(v1 + v5);
  if (v6)
  {
    v7 = direct field offset for Canvas.liveStreamMessenger;
    swift_beginAccess();
    *(v4 + 72) = *(v6 + v7);
    swift_unknownObjectRetain();
    return PaperTextAttachmentCanvasView.liveStreamMessenger.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void PaperTextAttachmentCanvasView.liveStreamMessenger.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*(*a1 + 88) + *(*a1 + 96));
  if ((a2 & 1) == 0)
  {
    if (v3)
    {
      v8 = v2[9];
      v9 = v2[10];
      v10 = &v3[direct field offset for Canvas.liveStreamMessenger];
      swift_beginAccess();
      *v10 = v8;
      *(v10 + 1) = v9;
      v11 = v3;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      specialized Canvas.liveStreamMessenger.didset();
      swift_unknownObjectRelease();

      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v2[9];
  v5 = v2[10];
  v6 = &v3[direct field offset for Canvas.liveStreamMessenger];
  swift_beginAccess();
  *v6 = v4;
  *(v6 + 1) = v5;
  swift_unknownObjectRetain_n();
  v7 = v3;
  swift_unknownObjectRelease();
  specialized Canvas.liveStreamMessenger.didset();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
LABEL_6:

  free(v2);
}

id PaperTextAttachmentCanvasView.init(frame:paperIdentifier:paperURL:coherenceContextURL:encryptionDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  ObjectType = swift_getObjectType();
  *&v9[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_canvasViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_canvasTiledView] = 0;
  *&v9[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView] = 0;
  *&v9[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_previousMathDocument] = 0;
  *&v9[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_contentView] = 0;
  v20 = &v9[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_encryptionDelegate];
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v21 = &v9[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_paperIdentifier];
  *v21 = a1;
  *(v21 + 1) = a2;
  v22 = OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_paperURL;
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v9[v22], a3, v23);
  outlined init with copy of Date?(a4, &v9[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_coherenceContextURL], &_s10Foundation3URLVSgMd);
  swift_beginAccess();
  outlined assign with copy of EncryptionDelegate?(a5, v20);
  swift_endAccess();
  v27.receiver = v9;
  v27.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a6, a7, a8, a9);
  PaperTextAttachmentCanvasView.setupViews()();

  outlined destroy of StocksKitCurrencyCache.Provider?(a5, &_s9Coherence18EncryptionDelegate_pSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(a4, &_s10Foundation3URLVSgMd);
  (*(v24 + 8))(a3, v23);
  return v25;
}

Swift::Void __swiftcall PaperTextAttachmentCanvasView.setupViews()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v60 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v59 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v59 - v8;
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v59 - v12;
  [v0 frame];
  v15 = v14;
  v17 = v16;
  [v0 setMinimumZoomScale_];
  [v0 setMaximumZoomScale_];
  [v0 setAlwaysBounceVertical_];
  [v0 setAlwaysBounceHorizontal_];
  [v0 setDelaysContentTouches_];
  [v0 setContentInsetAdjustmentBehavior_];
  v18 = [objc_opt_self() standardUserDefaults];
  v19 = MEMORY[0x1DA6CCED0](0xD000000000000036, 0x80000001D4088200);
  v61 = [v18 BOOLForKey_];

  v20 = *&v0[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_paperIdentifier + 8];
  v59 = *&v0[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_paperIdentifier];
  v21 = OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_paperURL;
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v13, &v1[v21], v22);
  (*(v23 + 56))(v13, 0, 1, v22);
  outlined init with copy of Date?(&v1[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_coherenceContextURL], v9, &_s10Foundation3URLVSgMd);
  v24 = OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_encryptionDelegate;
  swift_beginAccess();
  outlined init with copy of Date?(&v1[v24], v64, &_s9Coherence18EncryptionDelegate_pSgMd);
  v25 = objc_allocWithZone(type metadata accessor for PaperNoTextViewTextAttachmentView(0));
  swift_unknownObjectUnownedInit();
  *&v25[direct field offset for PaperNoTextViewTextAttachmentView.hostDocument] = 0;
  outlined init with copy of Date?(v13, v6, &_s10Foundation3URLVSgMd);
  v26 = v9;
  v27 = v9;
  v28 = v60;
  outlined init with copy of Date?(v26, v60, &_s10Foundation3URLVSgMd);
  outlined init with copy of Date?(v64, v63, &_s9Coherence18EncryptionDelegate_pSgMd);
  v62 = 0;

  v29 = PaperTextAttachmentView.init(paperIdentifier:paperURL:attachment:coherenceContextURL:encryptionDelegate:editingMode:inserted:)(v59, v20, v6, 0, v28, v63, &v62, 0);
  outlined destroy of StocksKitCurrencyCache.Provider?(v64, &_s9Coherence18EncryptionDelegate_pSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s10Foundation3URLVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s10Foundation3URLVSgMd);
  v30 = OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView;
  v31 = *&v1[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView];
  *&v1[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView] = v29;
  v32 = v29;

  [v32 setFrame_];
  v33 = *&v1[v30];
  if (!v33)
  {
    __break(1u);
    goto LABEL_18;
  }

  *(v33 + direct field offset for PaperTextAttachmentView.paperViewDelegate + 8) = &protocol witness table for PaperTextAttachmentCanvasView;
  swift_unknownObjectWeakAssign();
  v34 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v35 = OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_contentView;
  v36 = *&v1[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_contentView];
  *&v1[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_contentView] = v34;
  v37 = v34;

  if (!v37)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v37 setOpaque_];

  v38 = *&v1[v35];
  if (!v38)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 systemBackgroundColor];
  [v40 setBackgroundColor_];

  v42 = *&v1[v35];
  if (!v42)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!*&v1[v30])
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v42 addSubview_];
  v43 = type metadata accessor for PKDrawingCoherence(0);
  v65 = &type metadata for PencilAndPaperFeatureFlags;
  v44 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  v66 = v44;
  v64[0] = 3;
  v45 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v64);
  v46 = objc_allocWithZone(MEMORY[0x1E6978518]);
  v47 = [v46 initInScrollView:v1 sixChannelBlending:v61 ^ 1 defaultDrawingClass:swift_getObjCClassFromMetadata() readOnly:(v45 & 1) == 0];
  v48 = [v47 canvasView];
  if (v48)
  {
    v49 = v48;
    v50 = [objc_allocWithZone(v43) init];
    [v49 setDrawing_];
  }

  v51 = [v47 canvasView];
  if (v51)
  {
    v52 = v51;
    v53 = [v51 drawingGestureRecognizer];

    v65 = &type metadata for PencilAndPaperFeatureFlags;
    v66 = v44;
    v64[0] = 3;
    LOBYTE(v52) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0(v64);
    [v53 setEnabled_];
  }

  [v47 setDrawingPolicy_];
  v54 = [v47 canvasView];
  if (v54)
  {
    v55 = v54;
    [v54 setOpaque_];
  }

  if ((v61 & 1) == 0)
  {
    [v47 setContentSnapshottingView_];
  }

  v56 = *&v1[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_canvasTiledView];
  *&v1[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_canvasTiledView] = v47;
  v57 = v47;

  if (!*&v1[v30])
  {
    goto LABEL_22;
  }

  swift_unknownObjectUnownedAssign();

  [v57 setAttachmentContainerView_];
  v58 = *&v1[v35];
  if (v58)
  {
    [v1 insertSubview:v58 atIndex:0];
    [v57 _layoutSubviews];

    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t PaperNoTextViewTextAttachmentView.__allocating_init(paperIdentifier:paperURL:attachment:coherenceContextURL:encryptionDelegate:editingMode:inserted:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, int a8)
{
  v27 = a8;
  v25 = a2;
  v26 = a4;
  v24 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  v19 = objc_allocWithZone(v8);
  v20 = *a7;
  swift_unknownObjectUnownedInit();
  *&v19[direct field offset for PaperNoTextViewTextAttachmentView.hostDocument] = 0;
  outlined init with copy of Date?(a3, v18, &_s10Foundation3URLVSgMd);
  outlined init with copy of Date?(a5, v15, &_s10Foundation3URLVSgMd);
  outlined init with copy of Date?(a6, v29, &_s9Coherence18EncryptionDelegate_pSgMd);
  v28 = v20;
  v21 = PaperTextAttachmentView.init(paperIdentifier:paperURL:attachment:coherenceContextURL:encryptionDelegate:editingMode:inserted:)(v24, v25, v18, v26, v15, v29, &v28, v27);
  outlined destroy of StocksKitCurrencyCache.Provider?(a6, &_s9Coherence18EncryptionDelegate_pSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(a5, &_s10Foundation3URLVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(a3, &_s10Foundation3URLVSgMd);
  return v21;
}

Swift::Void __swiftcall PaperTextAttachmentCanvasView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  [v0 bounds];
  PaperTextAttachmentCanvasView.updateSubviews(bounds:)(v2);
}

Swift::Void __swiftcall PaperTextAttachmentCanvasView.updateSubviews(bounds:)(__C::CGRect bounds)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_contentView;
  v4 = *(v2 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_contentView);
  if (!v4)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [v4 frame];
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  if (CGRectEqualToRect(v26, v28))
  {
    return;
  }

  v9 = *(v2 + v3);
  if (!v9)
  {
    goto LABEL_15;
  }

  [v9 setFrame_];
  v10 = OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_canvasTiledView;
  v11 = *(v2 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_canvasTiledView);
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v11 setFrame_];
  v12 = *(v2 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView);
  if (!v12)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12;
  [v13 frame];
  v15 = v14;
  v17 = v16;
  [v13 frame];
  v19 = v18;
  v20 = [v13 superview];
  v21 = PaperTextAttachmentView.desiredTextAttachmentSize(containerView:)(v20);

  v22 = v21.height != v17 || v21.width != v15;
  v27.origin.x = 0.0;
  v27.origin.y = v19;
  v27.size.width = v21.width;
  v27.size.height = v21.height;
  PaperTextAttachmentView.updateAttachmentBounds(frame:ensureLayout:needsInvalidateLayout:shouldRedraw:)(v27, 0, v22, 1);

  v23 = *(v2 + v10);
  if (!v23)
  {
    goto LABEL_18;
  }

  [v23 _layoutSubviews];
  v24 = *(v2 + v10);
  if (!v24)
  {
LABEL_19:
    __break(1u);
    return;
  }

  [v24 updateTilesForVisibleRect];
}

id PaperTextAttachmentCanvasView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PaperTextAttachmentCanvasView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t closure #1 in DrawingFindResult.draw(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  type metadata accessor for Paper(0);
  v8[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in DrawingFindResult.draw(for:), 0, 0);
}

uint64_t closure #1 in DrawingFindResult.draw(for:)()
{
  v0[17] = OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView;
  v0[18] = type metadata accessor for MainActor();
  v0[19] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in DrawingFindResult.draw(for:), v2, v1);
}

{
  v1 = *(v0[10] + v0[17]);
  v0[20] = v1;
  v2 = v1;

  return MEMORY[0x1EEE6DFA0](closure #1 in DrawingFindResult.draw(for:), 0, 0);
}

{
  v1 = v0[20];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  v5 = *&v1[direct field offset for Canvas.paperView];
  v6 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x3F0);
  swift_beginAccess();
  (*(v3 + 16))(v2, &v5[v6], v4);

  return MEMORY[0x1EEE6DFA0](closure #1 in DrawingFindResult.draw(for:), 0, 0);
}

{
  v1 = v0[11];
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  Capsule.root.getter();
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = closure #1 in DrawingFindResult.draw(for:);
  v7 = v0[16];
  v8 = v0[13];

  return specialized CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:)(v8, v7, 0, 0, 0, v2, v3, v4, v5);
}

{
  v1 = v0[23];
  if (v1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
  }

  else
  {
    v2 = 0;
  }

  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[8];
  _s8PaperKit0A0VWOhTm_7(v0[13], type metadata accessor for Paper);
  (*(v4 + 8))(v3, v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  *(v6 + 16) = v2;

  OS_dispatch_semaphore.signal()();

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in DrawingFindResult.draw(for:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 160))
  {

    *(v3 + 168) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    a1 = closure #1 in DrawingFindResult.draw(for:);
    a2 = v4;
    a3 = v6;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t closure #1 in DrawingFindResult.draw(for:)(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in DrawingFindResult.draw(for:), 0, 0);
}

__n128 protocol witness for FindResult.frames(in:) in conformance DrawingFindResult()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
  v2 = swift_allocObject();
  v3 = *(v1 + 24);
  *(v2 + 16) = xmmword_1D4058CF0;
  *(v2 + 32) = v3;
  result = *(v1 + 40);
  *(v2 + 48) = result;
  return result;
}

void closure #1 in PaperTextAttachmentCanvasView.performTextSearch(queryString:ignoreCase:wholeWords:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, int a6, void *a7, void *a8, uint64_t a9)
{
  v41 = a8;
  v38 = a2;
  v39 = a7;
  v42 = a5;
  v43 = a6;
  v36 = a1;
  v37 = a9;
  v11 = type metadata accessor for PKDrawing();
  v34 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay8PaperKit17DrawingFindResultCGs5NeverOGMd);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v33 - v18;
  v40 = MEMORY[0x1DA6CCED0](a3, a4, v17);
  (*(v15 + 16))(v19, v36, v14);
  (*(v12 + 16))(&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v11);
  v20 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v12 + 80) + v22 + 8) & ~*(v12 + 80);
  v24 = swift_allocObject();
  v25 = v38;
  *(v24 + 16) = v38;
  (*(v15 + 32))(v24 + v20, v19, v14);
  v26 = v39;
  *(v24 + v21) = v39;
  v27 = v41;
  *(v24 + v22) = v41;
  (*(v12 + 32))(v24 + v23, v35, v34);
  aBlock[4] = partial apply for closure #1 in closure #1 in PaperTextAttachmentCanvasView.performTextSearch(queryString:ignoreCase:wholeWords:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [PKSearchQueryItem]) -> ();
  aBlock[3] = &block_descriptor_74;
  v28 = _Block_copy(aBlock);
  v29 = v25;
  v30 = v26;
  v31 = v27;

  v32 = v40;
  [v29 performSearchQuery:v40 fullWordsOnly:v42 & 1 caseMatchingOnly:(v43 & 1) == 0 withBlock:v28];
  _Block_release(v28);
}

uint64_t closure #1 in closure #1 in PaperTextAttachmentCanvasView.performTextSearch(queryString:ignoreCase:wholeWords:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v9 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
LABEL_16:
      v32.a = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay8PaperKit17DrawingFindResultCGs5NeverOGMd);
      return CheckedContinuation.resume(returning:)();
    }

    v33 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      break;
    }

    if (v7)
    {
      v11 = __CocoaSet.count.getter();
    }

    else
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    v7 = a1 & 0xC000000000000001;
    v30 = *MEMORY[0x1E69785E0];
    v13 = v11 & ~(v11 >> 63);
    while (v13 != v12)
    {
      if (v7)
      {
        v14 = MEMORY[0x1DA6CE0C0](v12, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v14 = *(a1 + 8 * v12 + 32);
      }

      v15 = v14;
      [v14 bounds];
      [a4 convertRect:a5 fromCoordinateSpace:?];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      PKDrawing.bounds.getter();
      Width = CGRectGetWidth(v34);
      CGAffineTransformMakeScale(&v32, Width / v30, Width / v30);
      v35.origin.x = v17;
      v35.origin.y = v19;
      v35.size.width = v21;
      v35.size.height = v23;
      v36 = CGRectApplyAffineTransform(v35, &v32);
      v37 = CGRectInset(v36, -8.0, -8.0);
      x = v37.origin.x;
      y = v37.origin.y;
      v27 = v37.size.width;
      height = v37.size.height;
      type metadata accessor for DrawingFindResult();
      v29 = swift_allocObject();
      *(v29 + 2) = v12;
      v29[3] = x;
      v29[4] = y;
      v29[5] = v27;
      v29[6] = height;
      v29[7] = v17;
      v29[8] = v19;
      v29[9] = v21;
      v29[10] = v23;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (i == ++v12)
      {
        v9 = v33;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for FindResultProvider.performTextSearch(queryString:ignoreCase:wholeWords:) in conformance PaperTextAttachmentCanvasView(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:);

  return PaperTextAttachmentCanvasView.performTextSearch(queryString:ignoreCase:wholeWords:)(a1, a2, a3, a4);
}

id @objc PaperNoTextViewTextAttachmentView.init(coder:)(char *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectUnownedInit();
  *&a1[direct field offset for PaperNoTextViewTextAttachmentView.hostDocument] = 0;
  v8.receiver = a1;
  v8.super_class = type metadata accessor for PaperNoTextViewTextAttachmentView(0);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

uint64_t PaperNoTextViewTextAttachmentView.__ivar_destroyer()
{
  swift_unknownObjectUnownedDestroy();
}

id PaperNoTextViewTextAttachmentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaperNoTextViewTextAttachmentView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc PaperNoTextViewTextAttachmentView.__ivar_destroyer()
{
  swift_unknownObjectUnownedDestroy();
}

uint64_t specialized CanvasElementImageRenderer.init(renderer:)(uint64_t a1, uint64_t a2)
{
  v6[3] = type metadata accessor for ImageRenderer();
  v6[4] = &protocol witness table for ImageRenderer;
  v6[0] = a1;
  *(a2 + 74) = 0;
  outlined init with copy of FindResult(v6, v5);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = PKIsSixChannelBlendEnabledInPaper();
  outlined init with copy of FindResult(v5, a2 + 16);
  LOBYTE(a1) = [objc_opt_self() isMainThread];
  __swift_destroy_boxed_opaque_existential_0(v5);
  __swift_destroy_boxed_opaque_existential_0(v6);
  *(a2 + 73) = a1;
  return a2;
}

unint64_t type metadata accessor for UIGraphicsImageRendererFormat()
{
  result = lazy cache variable for type metadata for UIGraphicsImageRendererFormat;
  if (!lazy cache variable for type metadata for UIGraphicsImageRendererFormat)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIGraphicsImageRendererFormat);
  }

  return result;
}

uint64_t partial apply for closure #1 in DrawingFindResult.draw(for:)(uint64_t a1)
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
  v11[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in DrawingFindResult.draw(for:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t instantiation function for generic protocol witness table for DrawingFindResult(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type PaperTextAttachmentCanvasView and conformance PaperTextAttachmentCanvasView(&lazy protocol witness table cache variable for type DrawingFindResult and conformance DrawingFindResult, a2, type metadata accessor for DrawingFindResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type PaperTextAttachmentCanvasView and conformance PaperTextAttachmentCanvasView(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void type metadata completion function for PaperTextAttachmentCanvasView()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL?();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
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