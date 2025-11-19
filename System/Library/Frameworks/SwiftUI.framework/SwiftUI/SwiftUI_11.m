uint64_t specialized ActionDispatcherSubscriber.receive(subscription:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  static Subscribers.Demand.unlimited.getter();
  return dispatch thunk of Subscription.request(_:)();
}

uint64_t destroy for ActionDispatcherSubscriber(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 28);
  v5 = type metadata accessor for CombineIdentifier();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance AlertStorage.PreferenceKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static AlertStorage.PreferenceKey.defaultValue;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance ToolbarKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&qword_1ED5A7510;
  v8[2] = xmmword_1ED5A7500;
  v8[3] = *&qword_1ED5A7510;
  v2 = qword_1ED5A7520;
  v9 = qword_1ED5A7520;
  v4 = static ToolbarKey.defaultValue;
  v3 = *algn_1ED5A74F0;
  v8[0] = static ToolbarKey.defaultValue;
  v8[1] = *algn_1ED5A74F0;
  *(a1 + 32) = xmmword_1ED5A7500;
  *(a1 + 48) = v1;
  *(a1 + 64) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  return outlined init with copy of ToolbarStorage(v8, v7);
}

uint64_t initializeWithCopy for ToolbarStorage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);

  if (v5)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v5;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t destroy for ToolbarStorage(uint64_t a1)
{

  if (*(a1 + 24))
  {
  }
}

uint64_t initializeWithTake for Toolbar.UpdateContext(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 2)
  {
    *a1 = *a2;
    *(a1 + 9) = *(a2 + 9);
  }

  else
  {
    swift_unknownObjectWeakTakeInit();
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
  }

  swift_unknownObjectWeakTakeInit();
  swift_unknownObjectWeakTakeInit();
  *(a1 + 48) = *(a2 + 48);
  swift_unknownObjectWeakTakeInit();
  swift_unknownObjectWeakTakeInit();
  swift_unknownObjectWeakTakeInit();
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for HeaderFooterVisitor.DefaultForegroundColorModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t type metadata completion function for ToolbarStorage.Entry.Kind()
{
  result = type metadata accessor for ToolbarStorage.Item(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolbarStorage.GroupItem(319);
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void type metadata completion function for ToolbarStorage.GroupItem()
{
  _s7SwiftUI16CommandOperationVSgMaTm_2(319, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t storeEnumTagSinglePayload for NavigationTitleStorage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationTitleStorage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
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

void protocol witness for static PreferenceKey.defaultValue.getter in conformance NavigationTitleKey(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
}

id UIHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = specialized UIHostingController.__allocating_init(rootView:)(a1);
  (*(*(*(v1 + 80) - 8) + 8))(a1);
  return v3;
}

void UIHostingController.safeAreaRegions.setter()
{
  v0 = specialized UIHostingController.host.getter();
  _UIHostingView.safeAreaRegions.setter();
}

uint64_t ModifiedContent<>.accessibilityAutomationType(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v5 = 0;
  return ModifiedContent<>.update<A>(_:replacing:isEnabled:)(MEMORY[0x1E6980050], &v4, 1, a2, a3);
}

void type metadata accessor for AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner>()
{
  if (!lazy cache variable for type metadata for AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner>)
  {
    type metadata accessor for SingleTapGesture<TappableSpatialEvent>(255, &lazy cache variable for type metadata for _EndedGesture<SpatialTapGesture>, &type metadata for SpatialTapGesture, &protocol witness table for SpatialTapGesture, MEMORY[0x1E697E230]);
    lazy protocol witness table accessor for type _EndedGesture<SpatialTapGesture> and conformance _EndedGesture<A>();
    lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
    v0 = type metadata accessor for AddGestureModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner>);
    }
  }
}

void type metadata accessor for SingleTapGesture<TappableSpatialEvent>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _EndedGesture<SpatialTapGesture> and conformance _EndedGesture<A>()
{
  result = lazy protocol witness table cache variable for type _EndedGesture<SpatialTapGesture> and conformance _EndedGesture<A>;
  if (!lazy protocol witness table cache variable for type _EndedGesture<SpatialTapGesture> and conformance _EndedGesture<A>)
  {
    type metadata accessor for SingleTapGesture<TappableSpatialEvent>(255, &lazy cache variable for type metadata for _EndedGesture<SpatialTapGesture>, &type metadata for SpatialTapGesture, &protocol witness table for SpatialTapGesture, MEMORY[0x1E697E230]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EndedGesture<SpatialTapGesture> and conformance _EndedGesture<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OnTestEffect.updateValue()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 12);
  Value = AGGraphGetValue();
  if ((v1 & 1) != 0 || v2 != *Value >> 1)
  {
    *(v0 + 12) = *AGGraphGetValue() >> 1;
    *(v0 + 16) = 0;
    *(v0 + 20) = 0;
    *(v0 + 24) = 1;
  }

  type metadata accessor for PPTTestCase?(0, &lazy cache variable for type metadata for PPTTestCase?, &type metadata for PPTTestCase, MEMORY[0x1E69E6720]);
  v4 = AGGraphGetValue();
  outlined init with copy of PPTTestCase?(v4, v14);
  if (!v15)
  {
    return outlined destroy of PPTTestCase?(v14);
  }

  outlined init with take of PPTTestCase(v14, v16);
  v5 = v17;
  v6 = v18;
  v7 = AGGraphGetValue();
  v8 = v5 == *v7 && v6 == v7[1];
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((*(v0 + 24) & 1) != 0 || *(v0 + 20) != v19))
  {
    *(v0 + 20) = v19;
    *(v0 + 24) = 0;
    v9 = AGGraphGetValue();
    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    outlined init with copy of PPTTestCase(v16, v14);
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;
    outlined init with take of PPTTestCase(v14, v12 + 32);
    swift_retain_n();
    static Update.enqueueAction(reason:_:)();
  }

  return outlined destroy of PPTTestCase(v16);
}

uint64_t sub_18BDE43B8()
{

  swift_weakDestroy();

  return swift_deallocObject();
}

void type metadata accessor for EnvironmentPropertyKey<PPTTestCaseEnvironmentKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<PPTTestCaseEnvironmentKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PPTTestCaseEnvironmentKey>);
    }
  }
}

uint64_t outlined destroy of PPTTestCase?(uint64_t a1)
{
  type metadata accessor for PPTTestCase?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance PPTTestCaseEnvironmentKey@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of PPTTestCase?(&static PPTTestCaseEnvironmentKey.defaultValue, v2);
}

uint64_t outlined init with copy of PPTTestCase?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PPTTestCase?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for PPTTestCase(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

void type metadata accessor for PPTTestCase?()
{
  if (!lazy cache variable for type metadata for PPTTestCase?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PPTTestCase?);
    }
  }
}

void @objc UIHostingController.viewDidAppear(_:)(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  UIHostingController.viewDidAppear(_:)(a3, &selRef_viewDidAppear_, specialized UIHostingController._viewDidAppear(_:));
}

void specialized UIHostingController._viewDidAppear(_:)()
{
  v1 = v0;
  UIHostingController.resolveRequiredBridges(_:allowedActions:)(0, 0, 0, 0, 3);
  v2 = specialized UIHostingController.host.getter();
  v3 = [v1 transitionCoordinator];
  specialized _UIHostingView.viewControllerDidAppear(transitionCoordinator:animated:)();

  swift_unknownObjectRelease();
  v4 = specialized UIHostingController.navigationBridge.getter();
  if (v4)
  {
    v5 = v4;

    if ((UIKitNavigationBridge.isBeingPresented.getter() & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 24);
      ObjectType = swift_getObjectType();
      v20 = xmmword_18CD6A6D0;
      ViewGraphDelegate.environmentOverride.setter(&v20, ObjectType, *(*(v6 + 16) + 8));
      swift_unknownObjectRelease();
    }
  }

  specialized UIHostingController.host.getter();
  v8 = _UIHostingView.sceneBridge.getter();
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_initialSceneSizeState);
    v10 = *(v8 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_initialSceneSizeState + 8);
    v11 = *(v8 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_initialSceneSizeState + 16);
    v12 = *(v8 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_initialSceneSizeState + 24);
    v13 = *(v8 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_initialSceneSizeState + 25);

    if (v13 == 1)
    {
      v14 = !(v11 | v10 | v9) && v12 == 0;
      v15 = !v14 && v12 == 0;
      v16 = v15 && v9 == 1;
      if (v16 && (v11 | v10) == 0)
      {
        specialized UIHostingController.host.getter();
        v18 = _UIHostingView.sceneBridge.getter();
        if (v18)
        {
          v19 = v18 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_initialSceneSizeState;
          *(v19 + 8) = 0;
          *(v19 + 16) = 0;
          *v19 = 2;
          *(v19 + 24) = 256;
        }

        UIHostingController.updateWindowSceneSizeRestrictions()();
      }
    }
  }
}

uint64_t specialized _UIHostingView.viewControllerDidAppear(transitionCoordinator:animated:)()
{
  v0 = specialized _UIHostingView.focusBridge.getter();

  if (FocusBridge.canAcceptFocus.getter())
  {
  }

  else
  {
    v2 = *(v0 + 16);
    if ((v2 | 2) != v2)
    {
      *(v0 + 16) = v2 | 2;
      swift_beginAccess();
      DisplayList.Version.init(forUpdate:)();
      *(v0 + 48) = v12;
      swift_endAccess();
      v3 = FocusBridge.host.getter();
      if (v3)
      {
        v4 = v3;
        swift_getObjectType();
        ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
      }
    }

    FocusBridge.focusedItem.getter(v9);
    v6 = v10;
    v5 = v11;
    _ss11AnyHashableVSgWOhTm_1(v9, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
    if (!v6 && v5 == 1)
    {
      v7 = *(v0 + 16);
      if ((v7 & 1) == 0)
      {
        *(v0 + 16) = v7 | 1;
      }
    }

    specialized FocusBridge.hostDidBecomeFirstResponder(in:)();
    v8 = *(v0 + 16);
    if (v8)
    {
      *(v0 + 16) = v8 & 0xFFFFFFFFFFFFFFFELL;
    }
  }
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance NavigationDestinationsKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static NavigationDestinationsKey.defaultValue;
}

uint64_t UIKitNavigationBridge.updateNavigationDestinationsIfNeeded(preference:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3 == -1 || v3 != *(v1 + 144))
  {
    swift_beginAccess();
    v5 = *(v1 + 56);
    if (v5)
    {
      v6 = *(v1 + 40);
    }

    else
    {
      v6 = 0;
    }

    v7 = v5 == 0;

    nextNavigationDestination(activePresentationID:destinations:)(v6, v7, v2, &v18);
    if (v22[24] == 255)
    {
      outlined destroy of AnyAccessibilityValue?(&v18, &lazy cache variable for type metadata for NavigationDestinationPresentation?);
      outlined init with copy of BridgedPresentation?(v1 + 40, &v13);
      v8 = v14;
      outlined destroy of AnyAccessibilityValue?(&v13, &lazy cache variable for type metadata for BridgedPresentation?);
      if (v8)
      {
        v9 = static Transaction.current.getter();
        popCurrentView #1 (transaction:) in UIKitNavigationBridge.updateNavigationDestinationsIfNeeded(preference:)(v9, v1);
      }
    }

    else
    {
      v15 = v20;
      v16 = v21;
      v17[0] = *v22;
      *(v17 + 9) = *&v22[9];
      v13 = v18;
      v14 = v19;
      outlined init with copy of NavigationDestinationPresentation(&v13, &v18);
      if (v22[24])
      {
        popCurrentView #1 (transaction:) in UIKitNavigationBridge.updateNavigationDestinationsIfNeeded(preference:)(*(&v18 + 1), v1);

        outlined destroy of NavigationDestinationPresentation(&v13);
      }

      else
      {
        v11[2] = v20;
        v11[3] = v21;
        v11[4] = *v22;
        v12 = *&v22[16];
        v11[0] = v18;
        v11[1] = v19;
        v10 = Transaction.disablesAnimations.getter();
        UIKitNavigationBridge.updatePresentedContent(_:animated:)(v11, (v10 & 1) == 0);
        outlined destroy of NavigationDestinationPresentation(&v13);
        outlined destroy of NavigationDestinationContent(v11);
      }
    }

    *(v1 + 144) = v3;
    *(v1 + 152) = v2;
  }

  else
  {
    *(v1 + 152) = v2;
  }
}

uint64_t nextNavigationDestination(activePresentationID:destinations:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!*(a3 + 16))
  {
    goto LABEL_9;
  }

  v6 = result;
  v7 = specialized _NativeDictionary.filter(_:)(a3);
  v8 = v7;
  if ((a2 & 1) != 0 || !*(v7 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v10 & 1) == 0))
  {
    specialized Collection.first.getter(v8, v45);
    LOBYTE(v17) = v47;
    if (v47 != 255)
    {
      v34 = *&v45[8];
      v36 = *&v45[24];
      v30 = *&v45[40];
      v32 = *&v45[56];
      v15 = *&v45[72];
      v19 = *(&v46 + 1);
      v18 = v46;
      v20 = *(v8 + 16);

      if (v20 != 1)
      {
        result = MEMORY[0x18D009810](0xD00000000000004ELL, 0x800000018CD5D8B0);
      }

      v12 = v34;
      v11 = v36;
      v14 = v30;
      v13 = v32;
      goto LABEL_26;
    }

    result = outlined destroy of (key: Namespace.ID, value: NavigationDestinationPresentation)?(v45);
LABEL_9:
    *(a4 + 80) = 0;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 88) = -1;
    return result;
  }

  outlined init with copy of NavigationDestinationPresentation(*(v8 + 56) + 96 * v9, v41);
  if (*(v8 + 16) != 2)
  {

    v12 = v41[0];
    v11 = v41[1];
    v14 = v41[2];
    v13 = v41[3];
    v15 = v42;
    v16 = v43;
    LOBYTE(v17) = v44;
LABEL_25:
    v19 = *(&v16 + 1);
    v18 = v16;
LABEL_26:
    *a4 = v12;
    *(a4 + 16) = v11;
    *(a4 + 32) = v14;
    *(a4 + 48) = v13;
    *(a4 + 64) = v15;
    *(a4 + 72) = v18;
    *(a4 + 80) = v19;
    *(a4 + 88) = v17;
    return result;
  }

  v21 = 1 << *(v8 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v8 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  if (v23)
  {
    while (1)
    {
      v26 = v25;
LABEL_20:
      v27 = __clz(__rbit64(v23)) | (v26 << 6);
      v28 = *(*(v8 + 48) + 8 * v27);
      outlined init with copy of NavigationDestinationPresentation(*(v8 + 56) + 96 * v27, &v45[8]);
      *v45 = v28;
      *&v38[64] = *&v45[64];
      v39 = v46;
      v40 = v47;
      *v38 = *v45;
      *&v38[16] = *&v45[16];
      *&v38[32] = *&v45[32];
      *&v38[48] = *&v45[48];
      if (v28 != v6)
      {
        break;
      }

      v23 &= v23 - 1;
      outlined destroy of (key: Namespace.ID, value: NavigationDestinationPresentation)(v38);
      v25 = v26;
      if (!v23)
      {
        goto LABEL_17;
      }
    }

    v35 = *&v38[8];
    v37 = *&v38[24];
    v31 = *&v38[40];
    v33 = *&v38[56];
    v15 = *&v38[72];
    v29 = v39;
    v17 = v40;

    if (v17 != 255)
    {
      result = outlined destroy of NavigationDestinationPresentation(v41);
      v12 = v35;
      v11 = v37;
      v14 = v31;
      v13 = v33;
      v16 = v29;
      goto LABEL_25;
    }
  }

  else
  {
LABEL_17:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {
        goto LABEL_28;
      }

      v23 = *(v8 + 64 + 8 * v26);
      ++v25;
      if (v23)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_28:
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of BridgedPresentation?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for BridgedPresentation?);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for _ToolbarItemList(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

unint64_t one-time initialization function for defaultValue()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ToolbarPlacementV4RoleO_AC13AnyShapeStyleVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static EnvironmentValues.ToolbarForegroundStyleKey.defaultValue = result;
  return result;
}

{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI27NavigationStackViewPositionV_AC010PositionedE11DestinationO7StorageV13SeededRequest33_EA42A490FE48784768DCEF705CD04CF4LLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static PositionedNavigationDestination.Key.defaultValue = result;
  return result;
}

{
  v0 = MEMORY[0x1E69E7CC0];
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_Say7SwiftUI28AnyConnectionOptionActionBoxCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static ConnectionOptionPayloadStoragePreferenceKey.defaultValue = v0;
  unk_1EAB096F0 = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle();
  static ButtonStyleInput.defaultValue = &type metadata for DefaultButtonStyle;
  *algn_1ED5A72F8 = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle();
  static EffectiveButtonStyleInput.defaultValue = &type metadata for DefaultButtonStyle;
  *algn_1EAB098D8 = result;
  return result;
}

{
  LOWORD(static TabOptions.TraitKey.defaultValue) = 0;
  BYTE2(static TabOptions.TraitKey.defaultValue) = 0;
  *(&static TabOptions.TraitKey.defaultValue + 1) = 0;
  unk_1EAB09380 = 0;
  word_1EAB09388 = 255;
  byte_1EAB0938A = 0;
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI24AdaptableTabBarPlacementV_AC10VisibilityOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  qword_1EAB09390 = result;
  byte_1EAB09398 = 1;
  return result;
}

{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt32V_7SwiftUI20ScrollViewCommitInfo33_82EFBFF660266D0B9A51D97979C8390ALLOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static Transaction.ScrollInfoKey.defaultValue = result;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ToolbarPlacementV4RoleO_AC13AnyShapeStyleVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x1E697E0B8];
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<ToolbarPlacement.Role, AnyShapeStyle>, lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role);
    v4 = static _DictionaryStorage.allocate(capacity:)();
    v5 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, TabEntry)(v5, v14, &lazy cache variable for type metadata for (ToolbarPlacement.Role, AnyShapeStyle), &type metadata for ToolbarPlacement.Role, v3, type metadata accessor for (Badge, Spacer));
      result = specialized __RawDictionaryStorage.find<A>(_:)(v14);
      if (v7)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = v4[6] + 40 * result;
      v9 = v14[0];
      v10 = v14[1];
      *(v8 + 32) = v15;
      *v8 = v9;
      *(v8 + 16) = v10;
      *(v4[7] + 8 * result) = v16;
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      v5 += 48;
      if (!--v1)
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

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo15UIBarButtonItemC_SayAEGTt0g5(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo6UIViewC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.WindowToolbarConfigurationKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = qword_1ED576448;
  v3 = unk_1ED576450;
  *a1 = static EnvironmentValues.WindowToolbarConfigurationKey.defaultValue;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  v4 = byte_1ED576458;
  *(a1 + 24) = byte_1ED576458;

  return outlined copy of ToolbarLabelStyle.Data?(v2, v3, v4);
}

uint64_t outlined consume of ToolbarLabelStyle.Data?(uint64_t a1, uint64_t a2, char a3)
{
  if ((~a2 & 0xF000000000000007) != 0 || a3 <= 0xFBu)
  {
    return outlined consume of ToolbarLabelStyle.Data(a1, a2, a3);
  }

  return a1;
}

uint64_t BarAppearanceBridge.updateNavigationAppearances(navigationController:)(void *a1)
{
  v2 = v1;
  type metadata accessor for UIKitNavigationController();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    goto LABEL_45;
  }

  v5 = v4;
  v6 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_update;
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = a1;
  if (!Strong || (swift_unknownObjectRelease(), Strong != v2))
  {
    *(*&v5[v6] + 40) = &protocol witness table for BarAppearanceBridge;
    swift_unknownObjectWeakAssign();
  }

  v93 = 0;
  memset(v92, 0, sizeof(v92));
  outlined init with copy of ToolbarPlacement.Role(v92, v91);
  v9 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_barConfigurations;
  swift_beginAccess();
  v10 = *(v2 + v9);
  v78 = xmmword_18CD633F0;
  if (*(v10 + 16))
  {

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v92);
    if (v12)
    {
      v13 = (*(v10 + 56) + 80 * v11);
      v15 = v13[2];
      v14 = v13[3];
      v16 = *(v13 + 57);
      v99 = v13[1];
      v17 = *v13;
      *&v101[9] = v16;
      v100 = v15;
      *v101 = v14;
      v98 = v17;
      v75 = v99;
      v78 = v17;
      v69 = v14;
      v72 = v15;
      v18 = v16 >> 56;
      v19 = HIBYTE(v16);
      outlined init with copy of ToolbarAppearanceConfiguration(&v98, &v94);

      goto LABEL_11;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0uLL;
    v75 = 0u;
  }

  else
  {
    v20 = 0uLL;
    v75 = 0u;
    v18 = 0;
    v19 = 0;
  }

  v69 = v20;
  v72 = v20;
LABEL_11:
  v21 = *&v5[v6];
  swift_beginAccess();
  v22 = *(v21 + 24);
  v90 = v22;
  if (*(&v78 + 1) == 1)
  {

    specialized Dictionary._Variant.removeValue(forKey:)(v91, &v94);
    outlined destroy of ToolbarPlacement.Role(v91);
    v100 = v96;
    *v101 = v97[0];
    *&v101[9] = *(v97 + 9);
    v98 = v94;
    v99 = v95;
    outlined destroy of BarAppearanceBridge.UpdateContext?(&v98, &lazy cache variable for type metadata for ToolbarAppearanceConfiguration?, &type metadata for ToolbarAppearanceConfiguration);
    v23 = v90;
  }

  else
  {
    v108[0] = v78;
    v108[1] = v75;
    v108[2] = v72;
    v108[3] = v69;
    v109 = v18;
    v110 = v19;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v98 = v22;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v108, v91, isUniquelyReferenced_nonNull_native);
    outlined destroy of ToolbarPlacement.Role(v91);
    v23 = v98;
    v90 = v98;
  }

  v25 = [v5 tabBarController];
  if (v25)
  {
    v26 = v25;
    type metadata accessor for UIKitTabBarController();
    v27 = swift_dynamicCastClass();
    if (!v27)
    {
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = v8;
  PlatformBarUpdater.callAsFunction(configurations:context:)(v23, v5, v27);

  outlined destroy of ToolbarPlacement.Role(v92);
  v88 = 0;
  v87 = 0u;
  v89 = xmmword_18CD7DD20;
  outlined init with copy of ToolbarPlacement.Role(&v87, v86);
  v29 = *(v2 + v9);
  v79 = xmmword_18CD633F0;
  if (*(v29 + 16))
  {

    v30 = specialized __RawDictionaryStorage.find<A>(_:)(&v87);
    if (v31)
    {
      v32 = (*(v29 + 56) + 80 * v30);
      v34 = v32[2];
      v33 = v32[3];
      v35 = *(v32 + 57);
      v99 = v32[1];
      v36 = *v32;
      *&v101[9] = v35;
      v100 = v34;
      *v101 = v33;
      v98 = v36;
      v76 = v99;
      v79 = v36;
      v70 = v33;
      v73 = v34;
      v37 = v35 >> 56;
      v38 = HIBYTE(v35);
      outlined init with copy of ToolbarAppearanceConfiguration(&v98, &v94);

      goto LABEL_24;
    }

    v37 = 0;
    v38 = 0;
    v39 = 0uLL;
    v76 = 0u;
  }

  else
  {
    v39 = 0uLL;
    v76 = 0u;
    v37 = 0;
    v38 = 0;
  }

  v70 = v39;
  v73 = v39;
LABEL_24:
  v40 = *&v5[v6];
  swift_beginAccess();
  v41 = *(v40 + 24);
  v85 = v41;
  if (*(&v79 + 1) == 1)
  {

    specialized Dictionary._Variant.removeValue(forKey:)(v86, &v94);
    outlined destroy of ToolbarPlacement.Role(v86);
    v100 = v96;
    *v101 = v97[0];
    *&v101[9] = *(v97 + 9);
    v98 = v94;
    v99 = v95;
    outlined destroy of BarAppearanceBridge.UpdateContext?(&v98, &lazy cache variable for type metadata for ToolbarAppearanceConfiguration?, &type metadata for ToolbarAppearanceConfiguration);
    v42 = v85;
  }

  else
  {
    v105[0] = v79;
    v105[1] = v76;
    v105[2] = v73;
    v105[3] = v70;
    v106 = v37;
    v107 = v38;

    v43 = swift_isUniquelyReferenced_nonNull_native();
    *&v98 = v41;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v105, v86, v43);
    outlined destroy of ToolbarPlacement.Role(v86);
    v42 = v98;
    v85 = v98;
  }

  v44 = [v5 tabBarController];
  if (v44)
  {
    v45 = v44;
    type metadata accessor for UIKitTabBarController();
    v46 = swift_dynamicCastClass();
    if (!v46)
    {
    }
  }

  else
  {
    v46 = 0;
  }

  v47 = v28;
  PlatformBarUpdater.callAsFunction(configurations:context:)(v42, v5, v46);

  outlined destroy of ToolbarPlacement.Role(&v87);
  v83 = 0;
  v82 = 0u;
  v84 = xmmword_18CD79540;
  outlined init with copy of ToolbarPlacement.Role(&v82, v81);
  v48 = *(v2 + v9);
  v80 = xmmword_18CD633F0;
  if (!*(v48 + 16))
  {
    v58 = 0uLL;
    v77 = 0u;
    v56 = 0;
    v57 = 0;
LABEL_36:
    v71 = v58;
    v74 = v58;
    goto LABEL_37;
  }

  v49 = specialized __RawDictionaryStorage.find<A>(_:)(&v82);
  if ((v50 & 1) == 0)
  {

    v56 = 0;
    v57 = 0;
    v58 = 0uLL;
    v77 = 0u;
    goto LABEL_36;
  }

  v51 = (*(v48 + 56) + 80 * v49);
  v53 = v51[2];
  v52 = v51[3];
  v54 = *(v51 + 57);
  v99 = v51[1];
  v55 = *v51;
  *&v101[9] = v54;
  v100 = v53;
  *v101 = v52;
  v98 = v55;
  v77 = v99;
  v80 = v55;
  v71 = v52;
  v74 = v53;
  v56 = v54 >> 56;
  v57 = HIBYTE(v54);
  outlined init with copy of ToolbarAppearanceConfiguration(&v98, &v94);

LABEL_37:
  v59 = *&v5[v6];
  swift_beginAccess();
  v60 = *(v59 + 24);
  if (*(&v80 + 1) == 1)
  {

    specialized Dictionary._Variant.removeValue(forKey:)(v81, &v94);
    outlined destroy of ToolbarPlacement.Role(v81);
    v100 = v96;
    *v101 = v97[0];
    *&v101[9] = *(v97 + 9);
    v98 = v94;
    v99 = v95;
    outlined destroy of BarAppearanceBridge.UpdateContext?(&v98, &lazy cache variable for type metadata for ToolbarAppearanceConfiguration?, &type metadata for ToolbarAppearanceConfiguration);
    v61 = v60;
  }

  else
  {
    v102[0] = v80;
    v102[1] = v77;
    v102[2] = v74;
    v102[3] = v71;
    v103 = v56;
    v104 = v57;

    v62 = swift_isUniquelyReferenced_nonNull_native();
    *&v98 = v60;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v102, v81, v62);
    outlined destroy of ToolbarPlacement.Role(v81);
    v61 = v98;
  }

  v63 = [v5 tabBarController];
  if (v63)
  {
    v64 = v63;
    type metadata accessor for UIKitTabBarController();
    v65 = swift_dynamicCastClass();
    if (!v65)
    {
    }
  }

  else
  {
    v65 = 0;
  }

  v66 = v47;
  PlatformBarUpdater.callAsFunction(configurations:context:)(v61, v5, v65);

  outlined destroy of ToolbarPlacement.Role(&v82);
