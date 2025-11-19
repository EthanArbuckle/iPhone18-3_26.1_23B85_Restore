id SceneHostingDelegate.init()()
{
  *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_window] = 0;
  v1 = &v0[OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneController];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneIdentifier] = 0;
  *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_requestId] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SceneHostingDelegate();
  return objc_msgSendSuper2(&v3, "init");
}

id SceneHostingDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneHostingDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void SceneHostingDelegate.handle(_:completion:)(void *a1, void (*a2)(id))
{
  v3 = [a1 rawValue];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13OS_xpc_object_pMd, _sSo13OS_xpc_object_pMR);
  if (swift_dynamicCast())
  {
    v4 = [objc_allocWithZone(NSXPCListenerEndpoint) init];
    [v4 _setEndpoint:v10];
    v5 = v4;
    SceneHostingDelegate.setRootViewController(endpoint:)(v4);

    a2(0);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = objc_opt_self();
    v7 = LACErrorCodeInternal;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v6 errorWithCode:v7 debugDescription:v8];

    v5 = v9;
    a2(v9);
  }
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LACAngelHostedSceneIdentifier()
{
  lazy protocol witness table accessor for type LACAngelHostedSceneIdentifier and conformance LACAngelHostedSceneIdentifier(&lazy protocol witness table cache variable for type LACAngelHostedSceneIdentifier and conformance LACAngelHostedSceneIdentifier);
  lazy protocol witness table accessor for type LACAngelHostedSceneIdentifier and conformance LACAngelHostedSceneIdentifier(&lazy protocol witness table cache variable for type LACAngelHostedSceneIdentifier and conformance LACAngelHostedSceneIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

unint64_t lazy protocol witness table accessor for type NSUserActivity and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSUserActivity and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSUserActivity and conformance NSObject)
  {
    type metadata accessor for UIDevice(255, &lazy cache variable for type metadata for NSUserActivity, NSUserActivity_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserActivity and conformance NSObject);
  }

  return result;
}

void type metadata accessor for LACAngelHostedSceneIdentifier()
{
  if (!lazy cache variable for type metadata for LACAngelHostedSceneIdentifier)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for LACAngelHostedSceneIdentifier);
    }
  }
}

uint64_t lazy protocol witness table accessor for type LACAngelHostedSceneIdentifier and conformance LACAngelHostedSceneIdentifier(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LACAngelHostedSceneIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void specialized SceneHostingDelegate.handle(_:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 rawValue];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13OS_xpc_object_pMd, _sSo13OS_xpc_object_pMR);
  if (swift_dynamicCast())
  {
    v5 = [objc_allocWithZone(NSXPCListenerEndpoint) init];
    [v5 _setEndpoint:v12];
    v6 = v5;
    SceneHostingDelegate.setRootViewController(endpoint:)(v5);

    (*(a3 + 16))(a3, 0);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = objc_opt_self();
    v8 = LACErrorCodeInternal;
    v9 = String._bridgeToObjectiveC()();
    v10 = [v7 errorWithCode:v8 debugDescription:v9];

    v11 = v10;
    v6 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, v6);
  }
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance AuthenticationView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type AuthenticationView and conformance AuthenticationView();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance AuthenticationView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type AuthenticationView and conformance AuthenticationView();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance AuthenticationView()
{
  lazy protocol witness table accessor for type AuthenticationView and conformance AuthenticationView();
  UIViewRepresentable.body.getter();
  __break(1u);
}

char *AuthenticationParentView.init(context:delegate:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = [objc_allocWithZone(LAUIAuthenticationView) initWithFrame:4 mechanisms:a1 context:{0.0, 0.0, 50.0, 50.0}];
  v8 = OBJC_IVAR____TtC28LocalAuthenticationUIService24AuthenticationParentView_authenticationView;
  *&v3[OBJC_IVAR____TtC28LocalAuthenticationUIService24AuthenticationParentView_authenticationView] = v7;
  [v7 setStyle:1];
  [*&v3[v8] setDelegate:a2];
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = *&v9[OBJC_IVAR____TtC28LocalAuthenticationUIService24AuthenticationParentView_authenticationView];
  v11 = v9;
  [v11 addSubview:v10];

  swift_unknownObjectRelease();
  return v11;
}

id AuthenticationParentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

unint64_t lazy protocol witness table accessor for type AuthenticationView and conformance AuthenticationView()
{
  result = lazy protocol witness table cache variable for type AuthenticationView and conformance AuthenticationView;
  if (!lazy protocol witness table cache variable for type AuthenticationView and conformance AuthenticationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthenticationView and conformance AuthenticationView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AuthenticationView and conformance AuthenticationView;
  if (!lazy protocol witness table cache variable for type AuthenticationView and conformance AuthenticationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthenticationView and conformance AuthenticationView);
  }

  return result;
}

id AuthorizationViewWrapper.viewModel.getter(void *a1)
{
  if (a1)
  {

    return a1;
  }

  else
  {
    type metadata accessor for AuthorizationViewModel();
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t AuthorizationViewWrapper.$viewModel.getter()
{
  type metadata accessor for AuthorizationViewModel();
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);

  return EnvironmentObject.projectedValue.getter();
}

uint64_t AuthorizationViewWrapper.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIDevice, UIDevice_ptr);
  if (static UIDevice.isPad.getter())
  {
    goto LABEL_4;
  }

  if (a1)
  {
    v4 = a1;
    AuthorizationViewModel.requiresFullScreen.getter();

LABEL_4:
    type metadata accessor for AuthorizationViewModel();
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
    EnvironmentObject.init()();
    lazy protocol witness table accessor for type AuthorizationContentView and conformance AuthorizationContentView();
    lazy protocol witness table accessor for type AuthorizationView and conformance AuthorizationView();
    result = _ConditionalContent<>.init(storage:)();
    *a2 = v6;
    *(a2 + 16) = v7;
    return result;
  }

  type metadata accessor for AuthorizationViewModel();
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type AuthorizationContentView and conformance AuthorizationContentView()
{
  result = lazy protocol witness table cache variable for type AuthorizationContentView and conformance AuthorizationContentView;
  if (!lazy protocol witness table cache variable for type AuthorizationContentView and conformance AuthorizationContentView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthorizationContentView and conformance AuthorizationContentView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AuthorizationView and conformance AuthorizationView()
{
  result = lazy protocol witness table cache variable for type AuthorizationView and conformance AuthorizationView;
  if (!lazy protocol witness table cache variable for type AuthorizationView and conformance AuthorizationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthorizationView and conformance AuthorizationView);
  }

  return result;
}

uint64_t variable initialization expression of AuthorizationViewWrapper._viewModel()
{
  type metadata accessor for AuthorizationViewModel();
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);

  return EnvironmentObject.init()();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<AuthorizationContentView, AuthorizationView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<AuthorizationContentView, AuthorizationView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<AuthorizationContentView, AuthorizationView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAD0hI0AFLLVGMd, &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAD0hI0AFLLVGMR);
    lazy protocol witness table accessor for type AuthorizationContentView and conformance AuthorizationContentView();
    lazy protocol witness table accessor for type AuthorizationView and conformance AuthorizationView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<AuthorizationContentView, AuthorizationView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void closure #1 in AuthorizationView.body.getter(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIy28LocalAuthenticationUIService013AuthorizationhE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionV3KeyVGGAA016_BackgroundStyleX0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIy28LocalAuthenticationUIService013AuthorizationhE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionV3KeyVGGAA016_BackgroundStyleX0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  type metadata accessor for AuthorizationViewModel();
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
  v11 = EnvironmentObject.init()();
  if (a1)
  {
    v13 = v11;
    v14 = v12;
    v15 = a1;
    v16 = AuthorizationViewModel.showAuthorizationView.getter();

    if (v16)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = 0.0;
    }

    *v10 = static HorizontalAlignment.center.getter();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAMy28LocalAuthenticationUIService013AuthorizationkD033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGAA24_BackgroundStyleModifierVyAA8MaterialVGGAA024_SafeAreaRegionsIgnoringG0VGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAMy28LocalAuthenticationUIService013AuthorizationkD033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGAA24_BackgroundStyleModifierVyAA8MaterialVGGAA024_SafeAreaRegionsIgnoringG0VGSgtGGMR);
    closure #2 in closure #1 in AuthorizationView.body.getter(a1, &v10[*(v18 + 44)]);
    outlined init with copy of LACUIAngelConnectionHandling?(v10, v8, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIy28LocalAuthenticationUIService013AuthorizationhE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionV3KeyVGGAA016_BackgroundStyleX0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIy28LocalAuthenticationUIService013AuthorizationhE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionV3KeyVGGAA016_BackgroundStyleX0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGMR);
    *a2 = v13;
    *(a2 + 8) = v14;
    *(a2 + 16) = closure #1 in closure #1 in AuthorizationView.body.getter;
    *(a2 + 24) = 0;
    *(a2 + 32) = v17;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy28LocalAuthenticationUIService27AuthorizationBackgroundView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA20_TransactionModifierVGAA14_OpacityEffectVG_AA6VStackVyAA05TupleJ0VyAA6SpacerV_ACyACyACyAD0hdJ0AFLLVAA013_TraitWritingU0VyAA18TransitionTraitKeyVGGAA01_i5StyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGtMd, &_s7SwiftUI15ModifiedContentVyACy28LocalAuthenticationUIService27AuthorizationBackgroundView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA20_TransactionModifierVGAA14_OpacityEffectVG_AA6VStackVyAA05TupleJ0VyAA6SpacerV_ACyACyACyAD0hdJ0AFLLVAA013_TraitWritingU0VyAA18TransitionTraitKeyVGGAA01_i5StyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGtMR);
    outlined init with copy of LACUIAngelConnectionHandling?(v8, a2 + *(v19 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIy28LocalAuthenticationUIService013AuthorizationhE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionV3KeyVGGAA016_BackgroundStyleX0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIy28LocalAuthenticationUIService013AuthorizationhE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionV3KeyVGGAA016_BackgroundStyleX0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGMR);
    v20 = v13;
    outlined destroy of LACUIAngelConnectionHandling?(v10, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIy28LocalAuthenticationUIService013AuthorizationhE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionV3KeyVGGAA016_BackgroundStyleX0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIy28LocalAuthenticationUIService013AuthorizationhE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionV3KeyVGGAA016_BackgroundStyleX0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGMR);
    outlined destroy of LACUIAngelConnectionHandling?(v8, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIy28LocalAuthenticationUIService013AuthorizationhE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionV3KeyVGGAA016_BackgroundStyleX0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIy28LocalAuthenticationUIService013AuthorizationhE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionV3KeyVGGAA016_BackgroundStyleX0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGMR);
  }

  else
  {
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t closure #2 in closure #1 in AuthorizationView.body.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for MoveTransition();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v37 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
  v11 = *(v37 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v37);
  v14 = (&v37 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v37 - v20;
  v22 = a1;
  v23 = AuthorizationViewModel.showAuthorizationView.getter();

  if (v23)
  {
    type metadata accessor for AuthorizationViewModel();
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
    v24 = EnvironmentObject.init()();
    v26 = v25;
    MoveTransition.init(edge:)();
    (*(v4 + 16))(v8, v10, v3);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type MoveTransition and conformance MoveTransition, &type metadata accessor for MoveTransition);
    v27 = AnyTransition.init<A>(_:)();
    (*(v4 + 8))(v10, v3);
    v28 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGMd, &_s7SwiftUI15ModifiedContentVyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGMR) + 36);
    static Material.thick.getter();
    v29 = static Edge.Set.all.getter();
    v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMR) + 36)] = v29;
    *v14 = v24;
    v14[1] = v26;
    v14[2] = v27;
    v30 = static SafeAreaRegions.container.getter();
    v31 = static Edge.Set.bottom.getter();
    v32 = v37;
    v33 = v14 + *(v37 + 36);
    *v33 = v30;
    v33[8] = v31;
    outlined init with take of _OpacityShapeStyle<Material>(v14, v21, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
    (*(v11 + 56))(v21, 0, 1, v32);
  }

  else
  {
    (*(v11 + 56))(v21, 1, 1, v37);
  }

  outlined init with copy of LACUIAngelConnectionHandling?(v21, v19, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgMR);
  v34 = v38;
  *v38 = 0;
  *(v34 + 8) = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAEy28LocalAuthenticationUIService013AuthorizationE4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionT3KeyVGGAA016_BackgroundStyleV0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtMd, &_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAEy28LocalAuthenticationUIService013AuthorizationE4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionT3KeyVGGAA016_BackgroundStyleV0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtMR);
  outlined init with copy of LACUIAngelConnectionHandling?(v19, v34 + *(v35 + 48), &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgMR);
  outlined destroy of LACUIAngelConnectionHandling?(v21, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgMR);
  return outlined destroy of LACUIAngelConnectionHandling?(v19, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgMR);
}

uint64_t closure #1 in closure #2 in AuthorizationView.body.getter(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  v3 = *(v16 + 64);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v15);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a1;
    AuthorizationViewModel.showAuthorizationView.setter();
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    v11 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();

    aBlock[4] = partial apply for closure #1 in closure #1 in closure #2 in AuthorizationView.body.getter;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_8;
    v13 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v16 + 8))(v5, v2);
    return (*(v6 + 8))(v9, v15);
  }

  else
  {
    type metadata accessor for AuthorizationViewModel();
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

id protocol witness for View.body.getter in conformance AuthorizationView@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v10 = v3;
  *a1 = static Alignment.center.getter();
  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKy28LocalAuthenticationUIService023AuthorizationBackgroundD033_DD63B0C55F42B89932B8BE62D7B51015LLVAA20_TransactionModifierVGAA14_OpacityEffectVG_AA6VStackVyAIyAA6SpacerV_AKyAKyAKyAL0njD0ANLLVAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGAA01_o5StyleZ0VyAA8MaterialVGGAA024_SafeAreaRegionsIgnoringG0VGSgtGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKy28LocalAuthenticationUIService023AuthorizationBackgroundD033_DD63B0C55F42B89932B8BE62D7B51015LLVAA20_TransactionModifierVGAA14_OpacityEffectVG_AA6VStackVyAIyAA6SpacerV_AKyAKyAKyAL0njD0ANLLVAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGAA01_o5StyleZ0VyAA8MaterialVGGAA024_SafeAreaRegionsIgnoringG0VGSgtGGtGGMR);
  closure #1 in AuthorizationView.body.getter(v10, a1 + *(v6 + 44));
  v7 = swift_allocObject();
  *(v7 + 16) = v10;
  *(v7 + 24) = v4;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACy28LocalAuthenticationUIService023AuthorizationBackgroundG033_DD63B0C55F42B89932B8BE62D7B51015LLVAA20_TransactionModifierVGAA14_OpacityEffectVG_AA6VStackVyAGyAA6SpacerV_ACyACyACyAH0kdG0AJLLVAA013_TraitWritingW0VyAA18TransitionTraitKeyVGGAA01_l5StyleW0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGtGGAA017_AppearanceActionW0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACy28LocalAuthenticationUIService023AuthorizationBackgroundG033_DD63B0C55F42B89932B8BE62D7B51015LLVAA20_TransactionModifierVGAA14_OpacityEffectVG_AA6VStackVyAGyAA6SpacerV_ACyACyACyAH0kdG0AJLLVAA013_TraitWritingW0VyAA18TransitionTraitKeyVGGAA01_l5StyleW0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGtGGAA017_AppearanceActionW0VGMR) + 36));
  *v8 = partial apply for closure #2 in AuthorizationView.body.getter;
  v8[1] = v7;
  v8[2] = 0;
  v8[3] = 0;

  return v10;
}

unsigned __int8 *AuthorizationContentView.body.getter@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = static Alignment.center.getter();
  v8 = v7;
  closure #1 in AuthorizationContentView.body.getter(a1, a2, &v15);
  v14 = v15;
  v9 = v16;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v14;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = v9;
  *(a3 + 56) = partial apply for closure #2 in AuthorizationContentView.body.getter;
  *(a3 + 64) = v10;
  *(a3 + 72) = partial apply for closure #3 in AuthorizationContentView.body.getter;
  *(a3 + 80) = v11;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  v12 = a1;

  return v12;
}

void closure #1 in AuthorizationContentView.body.getter(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for Material();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI18_OpacityShapeStyleVyAA8MaterialVGMd, &_s7SwiftUI18_OpacityShapeStyleVyAA8MaterialVGMR);
  v10 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderF033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA19_ConditionalContentVyAH0j13EnterPasswordwF0AJLLVAH0j8RegisterywF0AJLLVGANtGGGMd, &_s7SwiftUI5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderF033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA19_ConditionalContentVyAH0j13EnterPasswordwF0AJLLVAH0j8RegisterywF0AJLLVGANtGGGMR);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v44 - v15;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGMR);
  v17 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v19 = &v44 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  v24 = &v44 - v23;
  if (a1)
  {
    v45 = v22;
    v48 = v6;
    v49 = a3;
    if (a1[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_isPad])
    {
      type metadata accessor for AuthorizationViewModel();
      lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
      v25 = a1;
      v26 = EnvironmentObject.init()();
      v28 = v27;
      v29 = v26;
    }

    else
    {
      v26 = a1;
      v28 = 0;
      v29 = 1;
    }

    v30 = v26;
    *v16 = static HorizontalAlignment.center.getter();
    *(v16 + 1) = 0;
    v16[16] = 1;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0Vy28LocalAuthenticationUIService019AuthorizationHeaderD033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA19_ConditionalContentVyAJ0l13EnterPasswordyD0ALLLVAJ0l16RegisterPasswordyD0ALLLVGAPtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0Vy28LocalAuthenticationUIService019AuthorizationHeaderD033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA19_ConditionalContentVyAJ0l13EnterPasswordyD0ALLLVAJ0l16RegisterPasswordyD0ALLLVGAPtGGMR);
    closure #1 in closure #1 in closure #1 in AuthorizationContentView.body.getter(a1, a2, &v16[*(v31 + 44)]);
    static Material.thick.getter();
    v32 = a1[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_isPad];

    if (v32 == 1)
    {
      v33 = AuthorizationViewModel.requiresFullScreen.getter();

      v34 = 1.0;
      if (!v33)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v34 = 0.0;
LABEL_10:
    (*(v47 + 32))(v12, v9, v48);
    *&v12[*(v46 + 36)] = v34;
    v35 = static Edge.Set.all.getter();
    v36 = &v19[*(v44 + 36)];
    outlined init with take of _OpacityShapeStyle<Material>(v12, v36, &_s7SwiftUI18_OpacityShapeStyleVyAA8MaterialVGMd, &_s7SwiftUI18_OpacityShapeStyleVyAA8MaterialVGMR);
    *(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_BackgroundStyleModifierVyAA013_OpacityShapeD0VyAA8MaterialVGGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA013_OpacityShapeD0VyAA8MaterialVGGMR) + 36)) = v35;
    outlined init with take of _OpacityShapeStyle<Material>(v16, v19, &_s7SwiftUI5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderF033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA19_ConditionalContentVyAH0j13EnterPasswordwF0AJLLVAH0j8RegisterywF0AJLLVGANtGGGMd, &_s7SwiftUI5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderF033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA19_ConditionalContentVyAH0j13EnterPasswordwF0AJLLVAH0j8RegisterywF0AJLLVGANtGGGMR);
    v37 = AuthorizationViewModel.cornerRadius.getter();

    v38 = &v24[*(v45 + 36)];
    v39 = *(type metadata accessor for RoundedRectangle() + 20);
    v40 = enum case for RoundedCornerStyle.continuous(_:);
    v41 = type metadata accessor for RoundedCornerStyle();
    (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
    *v38 = v37;
    v38[1] = v37;
    *(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)) = 256;
    outlined init with take of _OpacityShapeStyle<Material>(v19, v24, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGMR);
    v42 = specialized View.setMaxWidth()();
    outlined destroy of LACUIAngelConnectionHandling?(v24, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    outlined copy of AuthorizationBackgroundView?(v29);

    outlined consume of AuthorizationBackgroundView?(v29);
    v43 = v49;
    *v49 = v29;
    v43[1] = v28;
    v43[2] = v42;

    outlined consume of AuthorizationBackgroundView?(v29);
    return;
  }

  type metadata accessor for AuthorizationViewModel();
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
  EnvironmentObject.error()();
  __break(1u);
}

uint64_t closure #1 in closure #1 in closure #1 in AuthorizationContentView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AuthorizationHeaderView();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = (&v33 - v11);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  type metadata accessor for AuthorizationViewModel();
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
  v14 = a1;
  *v12 = EnvironmentObject.init()();
  v12[1] = v15;
  v12[2] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in AuthorizationContentView.body.getter;
  v12[3] = v13;
  v16 = *(v7 + 32);
  *&v43 = 0x4034000000000000;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  v17 = v14;
  v36 = AuthorizationViewModel.requiresFullScreen.getter();
  LOBYTE(v14) = AuthorizationViewModel.isEnterModeEnabled.getter();
  v18 = EnvironmentObject.init()();
  v20 = v18;
  v21 = v19;
  if (v14)
  {
    v38 = v18;
    v39 = v19;
    lazy protocol witness table accessor for type AuthorizationEnterPasswordContentView and conformance AuthorizationEnterPasswordContentView();
    lazy protocol witness table accessor for type AuthorizationRegisterPasswordContentView and conformance AuthorizationRegisterPasswordContentView();
    v41 = 0;
    v40 = 0uLL;
    v42 = 0;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    State.init(wrappedValue:)();
    v38 = v20;
    v39 = v21;
    v40 = v43;
    v41 = v44;
    v42 = 1;
    lazy protocol witness table accessor for type AuthorizationEnterPasswordContentView and conformance AuthorizationEnterPasswordContentView();
    lazy protocol witness table accessor for type AuthorizationRegisterPasswordContentView and conformance AuthorizationRegisterPasswordContentView();
  }

  _ConditionalContent<>.init(storage:)();
  v22 = v45;
  v23 = v46;
  v33 = v44;
  v34 = v43;
  v24 = v43;
  v25 = v44;
  outlined copy of _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>.Storage(v43, *(&v43 + 1), v44, *(&v44 + 1), v45, v46);
  v35 = AuthorizationViewModel.requiresFullScreen.getter();

  v26 = v37;
  outlined init with copy of AuthorizationHeaderView(v12, v37);
  outlined init with copy of AuthorizationHeaderView(v26, a3);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService23AuthorizationHeaderView33_DD63B0C55F42B89932B8BE62D7B51015LLV_7SwiftUI6SpacerVSgAE19_ConditionalContentVyAA0d13EnterPasswordtF0ACLLVAA0d8RegistervtF0ACLLVGAHtMd, &_s28LocalAuthenticationUIService23AuthorizationHeaderView33_DD63B0C55F42B89932B8BE62D7B51015LLV_7SwiftUI6SpacerVSgAE19_ConditionalContentVyAA0d13EnterPasswordtF0ACLLVAA0d8RegistervtF0ACLLVGAHtMR);
  v28 = a3 + v27[12];
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 9) = !v36;
  v29 = a3 + v27[16];
  v30 = v33;
  *v29 = v34;
  *(v29 + 16) = v30;
  *(v29 + 32) = v22;
  *(v29 + 40) = v23;
  v31 = a3 + v27[20];
  outlined copy of _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>.Storage(v24, *(&v24 + 1), v25, *(&v25 + 1), v22, v23);
  outlined consume of _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>.Storage(v24, *(&v24 + 1), v25, *(&v25 + 1), v22, v23);
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 9) = !v35;
  outlined destroy of AuthorizationHeaderView(v12);
  outlined consume of _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>.Storage(v24, *(&v24 + 1), v25, *(&v25 + 1), v22, v23);
  return outlined destroy of AuthorizationHeaderView(v26);
}

