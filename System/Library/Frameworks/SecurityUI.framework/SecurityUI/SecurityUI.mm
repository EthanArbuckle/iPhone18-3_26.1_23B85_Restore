id SFLogDefault()
{
  if (SFLogDefault_onceToken != -1)
  {
    SFLogDefault_cold_1();
  }

  v1 = SFLogDefault___logObj;

  return v1;
}

uint64_t __SFLogDefault_block_invoke()
{
  SFLogDefault___logObj = os_log_create("com.apple.SecurityUI", "Default");

  return MEMORY[0x2821F96F8]();
}

id SFLogCertificatePresentation()
{
  if (SFLogCertificatePresentation_onceToken != -1)
  {
    SFLogCertificatePresentation_cold_1();
  }

  v1 = SFLogCertificatePresentation___logObj;

  return v1;
}

uint64_t __SFLogCertificatePresentation_block_invoke()
{
  SFLogCertificatePresentation___logObj = os_log_create("com.apple.SecurityUI", "CertificatePresentation");

  return MEMORY[0x2821F96F8]();
}

id SFLogSFCertificatePresentation()
{
  if (SFLogSFCertificatePresentation_onceToken != -1)
  {
    SFLogSFCertificatePresentation_cold_1();
  }

  v1 = SFLogSFCertificatePresentation___logObj;

  return v1;
}

uint64_t __SFLogSFCertificatePresentation_block_invoke()
{
  SFLogSFCertificatePresentation___logObj = os_log_create("com.apple.SecurityUI", "SFCertificatePresentation");

  return MEMORY[0x2821F96F8]();
}

id SFLogCertificateModifier()
{
  if (SFLogCertificateModifier_onceToken != -1)
  {
    SFLogCertificateModifier_cold_1();
  }

  v1 = SFLogCertificateModifier___logObj;

  return v1;
}

uint64_t __SFLogCertificateModifier_block_invoke()
{
  SFLogCertificateModifier___logObj = os_log_create("com.apple.SecurityUI", "CertificateModifier");

  return MEMORY[0x2821F96F8]();
}

id SFLogCertificateView()
{
  if (SFLogCertificateView_onceToken != -1)
  {
    SFLogCertificateView_cold_1();
  }

  v1 = SFLogCertificateView___logObj;

  return v1;
}

uint64_t __SFLogCertificateView_block_invoke()
{
  SFLogCertificateView___logObj = os_log_create("com.apple.SecurityUI", "CertificateView");

  return MEMORY[0x2821F96F8]();
}

id SFLogCertificateChainView()
{
  if (SFLogCertificateChainView_onceToken != -1)
  {
    SFLogCertificateChainView_cold_1();
  }

  v1 = SFLogCertificateChainView___logObj;

  return v1;
}

uint64_t __SFLogCertificateChainView_block_invoke()
{
  SFLogCertificateChainView___logObj = os_log_create("com.apple.SecurityUI", "CertificateChainView");

  return MEMORY[0x2821F96F8]();
}

id SFLogCertificateDetailsView()
{
  if (SFLogCertificateDetailsView_onceToken != -1)
  {
    SFLogCertificateDetailsView_cold_1();
  }

  v1 = SFLogCertificateDetailsView___logObj;

  return v1;
}

uint64_t __SFLogCertificateDetailsView_block_invoke()
{
  SFLogCertificateDetailsView___logObj = os_log_create("com.apple.SecurityUI", "CertificateDetailsView");

  return MEMORY[0x2821F96F8]();
}

id SFLogCertificatePresentationView()
{
  if (SFLogCertificatePresentationView_onceToken != -1)
  {
    SFLogCertificatePresentationView_cold_1();
  }

  v1 = SFLogCertificatePresentationView___logObj;

  return v1;
}

uint64_t __SFLogCertificatePresentationView_block_invoke()
{
  SFLogCertificatePresentationView___logObj = os_log_create("com.apple.SecurityUI", "CertificatePresentationView");

  return MEMORY[0x2821F96F8]();
}

id SFLogCertificateHostingView()
{
  if (SFLogCertificateHostingView_onceToken != -1)
  {
    SFLogCertificateHostingView_cold_1();
  }

  v1 = SFLogCertificateHostingView___logObj;

  return v1;
}

uint64_t __SFLogCertificateHostingView_block_invoke()
{
  SFLogCertificateHostingView___logObj = os_log_create("com.apple.SecurityUI", "CertificateHostingView");

  return MEMORY[0x2821F96F8]();
}

id SFLogSFCertificatePresentationController()
{
  if (SFLogSFCertificatePresentationController_onceToken != -1)
  {
    SFLogSFCertificatePresentationController_cold_1();
  }

  v1 = SFLogSFCertificatePresentationController___logObj;

  return v1;
}

uint64_t __SFLogSFCertificatePresentationController_block_invoke()
{
  SFLogSFCertificatePresentationController___logObj = os_log_create("com.apple.SecurityUI", "SFCertificatePresentationController");

  return MEMORY[0x2821F96F8]();
}

id SFLogSFCertificatePresentationRequest()
{
  if (SFLogSFCertificatePresentationRequest_onceToken != -1)
  {
    SFLogSFCertificatePresentationRequest_cold_1();
  }

  v1 = SFLogSFCertificatePresentationRequest___logObj;

  return v1;
}

uint64_t __SFLogSFCertificatePresentationRequest_block_invoke()
{
  SFLogSFCertificatePresentationRequest___logObj = os_log_create("com.apple.SecurityUI", "SFCertificatePresentationRequest");

  return MEMORY[0x2821F96F8]();
}

id SFLogSFCertificateViewController()
{
  if (SFLogSFCertificateViewController_onceToken != -1)
  {
    SFLogSFCertificateViewController_cold_1();
  }

  v1 = SFLogSFCertificateViewController___logObj;

  return v1;
}

uint64_t __SFLogSFCertificateViewController_block_invoke()
{
  SFLogSFCertificateViewController___logObj = os_log_create("com.apple.SecurityUI", "SFCertificateViewController");

  return MEMORY[0x2821F96F8]();
}

id SFLogSFCertificateManager()
{
  if (SFLogSFCertificateManager_onceToken != -1)
  {
    SFLogSFCertificateManager_cold_1();
  }

  v1 = SFLogSFCertificateManager___logObj;

  return v1;
}

uint64_t __SFLogSFCertificateManager_block_invoke()
{
  SFLogSFCertificateManager___logObj = os_log_create("com.apple.SecurityUI", "SFCertificateManager");

  return MEMORY[0x2821F96F8]();
}

id SFLogSFCertificateProperties()
{
  if (SFLogSFCertificateProperties_onceToken != -1)
  {
    SFLogSFCertificateProperties_cold_1();
  }

  v1 = SFLogSFCertificateProperties___logObj;

  return v1;
}

uint64_t __SFLogSFCertificateProperties_block_invoke()
{
  SFLogSFCertificateProperties___logObj = os_log_create("com.apple.SecurityUI", "SFCertificateProperties");

  return MEMORY[0x2821F96F8]();
}

uint64_t View.certificateSheet(trust:title:message:help:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v44 = a4;
  v45 = a6;
  v48 = a9;
  v49 = a10;
  v50 = a11;
  v47 = type metadata accessor for CertificateModifier();
  v17 = *(*(v47 - 8) + 64);
  (MEMORY[0x28223BE20])();
  v46 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v19 = *(v41 + 64);
  (MEMORY[0x28223BE20])();
  v21 = &v40 - v20;
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR) - 8) + 64);
  v23 = (MEMORY[0x28223BE20])();
  v43 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v42 = &v40 - v25;
  outlined init with copy of URL?(a8, v21, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  type metadata accessor for MainActor();

  v40 = a3;
  v26 = a5;

  v27 = static MainActor.shared.getter();
  v28 = (*(v41 + 80) + 88) & ~*(v41 + 80);
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D85700];
  v29[2] = v27;
  v29[3] = v30;
  v29[4] = a1;
  v29[5] = a2;
  v32 = v44;
  v31 = v45;
  v29[6] = a3;
  v29[7] = v32;
  v29[8] = v26;
  v29[9] = v31;
  v29[10] = a7;
  outlined init with take of URL?(v21, v29 + v28);

  v33 = v40;
  v34 = static MainActor.shared.getter();
  v35 = swift_allocObject();
  v35[2] = v34;
  v35[3] = MEMORY[0x277D85700];
  v35[4] = a1;
  v35[5] = a2;
  v35[6] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  v36 = v42;
  Binding.init(get:set:)();
  v37 = v43;
  outlined init with copy of URL?(v36, v43, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  v38 = v46;
  CertificateModifier.init(request:)(v37, v46);
  MEMORY[0x23EE93670](v38, v49, v47, v50);
  outlined destroy of CertificateModifier(v38);
  return outlined destroy of Binding<CertificateRequest?>(v36);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t closure #1 in View.certificateSheet(trust:title:message:help:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v20 = v26 - v19;
  v26[1] = a1;
  v26[2] = a2;
  v26[3] = a3;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo11SecTrustRefaSgGMd, &_s7SwiftUI7BindingVySo11SecTrustRefaSgGMR);
  MEMORY[0x23EE93750](v26, v21);
  v22 = v26[0];
  if (v26[0])
  {
    outlined init with copy of URL?(a8, v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    CertificateRequest.init(trust:qwacTrust:title:message:help:)(v22, 0, a4, a5, a6, a7, v20, a9);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = type metadata accessor for CertificateRequest();
  return (*(*(v24 - 8) + 56))(a9, v23, 1, v24);
}

uint64_t sub_23AAA3724()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 88) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = *(v0 + 40);

  v8 = *(v0 + 64);

  v9 = *(v0 + 80);

  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3, 1, v10))
  {
    (*(v11 + 8))(v0 + v3, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in View.certificateSheet(trust:title:message:help:)@<X0>(void *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = v1[10];
  v11 = v1 + ((*(v3 + 80) + 88) & ~*(v3 + 80));

  return closure #1 in View.certificateSheet(trust:title:message:help:)(v4, v5, v6, v7, v8, v9, v10, v11, a1);
}

uint64_t sub_23AAA3968()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #2 in View.certificateSheet(trust:title:message:help:)(uint64_t a1)
{
  v3 = type metadata accessor for CertificateRequest();
  result = (*(*(v3 - 8) + 48))(a1, 1, v3);
  if (result == 1)
  {
    v5 = *(v1 + 32);
    v6 = *(v1 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo11SecTrustRefaSgGMd, &_s7SwiftUI7BindingVySo11SecTrustRefaSgGMR);
    return Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of CertificateModifier(uint64_t a1)
{
  v2 = type metadata accessor for CertificateModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of Binding<CertificateRequest?>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23AAA3B88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for CertificateModifier();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type CertificateModifier and conformance CertificateModifier();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type CertificateModifier and conformance CertificateModifier()
{
  result = lazy protocol witness table cache variable for type CertificateModifier and conformance CertificateModifier;
  if (!lazy protocol witness table cache variable for type CertificateModifier and conformance CertificateModifier)
  {
    type metadata accessor for CertificateModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateModifier and conformance CertificateModifier);
  }

  return result;
}

void type metadata accessor for SecTrustRef()
{
  if (!lazy cache variable for type metadata for SecTrustRef)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for SecTrustRef);
    }
  }
}

unint64_t SFLog.Category.rawValue.getter(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
    case 13:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6369666974726563;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
    case 8:
      result = 0xD000000000000016;
      break;
    case 7:
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 9:
      result = 0xD000000000000023;
      break;
    case 10:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SFLog.Category(char *a1, char *a2)
{
  v2 = *a2;
  v3 = SFLog.Category.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == SFLog.Category.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SFLog.Category()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SFLog.Category.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SFLog.Category()
{
  SFLog.Category.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SFLog.Category()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SFLog.Category.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SFLog.Category@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SFLog.Category.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SFLog.Category@<X0>(unint64_t *a1@<X8>)
{
  result = SFLog.Category.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static SFLog.default.getter()
{
  v0 = SFLogDefault();

  return Logger.init(_:)();
}

uint64_t static SFLog.certificatePresentation.getter()
{
  v0 = SFLogCertificatePresentation();

  return Logger.init(_:)();
}

uint64_t static SFLog.sfCertificatePresentation.getter()
{
  v0 = SFLogSFCertificatePresentation();

  return Logger.init(_:)();
}

uint64_t static SFLog.certificateModifier.getter()
{
  v0 = SFLogCertificateModifier();

  return Logger.init(_:)();
}

uint64_t static SFLog.certificateView.getter()
{
  v0 = SFLogCertificateView();

  return Logger.init(_:)();
}

uint64_t static SFLog.certificateChainView.getter()
{
  v0 = SFLogCertificateChainView();

  return Logger.init(_:)();
}

uint64_t static SFLog.certificateDetailsView.getter()
{
  v0 = SFLogCertificateDetailsView();

  return Logger.init(_:)();
}

uint64_t static SFLog.certificatePresentationView.getter()
{
  v0 = SFLogCertificatePresentationView();

  return Logger.init(_:)();
}

uint64_t static SFLog.certificateHostingView.getter()
{
  v0 = SFLogCertificateHostingView();

  return Logger.init(_:)();
}

uint64_t static SFLog.sfCertificatePresentationController.getter()
{
  v0 = SFLogSFCertificatePresentationController();

  return Logger.init(_:)();
}

uint64_t static SFLog.sfCertificatePresentationRequest.getter()
{
  v0 = SFLogSFCertificatePresentationRequest();

  return Logger.init(_:)();
}

uint64_t static SFLog.sfCertificateViewController.getter()
{
  v0 = SFLogSFCertificateViewController();

  return Logger.init(_:)();
}

uint64_t static SFLog.sfCertificateManager.getter()
{
  v0 = SFLogSFCertificateManager();

  return Logger.init(_:)();
}

uint64_t static SFLog.sfCertificateProperties.getter()
{
  v0 = SFLogSFCertificateProperties();

  return Logger.init(_:)();
}

uint64_t static SFLog.logFunctionCall(category:functionName:)(char a1, uint64_t a2, unint64_t a3)
{
  v100 = a2;
  v101 = a3;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v102 = v4;
  v103 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = MEMORY[0x28223BE20](v7);
  v9 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v11 = MEMORY[0x28223BE20](&v99 - v10);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v99 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v99 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v99 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v99 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v99 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v99 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v99 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v99 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v42 = &v99 - v41;
  switch(a1)
  {
    case 1:
      v69 = SFLogCertificatePresentation();
      Logger.init(_:)();
      v70 = v101;

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v104 = v74;
        *v73 = 136446210;
        *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v70, &v104);
        _os_log_impl(&dword_23AA9F000, v71, v72, "%{public}s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v74);
        MEMORY[0x23EE941B0](v74, -1, -1);
        MEMORY[0x23EE941B0](v73, -1, -1);
      }

      return (*(v103 + 8))(v35, v102);
    case 2:
      v50 = SFLogSFCertificatePresentation();
      goto LABEL_29;
    case 3:
      v57 = SFLogCertificateModifier();
      Logger.init(_:)();
      v58 = v101;

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v104 = v62;
        *v61 = 136446210;
        *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v58, &v104);
        _os_log_impl(&dword_23AA9F000, v59, v60, "%{public}s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v62);
        MEMORY[0x23EE941B0](v62, -1, -1);
        MEMORY[0x23EE941B0](v61, -1, -1);
      }

      return (*(v103 + 8))(v29, v102);
    case 4:
      v51 = SFLogCertificateView();
      Logger.init(_:)();
      v52 = v101;

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v104 = v56;
        *v55 = 136446210;
        *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v52, &v104);
        _os_log_impl(&dword_23AA9F000, v53, v54, "%{public}s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x23EE941B0](v56, -1, -1);
        MEMORY[0x23EE941B0](v55, -1, -1);
      }

      return (*(v103 + 8))(v26, v102);
    case 5:
      v75 = SFLogCertificateChainView();
      Logger.init(_:)();
      v76 = v101;

      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v104 = v80;
        *v79 = 136446210;
        *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v76, &v104);
        _os_log_impl(&dword_23AA9F000, v77, v78, "%{public}s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v80);
        MEMORY[0x23EE941B0](v80, -1, -1);
        MEMORY[0x23EE941B0](v79, -1, -1);
      }

      return (*(v103 + 8))(v23, v102);
    case 6:
      v81 = SFLogCertificateDetailsView();
      Logger.init(_:)();
      v82 = v101;

      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v104 = v86;
        *v85 = 136446210;
        *(v85 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v82, &v104);
        _os_log_impl(&dword_23AA9F000, v83, v84, "%{public}s", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v86);
        MEMORY[0x23EE941B0](v86, -1, -1);
        MEMORY[0x23EE941B0](v85, -1, -1);
      }

      return (*(v103 + 8))(v20, v102);
    case 7:
      v63 = SFLogCertificatePresentationView();
      Logger.init(_:)();
      v64 = v101;

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v104 = v68;
        *v67 = 136446210;
        *(v67 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v64, &v104);
        _os_log_impl(&dword_23AA9F000, v65, v66, "%{public}s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v68);
        MEMORY[0x23EE941B0](v68, -1, -1);
        MEMORY[0x23EE941B0](v67, -1, -1);
      }

      return (*(v103 + 8))(v17, v102);
    case 8:
      v93 = SFLogCertificateHostingView();
      Logger.init(_:)();
      v94 = v101;

      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v104 = v98;
        *v97 = 136446210;
        *(v97 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v94, &v104);
        _os_log_impl(&dword_23AA9F000, v95, v96, "%{public}s", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v98);
        MEMORY[0x23EE941B0](v98, -1, -1);
        MEMORY[0x23EE941B0](v97, -1, -1);
      }

      return (*(v103 + 8))(v14, v102);
    case 9:
      v32 = v37;
      v50 = SFLogSFCertificatePresentationController();
      goto LABEL_29;
    case 10:
      v32 = v36;
      v50 = SFLogSFCertificatePresentationRequest();
      goto LABEL_29;
    case 11:
      v32 = v40;
      v50 = SFLogSFCertificateViewController();
      goto LABEL_29;
    case 12:
      v32 = v39;
      v50 = SFLogSFCertificateManager();
      goto LABEL_29;
    case 13:
      v32 = v38;
      v50 = SFLogSFCertificateProperties();
LABEL_29:
      v87 = v50;
      Logger.init(_:)();
      v88 = v101;

      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v104 = v92;
        *v91 = 136446210;
        *(v91 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v88, &v104);
        _os_log_impl(&dword_23AA9F000, v89, v90, "%{public}s", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v92);
        MEMORY[0x23EE941B0](v92, -1, -1);
        MEMORY[0x23EE941B0](v91, -1, -1);
      }

      result = (*(v103 + 8))(v32, v102);
      break;
    default:
      v43 = SFLogDefault();
      Logger.init(_:)();
      v44 = v101;

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v104 = v48;
        *v47 = 136446210;
        *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v44, &v104);
        _os_log_impl(&dword_23AA9F000, v45, v46, "%{public}s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x23EE941B0](v48, -1, -1);
        MEMORY[0x23EE941B0](v47, -1, -1);
      }

      result = (*(v103 + 8))(v42, v102);
      break;
  }

  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t specialized SFLog.Category.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SFLog.Category.init(rawValue:), v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t lazy protocol witness table accessor for type SFLog.Category and conformance SFLog.Category()
{
  result = lazy protocol witness table cache variable for type SFLog.Category and conformance SFLog.Category;
  if (!lazy protocol witness table cache variable for type SFLog.Category and conformance SFLog.Category)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SFLog.Category and conformance SFLog.Category);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SFLog.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SFLog.Category(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t key path getter for CertificateView.dismiss : CertificateView@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CertificateView() + 20));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return _sxRi_zRi0_zlyytIsegr_SgWOy_0(v4);
}

uint64_t key path setter for CertificateView.dismiss : CertificateView(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for CertificateView() + 20));
  v8 = *v7;
  v9 = v7[1];
  _sxRi_zRi0_zlyytIsegr_SgWOy_0(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t CertificateView.dismiss.getter()
{
  v1 = (v0 + *(type metadata accessor for CertificateView() + 20));
  v2 = *v1;
  v3 = v1[1];
  _sxRi_zRi0_zlyytIsegr_SgWOy_0(*v1);
  return v2;
}

uint64_t type metadata accessor for CertificateView()
{
  result = type metadata singleton initialization cache for CertificateView;
  if (!type metadata singleton initialization cache for CertificateView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _sxRi_zRi0_zlyytIsegr_SgWOy_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t CertificateView.dismiss.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CertificateView() + 20));
  v6 = v5[1];
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t variable initialization expression of CertificateView._openURL@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMR);

  return swift_storeEnumTagMultiPayload();
}

uint64_t key path setter for EnvironmentValues.openURL : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.openURL.setter();
}

uint64_t CertificateView.init(request:dismiss:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for CertificateView();
  v9 = (a4 + v8[5]);
  v10 = v8[7];
  *(a4 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMR);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of CertificateRequest(a1, a4, type metadata accessor for CertificateRequest);
  *v9 = a2;
  v9[1] = a3;
  v11 = [objc_allocWithZone(SFCertificateManager) initWithTrust_];
  result = outlined destroy of CertificateRequest(a1);
  *(a4 + v8[6]) = v11;
  return result;
}