LABEL_45:
  v67 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_updateContext;
  swift_beginAccess();
  outlined init with copy of BarAppearanceBridge.UpdateContext?(v2 + v67, &v94, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
  if (v94)
  {
    outlined init with take of BarAppearanceBridge.UpdateContext(&v94, &v98);
    closure #1 in BarAppearanceBridge.updateNavigationAppearances(navigationController:)(&v98, v2);
    outlined destroy of BarAppearanceBridge.UpdateContext(&v98);
    return 1;
  }

  else
  {
    outlined destroy of BarAppearanceBridge.UpdateContext?(&v94, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t UIKitToolbarStrategy.makeBarItems()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v30 = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CC0];
  specialized ToolbarStrategy.withUpdate<A>(_:)(v1, &v31, &v30);
  if (!(v31 >> 62))
  {
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:
    v14 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo15UIBarButtonItemC_SayAEGTt0g5(v30);

    return v14;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_15;
  }

LABEL_3:
  v29 = v2;
  v3 = v30;
  v4 = v30 >> 62;
  if (v30 >> 62)
  {
    if (v30 < 0)
    {
      v16 = v30;
    }

    else
    {
      v16 = v30 & 0xFFFFFFFFFFFFFF8;
    }

    v17 = __CocoaSet.count.getter();
    v6 = v17 / 2;
    if (v17 < 2)
    {
      goto LABEL_23;
    }

    result = __CocoaSet.count.getter();
    if (result < 0)
    {
      goto LABEL_49;
    }

    if (__CocoaSet.count.getter() >= v6)
    {
LABEL_6:
      if ((v3 & 0xC000000000000001) != 0)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);

        v7 = 0;
        do
        {
          v8 = v7 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v7);
          v7 = v8;
        }

        while (v6 != v8);
        if (!v4)
        {
          goto LABEL_10;
        }
      }

      else
      {

        if (!v4)
        {
LABEL_10:
          v9 = 0;
          v10 = v3 & 0xFFFFFFFFFFFFFF8;
          v11 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
          v12 = (2 * v6) | 1;
LABEL_13:
          specialized Array.append<A>(contentsOf:)(v10, v11, v9, v12);
          swift_unknownObjectRelease();
          v13 = 1;
          goto LABEL_24;
        }
      }

      v10 = _CocoaArrayWrapper.subscript.getter();
      goto LABEL_13;
    }

    goto LABEL_22;
  }

  v5 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = v5 >> 1;
  if (v5 > 1)
  {
    if (v5 >= v6)
    {
      goto LABEL_6;
    }

LABEL_22:
    __break(1u);
  }

LABEL_23:

  specialized Array.append<A>(contentsOf:)(v18);
  v13 = 0;
LABEL_24:
  v19 = objc_opt_self();
  v20 = [v19 flexibleSpaceItem];
  MEMORY[0x18D00CC30]();
  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  specialized Array.append<A>(contentsOf:)(v21);
  v22 = [v19 flexibleSpaceItem];
  MEMORY[0x18D00CC30]();
  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v16 = &v29;
  result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (v13)
  {
    if (v4)
    {
      result = __CocoaSet.count.getter();
      if (result < v6)
      {
        goto LABEL_50;
      }

      v16 = result;
      result = __CocoaSet.count.getter();
      if (result < v6)
      {
        goto LABEL_51;
      }

      result = __CocoaSet.count.getter();
      if (result >= v16)
      {
        goto LABEL_52;
      }

      __break(1u);
    }

    else
    {
      v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16 >= v6)
      {
        while ((v3 & 0xC000000000000001) != 0 && v6 != v16)
        {
          if (v6 < v16)
          {
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);

            v23 = v6;
            do
            {
              v24 = v23 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v23);
              v23 = v24;
            }

            while (v16 != v24);
            if (!v4)
            {
LABEL_37:
              v25 = v3 & 0xFFFFFFFFFFFFFF8;
              v26 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
              v27 = (2 * v16) | 1;
LABEL_41:
              specialized Array.append<A>(contentsOf:)(v25, v26, v6, v27);

              swift_unknownObjectRelease();
              return v29;
            }

LABEL_40:

            v25 = _CocoaArrayWrapper.subscript.getter();
            v6 = v28;
            goto LABEL_41;
          }

LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          if (v16 < 0)
          {
            __break(1u);
            return result;
          }
        }

        if (!v4)
        {
          goto LABEL_37;
        }

        goto LABEL_40;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  return v29;
}

uint64_t specialized ToolbarStrategy.withUpdate<A>(_:)(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1)
  {
    outlined init with copy of Toolbar.UpdateContext?((a1 + 1), v11, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext, MEMORY[0x1E69E6720], type metadata accessor for Toolbar.UpdateContext?);
    if (v13)
    {
      outlined init with take of Toolbar.UpdateContext(v11, v14);
      outlined init with copy of Toolbar.UpdateContext(v14, v11);
      Strong = swift_unknownObjectWeakLoadStrong();
      v7 = v3;
      outlined destroy of Toolbar.UpdateContext(v11);
      memset(v11, 0, sizeof(v11));
      v12 = xmmword_18CD90760;
      v8 = v7;
      v9 = Strong;
      specialized ToolbarBridge.adjustEntries(in:_:)(v11, v8, v8, Strong, 2 * (Strong != 0), a2, a3);

      outlined destroy of Toolbar.BarLocation(v11);
      return outlined destroy of Toolbar.UpdateContext(v14);
    }

    outlined destroy of Toolbar.UpdateContext?(v11, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext, MEMORY[0x1E69E6720], type metadata accessor for Toolbar.UpdateContext?);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized ToolbarBridge.adjustEntries(in:_:)(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, uint64_t a6, uint64_t a7)
{
  v59 = a7;
  v60 = a4;
  v57 = a6;
  v58 = a3;
  v56 = a5;
  v9 = type metadata accessor for ToolbarStorage.Entry(0);
  v61 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v62 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = direct field offset for ToolbarBridge.storageByLocation;
  swift_beginAccess();
  v53 = a2;
  v51 = v11;
  v12 = *(a2 + v11);
  if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v14 & 1) != 0))
  {
    v15 = (*(v12 + 56) + 24 * v13);
    v17 = *v15;
    v16 = v15[1];
    v18 = v15[2];
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
    v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI14ToolbarStorageV5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI7ToolbarO10VendedItemOTt0g5Tf4g_n(v17);
  }

  v52 = a1;
  swift_endAccess();
  v19 = *(v17 + 16);
  if (!v19)
  {
LABEL_32:
    v47 = v53;
    v48 = v51;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = *(v47 + v48);
    *(v47 + v48) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v16, v18, v52, isUniquelyReferenced_nonNull_native);
    *(v47 + v48) = v63;
    swift_endAccess();
  }

  v20 = 0;
  v21 = (v17 + 40);
  v54 = *(v17 + 16);
  v55 = v17;
  while (v20 < *(v17 + 16))
  {
    if (*(v16 + 16))
    {
      v23 = *(v21 - 1);
      v22 = *v21;

      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v22);
      if (v25)
      {
        outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(*(v16 + 56) + *(v61 + 72) * v24, v62, type metadata accessor for ToolbarStorage.Entry);
        v26 = swift_isUniquelyReferenced_nonNull_native();
        v63 = v18;
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v22);
        v29 = v18[2];
        v30 = (v27 & 1) == 0;
        v31 = v29 + v30;
        if (__OFADD__(v29, v30))
        {
          goto LABEL_34;
        }

        v32 = v27;
        if (v18[3] >= v31)
        {
          if (v26)
          {
            if ((v27 & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            if ((v32 & 1) == 0)
            {
              goto LABEL_21;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, v26);
          v33 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v22);
          if ((v32 & 1) != (v34 & 1))
          {
            goto LABEL_36;
          }

          v28 = v33;
          if ((v32 & 1) == 0)
          {
LABEL_21:
            v36 = 0;
            v37 = -1;
LABEL_22:
            v64 = v36;
            v65 = v37;
            closure #1 in closure #1 in UIKitToolbarStrategy.makeBarItems()(v62, &v64, v58, v60, v56, v57, v59);
            v38 = v65;
            if (v65 == 255)
            {

              if (v32)
              {
                v18 = v63;
                outlined destroy of String(v63[6] + 16 * v28);
                specialized _NativeDictionary._delete(at:)(v28, v18);
LABEL_27:
                outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v62, type metadata accessor for ToolbarStorage.Entry);
              }

              else
              {
                outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v62, type metadata accessor for ToolbarStorage.Entry);
                v18 = v63;
              }
            }

            else
            {
              v39 = v64;
              if (v32)
              {

                v18 = v63;
                v40 = v63[7] + 16 * v28;
                *v40 = v39;
                *(v40 + 8) = v38;
                goto LABEL_27;
              }

              v41 = v62;
              v18 = v63;
              v63[(v28 >> 6) + 8] |= 1 << v28;
              v42 = (v18[6] + 16 * v28);
              *v42 = v23;
              v42[1] = v22;
              v43 = v18[7] + 16 * v28;
              *v43 = v39;
              *(v43 + 8) = v38;
              outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v41, type metadata accessor for ToolbarStorage.Entry);
              v44 = v18[2];
              v45 = __OFADD__(v44, 1);
              v46 = v44 + 1;
              if (v45)
              {
                goto LABEL_35;
              }

              v18[2] = v46;
            }

            v19 = v54;
            v17 = v55;
            goto LABEL_8;
          }
        }

        v35 = v63[7] + 16 * v28;
        v36 = *v35;
        v37 = *(v35 + 8);
        goto LABEL_22;
      }
    }

LABEL_8:
    ++v20;
    v21 += 2;
    if (v19 == v20)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in BarAppearanceBridge.updateNavigationAppearances(navigationController:)(id *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_barConfigurations;
  swift_beginAccess();
  v5 = *(a2 + v4);
  v146 = 0;
  memset(v145, 0, sizeof(v145));
  if (!*(v5 + 16))
  {
    return outlined destroy of ToolbarPlacement.Role(v145);
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v145);
  if ((v7 & 1) == 0)
  {

    return outlined destroy of ToolbarPlacement.Role(v145);
  }

  v8 = (*(v5 + 56) + 80 * v6);
  v143 = *v8;
  v10 = v8[2];
  v9 = v8[3];
  v11 = *(v8 + 57);
  *v144 = v8[1];
  *&v144[16] = v10;
  *&v144[41] = v11;
  *&v144[32] = v9;
  outlined init with copy of ToolbarAppearanceConfiguration(&v143, v139);
  outlined destroy of ToolbarPlacement.Role(v145);

  v12 = [*a1 navigationItem];
  v13 = *(&v143 + 1);
  v14 = (a2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastEnvironment);
  v109 = v12;
  if (*(a2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastEnvironment + 8))
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_5(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey>, &type metadata for EnvironmentValues.ToolbarForegroundStyleKey, &protocol witness table for EnvironmentValues.ToolbarForegroundStyleKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey>, &type metadata for EnvironmentValues.ToolbarForegroundStyleKey, &protocol witness table for EnvironmentValues.ToolbarForegroundStyleKey);

    swift_retain_n();
    v15 = v109;
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    v15 = v12;
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_5(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey>, &type metadata for EnvironmentValues.ToolbarForegroundStyleKey, &protocol witness table for EnvironmentValues.ToolbarForegroundStyleKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey>, &type metadata for EnvironmentValues.ToolbarForegroundStyleKey, &protocol witness table for EnvironmentValues.ToolbarForegroundStyleKey);

    PropertyList.subscript.getter();
  }

  v17 = *v139;
  memset(v139, 0, 40);
  if (*(v17 + 16))
  {
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v139);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);

      outlined destroy of ToolbarPlacement.Role(v139);

      if (v13)
      {
        if (v20)
        {
          if (v13 == v20)
          {
            goto LABEL_17;
          }

          v21 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

          if (v21)
          {
            goto LABEL_17;
          }
        }
      }

      else if (!v20)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  outlined destroy of ToolbarPlacement.Role(v139);
  if (v13)
  {
LABEL_16:
    *(a2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_pendingUpdates) |= 1uLL;
  }

LABEL_17:
  v22 = *(a2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastNavigationTitleStorage + 56);
  if (*(a2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastNavigationTitleStorage + 24) == 1)
  {
    v22 = 3;
  }

  v114 = v22;
  v23 = v14[1];
  v106 = v22 == 2;
  v118 = *MEMORY[0x1E69DB650];
  v113 = *v14;

  v112 = v23;

  v24 = 0;
  v108 = v13;
  do
  {
    v25 = outlined read-only object #0 of closure #1 in BarAppearanceBridge.updateNavigationAppearances(navigationController:)[v24 + 32];
    v26 = [v15 *off_1E72387E8[v25]];
    if (v26)
    {
      v27 = v26;
      swift_getObjectType();
      v28 = [swift_getObjCClassFromMetadata() _isFromSwiftUI];

      if (!v28)
      {
        goto LABEL_22;
      }
    }

    v29 = v144[41];
    LODWORD(v30) = v144[8];
    if (*v144)
    {
      v31 = 0;
    }

    else
    {
      v31 = v144[41] == 2;
    }

    v33 = v31 && v13 == 0 && v144[8] == 0;
    if (v33 && v144[40] == 1 && v144[24] && v114 == 3)
    {
      v34 = [v15 *off_1E72387E8[v25]];
      if (v34)
      {

        if (v25 > 1u)
        {
          if (v25 == 2)
          {
            [v15 setCompactAppearance_];
          }

          else
          {
            [v15 setCompactScrollEdgeAppearance_];
          }
        }

        else if (v25)
        {
          [v15 setScrollEdgeAppearance_];
        }

        else
        {
          [v15 setStandardAppearance_];
        }
      }

      goto LABEL_22;
    }

    v138 = *v144;
    v135 = *&v144[9];
    v136 = *&v144[25];
    v137 = v143;
    v134[0] = *&v144[42];
    *(v134 + 7) = *&v144[49];
    v116 = v25;
    if (v25 > 1u)
    {
      if (v25 == 2)
      {
        goto LABEL_47;
      }
    }

    else if (!v25)
    {
      goto LABEL_47;
    }

    if (v144[8])
    {
LABEL_47:
      outlined init with copy of ToolbarAppearanceConfiguration(&v143, v139);
      goto LABEL_48;
    }

    v42 = objc_opt_self();
    outlined init with copy of ToolbarAppearanceConfiguration(&v143, v139);
    v43 = [v42 currentDevice];
    v44 = [v43 userInterfaceIdiom];

    if (v44 == 6 || (static _GraphInputs.defaultInterfaceIdiom.getter(), (static Solarium.isEnabled(for:)() & 1) == 0))
    {
      v29 = 2;
    }

    LODWORD(v30) = 3;
LABEL_48:
    type metadata accessor for UIKitNavigationBarAppearance();
    v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v36 = [v35 copy];

    *v139 = v137;
    *&v139[25] = v135;
    *&v139[16] = v138;
    v139[24] = v30;
    v140 = v136;
    v141 = v29;
    v142[0] = v134[0];
    *(v142 + 7) = *(v134 + 7);
    if (v30 == 1)
    {
      outlined init with copy of ToolbarAppearanceConfiguration(v139, &v127);
      [v36 configureWithDefaultBackground];
      v37 = *&v139[16];
      if (!*&v139[16])
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v30 == 3)
      {
        [v36 configureWithTransparentBackground];
        goto LABEL_68;
      }

      outlined init with copy of ToolbarAppearanceConfiguration(v139, &v127);
      v37 = *&v139[16];
      if (!*&v139[16])
      {
        goto LABEL_67;
      }
    }

    *&v119[0] = v37;
    *&v121 = v113;
    *(&v121 + 1) = v112;

    ShapeStyle.resolveBackgroundMaterial(in:level:)();
    v38 = BYTE8(v127);
    if (BYTE8(v127) != 0xFF)
    {
      v39 = v127;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBlurEffect);
      *&v127 = v39;
      BYTE8(v127) = v38;
      outlined copy of Material.ID(v39, v38);
      v40 = UIBlurEffect.init(materialID:)(&v127);
      if (v40)
      {
        v41 = v40;
        [v36 setBackgroundEffect_];

        outlined consume of Material?(v39, v38);

        outlined destroy of ToolbarAppearanceConfiguration(v139);
        goto LABEL_68;
      }

      outlined consume of Material?(v39, v38);
    }

    *&v121 = v37;
    *&v127 = v113;
    *(&v127 + 1) = v112;
    if (ShapeStyle.fallbackColor(in:level:)())
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);

      v46 = UIColor.init(_:)(v45);
      [v36 setBackgroundColor_];
    }

LABEL_67:
    outlined destroy of ToolbarAppearanceConfiguration(v139);
LABEL_68:
    v127 = v137;
    v130 = v135;
    v128 = v138;
    v129 = v30;
    v131 = v136;
    v132 = v29;
    v133[0] = v134[0];
    *(v133 + 7) = *(v134 + 7);
    v47 = objc_opt_self();
    v48 = v36;
    outlined init with copy of ToolbarAppearanceConfiguration(&v127, &v121);
    v115 = v47;
    v49 = [v47 currentDevice];
    v50 = [v49 userInterfaceIdiom];

    if (v50 == 6)
    {
      if (v114 != 3)
      {
        goto LABEL_73;
      }

      v51 = 0;
    }

    else
    {
      static _GraphInputs.defaultInterfaceIdiom.getter();
      v51 = 0;
      if ((static Solarium.isEnabled(for:)() & 1) == 0 && v114 != 3)
      {
LABEL_73:
        v51 = v106;
      }
    }

    v117 = v29;
    if (*(&v127 + 1))
    {
      *&v119[0] = *(&v127 + 1);
      *&v121 = v113;
      *(&v121 + 1) = v112;
      if (ShapeStyle.fallbackColor(in:level:)())
      {
        v52 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);

        v54 = UIColor.init(_:)(v53);
        v55 = v54;
        v110 = v30;
        if (v51)
        {
          v56 = [objc_opt_self() clearColor];
        }

        else
        {
          v56 = v54;
        }

        *v123 = v52;
        *&v121 = v56;
        v71 = v56;
        v72 = [v48 titleTextAttributes];
        type metadata accessor for NSAttributedStringKey(0);
        lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
        v73 = MEMORY[0x1E69E7CA0];
        v74 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v120 = v74;
        if (*v123)
        {
          outlined init with take of Any(&v121, v119);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v118, isUniquelyReferenced_nonNull_native);
          v120 = v74;
        }

        else
        {
          outlined destroy of BarAppearanceBridge.UpdateContext?(&v121, &lazy cache variable for type metadata for Any?, v73 + 8);
          specialized Dictionary._Variant.removeValue(forKey:)(v118, v119);
          outlined destroy of BarAppearanceBridge.UpdateContext?(v119, &lazy cache variable for type metadata for Any?, v73 + 8);
        }

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v48 setTitleTextAttributes_];

        *v123 = v52;
        *&v121 = v71;
        v30 = v71;
        v77 = [v48 largeTitleTextAttributes];
        v78 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v120 = v78;
        if (*v123)
        {
          outlined init with take of Any(&v121, v119);
          v79 = swift_isUniquelyReferenced_nonNull_native();
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v118, v79);
          v120 = v78;
        }

        else
        {
          outlined destroy of BarAppearanceBridge.UpdateContext?(&v121, &lazy cache variable for type metadata for Any?, v73 + 8);
          specialized Dictionary._Variant.removeValue(forKey:)(v118, v119);
          outlined destroy of BarAppearanceBridge.UpdateContext?(v119, &lazy cache variable for type metadata for Any?, v73 + 8);
        }

        v80 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v48 setLargeTitleTextAttributes_];

        v81 = [v48 backButtonAppearance];
        v82 = [v81 normal];

        *v123 = v52;
        *&v121 = v55;
        v83 = v55;
        v84 = [v82 titleTextAttributes];
        v85 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v120 = v85;
        if (*v123)
        {
          outlined init with take of Any(&v121, v119);
          v86 = swift_isUniquelyReferenced_nonNull_native();
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v118, v86);
          v120 = v85;
        }

        else
        {
          outlined destroy of BarAppearanceBridge.UpdateContext?(&v121, &lazy cache variable for type metadata for Any?, v73 + 8);
          specialized Dictionary._Variant.removeValue(forKey:)(v118, v119);
          outlined destroy of BarAppearanceBridge.UpdateContext?(v119, &lazy cache variable for type metadata for Any?, v73 + 8);
        }

        v87 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v82 setTitleTextAttributes_];

        v15 = v109;
        v29 = v117;
        LOBYTE(v30) = v110;
        goto LABEL_93;
      }
    }

    if (!v51)
    {
      v64 = [v48 titleTextAttributes];
      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
      v65 = MEMORY[0x1E69E7CA0];
      v66 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *&v119[0] = v66;
      specialized Dictionary._Variant.removeValue(forKey:)(v118, &v121);
      outlined destroy of BarAppearanceBridge.UpdateContext?(&v121, &lazy cache variable for type metadata for Any?, v65 + 8);
      v67 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v48 setTitleTextAttributes_];

      v68 = [v48 largeTitleTextAttributes];
      v69 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *&v119[0] = v69;
      specialized Dictionary._Variant.removeValue(forKey:)(v118, &v121);
      outlined destroy of BarAppearanceBridge.UpdateContext?(&v121, &lazy cache variable for type metadata for Any?, v65 + 8);
      v15 = v109;
      v70 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v48 setLargeTitleTextAttributes_];

LABEL_93:
      v88 = v115;
      goto LABEL_99;
    }

    v111 = v30;
    v57 = [objc_opt_self() clearColor];
    v58 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
    *v123 = v58;
    *&v121 = v57;
    v59 = v57;
    v60 = [v48 titleTextAttributes];
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    v61 = MEMORY[0x1E69E7CA0];
    v62 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v120 = v62;
    if (*v123)
    {
      outlined init with take of Any(&v121, v119);
      v63 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v118, v63);
      v120 = v62;
    }

    else
    {
      outlined destroy of BarAppearanceBridge.UpdateContext?(&v121, &lazy cache variable for type metadata for Any?, v61 + 8);
      specialized Dictionary._Variant.removeValue(forKey:)(v118, v119);
      outlined destroy of BarAppearanceBridge.UpdateContext?(v119, &lazy cache variable for type metadata for Any?, v61 + 8);
    }

    v89 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v48 setTitleTextAttributes_];

    *v123 = v58;
    *&v121 = v59;
    v107 = v59;
    v90 = [v48 largeTitleTextAttributes];
    v91 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v120 = v91;
    v88 = v115;
    if (*v123)
    {
      outlined init with take of Any(&v121, v119);
      v92 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v118, v92);
      v120 = v91;
    }

    else
    {
      outlined destroy of BarAppearanceBridge.UpdateContext?(&v121, &lazy cache variable for type metadata for Any?, v61 + 8);
      specialized Dictionary._Variant.removeValue(forKey:)(v118, v119);
      outlined destroy of BarAppearanceBridge.UpdateContext?(v119, &lazy cache variable for type metadata for Any?, v61 + 8);
    }

    LOBYTE(v30) = v111;
    v93 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v48 setLargeTitleTextAttributes_];

    v29 = v117;
    v15 = v109;
LABEL_99:
    v94 = [v88 currentDevice];
    v95 = [v94 userInterfaceIdiom];

    v96 = v116;
    if (v95 == 6)
    {
      goto LABEL_106;
    }

    static _GraphInputs.defaultInterfaceIdiom.getter();
    if ((static Solarium.isEnabled(for:)() & 1) == 0)
    {
      goto LABEL_106;
    }

    if (v114 >= 2u)
    {
      if (v114 != 2)
      {
        goto LABEL_106;
      }

      v97 = 1;
    }

    else
    {
      v97 = 0;
    }

    [v48 _setTitleControlHidden_];
LABEL_106:
    outlined destroy of ToolbarAppearanceConfiguration(&v127);
    v98 = [v88 currentDevice];
    v99 = [v98 userInterfaceIdiom];

    if (v99 != 6)
    {
      static _GraphInputs.defaultInterfaceIdiom.getter();
      if (static Solarium.isEnabled(for:)())
      {
        v100 = 1;
        if (v29)
        {
          v100 = 2;
        }

        if (v29 == 2)
        {
          v101 = 0;
        }

        else
        {
          v101 = v100;
        }

        [v48 _setOverrideUserInterfaceStyle_];
      }
    }

    v102 = [v15 *off_1E72387E8[v116]];
    if (v102 && (v103 = v102, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UINavigationBarAppearance), v104 = v48, v105 = v103, v96 = v116, LOBYTE(v103) = static NSObject.== infix(_:_:)(), v104, v105, v105, (v103 & 1) != 0))
    {

      v121 = v137;
      v122 = v138;
      v123[0] = v30;
      *&v123[1] = v135;
      v124 = v136;
      v125 = v29;
      v126[0] = v134[0];
      *(v126 + 7) = *(v134 + 7);
      outlined destroy of ToolbarAppearanceConfiguration(&v121);
      v13 = v108;
    }

    else
    {
      if (v96 > 1u)
      {
        v13 = v108;
        if (v96 == 2)
        {
          [v15 setCompactAppearance_];
        }

        else
        {
          [v15 setCompactScrollEdgeAppearance_];
        }
      }

      else
      {
        v13 = v108;
        if (v96)
        {
          [v15 setScrollEdgeAppearance_];
        }

        else
        {
          [v15 setStandardAppearance_];
        }
      }

      v121 = v137;
      v122 = v138;
      v123[0] = v30;
      *&v123[1] = v135;
      v124 = v136;
      v125 = v29;
      v126[0] = v134[0];
      *(v126 + 7) = *(v134 + 7);
      outlined destroy of ToolbarAppearanceConfiguration(&v121);
    }

LABEL_22:
    ++v24;
  }

  while (v24 != 4);

  return outlined destroy of ToolbarAppearanceConfiguration(&v143);
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)()
{
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  type metadata accessor for AccessibilityNode();
  return static NSObject.== infix(_:_:)() & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t UIHostingController.viewDidAppear(_:)(char a1, SEL *a2, uint64_t (*a3)(id))
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for UIHostingController();
  v7 = objc_msgSendSuper2(&v9, *a2, a1 & 1);
  return a3(v7);
}

uint64_t FocusBridge.canAcceptFocus.getter()
{
  v1 = v0;
  v2 = FocusBridge.host.getter();
  if (v2 && (v4 = v2, v5 = v3, ObjectType = swift_getObjectType(), v7 = ViewGraphDelegate.uiViewController.getter(ObjectType, *(*(*(v5 + 8) + 16) + 8)), v4, v7))
  {
  }

  else if (swift_weakLoadStrong())
  {
    v8 = FocusBridge.canAcceptFocus.getter();

    return v8 & 1;
  }

  return (*(v1 + 16) >> 1) & 1;
}

uint64_t specialized FocusBridge.hostDidBecomeFirstResponder(in:)()
{
  result = FocusBridge.host.getter();
  if (result)
  {
    v2 = result;
    v3 = FocusBridge.host.getter();
    if (v3)
    {
      v4 = v3;
      if ((*(v0 + 16) & 1) == 0)
      {
        v5 = [v3 window];
        if (v5)
        {
          v6 = v5;
        }
      }
    }

    FocusBridge.focusedItem.getter(v7);
    if (v7[5] || v7[6] != 1)
    {
      outlined init with take of FocusItem(v7, v8);
      FocusBridge.moveFocus(to:designatedPlatformResponder:)(v8, 0);

      return outlined destroy of FocusItem(v8);
    }

    else
    {

      return outlined destroy of FocusItem?(v7);
    }
  }

  return result;
}