uint64_t specialized View.setMaxWidth()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA13EmptyModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA13EmptyModifierVGMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGAJ8MaxWidthALLLVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGAJ8MaxWidthALLLVGMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIDevice, UIDevice_ptr);
  if (static UIDevice.isPad.getter())
  {
    v10 = objc_opt_self();
    v11 = [v10 mainScreen];
    [v11 nativeBounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v26.origin.x = v13;
    v26.origin.y = v15;
    v26.size.width = v17;
    v26.size.height = v19;
    Width = CGRectGetWidth(v26);
    v21 = [v10 mainScreen];
    [v21 nativeScale];
    v23 = v22;

    outlined init with copy of LACUIAngelConnectionHandling?(v1, v9, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    *&v9[*(v6 + 36)] = Width / v23 * 0.55;
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>>, MaxWidth> and conformance <> ModifiedContent<A, B>();
  }

  else
  {
    outlined init with copy of LACUIAngelConnectionHandling?(v0, v5, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>>, EmptyModifier> and conformance <> ModifiedContent<A, B>();
  }

  return AnyView.init<A>(_:)();
}

uint64_t sub_10005C644()
{

  return _swift_deallocObject(v0, 32, 7);
}

void partial apply for closure #2 in AuthorizationContentView.body.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    if (*(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_isPad))
    {
      v2 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_expectsDismissOnIpad;
      swift_beginAccess();
      if ((*(v1 + v2) & 1) == 0)
      {
        v3 = objc_opt_self();
        v4 = LACErrorCodeUserCancel;
        v5 = v1;
        v6 = [v3 errorWithCode:v4];
        v7 = default argument 1 of AuthorizationViewManager.dismissAuthorizationView(error:reply:)();
        AuthorizationViewModel.dismiss(error:reply:)(v6, v7, v8);
      }
    }
  }

  else
  {
    v9 = *(v0 + 24);
    type metadata accessor for AuthorizationViewModel();
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t partial apply for closure #3 in AuthorizationContentView.body.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_isPad];
    v1;
    if ((v2 & 1) != 0 || AuthorizationViewModel.requiresFullScreen.getter())
    {
      AuthorizationViewModel.passcodeFocused.setter();
    }
  }

  else
  {
    v3 = *(v0 + 24);
    type metadata accessor for AuthorizationViewModel();
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }

  return _objc_release_x1();
}

id outlined copy of AuthorizationBackgroundView?(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void outlined consume of AuthorizationBackgroundView?(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>>, EmptyModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>>, EmptyModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>>, EmptyModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA13EmptyModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA13EmptyModifierVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>>, EmptyModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGMR);
    lazy protocol witness table accessor for type Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>> and conformance <A> Group<A>();
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<_OpacityShapeStyle<Material>> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA013_OpacityShapeD0VyAA8MaterialVGGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA013_OpacityShapeD0VyAA8MaterialVGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderF033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA19_ConditionalContentVyAH0j13EnterPasswordwF0AJLLVAH0j8RegisterywF0AJLLVGANtGGGMd, &_s7SwiftUI5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderF033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA19_ConditionalContentVyAH0j13EnterPasswordwF0AJLLVAH0j8RegisterywF0AJLLVGANtGGGMR);
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderE033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA19_ConditionalContentVyAF0i13EnterPasswordvE0AHLLVAF0i8RegisterxvE0AHLLVGALtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderE033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA19_ConditionalContentVyAF0i13EnterPasswordvE0AHLLVAF0i8RegisterxvE0AHLLVGALtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>>, MaxWidth> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>>, MaxWidth> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>>, MaxWidth> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGAJ8MaxWidthALLLVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGAJ8MaxWidthALLLVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type MaxWidth and conformance MaxWidth();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>>, MaxWidth> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaxWidth and conformance MaxWidth()
{
  result = lazy protocol witness table cache variable for type MaxWidth and conformance MaxWidth;
  if (!lazy protocol witness table cache variable for type MaxWidth and conformance MaxWidth)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaxWidth and conformance MaxWidth);
  }

  return result;
}