uint64_t outlined destroy of CertificateRequest(uint64_t a1)
{
  v2 = type metadata accessor for CertificateRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CertificateView.labelsAndValues.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23AABC360;
  *(v1 + 32) = static SFLocalization.website.getter();
  *(v1 + 40) = v2;
  v3 = *(v0 + *(type metadata accessor for CertificateView() + 24));
  v4 = [v3 hostName];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  *(v1 + 48) = v6;
  *(v1 + 56) = v8;
  *(v1 + 64) = static SFLocalization.issuedTo.getter();
  *(v1 + 72) = v9;
  v10 = [v3 issuerName];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  *(v1 + 80) = v12;
  *(v1 + 88) = v14;
  *(v1 + 96) = static SFLocalization.signedBy.getter();
  *(v1 + 104) = v15;
  v16 = [v3 issuerName];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  *(v1 + 112) = v18;
  *(v1 + 120) = v20;
  *(v1 + 128) = static SFLocalization.validUntil.getter();
  *(v1 + 136) = v21;
  *(v1 + 144) = CertificateView.expirationDate()();
  *(v1 + 152) = v22;
  return v1;
}

uint64_t CertificateView.expirationDate()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v13 setDateStyle_];
  [v13 setTimeStyle_];
  v14 = [*(v0 + *(type metadata accessor for CertificateView() + 24)) expiration];
  if (v14)
  {
    v15 = v14;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = *(v6 + 32);
    v16(v4, v10, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    v16(v12, v4, v5);
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    Date.init()();
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  isa = Date._bridgeToObjectiveC()().super.isa;
  v18 = [v13 stringFromDate_];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 8))(v12, v5);
  return v19;
}

void CertificateView.maxColumnWidth.getter()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v48.origin.x = v2;
  v48.origin.y = v4;
  v48.size.width = v6;
  v48.size.height = v8;
  CGRectGetWidth(v48);
  v43 = [objc_opt_self() preferredFontForTextStyle_];
  v9 = CertificateView.labelsAndValues.getter();
  v10 = *(v9 + 16);
  if (v10)
  {
    v47 = MEMORY[0x277D84F90];
    v11 = v9;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v12 = v47;
    v42 = *MEMORY[0x277D740A8];
    v41 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd, &_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMR);
    v13 = v11;
    v14 = 0;
    v15 = (v11 + 56);
    do
    {
      if (v14 >= *(v13 + 16))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      v16 = v12;
      v17 = *(v15 - 3);
      v18 = *(v15 - 2);
      v19 = *v15;

      v20 = MEMORY[0x23EE938A0](v17, v18);
      v46[0] = v42;
      v46[4] = type metadata accessor for UIFont(0, &lazy cache variable for type metadata for UIFont, 0x277D74300);
      v46[1] = v43;
      v21 = static _DictionaryStorage.allocate(capacity:)();
      v22 = v42;
      v23 = v43;
      outlined init with copy of URL?(v46, &v44, &_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
      v24 = v44;
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v44);
      if (v26)
      {
        goto LABEL_19;
      }

      v21[(v25 >> 6) + 8] |= 1 << v25;
      *(v21[6] + 8 * v25) = v24;
      outlined init with take of Any(&v45, (v21[7] + 32 * v25));
      v27 = v21[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_20;
      }

      v21[2] = v29;
      outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v46, &_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
      type metadata accessor for NSAttributedStringKey();
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v20 sizeWithAttributes_];
      v32 = v31;

      v12 = v16;
      v47 = v16;
      v34 = *(v16 + 16);
      v33 = *(v16 + 24);
      if (v34 >= v33 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
        v12 = v47;
      }

      ++v14;
      *(v12 + 16) = v34 + 1;
      *(v12 + 8 * v34 + 32) = v32;
      v15 += 4;
      v13 = v41;
    }

    while (v10 != v14);

    v35 = *(v12 + 16);
    if (!v35)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v12 = MEMORY[0x277D84F90];
  v35 = *(MEMORY[0x277D84F90] + 16);
  if (v35)
  {
LABEL_10:
    v36 = *(v12 + 32);
    v37 = v35 - 1;
    if (v37)
    {
      v38 = (v12 + 40);
      do
      {
        v39 = *v38++;
        v40 = v39;
        if (v36 < v39)
        {
          v36 = v40;
        }

        --v37;
      }

      while (v37);
    }
  }

LABEL_17:
}

uint64_t CertificateView.learnMoreURL.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {

    return static SecurityUI.Links.learnMoreURL_iPad.getter();
  }

  else
  {

    return static SecurityUI.Links.learnMoreURL_iPhone.getter();
  }
}

uint64_t CertificateView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVyAA15ModifiedContentVyAIyAA6VStackVyAGyAA6HStackVyAGyAIyAA5ImageVAA14_PaddingLayoutVG_AKyAGyAA0F0PAAE19hyphenationDisabledyQrSbFQOyAE_Qo__AIyAMyAGyAIyAoA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AIyAIyAIyAeQGAXyAA4FontVSgGGAA010_FixedSizeM0VGtGGAA010_FlexFrameM0VGtGGtGG_AEtGGAQGAQG_AIyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAGyAIyAIyAEA14_GAXyAA0D9AlignmentOGG_AtAEAUyQrSbFQOyA29__Qo_tGGGAQGAA14NavigationLinkVyAE08SecurityB0016CertificateChainF0VGAtAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAIyAIyAIyA29_AA01_h5ShapeS0VyAA9RectangleVGGA6_GA0_GG_AA16PlainButtonStyleVQo_tGAA05EmptyF0VGMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVyAA15ModifiedContentVyAIyAA6VStackVyAGyAA6HStackVyAGyAIyAA5ImageVAA14_PaddingLayoutVG_AKyAGyAA0F0PAAE19hyphenationDisabledyQrSbFQOyAE_Qo__AIyAMyAGyAIyAoA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AIyAIyAIyAeQGAXyAA4FontVSgGGAA010_FixedSizeM0VGtGGAA010_FlexFrameM0VGtGGtGG_AEtGGAQGAQG_AIyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAGyAIyAIyAEA14_GAXyAA0D9AlignmentOGG_AtAEAUyQrSbFQOyA29__Qo_tGGGAQGAA14NavigationLinkVyAE08SecurityB0016CertificateChainF0VGAtAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAIyAIyAIyA29_AA01_h5ShapeS0VyAA9RectangleVGGA6_GA0_GG_AA16PlainButtonStyleVQo_tGAA05EmptyF0VGMR);
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v46 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v45 = v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGGMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v44 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v43 - v11;
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0x4024000000000000;
  v12[16] = 0;
  v13 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGAA16_OverlayModifierVyAKyAKyAKyAKyAKyAmA08_PaddingG0VGAA022_EnvironmentKeyWritingP0VyAA5ColorVSgGGAA011_BackgroundP0VyAKyA0_AA11_ClipEffectVyAA6CircleVGGGGARGAA07_OffsetX0VGGGAWG_AKyAA6VStackVyAIyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A28_SgtGGAWGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGAA16_OverlayModifierVyAKyAKyAKyAKyAKyAmA08_PaddingG0VGAA022_EnvironmentKeyWritingP0VyAA5ColorVSgGGAA011_BackgroundP0VyAKyA0_AA11_ClipEffectVyAA6CircleVGGGGARGAA07_OffsetX0VGGGAWG_AKyAA6VStackVyAIyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A28_SgtGGAWGtGGMR) + 44)];
  v43[0] = v12;
  closure #1 in CertificateView.body.getter(v1, v13);
  v51 = static SFLocalization.certificate.getter();
  v52 = v14;
  lazy protocol witness table accessor for type String and conformance String();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  static Font.caption.getter();
  v20 = Text.font(_:)();
  v22 = v21;
  v24 = v23;

  outlined consume of Text.Storage(v15, v17, v19 & 1);

  static Color.gray.getter();
  v25 = Text.foregroundColor(_:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  outlined consume of Text.Storage(v20, v22, v24 & 1);

  v51 = v25;
  v52 = v27;
  v53 = v29 & 1;
  v54 = v31;
  v50 = v43[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6HStackVyACyAEyAA5ImageVAA14_PaddingLayoutVG_AGyACyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AEyAIyACyAEyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAEyAEyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMG_AEyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSACyAEyAEyASA12_GAVyAA0N9AlignmentOGG_ApAEAQyQrSbFQOyA27__Qo_tGGGAMGAA14NavigationLinkVyAS08SecurityB0016CertificateChainD0VGApAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyAEyAEyA27_AA01_f5ShapeR0VyAA9RectangleVGGA4_GAZGG_AA16PlainButtonStyleVQo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6HStackVyACyAEyAA5ImageVAA14_PaddingLayoutVG_AGyACyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AEyAIyACyAEyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAEyAEyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMG_AEyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSACyAEyAEyASA12_GAVyAA0N9AlignmentOGG_ApAEAQyQrSbFQOyA27__Qo_tGGGAMGAA14NavigationLinkVyAS08SecurityB0016CertificateChainD0VGApAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyAEyAEyA27_AA01_f5ShapeR0VyAA9RectangleVGGA4_GAZGG_AA16PlainButtonStyleVQo_tGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6HStackVyACyAEyAA5ImageVAA14_PaddingLayoutVG_AGyACyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AEyAIyACyAEyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAEyAEyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMG_AEyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSACyAEyAEyASA12_GAVyAA0N9AlignmentOGG_ApAEAQyQrSbFQOyA27__Qo_tGGGAMGAA14NavigationLinkVyAS08SecurityB0016CertificateChainD0VGApAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyAEyAEyA27_AA01_f5ShapeR0VyAA9RectangleVGGA4_GAZGG_AA16PlainButtonStyleVQo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6HStackVyACyAEyAA5ImageVAA14_PaddingLayoutVG_AGyACyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AEyAIyACyAEyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAEyAEyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMG_AEyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSACyAEyAEyASA12_GAVyAA0N9AlignmentOGG_ApAEAQyQrSbFQOyA27__Qo_tGGGAMGAA14NavigationLinkVyAS08SecurityB0016CertificateChainD0VGApAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyAEyAEyA27_AA01_f5ShapeR0VyAA9RectangleVGGA4_GAZGG_AA16PlainButtonStyleVQo_tGMR);
  v32 = v45;
  Section<>.init(header:content:)();
  v33 = v12;
  v34 = v44;
  outlined init with copy of URL?(v33, v44, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGGMR);
  v36 = v46;
  v35 = v47;
  v37 = *(v47 + 16);
  v38 = v48;
  v37(v46, v32, v48);
  v39 = v49;
  outlined init with copy of URL?(v34, v49, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGGMR);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGG_AA7SectionVyA23_AEyAGyAGyA18_yAEyACyAEyAT_A18_yAEyA24__AGyACyAEyAGyAiZG_AGyAGyAGyA23_ASGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA05_FlexlK0VGtGGtGG_A23_tGGASGASG_AGyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAEyAGyAGyA23_A46_GAVyAA13TextAlignmentOGG_A20_AAEA21_yQrSbFQOyA61__Qo_tGGGASGAA14NavigationLinkVyA23_08SecurityB0016CertificateChainE0VGA20_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAGyA61_AA01_g5ShapeN0VyAA9RectangleVGGA38_GAZGG_AA16PlainButtonStyleVQo_tGAA05EmptyE0VGtMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGG_AA7SectionVyA23_AEyAGyAGyA18_yAEyACyAEyAT_A18_yAEyA24__AGyACyAEyAGyAiZG_AGyAGyAGyA23_ASGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA05_FlexlK0VGtGGtGG_A23_tGGASGASG_AGyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAEyAGyAGyA23_A46_GAVyAA13TextAlignmentOGG_A20_AAEA21_yQrSbFQOyA61__Qo_tGGGASGAA14NavigationLinkVyA23_08SecurityB0016CertificateChainE0VGA20_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAGyA61_AA01_g5ShapeN0VyAA9RectangleVGGA38_GAZGG_AA16PlainButtonStyleVQo_tGAA05EmptyE0VGtMR);
  v37((v39 + *(v40 + 48)), v36, v38);
  v41 = *(v35 + 8);
  v41(v32, v38);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v43[0], &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGGMR);
  v41(v36, v38);
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v34, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGGMR);
}

uint64_t closure #1 in CertificateView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v67 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMSgtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMSgtGGAA14_PaddingLayoutVGMR);
  v3 = *(*(v62 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v62);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v65 = (&v62 - v6);
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  v12 = *MEMORY[0x277CE0FE0];
  v13 = v8[13];
  v13(v11, v12, v7);
  v64 = Image.resizable(capInsets:resizingMode:)();

  v14 = v8[1];
  v14(v11, v7);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v132 = 1;
  *&v131[6] = v135;
  *&v131[22] = v136;
  *&v131[38] = v137;
  v15 = *(type metadata accessor for CertificateView() + 24);
  v63 = a1;
  v16 = *(a1 + v15);
  [v16 isValid];
  Image.init(systemName:)();
  v13(v11, v12, v7);
  v17 = Image.resizable(capInsets:resizingMode:)();

  v14(v11, v7);
  v18 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  if ([v16 isValid])
  {
    v27 = static Color.green.getter();
  }

  else
  {
    v27 = static Color.red.getter();
  }

  v28 = v27;
  KeyPath = swift_getKeyPath();
  v127 = 0;
  v30 = static Color.white.getter();
  v31 = static Alignment.center.getter();
  v33 = v32;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v34 = static Alignment.bottomTrailing.getter();
  *&v80 = v17;
  BYTE8(v80) = v18;
  *(&v80 + 9) = *v128;
  HIDWORD(v80) = *&v128[3];
  *&v81 = v20;
  *(&v81 + 1) = v22;
  *&v82 = v24;
  *(&v82 + 1) = v26;
  LOBYTE(v83) = 0;
  *(&v83 + 1) = *v126;
  DWORD1(v83) = *&v126[3];
  *(&v83 + 1) = KeyPath;
  *&v84 = v28;
  *(&v84 + 1) = v30;
  WORD3(v85) = v130;
  *(&v85 + 2) = v129;
  LOWORD(v85) = 256;
  *(&v85 + 1) = v31;
  *&v86[0] = v33;
  *(v86 + 8) = v111[0];
  *(&v86[2] + 8) = v111[2];
  *(&v86[1] + 8) = v111[1];
  __asm { FMOV            V0.2D, #5.0 }

  *(&v86[3] + 8) = _Q0;
  *(&v86[4] + 1) = v34;
  v87 = v40;
  v76 = v86[2];
  v77 = v86[3];
  v78 = v86[4];
  v79 = v40;
  v72 = v84;
  v73 = v85;
  v74 = v86[0];
  v75 = v86[1];
  v68 = v80;
  v69 = v81;
  v70 = v82;
  v71 = v83;
  v88 = v17;
  v89 = v18;
  *v90 = *v128;
  *&v90[3] = *&v128[3];
  v91 = v20;
  v92 = v22;
  v93 = v24;
  v94 = v26;
  v95 = 0;
  *v96 = *v126;
  *&v96[3] = *&v126[3];
  v97 = KeyPath;
  v98 = v28;
  v99 = v30;
  v100 = 256;
  v102 = v130;
  v101 = v129;
  v103 = v31;
  v104 = v33;
  v107 = v111[2];
  v106 = v111[1];
  v105 = v111[0];
  v108 = _Q0;
  v109 = v34;
  v110 = v40;
  outlined init with copy of URL?(&v80, v112, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA14_PaddingLayoutVGAA022_EnvironmentKeyWritingD0VyAA5ColorVSgGGAA011_BackgroundD0VyAEyAnA11_ClipEffectVyAA6CircleVGGGGAA06_FrameI0VGAA07_OffsetP0VGGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA14_PaddingLayoutVGAA022_EnvironmentKeyWritingD0VyAA5ColorVSgGGAA011_BackgroundD0VyAEyAnA11_ClipEffectVyAA6CircleVGGGGAA06_FrameI0VGAA07_OffsetP0VGGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(&v88, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA14_PaddingLayoutVGAA022_EnvironmentKeyWritingD0VyAA5ColorVSgGGAA011_BackgroundD0VyAEyAnA11_ClipEffectVyAA6CircleVGGGGAA06_FrameI0VGAA07_OffsetP0VGGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA14_PaddingLayoutVGAA022_EnvironmentKeyWritingD0VyAA5ColorVSgGGAA011_BackgroundD0VyAEyAnA11_ClipEffectVyAA6CircleVGGGGAA06_FrameI0VGAA07_OffsetP0VGGMR);
  LOBYTE(v33) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v133 = 0;
  v49 = static HorizontalAlignment.leading.getter();
  v50 = v65;
  *v65 = v49;
  *(v50 + 8) = 0x4024000000000000;
  *(v50 + 16) = 0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AOSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AOSgtGGMR);
  closure #1 in closure #1 in CertificateView.body.getter(v63, (v50 + *(v51 + 44)));
  LOBYTE(KeyPath) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v52 = v50 + *(v62 + 36);
  *v52 = KeyPath;
  *(v52 + 8) = v53;
  *(v52 + 16) = v54;
  *(v52 + 24) = v55;
  *(v52 + 32) = v56;
  *(v52 + 40) = 0;
  v57 = v66;
  outlined init with copy of URL?(v50, v66, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMSgtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMSgtGGAA14_PaddingLayoutVGMR);
  v58 = v64;
  v111[0] = v64;
  LOWORD(v111[1]) = 1;
  *(&v111[1] + 2) = *v131;
  *(&v111[2] + 2) = *&v131[16];
  *(&v111[3] + 2) = *&v131[32];
  *(&v111[8] + 8) = v72;
  *(&v111[9] + 8) = v73;
  *(&v111[10] + 8) = v74;
  *(&v111[11] + 8) = v75;
  *(&v111[4] + 8) = v68;
  *(&v111[5] + 8) = v69;
  *(&v111[6] + 8) = v70;
  *(&v111[7] + 8) = v71;
  *&v111[4] = *&v131[46];
  *(&v111[15] + 1) = v79;
  *(&v111[14] + 8) = v78;
  *(&v111[13] + 8) = v77;
  *(&v111[12] + 8) = v76;
  LOBYTE(v111[16]) = v33;
  *(&v111[16] + 1) = *v134;
  DWORD1(v111[16]) = *&v134[3];
  *(&v111[16] + 1) = v42;
  *&v111[17] = v44;
  *(&v111[17] + 1) = v46;
  *&v111[18] = v48;
  BYTE8(v111[18]) = 0;
  v59 = v67;
  memcpy(v67, v111, 0x129uLL);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA16_OverlayModifierVyACyACyACyACyACyAeA08_PaddingH0VGAA022_EnvironmentKeyWritingK0VyAA5ColorVSgGGAA011_BackgroundK0VyACyAtA11_ClipEffectVyAA6CircleVGGGGAJGAA07_OffsetS0VGGGAOG_ACyAA6VStackVyAA9TupleViewVyAA0X0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A22_SgtGGAOGtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA16_OverlayModifierVyACyACyACyACyACyAeA08_PaddingH0VGAA022_EnvironmentKeyWritingK0VyAA5ColorVSgGGAA011_BackgroundK0VyACyAtA11_ClipEffectVyAA6CircleVGGGGAJGAA07_OffsetS0VGGGAOG_ACyAA6VStackVyAA9TupleViewVyAA0X0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A22_SgtGGAOGtMR);
  outlined init with copy of URL?(v57, v59 + *(v60 + 48), &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMSgtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMSgtGGAA14_PaddingLayoutVGMR);
  outlined init with copy of URL?(v111, v112, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA16_OverlayModifierVyACyACyACyACyACyAeA08_PaddingH0VGAA022_EnvironmentKeyWritingK0VyAA5ColorVSgGGAA011_BackgroundK0VyACyAtA11_ClipEffectVyAA6CircleVGGGGAJGAA07_OffsetS0VGGGAOGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA16_OverlayModifierVyACyACyACyACyACyAeA08_PaddingH0VGAA022_EnvironmentKeyWritingK0VyAA5ColorVSgGGAA011_BackgroundK0VyACyAtA11_ClipEffectVyAA6CircleVGGGGAJGAA07_OffsetS0VGGGAOGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v50, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMSgtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMSgtGGAA14_PaddingLayoutVGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v57, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMSgtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMSgtGGAA14_PaddingLayoutVGMR);
  v115 = *v131;
  v116 = *&v131[16];
  *v117 = *&v131[32];
  *&v117[75] = v76;
  *&v117[83] = v77;
  *&v117[91] = v78;
  *&v117[43] = v72;
  *&v117[51] = v73;
  *&v117[59] = v74;
  *&v117[67] = v75;
  *&v117[11] = v68;
  *&v117[19] = v69;
  *&v117[27] = v70;
  v112[0] = v58;
  v112[1] = 0;
  v113 = 1;
  v114 = 0;
  *&v117[7] = *&v131[46];
  v118 = v79;
  *&v117[35] = v71;
  v119 = v33;
  *v120 = *v134;
  *&v120[3] = *&v134[3];
  v121 = v42;
  v122 = v44;
  v123 = v46;
  v124 = v48;
  v125 = 0;
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v112, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA16_OverlayModifierVyACyACyACyACyACyAeA08_PaddingH0VGAA022_EnvironmentKeyWritingK0VyAA5ColorVSgGGAA011_BackgroundK0VyACyAtA11_ClipEffectVyAA6CircleVGGGGAJGAA07_OffsetS0VGGGAOGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA16_OverlayModifierVyACyACyACyACyACyAeA08_PaddingH0VGAA022_EnvironmentKeyWritingK0VyAA5ColorVSgGGAA011_BackgroundK0VyACyAtA11_ClipEffectVyAA6CircleVGGGGAJGAA07_OffsetS0VGGGAOGMR);
}