Swift::Bool __swiftcall UINavigationController.managesWindowToolbar()()
{
  v1 = [(UIViewController *)v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v2 = v1;
  v3 = [(UIView *)v1 window];

  if (!v3)
  {
    goto LABEL_18;
  }

  v1 = [(UIViewController *)v0 view];
  if (!v1)
  {
    goto LABEL_20;
  }

  v4 = v1;
  v1 = [(UIViewController *)v0 view];
  if (!v1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = v1;
  [(UIView *)v1 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(UIView *)v4 convertRect:v3 toCoordinateSpace:v7, v9, v11, v13];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(UIViewController *)v0 splitViewController];
  if (!v22)
  {
    goto LABEL_12;
  }

  v23 = v22;
  v51 = UISplitViewController.column(forViewController:)(v0);
  if (!v51.is_nil && v51.value <= UISplitViewControllerColumnSecondary)
  {
    v24 = v23;
    v1 = [(UISplitViewController *)v24 view];
    if (v1)
    {
      v25 = v1;
      v26 = [(UISplitViewController *)v24 view];

      if (v26)
      {
        [v26 bounds];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        v35 = v3;
        [(UIView *)v25 convertRect:v35 toCoordinateSpace:v28, v30, v32, v34];
        v15 = v36;
        v17 = v37;
        v19 = v38;
        v21 = v39;

        goto LABEL_11;
      }

LABEL_23:
      __break(1u);
      return v1;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_11:

LABEL_12:
  type metadata accessor for _SemanticFeature<Semantics_v5>();
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
  if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
  {
    [(UIWindow *)v3 bounds];
    v47 = v46;
    v49 = v48;

    if (vabdd_f64(v47, v19) < 0.1)
    {
      LOBYTE(v1) = vabdd_f64(v49, v21) < 0.1;
      return v1;
    }

LABEL_18:
    LOBYTE(v1) = 0;
    return v1;
  }

  v40 = v3;
  [(UIWindow *)v40 bounds];
  v42 = v41;
  v52.origin.x = v15;
  v52.origin.y = v17;
  v52.size.width = v19;
  v52.size.height = v21;
  v43 = vabdd_f64(v42, CGRectGetHeight(v52)) < 0.1;
  [(UIWindow *)v40 bounds];
  v45 = v44;

  LOBYTE(v1) = vabdd_f64(v15, v45) < 0.1 && v43;
  return v1;
}

uint64_t outlined copy of ToolbarLabelStyle.Data?(uint64_t a1, uint64_t a2, char a3)
{
  if ((~a2 & 0xF000000000000007) != 0 || a3 <= 0xFBu)
  {
    return outlined copy of ToolbarLabelStyle.Data(a1, a2, a3);
  }

  return a1;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.ToolbarForegroundStyleKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static EnvironmentValues.ToolbarForegroundStyleKey.defaultValue;
}

void closure #1 in BarAppearanceBridge.updateNavigationVisibilities(navigationController:)(id a1@<X1>, void **a2@<X0>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v84 = a3;
  v7 = *a2;
  v8 = [a1 topViewController];
  v9 = [a1 view];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 window];

    if (!v11)
    {

      *a4 = 0;
      return;
    }

    v81 = a2;

    v83 = v8;
    if (v8)
    {
      v12 = v8 == v7;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [a1 viewControllers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *&v98[0] = v7;
    MEMORY[0x1EEE9AC00](v16);
    v79[2] = v98;
    v17 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v79, v15);

    v18 = [v7 _appearState];
    v19 = [v7 _appearState];
    v82 = v13;
    if ((v13 & 1) == 0)
    {
      if (v17 & 1) != 0 || (v43 = v19, (v44 = [v7 navigationController]) != 0) && (v45 = v44, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UINavigationController), v46 = a1, v47 = static NSObject.== infix(_:_:)(), v46, v45, (v47))
      {

LABEL_52:
        *a4 = 1;
        return;
      }

      if (v18 != 2 && v43 != 1)
      {

        *a4 = 0;
        return;
      }
    }

    swift_getObjectType();
    v20 = [swift_getObjCClassFromMetadata() _isFromSwiftUI];
    v21 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_barConfigurations;
    v22 = v84;
    swift_beginAccess();
    v23 = *(v22 + v21);
    v102 = 0;
    memset(v101, 0, sizeof(v101));
    v24 = *(v23 + 16);
    v80 = a4;
    if (v24)
    {

      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v101);
      if (v26)
      {
        v27 = (*(v23 + 56) + 80 * v25);
        v98[0] = *v27;
        v29 = v27[2];
        v28 = v27[3];
        v30 = *(v27 + 57);
        v98[1] = v27[1];
        v99 = v29;
        *(v100 + 9) = v30;
        v100[0] = v28;
        outlined init with copy of ToolbarAppearanceConfiguration(v98, v86);
        outlined destroy of ToolbarPlacement.Role(v101);

        v31 = v98[0];
        v32 = BYTE1(v98[0]);
        v109 = *(v98 + 2);
        v110 = WORD3(v98[0]);
        v33 = *(v98 + 8);
        v34 = BYTE8(v98[1]);
        v108[0] = *(&v98[1] + 9);
        *(v108 + 3) = HIDWORD(v98[1]);
        v35 = v99;
        v36 = BYTE8(v99);
        v107 = BYTE8(v99);
        *(v106 + 3) = HIDWORD(v99);
        v106[0] = *(&v99 + 9);
        v37 = *&v100[0];
        v38 = BYTE8(v100[0]);
        v105 = BYTE8(v100[0]);
        v39 = BYTE9(v100[0]);
        v40 = BYTE10(v100[0]);
        v104 = HIBYTE(v100[0]);
        v103 = *(v100 + 11);
        v41 = *&v100[1];
        v42 = BYTE8(v100[1]);
        goto LABEL_20;
      }
    }

    outlined destroy of ToolbarPlacement.Role(v101);
    v42 = 0;
    v41 = 0;
    v40 = 0;
    v37 = 0;
    v35 = 0;
    v34 = 0;
    v32 = 0;
    v38 = 1;
    v107 = 1;
    v105 = 1;
    v39 = 2;
    v36 = 1;
    v31 = 1;
    v33 = 0uLL;
LABEL_20:
    LOBYTE(v98[0]) = v31;
    BYTE1(v98[0]) = v32;
    *(v98 + 2) = v109;
    WORD3(v98[0]) = v110;
    *(v98 + 8) = v33;
    BYTE8(v98[1]) = v34;
    *(&v98[1] + 9) = v108[0];
    HIDWORD(v98[1]) = *(v108 + 3);
    *&v99 = v35;
    BYTE8(v99) = v36;
    *(&v99 + 9) = v106[0];
    HIDWORD(v99) = *(v106 + 3);
    *&v100[0] = v37;
    BYTE8(v100[0]) = v38;
    BYTE9(v100[0]) = v39;
    BYTE10(v100[0]) = v40;
    *(v100 + 11) = v103;
    HIBYTE(v100[0]) = v104;
    *&v100[1] = v41;
    BYTE8(v100[1]) = v42;
    v48 = UIViewController.hasNavigationBarContent(updateContext:)(v81);
    if ((v20 & 1) == 0)
    {
      static Semantics.v4.getter();
      if ((isLinkedOnOrAfter(_:)() & 1) == 0)
      {
        goto LABEL_25;
      }

      if (!v32)
      {
        goto LABEL_32;
      }
    }

    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_5(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
    v49 = static SemanticFeature.isEnabled.getter();
    if (!v32)
    {
      v50 = v20 & ~v48 & v49 & (v34 != 1);
      goto LABEL_31;
    }

    if (v32 != 1)
    {
      v50 = 1;
      goto LABEL_31;
    }

LABEL_25:
    v50 = 0;
LABEL_31:
    [a1 setNavigationBarHidden:v50 animated:*&v100[1] != 0];
LABEL_32:
    v51 = *(v84 + v21);
    memset(v89, 0, sizeof(v89));
    v90 = xmmword_18CD7DD20;
    a4 = v80;
    if (*(v51 + 16))
    {

      v52 = specialized __RawDictionaryStorage.find<A>(_:)(v89);
      if (v53)
      {
        v54 = (*(v51 + 56) + 80 * v52);
        v86[0] = *v54;
        v56 = v54[2];
        v55 = v54[3];
        v57 = *(v54 + 57);
        v86[1] = v54[1];
        v87 = v56;
        *(v88 + 9) = v57;
        v88[0] = v55;
        outlined init with copy of ToolbarAppearanceConfiguration(v86, v85);
        outlined destroy of ToolbarPlacement.Role(v89);

        v58 = v86[0];
        v59 = BYTE1(v86[0]);
        v96 = *(v86 + 2);
        v97 = WORD3(v86[0]);
        v60 = *(v86 + 8);
        v61 = BYTE8(v86[1]);
        v85[0] = *(&v86[1] + 9);
        *(v85 + 3) = HIDWORD(v86[1]);
        v62 = v87;
        v63 = BYTE8(v87);
        v95 = BYTE8(v87);
        *(v94 + 3) = HIDWORD(v87);
        v94[0] = *(&v87 + 9);
        v64 = *&v88[0];
        v65 = BYTE8(v88[0]);
        v93 = BYTE8(v88[0]);
        v66 = BYTE9(v88[0]);
        v67 = BYTE10(v88[0]);
        v92 = HIBYTE(v88[0]);
        v91 = *(v88 + 11);
        v68 = *&v88[1];
        v69 = BYTE8(v88[1]);
        goto LABEL_37;
      }
    }

    outlined destroy of ToolbarPlacement.Role(v89);
    v69 = 0;
    v68 = 0;
    v67 = 0;
    v64 = 0;
    v62 = 0;
    v61 = 0;
    v59 = 0;
    v65 = 1;
    v95 = 1;
    v93 = 1;
    v60 = 0uLL;
    v66 = 2;
    v63 = 1;
    v58 = 1;
LABEL_37:
    LOBYTE(v86[0]) = v58;
    BYTE1(v86[0]) = v59;
    *(v86 + 2) = v96;
    WORD3(v86[0]) = v97;
    *(v86 + 8) = v60;
    BYTE8(v86[1]) = v61;
    *(&v86[1] + 9) = v85[0];
    HIDWORD(v86[1]) = *(v85 + 3);
    *&v87 = v62;
    BYTE8(v87) = v63;
    *(&v87 + 9) = v94[0];
    HIDWORD(v87) = *(v94 + 3);
    *&v88[0] = v64;
    BYTE8(v88[0]) = v65;
    BYTE9(v88[0]) = v66;
    BYTE10(v88[0]) = v67;
    HIBYTE(v88[0]) = v92;
    *(v88 + 11) = v91;
    *&v88[1] = v68;
    BYTE8(v88[1]) = v69;
    v70 = [v7 toolbarItems];
    if (v70)
    {
      v71 = v70;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);
      v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v72 >> 62)
      {
        v73 = __CocoaSet.count.getter();
      }

      else
      {
        v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v74 = v73 == 0;
      v59 = BYTE1(v86[0]);
      v61 = BYTE8(v86[1]);
      v75 = v83;
      if (v20)
      {
        v76 = 1;
        goto LABEL_45;
      }
    }

    else
    {
      v74 = 1;
      v76 = 1;
      v75 = v83;
      if (v20)
      {
        goto LABEL_45;
      }
    }

    static Semantics.v4.getter();
    isLinkedOnOrAfter(_:)();
    if (!v59)
    {
LABEL_51:
      BarAppearanceBridge.updateNavigationBarMargins(_:isTop:)(v7, v82);

      outlined destroy of ToolbarAppearanceConfiguration(v86);
      outlined destroy of ToolbarAppearanceConfiguration(v98);
      goto LABEL_52;
    }

    v76 = 0;
LABEL_45:
    if (v59)
    {
      v77 = v59 != 1;
    }

    else
    {
      v78 = v74 & v76;
      if (v61 == 1)
      {
        v77 = 0;
      }

      else
      {
        v77 = v78;
      }
    }

    [a1 setToolbarHidden:v77 animated:*&v88[1] != 0];
    goto LABEL_51;
  }

  __break(1u);
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  return sub_18BDE868C(a1, a2, a3) & 1;
}

{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x18D00E9C0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = __CocoaSet.count.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
  return static NSObject.== infix(_:_:)() & 1;
}

{
  type metadata accessor for AccessibilityNode();
  return static NSObject.== infix(_:_:)() & 1;
}

{
  return static Text.== infix(_:_:)() & 1;
}

uint64_t BarAppearanceBridge.invalidate(bar:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_allowedBars);

  v4 = specialized Set.contains(_:)(a1, v3);

  if (v4)
  {
    outlined init with copy of ToolbarPlacement.Role(a1, v9);
    v6 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_toUpdateBars;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v1 + v6);
    *(v1 + v6) = 0x8000000000000000;
    specialized _NativeSet.update(with:isUnique:)(v9, isUniquelyReferenced_nonNull_native, v10);
    *(v1 + v6) = v8;
    swift_endAccess();
    return _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(v10, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role);
  }

  return result;
}

uint64_t outlined destroy of ToolbarStorage.NavigationProperties(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall UIHostingController.didRender()()
{
  v0 = specialized UIHostingController.contentScrollViewBridge.getter();
  if (v0)
  {
    v1 = v0;
    if (*(v0 + 40))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;

        UIKitContentScrollViewBridge.findBestCandidates(in:)(v4);
        v6 = v5;
        v8 = v7;

        if (v6 == 1)
        {
        }

        else
        {
          *(v1 + 40) = 0;

          update #1 (edge:) in UIKitContentScrollViewBridge.update()(4, v3, v1, v6, v8);
          update #1 (edge:) in UIKitContentScrollViewBridge.update()(1, v3, v1, v6, v8);
        }
      }
    }
  }
}

void type metadata accessor for (Badge, Spacer)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t UINavigationItem.hasLargeContent.getter()
{
  v1 = [v0 title];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = [v0 titleView];
  if (v8)
  {
  }

  else if (v7)
  {
    return 0;
  }

  return 1;
}

uint64_t UIViewController.updateTitle(_:isFromSwiftUI:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = [v4 navigationItem];
  v9 = [v8 title];

  if (!v9)
  {
    if (!a2)
    {
      return 0;
    }

    goto LABEL_12;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (!a2)
  {

    if (a3)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v10 == a1 && v12 == a2)
  {

    return 0;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    return 0;
  }

LABEL_12:
  v15 = [v4 navigationItem];
  if (a2)
  {
    a2 = MEMORY[0x18D00C850](a1, a2);
  }

  [v15 setTitle_];

  return 1;
}

id UIViewController.hasBottomBarContent.getter()
{
  result = [v0 toolbarItems];
  if (result)
  {
    v2 = result;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return (v4 != 0);
  }

  return result;
}

id ViewGraphDelegate.uiPresenterViewController.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for UICoreViewControllerProvider);
  (*(a2 + 16))(&v7, v4, v4, a1, a2);
  if (!v7)
  {
    return 0;
  }

  swift_getObjectType();
  v5 = UICoreViewControllerProvider.containingViewController.getter();
  swift_unknownObjectRelease();
  result = v5;
  if (!v5)
  {
    return 0;
  }

  return result;
}

uint64_t _s7SwiftUI16PreferenceValuesVAAE18configurationValue33_3D0A5FA8455C04EDCEBBD3CEA14D2692LL3key9placementAC0F0Vy_AA30ToolbarAppearanceConfigurationVGxm_AA0P9PlacementV4RoleOSgtAA0pQ3KeyRzlFAA013NavigationBarqU0V_Tt0B5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26[0] = a2;
  PreferenceValues.subscript.getter();
  result = outlined init with copy of ToolbarPlacement.Role?(a1, v31);
  if (v32 != 7)
  {
    v25 = DWORD2(v27);
    if (*(v27 + 16))
    {

      v6 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
      if (v7)
      {
        v8 = (*(v27 + 56) + 80 * v6);
        v27 = *v8;
        v10 = v8[2];
        v9 = v8[3];
        v11 = *(v8 + 57);
        v28 = v8[1];
        v29 = v10;
        *&v30[9] = v11;
        *v30 = v9;
        outlined init with copy of ToolbarAppearanceConfiguration(&v27, v26);

        v12 = v27;
        v20 = BYTE1(v27);
        v37 = *(&v27 + 2);
        v38 = WORD3(v27);
        v21 = *(&v27 + 1);
        v22 = v28;
        v23 = BYTE8(v28);
        v36[0] = *(&v28 + 9);
        *(v36 + 3) = HIDWORD(v28);
        v24 = v29;
        v13 = BYTE8(v29);
        v35[0] = *(&v29 + 9);
        *(v35 + 3) = HIDWORD(v29);
        v14 = *v30;
        v15 = v30[8];
        v16 = v30[9];
        v17 = v30[10];
        v34 = v30[15];
        v33 = *&v30[11];
        v18 = *&v30[16];
        v19 = v30[24];
LABEL_7:
        outlined destroy of ToolbarPlacement.Role(v31);

        *a3 = v12;
        *(a3 + 1) = v20;
        *(a3 + 2) = v37;
        *(a3 + 6) = v38;
        *(a3 + 8) = v21;
        *(a3 + 16) = v22;
        *(a3 + 24) = v23;
        *(a3 + 25) = v36[0];
        *(a3 + 28) = *(v36 + 3);
        *(a3 + 32) = v24;
        *(a3 + 40) = v13;
        *(a3 + 44) = *(v35 + 3);
        *(a3 + 41) = v35[0];
        *(a3 + 48) = v14;
        *(a3 + 56) = v15;
        *(a3 + 57) = v16;
        *(a3 + 58) = v17;
        *(a3 + 63) = v34;
        *(a3 + 59) = v33;
        *(a3 + 64) = v18;
        *(a3 + 72) = v19;
        *(a3 + 76) = v25;
        return result;
      }
    }

    v19 = 0;
    v18 = 0;
    v17 = 0;
    v14 = 0;
    v24 = 0;
    v23 = 0;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v15 = 1;
    LOBYTE(v27) = 1;
    LOBYTE(v26[0]) = 1;
    v16 = 2;
    v13 = 1;
    v12 = 1;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void type metadata accessor for ToolbarPlacement.Role?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for ToolbarPlacement.Role);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double EnvironmentValues.contentMarginProxy.getter@<D0>(_OWORD *a1@<X8>)
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey>);

    PropertyList.Tracker.value<A>(_:for:)();

    v19 = v22;
    v20 = v23;
    *v21 = *v24;
    *&v21[9] = *&v24[9];
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>);

    PropertyList.Tracker.value<A>(_:for:)();

    v13 = v16;
    v14 = v17;
    *v15 = *v18;
    *&v15[9] = *&v18[9];
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey>);

    PropertyList.Tracker.value<A>(_:for:)();

    v7 = v10;
    v8 = v11;
    *v9 = *v12;
    *&v9[9] = *&v12[9];
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey>);
    PropertyList.subscript.getter();
    v19 = v22;
    v20 = v23;
    *v21 = *v24;
    *&v21[9] = *&v24[9];
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>);
    PropertyList.subscript.getter();
    v13 = v16;
    v14 = v17;
    *v15 = *v18;
    *&v15[9] = *&v18[9];
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey>);
    PropertyList.subscript.getter();
    v7 = v10;
    v8 = v11;
    *v9 = *v12;
    *&v9[9] = *&v12[9];
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey>);
    PropertyList.subscript.getter();
  }

  *a1 = v19;
  a1[1] = v20;
  a1[2] = *v21;
  *(a1 + 41) = *&v21[9];
  a1[4] = v13;
  a1[5] = v14;
  a1[6] = *v15;
  *(a1 + 105) = *&v15[9];
  *(a1 + 169) = *&v9[9];
  a1[9] = v8;
  a1[10] = *v9;
  a1[8] = v7;
  *(a1 + 233) = *&v6[9];
  result = *&v5;
  a1[13] = v5;
  a1[14] = *v6;
  a1[12] = v4;
  return result;
}

void BarAppearanceBridge.updateNavigationBarMargins(_:isTop:)(void *a1, char a2)
{
  v18[2] = *(v2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastEnvironment);
  v5 = EnvironmentValues.contentMarginProxy.getter(&v13);
  v6 = MEMORY[0x18D007050](v12, v5);
  v19 = v16;
  v20 = v17;
  v21[0] = v18[0];
  *(v21 + 9) = *(v18 + 9);
  MEMORY[0x18D007000](v11, v6);
  v7 = MEMORY[0x18D006FC0](&v19, v11);
  v19 = v16;
  v20 = v17;
  v21[0] = v18[0];
  *(v21 + 9) = *(v18 + 9);
  if (a2)
  {
    v13 = v19;
    v14 = v20;
    v15[0] = v21[0];
    *(v15 + 9) = *(v21 + 9);
    MEMORY[0x18D007000](v12, v7);
    if ((MEMORY[0x18D006FC0](&v13, v12) & 1) == 0)
    {
      v8 = [a1 navigationController];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 navigationBar];

        if (v10)
        {
          v13 = v19;
          v14 = v20;
          v15[0] = v21[0];
          *(v15 + 9) = *(v21 + 9);
          static Edge.Set.all.getter();
          OptionalEdgeInsets.in(edges:)();
          [v10 setDirectionalLayoutMargins_];
        }
      }
    }
  }
}

BOOL specialized ToolbarBridge.hasEntries(in:)(uint64_t a1)
{
  v3 = direct field offset for ToolbarBridge.storageByLocation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 24 * v5);
    v8 = *v7;
    v9 = v7[1];

    swift_bridgeObjectRetain_n();

    swift_endAccess();
    outlined consume of Toolbar.LocationStorage?(v8);
    v10 = *(v9 + 16);

    return v10 != 0;
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