uint64_t type metadata accessor for AuthorizationHeaderView()
{
  result = type metadata singleton initialization cache for AuthorizationHeaderView;
  if (!type metadata singleton initialization cache for AuthorizationHeaderView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AuthorizationEnterPasswordContentView and conformance AuthorizationEnterPasswordContentView()
{
  result = lazy protocol witness table cache variable for type AuthorizationEnterPasswordContentView and conformance AuthorizationEnterPasswordContentView;
  if (!lazy protocol witness table cache variable for type AuthorizationEnterPasswordContentView and conformance AuthorizationEnterPasswordContentView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthorizationEnterPasswordContentView and conformance AuthorizationEnterPasswordContentView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AuthorizationRegisterPasswordContentView and conformance AuthorizationRegisterPasswordContentView()
{
  result = lazy protocol witness table cache variable for type AuthorizationRegisterPasswordContentView and conformance AuthorizationRegisterPasswordContentView;
  if (!lazy protocol witness table cache variable for type AuthorizationRegisterPasswordContentView and conformance AuthorizationRegisterPasswordContentView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthorizationRegisterPasswordContentView and conformance AuthorizationRegisterPasswordContentView);
  }

  return result;
}

id outlined copy of _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>.Storage(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    v7 = a1;
  }

  else
  {

    return a1;
  }
}

uint64_t outlined init with copy of AuthorizationHeaderView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthorizationHeaderView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void outlined consume of _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>.Storage(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }
}

uint64_t outlined destroy of AuthorizationHeaderView(uint64_t a1)
{
  v2 = type metadata accessor for AuthorizationHeaderView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #2 in AuthorizationView.body.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  static Animation.easeOut(duration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10005CFB8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void partial apply for closure #1 in closure #1 in closure #2 in AuthorizationView.body.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    AuthorizationViewModel.passcodeFocused.setter();
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for AuthorizationRegisterPasswordContentView.Mode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AuthorizationRegisterPasswordContentView.Mode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for AuthorizationRegisterPasswordContentView.Mode(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for AuthorizationRegisterPasswordContentView.Mode(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuthorizationRegisterPasswordContentView(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AuthorizationRegisterPasswordContentView(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10005D244(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_10005D320(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for AuthorizationHeaderView()
{
  type metadata accessor for EnvironmentObject<AuthorizationViewModel>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (())?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ScaledMetric<CGFloat>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for EnvironmentObject<AuthorizationViewModel>()
{
  if (!lazy cache variable for type metadata for EnvironmentObject<AuthorizationViewModel>)
  {
    type metadata accessor for AuthorizationViewModel();
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentObject<AuthorizationViewModel>);
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

void type metadata accessor for ScaledMetric<CGFloat>()
{
  if (!lazy cache variable for type metadata for ScaledMetric<CGFloat>)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v0 = type metadata accessor for ScaledMetric();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ScaledMetric<CGFloat>);
    }
  }
}

uint64_t getEnumTagSinglePayload for AuthorizationViewWrapper(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AuthorizationViewWrapper(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(AuthorizationBackgroundView?, AnyView)>>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(AuthorizationBackgroundView?, AnyView)>>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(AuthorizationBackgroundView?, AnyView)>>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy28LocalAuthenticationUIService023AuthorizationBackgroundG033_DD63B0C55F42B89932B8BE62D7B51015LLVSg_AA03AnyG0VtGGAA25_AppearanceActionModifierVGARGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy28LocalAuthenticationUIService023AuthorizationBackgroundG033_DD63B0C55F42B89932B8BE62D7B51015LLVSg_AA03AnyG0VtGGAA25_AppearanceActionModifierVGARGMR);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(AuthorizationBackgroundView?, AnyView)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(AuthorizationBackgroundView?, AnyView)>>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(AuthorizationBackgroundView?, AnyView)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(AuthorizationBackgroundView?, AnyView)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(AuthorizationBackgroundView?, AnyView)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVy28LocalAuthenticationUIService023AuthorizationBackgroundG033_DD63B0C55F42B89932B8BE62D7B51015LLVSg_AA03AnyG0VtGGAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVy28LocalAuthenticationUIService023AuthorizationBackgroundG033_DD63B0C55F42B89932B8BE62D7B51015LLVSg_AA03AnyG0VtGGAA25_AppearanceActionModifierVGMR);
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type ZStack<TupleView<(AuthorizationBackgroundView?, AnyView)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVy28LocalAuthenticationUIService023AuthorizationBackgroundE033_DD63B0C55F42B89932B8BE62D7B51015LLVSg_AA03AnyE0VtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVy28LocalAuthenticationUIService023AuthorizationBackgroundE033_DD63B0C55F42B89932B8BE62D7B51015LLVSg_AA03AnyE0VtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(AuthorizationBackgroundView?, AnyView)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<AuthorizationBackgroundView, _TransactionModifier>, _OpacityEffect>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<AuthorizationContentView, _TraitWritingModifier<TransitionTraitKey>>, _BackgroundStyleModifier<Material>>, _SafeAreaRegionsIgnoringLayout>?)>>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<AuthorizationBackgroundView, _TransactionModifier>, _OpacityEffect>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<AuthorizationContentView, _TraitWritingModifier<TransitionTraitKey>>, _BackgroundStyleModifier<Material>>, _SafeAreaRegionsIgnoringLayout>?)>>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<AuthorizationBackgroundView, _TransactionModifier>, _OpacityEffect>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<AuthorizationContentView, _TraitWritingModifier<TransitionTraitKey>>, _BackgroundStyleModifier<Material>>, _SafeAreaRegionsIgnoringLayout>?)>>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACy28LocalAuthenticationUIService023AuthorizationBackgroundG033_DD63B0C55F42B89932B8BE62D7B51015LLVAA20_TransactionModifierVGAA14_OpacityEffectVG_AA6VStackVyAGyAA6SpacerV_ACyACyACyAH0kdG0AJLLVAA013_TraitWritingW0VyAA18TransitionTraitKeyVGGAA01_l5StyleW0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGtGGAA017_AppearanceActionW0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACy28LocalAuthenticationUIService023AuthorizationBackgroundG033_DD63B0C55F42B89932B8BE62D7B51015LLVAA20_TransactionModifierVGAA14_OpacityEffectVG_AA6VStackVyAGyAA6SpacerV_ACyACyACyAH0kdG0AJLLVAA013_TraitWritingW0VyAA18TransitionTraitKeyVGGAA01_l5StyleW0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGtGGAA017_AppearanceActionW0VGMR);
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<AuthorizationBackgroundView, _TransactionModifier>, _OpacityEffect>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<AuthorizationContentView, _TraitWritingModifier<TransitionTraitKey>>, _BackgroundStyleModifier<Material>>, _SafeAreaRegionsIgnoringLayout>?)>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGy28LocalAuthenticationUIService023AuthorizationBackgroundE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA20_TransactionModifierVGAA14_OpacityEffectVG_AA6VStackVyAEyAA6SpacerV_AGyAGyAGyAH0kgE0AJLLVAA013_TraitWritingW0VyAA18TransitionTraitKeyVGGAA01_l5StyleW0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGy28LocalAuthenticationUIService023AuthorizationBackgroundE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA20_TransactionModifierVGAA14_OpacityEffectVG_AA6VStackVyAEyAA6SpacerV_AGyAGyAGyAH0kgE0AJLLVAA013_TraitWritingW0VyAA18TransitionTraitKeyVGGAA01_l5StyleW0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<AuthorizationBackgroundView, _TransactionModifier>, _OpacityEffect>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<AuthorizationContentView, _TraitWritingModifier<TransitionTraitKey>>, _BackgroundStyleModifier<Material>>, _SafeAreaRegionsIgnoringLayout>?)>>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in AuthorizationEnterPasswordContentView.body.getter@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v133 = a2;
  v146 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  v142 = *(v4 - 8);
  v5 = *(v142 + 64);
  __chkstk_darwin(v4);
  v130 = &v116 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v145 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v144 = &v116 - v11;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA08ModifiedD0VyAA0J0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentjH0VQo_SgAA6VStackVyAA05TupleF0VyAKyAKyAKy28LocalAuthenticationUIService0tF0VAA06_FrameN0VGARGA0_5ShakeVG_AKyAoRGtGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA08ModifiedD0VyAA0J0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentjH0VQo_SgAA6VStackVyAA05TupleF0VyAKyAKyAKy28LocalAuthenticationUIService0tF0VAA06_FrameN0VGARGA0_5ShakeVG_AKyAoRGtGG_GMR);
  v12 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v125 = &v116 - v13;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMR);
  v14 = *(*(v140 - 8) + 64);
  __chkstk_darwin(v140);
  v126 = &v116 - v15;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR);
  v16 = *(*(v131 - 8) + 64);
  __chkstk_darwin(v131);
  v118 = &v116 - v17;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentgE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentgE0VQo_MR);
  v18 = *(v119 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v119);
  v117 = &v116 - v20;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentgE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentgE0VQo_SgMR);
  v21 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v120 = &v116 - v22;
  v23 = type metadata accessor for BorderedProminentButtonStyle();
  v128 = *(v23 - 8);
  v129 = v23;
  v24 = *(v128 + 64);
  __chkstk_darwin(v23);
  v127 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v121 = *(v26 - 8);
  v122 = v26;
  v27 = *(v121 + 64);
  __chkstk_darwin(v26);
  v29 = &v116 - v28;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA14_PaddingLayoutVGMR);
  v30 = *(*(v132 - 8) + 64);
  __chkstk_darwin(v132);
  v32 = &v116 - v31;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0K0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyAA4TextVG_AA017BorderedProminentyW0VQo_AA14_PaddingLayoutVGGACyAmAEANyQrqd__AaORd__lFQOyAKyAtYG_AVQo_SgAA6VStackVyAA05TupleK0VyAKyAKyAKyAF0gK0VAA12_FrameLayoutVGAYGAF5ShakeVG_AKyAsYGtGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0K0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyAA4TextVG_AA017BorderedProminentyW0VQo_AA14_PaddingLayoutVGGACyAmAEANyQrqd__AaORd__lFQOyAKyAtYG_AVQo_SgAA6VStackVyAA05TupleK0VyAKyAKyAKyAF0gK0VAA12_FrameLayoutVGAYGAF5ShakeVG_AKyAsYGtGGG_GMR);
  v33 = *(*(v135 - 8) + 64);
  __chkstk_darwin(v135);
  v137 = &v116 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0K0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyAA4TextVG_AA017BorderedProminentyW0VQo_AA14_PaddingLayoutVG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0K0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyAA4TextVG_AA017BorderedProminentyW0VQo_AA14_PaddingLayoutVG_GMR);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v38 = (&v116 - v37);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMd, &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMR);
  v39 = *(*(v136 - 8) + 64);
  __chkstk_darwin(v136);
  v41 = &v116 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGACyAkAEALyQrqd__AaMRd__lFQOyAIyArWG_ATQo_SgAA6VStackVyAA05TupleJ0VyAIyAIyAIyAD0fJ0VAA12_FrameLayoutVGAWGAD5ShakeVG_AIyAqWGtGGGGMd, &_s7SwiftUI19_ConditionalContentVyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGACyAkAEALyQrqd__AaMRd__lFQOyAIyArWG_ATQo_SgAA6VStackVyAA05TupleJ0VyAIyAIyAIyAD0fJ0VAA12_FrameLayoutVGAWGAD5ShakeVG_AIyAqWGtGGGGMR);
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42 - 8);
  v141 = &v116 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v147 = &v116 - v46;
  if (a1)
  {
    v134 = a1;
    v47 = a1;
    v138 = AuthorizationViewModel.promptText.getter();
    v139 = v48;
    v49 = AuthorizationViewModel.shouldShowPassView.getter();
    v143 = v4;
    if (v49)
    {
      v50 = swift_allocObject();
      *(v50 + 16) = v47;
      type metadata accessor for AuthorizationViewModel();
      lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
      v51 = EnvironmentObject.init()();
      *v38 = v51;
      v38[1] = v52;
      v38[2] = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in AuthorizationEnterPasswordContentView.body.getter;
      v38[3] = v50;
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type AuthorizationPasscodeView and conformance AuthorizationPasscodeView();
      lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
      v53 = v51;

      _ConditionalContent<>.init(storage:)();
      outlined init with copy of LACUIAngelConnectionHandling?(v41, v137, &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMd, &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<AuthorizationPasscodeView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<(<<opaque return type of View.buttonStyle<A>(_:)>>.0)?, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();

      v54 = v41;
      v55 = &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMd;
      v56 = &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMR;
    }

    else if (AuthorizationViewModel.showBiometryIntentButton.getter())
    {

      v57 = swift_allocObject();
      v58 = v133;
      *(v57 + 16) = v134;
      *(v57 + 24) = v58;
      __chkstk_darwin(v57);
      *(&v116 - 2) = v60;
      *(&v116 - 1) = v59;
      v61 = v47;
      Button.init(action:label:)();
      v62 = v127;
      BorderedProminentButtonStyle.init()();
      lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
      lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, &type metadata accessor for BorderedProminentButtonStyle);
      v126 = v35;
      v63 = v32;
      v64 = v122;
      v65 = v129;
      View.buttonStyle<A>(_:)();
      (*(v128 + 8))(v62, v65);
      (*(v121 + 8))(v29, v64);
      v66 = static Edge.Set.bottom.getter();
      v67 = v63 + *(v132 + 36);
      *v67 = v66;
      *(v67 + 8) = 0u;
      *(v67 + 24) = 0u;
      *(v67 + 40) = 1;
      outlined init with copy of LACUIAngelConnectionHandling?(v63, v38, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA14_PaddingLayoutVGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type AuthorizationPasscodeView and conformance AuthorizationPasscodeView();
      lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of LACUIAngelConnectionHandling?(v41, v137, &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMd, &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<AuthorizationPasscodeView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<(<<opaque return type of View.buttonStyle<A>(_:)>>.0)?, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of LACUIAngelConnectionHandling?(v41, &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMd, &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMR);
      v54 = v63;
      v55 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA14_PaddingLayoutVGMd;
      v56 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA14_PaddingLayoutVGMR;
    }

    else if (AuthorizationViewModel.showBiometryRetryButton.getter())
    {
      v68 = AuthorizationViewModel.showBiometryRetryButton.getter();

      if (v68)
      {
        *&v164 = static LocalizedStrings.tryAgain.getter();
        *(&v164 + 1) = v69;
        v70 = swift_allocObject();
        v71 = v133;
        *(v70 + 16) = v134;
        *(v70 + 24) = v71;
        lazy protocol witness table accessor for type String and conformance String();
        v72 = v47;
        v73 = v118;
        Button<>.init<A>(_:action:)();
        v74 = static Edge.Set.all.getter();
        v75 = v73 + *(v131 + 36);
        *v75 = v74;
        *(v75 + 8) = 0u;
        *(v75 + 24) = 0u;
        *(v75 + 40) = 1;
        v76 = v127;
        BorderedProminentButtonStyle.init()();
        lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
        lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, &type metadata accessor for BorderedProminentButtonStyle);
        v77 = v117;
        v78 = v129;
        View.buttonStyle<A>(_:)();
        (*(v128 + 8))(v76, v78);
        outlined destroy of LACUIAngelConnectionHandling?(v73, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR);
        v80 = v119;
        v79 = v120;
        (*(v18 + 32))(v120, v77, v119);
        (*(v18 + 56))(v79, 0, 1, v80);
      }

      else
      {
        v79 = v120;
        (*(v18 + 56))(v120, 1, 1, v119);
      }

      outlined init with copy of LACUIAngelConnectionHandling?(v79, v125, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentgE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentgE0VQo_SgMR);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMR);
      lazy protocol witness table accessor for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?();
      lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMR);
      v91 = v126;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of LACUIAngelConnectionHandling?(v91, v137, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<AuthorizationPasscodeView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<(<<opaque return type of View.buttonStyle<A>(_:)>>.0)?, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of LACUIAngelConnectionHandling?(v91, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMR);
      v54 = v79;
      v55 = &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentgE0VQo_SgMd;
      v56 = &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentgE0VQo_SgMR;
    }

    else
    {

      v81 = static HorizontalAlignment.center.getter();
      v149 = 1;
      closure #4 in closure #1 in AuthorizationEnterPasswordContentView.body.getter(v134, &v164);
      v160 = v165[9];
      v161[0] = v165[10];
      *(v161 + 9) = *(&v165[10] + 9);
      v156 = v165[5];
      v157 = v165[6];
      v158 = v165[7];
      v159 = v165[8];
      v152 = v165[1];
      v153 = v165[2];
      v154 = v165[3];
      v155 = v165[4];
      v150 = v164;
      v151 = v165[0];
      v162[10] = v165[9];
      v163[0] = v165[10];
      *(v163 + 9) = *(&v165[10] + 9);
      v162[6] = v165[5];
      v162[7] = v165[6];
      v162[8] = v165[7];
      v162[9] = v165[8];
      v162[2] = v165[1];
      v162[3] = v165[2];
      v162[4] = v165[3];
      v162[5] = v165[4];
      v162[0] = v164;
      v162[1] = v165[0];
      outlined init with copy of LACUIAngelConnectionHandling?(&v150, v148, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy28LocalAuthenticationUIService0hD0VAA12_FrameLayoutVGAA08_PaddingK0VGAF5ShakeVG_AEyAA4TextVAMGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy28LocalAuthenticationUIService0hD0VAA12_FrameLayoutVGAA08_PaddingK0VGAF5ShakeVG_AEyAA4TextVAMGtGMR);
      outlined destroy of LACUIAngelConnectionHandling?(v162, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy28LocalAuthenticationUIService0hD0VAA12_FrameLayoutVGAA08_PaddingK0VGAF5ShakeVG_AEyAA4TextVAMGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy28LocalAuthenticationUIService0hD0VAA12_FrameLayoutVGAA08_PaddingK0VGAF5ShakeVG_AEyAA4TextVAMGtGMR);
      *&v148[151] = v159;
      *&v148[167] = v160;
      *&v148[183] = v161[0];
      *&v148[192] = *(v161 + 9);
      *&v148[87] = v155;
      *&v148[103] = v156;
      *&v148[119] = v157;
      *&v148[135] = v158;
      *&v148[23] = v151;
      *&v148[39] = v152;
      *&v148[55] = v153;
      *&v148[71] = v154;
      *&v148[7] = v150;
      *(&v165[9] + 1) = *&v148[144];
      *(&v165[10] + 1) = *&v148[160];
      *(&v165[11] + 1) = *&v148[176];
      *(&v165[12] + 1) = *(v161 + 9);
      *(&v165[5] + 1) = *&v148[80];
      *(&v165[6] + 1) = *&v148[96];
      *(&v165[7] + 1) = *&v148[112];
      *(&v165[8] + 1) = *&v148[128];
      *(&v165[1] + 1) = *&v148[16];
      *(&v165[2] + 1) = *&v148[32];
      *(&v165[3] + 1) = *&v148[48];
      v164 = v81;
      LOBYTE(v165[0]) = v149;
      *(&v165[4] + 1) = *&v148[64];
      *(v165 + 1) = *v148;
      v82 = v165[12];
      v83 = v125;
      *(v125 + 192) = v165[11];
      *(v83 + 208) = v82;
      *(v83 + 224) = v165[13];
      v84 = v165[8];
      *(v83 + 128) = v165[7];
      *(v83 + 144) = v84;
      v85 = v165[10];
      *(v83 + 160) = v165[9];
      *(v83 + 176) = v85;
      v86 = v165[4];
      *(v83 + 64) = v165[3];
      *(v83 + 80) = v86;
      v87 = v165[6];
      *(v83 + 96) = v165[5];
      *(v83 + 112) = v87;
      v88 = v165[0];
      *v83 = v164;
      *(v83 + 16) = v88;
      v89 = v165[2];
      *(v83 + 32) = v165[1];
      *(v83 + 48) = v89;
      swift_storeEnumTagMultiPayload();
      outlined init with copy of LACUIAngelConnectionHandling?(&v164, v148, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMR);
      lazy protocol witness table accessor for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?();
      lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMR);
      v90 = v126;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of LACUIAngelConnectionHandling?(v90, v137, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<AuthorizationPasscodeView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<(<<opaque return type of View.buttonStyle<A>(_:)>>.0)?, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of LACUIAngelConnectionHandling?(&v164, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMR);
      v54 = v90;
      v55 = &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMd;
      v56 = &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMR;
    }

    outlined destroy of LACUIAngelConnectionHandling?(v54, v55, v56);
    v92 = v144;
    v93 = AuthorizationViewModel.showFallbackButton.getter();

    v94 = v143;
    if (v93)
    {
      v95 = AuthorizationViewModel.devicePasscodeText.getter();
      v97 = v96;

      *&v164 = v95;
      *(&v164 + 1) = v97;
      v98 = swift_allocObject();
      v99 = v133;
      *(v98 + 16) = v134;
      *(v98 + 24) = v99;
      lazy protocol witness table accessor for type String and conformance String();
      v100 = v47;
      v101 = v130;
      Button<>.init<A>(_:action:)();
      v102 = static Edge.Set.bottom.getter();
      v103 = v101 + *(v131 + 36);
      *v103 = v102;
      *(v103 + 8) = 0u;
      *(v103 + 24) = 0u;
      *(v103 + 40) = 1;
      v104 = static Font.subheadline.getter();
      KeyPath = swift_getKeyPath();
      v106 = (v101 + *(v94 + 36));
      *v106 = KeyPath;
      v106[1] = v104;
      outlined init with take of _OpacityShapeStyle<Material>(v101, v92, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
      v107 = 0;
    }

    else
    {

      v107 = 1;
    }

    (*(v142 + 56))(v92, v107, 1, v94);
    v108 = v147;
    v109 = v141;
    outlined init with copy of LACUIAngelConnectionHandling?(v147, v141, &_s7SwiftUI19_ConditionalContentVyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGACyAkAEALyQrqd__AaMRd__lFQOyAIyArWG_ATQo_SgAA6VStackVyAA05TupleJ0VyAIyAIyAIyAD0fJ0VAA12_FrameLayoutVGAWGAD5ShakeVG_AIyAqWGtGGGGMd, &_s7SwiftUI19_ConditionalContentVyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGACyAkAEALyQrqd__AaMRd__lFQOyAIyArWG_ATQo_SgAA6VStackVyAA05TupleJ0VyAIyAIyAIyAD0fJ0VAA12_FrameLayoutVGAWGAD5ShakeVG_AIyAqWGtGGGGMR);
    v110 = v145;
    outlined init with copy of LACUIAngelConnectionHandling?(v92, v145, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
    v111 = v146;
    v112 = v139;
    *v146 = v138;
    v111[1] = v112;
    v113 = v92;
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService23AuthorizationPromptView33_DD63B0C55F42B89932B8BE62D7B51015LLV_7SwiftUI19_ConditionalContentVyAGyAA0d8PasscodeF0ACLLVAE08ModifiedS0VyAE0F0PAEE11buttonStyleyQrqd__AE015PrimitiveButtonW0Rd__lFQOyAE0Y0VyAE4TextVG_AE017BorderedProminentyW0VQo_AE14_PaddingLayoutVGGAGyAmEEANyQrqd__AeORd__lFQOyAKyAtYG_AVQo_SgAE6VStackVyAE05TupleF0VyAKyAKyAKyAA0bF0VAE12_FrameLayoutVGAYGAA5ShakeVG_AKyAsYGtGGGGAKyA0_AE30_EnvironmentKeyWritingModifierVyAE4FontVSgGGSgtMd, &_s28LocalAuthenticationUIService23AuthorizationPromptView33_DD63B0C55F42B89932B8BE62D7B51015LLV_7SwiftUI19_ConditionalContentVyAGyAA0d8PasscodeF0ACLLVAE08ModifiedS0VyAE0F0PAEE11buttonStyleyQrqd__AE015PrimitiveButtonW0Rd__lFQOyAE0Y0VyAE4TextVG_AE017BorderedProminentyW0VQo_AE14_PaddingLayoutVGGAGyAmEEANyQrqd__AeORd__lFQOyAKyAtYG_AVQo_SgAE6VStackVyAE05TupleF0VyAKyAKyAKyAA0bF0VAE12_FrameLayoutVGAYGAA5ShakeVG_AKyAsYGtGGGGAKyA0_AE30_EnvironmentKeyWritingModifierVyAE4FontVSgGGSgtMR);
    outlined init with copy of LACUIAngelConnectionHandling?(v109, v111 + *(v114 + 48), &_s7SwiftUI19_ConditionalContentVyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGACyAkAEALyQrqd__AaMRd__lFQOyAIyArWG_ATQo_SgAA6VStackVyAA05TupleJ0VyAIyAIyAIyAD0fJ0VAA12_FrameLayoutVGAWGAD5ShakeVG_AIyAqWGtGGGGMd, &_s7SwiftUI19_ConditionalContentVyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGACyAkAEALyQrqd__AaMRd__lFQOyAIyArWG_ATQo_SgAA6VStackVyAA05TupleJ0VyAIyAIyAIyAD0fJ0VAA12_FrameLayoutVGAWGAD5ShakeVG_AIyAqWGtGGGGMR);
    outlined init with copy of LACUIAngelConnectionHandling?(v110, v111 + *(v114 + 64), &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);

    outlined destroy of LACUIAngelConnectionHandling?(v113, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
    outlined destroy of LACUIAngelConnectionHandling?(v108, &_s7SwiftUI19_ConditionalContentVyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGACyAkAEALyQrqd__AaMRd__lFQOyAIyArWG_ATQo_SgAA6VStackVyAA05TupleJ0VyAIyAIyAIyAD0fJ0VAA12_FrameLayoutVGAWGAD5ShakeVG_AIyAqWGtGGGGMd, &_s7SwiftUI19_ConditionalContentVyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGACyAkAEALyQrqd__AaMRd__lFQOyAIyArWG_ATQo_SgAA6VStackVyAA05TupleJ0VyAIyAIyAIyAD0fJ0VAA12_FrameLayoutVGAWGAD5ShakeVG_AIyAqWGtGGGGMR);
    outlined destroy of LACUIAngelConnectionHandling?(v110, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
    outlined destroy of LACUIAngelConnectionHandling?(v109, &_s7SwiftUI19_ConditionalContentVyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGACyAkAEALyQrqd__AaMRd__lFQOyAIyArWG_ATQo_SgAA6VStackVyAA05TupleJ0VyAIyAIyAIyAD0fJ0VAA12_FrameLayoutVGAWGAD5ShakeVG_AIyAqWGtGGGGMd, &_s7SwiftUI19_ConditionalContentVyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGACyAkAEALyQrqd__AaMRd__lFQOyAIyArWG_ATQo_SgAA6VStackVyAA05TupleJ0VyAIyAIyAIyAD0fJ0VAA12_FrameLayoutVGAWGAD5ShakeVG_AIyAqWGtGGGGMR);
  }

  else
  {
    type metadata accessor for AuthorizationViewModel();
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #4 in closure #1 in AuthorizationEnterPasswordContentView.body.getter@<X0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v65 = &v61[-v6];
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *&a1[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context];
  v13 = a1;
  v14 = v12;
  v15 = v13;
  v69 = AuthenticationView.init(context:delegate:)(v14, a1);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v71 = v140;
  LODWORD(v14) = v141;
  v73 = v142;
  LODWORD(a1) = v143;
  v67 = v145;
  v68 = v144;
  v66 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v72 = v14;
  v139 = v14;
  v74 = a1;
  v138 = a1;
  v137 = 0;
  AuthorizationViewModel.wrongBioAttempts.getter();

  default argument 0 of Shake.init(amount:shakesPerUnit:animatableData:)();
  v24 = default argument 0 of Logger(category:)();
  v25 = LACPolicy.policy.getter(v24);
  v27 = v26;
  v70 = v25;
  v29 = v28;
  v64 = AuthorizationViewModel.biometrySubtitle.getter();

  (*(v8 + 104))(v11, enum case for Font.TextStyle.subheadline(_:), v7);
  v30 = type metadata accessor for Font.Design();
  v31 = v65;
  (*(*(v30 - 8) + 56))(v65, 1, 1, v30);
  static Font.system(_:design:weight:)();
  outlined destroy of LACUIAngelConnectionHandling?(v31, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(v8 + 8))(v11, v7);
  v32 = Text.font(_:)();
  v63 = v33;
  v64 = v32;
  v35 = v34;
  v65 = v36;

  v62 = static Edge.Set.bottom.getter();
  v37 = AuthorizationViewModel.biometryType.getter();

  if (v37 != 1)
  {
    v38 = v15[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_isPad];
  }

  EdgeInsets.init(_all:)();
  v132 = v35 & 1;
  v129 = 0;
  v40 = v68;
  v39 = v69;
  *&v87 = v69;
  *(&v87 + 1) = v71;
  LOBYTE(v88) = v72;
  *(&v88 + 1) = *v136;
  DWORD1(v88) = *&v136[3];
  *(&v88 + 1) = v73;
  LOBYTE(v89) = v74;
  DWORD1(v89) = *&v135[3];
  *(&v89 + 1) = *v135;
  v41 = v67;
  *(&v89 + 1) = v68;
  *&v90 = v67;
  v42 = v66;
  BYTE8(v90) = v66;
  HIDWORD(v90) = *&v134[3];
  *(&v90 + 9) = *v134;
  *&v91 = v17;
  *(&v91 + 1) = v19;
  *&v92 = v21;
  *(&v92 + 1) = v23;
  LOBYTE(v93) = 0;
  DWORD1(v93) = *&v133[3];
  *(&v93 + 1) = *v133;
  *(&v93 + 1) = v27;
  *&v94 = v70;
  *(&v94 + 1) = v29;
  v77 = v89;
  v78 = v90;
  v75 = v87;
  v76 = v88;
  v81 = v93;
  v82 = v94;
  v79 = v91;
  v80 = v92;
  v44 = v63;
  v43 = v64;
  *&v95 = v64;
  *(&v95 + 1) = v63;
  LOBYTE(v96) = v35 & 1;
  DWORD1(v96) = *&v131[3];
  *(&v96 + 1) = *v131;
  v45 = v65;
  *(&v96 + 1) = v65;
  v46 = v62;
  LOBYTE(v97) = v62;
  DWORD1(v97) = *&v130[3];
  *(&v97 + 1) = *v130;
  *(&v97 + 1) = v47;
  *&v98[0] = v48;
  *(&v98[0] + 1) = v49;
  *&v98[1] = v50;
  BYTE8(v98[1]) = 0;
  *(v86 + 9) = *(v98 + 9);
  v85 = v97;
  v86[0] = v98[0];
  v83 = v95;
  v84 = v96;
  v51 = v87;
  v52 = v88;
  v53 = v90;
  a2[2] = v89;
  a2[3] = v53;
  *a2 = v51;
  a2[1] = v52;
  v54 = v79;
  v55 = v80;
  v56 = v82;
  a2[6] = v81;
  a2[7] = v56;
  a2[4] = v54;
  a2[5] = v55;
  v57 = v83;
  v58 = v84;
  *(a2 + 185) = *(v86 + 9);
  v59 = v86[0];
  a2[10] = v85;
  a2[11] = v59;
  a2[8] = v57;
  a2[9] = v58;
  v99[0] = v43;
  v99[1] = v44;
  v100 = v35 & 1;
  *v101 = *v131;
  *&v101[3] = *&v131[3];
  v102 = v45;
  v103 = v46;
  *v104 = *v130;
  *&v104[3] = *&v130[3];
  v105 = v47;
  v106 = v48;
  v107 = v49;
  v108 = v50;
  v109 = 0;
  outlined init with copy of LACUIAngelConnectionHandling?(&v87, v110, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService0F4ViewVAA12_FrameLayoutVGAA08_PaddingJ0VGAD5ShakeVGMd, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService0F4ViewVAA12_FrameLayoutVGAA08_PaddingJ0VGAD5ShakeVGMR);
  outlined init with copy of LACUIAngelConnectionHandling?(&v95, v110, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
  outlined destroy of LACUIAngelConnectionHandling?(v99, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
  v110[0] = v39;
  v110[1] = v71;
  v111 = v72;
  *v112 = *v136;
  *&v112[3] = *&v136[3];
  v113 = v73;
  v114 = v74;
  *v115 = *v135;
  *&v115[3] = *&v135[3];
  v116 = v40;
  v117 = v41;
  v118 = v42;
  *&v119[3] = *&v134[3];
  *v119 = *v134;
  v120 = v17;
  v121 = v19;
  v122 = v21;
  v123 = v23;
  v124 = 0;
  *v125 = *v133;
  *&v125[3] = *&v133[3];
  v126 = v27;
  v127 = v70;
  v128 = v29;
  return outlined destroy of LACUIAngelConnectionHandling?(v110, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService0F4ViewVAA12_FrameLayoutVGAA08_PaddingJ0VGAD5ShakeVGMd, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService0F4ViewVAA12_FrameLayoutVGAA08_PaddingJ0VGAD5ShakeVGMR);
}

uint64_t protocol witness for View.body.getter in conformance AuthorizationEnterPasswordContentView@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0Vy28LocalAuthenticationUIService019AuthorizationPromptD033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA19_ConditionalContentVyAOyAJ0l8PasscodeD0ALLLVAA08ModifiedX0VyAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA4TextVG_AA28BorderedProminentButtonStyleVQo_AA08_PaddingG0VGGAOyAuAEAVyQrqd__AaWRd__lFQOyASyA0_A5_G_A2_Qo_SgAA0F0VyAIyASyASyASyAJ0jD0VAA06_FrameG0VGA5_GAJ5ShakeVG_ASyA_A5_GtGGGGASyA8_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0Vy28LocalAuthenticationUIService019AuthorizationPromptD033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA19_ConditionalContentVyAOyAJ0l8PasscodeD0ALLLVAA08ModifiedX0VyAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA4TextVG_AA28BorderedProminentButtonStyleVQo_AA08_PaddingG0VGGAOyAuAEAVyQrqd__AaWRd__lFQOyASyA0_A5_G_A2_Qo_SgAA0F0VyAIyASyASyASyAJ0jD0VAA06_FrameG0VGA5_GAJ5ShakeVG_ASyA_A5_GtGGGGASyA8_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGMR);
  return closure #1 in AuthorizationEnterPasswordContentView.body.getter(v4, v3, (a1 + *(v5 + 44)));
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AuthorizationRegisterPasswordContentView.Mode(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

void closure #1 in AuthorizationRegisterPasswordContentView.body.getter(char **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  v24 = *(a1 + 1);
  *&v25 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGMd, &_s7SwiftUI5StateVy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGMR);
  State.wrappedValue.getter();
  if (v23)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = [*&v5[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_configuration] verifyPrompt];
      if (v6)
      {
        v7 = v6;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v28 = *(a1 + 1);
      v29 = v4;
      v11 = swift_allocObject();
      *(v11 + 16) = v22;
      *(v11 + 24) = v23;
      v12 = *(a1 + 1);
      *(v11 + 32) = *a1;
      *(v11 + 48) = v12;
      *(v11 + 64) = a1[4];
      v13 = v5;
      outlined init with copy of AuthorizationRegisterPasswordContentView.Mode(&v28, &v24);
      outlined init with copy of LACUIAngelConnectionHandling?(&v29, &v24, &_s7SwiftUI11AnyLocationCy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGSgMd, &_s7SwiftUI11AnyLocationCy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGSgMR);
      type metadata accessor for AuthorizationViewModel();
      lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
      v14 = EnvironmentObject.init()();

LABEL_10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy28LocalAuthenticationUIService019AuthorizationPromptD033_DD63B0C55F42B89932B8BE62D7B51015LLV_AD0h8PasscodeD0AFLLVtGMd, &_s7SwiftUI9TupleViewVy28LocalAuthenticationUIService019AuthorizationPromptD033_DD63B0C55F42B89932B8BE62D7B51015LLV_AD0h8PasscodeD0AFLLVtGMR);
      lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type TupleView<(AuthorizationPromptView, AuthorizationPasscodeView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy28LocalAuthenticationUIService019AuthorizationPromptD033_DD63B0C55F42B89932B8BE62D7B51015LLV_AD0h8PasscodeD0AFLLVtGMd, &_s7SwiftUI9TupleViewVy28LocalAuthenticationUIService019AuthorizationPromptD033_DD63B0C55F42B89932B8BE62D7B51015LLV_AD0h8PasscodeD0AFLLVtGMR);
      _ConditionalContent<>.init(storage:)();

      v18 = v25;
      v19 = v26;
      v20 = v27;
      *a2 = v24;
      *(a2 + 16) = v18;
      *(a2 + 32) = v19;
      *(a2 + 48) = v20;
      return;
    }
  }

  else
  {
    v8 = *a1;
    if (*a1)
    {
      v9 = [*&v8[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_configuration] prompt];
      if (v9)
      {
        v10 = v9;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v28 = *(a1 + 1);
      v29 = v4;
      v15 = swift_allocObject();
      v16 = *(a1 + 1);
      *(v15 + 16) = *a1;
      *(v15 + 32) = v16;
      *(v15 + 48) = a1[4];
      v17 = v8;
      outlined init with copy of AuthorizationRegisterPasswordContentView.Mode(&v28, &v24);
      outlined init with copy of LACUIAngelConnectionHandling?(&v29, &v24, &_s7SwiftUI11AnyLocationCy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGSgMd, &_s7SwiftUI11AnyLocationCy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGSgMR);
      type metadata accessor for AuthorizationViewModel();
      lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
      v14 = EnvironmentObject.init()();

      goto LABEL_10;
    }
  }

  v21 = a1[1];
  type metadata accessor for AuthorizationViewModel();
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
  EnvironmentObject.error()();
  __break(1u);
}

__n128 protocol witness for View.body.getter in conformance AuthorizationRegisterPasswordContentView@<Q0>(uint64_t a1@<X8>)
{
  v3 = static HorizontalAlignment.center.getter();
  v11 = 1;
  closure #1 in AuthorizationRegisterPasswordContentView.body.getter(v1, v9);
  v4 = v10;
  result = v9[0];
  v6 = v9[1];
  v7 = v9[2];
  v8 = v11;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = result;
  *(a1 + 40) = v6;
  *(a1 + 56) = v7;
  *(a1 + 72) = v4;
  return result;
}

uint64_t AuthorizationBackgroundView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v5 = type metadata accessor for OpacityTransition();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v21 - v11;
  static Color.black.getter();
  if (a1)
  {
    v13 = a1;
    AuthorizationViewModel.backgroundOpacity.getter();

    v14 = Color.opacity(_:)();

    v15 = static SafeAreaRegions.all.getter();
    v16 = static Edge.Set.all.getter();
    OpacityTransition.init()();
    (*(v6 + 16))(v10, v12, v5);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, &type metadata accessor for OpacityTransition);
    v17 = AnyTransition.init<A>(_:)();
    (*(v6 + 8))(v12, v5);
    v21[2] = v14;
    v21[3] = v15;
    v22 = v16;
    v23 = v17;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    v19 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA30_SafeAreaRegionsIgnoringLayoutVGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA30_SafeAreaRegionsIgnoringLayoutVGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    View.onTapGesture(count:perform:)();
  }

  else
  {
    type metadata accessor for AuthorizationViewModel();
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in AuthorizationHeaderView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v118 = &v112 - v5;
  v119 = type metadata accessor for Font.TextStyle();
  v117 = *(v119 - 8);
  v6 = *(v117 + 64);
  __chkstk_darwin(v119);
  v116 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for Image.ResizingMode();
  v8 = *(v120 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v120);
  v11 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGMR);
  v121 = *(v12 - 8);
  v122 = v12;
  v13 = *(v121 + 64);
  __chkstk_darwin(v12);
  v15 = &v112 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v124 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v126 = &v112 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGMR);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v112 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSgMR);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v123 = &v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v127 = &v112 - v30;
  v31 = a1;
  if (*a1)
  {
    v32 = *a1;
    v33 = AuthorizationViewModel.requiresHeaderHidden.getter();

    if (v33)
    {
      (*(v22 + 56))(v127, 1, 1, v21);
    }

    else
    {
      *v25 = static HorizontalAlignment.center.getter();
      *(v25 + 1) = 0;
      v25[16] = 0;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA6HStackVyAIyAA4TextV_AA6SpacerVAKyAA6ButtonVyAOGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA08_PaddingG0VGA4_G_AA7DividerVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA6HStackVyAIyAA4TextV_AA6SpacerVAKyAA6ButtonVyAOGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA08_PaddingG0VGA4_G_AA7DividerVtGGMR);
      closure #1 in closure #1 in AuthorizationHeaderView.body.getter(v31, &v25[*(v34 + 44)]);
      v35 = v25;
      v36 = v127;
      outlined init with take of _OpacityShapeStyle<Material>(v35, v127, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGMR);
      (*(v22 + 56))(v36, 0, 1, v21);
    }

    v37 = v32;
    v38 = AuthorizationViewModel.appIcon.getter();

    if (v38)
    {
      v115 = v38;
      Image.init(uiImage:)();
      v39 = v120;
      (*(v8 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v120);
      v114 = Image.resizable(capInsets:resizingMode:)();

      (*(v8 + 8))(v11, v39);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v120 = v161;
      v40 = v162;
      v41 = v163;
      v42 = v164;
      v43 = v165;
      v113 = v166;
      v44 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGMR) + 36)];
      v45 = *(type metadata accessor for RoundedRectangle() + 20);
      v46 = enum case for RoundedCornerStyle.continuous(_:);
      v47 = type metadata accessor for RoundedCornerStyle();
      (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
      __asm { FMOV            V0.2D, #10.0 }

      *v44 = _Q0;
      *&v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)] = 256;
      v53 = v120;
      *v15 = v114;
      *(v15 + 1) = v53;
      v15[16] = v40;
      *(v15 + 3) = v41;
      v15[32] = v42;
      v54 = v113;
      *(v15 + 5) = v43;
      *(v15 + 6) = v54;
      LOBYTE(v43) = static Edge.Set.top.getter();
      EdgeInsets.init(_all:)();
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v62 = v61;

      v63 = v122;
      v64 = &v15[*(v122 + 36)];
      *v64 = v43;
      *(v64 + 1) = v56;
      *(v64 + 2) = v58;
      *(v64 + 3) = v60;
      *(v64 + 4) = v62;
      v64[40] = 0;
      v65 = v126;
      outlined init with take of _OpacityShapeStyle<Material>(v15, v126, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGMR);
      v66 = 0;
    }

    else
    {
      v66 = 1;
      v65 = v126;
      v63 = v122;
    }

    (*(v121 + 56))(v65, v66, 1, v63);
    v67 = v37;
    v68 = AuthorizationViewModel.subtitle.getter();
    v70 = v69;

    if (v70)
    {
      v71 = HIBYTE(v70) & 0xF;
      if ((v70 & 0x2000000000000000) == 0)
      {
        v71 = v68 & 0xFFFFFFFFFFFFLL;
      }

      if (v71)
      {
        v73 = v116;
        v72 = v117;
        v74 = v119;
        (*(v117 + 104))(v116, enum case for Font.TextStyle.body(_:), v119);
        v75 = type metadata accessor for Font.Design();
        v76 = v118;
        (*(*(v75 - 8) + 56))(v118, 1, 1, v75);
        static Font.system(_:design:weight:)();
        outlined destroy of LACUIAngelConnectionHandling?(v76, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
        (*(v72 + 8))(v73, v74);
        v77 = Text.font(_:)();
        v79 = v78;
        LOBYTE(v76) = v80;
        v82 = v81;

        KeyPath = swift_getKeyPath();
        v84 = static Edge.Set.vertical.getter();
        EdgeInsets.init(_all:)();
        v86 = v85;
        v88 = v87;
        v90 = v89;
        v92 = v91;
        LOBYTE(v73) = v76 & 1;
        LOBYTE(v141) = v76 & 1;
        LOBYTE(v139[0]) = 0;
        LOBYTE(v76) = static Edge.Set.horizontal.getter();
        LOBYTE(v150) = 1;
        v93 = swift_getKeyPath();
        *&v141 = v77;
        *(&v141 + 1) = v79;
        LOBYTE(v142) = v73;
        v65 = v126;
        *(&v142 + 1) = v82;
        *&v143 = KeyPath;
        BYTE8(v143) = 1;
        LOBYTE(v144) = v84;
        *(&v144 + 1) = v86;
        *&v145 = v88;
        *(&v145 + 1) = v90;
        *&v146 = v92;
        BYTE8(v146) = 0;
        LOBYTE(v147[0]) = v76;
        *(v147 + 8) = 0u;
        *(&v147[1] + 8) = 0u;
        BYTE8(v147[2]) = 1;
        *&v148 = v93;
        *(&v148 + 1) = 5;
        v149 = 0;
        LACPolicy.policy.getter(&v141);
        v158 = v147[2];
        v159 = v148;
        v160 = v149;
        v154 = v145;
        v155 = v146;
        v156 = v147[0];
        v157 = v147[1];
        v150 = v141;
        v151 = v142;
        v152 = v143;
        v153 = v144;
LABEL_15:
        v94 = v127;
        v95 = v123;
        outlined init with copy of LACUIAngelConnectionHandling?(v127, v123, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSgMR);
        v96 = v124;
        outlined init with copy of LACUIAngelConnectionHandling?(v65, v124, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGSgMR);
        v136 = v158;
        v137 = v159;
        v138 = v160;
        v132 = v154;
        v133 = v155;
        v134 = v156;
        v135 = v157;
        v128 = v150;
        v129 = v151;
        v130 = v152;
        v131 = v153;
        v97 = v125;
        outlined init with copy of LACUIAngelConnectionHandling?(v95, v125, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSgMR);
        v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSg_AGyAGyAGyAA5ImageVAA06_FrameR0VGAA11_ClipEffectVyAA16RoundedRectangleVGGA0_GSgAGyAGyAGyAGyAkRyAA0I9AlignmentOGGA0_GA0_GARySiSgGGSgtMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSg_AGyAGyAGyAA5ImageVAA06_FrameR0VGAA11_ClipEffectVyAA16RoundedRectangleVGGA0_GSgAGyAGyAGyAGyAkRyAA0I9AlignmentOGGA0_GA0_GARySiSgGGSgtMR);
        outlined init with copy of LACUIAngelConnectionHandling?(v96, v97 + *(v98 + 48), &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGSgMR);
        v99 = *(v98 + 64);
        v100 = v137;
        v139[8] = v136;
        v139[9] = v137;
        v101 = v132;
        v102 = v133;
        v139[4] = v132;
        v139[5] = v133;
        v104 = v134;
        v103 = v135;
        v139[6] = v134;
        v139[7] = v135;
        v105 = v128;
        v106 = v129;
        v139[0] = v128;
        v139[1] = v129;
        v108 = v130;
        v107 = v131;
        v139[2] = v130;
        v139[3] = v131;
        v109 = v97 + v99;
        *(v109 + 128) = v136;
        *(v109 + 144) = v100;
        *(v109 + 64) = v101;
        *(v109 + 80) = v102;
        *(v109 + 96) = v104;
        *(v109 + 112) = v103;
        *v109 = v105;
        *(v109 + 16) = v106;
        v140 = v138;
        *(v109 + 160) = v138;
        *(v109 + 32) = v108;
        *(v109 + 48) = v107;
        outlined init with copy of LACUIAngelConnectionHandling?(v139, &v141, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGSgMR);
        outlined destroy of LACUIAngelConnectionHandling?(v65, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGSgMR);
        outlined destroy of LACUIAngelConnectionHandling?(v94, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSgMR);
        v147[2] = v136;
        v148 = v137;
        v149 = v138;
        v145 = v132;
        v146 = v133;
        v147[0] = v134;
        v147[1] = v135;
        v141 = v128;
        v142 = v129;
        v143 = v130;
        v144 = v131;
        outlined destroy of LACUIAngelConnectionHandling?(&v141, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGSgMR);
        outlined destroy of LACUIAngelConnectionHandling?(v96, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGSgMR);
        return outlined destroy of LACUIAngelConnectionHandling?(v95, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSgMR);
      }
    }

    _s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGSgWOi0_(&v150);
    goto LABEL_15;
  }

  v111 = *(a1 + 8);
  type metadata accessor for AuthorizationViewModel();
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in AuthorizationHeaderView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v37 = type metadata accessor for Divider();
  v3 = *(v37 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v37);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZGMR);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  *v16 = static VerticalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGMR);
  closure #1 in closure #1 in closure #1 in AuthorizationHeaderView.body.getter(a1, &v16[*(v17 + 44)]);
  LOBYTE(a1) = static Edge.Set.horizontal.getter();
  v18 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGMR) + 36)];
  *v18 = a1;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 1;
  LOBYTE(a1) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v19 = &v16[*(v10 + 44)];
  *v19 = a1;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  Divider.init()();
  v24 = v14;
  v35 = v14;
  outlined init with copy of LACUIAngelConnectionHandling?(v16, v14, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZGMR);
  v25 = v3[2];
  v26 = v36;
  v27 = v8;
  v28 = v8;
  v29 = v37;
  v25(v36, v27, v37);
  v30 = v24;
  v31 = v38;
  outlined init with copy of LACUIAngelConnectionHandling?(v30, v38, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZGMR);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZG_AA7DividerVtMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZG_AA7DividerVtMR);
  v25((v31 + *(v32 + 48)), v26, v29);
  v33 = v3[1];
  v33(v28, v29);
  outlined destroy of LACUIAngelConnectionHandling?(v16, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZGMR);
  v33(v26, v29);
  return outlined destroy of LACUIAngelConnectionHandling?(v35, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in AuthorizationHeaderView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.TextStyle();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = *(v66 + 64);
  __chkstk_darwin(v4);
  v65 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AuthorizationHeaderView();
  v60 = *(v7 - 8);
  v8 = *(v60 + 64);
  __chkstk_darwin(v7);
  v61 = v9;
  v62 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = *(v69 + 64);
  __chkstk_darwin(v10);
  v64 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v72 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v71 = &v59 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v59 - v20;
  if (*a1)
  {
    v22 = *a1;
    AuthorizationViewModel.title.getter();

    v23 = *(v7 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
    v63 = a1;
    ScaledMetric.wrappedValue.getter();
    static Font.Weight.semibold.getter();
    v24 = enum case for Font.Design.default(_:);
    v25 = type metadata accessor for Font.Design();
    v26 = *(v25 - 8);
    (*(v26 + 104))(v21, v24, v25);
    v59 = *(v26 + 56);
    v59(v21, 0, 1, v25);
    static Font.system(size:weight:design:)();
    outlined destroy of LACUIAngelConnectionHandling?(v21, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
    v27 = Text.font(_:)();
    v29 = v28;
    v68 = v30;
    v32 = v31;

    v33 = v22;
    v34 = AuthorizationViewModel.cancelButtonTitle.getter();
    v36 = v35;

    if (v36)
    {
      v37 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v37 = v34 & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        v73 = v34;
        v74 = v36;
        v38 = v62;
        outlined init with copy of AuthorizationHeaderView(v63, v62);
        v39 = (*(v60 + 80) + 16) & ~*(v60 + 80);
        v40 = swift_allocObject();
        outlined init with take of AuthorizationHeaderView(v38, v40 + v39, type metadata accessor for AuthorizationHeaderView);
        lazy protocol witness table accessor for type String and conformance String();
        v63 = v32;
        v41 = v64;
        Button<>.init<A>(_:action:)();
        v43 = v66;
        v42 = v67;
        v44 = *(v66 + 104);
        v62 = v27;
        v45 = v65;
        v44(v65, enum case for Font.TextStyle.body(_:), v67);
        v59(v21, 1, 1, v25);
        v46 = static Font.system(_:design:weight:)();
        outlined destroy of LACUIAngelConnectionHandling?(v21, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
        v47 = v45;
        v27 = v62;
        (*(v43 + 8))(v47, v42);
        KeyPath = swift_getKeyPath();
        v49 = v70;
        v50 = v71;
        v51 = &v41[*(v70 + 36)];
        *v51 = KeyPath;
        v51[1] = v46;
        v52 = v41;
        v32 = v63;
        outlined init with take of _OpacityShapeStyle<Material>(v52, v50, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
        v53 = 0;
LABEL_9:
        (*(v69 + 56))(v50, v53, 1, v49);
        v54 = v72;
        outlined init with copy of LACUIAngelConnectionHandling?(v50, v72, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
        *a2 = v27;
        *(a2 + 8) = v29;
        v55 = v68 & 1;
        *(a2 + 16) = v68 & 1;
        *(a2 + 24) = v32;
        *(a2 + 32) = 0;
        *(a2 + 40) = 1;
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyACGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtMd, &_s7SwiftUI4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyACGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtMR);
        outlined init with copy of LACUIAngelConnectionHandling?(v54, a2 + *(v56 + 64), &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
        outlined copy of Text.Storage(v27, v29, v55);

        outlined destroy of LACUIAngelConnectionHandling?(v50, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
        outlined destroy of LACUIAngelConnectionHandling?(v54, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
        outlined consume of Text.Storage(v27, v29, v55);
      }
    }

    v53 = 1;
    v49 = v70;
    v50 = v71;
    goto LABEL_9;
  }

  v58 = *(a1 + 8);
  type metadata accessor for AuthorizationViewModel();
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t protocol witness for View.body.getter in conformance AuthorizationHeaderView@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0F0VyAIyAA15ModifiedContentVyAMyAA6HStackVyAIyAA4TextV_AA6SpacerVAMyAA6ButtonVyAQGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA08_PaddingG0VGA6_G_AA7DividerVtGGSg_AMyAMyAMyAA5ImageVAA06_FrameG0VGAA11_ClipEffectVyAA16RoundedRectangleVGGA6_GSgAMyAMyAMyAMyAqXyAA0L9AlignmentOGGA6_GA6_GAXySiSgGGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0F0VyAIyAA15ModifiedContentVyAMyAA6HStackVyAIyAA4TextV_AA6SpacerVAMyAA6ButtonVyAQGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA08_PaddingG0VGA6_G_AA7DividerVtGGSg_AMyAMyAMyAA5ImageVAA06_FrameG0VGAA11_ClipEffectVyAA16RoundedRectangleVGGA6_GSgAMyAMyAMyAMyAqXyAA0L9AlignmentOGGA6_GA6_GAXySiSgGGSgtGGMR);
  return closure #1 in AuthorizationHeaderView.body.getter(v1, a1 + *(v3 + 44));
}

uint64_t closure #1 in AuthorizationPasscodeView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v37 = a3;
  v38 = a2;
  v41 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v30[-v7];
  v9 = type metadata accessor for PasscodeEmbeddedView(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v40 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGMR);
  v12 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v14 = &v30[-v13];
  if (a1)
  {
    v15 = a1;
    v35 = AuthorizationViewModel.passcodeLength.getter();
    v16 = AuthorizationViewModel.passwordType.getter();
    v36 = LACustomPasswordTypeAlphanumeric;
    v34 = v16 == LACustomPasswordTypeAlphanumeric;
    v17 = AuthorizationViewModel.passwordFieldPlaceholder.getter();
    v32 = v18;
    v33 = v17;
    v31 = AuthorizationViewModel.shouldDismissKeyboardOnDissapear.getter();
    type metadata accessor for AuthorizationViewModel();
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
    v19 = EnvironmentObject.projectedValue.getter();
    swift_getKeyPath();
    EnvironmentObject.Wrapper.subscript.getter();

    v20 = v42;
    v21 = v43;
    v22 = EnvironmentObject.projectedValue.getter();
    swift_getKeyPath();
    EnvironmentObject.Wrapper.subscript.getter();

    v24 = v40;
    PasscodeEmbeddedView.init(passcodeLength:alphanumeric:placeholder:dismissKeyboardOnDissappear:passcodeFocused:blockedUntil:verifyPasscode:)(v35, v34, v33, v32, v31 & 1, v20, *(&v20 + 1), v21, v40, v8, v38, v23);
    AuthorizationViewModel.passwordType.getter();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    outlined init with take of AuthorizationHeaderView(v24, v14, type metadata accessor for PasscodeEmbeddedView);
    v25 = &v14[*(v39 + 36)];
    v26 = v43;
    *v25 = v42;
    v25[1] = v26;
    v25[2] = v44;
    LOBYTE(v22) = static Edge.Set.horizontal.getter();
    v27 = v41;
    outlined init with take of _OpacityShapeStyle<Material>(v14, v41, &_s7SwiftUI15ModifiedContentVy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGMR);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGAA08_PaddingL0VGMd, &_s7SwiftUI15ModifiedContentVyACy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGAA08_PaddingL0VGMR);
    v29 = v27 + *(result + 36);
    *v29 = v22;
    *(v29 + 8) = 0u;
    *(v29 + 24) = 0u;
    *(v29 + 40) = 1;
  }

  else
  {
    type metadata accessor for AuthorizationViewModel();
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t key path getter for AuthorizationViewModel.passcodeFocused : AuthorizationViewModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = AuthorizationViewModel.passcodeFocused.getter();
  *a2 = result & 1;
  return result;
}

uint64_t key path setter for AuthorizationViewModel.passcodeFocused : AuthorizationViewModel(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return AuthorizationViewModel.passcodeFocused.setter();
}

uint64_t key path setter for AuthorizationViewModel.blockedUntilDate : AuthorizationViewModel(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of LACUIAngelConnectionHandling?(a1, &v10 - v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *a2;
  return AuthorizationViewModel.blockedUntilDate.setter(v7);
}

uint64_t protocol witness for View.body.getter in conformance AuthorizationPasscodeView@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  closure #1 in AuthorizationPasscodeView.body.getter(*v1, *(v1 + 16), *(v1 + 24), a1);
  v4 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyACyACy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGAA08_PaddingM0VGGAMGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyACyACy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGAA08_PaddingM0VGGAMGMR);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

double AuthorizationPromptView.body.getter@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v44 - v8;
  v10 = type metadata accessor for Font.TextStyle();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_6;
  }

  v15 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    (*(v11 + 104))(v14, enum case for Font.TextStyle.body(_:), v10);
    v16 = type metadata accessor for Font.Design();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);

    static Font.system(_:design:weight:)();
    outlined destroy of LACUIAngelConnectionHandling?(v9, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
    (*(v11 + 8))(v14, v10);
    v17 = Text.font(_:)();
    v45 = v18;
    v46 = v17;
    v20 = v19;
    v22 = v21;

    KeyPath = swift_getKeyPath();
    v24 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = v20 & 1;
    LOBYTE(v67) = v20 & 1;
    LOBYTE(v47) = 0;
    v34 = static Edge.Set.horizontal.getter();
    LOBYTE(v58) = 1;
    v35 = swift_getKeyPath();
    LOBYTE(v67) = 0;
    v36 = static Color.secondary.getter();
    v37 = swift_getKeyPath();
    *&v58 = v46;
    *(&v58 + 1) = v45;
    LOBYTE(v59) = v33;
    *(&v59 + 1) = v22;
    *&v60 = KeyPath;
    BYTE8(v60) = 1;
    LOBYTE(v61) = v24;
    *(&v61 + 1) = v26;
    *&v62 = v28;
    *(&v62 + 1) = v30;
    *&v63 = v32;
    BYTE8(v63) = 0;
    LOBYTE(v64[0]) = v34;
    *(v64 + 8) = 0u;
    *(&v64[1] + 8) = 0u;
    BYTE8(v64[2]) = 1;
    *&v65 = v35;
    *(&v65 + 1) = 3;
    LOBYTE(v66[0]) = 0;
    *(&v66[0] + 1) = v37;
    *&v66[1] = v36;
    _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA14_PaddingLayoutVGAQGAKySiSgGGAKyAA5ColorVSgGGAA9EmptyViewV_GWOi_(&v58);
  }

  else
  {
LABEL_6:
    _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA14_PaddingLayoutVGAQGAKySiSgGGAKyAA5ColorVSgGGAA9EmptyViewV_GWOi0_(&v58);
  }

  v55 = v64[2];
  v56 = v65;
  v57[0] = v66[0];
  *(v57 + 9) = *(v66 + 9);
  v51 = v62;
  v52 = v63;
  v53 = v64[0];
  v54 = v64[1];
  v47 = v58;
  v48 = v59;
  v49 = v60;
  v50 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGAGyAA5ColorVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v38 = v76;
  a3[8] = v75;
  a3[9] = v38;
  a3[10] = v77[0];
  *(a3 + 169) = *(v77 + 9);
  v39 = v72;
  a3[4] = v71;
  a3[5] = v39;
  v40 = v74;
  a3[6] = v73;
  a3[7] = v40;
  v41 = v68;
  *a3 = v67;
  a3[1] = v41;
  result = *&v69;
  v43 = v70;
  a3[2] = v69;
  a3[3] = v43;
  return result;
}

double protocol witness for ViewModifier.body(content:) in conformance MaxWidth@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy28LocalAuthenticationUIService8MaxWidth33_DD63B0C55F42B89932B8BE62D7B51015LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy28LocalAuthenticationUIService8MaxWidth33_DD63B0C55F42B89932B8BE62D7B51015LLVGMR);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy28LocalAuthenticationUIService8MaxWidth33_DD63B0C55F42B89932B8BE62D7B51015LLVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy28LocalAuthenticationUIService8MaxWidth33_DD63B0C55F42B89932B8BE62D7B51015LLVGAA12_FrameLayoutVGMR) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