uint64_t closure #1 in closure #1 in CertificateView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_SgMd, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_SgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v78 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v81 = &v76 - v7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_Md, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_MR);
  v79 = *(v82 - 8);
  v8 = *(v79 + 64);
  v9 = MEMORY[0x28223BE20](v82);
  v80 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v83 = &v76 - v11;
  if (*(a1 + 40))
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    goto LABEL_16;
  }

  v14 = *(a1 + *(type metadata accessor for CertificateView() + 24));
  v15 = [v14 title];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      if ([v14 isValid])
      {
        v21 = static SFLocalization.connectionIsSecure(host:)(v17, v19);
      }

      else
      {
        v21 = static SFLocalization.connectionNotSecure(host:)(v17, v19);
      }

      v12 = v21;
      v13 = v22;

      goto LABEL_16;
    }
  }

  if ([v14 isValid])
  {
    IsSecure = static SFLocalization.connectionIsSecureDefault.getter();
  }

  else
  {
    IsSecure = static SFLocalization.connectionNotSecureDefault.getter();
  }

  v12 = IsSecure;
  v13 = v24;
LABEL_16:

  v25 = CertificateView.coloredMessageText(message:)(v12, v13);
  v27 = v26;
  v29 = v28;

  static Font.title3.getter();
  v30 = Text.font(_:)();
  v31 = a1;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  outlined consume of Text.Storage(v25, v27, v29 & 1);

  v84 = v30;
  v85 = v33;
  v86 = v35 & 1;
  v87 = v37;
  v38 = 1;
  View.hyphenationDisabled(_:)();
  outlined consume of Text.Storage(v30, v33, v35 & 1);

  v39 = type metadata accessor for CertificateView();
  v40 = *(v31 + *(v39 + 24));
  if ([v40 isValid] && objc_msgSend(v40, sel_isQWAC))
  {
    v41 = [*(v31 + *(v39 + 24)) title];
    if (v41)
    {
      v42 = v41;
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = HIBYTE(v45) & 0xF;
      if ((v45 & 0x2000000000000000) == 0)
      {
        v46 = v43 & 0xFFFFFFFFFFFFLL;
      }

      if (v46)
      {
        v47 = static SFLocalization.qwac(host:)(v43, v45);
        v49 = v48;

        v50 = v47;
LABEL_25:
        v52 = CertificateView.coloredMessageText(message:)(v50, v49);
        v54 = v53;
        v56 = v55;

        static Font.title3.getter();
        v57 = Text.font(_:)();
        v59 = v58;
        v61 = v60;
        v63 = v62;

        outlined consume of Text.Storage(v52, v54, v56 & 1);

        v84 = v57;
        v85 = v59;
        v86 = v61 & 1;
        v87 = v63;
        v64 = v80;
        View.hyphenationDisabled(_:)();
        outlined consume of Text.Storage(v57, v59, v61 & 1);

        (*(v79 + 32))(v81, v64, v82);
        v38 = 0;
        goto LABEL_26;
      }
    }

    v50 = static SFLocalization.qwacDefault.getter();
    v49 = v51;
    goto LABEL_25;
  }

LABEL_26:
  v65 = v79;
  v67 = v81;
  v66 = v82;
  (*(v79 + 56))(v81, v38, 1, v82);
  v68 = *(v65 + 16);
  v69 = v80;
  v70 = v83;
  v68(v80, v83, v66);
  v71 = v78;
  outlined init with copy of URL?(v67, v78, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_SgMd, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_SgMR);
  v72 = v77;
  v68(v77, v69, v66);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGSgtMd, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGSgtMR);
  outlined init with copy of URL?(v71, &v72[*(v73 + 48)], &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_SgMd, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_SgMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v67, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_SgMd, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_SgMR);
  v74 = *(v65 + 8);
  v74(v70, v66);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v71, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_SgMd, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_SgMR);
  return (v74)(v69, v66);
}

uint64_t CertificateView.coloredMessageText(message:)(uint64_t a1, unint64_t a2)
{
  v46 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGSgMd, &_sSny10Foundation16AttributedStringV5IndexVGSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - v14;
  v16 = type metadata accessor for AttributeContainer();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = type metadata accessor for AttributedString();
  v45 = *(v18 - 8);
  v19 = *(v45 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  v25 = [*(v2 + *(type metadata accessor for CertificateView() + 24)) title];
  if (!v25)
  {
    goto LABEL_8;
  }

  v26 = v25;
  v42 = v15;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {

LABEL_8:
    v48 = v46;
    v49 = a2;
    lazy protocol witness table accessor for type String and conformance String();

    return Text.init<A>(_:)();
  }

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v48 = v27;
  v49 = v29;
  v31 = type metadata accessor for Locale();
  (*(*(v31 - 8) + 56))(v7, 1, 1, v31);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x277CC8C40]);
  lazy protocol witness table accessor for type String and conformance String();
  AttributedStringProtocol.range<A>(of:options:locale:)();
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v7, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

  if ((*(v43 + 48))(v11, 1, v44) == 1)
  {
    v32 = &_sSny10Foundation16AttributedStringV5IndexVGSgMd;
    v33 = &_sSny10Foundation16AttributedStringV5IndexVGSgMR;
    v34 = v11;
  }

  else
  {
    v36 = v42;
    outlined init with take of Range<AttributedString.Index>(v11, v42);
    v37 = static Color.blue.getter();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
    v38 = AttributedString.subscript.modify();
    v47 = v37;
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute();
    AttributedSubstring.subscript.setter();
    v38(&v48, 0);
    v34 = v36;
    v32 = &_sSny10Foundation16AttributedStringV5IndexVGMd;
    v33 = &_sSny10Foundation16AttributedStringV5IndexVGMR;
  }

  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v34, v32, v33);
  v39 = v45;
  (*(v45 + 16))(v22, v24, v18);
  v40 = Text.init(_:)();
  (*(v39 + 8))(v24, v18);
  return v40;
}

uint64_t closure #2 in CertificateView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v114 = type metadata accessor for PlainButtonStyle();
  v113 = *(v114 - 1);
  v3 = *(v113 + 64);
  MEMORY[0x28223BE20](v114);
  v110 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CertificateView();
  v6 = *(v5 - 8);
  v102 = v5 - 8;
  v103 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v104 = v8;
  v105 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA01_E13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGARyAA5ColorVSgGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA01_E13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGARyAA5ColorVSgGGGMR);
  v108 = *(v109 - 8);
  v9 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v107 = &v98 - v10;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAIyAA4TextVAA16_FlexFrameLayoutVGAA01_I13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingO0VyAA4FontVSgGGAVyAA5ColorVSgGGG_AA05PlaingE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAIyAA4TextVAA16_FlexFrameLayoutVGAA01_I13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingO0VyAA4FontVSgGGAVyAA5ColorVSgGGG_AA05PlaingE0VQo_MR);
  v115 = *(v106 - 8);
  v11 = *(v115 + 64);
  v12 = MEMORY[0x28223BE20](v106);
  v122 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v123 = &v98 - v14;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA4TextV08SecurityB020CertificateChainViewVGMd, &_s7SwiftUI14NavigationLinkVyAA4TextV08SecurityB020CertificateChainViewVGMR);
  v111 = *(v112 - 8);
  v15 = *(v111 + 64);
  v16 = MEMORY[0x28223BE20](v112);
  v121 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v120 = &v98 - v18;
  v101 = type metadata accessor for PinnedScrollableViews();
  v19 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v100 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for GridItem.Size();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = (&v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAA9TupleViewVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA0J0PAAE19hyphenationDisabledyQrSbFQOyAO_Qo_tGGGAA08_PaddingN0VGMd, &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAA9TupleViewVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA0J0PAAE19hyphenationDisabledyQrSbFQOyAO_Qo_tGGGAA08_PaddingN0VGMR);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v119 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v98 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMGMR);
  v34 = v33 - 8;
  v35 = *(*(v33 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v118 = &v98 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v98 - v38;
  *v39 = static HorizontalAlignment.leading.getter();
  *(v39 + 1) = 0;
  v39[16] = 1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAA5ImageVAA08_PaddingG0VG_AA0F0VyAIyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMyAKyAIyAMyAoA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAyQGA0_yAA4FontVSgGGAA010_FixedSizeG0VGtGGAA010_FlexFrameG0VGtGGtGG_AYtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAA5ImageVAA08_PaddingG0VG_AA0F0VyAIyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMyAKyAIyAMyAoA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAyQGA0_yAA4FontVSgGGAA010_FixedSizeG0VGtGGAA010_FlexFrameG0VGtGGtGG_AYtGGMR);
  closure #1 in closure #2 in CertificateView.body.getter(a1, &v39[*(v40 + 44)]);
  v41 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = &v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGMR) + 36)];
  *v50 = v41;
  *(v50 + 1) = v43;
  *(v50 + 2) = v45;
  *(v50 + 3) = v47;
  *(v50 + 4) = v49;
  v50[40] = 0;
  v51 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v52 = *(v34 + 44);
  v117 = v39;
  v53 = &v39[v52];
  *v53 = v51;
  *(v53 + 1) = v54;
  *(v53 + 2) = v55;
  *(v53 + 3) = v56;
  *(v53 + 4) = v57;
  v53[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI8GridItemVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI8GridItemVGMR);
  v58 = *(type metadata accessor for GridItem() - 8);
  v59 = *(v58 + 72);
  v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  *(swift_allocObject() + 16) = xmmword_23AABC370;
  CertificateView.maxColumnWidth.getter();
  *v25 = v61 + 10.0;
  v62 = *(v22 + 104);
  v62(v25, *MEMORY[0x277CDF0F0], v21);
  static Alignment.top.getter();
  GridItem.init(_:spacing:alignment:)();
  *v25 = xmmword_23AABC380;
  v62(v25, *MEMORY[0x277CDF108], v21);
  static Alignment.top.getter();
  GridItem.init(_:spacing:alignment:)();
  v124 = a1;
  static HorizontalAlignment.center.getter();
  v125[0] = 0;
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews, MEMORY[0x277CE0428]);
  dispatch thunk of OptionSet.init(rawValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySS_SStGSSAA9TupleViewVyAA15ModifiedContentVyAHyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG_AA0F0PAAE19hyphenationDisabledyQrSbFQOyAM_Qo_tGGMd, &_s7SwiftUI7ForEachVySaySS_SStGSSAA9TupleViewVyAA15ModifiedContentVyAHyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG_AA0F0PAAE19hyphenationDisabledyQrSbFQOyAM_Qo_tGGMR);
  lazy protocol witness table accessor for type ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>> and conformance <> ForEach<A, B, C>();
  LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
  LOBYTE(v34) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v63 = v32;
  v64 = &v32[*(v27 + 44)];
  *v64 = v34;
  *(v64 + 1) = v65;
  *(v64 + 2) = v66;
  *(v64 + 3) = v67;
  *(v64 + 4) = v68;
  v64[40] = 0;
  v69 = *(a1 + *(v102 + 32));
  v70 = [v69 hostName];
  if (v70)
  {
    v71 = v70;
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v73;
  }

  else
  {
    v72 = 0;
    v74 = 0xE000000000000000;
  }

  CertificateChainView.init(title:certificateManager:)(v72, v74, v69, v125);
  lazy protocol witness table accessor for type CertificateChainView and conformance CertificateChainView();
  v75 = v120;
  NavigationLink.init(destination:label:)();
  v76 = v105;
  outlined init with copy of CertificateRequest(a1, v105, type metadata accessor for CertificateView);
  v77 = (*(v103 + 80) + 16) & ~*(v103 + 80);
  v78 = swift_allocObject();
  outlined init with take of CertificateView(v76, v78 + v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGAPyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGAPyAA5ColorVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  v79 = v107;
  Button.init(action:label:)();
  v80 = v110;
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA01_E13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGARyAA5ColorVSgGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA01_E13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGARyAA5ColorVSgGGGMR);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
  v81 = v109;
  v82 = v114;
  View.buttonStyle<A>(_:)();
  (*(v113 + 8))(v80, v82);
  (*(v108 + 8))(v79, v81);
  v83 = v118;
  outlined init with copy of URL?(v117, v118, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMGMR);
  v84 = v63;
  v99 = v63;
  v85 = v119;
  outlined init with copy of URL?(v84, v119, &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAA9TupleViewVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA0J0PAAE19hyphenationDisabledyQrSbFQOyAO_Qo_tGGGAA08_PaddingN0VGMd, &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAA9TupleViewVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA0J0PAAE19hyphenationDisabledyQrSbFQOyAO_Qo_tGGGAA08_PaddingN0VGMR);
  v86 = v111;
  v114 = *(v111 + 16);
  v87 = v121;
  v88 = v112;
  (v114)(v121, v75, v112);
  v89 = v115;
  v113 = *(v115 + 16);
  v90 = v106;
  (v113)(v122, v123, v106);
  v91 = v116;
  outlined init with copy of URL?(v83, v116, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMGMR);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMG_ACyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAGyACyACyASA12_GAVyAA0N9AlignmentOGG_ApAEAQyQrSbFQOyA27__Qo_tGGGAMGAA14NavigationLinkVyAS08SecurityB0016CertificateChainG0VGApAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyACyA27_AA01_d5ShapeR0VyAA9RectangleVGGA4_GAZGG_AA16PlainButtonStyleVQo_tMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMG_ACyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAGyACyACyASA12_GAVyAA0N9AlignmentOGG_ApAEAQyQrSbFQOyA27__Qo_tGGGAMGAA14NavigationLinkVyAS08SecurityB0016CertificateChainG0VGApAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyACyA27_AA01_d5ShapeR0VyAA9RectangleVGGA4_GAZGG_AA16PlainButtonStyleVQo_tMR);
  outlined init with copy of URL?(v85, v91 + v92[12], &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAA9TupleViewVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA0J0PAAE19hyphenationDisabledyQrSbFQOyAO_Qo_tGGGAA08_PaddingN0VGMd, &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAA9TupleViewVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA0J0PAAE19hyphenationDisabledyQrSbFQOyAO_Qo_tGGGAA08_PaddingN0VGMR);
  (v114)(v91 + v92[16], v87, v88);
  v93 = v91 + v92[20];
  v94 = v122;
  (v113)(v93, v122, v90);
  v95 = *(v89 + 8);
  v95(v123, v90);
  v96 = *(v86 + 8);
  v96(v120, v88);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v99, &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAA9TupleViewVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA0J0PAAE19hyphenationDisabledyQrSbFQOyAO_Qo_tGGGAA08_PaddingN0VGMd, &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAA9TupleViewVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA0J0PAAE19hyphenationDisabledyQrSbFQOyAO_Qo_tGGGAA08_PaddingN0VGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v117, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMGMR);
  v95(v94, v90);
  v96(v121, v88);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v119, &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAA9TupleViewVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA0J0PAAE19hyphenationDisabledyQrSbFQOyAO_Qo_tGGGAA08_PaddingN0VGMd, &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAA9TupleViewVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA0J0PAAE19hyphenationDisabledyQrSbFQOyAO_Qo_tGGGAA08_PaddingN0VGMR);
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v118, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMGMR);
}

uint64_t closure #1 in closure #2 in CertificateView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGGMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5ImageVAA08_PaddingG0VG_AA6VStackVyAIyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AKyAA0F0VyAIyAKyAmA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AKyAKyAKyAwOGA0_yAA4FontVSgGGAA010_FixedSizeG0VGtGGAA010_FlexFrameG0VGtGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5ImageVAA08_PaddingG0VG_AA6VStackVyAIyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AKyAA0F0VyAIyAKyAmA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AKyAKyAKyAwOGA0_yAA4FontVSgGGAA010_FixedSizeG0VGtGGAA010_FlexFrameG0VGtGGtGGMR);
  closure #1 in closure #1 in closure #2 in CertificateView.body.getter(a1, &v10[*(v11 + 44)]);
  outlined init with copy of URL?(v10, v8, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGGMR);
  outlined init with copy of URL?(v8, a2, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGGMR);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGG_AStMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGG_AStMR) + 48);
  *v12 = xmmword_23AABC390;
  *(v12 + 16) = 0;
  *(v12 + 24) = MEMORY[0x277D84F90];
  outlined copy of Text.Storage(0, 0xE000000000000000, 0);

  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v10, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGGMR);
  outlined consume of Text.Storage(0, 0xE000000000000000, 0);

  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v8, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGGMR);
}

