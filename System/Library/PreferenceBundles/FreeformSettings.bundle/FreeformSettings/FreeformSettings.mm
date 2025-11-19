id CRLAppBundleIdentifier()
{
  if (CRLAppBundleIdentifier_onceToken != -1)
  {
    CRLAppBundleIdentifier_cold_1();
  }

  v1 = CRLAppBundleIdentifier_identifier;

  return v1;
}

id CRLAppGroupIdentifier()
{
  if (CRLAppGroupIdentifier_onceToken != -1)
  {
    CRLAppGroupIdentifier_cold_1();
  }

  v1 = CRLAppGroupIdentifier_identifier;

  return v1;
}

unint64_t lazy protocol witness table accessor for type FreeformSettings and conformance FreeformSettings()
{
  result = lazy protocol witness table cache variable for type FreeformSettings and conformance FreeformSettings;
  if (!lazy protocol witness table cache variable for type FreeformSettings and conformance FreeformSettings)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FreeformSettings and conformance FreeformSettings);
  }

  return result;
}

uint64_t closure #1 in FreeformSettings.body.getter(uint64_t a1)
{
  v2 = *(*(type metadata accessor for PreferencesControllerRecipe() - 8) + 64);
  __chkstk_darwin();
  type metadata accessor for CRLSettingsController();
  v3 = [objc_allocWithZone(PSSpecifier) init];
  [v3 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  PreferencesControllerRecipe.init(viewControllerClass:specifier:)();
  return PreferencesControllerView.init(preferencesControllerRecipe:)();
}

uint64_t closure #2 in FreeformSettings.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for NavigationPath();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = type metadata accessor for URLComponents();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[15] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in FreeformSettings.body.getter, v15, v14);
}

uint64_t closure #2 in FreeformSettings.body.getter()
{
  v1 = v0 + 13;
  v2 = v0[13];
  v4 = v0 + 12;
  v3 = v0[12];
  v5 = v0[15];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[3];

  SettingsExperienceOpenURLAction.Input.url.getter();
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  (*(v9 + 8))(v7, v8);
  if ((*(v2 + 48))(v6, 1, v3) == 1)
  {
    v12 = v0 + 7;
    v11 = v0[7];
    v14 = v0[2];
    v13 = v0[3];
    outlined destroy of URLComponents?(v0[11]);
    SettingsExperienceOpenURLAction.Input.navigationPath.getter();
    static SettingsExperienceOpenURLAction.Result.handled(_:)();
    v1 = v0 + 6;
    v4 = v0 + 5;
  }

  else
  {
    v12 = v0 + 14;
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
    URLComponents.fragment.getter();
    if (v15)
    {
      v16 = v0[4];
      v17 = String._bridgeToObjectiveC()();

      [v16 setSpecifierIdentifierToScrollAndHighlight:v17];
    }

    v19 = v0[6];
    v18 = v0[7];
    v20 = v0[5];
    v22 = v0[2];
    v21 = v0[3];
    SettingsExperienceOpenURLAction.Input.navigationPath.getter();
    static SettingsExperienceOpenURLAction.Result.handled(_:)();
    (*(v19 + 8))(v18, v20);
  }

  v23 = v0[14];
  v25 = v0[10];
  v24 = v0[11];
  v26 = v0[7];
  (*(*v1 + 8))(*v12, *v4);

  v27 = v0[1];

  return v27();
}

uint64_t protocol witness for SettingsExperience.body.getter in conformance FreeformSettings()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Settings0A4PaneVy19PreferencesExtended0C14ControllerViewVGMd, &_s8Settings0A4PaneVy19PreferencesExtended0C14ControllerViewVGMR);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = *v0;
  *(swift_allocObject() + 16) = v6;
  type metadata accessor for PreferencesControllerView();
  lazy protocol witness table accessor for type PreferencesControllerView and conformance PreferencesControllerView();
  v7 = v6;
  SettingsPane.init(makeContent:)();
  *(swift_allocObject() + 16) = v7;
  lazy protocol witness table accessor for type SettingsPane<PreferencesControllerView> and conformance SettingsPane<A>();
  v8 = v7;
  SettingsExperienceContent.onSettingsExperienceOpenURL(perform:)();
  return (*(v2 + 8))(v5, v1);
}

id protocol witness for SettingsExperience.init() in conformance FreeformSettings@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
  return result;
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

uint64_t sub_3378()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t lazy protocol witness table accessor for type PreferencesControllerView and conformance PreferencesControllerView()
{
  result = lazy protocol witness table cache variable for type PreferencesControllerView and conformance PreferencesControllerView;
  if (!lazy protocol witness table cache variable for type PreferencesControllerView and conformance PreferencesControllerView)
  {
    type metadata accessor for PreferencesControllerView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferencesControllerView and conformance PreferencesControllerView);
  }

  return result;
}

uint64_t partial apply for closure #2 in FreeformSettings.body.getter(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #2 in FreeformSettings.body.getter;

  return closure #2 in FreeformSettings.body.getter(a1, a2, v6);
}

uint64_t partial apply for closure #2 in FreeformSettings.body.getter()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t lazy protocol witness table accessor for type SettingsPane<PreferencesControllerView> and conformance SettingsPane<A>()
{
  result = lazy protocol witness table cache variable for type SettingsPane<PreferencesControllerView> and conformance SettingsPane<A>;
  if (!lazy protocol witness table cache variable for type SettingsPane<PreferencesControllerView> and conformance SettingsPane<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8Settings0A4PaneVy19PreferencesExtended0C14ControllerViewVGMd, &_s8Settings0A4PaneVy19PreferencesExtended0C14ControllerViewVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SettingsPane<PreferencesControllerView> and conformance SettingsPane<A>);
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

uint64_t outlined destroy of URLComponents?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for CRLSettingsController()
{
  result = lazy cache variable for type metadata for CRLSettingsController;
  if (!lazy cache variable for type metadata for CRLSettingsController)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CRLSettingsController);
  }

  return result;
}

uint64_t sub_3724()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8Settings0A4PaneVy19PreferencesExtended0C14ControllerViewVGMd, &_s8Settings0A4PaneVy19PreferencesExtended0C14ControllerViewVGMR);
  lazy protocol witness table accessor for type SettingsPane<PreferencesControllerView> and conformance SettingsPane<A>();
  return swift_getOpaqueTypeConformance2();
}

void __CRLAppBundleIdentifier_block_invoke_cold_1()
{
  v0 = 138412290;
  v1 = CRLAppBundleIdentifier_identifier;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "App bundle identifier (%@) has unexpected prefix.", &v0, 0xCu);
}

void __CRLAppGroupIdentifier_block_invoke_cold_1()
{
  v0 = 138412290;
  v1 = CRLAppGroupIdentifier_identifier;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "App group identifier (%@) has unexpected prefix.", &v0, 0xCu);
}