uint64_t outlined consume of Toolbar.LocationStorage?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id UITabBarController.combinedWithNavigationBar.getter()
{
  swift_getObjectType();
  result = [swift_getObjCClassFromMetadata() _uip_isFloatingTabBarEnabled];
  if (result)
  {
    v2 = [v0 traitCollection];
    v3 = [v2 userInterfaceIdiom];

    if (v3 == 1)
    {
      v4 = [v0 traitCollection];
      v5 = [v4 horizontalSizeClass];

      return (v5 == 2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t UIViewController.hasNavigationBarContent(updateContext:)(uint64_t a1)
{
  v2 = v1;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_5(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
  {
    goto LABEL_17;
  }

  v4 = UIViewController.hasOrWillHaveBackItem(overrides:)(a1 + 16);
  v5 = [v1 navigationItem];
  v6 = [v5 hidesBackButton];

  outlined init with copy of HostingControllerOverrides(a1 + 16, v23);
  Strong = swift_unknownObjectWeakLoadStrong();
  outlined destroy of HostingControllerOverrides(v23);
  if (!Strong)
  {
    Strong = [v2 splitViewController];
  }

  v8 = [v2 navigationItem];
  v9 = UINavigationItem.hasContent.getter();

  if (Strong)
  {
    v10 = Strong;
    v11 = [v2 navigationController];
    if (v11)
    {
      v12 = v11;
      if ([v10 style] && (v13 = objc_msgSend(v10, sel_viewControllerForColumn_, 3)) != 0 && (v14 = v13, objc_opt_self(), v15 = swift_dynamicCastObjCClass(), v14, v15))
      {
        v16 = v12 == v15;
      }

      else
      {
        v16 = [v10 isCollapsed];
      }

      v17 = specialized UISplitViewController.mayHaveNavigationBarContent(given:isCollapsed:)(v16);

      v9 |= v17;
    }

    else
    {
    }
  }

  v18 = [v2 tabBarController];
  if (!v18)
  {

    if (v9)
    {
      goto LABEL_17;
    }

LABEL_20:
    v20 = v4 & (v6 ^ 1);
    return v20 & 1;
  }

  v19 = v18;
  if ((v9 & 1) == 0)
  {
    v22 = UITabBarController.combinedWithNavigationBar.getter();

    if (v22)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

LABEL_17:
  v20 = 1;
  return v20 & 1;
}

void closure #1 in BarAppearanceBridge.updateBackAction(_:)(void **a1, uint64_t a2, uint64_t a3)
{
  _s7SwiftUI25ToolbarContentDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v35 - v7);
  _s7SwiftUI25ToolbarContentDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for ToolbarContentDescription?, type metadata accessor for ToolbarContentDescription);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for ToolbarContentDescription(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v36 = [v17 navigationItem];
  v18 = [v36 backAction];
  if (v18)
  {

    goto LABEL_3;
  }

  v20 = [v36 backAction];
  if (!v20 || (v21 = v20, swift_getObjectType(), v22 = [swift_getObjCClassFromMetadata() _isFromSwiftUI], v21, (v22 & 1) != 0))
  {
    v37 = a2;
    PreferenceValues.subscript.getter();
    v23 = v40;
    if ([v36 style] == 2)
    {
      v24 = [v17 presentingViewController];
      if (v24)
      {

        if ((v23 & 1) == 0 && ([v36 hidesBackButton] & 1) == 0)
        {
          if (*(a3 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastEnvironment + 8))
          {
            _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_5(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationModeKey>, &type metadata for PresentationModeKey, &protocol witness table for PresentationModeKey, MEMORY[0x1E697FE38]);
            lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationModeKey>, &type metadata for PresentationModeKey, &protocol witness table for PresentationModeKey);

            swift_retain_n();
            PropertyList.Tracker.value<A>(_:for:)();
          }

          else
          {
            _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_5(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationModeKey>, &type metadata for PresentationModeKey, &protocol witness table for PresentationModeKey, MEMORY[0x1E697FE38]);
            lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationModeKey>, &type metadata for PresentationModeKey, &protocol witness table for PresentationModeKey);

            PropertyList.subscript.getter();
          }

          v31 = v37;
          v32 = v38;
          v33 = v39;
          type metadata accessor for UIKitAction();
          v34 = swift_allocObject();
          *(v34 + 16) = v31;
          *(v34 + 24) = v32;
          *(v34 + 32) = v33;
          v30 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          goto LABEL_22;
        }
      }
    }

    v25 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastToolbarInputContent;
    swift_beginAccess();
    _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVSgWOcTm_0(a3 + v25, v11, &lazy cache variable for type metadata for ToolbarContentDescription?, type metadata accessor for ToolbarContentDescription);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      v26 = &lazy cache variable for type metadata for ToolbarContentDescription?;
      v27 = type metadata accessor for ToolbarContentDescription;
      v28 = v11;
    }

    else
    {
      outlined init with take of ToolbarContentDescription(v11, v16);
      _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVSgWOcTm_0(&v16[*(v12 + 20)], v8, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties);
      _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVWOhTm_0(v16, type metadata accessor for ToolbarContentDescription);
      v29 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
      if ((*(*(v29 - 8) + 48))(v8, 1, v29) != 1)
      {
        v30 = v8[6];
        _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVWOhTm_0(v8, type metadata accessor for ToolbarStorage.NavigationProperties);
        goto LABEL_22;
      }

      v26 = &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?;
      v27 = type metadata accessor for ToolbarStorage.NavigationProperties;
      v28 = v8;
    }

    _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVSgWOhTm_0(v28, v26, v27);
    v30 = 0;
LABEL_22:
    [v36 setBackAction_];

    return;
  }

LABEL_3:
  v19 = v36;
}

uint64_t sub_18BDEA218()
{

  return swift_deallocObject();
}

uint64_t sub_18BDEA26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ToolbarStorage.NavigationProperties?(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 48);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

void closure #1 in BarAppearanceBridge.updateSidebarToggle(_:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_platformStorage) != 1)
  {
    return;
  }

  v4 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_updateContext;
  swift_beginAccess();
  outlined init with copy of BarAppearanceBridge.UpdateContext?(a2 + v4, &v17, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
  if (v17)
  {
    outlined init with copy of HostingControllerOverrides(v19, v16);
    outlined destroy of BarAppearanceBridge.UpdateContext(&v17);
    Strong = swift_unknownObjectWeakLoadStrong();
    outlined destroy of HostingControllerOverrides(v16);
    if (Strong)
    {
LABEL_8:
      outlined init with copy of HostingControllerOverrides(a1 + 16, &v17);
      v7 = swift_unknownObjectWeakLoadStrong();
      outlined destroy of HostingControllerOverrides(&v17);
      if (v7 || (v7 = [Strong splitViewController]) != 0)
      {
        outlined init with copy of BarAppearanceBridge.UpdateContext?(a2 + v4, v16, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
        if (v16[0])
        {
          outlined init with take of BarAppearanceBridge.UpdateContext(v16, &v17);
          v8 = v17;
          _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_5(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
          v9 = swift_dynamicCastClass();
          if (v9 && (v10 = v9 + *((*MEMORY[0x1E69E7D40] & *v9) + 0x3F8), v11 = v8, swift_beginAccess(), LODWORD(v10) = v10[1], v11, !v10))
          {
            outlined destroy of BarAppearanceBridge.UpdateContext(&v17);
            PreferenceValues.subscript.getter();
            v12 = v19[0];
            v13 = v19[1];
            if (specialized Set.contains(_:)(0, v19[6]))
            {
              v14 = v7;
              v15 = 1;
            }

            else
            {
              v14 = v7;
              v15 = 0;
            }

            [v14 setDisplayModeButtonVisibility_];

            outlined consume of Binding<NavigationSplitViewColumn>?(v12, v13);
          }

          else
          {

            outlined destroy of BarAppearanceBridge.UpdateContext(&v17);
          }
        }

        else
        {
          outlined destroy of BarAppearanceBridge.UpdateContext?(v16, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }

      else
      {
      }

      return;
    }
  }

  else
  {
    outlined destroy of BarAppearanceBridge.UpdateContext?(&v17, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
  }

  outlined init with copy of BarAppearanceBridge.UpdateContext?(a2 + v4, &v17, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
  if (!v17)
  {
    outlined destroy of BarAppearanceBridge.UpdateContext?(&v17, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
    return;
  }

  v6 = v18;
  Strong = v18;
  outlined destroy of BarAppearanceBridge.UpdateContext(&v17);
  if (v6)
  {
    goto LABEL_8;
  }
}

id BarAppearanceBridge.uiContainingNavController.getter()
{
  if (*(v0 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_platformStorage) == 1)
  {
    v1 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_updateContext;
    swift_beginAccess();
    outlined init with copy of BarAppearanceBridge.UpdateContext?(v0 + v1, &v7, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
    if (v7)
    {
      outlined init with copy of HostingControllerOverrides(&v9, v6);
      outlined destroy of BarAppearanceBridge.UpdateContext(&v7);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of HostingControllerOverrides(v6);
      result = Strong;
      if (Strong)
      {
        return result;
      }
    }

    else
    {
      outlined destroy of BarAppearanceBridge.UpdateContext?(&v7, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
    }

    outlined init with copy of BarAppearanceBridge.UpdateContext?(v0 + v1, &v7, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
    if (v7)
    {
      v4 = v8;
      v5 = v8;
      outlined destroy of BarAppearanceBridge.UpdateContext(&v7);
      return v4;
    }

    outlined destroy of BarAppearanceBridge.UpdateContext?(&v7, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
  }

  return 0;
}

uint64_t UINavigationItem.hasContent.getter()
{
  v1 = v0;
  v2 = [v0 leftBarButtonItems];
  if (v2 && ((v3 = v2, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem), v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v3, v4 >> 62) ? (v5 = __CocoaSet.count.getter()) : (v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v5))
  {
    v6 = 1;
  }

  else
  {
    v7 = [v1 leadingItemGroups];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItemGroup);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = v9 != 0;
  }

  v10 = [v1 rightBarButtonItems];
  if (v10 && ((v11 = v10, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem), v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v11, v12 >> 62) ? (v13 = __CocoaSet.count.getter()) : (v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v13))
  {
    v14 = 1;
  }

  else
  {
    v15 = [v1 trailingItemGroups];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItemGroup);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v16 >> 62)
    {
      v17 = __CocoaSet.count.getter();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v17 != 0;
  }

  v18 = [v1 _bottomPalette];
  v19 = v18;
  if (v18)
  {
  }

  v20 = [v1 searchController];
  v21 = v20;
  if (v20)
  {
  }

  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_5(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    v22 = [v1 centerItemGroups];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItemGroup);
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v23 >> 62)
    {
      v24 = __CocoaSet.count.getter();
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v24 != 0;
  }

  else
  {
    v25 = 0;
  }

  return (v21 != 0) | (v19 != 0) | (UINavigationItem.hasLargeContent.getter() | v6 | v14 | v25) & 1;
}

uint64_t BarAppearanceBridge.updateConfigurations(_:)(uint64_t *a1)
{
  v2 = v1;
  v61 = *a1;
  v3 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_updateContext;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    outlined init with copy of BarAppearanceBridge.UpdateContext(v1 + v3, v84);
    type metadata accessor for Published<Visibility>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement.Role>, &type metadata for ToolbarPlacement.Role, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_18CD9F770;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 2;
    *(v4 + 104) = 0u;
    *(v4 + 120) = 0u;
    *(v4 + 136) = 3;
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
    *(v4 + 176) = 4;
    *(v4 + 184) = 0u;
    *(v4 + 200) = 0u;
    *(v4 + 216) = 5;
    *(v4 + 224) = 0u;
    *(v4 + 240) = 0u;
    *(v4 + 256) = 6;
    *(v4 + 264) = 0u;
    *(v4 + 280) = 0u;
    *(v4 + 296) = 1;
    *(v4 + 304) = 0;
    v104[0] = v4;

    specialized Array.append<A>(contentsOf:)(v5);
    outlined destroy of BarAppearanceBridge.UpdateContext(v84);
    v6 = v104[0];
    v7 = *(v104[0] + 16);
    if (!v7)
    {
    }
  }

  else
  {
    type metadata accessor for Published<Visibility>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement.Role>, &type metadata for ToolbarPlacement.Role, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    v7 = 7;
    *(v6 + 16) = xmmword_18CD9F770;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;
    *(v6 + 96) = 2;
    *(v6 + 104) = 0u;
    *(v6 + 120) = 0u;
    *(v6 + 136) = 3;
    *(v6 + 144) = 0u;
    *(v6 + 160) = 0u;
    *(v6 + 176) = 4;
    *(v6 + 184) = 0u;
    *(v6 + 200) = 0u;
    *(v6 + 216) = 5;
    *(v6 + 224) = 0u;
    *(v6 + 240) = 0u;
    *(v6 + 256) = 6;
    *(v6 + 264) = 0u;
    *(v6 + 280) = 0u;
    *(v6 + 296) = 1;
    *(v6 + 304) = 0;
  }

  v9 = 0;
  v64 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_allowedBars;
  v65 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_barConfigurations;
  v58 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_toUpdateBars;
  v63 = v6 + 32;
  v62 = v7;
  v59 = v3;
  v60 = v6;
  while (v9 < *(v6 + 16))
  {
    outlined init with copy of ToolbarPlacement.Role(v63 + 40 * v9, v105);
    v10 = *(v2 + v64);

    v11 = specialized Set.contains(_:)(v105, v10);

    if ((v11 & 1) == 0)
    {
      goto LABEL_7;
    }

    outlined init with copy of NavigationTitleStorage?(v2 + v3, v104, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720]);
    *v66 = v61;
    PreferenceValues.configuration(toolbarPlacement:)(v105, v84);
    v12 = v84[0];
    v101 = *&v84[33];
    v102 = *&v84[49];
    v103 = *&v84[65];
    v100 = *&v84[17];
    v99 = *&v84[1];
    memset(v66, 0, 40);
    outlined init with copy of ToolbarPlacement.Role(v105, v84);
    outlined init with copy of ToolbarPlacement.Role(v66, &v84[40]);
    if (*&v84[24] <= 2)
    {
      switch(*&v84[24])
      {
        case 0:
          outlined destroy of ToolbarPlacement.Role(v66);
          if (*&v84[64])
          {
            goto LABEL_34;
          }

          goto LABEL_36;
        case 1:
          outlined destroy of ToolbarPlacement.Role(v66);
          if (*&v84[64] != 1)
          {
            goto LABEL_34;
          }

          goto LABEL_36;
        case 2:
          outlined destroy of ToolbarPlacement.Role(v66);
          if (*&v84[64] != 2)
          {
            goto LABEL_34;
          }

          goto LABEL_36;
      }
    }

    else
    {
      if (*&v84[24] <= 4)
      {
        if (*&v84[24] == 3)
        {
          outlined destroy of ToolbarPlacement.Role(v66);
          if (*&v84[64] != 3)
          {
            goto LABEL_34;
          }
        }

        else
        {
          outlined destroy of ToolbarPlacement.Role(v66);
          if (*&v84[64] != 4)
          {
            goto LABEL_34;
          }
        }

        goto LABEL_36;
      }

      if (*&v84[24] == 5)
      {
        outlined destroy of ToolbarPlacement.Role(v66);
        if (*&v84[64] != 5)
        {
          goto LABEL_34;
        }

        goto LABEL_36;
      }

      if (*&v84[24] == 6)
      {
        outlined destroy of ToolbarPlacement.Role(v66);
        if (*&v84[64] != 6)
        {
          goto LABEL_34;
        }

        goto LABEL_36;
      }
    }

    outlined init with copy of ToolbarPlacement.Role(v84, &v95);
    if (*&v84[64] < 7uLL)
    {
      outlined destroy of ToolbarPlacement.Role(v66);
      outlined destroy of AnyHashable(&v95);
LABEL_34:
      _s7SwiftUI16ToolbarPlacementV4RoleO_AEtWOhTm_0(v84, type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role));
      v13 = v104;
      goto LABEL_43;
    }

    v80 = *&v84[40];
    v81 = *&v84[56];
    *&v82 = *&v84[72];
    v14 = MEMORY[0x18D00E7E0](&v95, &v80);
    outlined destroy of AnyHashable(&v80);
    outlined destroy of ToolbarPlacement.Role(v66);
    outlined destroy of AnyHashable(&v95);
    if ((v14 & 1) == 0)
    {
      _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(v104, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
      outlined destroy of ToolbarPlacement.Role(v84);
      goto LABEL_47;
    }

LABEL_36:
    outlined destroy of ToolbarPlacement.Role(v84);
    outlined init with copy of NavigationTitleStorage?(v104, v66, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720]);
    if (*v66)
    {
      outlined init with take of BarAppearanceBridge.UpdateContext(v66, v84);
      v15 = *(*&v84[72] + 16);
      if (v15)
      {
        v16 = 0;
        v17 = *&v84[72] + 32;
        do
        {
          outlined init with copy of UINavigationItemAdaptorStorage.Adaptor(v17, v66);
          v18 = *&v66[24];
          v19 = *&v66[32];
          __swift_project_boxed_opaque_existential_1(v66, *&v66[24]);
          (*(v19 + 8))(&v95, v18, v19);
          __swift_destroy_boxed_opaque_existential_1(v66);
          v16 |= v95;
          v17 += 48;
          --v15;
        }

        while (v15);
        _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(v104, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
        if ((v16 & 2) != 0)
        {
          outlined destroy of BarAppearanceBridge.UpdateContext(v84);
          v12 = 0;
LABEL_46:
          v3 = v59;
          goto LABEL_47;
        }
      }

      else
      {
        _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(v104, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
      }

      outlined destroy of BarAppearanceBridge.UpdateContext(v84);
      goto LABEL_46;
    }

    _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(v104, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
    v13 = v66;
LABEL_43:
    _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(v13, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
LABEL_47:
    v66[0] = v12;
    *&v66[33] = v101;
    *&v66[49] = v102;
    *&v66[65] = v103;
    *&v66[1] = v99;
    *&v66[17] = v100;
    swift_beginAccess();
    v20 = *(v2 + v65);
    if (*(v20 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v105), (v22 & 1) != 0))
    {
      v23 = (*(v20 + 56) + 80 * v21);
      v80 = *v23;
      v25 = v23[2];
      v24 = v23[3];
      v26 = *(v23 + 57);
      v81 = v23[1];
      v82 = v25;
      *(v83 + 9) = v26;
      v83[0] = v24;
      *&v84[16] = v23[1];
      *&v84[32] = v23[2];
      *&v84[48] = v23[3];
      *&v84[57] = *(v23 + 57);
      *v84 = *v23;
      outlined init with copy of ToolbarAppearanceConfiguration(&v80, &v76);
      v97 = *&v84[32];
      v98[0] = *&v84[48];
      *(v98 + 9) = *&v84[57];
      v95 = *v84;
      v96 = *&v84[16];
    }

    else
    {
      v95 = xmmword_18CD633F0;
      v96 = 0u;
      v97 = 0u;
      memset(v98, 0, 25);
    }

    swift_endAccess();
    v27 = *v66;
    v89 = *&v66[16];
    v90 = *&v66[32];
    v91[0] = *&v66[48];
    *(v91 + 9) = *&v66[57];
    v28 = v95;
    v92 = v96;
    v93 = v97;
    v94[0] = v98[0];
    *(v94 + 9) = *(v98 + 9);
    if (*(&v95 + 1) == 1)
    {
      if (*&v66[8] != 1)
      {
        outlined init with copy of ToolbarAppearanceConfiguration(v66, v84);
        outlined init with copy of ToolbarAppearanceConfiguration(v66, v84);
        outlined init with copy of NavigationTitleStorage?(&v95, v84, &lazy cache variable for type metadata for ToolbarAppearanceConfiguration?, &type metadata for ToolbarAppearanceConfiguration, MEMORY[0x1E69E6720]);
LABEL_56:
        *v84 = v28;
        *&v84[16] = v92;
        *&v84[32] = v93;
        *&v84[48] = v94[0];
        *&v84[57] = *(v94 + 9);
        v85 = v27;
        v86 = v89;
        v87 = v90;
        v88[0] = v91[0];
        *(v88 + 9) = *(v91 + 9);
        _s7SwiftUI16ToolbarPlacementV4RoleO_AEtWOhTm_0(v84, type metadata accessor for (ToolbarAppearanceConfiguration?, ToolbarAppearanceConfiguration?));
        goto LABEL_57;
      }

      *v84 = v95;
      *&v84[8] = 1;
      *&v84[16] = v96;
      *&v84[32] = v97;
      *&v84[48] = v98[0];
      *&v84[57] = *(v98 + 9);
      _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(v84, &lazy cache variable for type metadata for ToolbarAppearanceConfiguration?, &type metadata for ToolbarAppearanceConfiguration);
      v6 = v60;
    }

    else
    {
      *v84 = v95;
      *&v84[16] = v96;
      *&v84[32] = v97;
      *&v84[48] = v98[0];
      *&v84[57] = *(v98 + 9);
      v80 = v95;
      v81 = v96;
      v82 = v97;
      v83[0] = *&v84[48];
      *(v83 + 9) = *(v98 + 9);
      if (*&v66[8] == 1)
      {
        v78 = *&v84[32];
        v79[0] = *&v84[48];
        *(v79 + 9) = *&v84[57];
        v76 = *v84;
        v77 = *&v84[16];
        outlined init with copy of ToolbarAppearanceConfiguration(v66, v74);
        outlined init with copy of ToolbarAppearanceConfiguration(v66, v74);
        v29 = MEMORY[0x1E69E6720];
        outlined init with copy of NavigationTitleStorage?(&v95, v74, &lazy cache variable for type metadata for ToolbarAppearanceConfiguration?, &type metadata for ToolbarAppearanceConfiguration, MEMORY[0x1E69E6720]);
        outlined init with copy of NavigationTitleStorage?(v84, v74, &lazy cache variable for type metadata for ToolbarAppearanceConfiguration?, &type metadata for ToolbarAppearanceConfiguration, v29);
        outlined destroy of ToolbarAppearanceConfiguration(&v76);
        v3 = v59;
        goto LABEL_56;
      }

      v69 = *&v66[16];
      v70 = *&v66[32];
      v71[0] = *&v66[48];
      *(v71 + 9) = *&v66[57];
      v68 = *v66;
      outlined init with copy of ToolbarAppearanceConfiguration(v66, v67);
      outlined init with copy of ToolbarAppearanceConfiguration(v66, v67);
      v48 = MEMORY[0x1E69E6720];
      outlined init with copy of NavigationTitleStorage?(&v95, v67, &lazy cache variable for type metadata for ToolbarAppearanceConfiguration?, &type metadata for ToolbarAppearanceConfiguration, MEMORY[0x1E69E6720]);
      outlined init with copy of NavigationTitleStorage?(v84, v67, &lazy cache variable for type metadata for ToolbarAppearanceConfiguration?, &type metadata for ToolbarAppearanceConfiguration, v48);
      LOBYTE(v48) = specialized static ToolbarAppearanceConfiguration.== infix(_:_:)(&v80, &v68);
      v72[2] = v70;
      v73[0] = v71[0];
      *(v73 + 9) = *(v71 + 9);
      v72[0] = v68;
      v72[1] = v69;
      outlined destroy of ToolbarAppearanceConfiguration(v72);
      v74[2] = v82;
      v75[0] = v83[0];
      *(v75 + 9) = *(v83 + 9);
      v74[0] = v80;
      v74[1] = v81;
      outlined destroy of ToolbarAppearanceConfiguration(v74);
      v76 = v28;
      v77 = v92;
      v78 = v93;
      v79[0] = v94[0];
      *(v79 + 9) = *(v94 + 9);
      _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(&v76, &lazy cache variable for type metadata for ToolbarAppearanceConfiguration?, &type metadata for ToolbarAppearanceConfiguration);
      if ((v48 & 1) == 0)
      {
        v3 = v59;
LABEL_57:
        outlined init with copy of ToolbarPlacement.Role(v105, &v80);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v74[0] = *(v2 + v65);
        v31 = *&v74[0];
        *(v2 + v65) = 0x8000000000000000;
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(&v80);
        v34 = *(v31 + 16);
        v35 = (v33 & 1) == 0;
        v36 = __OFADD__(v34, v35);
        v37 = v34 + v35;
        if (v36)
        {
          goto LABEL_73;
        }

        v38 = v33;
        v6 = v60;
        if (*(v31 + 24) >= v37)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_62;
          }

          v49 = v32;
          specialized _NativeDictionary.copy()();
          v32 = v49;
          if ((v38 & 1) == 0)
          {
            goto LABEL_69;
          }

LABEL_63:
          v40 = *&v74[0];
          v41 = (*(*&v74[0] + 56) + 80 * v32);
          *v84 = *v41;
          v42 = v41[1];
          v43 = v41[2];
          v44 = v41[3];
          *&v84[57] = *(v41 + 57);
          *&v84[32] = v43;
          *&v84[48] = v44;
          *&v84[16] = v42;
          v46 = *&v66[32];
          v45 = *&v66[48];
          v47 = *&v66[16];
          *(v41 + 57) = *&v66[57];
          v41[2] = v46;
          v41[3] = v45;
          v41[1] = v47;
          *v41 = *v66;
          outlined destroy of ToolbarAppearanceConfiguration(v84);
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, isUniquelyReferenced_nonNull_native);
          v32 = specialized __RawDictionaryStorage.find<A>(_:)(&v80);
          if ((v38 & 1) != (v39 & 1))
          {
            goto LABEL_75;
          }

LABEL_62:
          if (v38)
          {
            goto LABEL_63;
          }

LABEL_69:
          v40 = *&v74[0];
          *(*&v74[0] + 8 * (v32 >> 6) + 64) |= 1 << v32;
          v50 = v32;
          outlined init with copy of ToolbarPlacement.Role(&v80, v40[6] + 40 * v32);
          v51 = (v40[7] + 80 * v50);
          *v51 = *v66;
          v52 = *&v66[16];
          v53 = *&v66[32];
          v54 = *&v66[48];
          *(v51 + 57) = *&v66[57];
          v51[2] = v53;
          v51[3] = v54;
          v51[1] = v52;
          v55 = v40[2];
          v36 = __OFADD__(v55, 1);
          v56 = v55 + 1;
          if (v36)
          {
            goto LABEL_74;
          }

          v40[2] = v56;
        }

        outlined destroy of ToolbarPlacement.Role(&v80);
        *(v2 + v65) = v40;
        swift_endAccess();
        outlined init with copy of ToolbarPlacement.Role(v105, &v80);
        swift_beginAccess();
        v57 = swift_isUniquelyReferenced_nonNull_native();
        *&v74[0] = *(v2 + v58);
        *(v2 + v58) = 0x8000000000000000;
        specialized _NativeSet.update(with:isUnique:)(&v80, v57, v84);
        *(v2 + v58) = *&v74[0];
        swift_endAccess();
        _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(&v95, &lazy cache variable for type metadata for ToolbarAppearanceConfiguration?, &type metadata for ToolbarAppearanceConfiguration);
        outlined destroy of ToolbarAppearanceConfiguration(v66);
        _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(v84, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role);
        outlined destroy of ToolbarPlacement.Role(v105);
        goto LABEL_8;
      }

      outlined destroy of ToolbarAppearanceConfiguration(v66);
      _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(&v95, &lazy cache variable for type metadata for ToolbarAppearanceConfiguration?, &type metadata for ToolbarAppearanceConfiguration);
      outlined destroy of ToolbarAppearanceConfiguration(v66);
      v3 = v59;
      v6 = v60;
    }

LABEL_7:
    outlined destroy of ToolbarPlacement.Role(v105);
LABEL_8:
    if (++v9 == v62)
    {
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined init with copy of ToolbarPlacement.Role?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ToolbarPlacement.Role?(0, &lazy cache variable for type metadata for ToolbarPlacement.Role?, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ToolbarPlacement.Role?(uint64_t a1)
{
  type metadata accessor for ToolbarPlacement.Role?(0, &lazy cache variable for type metadata for ToolbarPlacement.Role?, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeWithCopy for ToolbarAppearanceConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarAppearanceConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
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

void type metadata accessor for (ToolbarAppearanceConfiguration?, ToolbarAppearanceConfiguration?)()
{
  if (!lazy cache variable for type metadata for (ToolbarAppearanceConfiguration?, ToolbarAppearanceConfiguration?))
  {
    type metadata accessor for Published<Visibility>(255, &lazy cache variable for type metadata for ToolbarAppearanceConfiguration?, &type metadata for ToolbarAppearanceConfiguration, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ToolbarAppearanceConfiguration?, ToolbarAppearanceConfiguration?));
    }
  }
}

Swift::Void __swiftcall BarAppearanceBridge.platformUpdateNavigationAdaptor()()
{
  v1 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_updateContext;
  swift_beginAccess();
  outlined init with copy of BarAppearanceBridge.UpdateContext?(v0 + v1, v5, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
  if (!v5[0])
  {
    goto LABEL_7;
  }

  v2 = v5[0];
  outlined destroy of BarAppearanceBridge.UpdateContext(v5);
  outlined init with copy of BarAppearanceBridge.UpdateContext?(v0 + v1, v5, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
  if (!v5[0])
  {

LABEL_7:
    outlined destroy of BarAppearanceBridge.UpdateContext?(v5, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
    return;
  }

  v3 = v5[9];

  updated = outlined destroy of BarAppearanceBridge.UpdateContext(v5);
  if (v3[2])
  {
    MEMORY[0x1EEE9AC00](updated);
    static Update.ensure<A>(_:)();
  }
}

void type metadata accessor for PopoverPresentation?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for DisplayList.AccessibilityUpdater.AttachmentStorage(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

void SharingActivityPickerBridge.preferencesDidChange(_:)(void *a1)
{
  *&v73 = *a1;
  PreferenceValues.subscript.getter();
  v2 = v101;
  if (*(v101 + 16) > 1uLL)
  {
    goto LABEL_9;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!swift_unknownObjectWeakLoadStrong())
    {
      __break(1u);
LABEL_32:
      __break(1u);
      return;
    }

    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    Strong = ViewGraphDelegate.uiPresenterViewController.getter(ObjectType, *(*(v4 + 16) + 8));
    swift_unknownObjectRelease();
    if (!Strong)
    {
LABEL_9:

      return;
    }
  }

  if (DWORD2(v101) != -1)
  {
    v6 = *(v1 + 224);
    if (v6 != -1 && DWORD2(v101) == v6)
    {

      goto LABEL_9;
    }
  }

  *(v1 + 224) = DWORD2(v101);
  if (*(v2 + 16))
  {
    v7 = *(v2 + 144);
    v107 = *(v2 + 128);
    v108 = v7;
    v109 = *(v2 + 160);
    v110 = *(v2 + 176);
    v8 = *(v2 + 80);
    v103 = *(v2 + 64);
    v104 = v8;
    v9 = *(v2 + 112);
    v105 = *(v2 + 96);
    v106 = v9;
    v10 = *(v2 + 48);
    v101 = *(v2 + 32);
    v102 = v10;
    v11 = *(v1 + 192);
    v12 = *(v1 + 160);
    v13 = *(v1 + 144);
    v70 = *(v1 + 176);
    v71 = v11;
    v69 = v12;
    v14 = *(v1 + 112);
    v15 = *(v1 + 80);
    v65 = *(v1 + 96);
    v66 = v14;
    v16 = *(v1 + 112);
    v17 = *(v1 + 144);
    v67 = *(v1 + 128);
    v68 = v17;
    v18 = *(v1 + 80);
    v64[0] = *(v1 + 64);
    v64[1] = v18;
    v79 = v12;
    v80 = v70;
    v81 = *(v1 + 192);
    v75 = v65;
    v76 = v16;
    v77 = v67;
    v78 = v13;
    v72 = *(v1 + 208);
    v82 = *(v1 + 208);
    v73 = v64[0];
    v74 = v15;
    if (_s7SwiftUI33SharingActivityPickerPresentation33_ED8966F32E79CAE8636A59B86DBA4A31LLVSgWOg(&v73) == 1)
    {
      outlined init with copy of SharingActivityPickerPresentation(&v101, v62);

      v19 = swift_allocObject();
      swift_weakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 120) = v107;
      *(v20 + 136) = v108;
      *(v20 + 152) = v109;
      *(v20 + 168) = v110;
      *(v20 + 56) = v103;
      *(v20 + 72) = v104;
      *(v20 + 88) = v105;
      *(v20 + 104) = v106;
      *(v20 + 24) = v101;
      *(v20 + 40) = v102;
      *(v20 + 176) = Strong;
      outlined init with copy of SharingActivityPickerPresentation(&v101, v62);

      v21 = Strong;
      onNextMainRunLoop(do:)();

LABEL_28:
      outlined destroy of SharingActivityPickerPresentation(&v101);
      return;
    }

    v97 = v106;
    v98 = v107;
    v99 = v108;
    v100 = v109;
    v93 = v102;
    v94 = v103;
    v95 = v104;
    v96 = v105;
    v92 = v101;
    outlined init with copy of SharingActivityPickerPresentation(&v101, v62);
    _sypSgWOcTm_3(v64, v62, &lazy cache variable for type metadata for SharingActivityPickerPresentation?, &type metadata for SharingActivityPickerPresentation);
    v26 = SharingPickerSource.id.getter();
    if (v27)
    {

LABEL_18:
      outlined destroy of AnyShareConfiguration?(v64, &lazy cache variable for type metadata for SharingActivityPickerPresentation?, &type metadata for SharingActivityPickerPresentation);
      goto LABEL_28;
    }

    v28 = v26;
    v88 = v78;
    v89 = v79;
    v90 = v80;
    v91 = v81;
    v85 = v75;
    v86 = v76;
    v87 = v77;
    v83 = v73;
    v84 = v74;
    v29 = SharingPickerSource.id.getter();
    if ((v30 & 1) != 0 || v28 != v29)
    {
      outlined destroy of AnyShareConfiguration?(v64, &lazy cache variable for type metadata for SharingActivityPickerPresentation?, &type metadata for SharingActivityPickerPresentation);

      goto LABEL_28;
    }

    v31 = *(v1 + 176);
    v62[6] = *(v1 + 160);
    v62[7] = v31;
    v62[8] = *(v1 + 192);
    v63 = *(v1 + 208);
    v32 = *(v1 + 112);
    v62[2] = *(v1 + 96);
    v62[3] = v32;
    v33 = *(v1 + 144);
    v62[4] = *(v1 + 128);
    v62[5] = v33;
    v34 = *(v1 + 80);
    v62[0] = *(v1 + 64);
    v62[1] = v34;
    if (_s7SwiftUI33SharingActivityPickerPresentation33_ED8966F32E79CAE8636A59B86DBA4A31LLVSgWOg(v62) != 1)
    {
      *(v1 + 200) = *(&v109 + 1);

      if (*(v1 + 240) == 1 || (v35 = *(v1 + 176), v36 = *(v1 + 144), v56 = *(v1 + 160), v57 = v35, v37 = *(v1 + 176), v58 = *(v1 + 192), v38 = *(v1 + 112), v39 = *(v1 + 80), v52 = *(v1 + 96), v53 = v38, v40 = *(v1 + 112), v41 = *(v1 + 144), v54 = *(v1 + 128), v55 = v41, v42 = *(v1 + 80), v50 = *(v1 + 64), v51 = v42, v60[6] = v56, v60[7] = v37, v60[8] = *(v1 + 192), v60[2] = v52, v60[3] = v40, v60[4] = v54, v60[5] = v36, v59 = *(v1 + 208), v61 = *(v1 + 208), v60[0] = v50, v60[1] = v39, _s7SwiftUI33SharingActivityPickerPresentation33_ED8966F32E79CAE8636A59B86DBA4A31LLVSgWOg(v60) == 1) || (v43 = *(v1 + 216)) == 0)
      {
      }

      else
      {
        v48[6] = v56;
        v48[7] = v57;
        v48[8] = v58;
        v49 = v59;
        v48[2] = v52;
        v48[3] = v53;
        v48[4] = v54;
        v48[5] = v55;
        v48[0] = v50;
        v48[1] = v51;
        outlined init with copy of SharingActivityPickerPresentation(v48, v47);
        v44 = [v43 popoverPresentationController];
        if (v44)
        {
          v45 = v44;
          v46 = SharingActivityPickerBridge.popoverPresentationDelegate.getter();
          specialized PopoverPresentationDelegate.updateAnchor(_:presentationController:)(v45);

          outlined destroy of AnyShareConfiguration?(&v50, &lazy cache variable for type metadata for SharingActivityPickerPresentation?, &type metadata for SharingActivityPickerPresentation);
        }

        else
        {
          outlined destroy of AnyShareConfiguration?(&v50, &lazy cache variable for type metadata for SharingActivityPickerPresentation?, &type metadata for SharingActivityPickerPresentation);
        }
      }

      goto LABEL_18;
    }

    goto LABEL_32;
  }

  v22 = *(v1 + 176);
  v107 = *(v1 + 160);
  v108 = v22;
  v109 = *(v1 + 192);
  v23 = *(v1 + 112);
  v103 = *(v1 + 96);
  v104 = v23;
  v24 = *(v1 + 144);
  v105 = *(v1 + 128);
  v106 = v24;
  v25 = *(v1 + 80);
  v101 = *(v1 + 64);
  v110 = *(v1 + 208);
  v102 = v25;
  if (_s7SwiftUI33SharingActivityPickerPresentation33_ED8966F32E79CAE8636A59B86DBA4A31LLVSgWOg(&v101) != 1)
  {
    SharingActivityPickerBridge.reset()();
  }
}

uint64_t sub_18BDEC45C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance SharingActivityPickerPresentation.Key@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static SharingActivityPickerPresentation.Key.defaultValue;
}

uint64_t getEnumTagSinglePayload for AnyShareConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

double protocol witness for static PreferenceKey.defaultValue.getter in conformance AnyShareConfiguration.Key@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

uint64_t UIKitDialogBridge.preferencesDidChange(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v5 = Strong, v6 = [Strong window], v5, v6))
  {

    *&v54 = v3;
    PreferenceValues.subscript.getter();
    v7 = v69;
    v8 = DWORD2(v69);
    v9 = 1;
  }

  else
  {
    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_AC18ConfirmationDialogVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v9 = 0;
    v8 = -1;
  }

  v10 = *(v2 + 56);
  if (v10 == -1 || v10 != v8)
  {
    *(v2 + 56) = v8;
    if (*(v2 + 44))
    {
      if (*(v2 + 44) == 1)
      {
        LODWORD(v69) = *(v2 + 40);

        UIKitDialogBridge.updateExistingDialog(allDialogs:id:)(v12, &v69);

        if (!v9)
        {
          goto LABEL_32;
        }

LABEL_30:
        *&v54 = v3;
        result = PreferenceValues.subscript.getter();
        v26 = v69;
        v27 = DWORD2(v69);
        goto LABEL_33;
      }

      v53 = v3;
      v16 = 1 << *(v7 + 32);
      v17 = -1;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      v18 = v17 & *(v7 + 64);
      v19 = (v16 + 63) >> 6;
      result = swift_bridgeObjectRetain_n();
      v21 = 0;
      if (!v18)
      {
LABEL_20:
        while (1)
        {
          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v22 >= v19)
          {

            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            memset(v64, 0, 26);
            goto LABEL_27;
          }

          v18 = *(v7 + 64 + 8 * v22);
          ++v21;
          if (v18)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_54;
      }

      while (1)
      {
        v22 = v21;
LABEL_23:
        v23 = __clz(__rbit64(v18)) | (v22 << 6);
        v24 = *(*(v7 + 48) + 4 * v23);
        outlined init with copy of ConfirmationDialog(*(v7 + 56) + 184 * v23, &v89);
        v88 = v24;
        _s7SwiftUI12ViewIdentityV3key_AA18ConfirmationDialogV5valuetWObTm_0(&v88, v87, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog), &type metadata for ConfirmationDialog, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog));
        outlined init with copy of BoundInputsView?(v87, v85, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog), &type metadata for ConfirmationDialog, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog));
        v25 = v86[0];
        outlined destroy of ConfirmationDialog(v86);
        if (v25 == 1)
        {
          break;
        }

        v18 &= v18 - 1;
        result = _s7SwiftUI15BoundInputsViewVSgWOhTm_0(v87, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog), &type metadata for ConfirmationDialog, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog));
        v21 = v22;
        if (!v18)
        {
          goto LABEL_20;
        }
      }

      _s7SwiftUI12ViewIdentityV3key_AA18ConfirmationDialogV5valuetWObTm_0(v87, &v54, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog), &type metadata for ConfirmationDialog, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog));
LABEL_27:

      v3 = v53;
      if (!*(&v55 + 1))
      {
        _s7SwiftUI16PlatformItemListV0D0VWOhTm_3(&v54, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog)?);
        if (v9)
        {
          goto LABEL_30;
        }

        goto LABEL_32;
      }

      _s7SwiftUI12ViewIdentityV3key_AA18ConfirmationDialogV5valuetWObTm_0(&v54, &v69, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog), &type metadata for ConfirmationDialog, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog));
      LODWORD(v54) = v69;
      UIKitDialogBridge.showNewDialog(_:id:)(&v69 + 8, &v54);
      _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v69, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog), &type metadata for ConfirmationDialog, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog));
    }

    else
    {

      v14 = specialized Dictionary.optimisticFilter(_:)(v13);

      v15 = *(v14 + 16);

      if (v15)
      {
        MEMORY[0x18D009810](0xD000000000000067, 0x800000018CD595C0);
        if (!v9)
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      }
    }
  }

  if (v9)
  {
    goto LABEL_30;
  }