uint64_t closure #1 in closure #1 in closure #2 in CertificateView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAjA14_PaddingLayoutVGASyAA4FontVSgGGAA010_FixedSizeS0VGtGGAA010_FlexFrameS0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAjA14_PaddingLayoutVGASyAA4FontVSgGGAA010_FixedSizeS0VGtGGAA010_FlexFrameS0VGtGGMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  [*(a1 + *(type metadata accessor for CertificateView() + 24)) isRoot];
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v11 = static NSBundle.current;
  v12 = Image.init(_:bundle:)();
  v13 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAIyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AQyAQyAQyAnA08_PaddingG0VGAWyAA4FontVSgGGAA010_FixedSizeG0VGtGGAA010_FlexFrameG0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAIyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AQyAQyAQyAnA08_PaddingG0VGAWyAA4FontVSgGGAA010_FixedSizeG0VGtGGAA010_FlexFrameG0VGtGGMR);
  closure #1 in closure #1 in closure #1 in closure #2 in CertificateView.body.getter(a1, &v10[*(v22 + 44)]);
  outlined init with copy of URL?(v10, v8, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAjA14_PaddingLayoutVGASyAA4FontVSgGGAA010_FixedSizeS0VGtGGAA010_FlexFrameS0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAjA14_PaddingLayoutVGASyAA4FontVSgGGAA010_FixedSizeS0VGtGGAA010_FlexFrameS0VGtGGMR);
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  *(a2 + 32) = v19;
  *(a2 + 40) = v21;
  *(a2 + 48) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAA9TupleViewVyAA0J0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAA6HStackVyALyACyAeA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAqGGAVyAA4FontVSgGGAA010_FixedSizeG0VGtGGAA010_FlexFrameG0VGtGGtMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAA9TupleViewVyAA0J0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAA6HStackVyALyACyAeA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAqGGAVyAA4FontVSgGGAA010_FixedSizeG0VGtGGAA010_FlexFrameG0VGtGGtMR);
  outlined init with copy of URL?(v8, a2 + *(v23 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAjA14_PaddingLayoutVGASyAA4FontVSgGGAA010_FixedSizeS0VGtGGAA010_FlexFrameS0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAjA14_PaddingLayoutVGASyAA4FontVSgGGAA010_FixedSizeS0VGtGGAA010_FlexFrameS0VGtGGMR);

  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v10, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAjA14_PaddingLayoutVGASyAA4FontVSgGGAA010_FixedSizeS0VGtGGAA010_FlexFrameS0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAjA14_PaddingLayoutVGASyAA4FontVSgGGAA010_FixedSizeS0VGtGGAA010_FlexFrameS0VGtGGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v8, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAjA14_PaddingLayoutVGASyAA4FontVSgGGAA010_FixedSizeS0VGtGGAA010_FlexFrameS0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAjA14_PaddingLayoutVGASyAA4FontVSgGGAA010_FixedSizeS0VGtGGAA010_FlexFrameS0VGtGGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in CertificateView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_Md, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_MR);
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v73 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v72 = &v63 - v7;
  v66 = type metadata accessor for CertificateView();
  v67 = a1;
  v8 = [*(a1 + *(v66 + 24)) title];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v75 = v10;
  v76 = v12;
  v64 = lazy protocol witness table accessor for type String and conformance String();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  static Font.title3.getter();
  v18 = Text.font(_:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  outlined consume of Text.Storage(v13, v15, v17 & 1);

  v75 = v18;
  v76 = v20;
  v77 = v22 & 1;
  *(&v78 + 7) = v24;
  View.hyphenationDisabled(_:)();
  outlined consume of Text.Storage(v18, v20, v22 & 1);

  v68 = static VerticalAlignment.top.getter();
  v89 = 1;
  v25 = *(v67 + *(v66 + 24));
  [v25 isValid];
  v67 = Image.init(systemName:)();
  if ([v25 isValid])
  {
    v26 = static Color.green.getter();
  }

  else
  {
    v26 = static Color.red.getter();
  }

  v66 = v26;
  KeyPath = swift_getKeyPath();
  if ([v25 isValid])
  {
    IsNot = static SFLocalization.certificateIsValid.getter();
  }

  else
  {
    IsNot = static SFLocalization.certificateIsNotValid.getter();
  }

  v75 = IsNot;
  v76 = v28;
  v29 = Text.init<A>(_:)();
  v31 = v30;
  v33 = v32;
  static Color.gray.getter();
  v34 = Text.foregroundColor(_:)();
  v36 = v35;
  v38 = v37;
  v64 = v39;

  outlined consume of Text.Storage(v29, v31, v33 & 1);

  LOBYTE(v31) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v111 = v38 & 1;
  v108 = 0;
  v48 = static Font.body.getter();
  v49 = swift_getKeyPath();
  *v74 = v34;
  *&v74[8] = v36;
  v74[16] = v38 & 1;
  *&v74[17] = *v110;
  *&v74[20] = *&v110[3];
  *&v74[24] = v64;
  v74[32] = v31;
  *&v74[33] = *v109;
  *&v74[36] = *&v109[3];
  *&v74[40] = v41;
  *&v74[48] = v43;
  *&v74[56] = v45;
  *&v74[64] = v47;
  v74[72] = 0;
  *&v74[73] = v91;
  *&v74[76] = *(&v91 + 3);
  *&v74[80] = v49;
  *&v74[88] = v48;
  *&v74[96] = 256;
  LOWORD(v107) = 256;
  v101 = *v74;
  v102 = *&v74[16];
  v103 = *&v74[32];
  v104 = *&v74[48];
  v105 = *&v74[64];
  v106 = *&v74[80];
  v75 = v34;
  v76 = v36;
  v77 = v38 & 1;
  *(&v78 + 3) = *&v110[3];
  LODWORD(v78) = *v110;
  *(&v78 + 7) = v64;
  HIBYTE(v78) = v31;
  *(v79 + 3) = *&v109[3];
  LODWORD(v79[0]) = *v109;
  *(v79 + 7) = v41;
  *(v79 + 15) = v43;
  *(&v79[1] + 7) = v45;
  *(&v79[1] + 15) = v47;
  BYTE7(v79[2]) = 0;
  *(&v79[2] + 11) = *(&v91 + 3);
  DWORD2(v79[2]) = v91;
  *(&v79[2] + 15) = v49;
  *(&v79[3] + 7) = v48;
  *(&v79[3] + 15) = 256;
  v50 = v67;

  v51 = KeyPath;

  v52 = v66;

  outlined init with copy of URL?(v74, v93, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA010_FixedSizeG0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA010_FixedSizeG0VGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(&v75, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA010_FixedSizeG0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA010_FixedSizeG0VGMR);

  *(&v92[3] + 8) = v104;
  *(&v92[4] + 8) = v105;
  *(&v92[5] + 8) = v106;
  *(v92 + 8) = v101;
  *(&v92[1] + 8) = v102;
  *(&v92[2] + 8) = v103;
  v97 = v104;
  v98 = v105;
  v99 = v106;
  v94 = v101;
  v95 = v102;
  *&v91 = v50;
  *(&v91 + 1) = v51;
  *&v92[0] = v52;
  WORD4(v92[6]) = v107;
  v93[0] = v50;
  v93[1] = v51;
  v93[2] = v52;
  v100 = v107;
  v96 = v103;
  outlined init with copy of URL?(&v91, &v75, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAEyAEyAA4TextVAA14_PaddingLayoutVGAIyAA4FontVSgGGAA010_FixedSizeO0VGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAEyAEyAA4TextVAA14_PaddingLayoutVGAIyAA4FontVSgGGAA010_FixedSizeO0VGtGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v93, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAEyAEyAA4TextVAA14_PaddingLayoutVGAIyAA4FontVSgGGAA010_FixedSizeO0VGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAEyAEyAA4TextVAA14_PaddingLayoutVGAIyAA4FontVSgGGAA010_FixedSizeO0VGtGMR);
  *&v88[71] = v92[3];
  *&v88[87] = v92[4];
  *&v88[103] = v92[5];
  *&v88[113] = *(&v92[5] + 10);
  *&v88[7] = v91;
  *&v88[23] = v92[0];
  *&v88[39] = v92[1];
  *&v88[55] = v92[2];
  LODWORD(v67) = v89;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v90[70] = v105;
  *&v90[86] = v106;
  *&v90[102] = v107;
  *&v90[6] = v101;
  *&v90[22] = v102;
  *&v90[38] = v103;
  *&v90[54] = v104;
  v54 = v70;
  v53 = v71;
  v55 = *(v70 + 16);
  v57 = v72;
  v56 = v73;
  v55(v73, v72, v71);
  v58 = v69;
  v55(v69, v56, v53);
  v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AIyAIyAIyAfA14_PaddingLayoutVGAQyAA4FontVSgGGAA010_FixedSizeR0VGtGGAA010_FlexFrameR0VGtMd, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AIyAIyAIyAfA14_PaddingLayoutVGAQyAA4FontVSgGGAA010_FixedSizeR0VGtGGAA010_FlexFrameR0VGtMR) + 48);
  *&v74[97] = *&v88[80];
  *&v74[113] = *&v88[96];
  *&v74[129] = *&v88[112];
  *&v74[33] = *&v88[16];
  *&v74[49] = *&v88[32];
  *&v74[65] = *&v88[48];
  *&v74[81] = *&v88[64];
  v60 = v68;
  *v74 = v68;
  *&v74[8] = 0;
  LOBYTE(v36) = v67;
  v74[16] = v67;
  v74[145] = v88[128];
  *&v74[17] = *v88;
  *&v74[210] = *&v90[64];
  *&v74[226] = *&v90[80];
  *&v74[242] = *&v90[96];
  *&v74[256] = *&v90[110];
  *&v74[146] = *v90;
  *&v74[162] = *&v90[16];
  *&v74[178] = *&v90[32];
  *&v74[194] = *&v90[48];
  memcpy(&v58[v59], v74, 0x108uLL);
  outlined init with copy of URL?(v74, &v75, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAA4TextVAA14_PaddingLayoutVGAKyAA4FontVSgGGAA010_FixedSizeP0VGtGGAA010_FlexFrameP0VGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAA4TextVAA14_PaddingLayoutVGAKyAA4FontVSgGGAA010_FixedSizeP0VGtGGAA010_FlexFrameP0VGMR);
  v61 = *(v54 + 8);
  v61(v57, v53);
  v79[4] = *&v88[80];
  v79[5] = *&v88[96];
  v79[6] = *&v88[112];
  v79[0] = *&v88[16];
  v79[1] = *&v88[32];
  v79[2] = *&v88[48];
  v79[3] = *&v88[64];
  v75 = v60;
  v76 = 0;
  v77 = v36;
  v80 = v88[128];
  v78 = *v88;
  v85 = *&v90[64];
  v86 = *&v90[80];
  *v87 = *&v90[96];
  *&v87[14] = *&v90[110];
  v81 = *v90;
  v82 = *&v90[16];
  v83 = *&v90[32];
  v84 = *&v90[48];
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(&v75, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAA4TextVAA14_PaddingLayoutVGAKyAA4FontVSgGGAA010_FixedSizeP0VGtGGAA010_FlexFrameP0VGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAA4TextVAA14_PaddingLayoutVGAKyAA4FontVSgGGAA010_FixedSizeP0VGtGGAA010_FlexFrameP0VGMR);
  return (v61)(v73, v53);
}

uint64_t closure #1 in closure #2 in closure #2 in CertificateView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  *&v54 = a3;
  *(&v54 + 1) = a4;
  v60 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVG_Qo_Md, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVG_Qo_MR);
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v57 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = v53 - v11;
  *&v75 = a1;
  *(&v75 + 1) = a2;
  v53[1] = lazy protocol witness table accessor for type String and conformance String();

  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  static Font.callout.getter();
  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;
  KeyPath = v22;

  outlined consume of Text.Storage(v12, v14, v16 & 1);

  static Color.gray.getter();
  v55 = Text.foregroundColor(_:)();
  v56 = v23;
  v64 = v24;
  v26 = v25;

  outlined consume of Text.Storage(v17, v19, v21 & 1);

  static Alignment.topTrailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v62 = v26 & 1;
  v95 = v26 & 1;
  KeyPath = swift_getKeyPath();
  v75 = v54;

  v27 = Text.init<A>(_:)();
  v29 = v28;
  v31 = v30;
  static Font.callout.getter();
  v32 = Text.font(_:)();
  *(&v54 + 1) = v33;
  LOBYTE(v14) = v34;
  v36 = v35;

  outlined consume of Text.Storage(v27, v29, v31 & 1);

  static Alignment.topLeading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v86 = v14 & 1;
  *&v75 = v32;
  *(&v75 + 1) = *(&v54 + 1);
  LOBYTE(v76) = v14 & 1;
  *(&v76 + 1) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  v37 = v61;
  View.hyphenationDisabled(_:)();
  v65[6] = v81;
  v65[7] = v82;
  v65[8] = v83;
  v65[2] = v77;
  v65[3] = v78;
  v65[4] = v79;
  v65[5] = v80;
  v65[0] = v75;
  v65[1] = v76;
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v65, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMR);
  v39 = v57;
  v38 = v58;
  v40 = *(v58 + 16);
  v41 = v59;
  v40(v57, v37, v59);
  v42 = v55;
  *&v66 = v55;
  *(&v66 + 1) = v64;
  LOBYTE(v67) = v62;
  *(&v67 + 1) = *v94;
  DWORD1(v67) = *&v94[3];
  v72 = v91;
  v73 = v92;
  v74[0] = v93;
  v68 = v87;
  v69 = v88;
  v70 = v89;
  v71 = v90;
  v43 = v56;
  *(&v67 + 1) = v56;
  *&v74[1] = KeyPath;
  BYTE8(v74[1]) = 2;
  v44 = v92;
  v45 = v60;
  v60[6] = v91;
  v45[7] = v44;
  v45[8] = v74[0];
  v46 = v69;
  v45[2] = v68;
  v45[3] = v46;
  v47 = v71;
  v45[4] = v70;
  v45[5] = v47;
  v48 = v67;
  *v45 = v66;
  v45[1] = v48;
  *(v45 + 137) = *(v74 + 9);
  v49 = v45;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG_AA4ViewPAAE19hyphenationDisabledyQrSbFQOyAH_Qo_tMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG_AA4ViewPAAE19hyphenationDisabledyQrSbFQOyAH_Qo_tMR);
  v40(&v49[*(v50 + 48)], v39, v41);
  outlined init with copy of URL?(&v66, &v75, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
  v51 = *(v38 + 8);
  v51(v61, v41);
  v51(v39, v41);
  *&v75 = v42;
  *(&v75 + 1) = v64;
  LOBYTE(v76) = v62;
  *(&v76 + 1) = *v94;
  DWORD1(v76) = *&v94[3];
  v81 = v91;
  v82 = v92;
  v83 = v93;
  v77 = v87;
  v78 = v88;
  v79 = v89;
  v80 = v90;
  *(&v76 + 1) = v43;
  v84 = KeyPath;
  v85 = 2;
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(&v75, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
}

uint64_t closure #3 in closure #2 in CertificateView.body.getter@<X0>(uint64_t a1@<X8>)
{
  static SFLocalization.details.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.body.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  outlined consume of Text.Storage(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t closure #4 in closure #2 in CertificateView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = *(v69 + 64);
  MEMORY[0x28223BE20](v2);
  v67 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v64 - v7;
  v74 = type metadata accessor for URL();
  v9 = *(v74 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v74);
  v65 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v64 - v13;
  v73 = type metadata accessor for Logger();
  v15 = *(v73 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v73);
  v64 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v64 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v64 - v22;
  static SFLog.certificateView.getter();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_23AA9F000, v24, v25, "'Learn More' button tapped", v26, 2u);
    MEMORY[0x23EE941B0](v26, -1, -1);
  }

  v71 = *(v15 + 8);
  v72 = v15 + 8;
  v71(v23, v73);
  v27 = [objc_opt_self() mainBundle];
  v28 = [v27 bundleIdentifier];

  if (!v28)
  {
    v29 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_8;
  }

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if (v29 != 0xD00000000000001BLL)
  {
LABEL_8:
    v32 = v74;
    goto LABEL_9;
  }

  v32 = v74;
  if (0x800000023AABD9B0 == v31)
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_9:
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v29 == 0xD000000000000010 && 0x800000023AABD9D0 == v31)
  {
    goto LABEL_12;
  }

  v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v58 & 1) == 0)
  {
    static SFLog.certificateView.getter();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_23AA9F000, v59, v60, "dismissing certificate view", v61, 2u);
      MEMORY[0x23EE941B0](v61, -1, -1);
    }

    v71(v21, v73);
    v62 = a1 + *(type metadata accessor for CertificateView() + 20);
    if (*v62)
    {
      v63 = *(v62 + 8);
      (*v62)();
    }
  }

LABEL_13:
  v33 = type metadata accessor for CertificateRequest();
  outlined init with copy of URL?(a1 + *(v33 + 32), v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v34 = *(v9 + 48);
  if (v34(v8, 1, v32) == 1)
  {
    v35 = [objc_opt_self() currentDevice];
    v36 = [v35 userInterfaceIdiom];

    if (v36 == 1)
    {
      static SecurityUI.Links.learnMoreURL_iPad.getter();
    }

    else
    {
      static SecurityUI.Links.learnMoreURL_iPhone.getter();
    }

    if (v34(v8, 1, v32) != 1)
    {
      outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  else
  {
    (*(v9 + 32))(v14, v8, v32);
  }

  v68 = a1;
  v37 = v64;
  static SFLog.certificateView.getter();
  v38 = *(v9 + 16);
  v39 = v65;
  v66 = v14;
  v38(v65, v14, v32);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v75 = v43;
    *v42 = 136315138;
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v39;
    v46 = v37;
    v48 = v47;
    v49 = *(v9 + 8);
    v49(v45, v74);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v48, &v75);

    *(v42 + 4) = v50;
    _os_log_impl(&dword_23AA9F000, v40, v41, "opening 'Learn More' URL: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    v51 = v43;
    v32 = v74;
    MEMORY[0x23EE941B0](v51, -1, -1);
    MEMORY[0x23EE941B0](v42, -1, -1);

    v52 = v46;
  }

  else
  {

    v49 = *(v9 + 8);
    v49(v39, v32);
    v52 = v37;
  }

  v71(v52, v73);
  v53 = type metadata accessor for CertificateView();
  v54 = v67;
  v55 = v68 + *(v53 + 28);
  specialized Environment.wrappedValue.getter(v67);
  v56 = v66;
  OpenURLAction.callAsFunction(_:)();
  (*(v69 + 8))(v54, v70);
  return (v49)(v56, v32);
}

__n128 closure #5 in closure #2 in CertificateView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  *&v22 = static SFLocalization.learnMore.getter();
  *(&v22 + 1) = v2;
  lazy protocol witness table accessor for type String and conformance String();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v20 = static Alignment.leading.getter();
  v21 = v10;
  LOBYTE(v19) = 1;
  LOBYTE(v18) = 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v11 = v7 & 1;
  v12 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v14 = [objc_opt_self() linkColor];
  v15 = MEMORY[0x23EE936E0](v14);
  v16 = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v11;
  *(a1 + 24) = v9;
  *(a1 + 96) = v26;
  *(a1 + 112) = v27;
  *(a1 + 128) = v28;
  *(a1 + 32) = v22;
  *(a1 + 48) = v23;
  result = v25;
  *(a1 + 64) = v24;
  *(a1 + 80) = v25;
  *(a1 + 144) = 0;
  *(a1 + 152) = KeyPath;
  *(a1 + 160) = v12;
  *(a1 + 168) = v16;
  *(a1 + 176) = v15;
  return result;
}

uint64_t CertificateView.makeAttributedString(from:forURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV9LineStyleVSgMd, &_s7SwiftUI4TextV9LineStyleVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v35 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v36 = &v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGSgMd, &_sSny10Foundation16AttributedStringV5IndexVGSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  v23 = type metadata accessor for AttributeContainer();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v39[0] = a3;
  v39[1] = v37;
  v25 = type metadata accessor for Locale();
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
  type metadata accessor for AttributedString();
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x277CC8C40]);
  lazy protocol witness table accessor for type String and conformance String();
  AttributedStringProtocol.range<A>(of:options:locale:)();
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v13, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v26 = &_sSny10Foundation16AttributedStringV5IndexVGSgMd;
    v27 = &_sSny10Foundation16AttributedStringV5IndexVGSgMR;
    v28 = v17;
  }

  else
  {
    outlined init with take of Range<AttributedString.Index>(v17, v22);
    v29 = static Color.blue.getter();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
    v30 = AttributedString.subscript.modify();
    v38 = v29;
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute();
    AttributedSubstring.subscript.setter();
    v30(v39, 0);
    v31 = v36;
    static Text.LineStyle.single.getter();
    v32 = type metadata accessor for Text.LineStyle();
    (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
    v33 = AttributedString.subscript.modify();
    outlined init with copy of URL?(v31, v35, &_s7SwiftUI4TextV9LineStyleVSgMd, &_s7SwiftUI4TextV9LineStyleVSgMR);
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute();
    AttributedSubstring.subscript.setter();
    outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v31, &_s7SwiftUI4TextV9LineStyleVSgMd, &_s7SwiftUI4TextV9LineStyleVSgMR);
    v33(v39, 0);
    v28 = v22;
    v26 = &_sSny10Foundation16AttributedStringV5IndexVGMd;
    v27 = &_sSny10Foundation16AttributedStringV5IndexVGMR;
  }

  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v28, v26, v27);
}

id one-time initialization function for current()
{
  type metadata accessor for NSBundle.Sentinel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static NSBundle.current = result;
  return result;
}

{
  type metadata accessor for NSBundle.Sentinel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static NSBundle.current = result;
  return result;
}

{
  type metadata accessor for NSBundle.Sentinel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static NSBundle.current = result;
  return result;
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  outlined init with copy of URL?(v2, &v17 - v11, &_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for OpenURLAction();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSAttributedStringKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x23EE938A0](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSAttributedStringKey()
{
  v1 = *v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x23EE93920](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSAttributedStringKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSAttributedStringKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSAttributedStringKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSAttributedStringKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x23EE938A0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSAttributedStringKey@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v3 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
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

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void type metadata accessor for NSAttributedStringKey()
{
  if (!lazy cache variable for type metadata for NSAttributedStringKey)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSAttributedStringKey);
    }
  }
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined init with take of Range<AttributedString.Index>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute);
  }

  return result;
}

uint64_t sub_23AAAB398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CertificateRequest();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13OpenURLActionVGMd, &_s7SwiftUI11EnvironmentVyAA13OpenURLActionVGMR);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23AAAB4DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CertificateRequest();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13OpenURLActionVGMd, &_s7SwiftUI11EnvironmentVyAA13OpenURLActionVGMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void type metadata completion function for CertificateView()
{
  type metadata accessor for CertificateRequest();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (())?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UIFont(319, &lazy cache variable for type metadata for SFCertificateManager, off_278B69C10);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Environment<OpenURLAction>();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (())?()
{
  if (!lazy cache variable for type metadata for (())?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (())?);
    }
  }
}

uint64_t type metadata accessor for UIFont(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void type metadata accessor for Environment<OpenURLAction>()
{
  if (!lazy cache variable for type metadata for Environment<OpenURLAction>)
  {
    type metadata accessor for OpenURLAction();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<OpenURLAction>);
    }
  }
}

uint64_t type metadata accessor for NSBundle.Sentinel()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

uint64_t sub_23AAAB914()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@out ())()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for closure #2 in closure #2 in CertificateView.body.getter()
{
  v1 = *(v0 + 16);
  CertificateView.labelsAndValues.getter();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySS_SStGMd, &_sSaySS_SStGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AA0D0PAAE19hyphenationDisabledyQrSbFQOyAJ_Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AA0D0PAAE19hyphenationDisabledyQrSbFQOyAJ_Qo_tGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [(String, String)] and conformance [A], &_sSaySS_SStGMd, &_sSaySS_SStGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AA0D0PAAE19hyphenationDisabledyQrSbFQOyAJ_Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AA0D0PAAE19hyphenationDisabledyQrSbFQOyAJ_Qo_tGMR);
  return ForEach<>.init(_:id:content:)();
}

unint64_t lazy protocol witness table accessor for type CertificateChainView and conformance CertificateChainView()
{
  result = lazy protocol witness table cache variable for type CertificateChainView and conformance CertificateChainView;
  if (!lazy protocol witness table cache variable for type CertificateChainView and conformance CertificateChainView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateChainView and conformance CertificateChainView);
  }

  return result;
}

uint64_t outlined init with copy of CertificateRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23AAABC38()
{
  v1 = type metadata accessor for CertificateView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 40);

  v8 = *(type metadata accessor for CertificateRequest() + 32);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = (v5 + v1[5]);
  if (*v11)
  {
    v12 = v11[1];
  }

  v13 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for OpenURLAction();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with take of CertificateView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CertificateView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #4 in closure #2 in CertificateView.body.getter()
{
  v1 = *(type metadata accessor for CertificateView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #4 in closure #2 in CertificateView.body.getter(v2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGAPyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGAPyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd, &_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t key path getter for EnvironmentValues.foregroundColor : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for EnvironmentValues.foregroundColor : EnvironmentValues, serialized(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t key path getter for EnvironmentValues.font : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for EnvironmentValues.font : EnvironmentValues, serialized(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t key path getter for EnvironmentValues.multilineTextAlignment : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t key path getter for CertificateHostingView.dismiss : CertificateHostingView@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CertificateHostingView() + 20));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return _sxRi_zRi0_zlyytIsegr_SgWOy_0(v4);
}

uint64_t key path setter for CertificateHostingView.dismiss : CertificateHostingView(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for CertificateHostingView() + 20));
  v8 = *v7;
  v9 = v7[1];
  _sxRi_zRi0_zlyytIsegr_SgWOy_0(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t CertificateHostingView.dismiss.getter()
{
  v1 = (v0 + *(type metadata accessor for CertificateHostingView() + 20));
  v2 = *v1;
  v3 = v1[1];
  _sxRi_zRi0_zlyytIsegr_SgWOy_0(*v1);
  return v2;
}

uint64_t type metadata accessor for CertificateHostingView()
{
  result = type metadata singleton initialization cache for CertificateHostingView;
  if (!type metadata singleton initialization cache for CertificateHostingView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CertificateHostingView.dismiss.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CertificateHostingView() + 20));
  v6 = v5[1];
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CertificateHostingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for StackNavigationViewStyle();
  v3 = *(v2 - 8);
  v24 = v2;
  v25 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v27 = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18navigationBarItems8trailingQrqd___tAaBRd__lFQOyAcAE0dE16TitleDisplayModeyQrAA010NavigationE4ItemV0hiJ0OFQOyAcAE0dH0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA_yA1_yAA4TextVGA6_GGGQo_Md, &_s7SwiftUI4ViewPAAE18navigationBarItems8trailingQrqd___tAaBRd__lFQOyAcAE0dE16TitleDisplayModeyQrAA010NavigationE4ItemV0hiJ0OFQOyAcAE0dH0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA_yA1_yAA4TextVGA6_GGGQo_MR);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo_Md, &_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo_MR);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMR);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo_MR);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMd, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMR);
  v16 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, CertificateView> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMd, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMR);
  v17 = lazy protocol witness table accessor for type String and conformance String();
  v28 = v15;
  v29 = MEMORY[0x277D837D0];
  v30 = v16;
  v31 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v14;
  v29 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v20 = lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>();
  v28 = v12;
  v29 = v13;
  v30 = v19;
  v31 = v20;
  swift_getOpaqueTypeConformance2();
  NavigationView.init(content:)();
  StackNavigationViewStyle.init()();
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationView<<<opaque return type of View.navigationBarItems<A>(trailing:)>>.0> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMR);
  lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type StackNavigationViewStyle and conformance StackNavigationViewStyle, MEMORY[0x277CDE2A0]);
  v21 = v24;
  View.navigationViewStyle<A>(_:)();
  (*(v25 + 8))(v6, v21);
  return (*(v8 + 8))(v11, v7);
}

