uint64_t View.workoutPreview(_:isPresented:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for WorkoutPreviewPresentingOverlayModifier();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20]();
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WorkoutPlan();
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  *&v15[v12[6]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMR);
  swift_storeEnumTagMultiPayload();
  v17 = &v15[v12[5]];
  *v17 = a2;
  *(v17 + 1) = a3;
  v17[16] = a4;
  v18 = v12[7];
  v19 = objc_allocWithZone(type metadata accessor for WorkoutRemoteViewServiceAdaptor());

  *&v15[v18] = [v19 init];
  MEMORY[0x23EEB9AA0](v15, a5, v12, a6);
  return outlined destroy of WorkoutPreviewPresentingOverlayModifier(v15);
}

uint64_t type metadata accessor for WorkoutPreviewPresentingOverlayModifier()
{
  result = type metadata singleton initialization cache for WorkoutPreviewPresentingOverlayModifier;
  if (!type metadata singleton initialization cache for WorkoutPreviewPresentingOverlayModifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutPreviewPresentingOverlayModifier.currentHostingController.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = (&v16 - v9);
  v11 = type metadata accessor for WorkoutPreviewPresentingOverlayModifier();
  outlined init with copy of Environment<WithCurrentHostingControllerAction>.Content(v1 + *(v11 + 24), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for WithCurrentHostingControllerAction();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    v14 = *v10;
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t closure #1 in WorkoutPreviewPresentingOverlayModifier.body(content:)(uint64_t a1)
{
  v2 = type metadata accessor for WithCurrentHostingControllerAction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  WorkoutPreviewPresentingOverlayModifier.currentHostingController.getter(v6);
  v9 = a1;
  WithCurrentHostingControllerAction.callAsFunction(_:)();
  return (*(v3 + 8))(v6, v2);
}

void closure #1 in closure #1 in WorkoutPreviewPresentingOverlayModifier.body(content:)(void *a1, uint64_t a2)
{
  v4 = *(type metadata accessor for WorkoutPreviewPresentingOverlayModifier() - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v7 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21[-v9];
  if (a1)
  {
    v11 = a2 + *(v8 + 20);
    v12 = *v11;
    v13 = *(v11 + 8);
    LOBYTE(v11) = *(v11 + 16);
    v23 = v12;
    v24 = v13;
    v25 = v11;
    v14 = v8;
    v15 = a1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    MEMORY[0x23EEB9AC0](&v22, v16);
    v17 = *(a2 + *(v14 + 28));
    if (v22 == 1)
    {
      outlined init with copy of WorkoutPreviewPresentingOverlayModifier(a2, v10);
      v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v19 = swift_allocObject();
      outlined init with take of WorkoutPreviewPresentingOverlayModifier(v10, v19 + v18);
      outlined init with copy of WorkoutPreviewPresentingOverlayModifier(a2, v7);
      v20 = swift_allocObject();
      outlined init with take of WorkoutPreviewPresentingOverlayModifier(v7, v20 + v18);
      dispatch thunk of WorkoutRemoteViewServiceAdaptor.presentRemoteViewController(on:with:dismissCompletion:completion:)();
    }

    else
    {
      dispatch thunk of WorkoutRemoteViewServiceAdaptor.dismissRemoteViewController(on:)();
    }
  }
}

uint64_t closure #1 in closure #1 in closure #1 in WorkoutPreviewPresentingOverlayModifier.body(content:)(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for WorkoutPreviewPresentingOverlayModifier() + 20));
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  return Binding.wrappedValue.setter();
}

uint64_t closure #2 in closure #1 in closure #1 in WorkoutPreviewPresentingOverlayModifier.body(content:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 1) == 0)
  {
    v3 = (a3 + *(type metadata accessor for WorkoutPreviewPresentingOverlayModifier() + 20));
    v4 = *v3;
    v5 = v3[1];
    v6 = *(v3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    return Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance WorkoutPreviewPresentingOverlayModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = v2 + *(v5 + 28);
  v7 = *v6;
  v8 = *(v6 + 8);
  LOBYTE(v6) = *(v6 + 16);
  v15 = v7;
  v16 = v8;
  v17 = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x23EEB9AC0](&v14, v9);
  LOBYTE(v15) = v14;
  outlined init with copy of WorkoutPreviewPresentingOverlayModifier(v2, &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  outlined init with take of WorkoutPreviewPresentingOverlayModifier(&v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy012_WorkoutKit_aB00f24PreviewPresentingOverlayD033_4C24E71AE7B7225A0D6FCA29E9998C74LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy012_WorkoutKit_aB00f24PreviewPresentingOverlayD033_4C24E71AE7B7225A0D6FCA29E9998C74LLVGMR);
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutPreviewPresentingOverlayModifier> and conformance _ViewModifier_Content<A>();
  View.onChange<A>(of:initial:_:)();
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

uint64_t outlined destroy of WorkoutPreviewPresentingOverlayModifier(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPreviewPresentingOverlayModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BC9BC0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for WorkoutPreviewPresentingOverlayModifier();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type WorkoutPreviewPresentingOverlayModifier and conformance WorkoutPreviewPresentingOverlayModifier();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type WorkoutPreviewPresentingOverlayModifier and conformance WorkoutPreviewPresentingOverlayModifier()
{
  result = lazy protocol witness table cache variable for type WorkoutPreviewPresentingOverlayModifier and conformance WorkoutPreviewPresentingOverlayModifier;
  if (!lazy protocol witness table cache variable for type WorkoutPreviewPresentingOverlayModifier and conformance WorkoutPreviewPresentingOverlayModifier)
  {
    type metadata accessor for WorkoutPreviewPresentingOverlayModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutPreviewPresentingOverlayModifier and conformance WorkoutPreviewPresentingOverlayModifier);
  }

  return result;
}

uint64_t sub_23BC9BCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutPlan();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA34WithCurrentHostingControllerActionVGMd, &_s7SwiftUI11EnvironmentVyAA34WithCurrentHostingControllerActionVGMR);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23BC9BE2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WorkoutPlan();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA34WithCurrentHostingControllerActionVGMd, &_s7SwiftUI11EnvironmentVyAA34WithCurrentHostingControllerActionVGMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void type metadata completion function for WorkoutPreviewPresentingOverlayModifier()
{
  type metadata accessor for WorkoutPlan();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Binding<Bool>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<WithCurrentHostingControllerAction>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for WorkoutRemoteViewServiceAdaptor();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Binding<Bool>()
{
  if (!lazy cache variable for type metadata for Binding<Bool>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<Bool>);
    }
  }
}

void type metadata accessor for Environment<WithCurrentHostingControllerAction>()
{
  if (!lazy cache variable for type metadata for Environment<WithCurrentHostingControllerAction>)
  {
    type metadata accessor for WithCurrentHostingControllerAction();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<WithCurrentHostingControllerAction>);
    }
  }
}

uint64_t outlined init with copy of WorkoutPreviewPresentingOverlayModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPreviewPresentingOverlayModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WorkoutPreviewPresentingOverlayModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPreviewPresentingOverlayModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutPreviewPresentingOverlayModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<WorkoutPreviewPresentingOverlayModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<WorkoutPreviewPresentingOverlayModifier> and conformance _ViewModifier_Content<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy012_WorkoutKit_aB00f24PreviewPresentingOverlayD033_4C24E71AE7B7225A0D6FCA29E9998C74LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy012_WorkoutKit_aB00f24PreviewPresentingOverlayD033_4C24E71AE7B7225A0D6FCA29E9998C74LLVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<WorkoutPreviewPresentingOverlayModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
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

uint64_t partial apply for closure #1 in WorkoutPreviewPresentingOverlayModifier.body(content:)(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WorkoutPreviewPresentingOverlayModifier() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for WorkoutPreviewPresentingOverlayModifier();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for WorkoutPlan();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = (v0 + v3 + v1[5]);
  v8 = *v7;

  v9 = v7[1];

  v10 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in WorkoutPreviewPresentingOverlayModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WorkoutPreviewPresentingOverlayModifier() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #2 in closure #1 in closure #1 in WorkoutPreviewPresentingOverlayModifier.body(content:)(a1, a2, v6);
}

uint64_t outlined init with copy of Environment<WithCurrentHostingControllerAction>.Content(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BC9C568()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy012_WorkoutKit_aB00f24PreviewPresentingOverlayD033_4C24E71AE7B7225A0D6FCA29E9998C74LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy012_WorkoutKit_aB00f24PreviewPresentingOverlayD033_4C24E71AE7B7225A0D6FCA29E9998C74LLVGMR);
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutPreviewPresentingOverlayModifier> and conformance _ViewModifier_Content<A>();
  return swift_getOpaqueTypeConformance2();
}