LABEL_32:
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_AC12AlertStorageVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v26 = result;
  v27 = -1;
LABEL_33:
  v28 = *(v2 + 72);
  if (v28 != -1 && v28 == v27)
  {
    goto LABEL_40;
  }

  *(v2 + 72) = v27;
  if (!*(v2 + 44))
  {
    LODWORD(v69) = *(v2 + 40);

    UIKitDialogBridge.updateExistingAlert(allAlerts:id:)(v32, &v69);

LABEL_40:
    *&v69 = v3;
    PreferenceValues.subscript.getter();
    *(v2 + 88) = v54 & 1;
    swift_beginAccess();
    *(v2 + 80) = v26;

    swift_beginAccess();
    *(v2 + 64) = v7;
  }

  if (*(v2 + 44) == 1)
  {

    v30 = specialized Dictionary.optimisticFilter(_:)(v29);

    v31 = *(v30 + 16);

    if (v31)
    {
      MEMORY[0x18D009810](0xD000000000000067, 0x800000018CD59550);
    }

    goto LABEL_40;
  }

  v33 = 0;
  v34 = 1 << *(v26 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v26 + 64);
  if (v36)
  {
    while (1)
    {
      v37 = v33;
LABEL_48:
      v38 = __clz(__rbit64(v36)) | (v37 << 6);
      v39 = *(*(v26 + 48) + 4 * v38);
      v40 = *(v26 + 56) + 248 * v38;
      v42 = *(v40 + 32);
      v41 = *(v40 + 48);
      v43 = *v40;
      v70 = *(v40 + 16);
      v71 = v42;
      v69 = v43;
      v44 = *(v40 + 112);
      v46 = *(v40 + 64);
      v45 = *(v40 + 80);
      v75 = *(v40 + 96);
      v76 = v44;
      v73 = v46;
      v74 = v45;
      v47 = *(v40 + 176);
      v49 = *(v40 + 128);
      v48 = *(v40 + 144);
      v79 = *(v40 + 160);
      v80 = v47;
      v77 = v49;
      v78 = v48;
      v51 = *(v40 + 208);
      v50 = *(v40 + 224);
      v52 = *(v40 + 192);
      v84 = *(v40 + 240);
      v82 = v51;
      v83 = v50;
      v81 = v52;
      v72 = v41;
      if (v69)
      {
        break;
      }

      v36 &= v36 - 1;
      v33 = v37;
      if (!v36)
      {
        goto LABEL_45;
      }
    }

    outlined init with copy of AlertStorage(&v69, &v54);

    v65 = v81;
    v66 = v82;
    v67 = v83;
    v68 = v84;
    v62 = v77;
    v63 = v78;
    *v64 = v79;
    *&v64[16] = v80;
    v58 = v73;
    v59 = v74;
    v60 = v75;
    v61 = v76;
    v54 = v69;
    v55 = v70;
    v56 = v71;
    v57 = v72;
    v88 = v39;
    UIKitDialogBridge.showNewAlert(_:id:)(&v54, &v88);
    outlined destroy of AlertStorage(&v69);
    goto LABEL_40;
  }

LABEL_45:
  while (1)
  {
    v37 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v37 >= ((v34 + 63) >> 6))
    {
      goto LABEL_40;
    }

    v36 = *(v26 + 64 + 8 * v37);
    ++v33;
    if (v36)
    {
      goto LABEL_48;
    }
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance ConfirmationDialog.PreferenceKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static ConfirmationDialog.PreferenceKey.defaultValue;
}

uint64_t type metadata completion function for FileImportExportBridge.PresentationState.UpdateEffect()
{
  result = type metadata accessor for FileImportExportBridge.Presentation(319);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void type metadata accessor for (FileImportExportBridge.Presentation?, FileImportExportBridge.Presentation?)()
{
  if (!lazy cache variable for type metadata for (FileImportExportBridge.Presentation?, FileImportExportBridge.Presentation?))
  {
    type metadata accessor for FileImportExportBridge.Presentation?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (FileImportExportBridge.Presentation?, FileImportExportBridge.Presentation?));
    }
  }
}