uint64_t closure #1 in CertificateHostingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMR);
  v3 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v35 - v4;
  v5 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMd, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo_MR);
  v36 = *(v14 - 8);
  v37 = v14;
  v15 = *(v36 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo_Md, &_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo_MR);
  v38 = *(v18 - 8);
  v39 = v18;
  v19 = *(v38 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v35 - v20;
  v45 = a1;
  type metadata accessor for CertificateView();
  lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type CertificateView and conformance CertificateView, type metadata accessor for CertificateView);
  List<>.init(content:)();
  v22 = *(a1 + 24);
  v35 = a1;
  if (v22)
  {
    v23 = *(a1 + 16);
    v24 = v22;
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
  }

  v46 = v23;
  v47 = v24;
  v25 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, CertificateView> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMd, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMR);
  v26 = lazy protocol witness table accessor for type String and conformance String();

  v27 = MEMORY[0x277D837D0];
  View.navigationTitle<A>(_:)();

  (*(v10 + 8))(v13, v9);
  v29 = v40;
  v28 = v41;
  (*(v40 + 104))(v8, *MEMORY[0x277CDDDC0], v41);
  v46 = v9;
  v47 = v27;
  v48 = v25;
  v49 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v37;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v29 + 8))(v8, v28);
  (*(v36 + 8))(v17, v31);
  v32 = v42;
  closure #2 in closure #1 in CertificateHostingView.body.getter(v35, v42);
  v46 = v31;
  v47 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>();
  v33 = v39;
  View.navigationBarItems<A>(trailing:)();
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v32, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMR);
  return (*(v38 + 8))(v21, v33);
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA07DefaultF5LabelVGAA31AccessibilityAttachmentModifierVGAEyAGyAA4TextVGALGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA07DefaultF5LabelVGAA31AccessibilityAttachmentModifierVGAEyAGyAA4TextVGALGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMR);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<DefaultButtonLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMR);
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in closure #1 in CertificateHostingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CertificateHostingView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for CertificateRequest();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s10SecurityUI18CertificateRequestVWOcTm_0(a1, v10, type metadata accessor for CertificateRequest);
  _s10SecurityUI18CertificateRequestVWOcTm_0(a1, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CertificateHostingView);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  outlined init with take of CertificateRequest(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for CertificateHostingView);
  return CertificateView.init(request:dismiss:)(v10, partial apply for closure #1 in closure #1 in closure #1 in CertificateHostingView.body.getter, v12, a2);
}

uint64_t closure #2 in closure #1 in CertificateHostingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v34 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
  v6 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v39 = &v34 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANG_GMd, "P-");
  v8 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v10 = &v34 - v9;
  v11 = type metadata accessor for ButtonRole();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMR);
  v35 = *(v15 - 8);
  v16 = *(v35 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - v17;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMR);
  v19 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v21 = &v34 - v20;
  v22 = type metadata accessor for CertificateHostingView();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  _s10SecurityUI18CertificateRequestVWOcTm_0(a1, &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CertificateHostingView);
  v25 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v26 = swift_allocObject();
  outlined init with take of CertificateRequest(&v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for CertificateHostingView);
  if (static Solarium.isEnabled.getter())
  {
    static ButtonRole.confirm.getter();

    MEMORY[0x23EE93740](v14, partial apply for closure #1 in closure #2 in closure #1 in CertificateHostingView.body.getter, v26);
    static SecurityUI.Screens.doneButtonIdentifier.getter();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<DefaultButtonLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMR);
    View.accessibilityIdentifier(_:)();

    (*(v35 + 8))(v18, v15);
    v27 = &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMd;
    v28 = &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMR;
    outlined init with copy of URL?(v21, v10, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    v29 = v21;
  }

  else
  {

    v30 = v36;
    Button.init(action:label:)();
    static SecurityUI.Screens.doneButtonIdentifier.getter();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    v31 = v39;
    v32 = v38;
    View.accessibilityIdentifier(_:)();

    (*(v37 + 8))(v30, v32);
    v27 = &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd;
    v28 = &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR;
    outlined init with copy of URL?(v31, v10, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    v29 = v31;
  }

  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v29, v27, v28);
}

uint64_t closure #1 in closure #2 in closure #1 in CertificateHostingView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SFLog.certificateHostingView.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23AA9F000, v7, v8, "'Done' button tapped", v9, 2u);
    MEMORY[0x23EE941B0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  result = type metadata accessor for CertificateHostingView();
  v11 = a1 + *(result + 20);
  if (*v11)
  {
    v12 = *(v11 + 8);
    return (*v11)();
  }

  return result;
}

uint64_t closure #2 in closure #2 in closure #1 in CertificateHostingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  static SFLocalization.done.getter();
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t CertificateHostingView.init(request:dismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with take of CertificateRequest(a1, a4, type metadata accessor for CertificateRequest);
  result = type metadata accessor for CertificateHostingView();
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance CertificateHostingView@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for StackNavigationViewStyle();
  v3 = *(v2 - 8);
  v24 = v2;
  v25 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v27 = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18navigationBarItems8trailingQrqd___tAaBRd__lFQOyAcAE0dE16TitleDisplayModeyQrAA010NavigationE4ItemV0hiJ0OFQOyAcAE0dH0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA_yA1_yAA4TextVGA6_GGGQo_Md, &_s7SwiftUI4ViewPAAE18navigationBarItems8trailingQrqd___tAaBRd__lFQOyAcAE0dE16TitleDisplayModeyQrAA010NavigationE4ItemV0hiJ0OFQOyAcAE0dH0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA_yA1_yAA4TextVGA6_GGGQo_MR);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo_Md, &_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo_MR);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMR);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo_MR);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMd, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMR);
  v16 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, CertificateView> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMd, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMR);
  v17 = lazy protocol witness table accessor for type String and conformance String();
  v28 = v15;
  v29 = MEMORY[0x277D837D0];
  v30 = v16;
  v31 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v14;
  v29 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v20 = lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>();
  v28 = v12;
  v29 = v13;
  v30 = v19;
  v31 = v20;
  swift_getOpaqueTypeConformance2();
  NavigationView.init(content:)();
  StackNavigationViewStyle.init()();
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationView<<<opaque return type of View.navigationBarItems<A>(trailing:)>>.0> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMR);
  lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type StackNavigationViewStyle and conformance StackNavigationViewStyle, MEMORY[0x277CDE2A0]);
  v21 = v24;
  View.navigationViewStyle<A>(_:)();
  (*(v25 + 8))(v6, v21);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_23AAADF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CertificateRequest();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23AAAE038(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CertificateRequest();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void type metadata completion function for CertificateHostingView()
{
  type metadata accessor for CertificateRequest();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (())?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23AAAE174()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMR);
  type metadata accessor for StackNavigationViewStyle();
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationView<<<opaque return type of View.navigationBarItems<A>(trailing:)>>.0> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMR);
  lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type StackNavigationViewStyle and conformance StackNavigationViewStyle, MEMORY[0x277CDE2A0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23AAAE254()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10SecurityUI18CertificateRequestVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of CertificateRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in CertificateHostingView.body.getter()
{
  v1 = *(type metadata accessor for CertificateHostingView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #2 in closure #1 in CertificateHostingView.body.getter(v2);
}

uint64_t objectdestroy_12Tm()
{
  v1 = type metadata accessor for CertificateHostingView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 40);

  v8 = *(type metadata accessor for CertificateRequest() + 32);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = (v5 + *(v1 + 20));
  if (*v11)
  {
    v12 = v11[1];
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in CertificateHostingView.body.getter()
{
  v1 = type metadata accessor for CertificateHostingView();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + *(result + 28) + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  if (*v4)
  {
    v5 = *(v4 + 8);
    return (*v4)();
  }

  return result;
}

void *CertificateRequest.qwacTrust.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t CertificateRequest.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CertificateRequest.message.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CertificateRequest.help.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CertificateRequest() + 32);

  return outlined init with copy of URL?(v3, a1);
}

uint64_t type metadata accessor for CertificateRequest()
{
  result = type metadata singleton initialization cache for CertificateRequest;
  if (!type metadata singleton initialization cache for CertificateRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CertificateRequest.init(trust:qwacTrust:title:message:help:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v9 = a8 + *(type metadata accessor for CertificateRequest() + 32);

  return outlined init with take of URL?(a7, v9);
}

uint64_t sub_23AAAE7F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_23AAAE8C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for CertificateRequest()
{
  type metadata accessor for SecTrustRef();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SecTrustRef?(319, &lazy cache variable for type metadata for SecTrustRef?, type metadata accessor for SecTrustRef);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SecTrustRef(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SecTrustRef?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for SecTrustRef(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for SecTrustRef?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t static SFLocalization.expires(date:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23AABCA00;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  specialized static SFLocalization.localizedString(key:value:tableSuffix:)(a3, a4);
  v9 = String.init(format:_:)();

  return v9;
}

uint64_t static SFLocalization.connectionIsSecure(host:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23AABCA00;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  specialized static SFLocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001CLL, 0x800000023AABDBB0);
  v5 = String.init(format:_:)();

  return v5;
}

uint64_t static SFLocalization.connectionNotSecure(host:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23AABCA00;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  specialized static SFLocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001DLL, 0x800000023AABDC00);
  v5 = String.init(format:_:)();

  return v5;
}

uint64_t CertificateViewIdentifier.identifier.getter(char a1)
{
  if (!a1)
  {
    return MEMORY[0x2821ACC80]();
  }

  if (a1 == 1)
  {
    return MEMORY[0x2821ACC70]();
  }

  return MEMORY[0x2821ACC78]();
}

Swift::Int CertificateViewIdentifier.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EE93B10](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CertificateViewIdentifier()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EE93B10](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CertificateViewIdentifier()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EE93B10](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type CertificateViewIdentifier and conformance CertificateViewIdentifier()
{
  result = lazy protocol witness table cache variable for type CertificateViewIdentifier and conformance CertificateViewIdentifier;
  if (!lazy protocol witness table cache variable for type CertificateViewIdentifier and conformance CertificateViewIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateViewIdentifier and conformance CertificateViewIdentifier);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CertificateViewIdentifier(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CertificateViewIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

void CertificateModifier.request.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);

  JUMPOUT(0x23EE93750);
}

uint64_t key path setter for CertificateModifier.request : CertificateModifier(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  outlined init with copy of URL?(a1, &v10 - v7, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  outlined init with copy of URL?(v8, v6, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  Binding.wrappedValue.setter();
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v8, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
}

uint64_t CertificateModifier.request.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of URL?(a1, &v6 - v4, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  Binding.wrappedValue.setter();
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(a1, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
}

void (*CertificateModifier.request.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR) - 8) + 64);
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    *a1 = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v5 = malloc(v3);
  }

  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  a1[2] = v6;
  if (v4)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(*(v6 - 8) + 64));
  }

  a1[3] = v7;
  outlined init with copy of URL?(v1, v7, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  MEMORY[0x23EE93750](v6);
  return CertificateModifier.request.modify;
}

void CertificateModifier.request.modify(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  if (a2)
  {
    outlined init with copy of URL?(*(a1 + 8), v4, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
    Binding.wrappedValue.setter();
    outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v2, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
    v6 = v5;
    v7 = &_s10SecurityUI18CertificateRequestVSgMd;
    v8 = &_s10SecurityUI18CertificateRequestVSgMR;
  }

  else
  {
    v9 = *(a1 + 8);
    Binding.wrappedValue.setter();
    v7 = &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd;
    v8 = &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR;
    v6 = v2;
  }

  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v6, v7, v8);
  free(v2);
  free(v5);

  free(v4);
}

uint64_t CertificateModifier.$request.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);

  return Binding.projectedValue.getter();
}

uint64_t CertificateModifier.body(content:)(uint64_t a1)
{
  v2 = v1;
  v15 = a1;
  v3 = type metadata accessor for CertificateModifier();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  outlined init with copy of CertificateModifier(v1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v6 = static MainActor.shared.getter();
  v7 = *(v4 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v6;
  *(v9 + 24) = v10;
  outlined init with take of CertificateModifier(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  outlined init with copy of CertificateModifier(v1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  outlined init with take of CertificateModifier(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v8);
  Binding.init(get:set:)();
  outlined init with copy of CertificateModifier(v2, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  outlined init with take of CertificateModifier(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + ((v7 + 16) & ~v7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy08SecurityB0011CertificateD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy08SecurityB0011CertificateD0VGMR);
  type metadata accessor for CertificatePresentationView();
  lazy protocol witness table accessor for type _ViewModifier_Content<CertificateModifier> and conformance _ViewModifier_Content<A>();
  lazy protocol witness table accessor for type CertificatePresentationView and conformance CertificatePresentationView();
  View.sheet<A>(isPresented:onDismiss:content:)();
}

uint64_t type metadata accessor for CertificateModifier()
{
  result = type metadata singleton initialization cache for CertificateModifier;
  if (!type metadata singleton initialization cache for CertificateModifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in CertificateModifier.body(content:)@<X0>(BOOL *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  Binding.projectedValue.getter();
  MEMORY[0x23EE93750](v6);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v9, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  v10 = type metadata accessor for CertificateRequest();
  v11 = (*(*(v10 - 8) + 48))(v5, 1, v10) != 1;
  result = outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v5, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  *a1 = v11;
  return result;
}

uint64_t outlined init with copy of CertificateModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CertificateModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of CertificateModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CertificateModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in CertificateModifier.body(content:)@<X0>(BOOL *a1@<X8>)
{
  v2 = *(*(type metadata accessor for CertificateModifier() - 8) + 80);

  return closure #1 in CertificateModifier.body(content:)(a1);
}

uint64_t closure #2 in CertificateModifier.body(content:)(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  if ((*a1 & 1) == 0)
  {
    Binding.projectedValue.getter();
    v11 = type metadata accessor for CertificateRequest();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    Binding.wrappedValue.setter();
    return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v10, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(type metadata accessor for CertificateModifier() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR) + 32);
  v9 = type metadata accessor for CertificateRequest();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {

    v10 = *(v8 + 24);

    v11 = *(v8 + 40);

    v12 = *(v9 + 32);
    v13 = type metadata accessor for URL();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v8 + v12, 1, v13))
    {
      (*(v14 + 8))(v8 + v12, v13);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #2 in CertificateModifier.body(content:)(_BYTE *a1)
{
  v2 = *(*(type metadata accessor for CertificateModifier() - 8) + 80);

  return closure #2 in CertificateModifier.body(content:)(a1);
}

uint64_t closure #3 in CertificateModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  Binding.projectedValue.getter();
  return CertificatePresentationView.init(request:)(v5, a1);
}

uint64_t sub_23AAB026C()
{
  v1 = *(type metadata accessor for CertificateModifier() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR) + 32);
  v8 = type metadata accessor for CertificateRequest();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {

    v9 = *(v7 + 24);

    v10 = *(v7 + 40);

    v11 = *(v8 + 32);
    v12 = type metadata accessor for URL();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v7 + v11, 1, v12))
    {
      (*(v13 + 8))(v7 + v11, v12);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #3 in CertificateModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(type metadata accessor for CertificateModifier() - 8) + 80);

  return closure #3 in CertificateModifier.body(content:)(a1);
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<CertificateModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<CertificateModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<CertificateModifier> and conformance _ViewModifier_Content<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy08SecurityB0011CertificateD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy08SecurityB0011CertificateD0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<CertificateModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CertificatePresentationView and conformance CertificatePresentationView()
{
  result = lazy protocol witness table cache variable for type CertificatePresentationView and conformance CertificatePresentationView;
  if (!lazy protocol witness table cache variable for type CertificatePresentationView and conformance CertificatePresentationView)
  {
    type metadata accessor for CertificatePresentationView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificatePresentationView and conformance CertificatePresentationView);
  }

  return result;
}

uint64_t outlined init with take of Binding<CertificateRequest?>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23AAB0614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23AAB06A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void type metadata completion function for CertificateModifier()
{
  type metadata accessor for Binding<CertificateRequest?>();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for Binding<CertificateRequest?>()
{
  if (!lazy cache variable for type metadata for Binding<CertificateRequest?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<CertificateRequest?>);
    }
  }
}

uint64_t sub_23AAB07EC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy08SecurityB0011CertificateD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy08SecurityB0011CertificateD0VGMR);
  type metadata accessor for CertificatePresentationView();
  lazy protocol witness table accessor for type _ViewModifier_Content<CertificateModifier> and conformance _ViewModifier_Content<A>();
  lazy protocol witness table accessor for type CertificatePresentationView and conformance CertificatePresentationView();
  return swift_getOpaqueTypeConformance2();
}

void CertificatePresentationView.request.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);

  JUMPOUT(0x23EE93750);
}

uint64_t key path setter for CertificatePresentationView.request : CertificatePresentationView(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  outlined init with copy of URL?(a1, &v10 - v7, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  outlined init with copy of URL?(v8, v6, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  Binding.wrappedValue.setter();
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v8, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
}

uint64_t CertificatePresentationView.request.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of URL?(a1, &v6 - v4, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  Binding.wrappedValue.setter();
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(a1, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
}

void (*CertificatePresentationView.request.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR) - 8) + 64);
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    *a1 = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v5 = malloc(v3);
  }

  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  a1[2] = v6;
  if (v4)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(*(v6 - 8) + 64));
  }

  a1[3] = v7;
  outlined init with copy of URL?(v1, v7, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  MEMORY[0x23EE93750](v6);
  return CertificateModifier.request.modify;
}

uint64_t CertificatePresentationView.$request.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);

  return Binding.projectedValue.getter();
}

uint64_t CertificatePresentationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = type metadata accessor for StackNavigationViewStyle();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMR);
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE010navigationC5StyleyQrqd__AA010NavigationcE0Rd__lFQOyAA0fC0VyAcAE0D8BarItems8trailingQrqd___tAaBRd__lFQOyAcAE0dG16TitleDisplayModeyQrAA0fG4ItemV0jkL0OFQOyAcAE0dJ0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedT0VyAA6ButtonVyAA07DefaultV5LabelVGAA31AccessibilityAttachmentModifierVGA3_yA5_yAA4TextVGA10_GGGQo_G_AA05StackfcE0VQo_Md, &_s7SwiftUI4ViewPAAE010navigationC5StyleyQrqd__AA010NavigationcE0Rd__lFQOyAA0fC0VyAcAE0D8BarItems8trailingQrqd___tAaBRd__lFQOyAcAE0dG16TitleDisplayModeyQrAA0fG4ItemV0jkL0OFQOyAcAE0dJ0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedT0VyAA6ButtonVyAA07DefaultV5LabelVGAA31AccessibilityAttachmentModifierVGA3_yA5_yAA4TextVGA10_GGGQo_G_AA05StackfcE0VQo_MR);
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](v8);
  v43 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - v17;
  v19 = type metadata accessor for CertificateRequest();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  Binding.projectedValue.getter();
  MEMORY[0x23EE93750](v15);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v18, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  if ((*(v20 + 48))(v14, 1, v19) == 1)
  {
    outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v14, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
    return (*(v50 + 56))(v52, 1, 1, v51);
  }

  else
  {
    v25 = _s10SecurityUI18CertificateRequestVWObTm_0(v14, v23, type metadata accessor for CertificateRequest);
    MEMORY[0x28223BE20](v25);
    *(&v43 - 2) = v23;
    *(&v43 - 1) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18navigationBarItems8trailingQrqd___tAaBRd__lFQOyAcAE0dE16TitleDisplayModeyQrAA010NavigationE4ItemV0hiJ0OFQOyAcAE0dH0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA_yA1_yAA4TextVGA6_GGGQo_Md, &_s7SwiftUI4ViewPAAE18navigationBarItems8trailingQrqd___tAaBRd__lFQOyAcAE0dE16TitleDisplayModeyQrAA010NavigationE4ItemV0hiJ0OFQOyAcAE0dH0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA_yA1_yAA4TextVGA6_GGGQo_MR);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo_Md, &_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo_MR);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMR);
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo_MR);
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMd, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMR);
    v30 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, CertificateView> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMd, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMR);
    v31 = lazy protocol witness table accessor for type String and conformance String();
    v53 = v29;
    v54 = MEMORY[0x277D837D0];
    v55 = v30;
    v56 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v53 = v28;
    v54 = OpaqueTypeConformance2;
    v33 = swift_getOpaqueTypeConformance2();
    v34 = lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>();
    v53 = v26;
    v54 = v27;
    v55 = v33;
    v56 = v34;
    swift_getOpaqueTypeConformance2();
    v35 = v44;
    NavigationView.init(content:)();
    v36 = v47;
    StackNavigationViewStyle.init()();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationView<<<opaque return type of View.navigationBarItems<A>(trailing:)>>.0> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMR);
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type StackNavigationViewStyle and conformance StackNavigationViewStyle, MEMORY[0x277CDE2A0]);
    v37 = v43;
    v38 = v46;
    v39 = v49;
    View.navigationViewStyle<A>(_:)();
    (*(v48 + 8))(v36, v39);
    (*(v45 + 8))(v35, v38);
    v41 = v50;
    v40 = v51;
    v42 = v52;
    (*(v50 + 32))(v52, v37, v51);
    (*(v41 + 56))(v42, 0, 1, v40);
    return outlined destroy of CertificateRequest(v23);
  }
}