unint64_t lazy protocol witness table accessor for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentgE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentgE0VQo_SgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR);
    type metadata accessor for BorderedProminentButtonStyle();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, &type metadata accessor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<AuthorizationPasscodeView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<AuthorizationPasscodeView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<AuthorizationPasscodeView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMd, &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMR);
    lazy protocol witness table accessor for type AuthorizationPasscodeView and conformance AuthorizationPasscodeView();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<AuthorizationPasscodeView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AuthorizationPasscodeView and conformance AuthorizationPasscodeView()
{
  result = lazy protocol witness table cache variable for type AuthorizationPasscodeView and conformance AuthorizationPasscodeView;
  if (!lazy protocol witness table cache variable for type AuthorizationPasscodeView and conformance AuthorizationPasscodeView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthorizationPasscodeView and conformance AuthorizationPasscodeView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA14_PaddingLayoutVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    type metadata accessor for BorderedProminentButtonStyle();
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, &type metadata accessor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<(<<opaque return type of View.buttonStyle<A>(_:)>>.0)?, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<(<<opaque return type of View.buttonStyle<A>(_:)>>.0)?, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<(<<opaque return type of View.buttonStyle<A>(_:)>>.0)?, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMR);
    lazy protocol witness table accessor for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?();
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<(<<opaque return type of View.buttonStyle<A>(_:)>>.0)?, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void partial apply for closure #5 in closure #1 in AuthorizationEnterPasswordContentView.body.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v4 = v1;
    canShowWhile = RatchetCoolOffContentViewController._canShowWhileLocked()();
    AuthorizationViewModel.switchToFallback(directly:)(canShowWhile);
  }

  else
  {
    v3 = *(v0 + 24);
    type metadata accessor for AuthorizationViewModel();
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

void partial apply for closure #3 in closure #1 in AuthorizationEnterPasswordContentView.body.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = v1;
    AuthorizationViewModel.retryBiometryEvaluation()();
  }

  else
  {
    v2 = *(v0 + 24);
    type metadata accessor for AuthorizationViewModel();
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t partial apply for closure #1 in closure #1 in AuthorizationEnterPasswordContentView.body.getter()
{
  v2 = *(v0 + 16);
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

void partial apply for closure #2 in closure #1 in AuthorizationEnterPasswordContentView.body.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3;
    v5 = AuthorizationViewModel.continueButtonTitle.getter();
    v7 = v6;

    *a1 = v5;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    *(a1 + 24) = &_swiftEmptyArrayStorage;
  }

  else
  {
    v8 = *(v1 + 24);
    type metadata accessor for AuthorizationViewModel();
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100061F94()
{

  return _swift_deallocObject(v0, 24, 7);
}

void partial apply for closure #1 in closure #1 in closure #1 in AuthorizationEnterPasswordContentView.body.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    AuthorizationViewModel.showBiometryIntentButton.setter();
  }

  else
  {
    v3 = *(v0 + 24);
    type metadata accessor for AuthorizationViewModel();
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10006208C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

void partial apply for closure #2 in closure #1 in AuthorizationRegisterPasswordContentView.body.getter(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = *(v4 + 16) == a1 && *(v4 + 24) == a2;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v10 = *(v4 + 32);
    if (v10)
    {
      v16 = *(v4 + 48);
      v18 = *(v4 + 64);
      v11 = swift_allocObject();
      v12 = *(v4 + 48);
      *(v11 + 16) = *(v4 + 32);
      *(v11 + 32) = v12;
      *(v11 + 48) = *(v4 + 64);
      *(v11 + 56) = a3;
      *(v11 + 64) = a4;
      v13 = v10;
      outlined init with copy of AuthorizationRegisterPasswordContentView.Mode(&v16, v15);
      outlined init with copy of LACUIAngelConnectionHandling?(&v18, v15, &_s7SwiftUI11AnyLocationCy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGSgMd, &_s7SwiftUI11AnyLocationCy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGSgMR);

      AuthorizationViewModel.verify(passcode:reply:)(a1, a2, partial apply for closure #1 in closure #2 in closure #1 in AuthorizationRegisterPasswordContentView.body.getter, v11);
    }

    else
    {
      v14 = *(v4 + 40);
      type metadata accessor for AuthorizationViewModel();
      lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
      EnvironmentObject.error()();
      __break(1u);
    }
  }

  else
  {
    v16 = *(v4 + 48);
    v17 = *(v4 + 64);
    v15[0] = 0;
    v15[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGMd, &_s7SwiftUI5StateVy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGMR);
    State.wrappedValue.setter();
    a3(0);
  }
}

uint64_t sub_1000622DC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #1 in AuthorizationRegisterPasswordContentView.body.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v7 = v5;
    if (AuthorizationViewModel.passcodeLength.getter() <= 0)
    {
    }

    else
    {
      v8 = String.count.getter();
      v9 = AuthorizationViewModel.passcodeLength.getter();

      if (v8 != v9)
      {
        v10 = 0;
        return a3(v10);
      }
    }

    v13 = *(v4 + 32);
    v14 = *(v4 + 48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGMd, &_s7SwiftUI5StateVy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGMR);
    State.wrappedValue.setter();
    v10 = 1;
    return a3(v10);
  }

  v12 = *(v3 + 24);
  type metadata accessor for AuthorizationViewModel();
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10006246C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in AuthorizationRegisterPasswordContentView.body.getter(char a1)
{
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  if ((a1 & 1) == 0)
  {
    v11 = *(v1 + 32);
    v12 = *(v1 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGMd, &_s7SwiftUI5StateVy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGMR);
    State.wrappedValue.setter();
    v8 = 0;
    return v3(v8);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = v4;
    v6 = default argument 1 of AuthorizationViewManager.dismissAuthorizationView(error:reply:)();
    AuthorizationViewModel.dismiss(error:reply:)(0, v6, v7);

    v8 = 1;
    return v3(v8);
  }

  v10 = *(v1 + 24);
  type metadata accessor for AuthorizationViewModel();
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

double _s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGSgWOi0_(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t key path getter for EnvironmentValues.multilineTextAlignment : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for EnvironmentValues.lineLimit : EnvironmentValues, serialized@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.lineLimit : EnvironmentValues, serialized(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
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

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000626CC()
{
  v1 = type metadata accessor for AuthorizationHeaderView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  if (*(v0 + v3 + 16))
  {
    v6 = *(v5 + 24);
  }

  v7 = *(v1 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in AuthorizationHeaderView.body.getter()
{
  v1 = type metadata accessor for AuthorizationHeaderView();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v4 + 24);
    return v5();
  }

  return result;
}

void partial apply for closure #1 in closure #1 in closure #1 in closure #1 in AuthorizationContentView.body.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = LACErrorCodeUserCancel;
    v8 = v1;
    v4 = [v2 errorWithCode:v3];
    v5 = default argument 1 of AuthorizationViewManager.dismissAuthorizationView(error:reply:)();
    AuthorizationViewModel.dismiss(error:reply:)(v4, v5, v6);
  }

  else
  {
    v7 = *(v0 + 24);
    type metadata accessor for AuthorizationViewModel();
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA30_SafeAreaRegionsIgnoringLayoutVGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA30_SafeAreaRegionsIgnoringLayoutVGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ColorVAA30_SafeAreaRegionsIgnoringLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AuthorizationPasscodeView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AuthorizationPasscodeView(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AuthorizationPromptView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for AuthorizationPromptView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MaxWidth>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MaxWidth>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MaxWidth>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy28LocalAuthenticationUIService8MaxWidth33_DD63B0C55F42B89932B8BE62D7B51015LLVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy28LocalAuthenticationUIService8MaxWidth33_DD63B0C55F42B89932B8BE62D7B51015LLVGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _ViewModifier_Content<MaxWidth> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy28LocalAuthenticationUIService8MaxWidth33_DD63B0C55F42B89932B8BE62D7B51015LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy28LocalAuthenticationUIService8MaxWidth33_DD63B0C55F42B89932B8BE62D7B51015LLVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MaxWidth>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_100062D78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA30_SafeAreaRegionsIgnoringLayoutVGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA30_SafeAreaRegionsIgnoringLayoutVGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t outlined init with take of AuthorizationHeaderView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of _OpacityShapeStyle<Material>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGAGyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyACyACy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGAA08_PaddingM0VGGAMGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyACyACy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGAA08_PaddingM0VGGAMGMR);
    lazy protocol witness table accessor for type Group<ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout>> and conformance <A> Group<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA15ModifiedContentVyAEy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGAA08_PaddingM0VGGMd, &_s7SwiftUI5GroupVyAA15ModifiedContentVyAEy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGAA08_PaddingM0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGAA08_PaddingL0VGMd, &_s7SwiftUI15ModifiedContentVyACy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGAA08_PaddingL0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<PasscodeEmbeddedView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PasscodeEmbeddedView, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PasscodeEmbeddedView, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PasscodeEmbeddedView, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type PasscodeEmbeddedView and conformance PasscodeEmbeddedView, type metadata accessor for PasscodeEmbeddedView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PasscodeEmbeddedView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA14_PaddingLayoutVGAOGAIySiSgGGAIyAA5ColorVSgGGAA9EmptyViewVGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA14_PaddingLayoutVGAOGAIySiSgGGAIyAA5ColorVSgGGAA9EmptyViewVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t key path getter for AuthorizationViewManager.delegate : AuthorizationViewManager@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t key path setter for AuthorizationViewManager.delegate : AuthorizationViewManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t AuthorizationViewManager.delegate.setter()
{
  v1 = *v0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AuthorizationViewManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_delegate;
  *(v3 + 32) = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return AuthorizationViewManager.delegate.modify;
}

void AuthorizationViewManager.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = (*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = *v4;
  }

  swift_unknownObjectRelease();

  free(v3);
}

id default argument 3 of AuthorizationViewManager.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)()
{
  v0 = objc_allocWithZone(LACLocalBackoffCounter);

  return [v0 init];
}

__n128 AuthorizationViewManager.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, char a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for AuthorizationViewModel();
  AuthorizationViewModel.__allocating_init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)(a1, a2, a3, a4, a5, a6 & 1, a7, a8, a9, a10, a11);
  return result;
}