uint64_t sub_18BDECE30(uint64_t a1, uint64_t a2, int *a3)
{
  _s10Foundation3URLVSgMaTm_7(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[9]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    _s10Foundation3URLVSgMaTm_7(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>);
    v14 = v13;
    v15 = *(*(v13 - 8) + 48);
    v16 = a1 + a3[11];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_18BDECFA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for FileExportOperation.Mode(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = a1 + a4[10];

  return v17(v18, a2, a2, v16);
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance FileExportOperation.Key@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FileExportOperation(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t outlined destroy of FileImportExportBridge.Presentation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t UIHostingController.screenEdgesSystemGesturePreferencesDidChange(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = specialized UIHostingController.screenEdgesSystemGestureSeedTracker.getter();
  v9 = v1;

  v3 = VersionSeedSetTracker.hasChanges(in:)(&v9, v2);

  if (v3)
  {
    v9 = v1;
    PreferenceValues.subscript.getter();
    UIHostingController.deferredEdges.setter(v7 | (v8 << 8));
    v9 = v1;
    PreferenceValues.subscript.getter();
    UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController.setter(v7);
    specialized UIHostingController.host.getter();
    v4 = _UIHostingView.viewController.getter();
    if (v4)
    {
      v5 = v4;
      [v4 setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
    }
  }

  return $defer #1 <A>() in UIHostingController.screenEdgesSystemGesturePreferencesDidChange(_:)();
}

uint64_t UIHostingController.deferredEdges.setter(uint64_t result)
{
  v2 = (v1 + direct field offset for UIHostingController.deferredEdges);
  *v2 = result;
  v2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t VersionSeedSetTracker.updateSeeds(to:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {

    v3 = v1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    v4 = 0;
    for (i = 0; i != v2; ++i)
    {
      PreferenceValues.seed<A>(for:)(&v7);
      if (i >= *(v3 + 2))
      {
        __break(1u);
        goto LABEL_9;
      }

      *&v3[v4 + 48] = v7;
      v4 += 24;
    }

    *v0 = v3;
  }

  return result;
}

void UIKitContentScrollViewBridge.preferencesDidChange(_:)(uint64_t *a1)
{
  v2 = v1;
  v16 = *a1;
  PreferenceValues.subscript.getter();
  v3 = v14;
  v4 = v15;
  v5 = *(v2 + 24);
  v6 = v5 != -1 && v5 == v15;
  if (v6 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
LABEL_14:

LABEL_17:
    *(v2 + 24) = v4;
    return;
  }

  v8 = *(v14 + 16);
  if (!v8)
  {
LABEL_16:
    *(v2 + 40) = v3;

    UIKitContentScrollViewBridge.update()();
    goto LABEL_17;
  }

  v9 = v14 + 32;

  v10 = 0;
  while (v10 < *(v3 + 16))
  {
    outlined init with copy of ContentScrollViewBox(v9, &v14);
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      [v11 frame];
      v18.origin.x = 0.0;
      v18.origin.y = 0.0;
      v18.size.width = 0.0;
      v18.size.height = 0.0;
      v13 = CGRectEqualToRect(v17, v18);

      outlined destroy of ContentScrollViewBox(&v14);
      if (v13)
      {

        *(v2 + 40) = v3;
        goto LABEL_14;
      }
    }

    else
    {
      outlined destroy of ContentScrollViewBox(&v14);
    }

    ++v10;
    v9 += 48;
    if (v8 == v10)
    {

      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t storeEnumTagSinglePayload for ArchivableAppIntentToggle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArchivableAppIntentToggle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t outlined destroy of Toolbar.UpdateContext?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void type metadata accessor for Toolbar.UpdateContext?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double ToolbarBridge.toolbarStorage.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + direct field offset for ToolbarBridge.lastToolbarStorage);
  v4 = *(v1 + direct field offset for ToolbarBridge.lastToolbarStorage + 48);
  v40 = *(v1 + direct field offset for ToolbarBridge.lastToolbarStorage + 32);
  v41 = v4;
  v42 = *(v1 + direct field offset for ToolbarBridge.lastToolbarStorage + 64);
  v5 = *(v1 + direct field offset for ToolbarBridge.lastToolbarStorage + 16);
  v38 = *(v1 + direct field offset for ToolbarBridge.lastToolbarStorage);
  v39 = v5;
  v6 = (v1 + direct field offset for ToolbarBridge.lastInputToolbarStorage);
  v7 = *(v1 + direct field offset for ToolbarBridge.lastInputToolbarStorage);
  v8 = *(v1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 16);
  v9 = *(v1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 32);
  v10 = *(v1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 48);
  *&v46[16] = *(v1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 64);
  v45 = v9;
  *v46 = v10;
  v43 = v7;
  v44 = v8;
  v11 = v41;
  if (!v41)
  {
    v11 = *v46;
    if (*v46)
    {
      v23 = v6[3];
      v34 = v6[2];
      *v35 = v23;
      *&v35[16] = *(v6 + 8);
      v24 = v6[1];
      v32 = *v6;
      v33 = v24;
      outlined init with copy of ToolbarStorage(&v32, v31);
      v21 = v43;
      v20 = v44;
      v14 = v45;
      v15 = BYTE8(v45);
      v37[0] = *(&v45 + 9);
      *(v37 + 3) = HIDWORD(v45);
      v22 = *&v46[8];
    }

    else
    {
      v21 = v43;
      v20 = v44;
      v14 = v45;
      v15 = BYTE8(v45);
      v37[0] = *(v6 + 41);
      *(v37 + 3) = *(v6 + 11);
      v22 = *(v6 + 56);
    }

LABEL_12:
    *v36 = v22;
    goto LABEL_13;
  }

  v13 = v38;
  v12 = v39;
  v14 = v40;
  v15 = BYTE8(v40);
  if (*v46)
  {
    v16 = v44;
    *(&v34 + 9) = *(v3 + 41);
    HIDWORD(v34) = *(v3 + 11);
    *&v35[8] = *(v3 + 56);
    if (!*(&v38 + 1))
    {

      v16 = v44;
      v12 = v39;
      v13 = v43;
    }

    v32 = v13;
    if (!*(&v12 + 1))
    {
      v28 = v16;
      outlined copy of Binding<Int>?(v16, *(&v16 + 1));
      v14 = v45;
      v12 = v28;
    }

    v33 = v12;
    *&v34 = v14;
    BYTE8(v34) = (BYTE8(v40) | BYTE8(v45)) & 1;
    *&v36[0] = v41;
    v17 = MEMORY[0x1E69E6720];
    outlined init with copy of Toolbar.UpdateContext?(&v43, v31, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, MEMORY[0x1E69E6720], type metadata accessor for Toolbar.UpdateContext?);
    outlined init with copy of Toolbar.UpdateContext?(&v38, v31, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, v17, type metadata accessor for Toolbar.UpdateContext?);

    specialized Array.append<A>(contentsOf:)(v18);
    *v35 = v36[0];

    specialized Set.formUnion<A>(_:)(v19);
    outlined destroy of Toolbar.UpdateContext?(&v43, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, v17, type metadata accessor for Toolbar.UpdateContext?);
    v21 = v32;
    v20 = v33;
    v14 = v34;
    v15 = BYTE8(v34);
    v37[0] = *(&v34 + 9);
    *(v37 + 3) = HIDWORD(v34);
    v11 = *v35;
    v22 = *&v35[8];
    goto LABEL_12;
  }

  v37[0] = *(v3 + 41);
  *(v37 + 3) = *(v3 + 11);
  *v36 = *(v3 + 56);
  v29 = v38;
  v30 = v39;
  v25 = v3[3];
  v34 = v3[2];
  *v35 = v25;
  *&v35[16] = *(v3 + 8);
  v26 = v3[1];
  v32 = *v3;
  v33 = v26;
  outlined init with copy of ToolbarStorage(&v32, v31);
  v21 = v29;
  v20 = v30;
LABEL_13:
  *a1 = v21;
  *(a1 + 16) = v20;
  *(a1 + 32) = v14;
  *(a1 + 40) = v15;
  *(a1 + 41) = v37[0];
  *(a1 + 44) = *(v37 + 3);
  *(a1 + 48) = v11;
  result = v36[0];
  *(a1 + 56) = *v36;
  return result;
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 32;
    do
    {
      outlined init with copy of Toolbar.BarLocation(v2, v3);
      specialized Set._Variant.insert(_:)(v4, v3);
      result = outlined destroy of Toolbar.BarLocation(v4);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return result;
}

{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = specialized Set._Variant.insert(_:)(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  for (i = (v4 + 63) >> 6; v6; result = outlined destroy of ToolbarPlacement.Role(v12))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    outlined init with copy of ToolbarPlacement.Role(*(v1 + 48) + 40 * (v9 | (v8 << 6)), v13);
    v10[0] = v13[0];
    v10[1] = v13[1];
    v11 = v14;
    specialized Set._Variant.insert(_:)(v12, v10);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + 48 * (v9 | (v8 << 6)));
      v11 = v10[1];
      v13[0] = *v10;
      v13[1] = v11;
      v13[2] = v10[2];
      result = specialized Set._Variant.insert(_:)(&v12, v13);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t closure #2 in ToolbarBridge.preferencesDidChange(_:context:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = *MEMORY[0x1E69E7D40] & *a2;
  v52 = a2;
  v53 = a4;
  swift_beginAccess();
  specialized VersionSeedTracker.didChange(_:action:)(a3, partial apply for closure #1 in closure #2 in ToolbarBridge.preferencesDidChange(_:context:));
  swift_endAccess();
  result = ToolbarBridge.allowsUpdates.getter();
  if (result)
  {
    v51 = a7;
    MEMORY[0x1EEE9AC00](result);
    v48 = a2;
    v49 = a1;
    v50 = a4;
    swift_beginAccess();
    specialized VersionSeedTracker.didChange(_:action:)(a3, partial apply for closure #2 in closure #2 in ToolbarBridge.preferencesDidChange(_:context:), v47);
    v16 = swift_endAccess();
    if (a5)
    {
      v61[0] = a3;
      v17 = *(v14 + 80);
      v18 = *(v14 + 88);
      ToolbarStrategy.makeBarContext(storage:preferences:)(a6, v61, v17, v18, &v54);
      v19 = v54;
      v20 = v55;
      v21 = v56;
      v22 = v57;
      v23 = v58;
      v24 = v59;
      v25 = v60;
      v26 = 256;
      if (!v55)
      {
        v26 = 0;
      }

      v27 = v26 | v54;
      v28 = 0x10000;
      if (!v56)
      {
        v28 = 0;
      }

      v29 = 0x1000000;
      if (!v57)
      {
        v29 = 0;
      }

      v30 = v27 | v28 | v29;
      v31 = v30 | (v58 << 32) | (v59 << 40);
      v32 = a2 + direct field offset for ToolbarBridge.lastBarContext;
      *v32 = v30;
      *(v32 + 2) = WORD2(v31);
      v33 = 0x1000000000000;
      if (!v25)
      {
        v33 = 0;
      }

      v32[6] = (v31 | v33) >> 48;
      LOBYTE(v61[0]) = v19;
      BYTE1(v61[0]) = v20;
      BYTE2(v61[0]) = v21;
      BYTE3(v61[0]) = v22;
      BYTE4(v61[0]) = v23;
      BYTE5(v61[0]) = v24;
      BYTE6(v61[0]) = v25;
      ToolbarBridge.updateStorage(newStorage:barContext:updateContext:strategy:)(a6, v61, v51, a1);
      *a4 = (*(v18 + 96))(v17, v18);

      *(a4 + 9) = 1;
      if (*(a2 + direct field offset for ToolbarBridge.lastToolbarStorage + 48))
      {
        v34 = *(a2 + direct field offset for ToolbarBridge.lastToolbarStorage + 40);
      }

      else
      {
        v34 = 0;
      }

      *(a4 + 8) = v34;
    }

    MEMORY[0x1EEE9AC00](v16);
    v48 = a2;
    v49 = a4;
    v50 = a1;
    swift_beginAccess();
    specialized VersionSeedTracker.didChange(_:action:)(a3, partial apply for closure #3 in closure #2 in ToolbarBridge.preferencesDidChange(_:context:), v47);
    swift_endAccess();
    v35 = *(a4 + 8);
    v36 = *(a4 + 9);
    v37 = *(a4 + 10);
    v38 = *(a4 + 11);
    v61[0] = a3;
    v40 = *(v14 + 80);
    v39 = *(v14 + 88);
    v41 = *(v39 + 128);
    if (v36)
    {
      v42 = 256;
    }

    else
    {
      v42 = 0;
    }

    v43 = v42 | v35;
    if (v37)
    {
      v44 = 0x10000;
    }

    else
    {
      v44 = 0;
    }

    v45 = v43 | v44 | (v38 << 24);

    v41(v46, v45, v61, v40, v39);
  }

  return result;
}

BOOL specialized VersionSeedTracker.didChange(_:action:)(uint64_t a1, void (*a2)(void *))
{
  v8[0] = a1;
  PreferenceValues.subscript.getter();
  v5 = v9 == -1 || *v2 != v9;
  v6 = *v2 == -1 || v5;
  if (*v2 == -1 || v5)
  {
    *v2 = v9;
    v8[0] = v8[1];

    a2(v8);
  }

  return v6;
}

void UIKitContentScrollViewBridge.findBestCandidates(in:)(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = [Strong view];

  if (!v4)
  {
    return;
  }

  v71 = v4;
  v5 = *(a1 + 16);
  v6 = v5 == 0;
  if (v5)
  {
    v7 = a1 + 48 * v5 - 16;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = *(a1 + 16);
    do
    {
      outlined init with copy of ContentScrollViewBox(v7, v74);
      if (v74[16] == 2)
      {
        outlined init with take of ContentScrollViewBox(v74, v73);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
          v8 = v76;
        }

        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v8 = v76;
        }

        *(v8 + 16) = v12 + 1;
        outlined init with take of ContentScrollViewBox(v73, v8 + 48 * v12 + 32);
      }

      else
      {
        outlined destroy of ContentScrollViewBox(v74);
      }

      v7 -= 48;
      --v9;
    }

    while (v9);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v66 = *(v8 + 16);
  if (v66)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = v8 + 32;
    while (1)
    {
      if (v15 >= *(v8 + 16))
      {
        __break(1u);
        return;
      }

      outlined init with copy of ContentScrollViewBox(v16, v74);
      v17 = swift_unknownObjectWeakLoadStrong();
      if (v17)
      {
        v18 = v17;
        v68 = v13;
        v70 = v6;
        v19 = swift_unknownObjectWeakLoadStrong();
        if (!v19)
        {
          v19 = v18;
        }

        v69 = v14;
        v20 = v19;
        [v19 bounds];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v29 = v20;
        v30 = [v29 superview];
        v31 = v30;
        if (v26 == 0.0)
        {
          v32 = v28 != 0.0 || v30 == 0;
          v33 = v29;
          if (!v32)
          {
            v33 = v30;

            [v33 bounds];
            v22 = v34;
            v24 = v35;
            v26 = v36;
            v28 = v37;
          }
        }

        else
        {
          v33 = v29;
        }

        if ([v29 isDescendantOfView_])
        {
          [v4 convertRect:v33 fromCoordinateSpace:{v22, v24, v26, v28}];
          v26 = v40;
          v28 = v41;
        }

        else
        {
          v38 = v22;
          v39 = v24;
        }

        v42 = v26 != 0.0;
        v67 = v28 != 0.0;
        v43 = *(v72 + 48);
        v44 = v39 + v43 * 0.5;
        v32 = v43 == 1.0;
        v45 = v43 * floor(v44 / v43);
        v46 = floor(v44);
        if (v32)
        {
          v47 = v46;
        }

        else
        {
          v47 = v45;
        }

        v48 = v26;
        v49 = v28;
        MaxY = CGRectGetMaxY(*&v38);
        v51 = *(v72 + 48);
        v52 = MaxY + v51 * 0.5;
        v32 = v51 == 1.0;
        v53 = v51 * floor(v52 / v51);
        v54 = floor(v52);
        if (v32)
        {
          v55 = v54;
        }

        else
        {
          v55 = v53;
        }

        [v4 bounds];
        MinY = CGRectGetMinY(v77);
        v57 = *(v72 + 48);
        v58 = MinY + v57 * 0.5;
        if (v57 == 1.0)
        {
          v59 = floor(v58);
        }

        else
        {
          v59 = v57 * floor(v58 / v57);
        }

        [v71 bounds];
        v60 = CGRectGetMaxY(v78);
        v61 = *(v72 + 48);

        v62 = v60 + v61 * 0.5;
        if (v61 == 1.0)
        {
          v63 = floor(v62);
        }

        else
        {
          v63 = v61 * floor(v62 / v61);
        }

        v14 = v69;
        if (!v69)
        {
          if ((v75 & 1) != 0 || v47 <= v59)
          {
            v64 = v18;
            v14 = v18;
          }

          else
          {
            v14 = 0;
          }
        }

        v6 = v70 | v42 | v67;
        if (v68)
        {

          outlined destroy of ContentScrollViewBox(v74);
          v18 = v68;
        }

        else
        {
          v65 = v75;
          outlined destroy of ContentScrollViewBox(v74);
          if ((v65 & 1) == 0 && v63 > v55)
          {

            v13 = 0;
            v4 = v71;
            goto LABEL_18;
          }
        }

        v4 = v71;
        if (v14)
        {

          if ((v6 & 1) == 0)
          {
            goto LABEL_60;
          }

          return;
        }

        v13 = v18;
      }

      else
      {
        outlined destroy of ContentScrollViewBox(v74);
      }

LABEL_18:
      ++v15;
      v16 += 48;
      if (v66 == v15)
      {

        v18 = v13;
        if ((v6 & 1) == 0)
        {
          goto LABEL_60;
        }

        return;
      }
    }
  }

  v14 = 0;
  v18 = 0;
  if (v5)
  {
LABEL_60:
  }
}

void update #1 (edge:) in UIKitContentScrollViewBridge.update()(uint64_t a1, id a2, uint64_t a3, void *a4, void *a5)
{
  v10 = [a2 contentScrollViewForEdge_];
  if (v10)
  {
    v11 = v10;
    swift_getObjectType();
    if ([swift_getObjCClassFromMetadata() _isFromSwiftUI])
    {
    }

    else
    {
      swift_beginAccess();
      v12 = *(a3 + 32);
      if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v14 & 1) != 0))
      {
        v15 = *(*(v12 + 56) + 8 * v13);
      }

      else
      {
        v15 = 0;
      }

      swift_endAccess();

      if (v11 != v15)
      {
        return;
      }
    }
  }

  if ((a1 == 4 || (a5 = a4, a1 == 1)) && a5)
  {
    v16 = a5;
    [a2 setContentScrollView:v16 forEdge:a1];
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(a3 + 32);
    *(a3 + 32) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, a1, isUniquelyReferenced_nonNull_native);
    *(a3 + 32) = v23;
    swift_endAccess();
  }

  else
  {
    [a2 setContentScrollView:0 forEdge:a1];
    swift_beginAccess();
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v19)
    {
      v20 = v18;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(a3 + 32);
      *(a3 + 32) = 0x8000000000000000;
      if (!v21)
      {
        specialized _NativeDictionary.copy()();
      }

      specialized _NativeDictionary._delete(at:)(v20, v22);
      *(a3 + 32) = v22;
    }

    swift_endAccess();
  }
}

Swift::Void __swiftcall UIKitContentScrollViewBridge.update()()
{
  if (*(v0 + 40))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;

      UIKitContentScrollViewBridge.findBestCandidates(in:)(v2);
      v4 = v3;
      v6 = v5;

      if (v4 == 1)
      {
        v7 = v8;
      }

      else
      {
        *(v0 + 40) = 0;

        update #1 (edge:) in UIKitContentScrollViewBridge.update()(4, v8, v0, v4, v6);
        update #1 (edge:) in UIKitContentScrollViewBridge.update()(1, v8, v0, v4, v6);

        v7 = v6;
      }
    }
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Toolbar.BarLocation()
{
  Hasher.init(_seed:)();
  Toolbar.BarLocation.hash(into:)();
  return Hasher._finalize()();
}

uint64_t UIKitToolbarStrategy.updateLocations()()
{
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v63 = &v62 - v2;
  type metadata accessor for _ContiguousArrayStorage<((), Toolbar.BarLocation)>();
  v3 = swift_allocObject();
  outlined init with copy of UIKitToolbarStrategy(v0, &v67);
  v4 = swift_allocObject();
  outlined init with take of UIKitToolbarStrategy(&v67, v4 + 16);
  v5 = swift_allocObject();
  *(v3 + 32) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Bool);
  v6 = v3 + 32;
  *(v5 + 16) = partial apply for implicit closure #2 in implicit closure #1 in UIKitToolbarStrategy.updateLocations();
  *(v5 + 24) = v4;
  *(v3 + 40) = v5;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0;
  outlined init with copy of UIKitToolbarStrategy(v0, &v67);
  v7 = swift_allocObject();
  outlined init with take of UIKitToolbarStrategy(&v67, v7 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for implicit closure #4 in implicit closure #3 in UIKitToolbarStrategy.updateLocations();
  *(v8 + 24) = v7;
  *(v3 + 88) = thunk for @escaping @callee_guaranteed () -> (@unowned Bool)partial apply;
  *(v3 + 96) = v8;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 104) = 0;
  *(v3 + 128) = xmmword_18CD6A6D0;
  outlined init with copy of UIKitToolbarStrategy(v0, &v67);
  v9 = swift_allocObject();
  outlined init with take of UIKitToolbarStrategy(&v67, v9 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for implicit closure #6 in implicit closure #5 in UIKitToolbarStrategy.updateLocations();
  *(v10 + 24) = v9;
  *(v3 + 144) = thunk for @escaping @callee_guaranteed () -> (@unowned Bool)partial apply;
  *(v3 + 152) = v10;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 160) = 0;
  *(v3 + 184) = xmmword_18CD79D60;
  outlined init with copy of UIKitToolbarStrategy(v0, &v67);
  v11 = swift_allocObject();
  outlined init with take of UIKitToolbarStrategy(&v67, v11 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for implicit closure #8 in implicit closure #7 in UIKitToolbarStrategy.updateLocations();
  *(v12 + 24) = v11;
  *(v3 + 200) = thunk for @escaping @callee_guaranteed () -> (@unowned Bool)partial apply;
  *(v3 + 208) = v12;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0;
  *(v3 + 216) = 0;
  *(v3 + 240) = xmmword_18CDA9100;
  outlined init with copy of UIKitToolbarStrategy(v0, &v67);
  v13 = swift_allocObject();
  outlined init with take of UIKitToolbarStrategy(&v67, v13 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for implicit closure #10 in implicit closure #9 in UIKitToolbarStrategy.updateLocations();
  *(v14 + 24) = v13;
  *(v3 + 256) = thunk for @escaping @callee_guaranteed () -> (@unowned Bool)partial apply;
  *(v3 + 264) = v14;
  *(v3 + 272) = 0;
  *(v3 + 280) = 0;
  *(v3 + 288) = 0;
  *(v3 + 296) = 4;
  *(v3 + 304) = 0;
  outlined init with copy of UIKitToolbarStrategy(v0, &v67);
  v15 = swift_allocObject();
  outlined init with take of UIKitToolbarStrategy(&v67, v15 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for implicit closure #12 in implicit closure #11 in UIKitToolbarStrategy.updateLocations();
  *(v16 + 24) = v15;
  *(v3 + 312) = thunk for @escaping @callee_guaranteed () -> (@unowned Bool)partial apply;
  *(v3 + 320) = v16;
  *(v3 + 336) = 0;
  *(v3 + 344) = 0;
  *(v3 + 328) = 0;
  *(v3 + 352) = xmmword_18CD79540;
  outlined init with copy of UIKitToolbarStrategy(v0, &v67);
  v17 = swift_allocObject();
  outlined init with take of UIKitToolbarStrategy(&v67, v17 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for implicit closure #14 in implicit closure #13 in UIKitToolbarStrategy.updateLocations();
  *(v18 + 24) = v17;
  *(v3 + 368) = thunk for @escaping @callee_guaranteed () -> (@unowned Bool)partial apply;
  *(v3 + 376) = v18;
  *(v3 + 384) = 0;
  *(v3 + 392) = 0;
  *(v3 + 400) = 0;
  *(v3 + 408) = 3;
  *(v3 + 416) = 0;
  outlined init with copy of UIKitToolbarStrategy(v0, &v67);
  v19 = swift_allocObject();
  outlined init with take of UIKitToolbarStrategy(&v67, v19 + 16);
  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for implicit closure #16 in implicit closure #15 in UIKitToolbarStrategy.updateLocations();
  *(v20 + 24) = v19;
  *(v3 + 424) = thunk for @escaping @callee_guaranteed () -> (@unowned Bool)partial apply;
  *(v3 + 432) = v20;
  *(v3 + 448) = 0;
  *(v3 + 456) = 0;
  *(v3 + 440) = 0;
  *(v3 + 464) = xmmword_18CD90770;
  outlined init with copy of UIKitToolbarStrategy(v0, &v67);
  v21 = swift_allocObject();
  outlined init with take of UIKitToolbarStrategy(&v67, v21 + 16);
  v22 = swift_allocObject();
  *(v22 + 16) = protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key;
  *(v22 + 24) = v21;
  *(v3 + 480) = thunk for @escaping @callee_guaranteed () -> (@unowned Bool)partial apply;
  *(v3 + 488) = v22;
  *(v3 + 504) = 0;
  *(v3 + 512) = 0;
  *(v3 + 496) = 0;
  *(v3 + 520) = 7;
  *(v3 + 528) = 0;
  outlined init with copy of UIKitToolbarStrategy(v0, &v67);
  v23 = swift_allocObject();
  outlined init with take of UIKitToolbarStrategy(&v67, v23 + 16);
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #20 in implicit closure #19 in UIKitToolbarStrategy.updateLocations();
  *(v24 + 24) = v23;
  *(v3 + 536) = thunk for @escaping @callee_guaranteed () -> (@unowned Bool)partial apply;
  *(v3 + 544) = v24;
  *(v3 + 552) = 0;
  *(v3 + 568) = 0;
  *(v3 + 560) = 0;
  *(v3 + 576) = xmmword_18CDA90C0;
  outlined init with copy of UIKitToolbarStrategy(v0, &v67);
  v25 = swift_allocObject();
  outlined init with take of UIKitToolbarStrategy(&v67, v25 + 16);
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #22 in implicit closure #21 in UIKitToolbarStrategy.updateLocations();
  *(v26 + 24) = v25;
  *(v3 + 592) = thunk for @escaping @callee_guaranteed () -> (@unowned Bool)partial apply;
  *(v3 + 600) = v26;
  *(v3 + 608) = 0;
  *(v3 + 624) = 0;
  *(v3 + 616) = 0;
  *(v3 + 632) = 10;
  *(v3 + 640) = 0;
  outlined init with copy of UIKitToolbarStrategy(v0, &v67);
  v27 = swift_allocObject();
  outlined init with take of UIKitToolbarStrategy(&v67, v27 + 16);
  v28 = swift_allocObject();
  *(v28 + 16) = protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key;
  *(v28 + 24) = v27;
  *(v3 + 648) = thunk for @escaping @callee_guaranteed () -> (@unowned Bool)partial apply;
  *(v3 + 656) = v28;
  *(v3 + 664) = 0;
  *(v3 + 680) = 0;
  *(v3 + 672) = 0;
  *(v3 + 688) = xmmword_18CD90730;
  outlined init with copy of UIKitToolbarStrategy(v0, &v67);
  v29 = swift_allocObject();
  outlined init with take of UIKitToolbarStrategy(&v67, v29 + 16);
  v30 = swift_allocObject();
  *(v30 + 16) = protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key;
  *(v30 + 24) = v29;
  *(v3 + 704) = thunk for @escaping @callee_guaranteed () -> (@unowned Bool)partial apply;
  *(v3 + 712) = v30;
  *(v3 + 720) = 0;
  *(v3 + 736) = 0;
  *(v3 + 728) = 0;
  *(v3 + 744) = 11;
  *(v3 + 752) = 0;
  outlined init with copy of UIKitToolbarStrategy(v0, &v67);
  v31 = swift_allocObject();
  outlined init with take of UIKitToolbarStrategy(&v67, v31 + 16);
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #28 in implicit closure #27 in UIKitToolbarStrategy.updateLocations();
  *(v32 + 24) = v31;
  *(v3 + 760) = thunk for @escaping @callee_guaranteed () -> (@unowned Bool)partial apply;
  *(v3 + 768) = v32;
  *(v3 + 776) = 0;
  *(v3 + 792) = 0;
  *(v3 + 784) = 0;
  *(v3 + 800) = xmmword_18CD90760;
  outlined init with copy of UIKitToolbarStrategy(v0, &v67);
  v33 = swift_allocObject();
  outlined init with take of UIKitToolbarStrategy(&v67, v33 + 16);
  v34 = swift_allocObject();
  *(v34 + 16) = partial apply for implicit closure #30 in implicit closure #29 in UIKitToolbarStrategy.updateLocations();
  *(v34 + 24) = v33;
  *(v3 + 816) = thunk for @escaping @callee_guaranteed () -> (@unowned Bool)partial apply;
  *(v3 + 824) = v34;
  *(v3 + 832) = 0;
  *(v3 + 848) = 0;
  *(v3 + 840) = 0;
  *(v3 + 856) = 17;
  *(v3 + 864) = 0;
  outlined init with copy of UIKitToolbarStrategy(v0, &v67);
  v35 = swift_allocObject();
  outlined init with take of UIKitToolbarStrategy(&v67, v35 + 16);
  v36 = swift_allocObject();
  *(v36 + 16) = protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key;
  *(v36 + 24) = v35;
  *(v3 + 872) = thunk for @escaping @callee_guaranteed () -> (@unowned Bool)partial apply;
  *(v3 + 880) = v36;
  *(v3 + 888) = 0;
  *(v3 + 896) = 0;
  *(v3 + 904) = 0;
  *(v3 + 912) = xmmword_18CD90720;
  outlined init with copy of UIKitToolbarStrategy(v0, &v67);
  v37 = swift_allocObject();
  outlined init with take of UIKitToolbarStrategy(&v67, v37 + 16);
  v38 = swift_allocObject();
  *(v38 + 16) = partial apply for implicit closure #34 in implicit closure #33 in UIKitToolbarStrategy.updateLocations();
  *(v38 + 24) = v37;
  *(v3 + 928) = thunk for @escaping @callee_guaranteed () -> (@unowned Bool)partial apply;
  *(v3 + 936) = v38;
  *(v3 + 944) = 0;
  *(v3 + 952) = 0;
  *(v3 + 960) = 0;
  *(v3 + 968) = 13;
  *(v3 + 976) = 0;
  outlined init with copy of UIKitToolbarStrategy(v0, &v67);
  v39 = swift_allocObject();
  outlined init with take of UIKitToolbarStrategy(&v67, v39 + 16);
  result = swift_allocObject();
  v41 = 0;
  *(result + 16) = partial apply for implicit closure #36 in implicit closure #35 in UIKitToolbarStrategy.updateLocations();
  *(result + 24) = v39;
  *(v3 + 984) = thunk for @escaping @callee_guaranteed () -> (@unowned Bool)partial apply;
  *(v3 + 992) = result;
  *(v3 + 1000) = 0;
  *(v3 + 1008) = 0;
  *(v3 + 1016) = 0;
  *(v3 + 1024) = xmmword_18CDA90F0;
  v42 = MEMORY[0x1E69E7CD0];
LABEL_2:
  v43 = 18;
  if (v41 > 0x12)
  {
    v43 = v41;
  }

  v44 = -v43;
  v45 = v6;
  v46 = v6 + 56 * v41++;
  do
  {
    if (v44 + v41 == 1)
    {
      __break(1u);
      return result;
    }

    _sxRi_zRi0_zlySbIsegr__7SwiftUI7ToolbarO11BarLocationOtWOc(v46, &v67);
    v47 = v67;
    if (!v67)
    {
      break;
    }

    v48 = *(&v67 + 1);
    v49 = swift_allocObject();
    *(v49 + 16) = v47;
    *(v49 + 24) = v48;
    v67 = v68;
    v68 = v69;
    *&v69 = v70;
    v47(v66);
    if (v66[0])
    {
      outlined init with copy of Toolbar.BarLocation(&v67, v65);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v42;
      specialized _NativeSet.update(with:isUnique:)(v65, isUniquelyReferenced_nonNull_native, v66);

      outlined destroy of PushTarget?(v66, &lazy cache variable for type metadata for Toolbar.BarLocation?, &type metadata for Toolbar.BarLocation);
      result = outlined destroy of Toolbar.BarLocation(&v67);
      v42 = v64;
      v6 = v45;
      if (v41 != 18)
      {
        goto LABEL_2;
      }

      break;
    }

    outlined destroy of Toolbar.BarLocation(&v67);

    ++v41;
    v46 += 56;
  }

  while (v41 != 19);
  swift_setDeallocating();
  type metadata accessor for ((), Toolbar.BarLocation)(0, &lazy cache variable for type metadata for ((), Toolbar.BarLocation), type metadata accessor for ());
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v51 = v63;
  static Log.toolbar.getter();
  v52 = type metadata accessor for Logger();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v51, 1, v52) == 1)
  {
    outlined destroy of ToolbarStorage.NavigationProperties?(v51, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  }

  else
  {

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v67 = v57;
      *v56 = 136315138;
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy7SwiftUI7ToolbarO11BarLocationOG_SSs5NeverOTg503_s7d9UI20UIKitf37StrategyV15updateLocationsShyAA0D0O11gH76OGyFSaySSGycfu35_SSAHcfu36_33_8c3cf78dad0b9b80499610c7de1a2d3dAHSSTf3nnnpk_nTf1cn_n(v42);
      v58 = MEMORY[0x18D00CC60]();
      v60 = v59;

      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v67);

      *(v56 + 4) = v61;
      v51 = v63;
      _os_log_impl(&dword_18BD4A000, v54, v55, "Changed toolbar locations: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x18D0110E0](v57, -1, -1);
      MEMORY[0x18D0110E0](v56, -1, -1);
    }

    (*(v53 + 8))(v51, v52);
  }

  return v42;
}

uint64_t sub_18BDEF6A0()
{

  return swift_deallocObject();
}

void type metadata accessor for _ContiguousArrayStorage<((), Toolbar.BarLocation)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<((), Toolbar.BarLocation)>)
  {
    type metadata accessor for ((), Toolbar.BarLocation)(255, &lazy cache variable for type metadata for ((), Toolbar.BarLocation), type metadata accessor for ());
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<((), Toolbar.BarLocation)>);
    }
  }
}

uint64_t initializeWithTake for UIKitToolbarStrategy(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  if (*(a2 + 96))
  {
    if (*(a2 + 16) == 2)
    {
      *v4 = *(a2 + 8);
      *(v4 + 9) = *(a2 + 17);
    }

    else
    {
      swift_unknownObjectWeakTakeInit();
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
    }

    swift_unknownObjectWeakTakeInit();
    swift_unknownObjectWeakTakeInit();
    *(a1 + 56) = *(a2 + 56);
    swift_unknownObjectWeakTakeInit();
    swift_unknownObjectWeakTakeInit();
    swift_unknownObjectWeakTakeInit();
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    v5 = *(a2 + 56);
    v4[2] = *(a2 + 40);
    v4[3] = v5;
    v6 = *(a2 + 88);
    v4[4] = *(a2 + 72);
    v4[5] = v6;
    v7 = *(a2 + 24);
    *v4 = *(a2 + 8);
    v4[1] = v7;
  }

  return a1;
}