uint64_t closure #1 in CertificatePresentationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMR);
  v5 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v36 - v6;
  v7 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMd, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo_MR);
  v36 = *(v16 - 8);
  v37 = v16;
  v17 = *(v36 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo_Md, &_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo_MR);
  v38 = *(v20 - 8);
  v39 = v20;
  v21 = *(v38 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v36 - v22;
  v46 = a1;
  v47 = a2;
  v42 = a2;
  type metadata accessor for CertificateView();
  lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type CertificateView and conformance CertificateView, type metadata accessor for CertificateView);
  List<>.init(content:)();
  if (*(a1 + 24))
  {
    v24 = *(a1 + 16);
    v25 = *(a1 + 24);
  }

  else
  {
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  v48 = v24;
  v49 = v25;
  v26 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, CertificateView> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMd, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMR);
  v27 = lazy protocol witness table accessor for type String and conformance String();

  v28 = MEMORY[0x277D837D0];
  View.navigationTitle<A>(_:)();

  (*(v12 + 8))(v15, v11);
  v30 = v40;
  v29 = v41;
  (*(v40 + 104))(v10, *MEMORY[0x277CDDDC0], v41);
  v48 = v11;
  v49 = v28;
  v50 = v26;
  v51 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v37;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v30 + 8))(v10, v29);
  (*(v36 + 8))(v19, v32);
  v33 = v43;
  closure #2 in closure #1 in CertificatePresentationView.body.getter(v42, v43);
  v48 = v32;
  v49 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>();
  v34 = v39;
  View.navigationBarItems<A>(trailing:)();
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v33, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMR);
  return (*(v38 + 8))(v23, v34);
}

uint64_t closure #1 in closure #1 in CertificatePresentationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CertificatePresentationView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = type metadata accessor for CertificateRequest();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of CertificatePresentationView(a1, v12, type metadata accessor for CertificateRequest);
  outlined init with copy of CertificatePresentationView(a2, &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CertificatePresentationView);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  _s10SecurityUI18CertificateRequestVWObTm_0(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for CertificatePresentationView);
  return CertificateView.init(request:dismiss:)(v12, partial apply for closure #1 in closure #1 in closure #1 in CertificatePresentationView.body.getter, v14, a3);
}

uint64_t closure #1 in closure #1 in closure #1 in CertificatePresentationView.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = type metadata accessor for CertificateRequest();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  outlined init with copy of URL?(v6, v4, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  Binding.wrappedValue.setter();
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v6, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
}

uint64_t closure #2 in closure #1 in CertificatePresentationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v35 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
  v6 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v38 = &v35 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANG_GMd, "P-");
  v8 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v10 = &v35 - v9;
  v11 = type metadata accessor for ButtonRole();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMR);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMR);
  v20 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v22 = &v35 - v21;
  v23 = type metadata accessor for CertificatePresentationView();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23 - 8);
  outlined init with copy of CertificatePresentationView(a1, &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CertificatePresentationView);
  v26 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v27 = swift_allocObject();
  _s10SecurityUI18CertificateRequestVWObTm_0(&v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for CertificatePresentationView);
  if (static Solarium.isEnabled.getter())
  {
    static ButtonRole.confirm.getter();

    MEMORY[0x23EE93740](v14, partial apply for closure #1 in closure #2 in closure #1 in CertificatePresentationView.body.getter, v27);
    static SecurityUI.Screens.doneButtonIdentifier.getter();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<DefaultButtonLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMR);
    View.accessibilityIdentifier(_:)();

    (*(v16 + 8))(v19, v15);
    v28 = &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMd;
    v29 = &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMR;
    outlined init with copy of URL?(v22, v10, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    v30 = v22;
  }

  else
  {

    v31 = v35;
    Button.init(action:label:)();
    static SecurityUI.Screens.doneButtonIdentifier.getter();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    v32 = v38;
    v33 = v37;
    View.accessibilityIdentifier(_:)();

    (*(v36 + 8))(v31, v33);
    v28 = &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd;
    v29 = &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR;
    outlined init with copy of URL?(v32, v10, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    v30 = v32;
  }

  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v30, v28, v29);
}

uint64_t closure #1 in closure #2 in closure #1 in CertificatePresentationView.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SFLog.certificatePresentationView.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_23AA9F000, v12, v13, "'Done' button tapped", v14, 2u);
    MEMORY[0x23EE941B0](v14, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v15 = type metadata accessor for CertificateRequest();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  outlined init with copy of URL?(v6, v4, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  Binding.wrappedValue.setter();
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v6, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
}

uint64_t sub_23AAB2258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23AAB22E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CertificatePresentationView()
{
  result = type metadata singleton initialization cache for CertificatePresentationView;
  if (!type metadata singleton initialization cache for CertificatePresentationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type (<<opaque return type of View.navigationViewStyle<A>(_:)>>.0)? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type (<<opaque return type of View.navigationViewStyle<A>(_:)>>.0)? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type (<<opaque return type of View.navigationViewStyle<A>(_:)>>.0)? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE010navigationC5StyleyQrqd__AA010NavigationcE0Rd__lFQOyAA0fC0VyAcAE0D8BarItems8trailingQrqd___tAaBRd__lFQOyAcAE0dG16TitleDisplayModeyQrAA0fG4ItemV0jkL0OFQOyAcAE0dJ0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedT0VyAA6ButtonVyAA07DefaultV5LabelVGAA31AccessibilityAttachmentModifierVGA3_yA5_yAA4TextVGA10_GGGQo_G_AA05StackfcE0VQo_SgMd, "Z+");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMR);
    type metadata accessor for StackNavigationViewStyle();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationView<<<opaque return type of View.navigationBarItems<A>(trailing:)>>.0> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMR);
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type StackNavigationViewStyle and conformance StackNavigationViewStyle, MEMORY[0x277CDE2A0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type (<<opaque return type of View.navigationViewStyle<A>(_:)>>.0)? and conformance <A> A?);
  }

  return result;
}

uint64_t _s10SecurityUI18CertificateRequestVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of CertificatePresentationView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(type metadata accessor for CertificatePresentationView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR) + 32);
  v8 = type metadata accessor for CertificateRequest();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {

    v9 = *(v7 + 24);

    v10 = *(v7 + 40);

    v11 = *(v8 + 32);
    v12 = type metadata accessor for URL();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v7 + v11, 1, v12))
    {
      (*(v13 + 8))(v7 + v11, v12);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in CertificatePresentationView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CertificatePresentationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

Swift::String __swiftcall NSData.toHexString()()
{
  v0 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Foundation4DataV_SSs5NeverOTg557_sSo6NSDataC10SecurityUIE11toHexStringSSyFSSs5UInt8VXEfU_Tf1cn_n(v0, v1);
  outlined consume of Data._Representation(v0, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
  v3 = BidirectionalCollection<>.joined(separator:)();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Foundation4DataV_SSs5NeverOTg557_sSo6NSDataC10SecurityUIE11toHexStringSSyFSSs5UInt8VXEfU_Tf1cn_n(uint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v46 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v33 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v46;
    v30 = &v34 + v9;
    v32 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v33 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = __DataStorage._offset.getter();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v19 = v30[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_23AABCA00;
      *(v20 + 56) = MEMORY[0x277D84B78];
      *(v20 + 64) = MEMORY[0x277D84BC0];
      *(v20 + 32) = v19;
      v21 = String.init(format:_:)();
      v46 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        v29 = v21;
        v26 = v22;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      ++v10;
      LODWORD(v4) = v32;
    }

    while (v11 != v5);
  }

LABEL_39:
  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t CertificateSection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10SecurityUI18CertificateSection_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CertificateSection.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10SecurityUI18CertificateSection_title);
  v2 = *(v0 + OBJC_IVAR____TtC10SecurityUI18CertificateSection_title + 8);

  return v1;
}

id CertificateSection.__allocating_init(title:keyValuePairs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  UUID.init()();
  v8 = &v7[OBJC_IVAR____TtC10SecurityUI18CertificateSection_title];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC10SecurityUI18CertificateSection_keyValuePairs] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id CertificateSection.init(title:keyValuePairs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  UUID.init()();
  v7 = &v3[OBJC_IVAR____TtC10SecurityUI18CertificateSection_title];
  *v7 = a1;
  *(v7 + 1) = a2;
  *&v3[OBJC_IVAR____TtC10SecurityUI18CertificateSection_keyValuePairs] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for CertificateSection(0);
  return objc_msgSendSuper2(&v9, sel_init);
}

id CertificateSection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t protocol witness for Identifiable.id.getter in conformance CertificateSection@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10SecurityUI18CertificateSection_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t key path getter for CertificateDetailsViewModel.sections : CertificateDetailsViewModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t key path setter for CertificateDetailsViewModel.sections : CertificateDetailsViewModel(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x60);

  return v3(v4);
}

uint64_t CertificateDetailsViewModel.sections.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t CertificateDetailsViewModel.sections.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

void (*CertificateDetailsViewModel.sections.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return CertificateDetailsViewModel.sections.modify;
}

void CertificateDetailsViewModel.sections.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for CertificateDetailsViewModel.$sections : CertificateDetailsViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay10SecurityUI18CertificateSectionCG_GMd, &_s7Combine9PublishedV9PublisherVySay10SecurityUI18CertificateSectionCG_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x78))(v7);
}

uint64_t CertificateDetailsViewModel.$sections.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10SecurityUI18CertificateSectionCGGMd, &_s7Combine9PublishedVySay10SecurityUI18CertificateSectionCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t CertificateDetailsViewModel.$sections.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay10SecurityUI18CertificateSectionCG_GMd, &_s7Combine9PublishedV9PublisherVySay10SecurityUI18CertificateSectionCG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10SecurityUI18CertificateSectionCGGMd, &_s7Combine9PublishedVySay10SecurityUI18CertificateSectionCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*CertificateDetailsViewModel.$sections.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay10SecurityUI18CertificateSectionCG_GMd, &_s7Combine9PublishedV9PublisherVySay10SecurityUI18CertificateSectionCG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC10SecurityUI27CertificateDetailsViewModel__sections;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10SecurityUI18CertificateSectionCGGMd, &_s7Combine9PublishedVySay10SecurityUI18CertificateSectionCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return CertificateDetailsViewModel.$sections.modify;
}

void CertificateDetailsViewModel.$sections.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

void *CertificateDetailsViewModel.init(certificate:)(void *a1)
{
  v123 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10SecurityUI18CertificateSectionCGGMd, &_s7Combine9PublishedVySay10SecurityUI18CertificateSectionCGGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v79 - v11;
  v13 = OBJC_IVAR____TtC10SecurityUI27CertificateDetailsViewModel__sections;
  *&v120 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10SecurityUI18CertificateSectionCGMd, &_sSay10SecurityUI18CertificateSectionCGMR);
  Published.init(initialValue:)();
  (*(v9 + 32))(&v1[v13], v12, v8);
  v14 = type metadata accessor for CertificateDetailsViewModel(0);
  v116.receiver = v1;
  v116.super_class = v14;
  v15 = objc_msgSendSuper2(&v116, sel_init);
  v16 = objc_allocWithZone(SFCertificateProperties);
  v91 = v15;
  v80 = a1;
  v17 = [v16 initWithCertificate_];
  v18 = [v17 sectionTitles];
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = specialized _arrayConditionalCast<A, B>(_:)(v19);

  v88 = v20;
  if (!v20)
  {
    goto LABEL_72;
  }

  v87 = v17;
  v21 = [v17 sections];
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = specialized _arrayConditionalCast<A, B>(_:)(v22);

  if (!v23)
  {

    v17 = v87;
LABEL_72:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_23AABCA00;
    *(v74 + 56) = MEMORY[0x277D837D0];
    *(v74 + 32) = 0xD000000000000024;
    *(v74 + 40) = 0x800000023AABDCC0;
    print(_:separator:terminator:)();

    v75 = &v119;
    goto LABEL_74;
  }

  v24 = (v23 & 0xFFFFFFFFFFFFFF8);
  v79 = v23;
  v84 = v23 & 0xFFFFFFFFFFFFFF8;
  if (v23 >> 62)
  {
    goto LABEL_88;
  }

  v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v23 = v87;
  if (v25)
  {
    v26 = 0;
    v86 = v79 & 0xC000000000000001;
    v85 = v79 + 32;
    v83 = v4 + 1;
    v81 = v88 + 32;
    v101 = xmmword_23AABCA00;
    v82 = v25;
    v93 = v3;
    v92 = v7;
    while (1)
    {
      v90 = v26;
      if (v86)
      {
        v27 = MEMORY[0x23EE93A10](v26, v79);
      }

      else
      {
        if (v26 >= *(v24 + 2))
        {
          goto LABEL_84;
        }

        v27 = *(v85 + 8 * v26);
      }

      v89 = v27;
      NSArray.makeIterator()();
      v23 = v7;
      v100 = lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator, MEMORY[0x277CC9178]);
      dispatch thunk of IteratorProtocol.next()();
      if (v122)
      {
        break;
      }

      v105 = MEMORY[0x277D84F90];
LABEL_65:
      (*v83)(v7, v3);
      v24 = &v118 + 8;
      v63 = v90;
      if (v90 >= *(v88 + 16))
      {
        goto LABEL_85;
      }

      v64 = (v81 + 16 * v90);
      v66 = *v64;
      v65 = v64[1];
      v67 = type metadata accessor for CertificateSection(0);
      v68 = objc_allocWithZone(v67);

      UUID.init()();
      v69 = &v68[OBJC_IVAR____TtC10SecurityUI18CertificateSection_title];
      *v69 = v66;
      *(v69 + 1) = v65;
      *&v68[OBJC_IVAR____TtC10SecurityUI18CertificateSection_keyValuePairs] = v105;
      v115.receiver = v68;
      v115.super_class = v67;
      v4 = objc_msgSendSuper2(&v115, sel_init);
      v70 = (*((*MEMORY[0x277D85000] & *v91) + 0x68))(&v120);
      v72 = v71;
      MEMORY[0x23EE93930]();
      if (*((*v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v73 = *((*v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v26 = v63 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v70(&v120, 0);

      v23 = v87;
      v24 = v84;
      if (v26 == v82)
      {
        goto LABEL_73;
      }
    }

    v105 = MEMORY[0x277D84F90];
    while (1)
    {
      outlined init with take of Any(&v120, &v118);
      outlined init with copy of Any(&v118, &v117);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(&v118);
        v4 = v113;
        v28 = v114;
      }

      else
      {
        type metadata accessor for UIFont(0, &lazy cache variable for type metadata for NSDate, 0x277CBEAA8);
        if (swift_dynamicCast())
        {
          v29 = v113;
          v30 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          [v30 setDateStyle_];
          [v30 setTimeStyle_];
          v31 = [v30 stringFromDate_];
          v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v32;

LABEL_22:
          __swift_destroy_boxed_opaque_existential_0(&v118);
          goto LABEL_58;
        }

        type metadata accessor for UIFont(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
        if (!swift_dynamicCast())
        {
          v113 = 0;
          v114 = 0xE000000000000000;
          _print_unlocked<A, B>(_:_:)();
          v4 = v113;
          v28 = v114;
          goto LABEL_22;
        }

        v4 = v112[1];
        v113 = 0;
        v114 = 0xE000000000000000;
        v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v33;
        v35 = v34;
        v36 = v34 >> 62;
        v24 = &v124;
        v99 = HIDWORD(v33);
        v94 = v4;
        if ((v34 >> 62) > 1)
        {
          if (v36 == 2)
          {
            v24 = *(v33 + 16);
            v38 = *(v33 + 24);
            v37 = v38 - v24;
            if (__OFSUB__(v38, v24))
            {
              goto LABEL_86;
            }

            if (v37)
            {
              goto LABEL_26;
            }
          }
        }

        else if (v36)
        {
          v40 = v99 - v33;
          if (__OFSUB__(v99, v33))
          {
            goto LABEL_87;
          }

          v37 = v40;
          if (v40)
          {
LABEL_26:
            v112[0] = MEMORY[0x277D84F90];
            v23 = v112;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37 & ~(v37 >> 63), 0);
            v98 = v7;
            if (v36)
            {
              if (v36 == 2)
              {
                v39 = *(v7 + 16);
              }

              else
              {
                v39 = v98;
              }
            }

            else
            {
              v39 = 0;
            }

            v24 = &v125;
            v104 = v39;
            if (v37 < 0)
            {
              goto LABEL_83;
            }

            v41 = 0;
            v4 = v112[0];
            v96 = v7 >> 32;
            v97 = BYTE6(v35);
            v24 = &v121;
            v95 = &v106 + v104;
            v103 = v36;
            v102 = v37;
            while (2)
            {
              if (v41 >= v37)
              {
                __break(1u);
LABEL_76:
                __break(1u);
LABEL_77:
                __break(1u);
LABEL_78:
                __break(1u);
LABEL_79:
                __break(1u);
LABEL_80:
                __break(1u);
LABEL_81:
                __break(1u);
LABEL_82:
                __break(1u);
LABEL_83:
                __break(1u);
LABEL_84:
                __break(1u);
LABEL_85:
                __break(1u);
LABEL_86:
                __break(1u);
LABEL_87:
                __break(1u);
LABEL_88:
                if (v23 >= 0)
                {
                  v78 = v24;
                }

                else
                {
                  v78 = v23;
                }

                v25 = MEMORY[0x23EE93A90](v78);
                v24 = v84;
                goto LABEL_5;
              }

              v42 = v41 + 1;
              if (__OFADD__(v41, 1))
              {
                goto LABEL_76;
              }

              v43 = v104 + v41;
              if (v36 != 2)
              {
                if (v36 == 1)
                {
                  if (v43 < v98 || v43 >= v96)
                  {
                    goto LABEL_79;
                  }

                  v44 = __DataStorage._bytes.getter();
                  if (!v44)
                  {
                    __break(1u);
LABEL_93:
                    __break(1u);
                  }

                  v45 = v44;
                  v23 = v35 & 0x3FFFFFFFFFFFFFFFLL;
                  v46 = __DataStorage._offset.getter();
                  v47 = v43 - v46;
                  if (__OFSUB__(v43, v46))
                  {
                    goto LABEL_81;
                  }

LABEL_50:
                  v23 = *(v45 + v47);
                }

                else
                {
                  if (v43 >= v97)
                  {
                    goto LABEL_78;
                  }

                  LOWORD(v106) = v7;
                  BYTE2(v106) = BYTE2(v7);
                  BYTE3(v106) = BYTE3(v7);
                  BYTE4(v106) = v99;
                  BYTE5(v106) = BYTE5(v7);
                  BYTE6(v106) = BYTE6(v7);
                  HIBYTE(v106) = HIBYTE(v7);
                  v107 = v35;
                  v108 = BYTE2(v35);
                  v109 = BYTE3(v35);
                  v110 = BYTE4(v35);
                  v111 = BYTE5(v35);
                  v23 = v95[v41];
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                v50 = swift_allocObject();
                *(v50 + 16) = v101;
                *(v50 + 56) = MEMORY[0x277D84B78];
                *(v50 + 64) = MEMORY[0x277D84BC0];
                *(v50 + 32) = v23;
                v3 = String.init(format:_:)();
                v52 = v51;
                v112[0] = v4;
                v54 = v4[2];
                v53 = v4[3];
                if (v54 >= v53 >> 1)
                {
                  v23 = v112;
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
                  v4 = v112[0];
                }

                v4[2] = (v54 + 1);
                v55 = &v4[2 * v54];
                v55[4] = v3;
                v55[5] = v52;
                ++v41;
                v37 = v102;
                LODWORD(v36) = v103;
                if (v42 == v102)
                {
                  outlined consume of Data._Representation(v7, v35);
                  goto LABEL_57;
                }

                continue;
              }

              break;
            }

            if (v43 < *(v7 + 16))
            {
              goto LABEL_77;
            }

            if (v43 >= *(v7 + 24))
            {
              goto LABEL_80;
            }

            v48 = __DataStorage._bytes.getter();
            if (!v48)
            {
              goto LABEL_93;
            }

            v45 = v48;
            v23 = v35 & 0x3FFFFFFFFFFFFFFFLL;
            v49 = __DataStorage._offset.getter();
            v47 = v43 - v49;
            if (__OFSUB__(v43, v49))
            {
              goto LABEL_82;
            }

            goto LABEL_50;
          }
        }

        else
        {
          v37 = BYTE6(v34);
          if (BYTE6(v34))
          {
            goto LABEL_26;
          }
        }

        outlined consume of Data._Representation(v33, v34);
        v4 = MEMORY[0x277D84F90];
LABEL_57:
        v106 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
        v56 = BidirectionalCollection<>.joined(separator:)();
        v58 = v57;

        MEMORY[0x23EE93900](v56, v58);

        v4 = v113;
        v28 = v114;
        __swift_destroy_boxed_opaque_existential_0(&v118);
        v3 = v93;
        v7 = v92;
      }

LABEL_58:
      __swift_destroy_boxed_opaque_existential_0(&v117);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v105 + 2) + 1, 1, v105);
      }

      v60 = *(v105 + 2);
      v59 = *(v105 + 3);
      if (v60 >= v59 >> 1)
      {
        v105 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v105);
      }

      v61 = v105;
      *(v105 + 2) = v60 + 1;
      v62 = &v61[16 * v60];
      *(v62 + 4) = v4;
      *(v62 + 5) = v28;
      v23 = v7;
      dispatch thunk of IteratorProtocol.next()();
      if (!v122)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_73:

  v75 = &v114;
LABEL_74:

  v76 = *MEMORY[0x277D85DE8];
  return v91;
}

uint64_t type metadata accessor for CertificateSection(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      outlined init with copy of Any(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v6);
    type metadata accessor for UIFont(0, &lazy cache variable for type metadata for NSArray, 0x277CBEA60);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v4 = *(v7 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v6);
    type metadata accessor for SecCertificateRef();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v4 = *(v7 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

id CertificateSection.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CertificateDetailsViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CertificateDetailsViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t property wrapper backing initializer of CertificateDetailsView.viewModel()
{
  type metadata accessor for CertificateDetailsViewModel(0);
  lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type CertificateDetailsViewModel and conformance CertificateDetailsViewModel, type metadata accessor for CertificateDetailsViewModel);

  return ObservedObject.init(wrappedValue:)();
}

id key path getter for CertificateDetailsView.viewModel : CertificateDetailsView@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = v2;
  return v2;
}

void CertificateDetailsView.$viewModel.getter()
{
  type metadata accessor for CertificateDetailsViewModel(0);
  lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type CertificateDetailsViewModel and conformance CertificateDetailsViewModel, type metadata accessor for CertificateDetailsViewModel);

  JUMPOUT(0x23EE932D0);
}