Swift::Void __swiftcall AuthorizationViewManager.saveExtractablePassword(_:)(Swift::String a1)
{
  v2 = v1;
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context);
  static String.Encoding.utf8.getter();
  v9 = String.data(using:allowLossyConversion:)();
  v11 = v10;
  (*(v4 + 8))(v7, v3);
  isa = 0;
  if (v11 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v9, v11);
  }

  [v8 setCredential:isa type:-9];
}

Swift::Void __swiftcall AuthorizationViewManager.presentAuthorizationViewInVC(_:animated:)(UIViewController _, Swift::Bool animated)
{
  v3 = v2;
  v6 = type metadata accessor for UIHostingControllerSizingOptions();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v9 = AuthorizationViewWrapper.init()(v8);
  v11 = v10;
  type metadata accessor for AuthorizationViewModel();
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel();
  v53 = static ObservableObject.environmentStore.getter();
  v54 = v3;
  v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCyAA15ModifiedContentVy28LocalAuthenticationUIService24AuthorizationViewWrapperVAA30_EnvironmentKeyWritingModifierVyAF0jK5ModelCSgGGGMd, &_s7SwiftUI19UIHostingControllerCyAA15ModifiedContentVy28LocalAuthenticationUIService24AuthorizationViewWrapperVAA30_EnvironmentKeyWritingModifierVyAF0jK5ModelCSgGGGMR));
  v3;
  v13 = UIHostingController.init(rootView:)();
  v14 = [v13 view];
  if (!v14)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v14;
  v16 = [objc_opt_self() clearColor];
  [v15 setBackgroundColor:v16];

  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIDevice, UIDevice_ptr);
  if (static UIDevice.isPad.getter() && !AuthorizationViewModel.requiresFullScreen.getter())
  {
    static UIHostingControllerSizingOptions.preferredContentSize.getter();
    dispatch thunk of UIHostingController.sizingOptions.setter();
    [v13 setModalPresentationStyle:2];

    [(objc_class *)_.super.super.isa presentViewController:v13 animated:animated completion:0];
    goto LABEL_17;
  }

  v17 = [(objc_class *)_.super.super.isa view];
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = v17;
  v19 = [v13 view];
  if (!v19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = v19;
  [v18 addSubview:v19];

  [(objc_class *)_.super.super.isa addChildViewController:v13];
  [v13 didMoveToParentViewController:_.super.super.isa];
  v21 = [v13 view];
  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = v21;
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100087710;
  v24 = [v13 view];
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = v24;
  v26 = [v24 leadingAnchor];

  v27 = [(objc_class *)_.super.super.isa view];
  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v27;
  v29 = [v27 leadingAnchor];

  v30 = [v26 constraintEqualToAnchor:v29];
  *(v23 + 32) = v30;
  v31 = [v13 view];
  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = v31;
  v33 = [v31 trailingAnchor];

  v34 = [(objc_class *)_.super.super.isa view];
  if (!v34)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v35 = v34;
  v36 = [v34 trailingAnchor];

  v37 = [v33 constraintEqualToAnchor:v36];
  *(v23 + 40) = v37;
  v38 = [v13 view];
  if (!v38)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v39 = v38;
  v40 = [v38 topAnchor];

  v41 = [(objc_class *)_.super.super.isa view];
  if (!v41)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v42 = v41;
  v43 = [v41 topAnchor];

  v44 = [v40 constraintEqualToAnchor:v43];
  *(v23 + 48) = v44;
  v45 = [v13 view];

  if (!v45)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v46 = [v45 bottomAnchor];

  v47 = [(objc_class *)_.super.super.isa view];
  if (v47)
  {
    v48 = v47;
    v49 = objc_opt_self();
    v50 = [v48 bottomAnchor];

    v51 = [v46 constraintEqualToAnchor:v50];
    *(v23 + 56) = v51;
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSLayoutConstraint, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v49 activateConstraints:isa];

LABEL_17:
    return;
  }

LABEL_29:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel()
{
  result = lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel;
  if (!lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel)
  {
    type metadata accessor for AuthorizationViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel);
  }

  return result;
}

uint64_t AuthenticationFallbackMethod.init(requirement:)(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 2;
  }

  else
  {
    return (0x1000100010202uLL >> (8 * a1));
  }
}

Swift::Int AuthenticationFallbackMethod.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AuthenticationFallbackMethod()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AuthenticationFallbackMethod()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AuthenticationFallbackMethod and conformance AuthenticationFallbackMethod()
{
  result = lazy protocol witness table cache variable for type AuthenticationFallbackMethod and conformance AuthenticationFallbackMethod;
  if (!lazy protocol witness table cache variable for type AuthenticationFallbackMethod and conformance AuthenticationFallbackMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthenticationFallbackMethod and conformance AuthenticationFallbackMethod);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuthenticationFallbackMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AuthenticationFallbackMethod(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t variable initialization expression of AuthorizationRemoteViewController.log()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy28LocalAuthenticationUIService11LogCategoryVGMd, &_ss23_ContiguousArrayStorageCy28LocalAuthenticationUIService11LogCategoryVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100088E60;
  *(v0 + 32) = *LogCategory.ui.unsafeMutableAddressor();
  *(v0 + 40) = *LogCategory.interactive.unsafeMutableAddressor();
  *(v0 + 48) = *LogCategory.authorization.unsafeMutableAddressor();
  lazy protocol witness table accessor for type LogCategory and conformance LogCategory();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay28LocalAuthenticationUIService11LogCategoryVGMd, _sSay28LocalAuthenticationUIService11LogCategoryVGMR);
  lazy protocol witness table accessor for type [LogCategory] and conformance [A](&lazy protocol witness table cache variable for type [LogCategory] and conformance [A], &_sSay28LocalAuthenticationUIService11LogCategoryVGMd, _sSay28LocalAuthenticationUIService11LogCategoryVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return Logger(category:)();
}

unint64_t lazy protocol witness table accessor for type LogCategory and conformance LogCategory()
{
  result = lazy protocol witness table cache variable for type LogCategory and conformance LogCategory;
  if (!lazy protocol witness table cache variable for type LogCategory and conformance LogCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogCategory and conformance LogCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogCategory and conformance LogCategory;
  if (!lazy protocol witness table cache variable for type LogCategory and conformance LogCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogCategory and conformance LogCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogCategory and conformance LogCategory;
  if (!lazy protocol witness table cache variable for type LogCategory and conformance LogCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogCategory and conformance LogCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogCategory and conformance LogCategory;
  if (!lazy protocol witness table cache variable for type LogCategory and conformance LogCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogCategory and conformance LogCategory);
  }

  return result;
}

uint64_t AuthorizationRemoteViewController.authenticatorHost.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR___AuthorizationRemoteViewController_log, v1);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  (*(v2 + 32))(v6 + v5, v4, v1);
  v15 = partial apply for closure #1 in AuthorizationRemoteViewController.authenticatorHost.getter;
  v16 = v6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v14 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  *(&v14 + 1) = &block_descriptor_9;
  v7 = _Block_copy(&aBlock);

  v8 = [v0 _remoteViewControllerProxyWithErrorHandler:v7];
  _Block_release(v7);
  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  aBlock = v11;
  v14 = v12;
  if (*(&v12 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22LACUIAuthenticatorHost_pMd, &_sSo22LACUIAuthenticatorHost_pMR);
    if (swift_dynamicCast())
    {
      return v10[1];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of LACUIAngelConnectionHandling?(&aBlock, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

uint64_t sub_100064760()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void partial apply for closure #1 in AuthorizationRemoteViewController.authenticatorHost.getter(uint64_t a1)
{
  v2 = *(type metadata accessor for Logger() - 8);
  if (a1)
  {
    v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138543362;
      v7 = _convertErrorToNSError(_:)();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Could not obtain remote object with error %{public}@", v5, 0xCu);
      outlined destroy of LACUIAngelConnectionHandling?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    else
    {
    }
  }
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id static AuthorizationRemoteViewController._exportedInterface()(void *a1)
{
  v1 = [objc_opt_self() interfaceForXPCProtocol:*a1];

  return v1;
}

id @objc static AuthorizationRemoteViewController._exportedInterface()(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceForXPCProtocol:*a3];

  return v3;
}

id closure #1 in AuthorizationRemoteViewController.presentUI(configuration:)(void *a1, void *a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 featureFlagLaunchAngelEnabled];

  if (v5)
  {
    result = [a1 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    v8 = [result window];

    if (v8 && (v9 = [v8 windowScene], v8, v9))
    {
      v10 = [v9 _FBSScene];

      v11 = [v10 hostHandle];
      v27 = 0u;
      v28 = 0u;
      if (v11)
      {
        v12 = [v11 auditToken];

        [v12 realToken];
        v27 = v29;
        v28 = v30;
      }
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }
  }

  else
  {
    [a1 _hostAuditToken];
    v27 = v29;
    v28 = v30;
  }

  v13 = objc_allocWithZone(LACAuditToken);
  v14 = a2;
  v29 = v27;
  v30 = v28;
  v15 = [v13 initWithRawValue:&v29];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v17 = default argument 3 of AuthorizationViewManager.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)();
  v18 = default argument 5 of AuthorizationViewManager.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)();
  v19 = default argument 7 of AuthorizationViewManager.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)();
  AuthorizationViewManager.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)(v14, v15, 0, v17, 0, 1, v18, 0, v19, partial apply for closure #1 in closure #1 in AuthorizationRemoteViewController.presentUI(configuration:), v16);
  v21 = v20;

  *&v29 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Authorization Sheet will appear", v24, 2u);
  }

  swift_unknownObjectRetain();
  AuthorizationViewManager.delegate.setter();
  v25 = v29;
  canShowWhile = RatchetCoolOffContentViewController._canShowWhileLocked()();
  AuthorizationViewManager.presentAuthorizationViewInVC(_:animated:)(a1, canShowWhile);

  return v25;
}

uint64_t closure #1 in closure #1 in AuthorizationRemoteViewController.finish(error:)(uint64_t a1, void **a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v7 = [objc_opt_self() sharedInstance];
    v8 = [v7 featureFlagLaunchAngelEnabled];

    if (v8)
    {
      if (a2 && (aBlock = a2, swift_errorRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR), type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSError, NSError_ptr), swift_dynamicCast()))
      {
        v9 = v14;
      }

      else
      {
        v9 = 0;
      }

      a2 = [objc_allocWithZone(LACUIAuthorizationAction) initWithIdentifier:3 value:v9];
      swift_unknownObjectRelease();
      v13 = swift_allocObject();
      *(v13 + 16) = partial apply for closure #1 in closure #1 in closure #1 in AuthorizationRemoteViewController.finish(error:);
      *(v13 + 24) = v5;
      v19 = partial apply for closure #1 in AuthorizationRemoteViewController.didFinish(error:completion:);
      v20 = v13;
      aBlock = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
      v18 = &block_descriptor_67;
      v12 = _Block_copy(&aBlock);

      [v4 sendAction:a2 completion:v12];
    }

    else
    {
      v10 = (*((swift_isaMask & *v4) + 0x98))();
      if (!v10)
      {
LABEL_13:
      }

      v11 = v10;
      if (a2)
      {
        a2 = _convertErrorToNSError(_:)();
      }

      v19 = partial apply for closure #1 in closure #1 in closure #1 in AuthorizationRemoteViewController.finish(error:);
      v20 = v5;
      aBlock = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v18 = &block_descriptor_61;
      v12 = _Block_copy(&aBlock);

      [v11 authenticatorServiceDidFinishWithError:a2 reply:v12];
      swift_unknownObjectRelease();
    }

    _Block_release(v12);

    goto LABEL_13;
  }

  return result;
}

id AuthorizationRemoteViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager] = 0;
  *&v3[OBJC_IVAR___AuthorizationRemoteViewController_terminateAssertion] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy28LocalAuthenticationUIService11LogCategoryVGMd, &_ss23_ContiguousArrayStorageCy28LocalAuthenticationUIService11LogCategoryVGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100088E60;
  *(v7 + 32) = *LogCategory.ui.unsafeMutableAddressor();
  *(v7 + 40) = *LogCategory.interactive.unsafeMutableAddressor();
  *(v7 + 48) = *LogCategory.authorization.unsafeMutableAddressor();
  v12 = v7;
  lazy protocol witness table accessor for type LogCategory and conformance LogCategory();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay28LocalAuthenticationUIService11LogCategoryVGMd, _sSay28LocalAuthenticationUIService11LogCategoryVGMR);
  lazy protocol witness table accessor for type [LogCategory] and conformance [A](&lazy protocol witness table cache variable for type [LogCategory] and conformance [A], &_sSay28LocalAuthenticationUIService11LogCategoryVGMd, _sSay28LocalAuthenticationUIService11LogCategoryVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  Logger(category:)();
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for AuthorizationRemoteViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

uint64_t type metadata accessor for AuthorizationRemoteViewController()
{
  result = type metadata singleton initialization cache for AuthorizationRemoteViewController;
  if (!type metadata singleton initialization cache for AuthorizationRemoteViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id AuthorizationRemoteViewController.init(coder:)(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager] = 0;
  *&v1[OBJC_IVAR___AuthorizationRemoteViewController_terminateAssertion] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy28LocalAuthenticationUIService11LogCategoryVGMd, &_ss23_ContiguousArrayStorageCy28LocalAuthenticationUIService11LogCategoryVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100088E60;
  *(v4 + 32) = *LogCategory.ui.unsafeMutableAddressor();
  *(v4 + 40) = *LogCategory.interactive.unsafeMutableAddressor();
  *(v4 + 48) = *LogCategory.authorization.unsafeMutableAddressor();
  v8 = v4;
  lazy protocol witness table accessor for type LogCategory and conformance LogCategory();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay28LocalAuthenticationUIService11LogCategoryVGMd, _sSay28LocalAuthenticationUIService11LogCategoryVGMR);
  lazy protocol witness table accessor for type [LogCategory] and conformance [A](&lazy protocol witness table cache variable for type [LogCategory] and conformance [A], &_sSay28LocalAuthenticationUIService11LogCategoryVGMd, _sSay28LocalAuthenticationUIService11LogCategoryVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  Logger(category:)();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for AuthorizationRemoteViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id AuthorizationRemoteViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthorizationRemoteViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void AuthorizationRemoteViewController.start(with:reply:)(void *a1, void (*a2)(id))
{
  v3 = v2;
  v6 = [a1 validateConfiguration];
  if (v6)
  {
    v7 = v6;
    v14 = v6;
    a2(v7);
  }

  else
  {
    v8 = TerminationService.shared.unsafeMutableAddressor();
    swift_beginAccess();
    v9 = *v8;
    v10 = TerminationService.assertion()();

    v11 = *&v3[OBJC_IVAR___AuthorizationRemoteViewController_terminateAssertion];
    *&v3[OBJC_IVAR___AuthorizationRemoteViewController_terminateAssertion] = v10;

    v12 = closure #1 in AuthorizationRemoteViewController.presentUI(configuration:)(v3, a1);
    v13 = *&v3[OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager];
    *&v3[OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager] = v12;

    a2(0);
  }
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t AuthorizationRemoteViewController.stop(reply:)(uint64_t (*a1)(void))
{
  v3 = *(v1 + OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = LACErrorCodeSystemCancel;
    v6 = v3;
    v7 = [v4 errorWithCode:v5];
    v8 = default argument 1 of AuthorizationViewManager.dismissAuthorizationView(error:reply:)();
    AuthorizationViewManager.dismissAuthorizationView(error:reply:)(v7, v8, v9);
  }

  return a1(0);
}

void AuthorizationRemoteViewController.handle(_:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v42 = [objc_allocWithZone(LACUIAuthorizationAction) initWithAction:a1];
  v7 = [v42 identifier];
  if (v7 == 2)
  {
    v48 = a2;
    v49 = a3;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v47 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    *(&v47 + 1) = &block_descriptor_3_1;
    v8 = _Block_copy(&aBlock);

    [v4 stopWithReply:v8];

    _Block_release(v8);
    return;
  }

  if (v7 == 1)
  {
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for LACUIAuthenticatorServiceConfiguration, LACUIAuthenticatorServiceConfiguration_ptr);
    if ([v42 valueDecodedForClass:swift_getObjCClassFromMetadata()])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    aBlock = v44;
    v47 = v45;
    if (*(&v45 + 1))
    {
      if (swift_dynamicCast())
      {
        v48 = a2;
        v49 = a3;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v47 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
        *(&v47 + 1) = &block_descriptor_6_3;
        v24 = _Block_copy(&aBlock);

        [v3 startWithConfiguration:v43 reply:v24];

        _Block_release(v24);
        return;
      }
    }

    else
    {
      outlined destroy of LACUIAngelConnectionHandling?(&aBlock, &_sypSgMd, &_sypSgMR);
    }

    v25 = objc_opt_self();
    v26 = LACErrorCodeInternal;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v27 = [v3 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

    v32._object = 0x8000000100099A50;
    v32._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v32);
    v33 = [v42 description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37._countAndFlagsBits = v34;
    v37._object = v36;
    String.append(_:)(v37);

    v38._countAndFlagsBits = 0xD00000000000001BLL;
    v38._object = 0x8000000100099A70;
    String.append(_:)(v38);
    v39 = String._bridgeToObjectiveC()();

    v40 = [v25 errorWithCode:v26 debugDescription:v39];

    v41 = v40;
    a2(v40);
  }

  else
  {
    v9 = objc_opt_self();
    v10 = LACErrorCodeInternal;
    _StringGuts.grow(_:)(26);
    v11 = [v3 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    *&aBlock = v12;
    *(&aBlock + 1) = v14;
    v15._object = 0x8000000100099A50;
    v15._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v15);
    v16 = [v42 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.append(_:)(v20);

    v21 = String._bridgeToObjectiveC()();

    v22 = [v9 errorWithCode:v10 debugDescription:v21];

    v23 = v22;
    a2(v22);
  }
}

void @objc AuthorizationRemoteViewController.start(with:reply:)(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void AuthorizationRemoteViewController.viewModel(_:didReceiveCustomPassword:handler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager);
  if (v8)
  {
    v11 = v8;
    v12._countAndFlagsBits = a2;
    v12._object = a3;
    AuthorizationViewManager.saveExtractablePassword(_:)(v12);
  }

  AuthorizationRemoteViewController.didObtainAuthentication(completion:)(a4, a5);
}

void AuthorizationRemoteViewController.didObtainAuthentication(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v5;
  v7 = objc_opt_self();

  v8 = [v7 sharedInstance];
  LODWORD(v7) = [v8 featureFlagLaunchAngelEnabled];

  if (v7)
  {
    v9 = [objc_allocWithZone(LACUIAuthorizationAction) initWithIdentifier:4 value:0];
    v18 = partial apply for closure #1 in AuthorizationRemoteViewController.didObtainAuthentication(completion:);
    v19 = v6;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v17 = &block_descriptor_40;
    v10 = _Block_copy(&v14);

    [v2 sendAction:v9 completion:v10];

    _Block_release(v10);
  }

  else
  {
    v11 = (*((swift_isaMask & *v2) + 0x98))();
    if (v11)
    {
      v12 = v11;
      v18 = partial apply for closure #1 in AuthorizationRemoteViewController.didObtainAuthentication(completion:);
      v19 = v6;
      v14 = _NSConcreteStackBlock;
      v15 = 1107296256;
      v16 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
      v17 = &block_descriptor_37;
      v13 = _Block_copy(&v14);

      [v12 authenticatorServiceDidObtainAuthenticationWithReply:v13];
      swift_unknownObjectRelease();

      _Block_release(v13);
    }

    else
    {
    }
  }
}

uint64_t type metadata completion function for AuthorizationRemoteViewController()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000662B4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t closure #1 in AuthorizationRemoteViewController.didObtainAuthentication(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v20);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  aBlock[4] = partial apply for closure #1 in closure #1 in AuthorizationRemoteViewController.didObtainAuthentication(completion:);
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_46;
  v18 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [LogCategory] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v21 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v20);
}

void specialized AuthorizationRemoteViewController.start(with:reply:)(void *a1, char *a2, uint64_t a3)
{
  v6 = [a1 validateConfiguration];
  if (v6)
  {
    v7 = v6;
    v14 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, v14);
  }

  else
  {
    v8 = TerminationService.shared.unsafeMutableAddressor();
    swift_beginAccess();
    v9 = *v8;
    v10 = TerminationService.assertion()();

    v11 = *&a2[OBJC_IVAR___AuthorizationRemoteViewController_terminateAssertion];
    *&a2[OBJC_IVAR___AuthorizationRemoteViewController_terminateAssertion] = v10;

    v12 = closure #1 in AuthorizationRemoteViewController.presentUI(configuration:)(a2, a1);
    v13 = *&a2[OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager];
    *&a2[OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager] = v12;

    (*(a3 + 16))(a3, 0);
  }
}

uint64_t specialized AuthorizationRemoteViewController.stop(reply:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = LACErrorCodeSystemCancel;
    v6 = v3;
    v7 = [v4 errorWithCode:v5];
    v8 = default argument 1 of AuthorizationViewManager.dismissAuthorizationView(error:reply:)();
    AuthorizationViewManager.dismissAuthorizationView(error:reply:)(v7, v8, v9);
  }

  v10 = *(a2 + 16);

  return v10(a2, 0);
}

void specialized AuthorizationRemoteViewController.handle(_:completion:)(uint64_t a1, void *a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = objc_allocWithZone(LACUIAuthorizationAction);
  _Block_copy(a3);
  v8 = [v7 initWithAction:a1];
  v9 = [v8 identifier];
  if (v9 == 2)
  {
    v51 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ();
    v52 = v6;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v50 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    *(&v50 + 1) = &block_descriptor_25_0;
    v10 = _Block_copy(&aBlock);

    [a2 stopWithReply:v10];

    _Block_release(v10);

    return;
  }

  if (v9 == 1)
  {
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for LACUIAuthenticatorServiceConfiguration, LACUIAuthenticatorServiceConfiguration_ptr);
    if ([v8 valueDecodedForClass:swift_getObjCClassFromMetadata()])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
    }

    aBlock = v47;
    v50 = v48;
    if (*(&v48 + 1))
    {
      if (swift_dynamicCast())
      {
        v51 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ();
        v52 = v6;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v50 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
        *(&v50 + 1) = &block_descriptor_28;
        v26 = _Block_copy(&aBlock);

        [a2 startWithConfiguration:v46 reply:v26];

        _Block_release(v26);

        return;
      }
    }

    else
    {
      outlined destroy of LACUIAngelConnectionHandling?(&aBlock, &_sypSgMd, &_sypSgMR);
    }

    v27 = objc_opt_self();
    v28 = LACErrorCodeInternal;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v29 = [a2 description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33._countAndFlagsBits = v30;
    v33._object = v32;
    String.append(_:)(v33);

    v34._object = 0x8000000100099A50;
    v34._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v34);
    v35 = [v8 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39._countAndFlagsBits = v36;
    v39._object = v38;
    String.append(_:)(v39);

    v40._countAndFlagsBits = 0xD00000000000001BLL;
    v40._object = 0x8000000100099A70;
    String.append(_:)(v40);
    v41 = String._bridgeToObjectiveC()();

    v42 = [v27 errorWithCode:v28 debugDescription:v41];

    v43 = v42;
    v44 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v44);
  }

  else
  {
    v11 = objc_opt_self();
    v12 = LACErrorCodeInternal;
    _StringGuts.grow(_:)(26);
    v13 = [a2 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    *&aBlock = v14;
    *(&aBlock + 1) = v16;
    v17._object = 0x8000000100099A50;
    v17._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v17);
    v18 = [v8 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    String.append(_:)(v22);

    v23 = String._bridgeToObjectiveC()();

    v24 = [v11 errorWithCode:v12 debugDescription:v23];

    v25 = v24;
    v45 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v45);
  }
}

uint64_t sub_100066D68()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066DA0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100066DEC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

void partial apply for closure #1 in closure #1 in AuthorizationRemoteViewController.didObtainAuthentication(completion:)()
{
  v1 = v0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  if (v3)
  {
    v2(0);
  }

  else
  {
    v5 = v1[5];
    v2(1);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager);
      v8 = Strong;
      v9 = v7;

      if (v7)
      {
        v10 = default argument 1 of AuthorizationViewManager.dismissAuthorizationView(error:reply:)();
        AuthorizationViewManager.dismissAuthorizationView(error:reply:)(0, v10, v11);
      }
    }
  }
}

uint64_t lazy protocol witness table accessor for type [LogCategory] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void partial apply for closure #1 in closure #1 in AuthorizationRemoteViewController.presentUI(configuration:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Authorization Sheet did finish", v6, 2u);
    }

    v7 = *&v3[OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager];
    if (v7)
    {
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = a1;
      v10 = v7;

      swift_errorRetain();
      AuthorizationViewManager.dismissAuthorizationView(error:reply:)(a1, partial apply for closure #1 in AuthorizationRemoteViewController.finish(error:), v9);
    }
  }
}

void partial apply for closure #1 in AuthorizationRemoteViewController.finish(error:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = v2;
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIDevice, UIDevice_ptr);
    swift_errorRetain();

    if (static UIDevice.isPad.getter())
    {
      aBlock[4] = partial apply for closure #1 in closure #1 in AuthorizationRemoteViewController.finish(error:);
      aBlock[5] = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_57;
      v6 = _Block_copy(aBlock);

      [v4 dismissViewControllerAnimated:1 completion:v6];

      _Block_release(v6);
    }

    else
    {
      closure #1 in closure #1 in AuthorizationRemoteViewController.finish(error:)(v1, v2);
    }
  }
}

uint64_t objectdestroy_50Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void partial apply for closure #1 in closure #1 in closure #1 in AuthorizationRemoteViewController.finish(error:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR___AuthorizationRemoteViewController_terminateAssertion);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      TerminateAssertion.invalidate()();
    }
  }

  v4 = TerminationService.shared.unsafeMutableAddressor();
  swift_beginAccess();
  v5 = *v4;
  TerminationService.scheduleTermination()();
}

uint64_t sub_100067320()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for closure #1 in AuthorizationRemoteViewController.didFinish(error:completion:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t AuthorizationViewModel.showAuthorizationView.getter()
{
  return AuthorizationViewModel.showAuthorizationView.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for AuthorizationViewModel.showAuthorizationView : AuthorizationViewModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  return key path getter for AuthorizationViewModel.showAuthorizationView : AuthorizationViewModel(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for AuthorizationViewModel.showAuthorizationView : AuthorizationViewModel(char *a1, void **a2)
{
  return key path setter for AuthorizationViewModel.showAuthorizationView : AuthorizationViewModel(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t AuthorizationViewModel.showAuthorizationView.setter()
{
  return AuthorizationViewModel.showAuthorizationView.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*AuthorizationViewModel.showAuthorizationView.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  return AuthorizationViewModel.showBiometryIntentButton.modify;
}

uint64_t key path setter for AuthorizationViewModel.$showAuthorizationView : AuthorizationViewModel(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AuthorizationViewModel.$showAuthorizationView.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AuthorizationViewModel.$showAuthorizationView.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showAuthorizationView;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$showBiometryIntentButton.modify;
}

uint64_t (*AuthorizationViewModel.showBiometryIntentButton.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  return AuthorizationViewModel.showBiometryIntentButton.modify;
}

uint64_t key path setter for AuthorizationViewModel.$showBiometryIntentButton : AuthorizationViewModel(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AuthorizationViewModel.$showBiometryIntentButton.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AuthorizationViewModel.$showBiometryIntentButton.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showBiometryIntentButton;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$showBiometryIntentButton.modify;
}

uint64_t (*AuthorizationViewModel.shouldShowCustomPasswordView.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  return AuthorizationViewModel.shouldShowCustomPasswordView.modify;
}

uint64_t key path setter for AuthorizationViewModel.$shouldShowCustomPasswordView : AuthorizationViewModel(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AuthorizationViewModel.$shouldShowCustomPasswordView.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AuthorizationViewModel.$shouldShowCustomPasswordView.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__shouldShowCustomPasswordView;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$shouldShowCustomPasswordView.modify;
}

uint64_t (*AuthorizationViewModel.shouldShowDevicePasscodeView.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  return AuthorizationViewModel.showBiometryIntentButton.modify;
}

uint64_t key path setter for AuthorizationViewModel.$shouldShowDevicePasscodeView : AuthorizationViewModel(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AuthorizationViewModel.$shouldShowDevicePasscodeView.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AuthorizationViewModel.$shouldShowDevicePasscodeView.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__shouldShowDevicePasscodeView;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$showBiometryIntentButton.modify;
}

uint64_t (*AuthorizationViewModel.passcodeFocused.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  return AuthorizationViewModel.showBiometryIntentButton.modify;
}

uint64_t key path setter for AuthorizationViewModel.$passcodeFocused : AuthorizationViewModel(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AuthorizationViewModel.$passcodeFocused.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AuthorizationViewModel.$passcodeFocused.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__passcodeFocused;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$showBiometryIntentButton.modify;
}

uint64_t property wrapper backing initializer of AuthorizationViewModel.blockedUntilDate(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  outlined init with copy of LACUIAngelConnectionHandling?(a1, &v10 - v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of LACUIAngelConnectionHandling?(v8, v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  Published.init(initialValue:)();
  outlined destroy of LACUIAngelConnectionHandling?(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return outlined destroy of LACUIAngelConnectionHandling?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t AuthorizationViewModel.blockedUntilDate.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t AuthorizationViewModel.blockedUntilDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of LACUIAngelConnectionHandling?(a1, v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = v1;
  static Published.subscript.setter();
  return outlined destroy of LACUIAngelConnectionHandling?(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t (*AuthorizationViewModel.blockedUntilDate.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  return AuthorizationViewModel.showBiometryIntentButton.modify;
}

uint64_t key path setter for AuthorizationViewModel.$blockedUntilDate : AuthorizationViewModel(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AuthorizationViewModel.$blockedUntilDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AuthorizationViewModel.$blockedUntilDate.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__blockedUntilDate;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$showBiometryIntentButton.modify;
}

uint64_t AuthorizationViewModel.promptText.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double key path getter for AuthorizationViewModel.promptText : AuthorizationViewModel@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t key path setter for AuthorizationViewModel.promptText : AuthorizationViewModel(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return static Published.subscript.setter();
}

uint64_t AuthorizationViewModel.promptText.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*AuthorizationViewModel.promptText.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  return AuthorizationViewModel.showBiometryIntentButton.modify;
}

uint64_t key path setter for AuthorizationViewModel.$promptText : AuthorizationViewModel(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AuthorizationViewModel.$promptText.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AuthorizationViewModel.$promptText.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__promptText;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$showBiometryIntentButton.modify;
}

uint64_t AuthorizationViewModel.passwordFieldPlaceholder.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for AuthorizationViewModel.passwordFieldPlaceholder : AuthorizationViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t key path setter for AuthorizationViewModel.passwordFieldPlaceholder : AuthorizationViewModel(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return static Published.subscript.setter();
}

uint64_t AuthorizationViewModel.passwordFieldPlaceholder.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*AuthorizationViewModel.passwordFieldPlaceholder.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  return AuthorizationViewModel.showBiometryIntentButton.modify;
}

uint64_t key path setter for AuthorizationViewModel.$passwordFieldPlaceholder : AuthorizationViewModel(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AuthorizationViewModel.$passwordFieldPlaceholder.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AuthorizationViewModel.$passwordFieldPlaceholder.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__passwordFieldPlaceholder;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$showBiometryIntentButton.modify;
}

uint64_t AuthorizationViewModel.wrongBioAttempts.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for AuthorizationViewModel.wrongBioAttempts : AuthorizationViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for AuthorizationViewModel.wrongBioAttempts : AuthorizationViewModel(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t AuthorizationViewModel.wrongBioAttempts.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*AuthorizationViewModel.wrongBioAttempts.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  return AuthorizationViewModel.showBiometryIntentButton.modify;
}

uint64_t key path setter for AuthorizationViewModel.$wrongBioAttempts : AuthorizationViewModel(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AuthorizationViewModel.$wrongBioAttempts.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AuthorizationViewModel.$wrongBioAttempts.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__wrongBioAttempts;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$showBiometryIntentButton.modify;
}

uint64_t (*AuthorizationViewModel.showBiometryRetryButton.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  return AuthorizationViewModel.showBiometryIntentButton.modify;
}

uint64_t key path setter for AuthorizationViewModel.$showBiometryRetryButton : AuthorizationViewModel(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AuthorizationViewModel.$showBiometryRetryButton.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AuthorizationViewModel.$showBiometryRetryButton.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showBiometryRetryButton;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$showBiometryIntentButton.modify;
}

uint64_t (*AuthorizationViewModel.showFallbackButton.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  return AuthorizationViewModel.showBiometryIntentButton.modify;
}

void AuthorizationViewModel.showAuthorizationView.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t AuthorizationViewModel.$showAuthorizationView.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for AuthorizationViewModel.$showAuthorizationView : AuthorizationViewModel(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for AuthorizationViewModel.$showFallbackButton : AuthorizationViewModel(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AuthorizationViewModel.$showFallbackButton.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AuthorizationViewModel.$showFallbackButton.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showFallbackButton;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$showBiometryIntentButton.modify;
}

void AuthorizationViewModel.$showAuthorizationView.modify(uint64_t a1, char a2)
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

uint64_t AuthorizationViewModel.failureLimit.getter()
{
  result = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_failureLimit);
  v2 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_failureLimit + 8);
  return result;
}

uint64_t AuthorizationViewModel.failures.getter()
{
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_failures;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AuthorizationViewModel.failures.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_failures;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AuthorizationViewModel.expectsDismissOnIpad.getter()
{
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_expectsDismissOnIpad;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AuthorizationViewModel.expectsDismissOnIpad.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_expectsDismissOnIpad;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for AuthorizationViewModel.delegate : AuthorizationViewModel@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t key path setter for AuthorizationViewModel.delegate : AuthorizationViewModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t AuthorizationViewModel.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AuthorizationViewModel.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return AngelSceneRemoteAlert.delegate.modify;
}

double AuthorizationViewModel.cornerRadius.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___cornerRadius);
  if ((*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___cornerRadius + 8) & 1) == 0)
  {
    return *v1;
  }

  result = 0.0;
  if (*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_isPad))
  {
    result = 8.0;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

void *key path setter for AuthorizationViewModel.cornerRadius : AuthorizationViewModel(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___cornerRadius;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

void AuthorizationViewModel.cornerRadius.setter(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___cornerRadius;
  *v2 = a1;
  *(v2 + 8) = 0;
}

void *(*AuthorizationViewModel.cornerRadius.modify(uint64_t a1))(void *result)
{
  *(a1 + 8) = v1;
  *a1 = AuthorizationViewModel.cornerRadius.getter();
  return AuthorizationViewModel.cornerRadius.modify;
}

void *AuthorizationViewModel.cornerRadius.modify(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___cornerRadius;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

double AuthorizationViewModel.backgroundOpacity.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___backgroundOpacity);
  if ((*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___backgroundOpacity + 8) & 1) == 0)
  {
    return *v1;
  }

  result = 0.8;
  if (*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_isPad))
  {
    result = 0.000001;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

void *key path setter for AuthorizationViewModel.backgroundOpacity : AuthorizationViewModel(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___backgroundOpacity;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

void AuthorizationViewModel.backgroundOpacity.setter(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___backgroundOpacity;
  *v2 = a1;
  *(v2 + 8) = 0;
}

void *(*AuthorizationViewModel.backgroundOpacity.modify(uint64_t a1))(void *result)
{
  *(a1 + 8) = v1;
  *a1 = AuthorizationViewModel.backgroundOpacity.getter();
  return AuthorizationViewModel.backgroundOpacity.modify;
}

void *AuthorizationViewModel.backgroundOpacity.modify(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___backgroundOpacity;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

id AuthorizationViewModel.biometryType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context);
  [v1 canEvaluatePolicy:1 error:0];

  return [v1 biometryType];
}

uint64_t AuthorizationViewModel.biometrySubtitle.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___biometrySubtitle);
  if (!*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___biometrySubtitle + 8))
  {
    v4 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context);
    [v4 canEvaluatePolicy:1 error:0];
    v5 = [v4 biometryType];
    if (v5 == 1)
    {
      v6 = static LocalizedStrings.touchId.getter();
    }

    else
    {
      if (v5 != 2)
      {
        v2 = 0;
        v8 = 0xE000000000000000;
        goto LABEL_9;
      }

      v6 = static LocalizedStrings.pearl.getter();
    }

    v2 = v6;
    v8 = v7;
LABEL_9:
    v9 = v1[1];
    *v1 = v2;
    v1[1] = v8;

    goto LABEL_10;
  }

  v2 = *v1;
  v3 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___biometrySubtitle + 8);
LABEL_10:

  return v2;
}

uint64_t key path getter for AuthorizationViewModel.biometrySubtitle : AuthorizationViewModel@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = AuthorizationViewModel.biometrySubtitle.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for AuthorizationViewModel.biometrySubtitle : AuthorizationViewModel(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___biometrySubtitle);
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t AuthorizationViewModel.biometrySubtitle.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___biometrySubtitle);
  v4 = *(v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___biometrySubtitle + 8);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t (*AuthorizationViewModel.biometrySubtitle.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = AuthorizationViewModel.biometrySubtitle.getter();
  a1[1] = v3;
  return AuthorizationViewModel.biometrySubtitle.modify;
}

uint64_t AuthorizationViewModel.biometrySubtitle.modify(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = (a1[2] + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___biometrySubtitle);
  v4 = v3[1];
  *v3 = v2;
  v3[1] = v1;
}

uint64_t AuthorizationViewModel.shouldShowPassView.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AuthorizationViewModel.passwordType.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___passwordType);
  if (*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___passwordType + 8) != 1)
  {
    return *v1;
  }

  v2 = [*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_configuration) passcodeLength];
  if (v2 + 1 > 7)
  {
    v3 = &LACustomPasswordTypeAlphanumeric;
  }

  else
  {
    v3 = *(&off_1000AD8A0 + v2 + 1);
  }

  result = *v3;
  *v1 = *v3;
  v1[8] = 0;
  return result;
}

uint64_t key path getter for AuthorizationViewModel.passwordType : AuthorizationViewModel@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = AuthorizationViewModel.passwordType.getter();
  *a2 = result;
  return result;
}

void *key path setter for AuthorizationViewModel.passwordType : AuthorizationViewModel(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___passwordType;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t AuthorizationViewModel.passwordType.setter(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___passwordType;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

void *(*AuthorizationViewModel.passwordType.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = AuthorizationViewModel.passwordType.getter();
  return AuthorizationViewModel.passwordType.modify;
}

void *AuthorizationViewModel.passwordType.modify(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___passwordType;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t AuthorizationViewModel.title.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_configuration) title];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t AuthorizationViewModel.cancelButtonTitle.getter(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_configuration) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

id AuthorizationViewModel.appIcon.getter()
{
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___appIcon;
  v2 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___appIcon);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_configuration);
    v5 = [v4 iconPath];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() imageForPath:v5];
    }

    else
    {
      v8 = [v4 bundleIdentifier];
      if (!v8)
      {
        v12 = v0;
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "The icon path and bundle identifier are nil", v15, 2u);
        }

        v3 = [objc_opt_self() genericIcon];
        v0 = v12;
        goto LABEL_7;
      }

      v6 = v8;
      v7 = [objc_opt_self() imageForBundleIdentifier:v8];
    }

    v3 = v7;

LABEL_7:
    v9 = *(v0 + v1);
    *(v0 + v1) = v3;
    v10 = v3;
    outlined consume of AuthorizationBackgroundView?(v9);
  }

  outlined copy of AuthorizationBackgroundView?(v2);
  return v3;
}

id key path getter for AuthorizationViewModel.appIcon : AuthorizationViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = AuthorizationViewModel.appIcon.getter();
  *a2 = result;
  return result;
}

void key path setter for AuthorizationViewModel.appIcon : AuthorizationViewModel(void **a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___appIcon);
  *(*a2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___appIcon) = *a1;
  v4 = v2;

  outlined consume of AuthorizationBackgroundView?(v3);
}

void AuthorizationViewModel.appIcon.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___appIcon);
  *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___appIcon) = a1;
  outlined consume of AuthorizationBackgroundView?(v2);
}

void (*AuthorizationViewModel.appIcon.modify(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = AuthorizationViewModel.appIcon.getter();
  return AuthorizationViewModel.appIcon.modify;
}

void AuthorizationViewModel.appIcon.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___appIcon);
  *(v3 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___appIcon) = *a1;
  if (a2)
  {
    v5 = v2;
    outlined consume of AuthorizationBackgroundView?(v4);
  }

  else
  {

    outlined consume of AuthorizationBackgroundView?(v4);
  }
}