uint64_t _sxRi_zRi0_zlySbIsegr__7SwiftUI7ToolbarO11BarLocationOtWOc(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ((), Toolbar.BarLocation)(0, &lazy cache variable for type metadata for ((), Toolbar.BarLocation), type metadata accessor for ());
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UIHostingController.preferencesDidChange(_:)(uint64_t *a1)
{
  v2 = v1;
  v15 = *a1;
  v3 = v15;
  ModernNavigationBridge.preferencesDidChange(_:)(&v15);
  v15 = v3;
  UIKitDialogBridge.preferencesDidChange(_:)(&v15);
  v15 = v3;
  FileImportExportBridge.preferencesDidChange(_:)(&v15);
  v4 = specialized UIHostingController.keyboardShortcutBridge.getter();
  if (v4 && *(v4 + OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_isObservingPreferences) == 1)
  {
    v17 = v3;
    v5 = v4;
    PreferenceValues.subscript.getter();
    v6 = v16;
    v7 = &v5[OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_updatedBindings];
    *v7 = v15;
    *(v7 + 2) = v6;
  }

  v15 = v3;
  UIHostingController.screenEdgesSystemGesturePreferencesDidChange(_:)(&v15);
  v15 = v3;
  UIHostingController.persistentSystemOverlaysPreferencesDidChange(_:)(&v15);
  if (specialized UIHostingController.navigationBridge.getter())
  {
    v17 = v3;

    PreferenceValues.subscript.getter();
    UIKitNavigationBridge.updateNavigationDestinationsIfNeeded(preference:)(&v15);
  }

  if (specialized UIHostingController.contentScrollViewBridge.getter())
  {
    v15 = v3;

    UIKitContentScrollViewBridge.preferencesDidChange(_:)(&v15);
  }

  v8 = specialized UIHostingController.toolbarBridge.getter();
  if (v8)
  {
    v15 = v3;
    v9 = v8;
    ToolbarBridge.preferencesDidChange<A>(_:hostingController:)(&v15, v2);
  }

  v10 = specialized UIHostingController.barAppearanceBridge.getter();
  if (v10)
  {
    v15 = v3;
    v11 = v10;
    BarAppearanceBridge.preferencesDidChange<A>(_:hostingController:)(&v15, v2);
  }

  v12 = specialized UIHostingController.inspectorBridgeV5.getter();
  if (v12)
  {
    v13 = v12;
    specialized SheetBridge.preferencesDidChange(_:)(v3);
  }

  if (specialized UIHostingController.alwaysOnBridge.getter())
  {
    v15 = v3;

    AlwaysOnBridge.preferencesDidChange(_:)();
  }

  v15 = v3;
  return ContainerBackgroundBridge.preferencesDidChange(_:)(&v15);
}

uint64_t ModernNavigationBridge.preferencesDidChange(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_beginAccess();
  v26[0] = v3;
  PreferenceValues.subscript.getter();
  v4 = *(v2 + 16);
  if (v4 != -1 && v28 != -1 && v4 == v28)
  {
LABEL_24:

    return swift_endAccess();
  }

  else
  {
    *(v2 + 16) = v28;
    v7 = v27;
    v8 = v27 + 64;
    v9 = 1 << *(v27 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v27 + 64);
    v12 = (v9 + 63) >> 6;

    v14 = 0;
    if (v11)
    {
      goto LABEL_13;
    }

LABEL_14:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v12)
      {

        goto LABEL_24;
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
      if (v11)
      {
        while (1)
        {
          v16 = __clz(__rbit64(v11));
          v11 &= v11 - 1;
          outlined init with copy of UpdateViewDestinationRequest(*(v7 + 56) + 192 * (v16 | (v15 << 6)), v26);
          outlined init with take of UpdateViewDestinationRequest(v26, v24);
          outlined init with copy of AnyAccessibilityValue?(v24, v21, &lazy cache variable for type metadata for NavigationAuthority?);
          if (*(&v21[0] + 1) == 1)
          {
            outlined destroy of UpdateViewDestinationRequest(v24);
            result = outlined destroy of AnyAccessibilityValue?(v21, &lazy cache variable for type metadata for NavigationAuthority?);
            v14 = v15;
            if (!v11)
            {
              goto LABEL_14;
            }
          }

          else
          {
            outlined init with take of NavigationAuthority(v21, v23);
            outlined init with copy of AnyAccessibilityValue?(&v25, v17, &lazy cache variable for type metadata for NavigationRequest?);
            if (*(&v18 + 1) >> 1 == 0xFFFFFFFFLL)
            {
              outlined destroy of NavigationAuthority(v23);
              outlined destroy of UpdateViewDestinationRequest(v24);
              result = outlined destroy of AnyAccessibilityValue?(v17, &lazy cache variable for type metadata for NavigationRequest?);
            }

            else
            {
              v21[8] = v18;
              v21[9] = v19;
              v22 = v20;
              v21[4] = v17[4];
              v21[5] = v17[5];
              v21[6] = v17[6];
              v21[7] = v17[7];
              v21[0] = v17[0];
              v21[1] = v17[1];
              v21[2] = v17[2];
              v21[3] = v17[3];
              NavigationAuthority.enqueueRequest(_:)(v21);
              outlined destroy of NavigationRequest(v21);
              outlined destroy of NavigationAuthority(v23);
              result = outlined destroy of UpdateViewDestinationRequest(v24);
            }

            v14 = v15;
            if (!v11)
            {
              goto LABEL_14;
            }
          }

LABEL_13:
          v15 = v14;
        }
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationLinkSelectionIdentifier and conformance NavigationLinkSelectionIdentifier()
{
  result = lazy protocol witness table cache variable for type NavigationLinkSelectionIdentifier and conformance NavigationLinkSelectionIdentifier;
  if (!lazy protocol witness table cache variable for type NavigationLinkSelectionIdentifier and conformance NavigationLinkSelectionIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationLinkSelectionIdentifier and conformance NavigationLinkSelectionIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationLinkSelectionIdentifier and conformance NavigationLinkSelectionIdentifier;
  if (!lazy protocol witness table cache variable for type NavigationLinkSelectionIdentifier and conformance NavigationLinkSelectionIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationLinkSelectionIdentifier and conformance NavigationLinkSelectionIdentifier);
  }

  return result;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance UpdateViewDestinationRequest.UpdateViewDestinationRequestKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static UpdateViewDestinationRequest.UpdateViewDestinationRequestKey.defaultValue;
}

uint64_t FileImportExportBridge.preferencesDidChange(_:)(uint64_t *a1)
{
  v2 = v1;
  _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24[-v5];
  type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  updated = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0);
  v11 = *(updated - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24[-v15];
  v25 = *a1;
  swift_beginAccess();
  FileImportExportBridge.PresentationState.update(preferences:)(&v25, v9);
  swift_endAccess();
  if ((*(v11 + 48))(v9, 1, updated) == 1)
  {
    v17 = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect?;
    v18 = v9;
  }

  else
  {
    outlined init with take of FileImportExportBridge.Presentation?(v9, v16, type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect);
    static TaskPriority.userInitiated.getter();
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
    outlined init with copy of FileImportExportBridge.PresentationState(v16, v13, type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v2;
    outlined init with take of FileImportExportBridge.Presentation?(v13, v21 + v20, type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect);
    v22 = v2;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in FileImportExportBridge.preferencesDidChange(_:), v21);

    v17 = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect;
    v18 = v16;
  }

  return outlined destroy of FileImportExportBridge.Presentation(v18, v17);
}

uint64_t sub_18BDF0334()
{
  v1 = *(type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for FileImportExportBridge.Presentation(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for FileExportOperation.Mode(0);
      v5 = swift_getEnumCaseMultiPayload();
      if (v5 <= 1)
      {
        if (v5)
        {
LABEL_6:
          if (v5 == 1)
          {

LABEL_27:
          }

LABEL_28:
          v18 = type metadata accessor for FileExportOperation(0);

          v19 = v18[6];
          v20 = type metadata accessor for URL();
          v21 = *(v20 - 8);
          if (!(*(v21 + 48))(v3 + v19, 1, v20))
          {
            (*(v21 + 8))(v3 + v19, v20);
          }

          v22 = v3 + v18[7];
          if (*(v22 + 24))
          {
            outlined consume of Text.Storage(*v22, *(v22 + 8), *(v22 + 16));
          }

          v23 = v3 + v18[8];
          if (*(v23 + 24))
          {
            outlined consume of Text.Storage(*v23, *(v23 + 8), *(v23 + 16));
          }

          v24 = v3 + v18[9];
          if (*(v24 + 24))
          {
            outlined consume of Text.Storage(*v24, *(v24 + 8), *(v24 + 16));
          }

          v25 = v18[10];
          type metadata accessor for Predicate<Pack{URL}>();
          v27 = v26;
          v28 = *(v26 - 8);
          if (!(*(v28 + 48))(v3 + v25, 1, v26))
          {
            (*(v28 + 8))(v3 + v25, v27);
          }

          goto LABEL_38;
        }

LABEL_11:
        v6 = type metadata accessor for URL();
        (*(*(v6 - 8) + 8))(v0 + v2, v6);
        type metadata accessor for FileExportOperation.Move(0);

        goto LABEL_27;
      }

LABEL_23:
      if (v5 == 2)
      {
        outlined consume of FileExportOperation.Storage(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40));

        goto LABEL_27;
      }

      if (v5 == 3)
      {

        goto LABEL_27;
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_38;
    }

    type metadata accessor for FileImportExportBridge.Presentation(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for FileExportOperation.Mode(0);
      v5 = swift_getEnumCaseMultiPayload();
      if (v5 <= 1)
      {
        if (v5)
        {
          goto LABEL_6;
        }

        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  v7 = type metadata accessor for FileImportOperation(0);
  v8 = v7[5];
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v3 + v7[6];
  if (*(v11 + 24))
  {
    outlined consume of Text.Storage(*v11, *(v11 + 8), *(v11 + 16));
  }

  v12 = v3 + v7[7];
  if (*(v12 + 24))
  {
    outlined consume of Text.Storage(*v12, *(v12 + 8), *(v12 + 16));
  }

  v13 = v3 + v7[8];
  if (*(v13 + 24))
  {
    outlined consume of Text.Storage(*v13, *(v13 + 8), *(v13 + 16));
  }

  v14 = v7[11];
  type metadata accessor for Predicate<Pack{URL}>();
  v16 = v15;
  v17 = *(v15 - 8);
  if (!(*(v17 + 48))(v3 + v14, 1, v15))
  {
    (*(v17 + 8))(v3 + v14, v16);
  }

LABEL_38:

  return swift_deallocObject();
}

uint64_t FileImportExportBridge.PresentationState.update(preferences:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v105 = a2;
  type metadata accessor for (FileImportExportBridge.Presentation?, FileImportExportBridge.Presentation?)();
  v104 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v109 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FileExportOperation?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v102 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FileExportOperation(0);
  v100 = *(v9 - 8);
  v101 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreferenceValues.Value<FileExportOperation?>(0);
  v106 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v108 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FileImportOperation?();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for FileImportOperation(0);
  v16 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v95 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreferenceValues.Value<FileImportOperation?>(0);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FileImportExportBridge.Presentation?(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v97 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v92 = &v90 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v93 = &v90 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v91 = &v90 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v94 = &v90 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v90 - v33;
  v35 = *a1;
  v36 = type metadata accessor for FileImportExportBridge.Presentation(0);
  v107 = *(v36 - 8);
  v37 = *(v107 + 56);
  v110 = v34;
  v99 = v37;
  v37(v34, 1, 1, v36);
  v112 = v35;
  PreferenceValues.subscript.getter();
  v38 = type metadata accessor for FileImportExportBridge.PresentationState(0);
  v39 = *(v38 + 20);
  v40 = *(v3 + v39);
  v41 = *(v19 + 36);
  v111 = v21;
  v42 = *&v21[v41];
  v43 = v40 != -1 && v40 == v42;
  v44 = v43;
  v103 = v44;
  if (!v43)
  {
    v45 = v3;
    *(v3 + v39) = v42;
    outlined init with copy of FileImportExportBridge.PresentationState(v111, v15, type metadata accessor for FileImportOperation?);
    if ((*(v16 + 48))(v15, 1, v98) == 1)
    {
      outlined destroy of FileImportExportBridge.Presentation(v15, type metadata accessor for FileImportOperation?);
    }

    else
    {
      v46 = v110;
      outlined destroy of FileImportExportBridge.Presentation(v110, type metadata accessor for FileImportExportBridge.Presentation?);
      v47 = v95;
      outlined init with take of FileImportExportBridge.Presentation?(v15, v95, type metadata accessor for FileImportOperation);
      outlined init with take of FileImportExportBridge.Presentation?(v47, v46, type metadata accessor for FileImportOperation);
      swift_storeEnumTagMultiPayload();
      v99(v46, 0, 1, v36);
    }

    v3 = v45;
  }

  v112 = v35;
  v48 = v108;
  PreferenceValues.subscript.getter();
  v49 = *(v38 + 24);
  v50 = *(v3 + v49);
  v51 = *(v48 + *(v106 + 28));
  v52 = v50 != -1;
  v54 = v51 != -1 && v50 == v51;
  v55 = v52 && v54;
  v56 = v3;
  v57 = v109;
  if (v52 && v54)
  {
    v58 = v110;
    v59 = v107;
    if (v103)
    {
      outlined destroy of FileImportExportBridge.Presentation(v48, type metadata accessor for PreferenceValues.Value<FileExportOperation?>);
      outlined destroy of FileImportExportBridge.Presentation(v111, type metadata accessor for PreferenceValues.Value<FileImportOperation?>);
      outlined destroy of FileImportExportBridge.Presentation(v58, type metadata accessor for FileImportExportBridge.Presentation?);
      updated = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0);
      return (*(*(updated - 8) + 56))(v105, 1, 1, updated);
    }
  }

  else
  {
    *(v3 + v49) = v51;
    v62 = v102;
    outlined init with copy of FileImportExportBridge.PresentationState(v48, v102, type metadata accessor for FileExportOperation?);
    v63 = (*(v100 + 48))(v62, 1, v101);
    v58 = v110;
    v59 = v107;
    if (v63 == 1)
    {
      outlined destroy of FileImportExportBridge.Presentation(v62, type metadata accessor for FileExportOperation?);
    }

    else
    {
      outlined destroy of FileImportExportBridge.Presentation(v110, type metadata accessor for FileImportExportBridge.Presentation?);
      v64 = v62;
      v65 = v96;
      outlined init with take of FileImportExportBridge.Presentation?(v64, v96, type metadata accessor for FileExportOperation);
      outlined init with take of FileImportExportBridge.Presentation?(v65, v58, type metadata accessor for FileExportOperation);
      swift_storeEnumTagMultiPayload();
      v99(v58, 0, 1, v36);
    }
  }

  v66 = *(v104 + 48);
  outlined init with copy of FileImportExportBridge.PresentationState(v56, v57, type metadata accessor for FileImportExportBridge.Presentation?);
  outlined init with copy of FileImportExportBridge.PresentationState(v58, v57 + v66, type metadata accessor for FileImportExportBridge.Presentation?);
  v67 = *(v59 + 48);
  if (v67(v57 + v66, 1, v36) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v70 = v67(v57, 1, v36);
    if (EnumCaseMultiPayload == 1)
    {
      if (v70 != 1)
      {
        v71 = v94;
        outlined init with copy of FileImportExportBridge.PresentationState(v57, v94, type metadata accessor for FileImportExportBridge.Presentation?);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          if (v55)
          {
            outlined destroy of FileImportExportBridge.Presentation(v48, type metadata accessor for PreferenceValues.Value<FileExportOperation?>);
            outlined destroy of FileImportExportBridge.Presentation(v111, type metadata accessor for PreferenceValues.Value<FileImportOperation?>);
            v72 = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0);
            (*(*(v72 - 8) + 56))(v105, 1, 1, v72);
LABEL_49:
            v86 = v94;
LABEL_53:
            outlined destroy of FileImportExportBridge.Presentation(v86, type metadata accessor for FileImportExportBridge.Presentation);
            outlined destroy of FileImportExportBridge.Presentation(v57 + v66, type metadata accessor for FileImportExportBridge.Presentation);
            v79 = type metadata accessor for FileImportExportBridge.Presentation?;
            goto LABEL_54;
          }

          v83 = v91;
          outlined init with copy of FileImportExportBridge.PresentationState(v58, v91, type metadata accessor for FileImportExportBridge.Presentation?);
          result = v67(v83, 1, v36);
          if (result != 1)
          {
            outlined destroy of FileImportExportBridge.Presentation(v48, type metadata accessor for PreferenceValues.Value<FileExportOperation?>);
            outlined destroy of FileImportExportBridge.Presentation(v111, type metadata accessor for PreferenceValues.Value<FileImportOperation?>);
            v84 = v105;
            outlined init with take of FileImportExportBridge.Presentation?(v83, v105, type metadata accessor for FileImportExportBridge.Presentation);
            v85 = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
            goto LABEL_49;
          }

          goto LABEL_58;
        }

        v77 = v71;
        goto LABEL_43;
      }
    }

    else if (v70 != 1)
    {
      v77 = v93;
      outlined init with copy of FileImportExportBridge.PresentationState(v57, v93, type metadata accessor for FileImportExportBridge.Presentation?);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        if (v103)
        {
          outlined destroy of FileImportExportBridge.Presentation(v48, type metadata accessor for PreferenceValues.Value<FileExportOperation?>);
          outlined destroy of FileImportExportBridge.Presentation(v111, type metadata accessor for PreferenceValues.Value<FileImportOperation?>);
          v78 = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0);
          (*(*(v78 - 8) + 56))(v105, 1, 1, v78);
        }

        else
        {
          v87 = v92;
          outlined init with copy of FileImportExportBridge.PresentationState(v58, v92, type metadata accessor for FileImportExportBridge.Presentation?);
          result = v67(v87, 1, v36);
          if (result == 1)
          {
LABEL_59:
            __break(1u);
            return result;
          }

          outlined destroy of FileImportExportBridge.Presentation(v48, type metadata accessor for PreferenceValues.Value<FileExportOperation?>);
          outlined destroy of FileImportExportBridge.Presentation(v111, type metadata accessor for PreferenceValues.Value<FileImportOperation?>);
          v88 = v105;
          outlined init with take of FileImportExportBridge.Presentation?(v87, v105, type metadata accessor for FileImportExportBridge.Presentation);
          v89 = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v89 - 8) + 56))(v88, 0, 1, v89);
        }

        v86 = v77;
        goto LABEL_53;
      }

LABEL_43:
      outlined destroy of FileImportExportBridge.Presentation(v77, type metadata accessor for FileImportExportBridge.Presentation);
    }

    outlined destroy of FileImportExportBridge.Presentation(v57 + v66, type metadata accessor for FileImportExportBridge.Presentation);
    outlined destroy of FileImportExportBridge.Presentation(v57, type metadata accessor for FileImportExportBridge.Presentation?);
    v80 = v97;
    outlined init with copy of FileImportExportBridge.PresentationState(v58, v97, type metadata accessor for FileImportExportBridge.Presentation?);
    result = v67(v80, 1, v36);
    if (result != 1)
    {
      outlined destroy of FileImportExportBridge.Presentation(v48, type metadata accessor for PreferenceValues.Value<FileExportOperation?>);
      outlined destroy of FileImportExportBridge.Presentation(v111, type metadata accessor for PreferenceValues.Value<FileImportOperation?>);
      v81 = v105;
      outlined init with take of FileImportExportBridge.Presentation?(v80, v105, type metadata accessor for FileImportExportBridge.Presentation);
      v82 = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
      return outlined assign with take of FileImportExportBridge.Presentation?(v58, v56);
    }

    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  outlined destroy of FileImportExportBridge.Presentation(v48, type metadata accessor for PreferenceValues.Value<FileExportOperation?>);
  outlined destroy of FileImportExportBridge.Presentation(v111, type metadata accessor for PreferenceValues.Value<FileImportOperation?>);
  if (v67(v57, 1, v36) != 1)
  {
    v73 = swift_getEnumCaseMultiPayload();
    v74 = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0);
    if (v73 == 1)
    {
      v75 = v105;
      if (v55)
      {
LABEL_34:
        v76 = 1;
LABEL_41:
        (*(*(v74 - 8) + 56))(v75, v76, 1, v74);
        v79 = type metadata accessor for FileImportExportBridge.Presentation;
LABEL_54:
        outlined destroy of FileImportExportBridge.Presentation(v57, v79);
        return outlined assign with take of FileImportExportBridge.Presentation?(v58, v56);
      }
    }

    else
    {
      v75 = v105;
      if (v103)
      {
        goto LABEL_34;
      }
    }

    swift_storeEnumTagMultiPayload();
    v76 = 0;
    goto LABEL_41;
  }

  v68 = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0);
  (*(*(v68 - 8) + 56))(v105, 1, 1, v68);
  return outlined assign with take of FileImportExportBridge.Presentation?(v58, v56);
}

void type metadata accessor for FileImportOperation?()
{
  if (!lazy cache variable for type metadata for FileImportOperation?)
  {
    type metadata accessor for FileImportOperation(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FileImportOperation?);
    }
  }
}

void sub_18BDF17B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  _s10Foundation3URLVSgMaTm_7(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9]) = (a2 - 1);
  }

  else
  {
    _s10Foundation3URLVSgMaTm_7(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>);
    v14 = v13;
    v15 = *(*(v13 - 8) + 56);
    v16 = a1 + a4[11];

    v15(v16, a2, a2, v14);
  }
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance FileImportOperation.Key@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FileImportOperation(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_18BDF1998(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for FileExportOperation.Mode(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
    v17 = v16;
    v18 = *(*(v16 - 8) + 48);
    v19 = a1 + a3[10];

    return v18(v19, a2, v17);
  }
}

uint64_t specialized UIHostingController.screenEdgesSystemGestureSeedTracker.getter()
{
  v1 = direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t $defer #1 <A>() in UIHostingController.screenEdgesSystemGesturePreferencesDidChange(_:)()
{
  swift_beginAccess();
  VersionSeedSetTracker.updateSeeds(to:)();
  return swift_endAccess();
}

uint64_t UIHostingController.persistentSystemOverlaysPreferencesDidChange(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = specialized UIHostingController.persistentSystemOverlaysSeedTracker.getter();
  v9 = v3;

  v5 = VersionSeedSetTracker.hasChanges(in:)(&v9, v4);

  if (v5)
  {
    v9 = v3;
    PreferenceValues.subscript.getter();
    *(v2 + direct field offset for UIHostingController.persistentSystemOverlays) = v8;
    UIHostingController.persistentSystemOverlays.getter(&v9);
    v6 = BYTE1(v9) & 1;
    v9 = v3;
    PreferenceValues.subscript.getter();
    UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController.setter(v8);
    UIHostingController.updateHomeIndicator(animated:)(v6);
    return $defer #1 <A>() in UIHostingController.persistentSystemOverlaysPreferencesDidChange(_:)();
  }

  else
  {

    return $defer #1 <A>() in UIHostingController.persistentSystemOverlaysPreferencesDidChange(_:)();
  }
}

uint64_t specialized UIHostingController.persistentSystemOverlaysSeedTracker.getter()
{
  v1 = direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t $defer #1 <A>() in UIHostingController.persistentSystemOverlaysPreferencesDidChange(_:)()
{
  swift_beginAccess();
  VersionSeedSetTracker.updateSeeds(to:)();
  return swift_endAccess();
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance ContentScrollViewPreferenceKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static ContentScrollViewPreferenceKey.defaultValue;
}

uint64_t ToolbarBridge.preferencesDidChange<A>(_:hostingController:)(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  Toolbar.UpdateContext.init<A>(hostingController:)(v3, v9);
  v8 = v2;
  outlined init with copy of Toolbar.UpdateContext(v9, v7);
  v4 = ToolbarBridge.preferencesDidChange(_:context:)(&v8, v7);
  ToolbarBridge.adoptUpdates<A>(_:hostingController:context:)(v4, v5 & 0xFF010101, v3, v9);

  return outlined destroy of Toolbar.UpdateContext(v9);
}

uint64_t ToolbarBridge.preferencesDidChange(_:context:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  v51 = MEMORY[0x1E69E7CD0];
  v52 = 0;
  v6 = direct field offset for ToolbarBridge.toolbarTracker;
  swift_beginAccess();
  v35 = v5;
  *&v43 = v5;
  PreferenceValues.subscript.getter();
  v7 = *(v3 + v6);
  v8 = v7 == -1;
  v10 = *&v50[24] == -1 || v7 != *&v50[24];
  v11 = v8 || v10;
  if (v8 || v10)
  {
    *(v3 + v6) = *&v50[24];
    v41[2] = v49;
    v41[3] = *v50;
    v42 = *&v50[16];
    v41[0] = v47;
    v41[1] = v48;
    v38 = v49;
    v39 = *v50;
    v40 = *&v50[16];
    v36 = v47;
    v37 = v48;
    outlined init with copy of ToolbarStorage(v41, &v43);
    v12 = v39;
    v59 = v38;
    v60 = v39;
    v13 = v36;
    v14 = v37;
    v57 = v36;
    v58 = v37;
    v15 = v3 + direct field offset for ToolbarBridge.lastToolbarStorage;
    v16 = *(v3 + direct field offset for ToolbarBridge.lastToolbarStorage + 48);
    v45 = *(v3 + direct field offset for ToolbarBridge.lastToolbarStorage + 32);
    *v46 = v16;
    v17 = *(v3 + direct field offset for ToolbarBridge.lastToolbarStorage + 16);
    v43 = *(v3 + direct field offset for ToolbarBridge.lastToolbarStorage);
    v44 = v17;
    *(v15 + 2) = v38;
    *(v15 + 3) = v12;
    v61 = v40;
    *&v46[16] = *(v15 + 8);
    *(v15 + 8) = v40;
    *v15 = v13;
    *(v15 + 1) = v14;
    outlined init with copy of ToolbarStorage(&v57, v53);
    outlined destroy of Toolbar.UpdateContext?(&v43, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, MEMORY[0x1E69E6720], type metadata accessor for Toolbar.UpdateContext?);
    v59 = v38;
    v60 = v39;
    v61 = v40;
    v57 = v36;
    v58 = v37;
    outlined destroy of ToolbarStorage(&v57);
  }

  v45 = v49;
  *v46 = *v50;
  *&v46[12] = *&v50[12];
  v43 = v47;
  v44 = v48;
  outlined destroy of Toolbar.UpdateContext?(&v43, &lazy cache variable for type metadata for PreferenceValues.Value<ToolbarStorage>, &type metadata for ToolbarStorage, MEMORY[0x1E697EA38], type metadata accessor for Toolbar.UpdateContext?);
  swift_endAccess();
  ToolbarBridge.toolbarStorage.getter(&v57);
  v18 = v60;
  if (v60)
  {
    v19 = v61;
    v20 = v59;
    v22 = v57;
    v21 = v58;
    v23 = BYTE8(v60);
    v24 = BYTE8(v59);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v45 = xmmword_1ED5A7500;
    *v46 = *&qword_1ED5A7510;
    v43 = static ToolbarKey.defaultValue;
    v44 = *algn_1ED5A74F0;
    v19 = qword_1ED5A7520;
    *&v46[16] = qword_1ED5A7520;
    v23 = byte_1ED5A7518;
    v18 = qword_1ED5A7510;
    v24 = BYTE8(xmmword_1ED5A7500);
    v20 = xmmword_1ED5A7500;
    v33 = static ToolbarKey.defaultValue;
    v34 = *algn_1ED5A74F0;
    outlined init with copy of ToolbarStorage(&v43, v53);
    v22 = v33;
    v21 = v34;
  }

  v53[0] = v22;
  v53[1] = v21;
  *&v54 = v20;
  BYTE8(v54) = v24 & 1;
  *&v55 = v18;
  BYTE8(v55) = v23 & 1;
  v56 = v19;
  *&v46[16] = v19;
  v43 = v22;
  v44 = v21;
  v45 = v54;
  *v46 = v55;
  swift_beginAccess();
  v25 = MEMORY[0x1E69E7CC0];
  specialized Set.formUnion<A>(_:)(MEMORY[0x1E69E7CC0]);
  swift_endAccess();

  *(a2 + 88) = v25;
  swift_beginAccess();
  EnvironmentValues.horizontalSizeClass.getter();
  *(a2 + 80) = v36;
  EnvironmentValues.verticalSizeClass.getter();
  v26 = swift_endAccess();
  *(a2 + 81) = v36;
  MEMORY[0x1EEE9AC00](v26);
  v29[2] = v3;
  v29[3] = v35;
  v29[4] = &v51;
  v30 = v11;
  v31 = &v43;
  v32 = a2;
  static ToolbarStrategy.withUpdater<A>(_:_:body:)(v3, a2, partial apply for closure #2 in ToolbarBridge.preferencesDidChange(_:context:), v29);
  outlined destroy of ToolbarStorage(v53);
  v27 = v51;
  outlined destroy of Toolbar.UpdateContext(a2);
  return v27;
}

uint64_t static ToolbarStrategy.withUpdater<A>(_:_:body:)(void *a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v17 = a4;
  v18 = a3;
  v6 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - v9;
  v13 = *((v12 & v11) + 0x58);
  (*(v13 + 64))(v6, v13, v8);
  v14 = *(v13 + 24);
  v15 = a1;
  v14(a1, v6, v13);
  outlined init with copy of Toolbar.UpdateContext(a2, v19);
  (*(v13 + 48))(v19, v6, v13);
  v18(v10);
  return (*(v7 + 8))(v10, v6);
}

double protocol witness for ToolbarStrategy.init() in conformance UIKitToolbarStrategy@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t outlined assign with take of Toolbar.UpdateContext?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 40))(a2, a1, v8);
  return a2;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance UINavigationItemAdaptorKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static UINavigationItemAdaptorKey.defaultValue;
}

uint64_t partial apply for closure #1 in closure #2 in ToolbarBridge.preferencesDidChange(_:context:)(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *(v2 + direct field offset for ToolbarBridge.navigationAdaptor) = *a1;

  *(v3 + 10) = 1;
  return result;
}