uint64_t CertificateDetailsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v9 = type metadata accessor for InsetGroupedListStyle();
  v10 = *(v9 - 8);
  v33 = v9;
  v34 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMd, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAK0klC0VGG_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAK0klC0VGG_SSQo_MR);
  v20 = *(v19 - 8);
  v31 = v19;
  v32 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v30 - v22;
  v36 = a1;
  v37 = a2;
  v38 = a3;
  v39 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAD0fG4ViewVGMd, &_s7SwiftUI7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAD0fG4ViewVGMR);
  lazy protocol witness table accessor for type ForEach<[CertificateSection], UUID, CertificateSectionView> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<[CertificateSection], UUID, CertificateSectionView> and conformance <> ForEach<A, B, C>, &_s7SwiftUI7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAD0fG4ViewVGMd, &_s7SwiftUI7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAD0fG4ViewVGMR, lazy protocol witness table accessor for type CertificateSectionView and conformance CertificateSectionView);
  List<>.init(content:)();
  v40 = a1;
  v41 = a2;
  v24 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, ForEach<[CertificateSection], UUID, CertificateSectionView>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMd, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMR);
  v25 = lazy protocol witness table accessor for type String and conformance String();
  v26 = MEMORY[0x277D837D0];
  View.navigationTitle<A>(_:)();
  (*(v15 + 8))(v18, v14);
  InsetGroupedListStyle.init()();
  v40 = v14;
  v41 = v26;
  v42 = v24;
  v43 = v25;
  swift_getOpaqueTypeConformance2();
  v27 = v31;
  v28 = v33;
  View.listStyle<A>(_:)();
  (*(v34 + 8))(v13, v28);
  return (*(v32 + 8))(v23, v27);
}

uint64_t closure #1 in CertificateDetailsView.body.getter(void *a1)
{
  (*((*MEMORY[0x277D85000] & *a1) + 0x58))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10SecurityUI18CertificateSectionCGMd, &_sSay10SecurityUI18CertificateSectionCGMR);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [CertificateSection] and conformance [A], &_sSay10SecurityUI18CertificateSectionCGMd, &_sSay10SecurityUI18CertificateSectionCGMR);
  lazy protocol witness table accessor for type CertificateSectionView and conformance CertificateSectionView();
  lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type CertificateSection and conformance CertificateSection, type metadata accessor for CertificateSection);
  return ForEach<>.init(_:content:)();
}

id closure #1 in closure #1 in CertificateDetailsView.body.getter@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t CertificateDetailsView.init(title:viewModel:)(uint64_t a1)
{
  type metadata accessor for CertificateDetailsViewModel(0);
  lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type CertificateDetailsViewModel and conformance CertificateDetailsViewModel, type metadata accessor for CertificateDetailsViewModel);
  ObservedObject.init(wrappedValue:)();
  return a1;
}

uint64_t protocol witness for View.body.getter in conformance CertificateDetailsView@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = type metadata accessor for InsetGroupedListStyle();
  v3 = *(v2 - 8);
  v30 = v2;
  v31 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMd, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAK0klC0VGG_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAK0klC0VGG_SSQo_MR);
  v13 = *(v12 - 8);
  v28 = v12;
  v29 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = v1[1];
  v19 = v1[2];
  v20 = v1[3];
  v33 = *v1;
  v18 = v33;
  v34 = v17;
  v35 = v19;
  v36 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAD0fG4ViewVGMd, &_s7SwiftUI7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAD0fG4ViewVGMR);
  lazy protocol witness table accessor for type ForEach<[CertificateSection], UUID, CertificateSectionView> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<[CertificateSection], UUID, CertificateSectionView> and conformance <> ForEach<A, B, C>, &_s7SwiftUI7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAD0fG4ViewVGMd, &_s7SwiftUI7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAD0fG4ViewVGMR, lazy protocol witness table accessor for type CertificateSectionView and conformance CertificateSectionView);
  List<>.init(content:)();
  v37 = v18;
  v38 = v17;
  v21 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, ForEach<[CertificateSection], UUID, CertificateSectionView>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMd, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMR);
  v22 = lazy protocol witness table accessor for type String and conformance String();
  v23 = MEMORY[0x277D837D0];
  View.navigationTitle<A>(_:)();
  (*(v8 + 8))(v11, v7);
  InsetGroupedListStyle.init()();
  v37 = v7;
  v38 = v23;
  v39 = v21;
  v40 = v22;
  swift_getOpaqueTypeConformance2();
  v24 = v28;
  v25 = v30;
  View.listStyle<A>(_:)();
  (*(v31 + 8))(v6, v25);
  return (*(v29 + 8))(v16, v24);
}

uint64_t CertificateSectionView.body.getter(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC10SecurityUI18CertificateSection_title);
  v3 = *(a1 + OBJC_IVAR____TtC10SecurityUI18CertificateSection_title + 8);
  lazy protocol witness table accessor for type String and conformance String();

  Text.init<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGMd, &_s7SwiftUI7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGMR);
  lazy protocol witness table accessor for type ForEach<[CertificateSection], UUID, CertificateSectionView> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, CertificateRowView> and conformance <> ForEach<A, B, C>, &_s7SwiftUI7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGMd, &_s7SwiftUI7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGMR, lazy protocol witness table accessor for type CertificateRowView and conformance CertificateRowView);
  return Section<>.init(header:content:)();
}

uint64_t closure #1 in CertificateSectionView.body.getter(char *a1)
{
  v4 = *(*&a1[OBJC_IVAR____TtC10SecurityUI18CertificateSection_keyValuePairs] + 16) >> 1;
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  lazy protocol witness table accessor for type CertificateRowView and conformance CertificateRowView();
  return ForEach<>.init(_:id:content:)();
}

uint64_t protocol witness for View.body.getter in conformance CertificateSectionView()
{
  v1 = (*v0 + OBJC_IVAR____TtC10SecurityUI18CertificateSection_title);
  v3 = *v1;
  v4 = v1[1];
  lazy protocol witness table accessor for type String and conformance String();

  Text.init<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGMd, &_s7SwiftUI7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGMR);
  lazy protocol witness table accessor for type ForEach<[CertificateSection], UUID, CertificateSectionView> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, CertificateRowView> and conformance <> ForEach<A, B, C>, &_s7SwiftUI7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGMd, &_s7SwiftUI7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGMR, lazy protocol witness table accessor for type CertificateRowView and conformance CertificateRowView);
  return Section<>.init(header:content:)();
}

uint64_t CertificateRowView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CertificateRowView.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CertificateRowView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = static HorizontalAlignment.leading.getter();
  *(a5 + 8) = 0x4000000000000000;
  *(a5 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AOtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AOtGGMR);
  closure #1 in CertificateRowView.body.getter(a1, a2, a3, a4, (a5 + *(v10 + 44)));
  LOBYTE(a4) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMtGGAA14_PaddingLayoutVGMR);
  v20 = a5 + *(result + 36);
  *v20 = a4;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  return result;
}

uint64_t closure #1 in CertificateRowView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v55 = a3;
  v56 = a4;
  v61 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_Md, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_MR);
  v60 = *(v7 - 8);
  v8 = *(v60 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v59 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v58 = &v54 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v57 = &v54 - v14;
  MEMORY[0x28223BE20](v13);
  v62 = &v54 - v15;
  v63 = a1;
  v64 = a2;
  v54 = lazy protocol witness table accessor for type String and conformance String();

  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  static Font.headline.getter();
  v21 = Text.font(_:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  outlined consume of Text.Storage(v16, v18, v20 & 1);

  v63 = v21;
  v64 = v23;
  v65 = v25 & 1;
  v66 = v27;
  View.hyphenationDisabled(_:)();
  outlined consume of Text.Storage(v21, v23, v25 & 1);

  v63 = v55;
  v64 = v56;

  v28 = Text.init<A>(_:)();
  v30 = v29;
  v32 = v31;
  static Font.subheadline.getter();
  v33 = Text.font(_:)();
  v35 = v34;
  LOBYTE(v18) = v36;

  outlined consume of Text.Storage(v28, v30, v32 & 1);

  static Color.gray.getter();
  v37 = Text.foregroundColor(_:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;

  outlined consume of Text.Storage(v33, v35, v18 & 1);

  v63 = v37;
  v64 = v39;
  v41 &= 1u;
  v65 = v41;
  v66 = v43;
  v44 = v57;
  View.hyphenationDisabled(_:)();
  outlined consume of Text.Storage(v37, v39, v41);

  v45 = v60;
  v46 = *(v60 + 16);
  v47 = v58;
  v48 = v62;
  v46(v58, v62, v7);
  v49 = v59;
  v46(v59, v44, v7);
  v50 = v61;
  v46(v61, v47, v7);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGtMd, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGtMR);
  v46(&v50[*(v51 + 48)], v49, v7);
  v52 = *(v45 + 8);
  v52(v44, v7);
  v52(v48, v7);
  v52(v49, v7);
  return (v52)(v47, v7);
}

uint64_t protocol witness for View.body.getter in conformance CertificateRowView@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AOtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AOtGGMR);
  closure #1 in CertificateRowView.body.getter(v3, v4, v6, v5, (a1 + *(v7 + 44)));
  LOBYTE(v5) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMtGGAA14_PaddingLayoutVGMR);
  v17 = a1 + *(result + 36);
  *v17 = v5;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

uint64_t lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type CertificateSectionView and conformance CertificateSectionView()
{
  result = lazy protocol witness table cache variable for type CertificateSectionView and conformance CertificateSectionView;
  if (!lazy protocol witness table cache variable for type CertificateSectionView and conformance CertificateSectionView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateSectionView and conformance CertificateSectionView);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ForEach<[CertificateSection], UUID, CertificateSectionView> and conformance <> ForEach<A, B, C>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CertificateRowView and conformance CertificateRowView()
{
  result = lazy protocol witness table cache variable for type CertificateRowView and conformance CertificateRowView;
  if (!lazy protocol witness table cache variable for type CertificateRowView and conformance CertificateRowView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateRowView and conformance CertificateRowView);
  }

  return result;
}

uint64_t type metadata completion function for CertificateSection()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata completion function for CertificateDetailsViewModel()
{
  type metadata accessor for Published<[CertificateSection]>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<[CertificateSection]>()
{
  if (!lazy cache variable for type metadata for Published<[CertificateSection]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10SecurityUI18CertificateSectionCGMd, &_sSay10SecurityUI18CertificateSectionCGMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<[CertificateSection]>);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CertificateDetailsView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CertificateDetailsView(uint64_t result, int a2, int a3)
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

uint64_t sub_23AAB6744()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAK0klC0VGG_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAK0klC0VGG_SSQo_MR);
  type metadata accessor for InsetGroupedListStyle();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMd, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, ForEach<[CertificateSection], UUID, CertificateSectionView>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMd, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMR);
  lazy protocol witness table accessor for type String and conformance String();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t lazy protocol witness table accessor for type Section<Text, ForEach<Range<Int>, Int, CertificateRowView>, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<Text, ForEach<Range<Int>, Int, CertificateRowView>, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<Text, ForEach<Range<Int>, Int, CertificateRowView>, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGAA05EmptyJ0VGMd, "6*");
    lazy protocol witness table accessor for type ForEach<[CertificateSection], UUID, CertificateSectionView> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, CertificateRowView> and conformance <> ForEach<A, B, C>, &_s7SwiftUI7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGMd, &_s7SwiftUI7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGMR, lazy protocol witness table accessor for type CertificateRowView and conformance CertificateRowView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<Text, ForEach<Range<Int>, Int, CertificateRowView>, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMtGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AKtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AKtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_23AAB69D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *partial apply for closure #1 in closure #1 in CertificateSectionView.body.getter@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = 2 * *result;
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(*(v2 + 16) + OBJC_IVAR____TtC10SecurityUI18CertificateSection_keyValuePairs);
  v5 = *(v4 + 16);
  if (v3 >= v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v3 | 1;
  if ((v3 | 1) >= v5)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v7 = v4 + 32;
  v9 = *(v7 + 32 * *result);
  v8 = *(v7 + 32 * *result + 8);
  v10 = (v7 + 16 * v6);
  v11 = *v10;
  v12 = v10[1];
  *a2 = v9;
  a2[1] = v8;
  a2[2] = v11;
  a2[3] = v12;
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t key path getter for CertificateChainViewModel.certificates : CertificateChainViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t key path setter for CertificateChainViewModel.certificates : CertificateChainViewModel(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 104);

  return v3(v4);
}

uint64_t CertificateChainViewModel.certificates.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t CertificateChainViewModel.certificates.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*CertificateChainViewModel.certificates.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return CertificateDetailsViewModel.sections.modify;
}

uint64_t key path setter for CertificateChainViewModel.$certificates : CertificateChainViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo17SecCertificateRefaG_GMd, &_s7Combine9PublishedV9PublisherVySaySo17SecCertificateRefaG_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 128))(v7);
}

uint64_t CertificateChainViewModel.$certificates.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17SecCertificateRefaGGMd, &_s7Combine9PublishedVySaySo17SecCertificateRefaGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t CertificateChainViewModel.$certificates.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo17SecCertificateRefaG_GMd, &_s7Combine9PublishedV9PublisherVySaySo17SecCertificateRefaG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17SecCertificateRefaGGMd, &_s7Combine9PublishedVySaySo17SecCertificateRefaGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*CertificateChainViewModel.$certificates.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo17SecCertificateRefaG_GMd, &_s7Combine9PublishedV9PublisherVySaySo17SecCertificateRefaG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC10SecurityUI25CertificateChainViewModel__certificates;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17SecCertificateRefaGGMd, &_s7Combine9PublishedVySaySo17SecCertificateRefaGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return CertificateDetailsViewModel.$sections.modify;
}

uint64_t CertificateChainViewModel.__allocating_init(certificateManager:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = specialized CertificateChainViewModel.init(certificateManager:)(a1);

  return v5;
}

uint64_t CertificateChainViewModel.init(certificateManager:)(void *a1)
{
  v2 = specialized CertificateChainViewModel.init(certificateManager:)(a1);

  return v2;
}

uint64_t CertificateChainViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC10SecurityUI25CertificateChainViewModel__certificates;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17SecCertificateRefaGGMd, &_s7Combine9PublishedVySaySo17SecCertificateRefaGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t CertificateChainViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10SecurityUI25CertificateChainViewModel__certificates;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17SecCertificateRefaGGMd, &_s7Combine9PublishedVySaySo17SecCertificateRefaGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CertificateChainViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CertificateChainViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CertificateChainView.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CertificateChainView.init(title:certificateManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = partial apply for implicit closure #1 in CertificateChainView.init(title:certificateManager:);
  *(a4 + 32) = v7;
  *(a4 + 40) = 0;

  return MEMORY[0x2821F9840]();
}

uint64_t CertificateChainView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMd, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7[-v4];
  v8 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAN5IndexVyAQ_GAA14NavigationLinkVyAEyAA6VStackVyAA9TupleViewVyAA6HStackVyA0_yAEyAEyAEyAA5ImageVAA012_AspectRatioH0VGAA06_FrameH0VGAIG_AA0U0PAAE19hyphenationDisabledyQrSbFQOyAG_Qo_tGG_A15_A15_tGGAIG08SecurityB00n7DetailsU0VGGAA05EmptyU0VGMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAN5IndexVyAQ_GAA14NavigationLinkVyAEyAA6VStackVyAA9TupleViewVyAA6HStackVyA0_yAEyAEyAEyAA5ImageVAA012_AspectRatioH0VGAA06_FrameH0VGAIG_AA0U0PAAE19hyphenationDisabledyQrSbFQOyAG_Qo_tGG_A15_A15_tGGAIG08SecurityB00n7DetailsU0VGGAA05EmptyU0VGMR);
  lazy protocol witness table accessor for type Section<ModifiedContent<Text, _PaddingLayout>, ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>>, EmptyView> and conformance <> Section<A, B, C>();
  List<>.init(content:)();
  v9 = *v0;
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, Section<ModifiedContent<Text, _PaddingLayout>, ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>>, EmptyView>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMd, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMR);
  lazy protocol witness table accessor for type String and conformance String();
  View.navigationTitle<A>(_:)();
  return (*(v2 + 8))(v5, v1);
}

uint64_t closure #1 in CertificateChainView.body.getter()
{
  static SFLocalization.certificates.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v0 = Text.init<A>(_:)();
  v2 = v1;
  v4 = v3;
  static Font.caption.getter();
  Text.font(_:)();

  outlined consume of Text.Storage(v0, v2, v4 & 1);

  static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAE5IndexVyAH_GAA14NavigationLinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAUyAQyAQyAQyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameV0VGAA08_PaddingV0VG_AA0Q0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A12_A12_tGGA5_G08SecurityB00h7DetailsQ0VGGMd, &_s7SwiftUI7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAE5IndexVyAH_GAA14NavigationLinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAUyAQyAQyAQyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameV0VGAA08_PaddingV0VG_AA0Q0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A12_A12_tGGA5_G08SecurityB00h7DetailsQ0VGGMR);
  lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>> and conformance <> ForEach<A, B, C>();
  return Section<>.init(header:content:)();
}

void closure #1 in closure #1 in closure #1 in CertificateChainView.body.getter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  type metadata accessor for CertificateChainViewModel();
  lazy protocol witness table accessor for type CertificateChainViewModel and conformance CertificateChainViewModel();
  v7 = StateObject.wrappedValue.getter();
  v8 = (*(*v7 + 96))(v7);

  v9 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_8:
    v10 = MEMORY[0x23EE93A10](v9, v8);
    goto LABEL_6;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 8 * v9 + 32);