uint64_t AuthorizationViewModel.lockoutText.getter()
{
  v0 = type metadata accessor for Calendar();
  v36 = *(v0 - 8);
  v1 = *(v36 + 64);
  __chkstk_darwin(v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DateComponents();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  __chkstk_darwin(v4);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v31 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of LACUIAngelConnectionHandling?(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return 0;
  }

  (*(v12 + 32))(v18, v10, v11);
  static Calendar.current.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMR);
  v19 = type metadata accessor for Calendar.Component();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = *(v20 + 80);
  v32 = v0;
  v23 = (v22 + 32) & ~v22;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000867F0;
  (*(v20 + 104))(v24 + v23, enum case for Calendar.Component.minute(_:), v19);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v24);
  swift_setDeallocating();
  (*(v20 + 8))(v24 + v23, v19);
  swift_deallocClassInstance();
  Date.init()();
  v25 = v33;
  Calendar.dateComponents(_:from:to:)();

  v26 = *(v12 + 8);
  v26(v16, v11);
  (*(v36 + 8))(v3, v32);
  v27 = DateComponents.minute.getter();
  LOBYTE(v23) = v28;
  (*(v34 + 8))(v25, v35);
  if ((v23 & 1) != 0 || v27 < 0)
  {
    v26(v18, v11);
    return 0;
  }

  result = v27 + 1;
  if (__OFADD__(v27, 1))
  {
    __break(1u);
  }

  else
  {
    v30 = static LocalizedStrings.tryAgainIn(minutes:)(result);
    v26(v18, v11);
    return v30;
  }

  return result;
}

uint64_t AuthorizationViewModel.devicePasscodeText.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {

    return static LocalizedStrings.enterPasscodeIpad.getter();
  }

  else if (v1)
  {

    return static LocalizedStrings.enterPasscode.getter();
  }

  else
  {

    return static LocalizedStrings.enterPasscodeIphone.getter();
  }
}

void AuthorizationViewModel.__allocating_init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, int a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v82 = a8;
  v81 = a7;
  v99 = a6;
  v97 = a1;
  v98 = a5;
  v94 = a4;
  v95 = a2;
  v96 = a3;
  v100 = a10;
  v101 = a11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v92 = *(v12 - 8);
  v93 = v12;
  v13 = *(v92 + 64);
  __chkstk_darwin(v12);
  v91 = &v81 - v14;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v89 = *(v90 - 8);
  v15 = *(v89 + 64);
  __chkstk_darwin(v90);
  v88 = &v81 - v16;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  v86 = *(v87 - 8);
  v17 = *(v86 + 64);
  __chkstk_darwin(v87);
  v19 = &v81 - v18;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v20 = *(*(v85 - 8) + 64);
  v21 = __chkstk_darwin(v85);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v81 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v81 - v29;
  v83 = v11;
  v31 = objc_allocWithZone(v11);
  v32 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showAuthorizationView;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33 = *(v27 + 32);
  v33(&v31[v32], v30, v26);
  v34 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showBiometryIntentButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v31[v34], v30, v26);
  v35 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__shouldShowCustomPasswordView;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v31[v35], v30, v26);
  v36 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__shouldShowDevicePasscodeView;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v31[v36], v30, v26);
  v37 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__passcodeFocused;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v31[v37], v30, v26);
  v84 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__blockedUntilDate;
  v38 = type metadata accessor for Date();
  (*(*(v38 - 8) + 56))(v25, 1, 1, v38);
  outlined init with copy of LACUIAngelConnectionHandling?(v25, v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  Published.init(initialValue:)();
  outlined destroy of LACUIAngelConnectionHandling?(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(v86 + 32))(&v31[v84], v19, v87);
  v39 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__promptText;
  aBlock = 0;
  v103 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v40 = v88;
  Published.init(initialValue:)();
  (*(v89 + 32))(&v31[v39], v40, v90);
  v41 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__wrongBioAttempts;
  aBlock = 0;
  v42 = v91;
  Published.init(initialValue:)();
  (*(v92 + 32))(&v31[v41], v42, v93);
  v43 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showBiometryRetryButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v31[v43], v30, v26);
  v44 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showFallbackButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v31[v44], v30, v26);
  v45 = v94;
  v46 = &v31[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion];
  *v46 = 0;
  v46[1] = 0;
  *&v31[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_dismissAnimationDuration] = 0x3FC3333333333333;
  v31[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_dismissed] = 0;
  v47 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v47);
  v48 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_isPad;
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIDevice, UIDevice_ptr);
  v31[v48] = static UIDevice.isPad.getter();
  *&v31[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_failures] = 0;
  v31[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_expectsDismissOnIpad] = 0;
  swift_unknownObjectWeakInit();
  v49 = &v31[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___cornerRadius];
  *v49 = 0;
  v49[8] = 1;
  v50 = &v31[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___backgroundOpacity];
  *v50 = 0;
  v50[8] = 1;
  v51 = &v31[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___biometrySubtitle];
  *v51 = 0;
  v51[1] = 0;
  v52 = &v31[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___passwordType];
  *v52 = 0;
  v52[8] = 1;
  *&v31[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___appIcon] = 1;
  v53 = *v46;
  v54 = v46[1];
  v55 = v100;
  v56 = v101;
  *v46 = v100;
  v46[1] = v56;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v55);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v53);
  v58 = v95;
  v57 = v96;
  *&v31[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_auditToken] = v95;
  *&v31[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_backoffCounter] = v45;
  *&v31[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_cachedContext] = v57;
  v60 = v97;
  v59 = v98;
  *&v31[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_configuration] = v97;
  v61 = &v31[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_failureLimit];
  *v61 = v59;
  v61[8] = v99 & 1;
  v62 = v57;
  v63 = v58;
  swift_unknownObjectRetain();
  v64 = v60;
  v31[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_fallbackMethod] = AuthenticationFallbackMethod.init(requirement:)([v64 requirement]);
  v65 = [v64 contextData];
  v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v67;

  v69 = objc_allocWithZone(LAContext);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v66, v68);
  v71 = [v69 initWithExternalizedContext:isa];

  if (v71)
  {
    *&v31[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context] = v71;
    *&v31[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_policy] = v81;
    v72 = v82;
    *&v31[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_userId] = v82;
    *&v31[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_options] = a9;
    v73 = v72;
    v74 = [v64 passwordFieldPlaceholder];
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;

    swift_beginAccess();
    v109 = v75;
    v110 = v77;
    Published.init(initialValue:)();
    swift_endAccess();
    v108.receiver = v31;
    v108.super_class = v83;
    v78 = objc_msgSendSuper2(&v108, "init");
    AuthorizationViewModel.setup()();
    AuthorizationViewModel.setupPrompt(inLockout:)(0);
    v79 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v106 = partial apply for closure #1 in AuthorizationViewModel.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:);
    v107 = v79;
    aBlock = _NSConcreteStackBlock;
    v103 = 1107296256;
    v104 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v105 = &block_descriptor_10;
    v80 = _Block_copy(&aBlock);

    [v45 currentBackoffErrorWithReply:v80];
    _Block_release(v80);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v100);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void AuthorizationViewModel.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, int a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v82 = a8;
  v81 = a7;
  v99 = a6;
  v97 = a1;
  v98 = a5;
  v94 = a4;
  v95 = a2;
  v96 = a3;
  v100 = a10;
  v101 = a11;
  ObjectType = swift_getObjectType();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v92 = *(v13 - 8);
  v93 = v13;
  v14 = *(v92 + 64);
  __chkstk_darwin(v13);
  v91 = &v81 - v15;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v89 = *(v90 - 8);
  v16 = *(v89 + 64);
  __chkstk_darwin(v90);
  v88 = &v81 - v17;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  v86 = *(v87 - 8);
  v18 = *(v86 + 64);
  __chkstk_darwin(v87);
  v20 = &v81 - v19;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v21 = *(*(v85 - 8) + 64);
  v22 = __chkstk_darwin(v85);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v81 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v81 - v30;
  v32 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showAuthorizationView;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33 = *(v28 + 32);
  v33(&v11[v32], v31, v27);
  v34 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showBiometryIntentButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v11[v34], v31, v27);
  v35 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__shouldShowCustomPasswordView;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v11[v35], v31, v27);
  v36 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__shouldShowDevicePasscodeView;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v11[v36], v31, v27);
  v37 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__passcodeFocused;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v11[v37], v31, v27);
  v84 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__blockedUntilDate;
  v38 = type metadata accessor for Date();
  (*(*(v38 - 8) + 56))(v26, 1, 1, v38);
  outlined init with copy of LACUIAngelConnectionHandling?(v26, v24, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  Published.init(initialValue:)();
  outlined destroy of LACUIAngelConnectionHandling?(v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(v86 + 32))(&v11[v84], v20, v87);
  v39 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__promptText;
  aBlock = 0;
  v103 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v40 = v88;
  Published.init(initialValue:)();
  (*(v89 + 32))(&v12[v39], v40, v90);
  v41 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__wrongBioAttempts;
  aBlock = 0;
  v42 = v91;
  Published.init(initialValue:)();
  (*(v92 + 32))(&v12[v41], v42, v93);
  v43 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showBiometryRetryButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v12[v43], v31, v27);
  v44 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showFallbackButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v12[v44], v31, v27);
  v45 = v94;
  v46 = &v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion];
  *v46 = 0;
  v46[1] = 0;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_dismissAnimationDuration] = 0x3FC3333333333333;
  v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_dismissed] = 0;
  v47 = *LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)();
  v48 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_isPad;
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIDevice, UIDevice_ptr);
  v12[v48] = static UIDevice.isPad.getter();
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_failures] = 0;
  v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_expectsDismissOnIpad] = 0;
  swift_unknownObjectWeakInit();
  v49 = &v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___cornerRadius];
  *v49 = 0;
  v49[8] = 1;
  v50 = &v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___backgroundOpacity];
  *v50 = 0;
  v50[8] = 1;
  v51 = &v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___biometrySubtitle];
  *v51 = 0;
  v51[1] = 0;
  v52 = &v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___passwordType];
  *v52 = 0;
  v52[8] = 1;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___appIcon] = 1;
  v53 = *v46;
  v54 = v46[1];
  v55 = v100;
  v56 = v101;
  *v46 = v100;
  v46[1] = v56;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v55);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v53);
  v58 = v95;
  v57 = v96;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_auditToken] = v95;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_backoffCounter] = v45;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_cachedContext] = v57;
  v60 = v97;
  v59 = v98;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_configuration] = v97;
  v61 = &v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_failureLimit];
  *v61 = v59;
  v61[8] = v99 & 1;
  v62 = v57;
  v63 = v58;
  swift_unknownObjectRetain();
  v64 = v60;
  v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_fallbackMethod] = AuthenticationFallbackMethod.init(requirement:)([v64 requirement]);
  v65 = [v64 contextData];
  v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v67;

  v69 = objc_allocWithZone(LAContext);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v66, v68);
  v71 = [v69 initWithExternalizedContext:isa];

  if (v71)
  {
    *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context] = v71;
    *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_policy] = v81;
    v72 = v82;
    *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_userId] = v82;
    *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_options] = a9;
    v73 = v72;
    v74 = [v64 passwordFieldPlaceholder];
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;

    swift_beginAccess();
    v109 = v75;
    v110 = v77;
    Published.init(initialValue:)();
    swift_endAccess();
    v108.receiver = v12;
    v108.super_class = ObjectType;
    v78 = objc_msgSendSuper2(&v108, "init");
    AuthorizationViewModel.setup()();
    AuthorizationViewModel.setupPrompt(inLockout:)(0);
    v79 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v106 = closure #1 in AuthorizationViewModel.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)partial apply;
    v107 = v79;
    aBlock = _NSConcreteStackBlock;
    v103 = 1107296256;
    v104 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v105 = &block_descriptor_62;
    v80 = _Block_copy(&aBlock);

    [v45 currentBackoffErrorWithReply:v80];
    _Block_release(v80);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v100);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t AuthorizationViewModel.setup()()
{
  v1 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_configuration];
  result = [v1 requirement];
  if (result > 3)
  {
    if (result != 4)
    {
      if (result == 5)
      {
        goto LABEL_13;
      }

      if (result != 6)
      {
        return result;
      }
    }

    v5 = [objc_opt_self() currentPasscode];
    v6 = [v5 type];

    if ((v6 - 1) > 3)
    {
      v7 = &LACustomPasswordTypeAlphanumeric;
    }

    else
    {
      v7 = *(&off_1000AD8E0 + (v6 - 1));
    }

    [v1 setPasscodeLength:*v7];
    goto LABEL_13;
  }

  if (result == 1)
  {
LABEL_13:
    v8 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context];
    [v8 canEvaluatePolicy:1 error:0];
    if ([v8 biometryType] == 2)
    {
      [v1 requiresIntent];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v0;
    return static Published.subscript.setter();
  }

  if (result != 2)
  {
    if (result != 3)
    {
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v0;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v3;
    return static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v0;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  static Published.subscript.setter();
  v12 = [objc_opt_self() currentPasscode];
  v13 = [v12 type];

  if ((v13 - 1) > 3)
  {
    v14 = &LACustomPasswordTypeAlphanumeric;
  }

  else
  {
    v14 = *(&off_1000AD8E0 + (v13 - 1));
  }

  return [v1 setPasscodeLength:*v14];
}

uint64_t AuthorizationViewModel.setupPrompt(inLockout:)(char a1)
{
  if (a1)
  {
    static LocalizedStrings.deviceBlocked.getter();
LABEL_19:
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v1;
    return static Published.subscript.setter();
  }

  v2 = *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_configuration];
  if ([v2 mode])
  {
    goto LABEL_4;
  }

  v5 = [v2 prompt];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      goto LABEL_4;
    }
  }

  if (v1[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_fallbackMethod] == 2)
  {
    goto LABEL_4;
  }

  v21 = v1[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_fallbackMethod];
  lazy protocol witness table accessor for type AuthenticationFallbackMethod and conformance AuthenticationFallbackMethod();
  v11 = v1;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_4;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v21 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v21 != 1)
    {
LABEL_4:
      v3 = [v2 prompt];
      if (v3)
      {
        v4 = v3;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      goto LABEL_19;
    }
  }

  v12 = AuthorizationViewModel.passwordType.getter();
  v13 = LACustomPasswordTypeFourDigits;
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v13 == v12 || LACustomPasswordTypeSixDigits == v12)
  {
    if (v15 == 1)
    {
      static LocalizedStrings.enterPasscodeIpad.getter();
    }

    else if (v15)
    {
      static LocalizedStrings.enterPasscode.getter();
    }

    else
    {
      static LocalizedStrings.enterPasscodeIphone.getter();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v11;
  }

  else
  {
    if (v15 == 1)
    {
      static LocalizedStrings.enterPasscodeIpad.getter();
    }

    else if (v15)
    {
      static LocalizedStrings.enterPasscode.getter();
    }

    else
    {
      static LocalizedStrings.enterPasscodeIphone.getter();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v11;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = v19;
  }

  return static Published.subscript.setter();
}

uint64_t closure #1 in AuthorizationViewModel.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    swift_errorRetain();
    v18 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = a1;
    aBlock[4] = partial apply for closure #1 in closure #1 in AuthorizationViewModel.switchToBackoffScreen(error:);
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_163;
    v16 = _Block_copy(aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v17 = v18;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v3 + 8))(v6, v2);
    return (*(v8 + 8))(v12, v7);
  }

  return result;
}

uint64_t AuthorizationViewModel.switchToBackoffScreen(error:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in AuthorizationViewModel.switchToBackoffScreen(error:);
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_69;
  v15 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t specialized AuthorizationViewModel.dismiss(error:reply:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = __chkstk_darwin(v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_dismissed) & 1) == 0)
  {
    *(a2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_dismissed) = 1;
    v15 = *(a2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_isPad);
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    v22 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    if (v15)
    {
      v17[2] = v16;
      v17[3] = a1;
      v17[4] = LACPolicy.policy.getter;
      v17[5] = 0;
      v27 = closure #1 in AuthorizationViewModel.dismiss(error:reply:)partial apply;
      v28 = v17;
      aBlock = _NSConcreteStackBlock;
      v24 = 1107296256;
      v18 = &block_descriptor_140;
    }

    else
    {
      v17[2] = 0x3FC3333333333333;
      v17[3] = v16;
      v17[4] = a1;
      v17[5] = LACPolicy.policy.getter;
      v17[6] = 0;
      v27 = closure #2 in AuthorizationViewModel.dismiss(error:reply:)partial apply;
      v28 = v17;
      aBlock = _NSConcreteStackBlock;
      v24 = 1107296256;
      v18 = &block_descriptor_132;
    }

    v25 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v26 = v18;
    v19 = _Block_copy(&aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v22;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v14, v9);
  }

  return result;
}

uint64_t AuthorizationViewModel.dismiss(error:reply:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_dismissed))
  {
    return a2(v15);
  }

  v27 = v15;
  v28 = v8;
  *(v3 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_dismissed) = 1;
  v19 = *(v3 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_isPad);
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v26 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  if (v19 == 1)
  {
    v21[2] = v20;
    v21[3] = a1;
    v21[4] = a2;
    v21[5] = a3;
    v33 = partial apply for closure #1 in AuthorizationViewModel.dismiss(error:reply:);
    v34 = v21;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v22 = &block_descriptor_83;
  }

  else
  {
    v21[2] = 0x3FC3333333333333;
    v21[3] = v20;
    v21[4] = a1;
    v21[5] = a2;
    v21[6] = a3;
    v33 = partial apply for closure #2 in AuthorizationViewModel.dismiss(error:reply:);
    v34 = v21;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v22 = &block_descriptor_76;
  }

  v31 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v32 = v22;
  v23 = _Block_copy(&aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v26;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v28 + 8))(v11, v7);
  return (*(v13 + 8))(v17, v27);
}

uint64_t closure #1 in AuthorizationViewModel.dismiss(error:reply:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.setter();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_expectsDismissOnIpad;
    v7 = Strong;
    swift_beginAccess();
    v7[v6] = 1;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = (v8 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion);
    v11 = *(v8 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion);
    if (v11)
    {
      v12 = v10[1];

      v11(a2);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);
      v13 = *v10;
      v14 = v10[1];
      *v10 = 0;
      v10[1] = 0;
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v13);
    }
  }

  return a3();
}

uint64_t closure #2 in AuthorizationViewModel.dismiss(error:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v36 = a3;
  v35 = a2;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v39 - 8);
  v4 = *(v42 + 64);
  __chkstk_darwin(v39);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  __chkstk_darwin(v6);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v33 - v16;
  __chkstk_darwin(v15);
  v19 = &v33 - v18;
  static Animation.easeIn(duration:)();
  swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  withAnimation<A>(_:_:)();

  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v10 + 8);
  v33 = v9;
  v22(v14, v9);
  + infix(_:_:)();
  v22(v17, v9);
  v23 = swift_allocObject();
  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v25 = swift_allocObject();
  v26 = v35;
  v25[2] = v23;
  v25[3] = v26;
  v27 = v37;
  v25[4] = v36;
  v25[5] = v27;
  aBlock[4] = partial apply for closure #2 in closure #2 in AuthorizationViewModel.dismiss(error:reply:);
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_149;
  v28 = _Block_copy(aBlock);
  swift_errorRetain();

  v29 = v34;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v31 = v38;
  v30 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v28);

  (*(v42 + 8))(v31, v30);
  (*(v40 + 8))(v29, v41);
  return (v22)(v19, v33);
}

id AuthorizationViewModel.verify(passcode:reply:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (aBlock == 1)
  {
    v10 = *(v4 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_cachedContext);
    if (v10 && (result = [v10 externalizedContext]) != 0 || (result = objc_msgSend(*(v4 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context), "externalizedContext")) != 0)
    {
      v12 = result;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      DevicePasscodeVerifier.verify(passcode:acmContext:userId:policy:options:auditToken:reply:)(a1, a2, v13, v15, *(v4 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_userId), *(v4 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_policy), *(v4 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_options), *(v4 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_auditToken), a3, a4, ObjectType, &protocol witness table for AuthorizationViewModel);
      return outlined consume of Data._Representation(v13, v15);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return a3(0);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

Swift::Void __swiftcall AuthorizationViewModel.retryBiometryEvaluation()()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  [*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context) retryProcessedEvent:7 reply:0];
}

Swift::Void __swiftcall AuthorizationViewModel.switchToFallback(directly:)(Swift::Bool directly)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v25 - v18;
  if (directly)
  {
    v20 = static Animation.linear(duration:)();
    __chkstk_darwin(v20);
    *(&v25 - 2) = v1;
    withAnimation<A>(_:_:)();
  }

  else
  {
    v21 = *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context);
    [v21 canEvaluatePolicy:1 error:0];
    [v21 biometryType];
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    v26 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v27 = *(v13 + 8);
    v27(v17, v12);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #2 in AuthorizationViewModel.switchToFallback(directly:);
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_90;
    v23 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = v26;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v23);

    (*(v4 + 8))(v7, v3);
    (*(v28 + 8))(v11, v29);
    v27(v19, v12);
  }
}

uint64_t AuthorizationViewModel.showFallback()()
{
  if (*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_fallbackMethod) == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v0 = v0;
    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t closure #1 in AuthorizationViewModel.switchToBackoffScreen(error:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v54 = *(v3 - 8);
  v4 = v54[8];
  (__chkstk_darwin)();
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  v8 = (__chkstk_darwin)();
  v51 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v52 = &v50 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v50 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v50 - v16;
  __chkstk_darwin(v15);
  v53 = &v50 - v18;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = 0;
    static Published.subscript.setter();
  }

  v50 = a2;
  v19 = _convertErrorToNSError(_:)();
  v20 = [v19 userInfo];

  v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v21 + 16))
  {
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23);
    v26 = v25;

    if (v26)
    {
      outlined init with copy of Any(*(v21 + 56) + 32 * v24, aBlock);

      v27 = v53;
      v28 = swift_dynamicCast();
      v29 = v54;
      v30 = v54[7];
      v30(v27, v28 ^ 1u, 1, v3);
      goto LABEL_8;
    }
  }

  else
  {
  }

  v27 = v53;
  v29 = v54;
  v30 = v54[7];
  v30(v53, 1, 1, v3);