BOOL specialized VersionSeedTracker.didChange(_:action:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = v7;
  v12 = a4(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v21 - v14;
  v21[1] = a1;
  PreferenceValues.subscript.getter();
  v16 = *&v15[*(v13 + 36)];
  v18 = v16 == -1 || *v9 != v16;
  v19 = *v9 == -1 || v18;
  if (*v9 == -1 || v18)
  {
    *v9 = v16;
    a2(v15);
  }

  outlined destroy of WeakBox<UIWindowScene>?(v15, a7);
  return v19;
}

BOOL specialized VersionSeedTracker.didChange(_:action:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  return specialized VersionSeedTracker.didChange(_:action:)(a1, a2, a3, type metadata accessor for PreferenceValues.Value<ToolbarStorage.SearchItem?>, &type metadata for SearchKey, &protocol witness table for SearchKey, type metadata accessor for PreferenceValues.Value<ToolbarStorage.SearchItem?>);
}

{
  return specialized VersionSeedTracker.didChange(_:action:)(a1, a2, a3, type metadata accessor for PreferenceValues.Value<ToolbarStorage.NavigationProperties?>, &type metadata for NavigationPropertiesKey, &protocol witness table for NavigationPropertiesKey, type metadata accessor for PreferenceValues.Value<ToolbarStorage.NavigationProperties?>);
}

uint64_t outlined assign with copy of ToolbarStorage.NavigationProperties?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_1(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t closure #2 in closure #2 in ToolbarBridge.preferencesDidChange(_:context:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a2;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = direct field offset for ToolbarBridge.searchItem;
  swift_beginAccess();
  outlined assign with copy of ToolbarStorage.NavigationProperties?(a1, a2 + v9, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem);
  swift_endAccess();
  result = (*(*((v8 & v7) + 0x58) + 104))(*((v8 & v7) + 0x50));
  if (result)
  {
    memset(v13, 0, sizeof(v13));
    v14 = xmmword_18CD90710;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a4;
    *a4 = 0x8000000000000000;
    specialized _NativeSet.update(with:isUnique:)(v13, isUniquelyReferenced_nonNull_native, v15);
    outlined destroy of Toolbar.UpdateContext?(v15, &lazy cache variable for type metadata for Toolbar.BarLocation?, &type metadata for Toolbar.BarLocation, MEMORY[0x1E69E6720], type metadata accessor for Toolbar.UpdateContext?);
    *a4 = v12;
  }

  return result;
}

uint64_t outlined init with copy of Toolbar.UpdateContext?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t _s7SwiftUI7ToolbarO13UpdateContextVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t closure #1 in UIKitToolbarStrategy.updateSearch()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v69 = a3;
  v64 = a2;
  v68 = a4;
  v5 = type metadata accessor for ToolbarStorage.SearchItem(0);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v72 = (&v64 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v70 = (&v64 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v64 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v64 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  v23 = direct field offset for ToolbarBridge.searchItem;
  swift_beginAccess();
  outlined init with copy of ToolbarStorage.SearchItem?(a1 + v23, v22, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, v8, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  v71 = v22;
  outlined init with copy of ToolbarStorage.SearchItem?(v22, v19, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, v8, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  v65 = v6;
  v73 = *(v6 + 48);
  v74 = v5;
  v24 = v73(v19, 1, v5);
  outlined destroy of ToolbarStorage.SearchItem?(v19, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, v8, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  v25 = 0;
  if (v24 != 1)
  {
    v26 = a1 + direct field offset for ToolbarBridge.platformVended;
    swift_beginAccess();
    v27 = *(v26 + 32);
    if (v27)
    {
      v25 = *(v26 + 32);
    }

    else
    {
      v28 = objc_allocWithZone(type metadata accessor for SwiftUISearchController(0));
      v25 = [v28 init];
      v27 = 0;
    }

    v29 = v27;
    v30 = v25;
  }

  v31 = a1 + direct field offset for ToolbarBridge.platformVended;
  swift_beginAccess();
  v32 = *(v31 + 8);
  v33 = [v32 searchController];
  [v32 setSearchController_];
  v34 = v33;
  v35 = [v32 searchController];
  if (v34)
  {
    v36 = v73;
    v37 = v74;
    v38 = v71;
    if (v35)
    {
      v39 = v35;

      LODWORD(v40) = v34 != v39;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v36 = v73;
  v37 = v74;
  v38 = v71;
  if (v35)
  {

LABEL_12:
    LODWORD(v40) = 1;
    goto LABEL_14;
  }

  LODWORD(v40) = 0;
LABEL_14:
  v41 = v75;
  v71 = v34;
  outlined init with copy of ToolbarStorage.SearchItem?(v38, v75, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  if (v36(v41, 1, v37) == 1)
  {
    outlined destroy of ToolbarStorage.SearchItem?(v41, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
    v42 = 1;
  }

  else
  {
    if (*(v41 + *(v37 + 9) + 8))
    {
      type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>();

      v36 = v73;
      v37 = v74;
      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>();
      PropertyList.subscript.getter();
    }

    v42 = (LOBYTE(v76[0]) - 2 < 6) | LOBYTE(v76[0]) ^ 1;
    _s7SwiftUI16SearchFieldStateVWOhTm_1(v75, type metadata accessor for ToolbarStorage.SearchItem);
  }

  [v32 setHidesSearchBarWhenScrolling_];
  specialized UIKitToolbarStrategy.configureNavigationItem(_:searchItem:controller:)(v32, v38);
  v43 = *(v31 + 32);
  *(v31 + 32) = v25;

  v44 = v70;
  outlined init with copy of ToolbarStorage.SearchItem?(v38, v70, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  v45 = v36(v44, 1, v37);
  v46 = v72;
  if (v45 == 1)
  {
    v47 = MEMORY[0x1E69E6720];
    outlined destroy of ToolbarStorage.SearchItem?(v38, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);

    result = outlined destroy of ToolbarStorage.SearchItem?(v44, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, v47, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
LABEL_26:
    *v68 = v40;
    return result;
  }

  v49 = v44;
  v50 = v67;
  outlined init with take of ToolbarStorage.SearchItem(v49, v67, type metadata accessor for ToolbarStorage.SearchItem);
  if (!v25)
  {
    outlined destroy of ToolbarStorage.SearchItem?(v38, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);

    result = _s7SwiftUI16SearchFieldStateVWOhTm_1(v50, type metadata accessor for ToolbarStorage.SearchItem);
    goto LABEL_26;
  }

  LODWORD(v75) = v40;
  _s7SwiftUI24SearchFieldConfigurationVWOcTm_0(v50, v46, type metadata accessor for ToolbarStorage.SearchItem);
  (*(v65 + 56))(v46, 0, 1, v37);
  v51 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_searchItem;
  swift_beginAccess();
  outlined assign with copy of ToolbarStorage.SearchItem?(v46, v25 + v51);
  swift_endAccess();
  v52 = v25 + v51;
  v53 = v66;
  outlined init with copy of ToolbarStorage.SearchItem?(v52, v66, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  result = (v36)(v53, 1, v37);
  if (result != 1)
  {
    SwiftUISearchController.update(to:)(v53);
    v74 = type metadata accessor for ToolbarStorage.SearchItem;
    v73 = MEMORY[0x1E69E6720];
    v70 = _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0;
    outlined destroy of ToolbarStorage.SearchItem?(v46, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
    v72 = type metadata accessor for ToolbarStorage.SearchItem;
    _s7SwiftUI16SearchFieldStateVWOhTm_1(v53, type metadata accessor for ToolbarStorage.SearchItem);
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();

    v55 = [v25 searchBar];
    v56 = [v55 searchTextField];

    v57 = *(v37 + 9);
    v58 = v50 + *(v37 + 8);
    v59 = *v58;
    v60 = *(v58 + 8);
    v61 = *(v58 + 16);
    v40 = v50;
    v62 = *(v58 + 24);
    v63 = *(v40 + v57 + 8);
    v76[0] = *(v40 + v57);
    v76[1] = v63;

    UITextField.applyAccessibilityExplicitLabelIfNeeded(from:in:)(v59, v60, v61, v62, v76);

    outlined destroy of ToolbarStorage.SearchItem?(v38, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, v74, v73, v70);
    result = _s7SwiftUI16SearchFieldStateVWOhTm_1(v40, v72);
    LOBYTE(v40) = v75;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t ToolbarStrategy.withUpdate<A>(_:)(void (*a1)(void *, _BYTE *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 16))(a3, a5);
  if (v8)
  {
    v9 = v8;
    (*(a5 + 40))(v11, a3, a5);
    if (v11[11])
    {
      outlined init with take of Toolbar.UpdateContext(v11, v12);
      a1(v9, v12);

      return outlined destroy of Toolbar.UpdateContext(v12);
    }

    outlined destroy of Toolbar.UpdateContext?(v11, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext, MEMORY[0x1E69E6720], type metadata accessor for Toolbar.UpdateContext?);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ToolbarStrategy.makeBarContext(storage:preferences:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a2;
  v14 = *(a1 + 8) != 0;
  *v15 = 0x1000000;
  *&v15[4] = 1;
  v13[2] = &v14;
  v13[3] = v6;
  v13[4] = a1;
  result = ToolbarStrategy.withUpdate<A>(_:)(partial apply for closure #1 in ToolbarStrategy.makeBarContext(storage:preferences:), v13, a3, MEMORY[0x1E69E7CA8] + 8, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = v15[2];
  v11 = *&v15[3];
  v12 = v15[5];
  *a5 = v14;
  *(a5 + 1) = v8;
  *(a5 + 2) = v9;
  *(a5 + 3) = v10;
  *(a5 + 4) = v11;
  *(a5 + 6) = v12;
  return result;
}

id protocol witness for ToolbarStrategy.updater.getter in conformance UIKitToolbarStrategy()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t closure #1 in ToolbarStrategy.makeBarContext(storage:preferences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a3 + 4) = *(a2 + 80);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = UIViewController.hasOrWillHaveSystemLeadingItems(_:)(a2);
  }

  else
  {
    v9 = 0;
  }

  *(a3 + 2) = v9 & 1;
  v27[0] = a4;
  PreferenceValues.subscript.getter();
  *(a3 + 1) = v23;
  v10 = ToolbarStorage.placements.getter();
  v11 = v10;
  v12 = v10 + 56;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 56);
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  while (v15)
  {
LABEL_12:
    outlined init with copy of ToolbarItemPlacement.Role(*(v11 + 48) + 48 * (__clz(__rbit64(v15)) | (v18 << 6)), v27);
    v23 = 6;
    v24 = 0u;
    v25 = 0u;
    v26 = 2;
    v20 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v27, &v23);
    outlined destroy of ToolbarItemPlacement.Role(&v23);
    if (v20)
    {

      outlined destroy of ToolbarItemPlacement.Role(v27);
LABEL_17:

      v22 = 1;
LABEL_18:
      *(a3 + 3) = v22;
      return result;
    }

    v23 = 26;
    v15 &= v15 - 1;
    v24 = 0u;
    v25 = 0u;
    v26 = 2;
    v21 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v27, &v23);
    outlined destroy of ToolbarItemPlacement.Role(&v23);
    result = outlined destroy of ToolbarItemPlacement.Role(v27);
    if (v21)
    {

      goto LABEL_17;
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      v22 = 0;
      goto LABEL_18;
    }

    v15 = *(v12 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t UIViewController.hasOrWillHaveBackItem(overrides:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 2)
  {
    outlined init with copy of PushTarget?(a1, v46, &lazy cache variable for type metadata for PushTarget?, &type metadata for PushTarget);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      Strong = [v1 splitViewController];
    }

    outlined init with copy of PushTarget?(v46, &v41, &lazy cache variable for type metadata for PushTarget?, &type metadata for PushTarget);
    if (v42 == 2)
    {
      outlined destroy of PushTarget?(&v41, &lazy cache variable for type metadata for PushTarget?, &type metadata for PushTarget);
      v4 = [v1 navigationController];
      if (!v4)
      {
        goto LABEL_13;
      }

      v5 = v4;
      v6 = [v4 viewControllers];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = v7 >> 62 ? __CocoaSet.count.getter() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v8 <= 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      outlined init with take of PushTarget(&v41, v43);
      v9 = v45;
      v10 = v43[8];
      outlined destroy of PushTarget(v43);
      if (v9 != 1 || v10)
      {
LABEL_13:
        if (Strong)
        {
          v11 = Strong;
          v12 = [v11 traitCollection];
          v13 = [v12 horizontalSizeClass];

          v2 = v13 != 1 && [v11 displayMode] == 1;
          outlined init with copy of PushTarget?(v46, &v41, &lazy cache variable for type metadata for PushTarget?, &type metadata for PushTarget);
          if (v42 == 2)
          {
            outlined destroy of PushTarget?(&v41, &lazy cache variable for type metadata for PushTarget?, &type metadata for PushTarget);
          }

          else
          {
            outlined init with take of PushTarget(&v41, v43);
            if (v45 != 1)
            {
              v14 = v44;
              if ([v11 style])
              {
                v15 = [v11 viewControllerForColumn_];
                if (v15)
                {
                  v16 = v15;
                  objc_opt_self();
                  v17 = swift_dynamicCastObjCClass();
                  if (v17)
                  {
                    v18 = [v17 viewControllers];
                    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
                    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                    if (v19 >> 62)
                    {
                      v20 = __CocoaSet.count.getter();
                    }

                    else
                    {
                      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    outlined destroy of PushTarget(v43);
                    LOBYTE(v2) = v20 != 0;
                    goto LABEL_60;
                  }
                }
              }
            }

            outlined destroy of PushTarget(v43);
          }

          if ([v11 style])
          {
            v21 = [v11 viewControllerForColumn_];
            if (v21)
            {
              v22 = v21;
              objc_opt_self();
              v23 = swift_dynamicCastObjCClass();
              if (v23)
              {
                v24 = v23;
                v25 = [v23 viewControllers];
                type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
                v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                v27 = v26 >> 62 ? __CocoaSet.count.getter() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);

                if (v27)
                {

                  goto LABEL_48;
                }
              }
            }
          }

          if ([v11 style])
          {
            v28 = [v11 viewControllerForColumn_];
            if (v28)
            {
              v29 = v28;
              objc_opt_self();
              v30 = swift_dynamicCastObjCClass();
              if (!v30)
              {

LABEL_51:
                goto LABEL_60;
              }

              v24 = v30;
              v31 = [v30 viewControllers];
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
              v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v32 >> 62)
              {
                v33 = __CocoaSet.count.getter();
                if (v33)
                {
LABEL_42:
                  v34 = __OFSUB__(v33, 1);
                  v35 = v33 - 1;
                  if (v34)
                  {
                    __break(1u);
                  }

                  else if ((v32 & 0xC000000000000001) == 0)
                  {
                    if ((v35 & 0x8000000000000000) != 0)
                    {
                      __break(1u);
                    }

                    else if (v35 < *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      v36 = *(v32 + 8 * v35 + 32);
                      goto LABEL_47;
                    }

                    __break(1u);
                    goto LABEL_66;
                  }

                  v36 = MEMORY[0x18D00E9C0](v35, v32);
                  swift_unknownObjectRelease();
LABEL_47:

                  if (v36 == v1)
                  {
LABEL_48:
                    if (v2)
                    {
                      outlined destroy of PushTarget?(v46, &lazy cache variable for type metadata for PushTarget?, &type metadata for PushTarget);

                      LOBYTE(v2) = 1;
                      return v2 & 1;
                    }

                    v37 = [v24 viewControllers];
                    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
                    v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                    if (!(v38 >> 62))
                    {
                      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_54:

                      outlined destroy of PushTarget?(v46, &lazy cache variable for type metadata for PushTarget?, &type metadata for PushTarget);
                      LOBYTE(v2) = v39 > 1;
                      return v2 & 1;
                    }

LABEL_66:
                    v39 = __CocoaSet.count.getter();
                    goto LABEL_54;
                  }

                  goto LABEL_51;
                }
              }

              else
              {
                v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v33)
                {
                  goto LABEL_42;
                }
              }
            }
          }

          goto LABEL_60;
        }

        LOBYTE(v2) = 0;
LABEL_60:
        outlined destroy of PushTarget?(v46, &lazy cache variable for type metadata for PushTarget?, &type metadata for PushTarget);
        return v2 & 1;
      }
    }

    LOBYTE(v2) = 1;
    goto LABEL_60;
  }

  return v2 & 1;
}

uint64_t UIViewController.hasOrWillHaveSystemLeadingItems(_:)(uint64_t a1)
{
  if (UIViewController.hasOrWillHaveBackItem(overrides:)(a1))
  {
    return 1;
  }

  v3 = [v1 navigationItem];
  v4 = [v3 leftBarButtonItems];

  if (!v4)
  {
    return 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x18D00E9C0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v2 = [v8 isSystemItem];

      if ((v2 & 1) == 0)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v2 = 0;
LABEL_20:

  return v2;
}

uint64_t ToolbarStorage.placements.getter()
{
  v1 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ToolbarStorage.Entry(0) - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 48);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of ToolbarStorage.Entry(v14, v11, type metadata accessor for ToolbarStorage.Entry);
      outlined init with copy of ToolbarStorage.Entry(v11, v7, type metadata accessor for ToolbarStorage.Entry.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v19 = v31;
          _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v7, v31, type metadata accessor for ToolbarStorage.GroupItem);
          outlined init with copy of ToolbarItemPlacement.Role(v19 + 80, v36);
          v20 = type metadata accessor for ToolbarStorage.GroupItem;
        }

        else
        {
          v19 = v30;
          _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v7, v30, type metadata accessor for ToolbarStorage.Item);
          outlined init with copy of ToolbarItemPlacement.Role(v19 + 112, v36);
          v20 = type metadata accessor for ToolbarStorage.Item;
        }

        outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v19, v20);
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v21 = v7[3];
        *&v33[16] = v7[2];
        v34 = v21;
        v35 = v7[4];
        v22 = *v7;
        *v33 = v7[1];
        v32 = v22;
        outlined init with copy of ToolbarItemPlacement.Role(&v32 + 8, v36);
        outlined destroy of ToolbarStorage.SpacerItem(&v32);
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          *v36 = 29;
          memset(&v36[8], 0, 32);
          v18 = 2;
        }

        else
        {
          memset(v36, 0, 40);
          v18 = -1;
        }

        v36[40] = v18;
      }

      v37 = *v36;
      *v38 = *&v36[16];
      *&v38[9] = *&v36[25];
      outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v11, type metadata accessor for ToolbarStorage.Entry);
      if (v38[24] == 255)
      {
        outlined destroy of ToolbarItemPlacement.Role?(&v37, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720]);
      }

      else
      {
        v32 = v37;
        *v33 = *v38;
        *&v33[9] = *&v38[9];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v24 = *(v16 + 2);
        v23 = *(v16 + 3);
        if (v24 >= v23 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v16);
        }

        *(v16 + 2) = v24 + 1;
        v25 = &v16[48 * v24];
        v26 = v32;
        v27 = *v33;
        *(v25 + 57) = *&v33[9];
        *(v25 + 2) = v26;
        *(v25 + 3) = v27;
      }

      v14 += v15;
      --v13;
    }

    while (v13);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v28 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI20ToolbarItemPlacementV4RoleO_SayAHGTt0g5Tf4g_n(v16);

  return v28;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI20ToolbarItemPlacementV4RoleO_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type ToolbarItemPlacement.Role and conformance ToolbarItemPlacement.Role();
  result = MEMORY[0x18D00D140](v2, &type metadata for ToolbarItemPlacement.Role, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      outlined init with copy of ToolbarItemPlacement.Role(v5, v6);
      specialized Set._Variant.insert(_:)(v7, v6);
      outlined destroy of ToolbarItemPlacement.Role(v7);
      v5 += 48;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarItemPlacement.Role and conformance ToolbarItemPlacement.Role()
{
  result = lazy protocol witness table cache variable for type ToolbarItemPlacement.Role and conformance ToolbarItemPlacement.Role;
  if (!lazy protocol witness table cache variable for type ToolbarItemPlacement.Role and conformance ToolbarItemPlacement.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemPlacement.Role and conformance ToolbarItemPlacement.Role);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarItemPlacement.Role and conformance ToolbarItemPlacement.Role;
  if (!lazy protocol witness table cache variable for type ToolbarItemPlacement.Role and conformance ToolbarItemPlacement.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemPlacement.Role and conformance ToolbarItemPlacement.Role);
  }

  return result;
}

uint64_t ToolbarBridge.updateStorage(newStorage:barContext:updateContext:strategy:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v39 = *MEMORY[0x1E69E7D40] & *v5;
  v37 = a2[1];
  v38 = *a2;
  v35 = a2[3];
  v36 = a2[2];
  v33 = a2[5];
  v34 = a2[4];
  v32 = a2[6];
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCTf4gn_n7SwiftUI7ToolbarO11BarLocationO_AE0G7StorageVTt0g5(MEMORY[0x1E69E7CC0]);
  v8 = *(a1 + 48);
  v56 = *(a1 + 32);
  v57 = v8;
  v58 = *(a1 + 64);
  v59 = v7;
  v9 = *(a1 + 16);
  v54 = *a1;
  v55 = v9;
  outlined init with copy of ToolbarStorage(a1, &v48);
  ToolbarStorage.removeRequestedDefaultItems()();
  *&v48 = specialized static Toolbar.BarLocation.allCases.getter();

  specialized Array.append<A>(contentsOf:)(v10);
  v11 = v48;
  v44 = *(v48 + 16);
  if (!v44)
  {

    v13 = v5;
    goto LABEL_64;
  }

  v42 = v48 + 32;
  v43 = direct field offset for ToolbarBridge.allowedLocations;
  swift_beginAccess();
  v12 = 0;
  v13 = v5;
  v30 = v11;
  v31 = v5;
LABEL_6:
  if (v12 >= *(v11 + 16))
  {
    __break(1u);
    JUMPOUT(0x18BDF4EE8);
  }

  outlined init with copy of Toolbar.BarLocation(v42 + 40 * v12, v53);
  v14 = *(v13 + v43);
  if (!*(v14 + 16))
  {
    goto LABEL_4;
  }

  Hasher.init(_seed:)();

  Toolbar.BarLocation.hash(into:)();
  v15 = Hasher._finalize()();
  v16 = -1 << *(v14 + 32);
  v17 = v15 & ~v16;
  if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
LABEL_3:

LABEL_4:
    outlined destroy of Toolbar.BarLocation(v53);
    goto LABEL_5;
  }

  v18 = ~v16;
  while (2)
  {
    outlined init with copy of Toolbar.BarLocation(*(v14 + 48) + 40 * v17, v52);
    outlined init with copy of Toolbar.BarLocation(v52, &v48);
    outlined init with copy of Toolbar.BarLocation(v53, &v50[8]);
    switch(*(&v49 + 1))
    {
      case 0:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32])
        {
          goto LABEL_54;
        }

        goto LABEL_59;
      case 1:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 1)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      case 2:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 2)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      case 3:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 3)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      case 4:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 4)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      case 5:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 5)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      case 6:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 6)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      case 7:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 7)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      case 8:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 8)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      case 9:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 9)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      case 0xALL:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 10)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      case 0xBLL:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] != 11)
        {
          goto LABEL_54;
        }

LABEL_59:
        outlined destroy of Toolbar.BarLocation(&v48);

        goto LABEL_61;
      case 0xCLL:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 12)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      case 0xDLL:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 13)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      case 0xELL:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 14)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      case 0xFLL:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 15)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      case 0x10:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 16)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      case 0x11:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 17)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      case 0x12:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 18)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      case 0x13:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] != 19)
        {
          goto LABEL_54;
        }

        goto LABEL_60;
      case 0x14:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 20)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      default:
        outlined init with copy of Toolbar.BarLocation(&v48, v47);
        if (*&v50[32] < 0x15uLL)
        {
          outlined destroy of Toolbar.BarLocation(v52);
          outlined destroy of AnyHashable(v47);
LABEL_54:
          outlined destroy of Toolbar.UpdateContext?(&v48, &lazy cache variable for type metadata for (Toolbar.BarLocation, Toolbar.BarLocation), &type metadata for Toolbar.BarLocation, &type metadata for Toolbar.BarLocation, type metadata accessor for (Badge, Spacer));
          goto LABEL_55;
        }

        v45[0] = *&v50[8];
        v45[1] = *&v50[24];
        v46 = v51;
        v19 = MEMORY[0x18D00E7E0](v47, v45);
        outlined destroy of AnyHashable(v45);
        outlined destroy of Toolbar.BarLocation(v52);
        outlined destroy of AnyHashable(v47);
        if ((v19 & 1) == 0)
        {
          outlined destroy of Toolbar.BarLocation(&v48);
LABEL_55:
          v17 = (v17 + 1) & v18;
          if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_3;
          }

          continue;
        }

LABEL_60:

        outlined destroy of Toolbar.BarLocation(&v48);
LABEL_61:
        v60[2] = v56;
        v60[3] = v57;
        v61 = v58;
        v60[0] = v54;
        v60[1] = v55;
        LOBYTE(v48) = v38;
        BYTE1(v48) = v37;
        BYTE2(v48) = v36;
        BYTE3(v48) = v35;
        BYTE4(v48) = v34;
        BYTE5(v48) = v33;
        BYTE6(v48) = v32;
        v20 = *(v39 + 80);
        v21 = *(v39 + 88);
        v22 = specialized ToolbarBridge.filterAndSortMatchingItems(in:newStorage:context:)(v53, v60, &v48);
        v23 = (*(v21 + 88))(v53, v22, v20, v21);
        v24 = ToolbarBridge.makeStorage(in:from:strategy:)(v53, v23, a4);
        v26 = v25;
        v41 = v27;

        (*(v21 + 120))(v52, v53, v22, v20, v21);

        outlined init with copy of Toolbar.BarLocation(v53, &v48);
        v47[0] = v24;
        v47[1] = v26;
        v13 = v31;
        v47[2] = v41;
        type metadata accessor for [Toolbar.BarLocation : Toolbar.LocationStorage](0, &lazy cache variable for type metadata for [Toolbar.BarLocation : Toolbar.LocationStorage], MEMORY[0x1E69E5E28]);
        Dictionary.subscript.setter();
        outlined destroy of Toolbar.BarLocation(v53);
        v11 = v30;
LABEL_5:
        if (++v12 != v44)
        {
          goto LABEL_6;
        }

        v7 = v59;
LABEL_64:
        *v50 = v56;
        *&v50[16] = v57;
        *&v50[32] = v58;
        v48 = v54;
        v49 = v55;
        outlined destroy of ToolbarStorage(&v48);
        v28 = direct field offset for ToolbarBridge.storageByLocation;
        swift_beginAccess();
        *(v13 + v28) = v7;
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCTf4gn_n7SwiftUI7ToolbarO11BarLocationO_AE0G7StorageVTt0g5(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for [Toolbar.BarLocation : Toolbar.LocationStorage](0, &lazy cache variable for type metadata for _DictionaryStorage<Toolbar.BarLocation, Toolbar.LocationStorage>, MEMORY[0x1E69E6EC8]);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Toolbar.UpdateContext?(v4, v15, &lazy cache variable for type metadata for (Toolbar.BarLocation, Toolbar.LocationStorage), &type metadata for Toolbar.BarLocation, &type metadata for Toolbar.LocationStorage, type metadata accessor for (Badge, Spacer));
      result = specialized __RawDictionaryStorage.find<A>(_:)(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = v3[7] + 24 * result;
      v11 = v18;
      *v10 = v17;
      *(v10 + 16) = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 64;
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

Swift::Void __swiftcall ToolbarStorage.removeRequestedDefaultItems()()
{
  v1 = 0;
  v2 = *(v0 + 64);
  v5 = *(v2 + 56);
  v3 = v2 + 56;
  v4 = v5;
  v6 = 1 << *(v3 - 24);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_4:
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      return;
    }

    v8 = *(v3 + 8 * v10);
    ++v1;
    if (v8)
    {
      v1 = v10;
      goto LABEL_4;
    }
  }

  __break(1u);
}

void *specialized ToolbarBridge.filterAndSortMatchingItems(in:newStorage:context:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ToolbarStorage.Entry(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v48 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v18 = *a3;
  v58 = a3[1];
  v57 = a3[2];
  v56 = a3[3];
  v55 = a3[4];
  v54 = a3[5];
  v53 = a3[6];
  v71 = MEMORY[0x1E69E7CC0];
  v70 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCTf4gn_n7SwiftUI14ToolbarStorageV5EntryV2IDV_SiTt0g5(MEMORY[0x1E69E7CC0]);
  result = ToolbarStorage.toolbarEntries.getter();
  v20 = result;
  v60 = result[2];
  if (!v60)
  {
LABEL_61:

    specialized MutableCollection<>.sort(by:)(&v71, v70);

    return v71;
  }

  v21 = 0;
  v59 = result + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v22 = MEMORY[0x1E69E7CD0];
  v51 = v13;
  v50 = v18;
  v49 = result;
  while (v21 < v20[2])
  {
    outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(&v59[*(v13 + 72) * v21], v17, type metadata accessor for ToolbarStorage.Entry);
    outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v17, v11, type metadata accessor for ToolbarStorage.Entry.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v24 = v47;
        outlined init with take of ToolbarStorage.Item(v11, v47, type metadata accessor for ToolbarStorage.GroupItem);
        outlined init with copy of ToolbarItemPlacement.Role(v24 + 80, v67);
        v25 = type metadata accessor for ToolbarStorage.GroupItem;
      }

      else
      {
        v24 = v46;
        outlined init with take of ToolbarStorage.Item(v11, v46, type metadata accessor for ToolbarStorage.Item);
        outlined init with copy of ToolbarItemPlacement.Role(v24 + 112, v67);
        v25 = type metadata accessor for ToolbarStorage.Item;
      }

      outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v24, v25);
LABEL_16:
      if (v67[40] == 255)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v26 = v11[3];
      v64 = v11[2];
      v27 = v11[4];
      v65 = v26;
      v66 = v27;
      v28 = *v11;
      v63 = v11[1];
      v62 = v28;
      outlined init with copy of ToolbarItemPlacement.Role(&v62 + 8, v67);
      outlined destroy of ToolbarStorage.SpacerItem(&v62);
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload != 3)
    {
      memset(v67, 0, 40);
      v67[40] = -1;
LABEL_4:
      outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v17, type metadata accessor for ToolbarStorage.Entry);
      result = outlined destroy of Toolbar.UpdateContext?(v67, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for Toolbar.UpdateContext?);
      goto LABEL_5;
    }

    *v67 = 29;
    memset(&v67[8], 0, 32);
    v67[40] = 2;
LABEL_17:
    v68 = *v67;
    *v69 = *&v67[16];
    *&v69[9] = *&v67[25];
    LOBYTE(v62) = v18;
    BYTE1(v62) = v58;
    BYTE2(v62) = v57;
    BYTE3(v62) = v56;
    BYTE4(v62) = v55;
    BYTE5(v62) = v54;
    BYTE6(v62) = v53;
    v29 = Toolbar.BarLocation.priority(for:context:)(&v68, &v62);
    if ((v30 & 1) == 0)
    {
      v52 = v29;
      v31 = v9;
      v32 = a1;
      if (*(v22 + 16))
      {
        Hasher.init(_seed:)();
        ToolbarItemPlacement.Role.hash(into:)();
        v33 = Hasher._finalize()();
        v34 = -1 << *(v22 + 32);
        v35 = v33 & ~v34;
        if ((*(v22 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
        {
          v36 = ~v34;
          while (1)
          {
            outlined init with copy of ToolbarItemPlacement.Role(*(v22 + 48) + 48 * v35, &v62);
            v37 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(&v62, &v68);
            outlined destroy of ToolbarItemPlacement.Role(&v62);
            if (v37)
            {
              break;
            }

            v35 = (v35 + 1) & v36;
            if (((*(v22 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          outlined destroy of ToolbarItemPlacement.Role(&v68);
          result = outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v17, type metadata accessor for ToolbarStorage.Entry);
          a1 = v32;
          v9 = v31;
          v13 = v51;
          LOBYTE(v18) = v50;
          goto LABEL_33;
        }
      }

LABEL_24:
      outlined init with copy of ToolbarItemPlacement.Role(&v68, &v62);
      a1 = v32;
      v9 = v31;
      v13 = v51;
      LOBYTE(v18) = v50;
      if (BYTE8(v64))
      {
        if (BYTE8(v64) == 1)
        {
          outlined destroy of ToolbarItemPlacement.Role(&v62);
LABEL_32:
          ToolbarStorage.Entry.id.getter(&v62);
          *v67 = v52;
          v67[8] = 0;
          type metadata accessor for _DictionaryStorage<ToolbarStorage.Entry.ID, Int>(0, &lazy cache variable for type metadata for [ToolbarStorage.Entry.ID : Int], MEMORY[0x1E69E5E28]);
          Dictionary.subscript.setter();
          outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v17, v48, type metadata accessor for ToolbarStorage.Entry);
          _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_1(0, &lazy cache variable for type metadata for [ToolbarStorage.Entry], type metadata accessor for ToolbarStorage.Entry, MEMORY[0x1E69E62F8]);
          Array.append(_:)();
          outlined destroy of ToolbarItemPlacement.Role(&v68);
          result = outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v17, type metadata accessor for ToolbarStorage.Entry);
LABEL_33:
          v20 = v49;
          goto LABEL_5;
        }

        if (*(&v63 + 1) | v64 | v62 | v63 | *(&v62 + 1))
        {
          v38 = *(&v63 + 1) | v64 | v63 | *(&v62 + 1);
          if ((v62 - 1) > 7 || v38)
          {
            if ((v62 - 9) <= 1 && !v38)
            {
              goto LABEL_32;
            }

            if (v62 != 11 || v38)
            {
              v40 = v62 & 0xFFFFFFFFFFFFFFFELL;
              v41 = v62 & 0xFFFFFFFFFFFFFFFCLL;
              v42 = (v62 & 0xFFFFFFFFFFFFFFFELL) == 0x14 || v41 == 16;
              v43 = v42 || v41 == 12;
              if (v43 && !v38)
              {
                goto LABEL_32;
              }

              v44 = v40 == 22 || v62 == 24;
              if ((!v44 || v38) && ((v62 - 25) <= 3 && !v38 || (v62 != 29 || v38) && v40 == 30 && !v38))
              {
                goto LABEL_32;
              }
            }
          }
        }
      }

      LOBYTE(v62) = v50;
      BYTE1(v62) = v58;
      BYTE2(v62) = v57;
      BYTE3(v62) = v56;
      BYTE4(v62) = v55;
      BYTE5(v62) = v54;
      BYTE6(v62) = v53;
      if (Toolbar.BarLocation.shouldLimit(_:in:)(v17, &v62))
      {
        outlined init with copy of ToolbarItemPlacement.Role(&v68, v67);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v22;
        specialized _NativeSet.update(with:isUnique:)(v67, isUniquelyReferenced_nonNull_native, &v62);
        outlined destroy of Toolbar.UpdateContext?(&v62, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for Toolbar.UpdateContext?);
        v22 = v61;
      }

      goto LABEL_32;
    }

    outlined destroy of ToolbarItemPlacement.Role(&v68);
    result = outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v17, type metadata accessor for ToolbarStorage.Entry);
LABEL_5:
    if (++v21 == v60)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
  return result;
}