LABEL_6:
    v11 = v10;

    v12 = *(a2 + 16);
    v13 = [v12 titleForCertificate_];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for CertificateDetailsViewModel(0);
    v15 = v11;
    v16 = CertificateDetailsViewModel.__allocating_init(certificate:)(v15);
    [v12 isRootCertificate_];

    v17 = v16;
    v18 = CertificateDetailsView.init(title:viewModel:)(v14);
    MEMORY[0x28223BE20](v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGAA08_PaddingL0VG_AA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2ZtGGASGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGAA08_PaddingL0VG_AA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2ZtGGASGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CertificateDetailsView and conformance CertificateDetailsView();
    NavigationLink.init(destination:label:)();

    return;
  }

  __break(1u);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in CertificateChainView.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v5 = a4;
  v80 = a4;
  v87 = a5;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_Md, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_MR);
  v86 = *(v83 - 8);
  v9 = *(v86 + 64);
  v10 = MEMORY[0x28223BE20](v83);
  v85 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v84 = &v79 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v82 = &v79 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v79 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA08_PaddingK0VG_AA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA08_PaddingK0VG_AA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGGMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v88 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v79 - v22;
  *v23 = static VerticalAlignment.top.getter();
  *(v23 + 8) = 0;
  *(v23 + 16) = 1;
  v89 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VG_AA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VG_AA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGGMR);
  closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in CertificateChainView.body.getter(a1, a2, (v23 + *(v24 + 44)));
  v81 = *(a3 + 16);
  v25 = [v81 issuerNameForCertificate_];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = static SFLocalization.issuedBy(name:)(v26, v28);
  v31 = v30;

  v90 = v29;
  v91 = v31;
  v79 = lazy protocol witness table accessor for type String and conformance String();
  v32 = Text.init<A>(_:)();
  v34 = v33;
  LOBYTE(v23) = v35;
  static Font.subheadline.getter();
  v36 = Text.font(_:)();
  v38 = v37;
  LOBYTE(v28) = v39;

  outlined consume of Text.Storage(v32, v34, v23 & 1);

  static Color.gray.getter();
  v40 = Text.foregroundColor(_:)();
  v42 = v41;
  LOBYTE(v5) = v43;
  v45 = v44;

  outlined consume of Text.Storage(v36, v38, v28 & 1);

  v90 = v40;
  v91 = v42;
  v92 = v5 & 1;
  v93 = v45;
  View.hyphenationDisabled(_:)();
  outlined consume of Text.Storage(v40, v42, v5 & 1);

  v46 = specialized CertificateChainView.formattedExpirationDate(for:)(v80, v81);
  v48 = static SFLocalization.expires(date:)(v46, v47);
  v50 = v49;

  v90 = v48;
  v91 = v50;
  v51 = Text.init<A>(_:)();
  v53 = v52;
  LOBYTE(v50) = v54;
  static Font.subheadline.getter();
  v55 = Text.font(_:)();
  v57 = v56;
  v59 = v58;

  outlined consume of Text.Storage(v51, v53, v50 & 1);

  static Color.gray.getter();
  v60 = Text.foregroundColor(_:)();
  v62 = v61;
  LOBYTE(v42) = v63;
  v65 = v64;

  outlined consume of Text.Storage(v55, v57, v59 & 1);

  v90 = v60;
  v91 = v62;
  LOBYTE(v42) = v42 & 1;
  v92 = v42;
  v93 = v65;
  v66 = v82;
  View.hyphenationDisabled(_:)();
  outlined consume of Text.Storage(v60, v62, v42);

  v67 = v88;
  sub_23AAB9884(v89, v88);
  v68 = v86;
  v69 = *(v86 + 16);
  v70 = v84;
  v71 = v17;
  v72 = v17;
  v73 = v83;
  v69(v84, v72, v83);
  v74 = v85;
  v69(v85, v66, v73);
  v75 = v87;
  sub_23AAB9884(v67, v87);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA08_PaddingK0VG_AA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2XtMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA08_PaddingK0VG_AA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2XtMR);
  v69((v75 + *(v76 + 48)), v70, v73);
  v69((v75 + *(v76 + 64)), v74, v73);
  v77 = *(v68 + 8);
  v77(v66, v73);
  v77(v71, v73);
  sub_23AAB98F4(v89);
  v77(v74, v73);
  v77(v70, v73);
  return sub_23AAB98F4(v88);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in CertificateChainView.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v52 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_Md, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_MR);
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v48 - v9;
  v10 = type metadata accessor for Image.ResizingMode();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v15 = static NSBundle.current;
  Image.init(_:bundle:)();
  (*(v11 + 104))(v14, *MEMORY[0x277CE0FE0], v10);
  v49 = Image.resizable(capInsets:resizingMode:)();

  (*(v11 + 8))(v14, v10);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v75 = 1;
  *&v74[6] = v78;
  *&v74[22] = v79;
  *&v74[38] = v80;
  v55 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v76 = 0;
  v61 = a1;
  v62 = a2;
  lazy protocol witness table accessor for type String and conformance String();

  v24 = Text.init<A>(_:)();
  v26 = v25;
  v28 = v27;
  static Font.headline.getter();
  v29 = Text.font(_:)();
  v31 = v30;
  v33 = v32;
  v48 = v34;

  outlined consume of Text.Storage(v24, v26, v28 & 1);

  v61 = v29;
  v62 = v31;
  v33 &= 1u;
  LOBYTE(v63) = v33;
  *(&v64 + 6) = v48;
  v35 = v50;
  View.hyphenationDisabled(_:)();
  outlined consume of Text.Storage(v29, v31, v33);

  v37 = v53;
  v36 = v54;
  v38 = *(v53 + 16);
  v39 = v51;
  v38(v51, v35, v54);
  v40 = v49;
  v56 = v49;
  LOWORD(v57[0]) = 1;
  *(v57 + 2) = *v74;
  *(&v57[1] + 2) = *&v74[16];
  *(&v57[2] + 2) = *&v74[32];
  *&v57[3] = *&v74[46];
  BYTE8(v57[3]) = v55;
  *(&v57[3] + 9) = *v77;
  HIDWORD(v57[3]) = *&v77[3];
  *&v58 = v17;
  *(&v58 + 1) = v19;
  *&v59 = v21;
  *(&v59 + 1) = v23;
  v60 = 0;
  v41 = v52;
  v52[112] = 0;
  v42 = v58;
  *(v41 + 4) = v57[3];
  *(v41 + 5) = v42;
  v43 = v57[0];
  *v41 = v56;
  *(v41 + 1) = v43;
  v44 = v57[2];
  *(v41 + 2) = v57[1];
  *(v41 + 3) = v44;
  *(v41 + 6) = v59;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VG_AA4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VG_AA4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tMR);
  v38(&v41[*(v45 + 48)], v39, v36);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>(&v56, &v61);
  v46 = *(v37 + 8);
  v46(v35, v36);
  v46(v39, v36);
  v61 = v40;
  v62 = 0;
  v63 = 1;
  v64 = *v74;
  v65 = *&v74[16];
  *v66 = *&v74[32];
  *&v66[14] = *&v74[46];
  v67 = v55;
  *v68 = *v77;
  *&v68[3] = *&v77[3];
  v69 = v17;
  v70 = v19;
  v71 = v21;
  v72 = v23;
  v73 = 0;
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>(&v61);
}

uint64_t protocol witness for View.body.getter in conformance CertificateChainView()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMd, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8[-v4];
  v6 = v0[1];
  v11 = *v0;
  v12[0] = v6;
  *(v12 + 9) = *(v0 + 25);
  v9 = &v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAN5IndexVyAQ_GAA14NavigationLinkVyAEyAA6VStackVyAA9TupleViewVyAA6HStackVyA0_yAEyAEyAEyAA5ImageVAA012_AspectRatioH0VGAA06_FrameH0VGAIG_AA0U0PAAE19hyphenationDisabledyQrSbFQOyAG_Qo_tGG_A15_A15_tGGAIG08SecurityB00n7DetailsU0VGGAA05EmptyU0VGMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAN5IndexVyAQ_GAA14NavigationLinkVyAEyAA6VStackVyAA9TupleViewVyAA6HStackVyA0_yAEyAEyAEyAA5ImageVAA012_AspectRatioH0VGAA06_FrameH0VGAIG_AA0U0PAAE19hyphenationDisabledyQrSbFQOyAG_Qo_tGG_A15_A15_tGGAIG08SecurityB00n7DetailsU0VGGAA05EmptyU0VGMR);
  lazy protocol witness table accessor for type Section<ModifiedContent<Text, _PaddingLayout>, ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>>, EmptyView> and conformance <> Section<A, B, C>();
  List<>.init(content:)();
  v10 = v11;
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, Section<ModifiedContent<Text, _PaddingLayout>, ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>>, EmptyView>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMd, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMR);
  lazy protocol witness table accessor for type String and conformance String();
  View.navigationTitle<A>(_:)();
  return (*(v2 + 8))(v5, v1);
}

uint64_t specialized CertificateChainViewModel.init(certificateManager:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17SecCertificateRefaGGMd, &_s7Combine9PublishedVySaySo17SecCertificateRefaGGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = OBJC_IVAR____TtC10SecurityUI25CertificateChainViewModel__certificates;
  v14[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17SecCertificateRefaGMd, &_sSaySo17SecCertificateRefaGMR);
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v8, v7, v3);
  *(v1 + OBJC_IVAR____TtC10SecurityUI25CertificateChainViewModel_certificateManager) = a1;
  v9 = [a1 certificates];
  if (v9)
  {
    v10 = v9;
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = specialized _arrayConditionalCast<A, B>(_:)(v11);

    if (v12)
    {
      (*(*v1 + 104))(v12);
    }
  }

  return v1;
}

uint64_t sub_23AAB89A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t partial apply for implicit closure #1 in CertificateChainView.init(title:certificateManager:)()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for CertificateChainViewModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = v1;
  v6 = specialized CertificateChainViewModel.init(certificateManager:)(v5);

  return v6;
}

unint64_t lazy protocol witness table accessor for type Section<ModifiedContent<Text, _PaddingLayout>, ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>>, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<ModifiedContent<Text, _PaddingLayout>, ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>>, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<ModifiedContent<Text, _PaddingLayout>, ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>>, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAN5IndexVyAQ_GAA14NavigationLinkVyAEyAA6VStackVyAA9TupleViewVyAA6HStackVyA0_yAEyAEyAEyAA5ImageVAA012_AspectRatioH0VGAA06_FrameH0VGAIG_AA0U0PAAE19hyphenationDisabledyQrSbFQOyAG_Qo_tGG_A15_A15_tGGAIG08SecurityB00n7DetailsU0VGGAA05EmptyU0VGMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAN5IndexVyAQ_GAA14NavigationLinkVyAEyAA6VStackVyAA9TupleViewVyAA6HStackVyA0_yAEyAEyAEyAA5ImageVAA012_AspectRatioH0VGAA06_FrameH0VGAIG_AA0U0PAAE19hyphenationDisabledyQrSbFQOyAG_Qo_tGG_A15_A15_tGGAIG08SecurityB00n7DetailsU0VGGAA05EmptyU0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>> and conformance <> ForEach<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<ModifiedContent<Text, _PaddingLayout>, ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>>, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAE5IndexVyAH_GAA14NavigationLinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAUyAQyAQyAQyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameV0VGAA08_PaddingV0VG_AA0Q0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A12_A12_tGGA5_G08SecurityB00h7DetailsQ0VGGMd, &_s7SwiftUI7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAE5IndexVyAH_GAA14NavigationLinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAUyAQyAQyAQyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameV0VGAA08_PaddingV0VG_AA0Q0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A12_A12_tGGA5_G08SecurityB00h7DetailsQ0VGGMR);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA08_PaddingN0VG_AA0I0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A0_A0_tGGAUG08SecurityB0018CertificateDetailsI0VGMd, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA08_PaddingN0VG_AA0I0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A0_A0_tGGAUG08SecurityB0018CertificateDetailsI0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t type metadata accessor for CertificateChainViewModel()
{
  result = type metadata singleton initialization cache for CertificateChainViewModel;
  if (!type metadata singleton initialization cache for CertificateChainViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CertificateChainViewModel()
{
  type metadata accessor for Published<[SecCertificateRef]>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<[SecCertificateRef]>()
{
  if (!lazy cache variable for type metadata for Published<[SecCertificateRef]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17SecCertificateRefaGMd, &_sSaySo17SecCertificateRefaGMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<[SecCertificateRef]>);
    }
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CertificateChainView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for CertificateChainView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23AAB8F60()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMd, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, Section<ModifiedContent<Text, _PaddingLayout>, ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>>, EmptyView>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMd, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMR);
  lazy protocol witness table accessor for type String and conformance String();
  return swift_getOpaqueTypeConformance2();
}

void type metadata accessor for SecCertificateRef()
{
  if (!lazy cache variable for type metadata for SecCertificateRef)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for SecCertificateRef);
    }
  }
}

uint64_t partial apply for closure #1 in closure #1 in CertificateChainView.body.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 3);
  v3 = *(v1 + 4);
  v4 = *(v1 + 40);
  type metadata accessor for CertificateChainViewModel();
  lazy protocol witness table accessor for type CertificateChainViewModel and conformance CertificateChainViewModel();
  v5 = StateObject.wrappedValue.getter();
  v6 = (*(*v5 + 96))();

  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v14 = v6;
    }

    else
    {
      v14 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v7 = MEMORY[0x23EE93A90](v14);
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = v6;
  v17 = v7;
  v18 = 0;
  swift_getKeyPath();
  v19 = *v1;
  v8 = *(v1 + 2);
  v9 = swift_allocObject();
  v10 = *(v1 + 25);
  v11 = v1[1];
  v9[1] = *v1;
  v9[2] = v11;
  *(v9 + 41) = v10;
  outlined init with copy of String(&v19, v15);
  v12 = v8;
  outlined copy of StateObject<CertificateChainViewModel>.Storage();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSIys18ReversedCollectionVySaySo17SecCertificateRefaGGGMd, &_sSIys18ReversedCollectionVySaySo17SecCertificateRefaGGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA08_PaddingN0VG_AA0I0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A0_A0_tGGAUG08SecurityB0018CertificateDetailsI0VGMd, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA08_PaddingN0VG_AA0I0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A0_A0_tGGAUG08SecurityB0018CertificateDetailsI0VGMR);
  lazy protocol witness table accessor for type DefaultIndices<ReversedCollection<[SecCertificateRef]>> and conformance <> DefaultIndices<A>();
  lazy protocol witness table accessor for type ReversedCollection<[SecCertificateRef]>.Index and conformance <> ReversedCollection<A>.Index();
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA08_PaddingN0VG_AA0I0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A0_A0_tGGAUG08SecurityB0018CertificateDetailsI0VGMd, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA08_PaddingN0VG_AA0I0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A0_A0_tGGAUG08SecurityB0018CertificateDetailsI0VGMR);
  return ForEach<>.init(_:id:content:)();
}

unint64_t lazy protocol witness table accessor for type CertificateChainViewModel and conformance CertificateChainViewModel()
{
  result = lazy protocol witness table cache variable for type CertificateChainViewModel and conformance CertificateChainViewModel;
  if (!lazy protocol witness table cache variable for type CertificateChainViewModel and conformance CertificateChainViewModel)
  {
    type metadata accessor for CertificateChainViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateChainViewModel and conformance CertificateChainViewModel);
  }

  return result;
}

uint64_t sub_23AAB92A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  outlined consume of StateObject<CertificateChainViewModel>.Storage();

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

unint64_t lazy protocol witness table accessor for type DefaultIndices<ReversedCollection<[SecCertificateRef]>> and conformance <> DefaultIndices<A>()
{
  result = lazy protocol witness table cache variable for type DefaultIndices<ReversedCollection<[SecCertificateRef]>> and conformance <> DefaultIndices<A>;
  if (!lazy protocol witness table cache variable for type DefaultIndices<ReversedCollection<[SecCertificateRef]>> and conformance <> DefaultIndices<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSIys18ReversedCollectionVySaySo17SecCertificateRefaGGGMd, &_sSIys18ReversedCollectionVySaySo17SecCertificateRefaGGGMR);
    lazy protocol witness table accessor for type ReversedCollection<[SecCertificateRef]> and conformance <> ReversedCollection<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultIndices<ReversedCollection<[SecCertificateRef]>> and conformance <> DefaultIndices<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReversedCollection<[SecCertificateRef]> and conformance <> ReversedCollection<A>()
{
  result = lazy protocol witness table cache variable for type ReversedCollection<[SecCertificateRef]> and conformance <> ReversedCollection<A>;
  if (!lazy protocol witness table cache variable for type ReversedCollection<[SecCertificateRef]> and conformance <> ReversedCollection<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18ReversedCollectionVySaySo17SecCertificateRefaGGMd, &_ss18ReversedCollectionVySaySo17SecCertificateRefaGGMR);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [SecCertificateRef] and conformance [A], &_sSaySo17SecCertificateRefaGMd, &_sSaySo17SecCertificateRefaGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReversedCollection<[SecCertificateRef]> and conformance <> ReversedCollection<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReversedCollection<[SecCertificateRef]>.Index and conformance <> ReversedCollection<A>.Index()
{
  result = lazy protocol witness table cache variable for type ReversedCollection<[SecCertificateRef]>.Index and conformance <> ReversedCollection<A>.Index;
  if (!lazy protocol witness table cache variable for type ReversedCollection<[SecCertificateRef]>.Index and conformance <> ReversedCollection<A>.Index)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18ReversedCollectionV5IndexVySaySo17SecCertificateRefaG_GMd, &_ss18ReversedCollectionV5IndexVySaySo17SecCertificateRefaG_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReversedCollection<[SecCertificateRef]>.Index and conformance <> ReversedCollection<A>.Index);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in CertificateChainView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAMyAMyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VG_AA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2_A2_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAMyAMyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VG_AA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2_A2_tGGMR);
  closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in CertificateChainView.body.getter(v4, v5, v7, v6, a1 + *(v8 + 44));
  LOBYTE(v6) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGAA08_PaddingL0VG_AA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2ZtGGASGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGAA08_PaddingL0VG_AA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2ZtGGASGMR);
  v18 = a1 + *(result + 36);
  *v18 = v6;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGAA08_PaddingL0VG_AA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2ZtGGASGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGAA08_PaddingL0VG_AA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2ZtGGASGMR);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGAA08_PaddingL0VG_AA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2ZtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGAA08_PaddingL0VG_AA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2ZtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CertificateDetailsView and conformance CertificateDetailsView()
{
  result = lazy protocol witness table cache variable for type CertificateDetailsView and conformance CertificateDetailsView;
  if (!lazy protocol witness table cache variable for type CertificateDetailsView and conformance CertificateDetailsView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateDetailsView and conformance CertificateDetailsView);
  }

  return result;
}

uint64_t specialized CertificateChainView.formattedExpirationDate(for:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 expirationDateForCertificate_];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v10 setDateStyle_];
  [v10 setTimeStyle_];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v12 = [v10 stringFromDate_];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v8, v4);
  return v13;
}

uint64_t sub_23AAB9884(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA08_PaddingK0VG_AA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA08_PaddingK0VG_AA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23AAB98F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA08_PaddingK0VG_AA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA08_PaddingK0VG_AA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall SFCertificateViewController.layoutView(with:)(SFCertificatePresentationRequest *with)
{
  v2 = type metadata accessor for CertificateHostingView();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v67 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v69 = &v65 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v65 - v9;
  v11 = type metadata accessor for CertificateRequest();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v68 = (&v65 - v16);
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SFLog.sfCertificateViewController.getter();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v70 = v25;
    *v24 = 136315138;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000023AABDE60, &v70);
    _os_log_impl(&dword_23AA9F000, v22, v23, "%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x23EE941B0](v25, -1, -1);
    MEMORY[0x23EE941B0](v24, -1, -1);
  }

  (*(v18 + 8))(v21, v17);
  v26 = [(SFCertificatePresentationRequest *)with trust];
  v27 = [(SFCertificatePresentationRequest *)with qwacTrust];
  v28 = [(SFCertificatePresentationRequest *)with title];
  if (v28)
  {
    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v33 = [(SFCertificatePresentationRequest *)with message];
  if (v33)
  {
    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = [(SFCertificatePresentationRequest *)with help];
  if (v38)
  {
    v39 = v38;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = type metadata accessor for URL();
  (*(*(v41 - 8) + 56))(v10, v40, 1, v41);
  v42 = v68;
  CertificateRequest.init(trust:qwacTrust:title:message:help:)(v26, v27, v30, v32, v35, v37, v10, v68);
  _s10SecurityUI18CertificateRequestVWOcTm_0(v42, v15, type metadata accessor for CertificateRequest);
  v43 = swift_allocObject();
  v44 = v66;
  *(v43 + 16) = v66;
  v45 = v44;
  v46 = v69;
  CertificateHostingView.init(request:dismiss:)(v15, partial apply for closure #1 in SFCertificateViewController.layoutView(with:), v43, v69);
  _s10SecurityUI18CertificateRequestVWOcTm_0(v46, v67, type metadata accessor for CertificateHostingView);
  v47 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy08SecurityB022CertificateHostingViewVGMd, &_s7SwiftUI19UIHostingControllerCy08SecurityB022CertificateHostingViewVGMR));
  v48 = UIHostingController.init(rootView:)();
  [v45 addChildViewController_];
  v49 = [v45 view];
  if (!v49)
  {
    __break(1u);
    goto LABEL_19;
  }

  v50 = v49;
  v51 = [v48 view];
  if (!v51)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v52 = v51;
  [v50 addSubview_];

  v53 = [v48 view];
  if (!v53)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v54 = [v45 view];
  if (!v54)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v55 = v54;
  [v54 bounds];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;

  [v53 setFrame_];
  v64 = [v48 view];

  if (v64)
  {
    [v64 setAutoresizingMask_];

    [v48 didMoveToParentViewController_];
    outlined destroy of CertificateHostingView(v46, type metadata accessor for CertificateHostingView);
    outlined destroy of CertificateHostingView(v42, type metadata accessor for CertificateRequest);
    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_23AABA12C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t outlined destroy of CertificateHostingView(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

objc_class *one-time initialization function for resourceBundle()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  resourceBundle.super.isa = result;
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

uint64_t one-time initialization function for certLargeRoot(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x23EE93110](0x6772614C74726543, a3, resourceBundle.super.isa);
}

uint64_t ImageResource.certLargeRoot.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for ImageResource();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static ImageResource.certLargeRoot.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ImageResource();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

unint64_t type metadata accessor for UIImage()
{
  result = lazy cache variable for type metadata for UIImage;
  if (!lazy cache variable for type metadata for UIImage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIImage);
  }

  return result;
}

uint64_t static UIImage.certLargeRoot.getter(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageResource();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIImage();
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, a2);
  (*(v5 + 16))(v8, v9, v4);
  return UIImage.init(resource:)();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = MEMORY[0x28211C320](_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}