LABEL_8:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    outlined init with copy of LACUIAngelConnectionHandling?(v27, v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((v29[6])(v17, 1, v3) == 1)
    {
      outlined destroy of LACUIAngelConnectionHandling?(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v33 = 0;
    }

    else
    {
      Date.init()();
      v34 = Date.compare(_:)();
      v35 = v54[1];
      v35(v6, v3);
      v35(v17, v3);
      v36 = v34 == 1;
      v27 = v53;
      v29 = v54;
      v33 = v36;
    }

    AuthorizationViewModel.setupPrompt(inLockout:)(v33);
  }

  outlined init with copy of LACUIAngelConnectionHandling?(v27, v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v29[6])(v14, 1, v3) == 1)
  {
    outlined destroy of LACUIAngelConnectionHandling?(v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_21:
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v48 = v52;
      v30(v52, 1, 1, v3);
      swift_getKeyPath();
      swift_getKeyPath();
      outlined init with copy of LACUIAngelConnectionHandling?(v48, v51, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      static Published.subscript.setter();
      outlined destroy of LACUIAngelConnectionHandling?(v48, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v56 = 1;
      static Published.subscript.setter();
    }

    return outlined destroy of LACUIAngelConnectionHandling?(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  v37 = v29;
  Date.init()();
  v38 = Date.compare(_:)();
  v39 = v37[1];
  v39(v6, v3);
  v39(v14, v3);
  if (v38 != 1)
  {
    goto LABEL_21;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v40 = v52;
    outlined init with copy of LACUIAngelConnectionHandling?(v27, v52, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of LACUIAngelConnectionHandling?(v40, v51, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    static Published.subscript.setter();
    outlined destroy of LACUIAngelConnectionHandling?(v40, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  v41 = objc_opt_self();
  v42 = swift_allocObject();
  swift_beginAccess();
  v43 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v44 = swift_allocObject();
  v45 = v50;
  *(v44 + 16) = v42;
  *(v44 + 24) = v45;
  aBlock[4] = partial apply for closure #1 in closure #1 in AuthorizationViewModel.switchToBackoffScreen(error:);
  aBlock[5] = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  aBlock[3] = &block_descriptor_156;
  v46 = _Block_copy(aBlock);
  swift_errorRetain();

  v47 = [v41 scheduledTimerWithTimeInterval:0 repeats:v46 block:1.0];
  _Block_release(v46);

  return outlined destroy of LACUIAngelConnectionHandling?(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

Swift::Void __swiftcall AuthorizationViewModel.passcodeVerified(result:)(Swift::OpaquePointer result)
{
  v2 = (v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion);
  v3 = *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion);
  if (v3)
  {
    v4 = v2[1];

    v3(0);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
    v5 = *v2;
    v6 = v2[1];
    *v2 = 0;
    v2[1] = 0;

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
  }
}

Swift::Void __swiftcall AuthorizationViewModel.passcodeRejected()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong respondsToSelector:"viewModelDidRejectDevicePasscode:"])
    {
      [v2 viewModelDidRejectDevicePasscode:v0];
    }

    swift_unknownObjectRelease();
  }
}

uint64_t AuthorizationViewModel.passcodeAuthenticationFailed(error:)(uint64_t result)
{
  v2 = (v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion);
  v3 = *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion);
  if (v3)
  {
    v4 = result;
    v5 = v2[1];

    v3(v4);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
    v6 = *v2;
    v7 = v2[1];
    *v2 = 0;
    v2[1] = 0;

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
  }

  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance AuthorizationViewModel@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall AuthorizationViewModel.biometricNoMatch()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in AuthorizationViewModel.biometricNoMatch();
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_94;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
}

Swift::Void __swiftcall AuthorizationViewModel.biometryDidBecomeIdle()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in AuthorizationViewModel.biometryDidBecomeIdle(), v6);
}

uint64_t closure #1 in AuthorizationViewModel.biometryDidBecomeIdle()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(closure #1 in AuthorizationViewModel.biometryDidBecomeIdle(), 0, 0);
}

uint64_t closure #1 in AuthorizationViewModel.biometryDidBecomeIdle()()
{
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in AuthorizationViewModel.biometryDidBecomeIdle(), v2, v1);
}

{
  v2 = v0[3];
  v1 = v0[4];

  closure #1 in closure #1 in AuthorizationViewModel.biometryDidBecomeIdle()(v2);
  v3 = v0[1];

  return v3();
}

void (*closure #1 in closure #1 in AuthorizationViewModel.biometryDidBecomeIdle()(uint64_t a1))(id *, void)
{
  v2 = *(a1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context);
  [v2 canEvaluatePolicy:1 error:0];
  result = [v2 biometryType];
  if (result == 2)
  {
    v4 = *(a1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context);
    v9[0] = 0;
    [v4 canEvaluatePolicy:1 error:v9];
    v5 = v9[0];
    v6 = v9[0];
    if (v5)
    {
      specialized AuthorizationViewModel.authenticationResult(_:error:context:)(v6);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      result = static Published.subscript.modify();
      if (__OFADD__(*v7, 1))
      {
        __break(1u);
      }

      else
      {
        ++*v7;
        result(v9, 0);

        __chkstk_darwin(v8);
        static Animation.default.getter();
        withAnimation<A>(_:_:)();
      }
    }
  }

  return result;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of LACUIAngelConnectionHandling?(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of LACUIAngelConnectionHandling?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of LACUIAngelConnectionHandling?(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of LACUIAngelConnectionHandling?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance LACustomPasswordType(uint64_t a1, uint64_t a2)
{
  result = static Int._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance LACustomPasswordType(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance LACustomPasswordType@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LACustomPasswordType()
{
  v2 = *v0;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type LACustomPasswordType and conformance LACustomPasswordType, type metadata accessor for LACustomPasswordType);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type LACustomPasswordType and conformance LACustomPasswordType, type metadata accessor for LACustomPasswordType);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *_sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd, _ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMR);
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
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, &type metadata accessor for Calendar.Component);
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
          lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, &type metadata accessor for Calendar.Component);
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

uint64_t sub_10007275C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in AuthorizationViewModel.retryBiometryEvaluation()()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t partial apply for closure #2 in AuthorizationViewModel.switchToFallback(directly:)()
{
  static Animation.linear(duration:)();
  swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  withAnimation<A>(_:_:)();
}

uint64_t partial apply for closure #1 in AuthorizationViewModel.switchToFallback(directly:)()
{
  v1 = *(v0 + 16);
  AuthorizationViewModel.showFallback()();
  AuthorizationViewModel.setupPrompt(inLockout:)(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t specialized AuthorizationViewModel.authenticationResult(_:error:context:)(uint64_t a1)
{
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v28 - 8);
  v3 = *(v31 + 64);
  __chkstk_darwin(v28);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v27 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v18 = *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context);
  [v18 canEvaluatePolicy:1 error:0];
  [v18 biometryType];
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v19 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v11 + 8);
  v20(v15, v10);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in AuthorizationViewModel.authenticationResult(_:error:context:);
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_124;
  v23 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v24 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v23);

  (*(v31 + 8))(v5, v24);
  (*(v29 + 8))(v9, v30);
  return (v20)(v17, v27);
}

void partial apply for closure #1 in AuthorizationViewModel.biometricNoMatch()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context;
    v2 = Strong;
    [*(Strong + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context) canEvaluatePolicy:1 error:0];
    v3 = [*&v2[v1] biometryType];

    if (v3 == 1)
    {
      v4 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:2];
      [v4 impactOccurred];

      swift_allocObject();
      swift_beginAccess();
      v5 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      static Animation.default.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
      withAnimation<A>(_:_:)();
    }
  }
}

uint64_t partial apply for closure #1 in AuthorizationViewModel.biometryDidBecomeIdle()(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:);

  return closure #1 in AuthorizationViewModel.biometryDidBecomeIdle()(a1, v5, v6, v4);
}

uint64_t type metadata accessor for AuthorizationViewModel()
{
  result = type metadata singleton initialization cache for AuthorizationViewModel;
  if (!type metadata singleton initialization cache for AuthorizationViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AuthorizationViewModel()
{
  type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Bool>, &type metadata for Bool, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    type metadata accessor for Published<NSXPCConnection?>(319, &lazy cache variable for type metadata for Published<Date?>, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v4 <= 0x3F)
    {
      v13 = *(v3 - 8) + 64;
      type metadata accessor for Published<NSXPCConnection?>(319, &lazy cache variable for type metadata for Published<String?>, &_sSSSgMd, &_sSSSgMR);
      if (v6 <= 0x3F)
      {
        v14 = *(v5 - 8) + 64;
        type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<String>, &type metadata for String, &type metadata accessor for Published);
        if (v8 <= 0x3F)
        {
          v15 = *(v7 - 8) + 64;
          type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Int>, &type metadata for Int, &type metadata accessor for Published);
          if (v10 <= 0x3F)
          {
            v16 = *(v9 - 8) + 64;
            v11 = type metadata accessor for Logger();
            if (v12 <= 0x3F)
            {
              v17 = *(v11 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t closure #1 in AuthorizationViewModel.biometryDidBecomeIdle()partial apply(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)partial apply;

  return closure #1 in AuthorizationViewModel.biometryDidBecomeIdle()(a1, v5, v6, v4);
}

uint64_t sub_1000735C8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_114(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)partial apply;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in AuthorizationViewModel.biometryDidBecomeIdle()()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6 >= 2)
  {
    v3 = v2[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_fallbackMethod] != 2;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  return static Published.subscript.setter();
}

void partial apply for closure #1 in closure #1 in AuthorizationViewModel.biometricNoMatch()(BOOL *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = static Published.subscript.modify();
  if (!__OFADD__(*v4, 1))
  {
    ++*v4;
    v3(v5, 0);

LABEL_4:
    *a1 = Strong == 0;
    return;
  }

  __break(1u);
}

void partial apply for closure #1 in AuthorizationViewModel.authenticationResult(_:error:context:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      if (*(Strong + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_fallbackMethod) == 2)
      {
        specialized AuthorizationViewModel.dismiss(error:reply:)(v2, Strong);
      }

      else
      {
        AuthorizationViewModel.switchToFallback(directly:)(0);
      }
    }

    else
    {
      v5 = (Strong + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion);
      v6 = *(Strong + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion);
      if (v6)
      {
        v7 = v5[1];

        v6(0);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
        v8 = *v5;
        v9 = v5[1];
        *v5 = 0;
        v5[1] = 0;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
      }
    }
  }
}

uint64_t objectdestroy_72Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #2 in AuthorizationViewModel.switchToFallback(directly:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    AuthorizationViewModel.showFallback()();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    AuthorizationViewModel.setupPrompt(inLockout:)(0);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.setter();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in AuthorizationViewModel.dismiss(error:reply:)@<X0>(BOOL *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = result;
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    result = static Published.subscript.setter();
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t objectdestroy_79Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #2 in closure #2 in AuthorizationViewModel.dismiss(error:reply:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = (Strong + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion);
    v8 = *(Strong + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion);
    if (v8)
    {
      v9 = v7[1];

      v8(v2);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
      v10 = *v7;
      v11 = v7[1];
      *v7 = 0;
      v7[1] = 0;
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v10);
    }
  }

  return v4();
}

void partial apply for closure #1 in closure #1 in AuthorizationViewModel.switchToBackoffScreen(error:)()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    AuthorizationViewModel.switchToBackoffScreen(error:)(v1);
  }
}

id TerminateAssertion.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminateAssertion_completion];
  v4 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminateAssertion_completion];
  if (v4)
  {
    v5 = v3[1];

    v4(v1);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
    v6 = *v3;
    v7 = v3[1];
    *v3 = 0;
    v3[1] = 0;
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
  }

  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "dealloc");
}

Swift::Void __swiftcall TerminateAssertion.invalidate()()
{
  v1 = (v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminateAssertion_completion);
  v2 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminateAssertion_completion);
  if (v2)
  {
    v3 = v1[1];

    v2();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
    v4 = *v1;
    v5 = v1[1];
    *v1 = 0;
    v1[1] = 0;

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
  }
}

uint64_t *TerminationService.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static TerminationService.shared;
}

id static TerminationService.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static TerminationService.shared;

  return v0;
}

void static TerminationService.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static TerminationService.shared;
  static TerminationService.shared = a1;
}

uint64_t (*static TerminationService.shared.modify())()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return AngelSceneRemoteAlert.persistentIdentifier.modify;
}

id key path getter for static TerminationService.shared : TerminationService.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static TerminationService.shared;
  *a1 = static TerminationService.shared;

  return v2;
}

void key path setter for static TerminationService.shared : TerminationService.Type(id *a1)
{
  v1 = one-time initialization token for shared;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static TerminationService.shared;
  static TerminationService.shared = v2;
}

id TerminationService.terminate(force:)()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminationService_assertions) count];
  if (!result && *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminationService_terminationScheduled) == 1)
  {
    type metadata accessor for OS_dispatch_queue();
    (*(v12 + 104))(v15, enum case for DispatchQoS.QoSClass.background(_:), v11);
    v19[0] = static OS_dispatch_queue.global(qos:)();
    (*(v12 + 8))(v15, v11);
    aBlock[4] = closure #1 in TerminationService.terminate(force:);
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_11;
    v17 = _Block_copy(aBlock);
    static DispatchQoS.unspecified.getter();
    v19[1] = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v19[0];
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v2 + 8))(v5, v1);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

id TerminationService.assertion()()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = type metadata accessor for TerminateAssertion();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminateAssertion_completion];
  *v4 = partial apply for closure #1 in TerminationService.assertion();
  v4[1] = v1;
  v7.receiver = v3;
  v7.super_class = v2;
  v5 = objc_msgSendSuper2(&v7, "init");
  [*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminationService_assertions) addObject:v5];
  return v5;
}

uint64_t sub_1000749E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void partial apply for closure #1 in TerminationService.assertion()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(Strong + OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminationService_assertions) removeObject:a1];
    TerminationService.terminate(force:)();
  }
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t key path getter for SceneDelegate.presenter : SceneDelegate@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t key path setter for SceneDelegate.presenter : SceneDelegate(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x70);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

uint64_t SceneDelegate.presenter.getter()
{
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_presenter;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t SceneDelegate.presenter.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_presenter;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t key path getter for SceneDelegate.sceneController : SceneDelegate@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for SceneDelegate.sceneController : SceneDelegate(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x88);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t SceneDelegate.sceneController.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_sceneController);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t SceneDelegate.sceneController.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_sceneController);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t key path getter for SceneDelegate.window : SceneDelegate@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t key path setter for SceneDelegate.window : SceneDelegate(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0xA0);
  v4 = *a1;
  return v3(v2);
}

void *SceneDelegate.window.getter()
{
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SceneDelegate.window.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

unint64_t type metadata accessor for UIOpenURLContext()
{
  result = lazy cache variable for type metadata for UIOpenURLContext;
  if (!lazy cache variable for type metadata for UIOpenURLContext)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIOpenURLContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIOpenURLContext and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIOpenURLContext and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIOpenURLContext and conformance NSObject)
  {
    type metadata accessor for UIOpenURLContext();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIOpenURLContext and conformance NSObject);
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo16UIOpenURLContextCG_10Foundation3URLVs5NeverOTg50151_s28LocalAuthenticationUIService13SceneDelegateC5scene_13willConnectTo7optionsySo7UISceneC_So0K7SessionCSo0K17ConnectionOptionsCtF10Foundation3URLVSo16dE6CXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = &_swiftEmptyArrayStorage;
  if (v8)
  {
    v51 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
    v46 = v51;
    if (v45)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = _HashTable.startBucket.getter();
      v10 = *(a1 + 36);
    }

    v48 = result;
    v49 = v10;
    v50 = v45 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v41 = v8;
      v42 = v44 + 32;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v39 = a1 + 56;
      v40 = v13;
      v37[1] = v1;
      v38 = a1 + 64;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v48;
        v17 = v49;
        v18 = v50;
        v19 = a1;
        specialized Set.subscript.getter(v48, v49, v50, a1);
        v21 = v20;
        v22 = [v20 URL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = v46;
        v51 = v46;
        v25 = v46[2];
        v24 = v46[3];
        if (v25 >= v24 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1);
          v23 = v51;
        }

        v23[2] = v25 + 1;
        v26 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v46 = v23;
        result = (*(v44 + 32))(v23 + v26 + *(v44 + 72) * v25, v7, v43);
        if (v45)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo16UIOpenURLContextC_GMd, &_sSh5IndexVySo16UIOpenURLContextC_GMR);
          v14 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v14(v47, 0);
          if (v12 == v8)
          {
LABEL_34:
            outlined consume of Set<UIOpenURLContext>.Index._Variant(v48, v49, v50);
            return v46;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v27 = 1 << *(v19 + 32);
          if (v16 >= v27)
          {
            goto LABEL_38;
          }

          v28 = v16 >> 6;
          v29 = *(v39 + 8 * (v16 >> 6));
          if (((v29 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_40;
          }

          v30 = v29 & (-2 << (v16 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v16, v17, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v16, v17, 0);
          }

LABEL_33:
          v36 = *(v19 + 36);
          v48 = v27;
          v49 = v36;
          v50 = 0;
          v8 = v41;
          if (v12 == v41)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall SceneDelegate.sceneDidDisconnect(_:)(UIScene a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  v7 = a1.super.super.isa;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20 = v2;
    v11 = v10;
    v19 = swift_slowAlloc();
    v21 = v19;
    *v11 = 136315138;
    v12 = [(objc_class *)v7 session];
    v13 = [v12 persistentIdentifier];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v21);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Did disconnect from scene: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);

    (*(v3 + 8))(v6, v20);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  type metadata accessor for SceneDelegate();
  AngelSceneDelegate.disconnect(scene:)(v7);
}

id SceneDelegate.init()()
{
  *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_presenter] = 0;
  v1 = &v0[OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_sceneController];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_window] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v3, "init");
}

id SceneDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*protocol witness for AngelSceneDelegate.window.modify in conformance SceneDelegate(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((swift_isaMask & *v1) + 0xA8))();
  return protocol witness for LACUISceneControlling.delegate.modify in conformance SceneControllerFrontBoard;
}

uint64_t static LocalizedStrings.continue.getter()
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v0 = static NSBundle.current;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v2._object = 0x8000000100099F80;
  v2._countAndFlagsBits = 0xD000000000000017;
  v1.value._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t static LocalizedStrings.enterPasscode.getter()
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v0 = static NSBundle.current;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v2._object = 0x8000000100099FA0;
  v2._countAndFlagsBits = 0xD000000000000013;
  v1.value._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t static LocalizedStrings.enterPasscodeIpad.getter()
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v0 = static NSBundle.current;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v2._object = 0x8000000100099FC0;
  v2._countAndFlagsBits = 0xD000000000000013;
  v1.value._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t static LocalizedStrings.enterPasscodeIphone.getter()
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v0 = static NSBundle.current;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v2._object = 0x8000000100099FE0;
  v2._countAndFlagsBits = 0xD000000000000015;
  v1.value._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t static LocalizedStrings.enterPasscodeUpdate.getter()
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v0 = static NSBundle.current;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v2._object = 0x8000000100099820;
  v2._countAndFlagsBits = 0xD000000000000015;
  v1.value._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t static LocalizedStrings.cancel.getter(uint64_t a1, void *a2)
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v4 = static NSBundle.current;
  v10._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  v5.value._object = 0xE800000000000000;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t static LocalizedStrings.tryAgainIn(minutes:)(uint64_t a1)
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v2 = static NSBundle.current;
  v9._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v4._object = 0x800000010009A000;
  v4._countAndFlagsBits = 0xD000000000000012;
  v3.value._object = 0xE800000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000867F0;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = a1;
  v7 = static String.localizedStringWithFormat(_:_:)();

  return v7;
}

uint64_t static LocalizedStrings.AuthenticationReason.default(callerName:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v4 = static NSBundle.current;
  v11._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v6._object = 0x800000010009A020;
  v6._countAndFlagsBits = 0xD000000000000019;
  v5.value._object = 0xE800000000000000;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000867F0;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = static String.localizedStringWithFormat(_:_:)();

  return v9;
}

uint64_t static LocalizedStrings.AuthenticationReason.custom(_:callerName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.current;
  v16._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0x494B53415F505041;
  v9._object = 0xEF485455415F474ELL;
  v10.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v10.value._object = 0xE800000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100087EF0;
  *(v12 + 56) = &type metadata for String;
  v13 = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v13;
  *(v12 + 64) = v13;
  *(v12 + 72) = a1;
  *(v12 + 80) = a2;

  v14 = static String.localizedStringWithFormat(_:_:)();

  return v14;
}

uint64_t static LocalizedStrings.Digits.zero.getter(Swift::Int a1)
{
  v2 = objc_opt_self();
  type metadata accessor for NSNumber();
  isa = NSNumber.init(integerLiteral:)(a1).super.super.isa;
  v4 = [v2 localizedStringFromNumber:isa numberStyle:1];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LocalizedStrings.Pearl.hwIssueHighTemprerature.getter()
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v0 = static NSBundle.current;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v2._object = 0x800000010009A040;
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  v1.value._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t static LocalizedStrings.Pearl.hwIssueLowTemprerature.getter()
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v0 = static NSBundle.current;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v2._object = 0x800000010009A060;
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  v1.value._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

id one-time initialization function for current()
{
  type metadata accessor for NSBundle.Sentinel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static NSBundle.current = result;
  return result;
}

uint64_t static LoggerPool.logger(category:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  if (one-time initialization token for loggers != -1)
  {
    swift_once();
  }

  v11 = LogCategory.name.getter(a1);
  v13 = v12;
  swift_beginAccess();
  v14 = static LoggerPool.loggers;
  if (*(static LoggerPool.loggers + 16))
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v13);
    v17 = v16;

    if (v17)
    {
      v18 = *(v14 + 56);
      v19 = type metadata accessor for Logger();
      v20 = *(v19 - 8);
      (*(v20 + 16))(v10, v18 + *(v20 + 72) * v15, v19);
      (*(v20 + 56))(v10, 0, 1, v19);
      goto LABEL_8;
    }
  }

  else
  {
  }

  v19 = type metadata accessor for Logger();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
LABEL_8:
  swift_endAccess();
  type metadata accessor for Logger();
  v21 = *(v19 - 8);
  v22 = *(v21 + 48);
  if (v22(v10, 1, v19) == 1)
  {
    LogCategory.name.getter(a1);
    Logger.init(subsystem:category:)();
    if (v22(v10, 1, v19) != 1)
    {
      outlined destroy of Logger?(v10);
    }
  }

  else
  {
    (*(v21 + 32))(a2, v10, v19);
  }

  v23 = LogCategory.name.getter(a1);
  v25 = v24;
  (*(v21 + 16))(v8, a2, v19);
  (*(v21 + 56))(v8, 0, 1, v19);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v8, v23, v25);
  return swift_endAccess();
}

uint64_t LogCategory.name.getter(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = &_swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, &_swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x6369767265534955;
  *(v5 + 5) = 0xE900000000000065;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x7463617265746E49;
    *(v8 + 5) = 0xEB00000000657669;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    strcpy(v11 + 32, "Authorization");
    *(v11 + 23) = -4864;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v12 = BidirectionalCollection<>.joined(separator:)();

  return v12;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance LogCategory(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance LogCategory@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance LogCategory@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance LogCategory@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

unint64_t one-time initialization function for loggers()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_2os6LoggerVTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  static LoggerPool.loggers = result;
  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    outlined destroy of Logger?(a1);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v10);

    return outlined destroy of Logger?(v10);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for Logger();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Logger();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = type metadata accessor for Logger();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS2os6LoggerVGMd, &_ss18_DictionaryStorageCySS2os6LoggerVGMR);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
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
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for Logger() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
    v26 = *v5;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for Logger();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Logger();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v36 = type metadata accessor for Logger();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS2os6LoggerVGMd, &_ss18_DictionaryStorageCySS2os6LoggerVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t outlined destroy of Logger?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_2os6LoggerVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_2os6LoggerVtMd, _sSS_2os6LoggerVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS2os6LoggerVGMd, &_ss18_DictionaryStorageCySS2os6LoggerVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Logger)(v10, v6);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Logger();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t outlined init with copy of (String, Logger)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_2os6LoggerVtMd, _sSS_2os6LoggerVtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

objc_class *one-time initialization function for resourceBundle()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
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

uint64_t one-time initialization function for pinDash(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v4 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t ImageResource.pinDash.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for ImageResource();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static ImageResource.pinDash.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

void LAUISecureFaceIDViewStateFromFaceIdLightweightTrailingViewState_cold_1(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid FaceIdLightweightTrailingViewState: %d", v2, 8u);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}