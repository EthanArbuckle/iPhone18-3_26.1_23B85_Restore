id specialized closure #1 in DeprecatedAlertBridge.preferencesDidChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  specialized PlatformAlertController.update<A>(for:with:environmentChanged:)(a2, a3, a4, 0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0x90)) = 0;
  }

  return [a6 presentViewController:a1 animated:1 completion:0];
}

{
  specialized PlatformAlertController.update<A>(for:with:environmentChanged:)(a2, a3, a4, 0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0x90)) = 0;
  }

  return [a6 presentViewController:a1 animated:1 completion:0];
}

id specialized closure #1 in sequence<A>(first:next:)(uint64_t a1, void (*a2)(id *__return_ptr, id *))
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    *(a1 + 8) = 0;
    v3 = v2;
  }

  else if (v2)
  {
    v9 = *a1;
    v6 = v2;
    a2(&v10, &v9);

    v2 = v10;
    v7 = v10;

    *a1 = v2;
  }

  return v2;
}

uint64_t specialized closure #1 in sequence<A>(first:next:)(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    *(a1 + 8) = 0;
    swift_unknownObjectRetain();
  }

  else if (v2)
  {
    v7 = *a1;
    swift_unknownObjectRetain();
    a2(&v8, &v7);
    swift_unknownObjectRelease();
    v5 = v8;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *a1 = v5;
    return v5;
  }

  return v2;
}

id specialized closure #1 in sequence<A>(first:next:)@<X0>(uint64_t a1@<X0>, void (*a2)(id *__return_ptr, id *)@<X1>, void *a3@<X8>)
{
  result = specialized closure #1 in sequence<A>(first:next:)(a1, a2);
  *a3 = result;
  return result;
}

void specialized UIKitPresentationModeLocation.set(_:transaction:)(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      _UIHostingView.dismiss()();
    }
  }
}

void specialized UIKitScenePresentationModeLocation.set(_:transaction:)(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      if (_UIHostingView.canDismissScene()())
      {
        _UIHostingView.dismissScene()();
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>, &type metadata for EnvironmentValues.BridgePropertiesEnvironmentKey, &protocol witness table for EnvironmentValues.BridgePropertiesEnvironmentKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

char *specialized _UIHostingView.invalidateHoverState(immediately:)()
{
  result = specialized _UIHostingView.pointerBridge.getter();
  if (result)
  {
    result = *&result[OBJC_IVAR____TtC7SwiftUI13PointerBridge_interaction];
    if (result)
    {

      return [result invalidate];
    }
  }

  return result;
}

uint64_t specialized _UIHostingView.baseSceneBecameKey(_:)()
{
  result = specialized _UIHostingView.rootViewDelegate.getter();
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v0;
    swift_retain_n();
    v4 = v0;
    static Update.enqueueAction(reason:_:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UISceneSession and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UISceneSession and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UISceneSession and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UISceneSession);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UISceneSession and conformance NSObject);
  }

  return result;
}

uint64_t specialized _UIHostingView.viewControllerWillDisappear(transitionCoordinator:animated:)(void *a1)
{
  if (a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    aBlock[4] = partial apply for closure #1 in _UIHostingView.viewControllerWillDisappear(transitionCoordinator:animated:);
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    aBlock[3] = &block_descriptor_11;
    v4 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v5 = v1;

    [a1 animateAlongsideTransition:0 completion:v4];
    _Block_release(v4);
    return swift_unknownObjectRelease();
  }

  else
  {
    specialized _UIHostingView.focusBridge.getter();

    if ((FocusBridge.canAcceptFocus.getter() & 1) != 0 && (v7 = FocusBridge.host.getter()) != 0)
    {
      v8 = v7;
      FocusBridge.canAcceptFocus.setter(0);
      FocusBridge.focusedItem.getter(v11);
      if (v11[5] || v11[6] != 1)
      {
        outlined init with take of FocusItem(v11, aBlock);
        v9 = FocusItem.platformResponder.getter();
        if (!v9)
        {
          v9 = v8;
        }

        v10 = v9;
        [v9 resignFirstResponder];

        return outlined destroy of FocusItem(aBlock);
      }

      else
      {

        return _ss11AnyHashableVSgWOhTm_1(v11, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
      }
    }

    else
    {
    }
  }
}

uint64_t objectdestroy_39Tm()
{

  return swift_deallocObject();
}

void outlined copy of Alert.Button?(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    outlined copy of Text.Storage(a2, a3, a4 & 1);

    outlined copy of AppIntentExecutor?(a6);
  }
}

uint64_t partial apply for specialized closure #1 in static UIAlertAction.makeAction<A>(_:title:)()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    return v1();
  }

  return result;
}

void partial apply for specialized closure #6 in SheetBridge.preferencesDidChange(_:)()
{
  specialized closure #6 in SheetBridge.preferencesDidChange(_:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), partial apply for specialized closure #1 in closure #6 in SheetBridge.preferencesDidChange(_:), &block_descriptor_75);
}

{
  specialized closure #6 in SheetBridge.preferencesDidChange(_:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), partial apply for specialized closure #1 in closure #6 in SheetBridge.preferencesDidChange(_:), &block_descriptor_111);
}

void type metadata accessor for (AnyHashable?, AnyHashable?)()
{
  if (!lazy cache variable for type metadata for (AnyHashable?, AnyHashable?))
  {
    _ss11AnyHashableVSgMaTm_2(255, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AnyHashable?, AnyHashable?));
    }
  }
}

id partial apply for specialized closure #1 in DeprecatedAlertBridge.preferencesDidChange(_:)()
{
  return specialized closure #1 in DeprecatedAlertBridge.preferencesDidChange(_:)(*(v0 + 16), v0 + 24, *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216));
}

{
  return specialized closure #1 in DeprecatedAlertBridge.preferencesDidChange(_:)(*(v0 + 16), v0 + 24, *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328));
}

uint64_t objectdestroy_68Tm()
{

  if (*(v0 + 24))
  {

    if (*(v0 + 32))
    {
    }

    if (*(v0 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 56);
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_64Tm()
{

  return swift_deallocObject();
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedDivider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedDivider and conformance ResolvedDivider();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

id UISearchTextField.textOnlySelectedRange.getter()
{
  result = [v0 selectedTextRange];
  if (result)
  {
    v2 = result;
    v3 = [v0 text];
    if (v3)
    {
      v4 = v3;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v5 = [v0 textualRange];
      v6 = [v5 start];

      v7 = [v2 start];
      v8 = [v0 offsetFromPosition:v6 toPosition:v7];

      v9 = v8 & ~(v8 >> 63);
      v10 = [v0 textualRange];
      v11 = [v10 start];

      v12 = [v2 end];
      v13 = [v0 offsetFromPosition:v11 toPosition:v12];

      if (v13 >= v9)
      {
        v14 = Range<>.init(_:in:)();

        return v14;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void UISearchTextField.textOnlySelectedRange.setter(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v6 = [v3 text];
    if (v6)
    {
      v7 = v6;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v21 = a1;
      type metadata accessor for _UIHostingView<BoundInputsView>(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
      lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
      lazy protocol witness table accessor for type String and conformance String();
      v11 = _NSRange.init<A, B>(_:in:)();
      v13 = v12;
      v14 = [v3 textualRange];
      v15 = [v14 start];

      v16 = [v3 positionFromPosition:v15 offset:v11];
      v17 = [v3 textualRange];
      v18 = [v17 start];

      if (__OFADD__(v11, v13))
      {
        __break(1u);
      }

      else
      {
        v19 = [v3 positionFromPosition:v18 offset:v11 + v13];

        v20 = 0;
        if (v16)
        {
          if (v19)
          {
            v20 = [v3 textRangeFromPosition:v16 toPosition:v19];
          }
        }

        [v3 setSelectedTextRange_];
      }
    }
  }
}

void UIKitSearchBar.updateCustomScopeBarView(_:)(__int128 *a1)
{
  v2 = a1[1];
  v3 = a1[3];
  v58 = a1[2];
  v4 = v58;
  v59 = v3;
  v5 = a1[3];
  v60 = a1[4];
  v6 = a1[1];
  v56 = *a1;
  v57 = v6;
  v7 = &v1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarView];
  v8 = *&v1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarView + 16];
  v9 = v8;
  v62[0] = *&v1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarView];
  v62[1] = v8;
  v10 = *&v1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarView + 48];
  v65 = *&v1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarView + 64];
  v11 = *&v1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarView + 48];
  v63 = *&v1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarView + 32];
  v64 = v11;
  v67[0] = v62[0];
  v67[1] = v9;
  v12 = *&v1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarView + 64];
  v67[3] = v10;
  v67[4] = v12;
  v67[2] = v63;
  v61 = *(a1 + 10);
  v66 = *&v1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarView + 80];
  v68 = *&v1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarView + 80];
  *v7 = v56;
  *(v7 + 1) = v2;
  v13 = a1[4];
  *(v7 + 10) = *(a1 + 10);
  *(v7 + 3) = v5;
  *(v7 + 4) = v13;
  *(v7 + 2) = v4;
  outlined init with copy of BoundInputsView?(v62, &v50);
  outlined init with copy of BoundInputsView?(&v56, &v50);
  outlined destroy of BoundInputsView?(v67);
  v14 = v56;
  if (v56)
  {
    if (!*&v62[0])
    {
      v15 = OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarHost;
      if (!*&v1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarHost])
      {
        v16 = *(v7 + 3);
        v46 = *(v7 + 2);
        v47 = v16;
        v48 = *(v7 + 4);
        v49 = *(v7 + 10);
        v17 = *(v7 + 1);
        v44 = *v7;
        v45 = v17;
        if (v44)
        {
          v50 = v44;
          v52 = *(v7 + 24);
          v53 = *(v7 + 40);
          v54 = *(v7 + 56);
          v55 = *(v7 + 72);
          v51 = *(v7 + 8);
          type metadata accessor for _UIHostingView<BoundInputsView>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
          v19 = objc_allocWithZone(v18);
          v40 = v46;
          v41 = v47;
          v42 = v48;
          v43 = v49;
          v38 = v44;
          v39 = v45;
          outlined init with copy of BoundInputsView?(&v44, v37);
          outlined init with copy of BoundInputsView(&v38, v37);
          v20 = specialized _UIHostingView.init(rootView:)(&v50);
          v21 = specialized _UIHostingView.base.getter();
          UIHostingViewBase.safeAreaRegions.setter();

          [v20 setHidden_];
          [v1 addSubview_];
          outlined destroy of BoundInputsView?(&v44);
          v22 = *&v1[v15];
          *&v1[v15] = v20;

          v14 = v56;
        }
      }
    }

    *&v44 = v14;
    *(&v44 + 1) = *(&v56 + 1);
    LODWORD(v45) = v57;
    *(&v45 + 1) = *(&v57 + 1);
    v46 = v58;
    LODWORD(v47) = v59;
    *(&v47 + 1) = *(&v59 + 1);
    v48 = v60;
    v49 = v61;
    v23 = *&v1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarHost];
    if (v23)
    {
      v24 = v23 + *((*MEMORY[0x1E69E7D40] & *v23) + 0x60);
      swift_beginAccess();
      v25 = *(v24 + 1);
      v38 = *v24;
      v39 = v25;
      v26 = *(v24 + 2);
      v27 = *(v24 + 3);
      v28 = *(v24 + 4);
      v43 = *(v24 + 10);
      v41 = v27;
      v42 = v28;
      v40 = v26;
      v30 = v47;
      v29 = v48;
      v31 = v46;
      *(v24 + 10) = v49;
      *(v24 + 3) = v30;
      *(v24 + 4) = v29;
      *(v24 + 2) = v31;
      v32 = v45;
      *v24 = v44;
      *(v24 + 1) = v32;
      outlined init with copy of BoundInputsView?(&v56, v37);
      v33 = v23;
      outlined init with copy of BoundInputsView(&v44, v37);
      outlined destroy of BoundInputsView(&v38);
      type metadata accessor for _UIHostingView<BoundInputsView>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>();
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
      outlined destroy of BoundInputsView(&v44);
      outlined destroy of BoundInputsView?(v62);
    }

    else
    {
      v40 = v58;
      v41 = v59;
      v42 = v60;
      v43 = v61;
      v38 = v56;
      v39 = v57;
      outlined init with copy of BoundInputsView(&v38, v37);
      outlined destroy of BoundInputsView?(v62);
      outlined destroy of BoundInputsView(&v44);
    }
  }

  else if (*&v62[0])
  {
    v34 = OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarHost;
    v35 = *&v1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarHost];
    if (v35)
    {
      [v35 removeFromSuperview];
      v36 = *&v1[v34];
      *&v1[v34] = 0;
    }

    outlined destroy of BoundInputsView?(v62);
  }
}

void closure #1 in UIKitSearchBar.enqueueFirstResponderUpdate(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_pendingIsFirstResponder;
    v3 = Strong[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_pendingIsFirstResponder];
    if (v3 != 2 && [Strong isFirstResponder] != (v3 & 1))
    {
      v4 = &selRef_becomeFirstResponder;
      if ((v3 & 1) == 0)
      {
        v4 = &selRef_resignFirstResponder;
      }

      [v1 *v4];
    }

    *(v1 + v2) = 2;
  }
}

void closure #2 in UIKitSearchBar.enqueueFirstResponderUpdate(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_pendingIsFirstResponder;
    v3 = Strong[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_pendingIsFirstResponder];
    if (v3 != 2 && [Strong isFirstResponder] != (v3 & 1))
    {
      v4 = &selRef_becomeFirstResponder;
      if ((v3 & 1) == 0)
      {
        v4 = &selRef_resignFirstResponder;
      }

      [v1 *v4];
    }

    *(v1 + v2) = 2;
  }
}

void UIKitSearchBar.updateCustomScopeBarIsActive(_:isAnimated:)(char a1, char a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarHost];
  if (!v4)
  {
    return;
  }

  if (a1)
  {
    v6 = *MEMORY[0x1E69DDCE0];
    v7 = *(MEMORY[0x1E69DDCE0] + 8);
    v8 = *(MEMORY[0x1E69DDCE0] + 24);
    if (v3[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarVisibility] != 2)
    {
      [v4 intrinsicContentSize];
      v10 = v9;
      v11 = 1;
      v12 = 4;
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *MEMORY[0x1E69DDCE0];
    v7 = *(MEMORY[0x1E69DDCE0] + 8);
    v8 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v10 = *(MEMORY[0x1E69DDCE0] + 16);
  v13 = v4;
  v11 = 0;
  v12 = 0;
LABEL_7:
  [v3 _setOverrideContentInsets_forRectEdges_];
  [v3 sizeToFit];
  [v3 layoutIfNeeded];
  v14 = [v3 superview];
  [v14 sizeToFit];

  v15 = [v3 superview];
  [v15 layoutIfNeeded];

  if (a2)
  {
    [v4 setHidden_];
    v16 = objc_opt_self();
    v17 = swift_allocObject();
    *(v17 + 16) = v11;
    *(v17 + 24) = v4;
    v29 = partial apply for closure #1 in UIKitSearchBar.updateCustomScopeBarIsActive(_:isAnimated:);
    v30 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = thunk for @escaping @callee_guaranteed () -> ();
    v28 = &block_descriptor_7;
    v18 = _Block_copy(&aBlock);
    v19 = v4;

    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v11;
    v29 = partial apply for closure #2 in UIKitSearchBar.updateCustomScopeBarIsActive(_:isAnimated:);
    v30 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v28 = &block_descriptor_13;
    v21 = _Block_copy(&aBlock);
    v22 = v19;

    [v16 animateKeyframesWithDuration:0 delay:v18 options:v21 animations:0.35 completion:0.0];

    _Block_release(v21);
    _Block_release(v18);
  }

  else
  {
    if (v11)
    {
      v23 = 1.0;
    }

    else
    {
      v23 = 0.0;
    }

    v24 = v4;
    [v24 setAlpha_];
    [v24 setHidden_];
  }
}

void closure #1 in UIKitSearchBar.updateCustomScopeBarIsActive(_:isAnimated:)(char a1, void *a2)
{
  if (a1)
  {
    v4 = 0.7;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  v9[4] = partial apply for closure #1 in closure #1 in UIKitSearchBar.updateCustomScopeBarIsActive(_:isAnimated:);
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_19_0;
  v7 = _Block_copy(v9);
  v8 = a2;

  [v5 addKeyframeWithRelativeStartTime:v7 relativeDuration:v4 animations:0.3];
  _Block_release(v7);
}

void UIKitSearchBar.roundedScopeBarSizeThatFits(_:)(double a1, double a2)
{
  v3 = *&v2[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarHost];
  if (v3)
  {
    v6 = v3;
    v7 = [v2 traitCollection];
    [v7 displayScale];

    [v6 sizeThatFits_];
  }
}

id UIKitSearchBar.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_ensureVibrancy] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_isActive] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_pendingIsFirstResponder] = 2;
  v4 = &v1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarView];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *&v1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarHost] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarVisibility] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id partial apply for closure #1 in closure #1 in UIKitSearchBar.updateCustomScopeBarIsActive(_:isAnimated:)()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(v0 + 16) setAlpha_];
}

uint64_t outlined destroy of BoundInputsView?(uint64_t a1)
{
  type metadata accessor for BoundInputsView?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _UIHostingView<BoundInputsView>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>;
  if (!lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>)
  {
    type metadata accessor for _UIHostingView<BoundInputsView>(255, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>);
  }

  return result;
}

uint64_t SearchScopesModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v30 = a2;
  swift_getWitnessTable();
  v3 = type metadata accessor for _ViewModifier_Content();
  v4 = *(a1 + 16);
  v25 = *(a1 + 24);
  v5 = *(a1 + 32);
  v24 = *(a1 + 40);
  v45 = v5;
  v46 = v24;
  v6 = type metadata accessor for Picker();
  v26 = lazy protocol witness table accessor for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes();
  WitnessTable = swift_getWitnessTable();
  v41 = &type metadata for SearchFieldConfiguration.Scopes;
  v42 = v6;
  v43 = v26;
  v44 = WitnessTable;
  type metadata accessor for StaticSourceWriter();
  v7 = type metadata accessor for ModifiedContent();
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &WitnessTable - v8;
  type metadata accessor for _EnvironmentKeyWritingModifier<Image.Scale>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SearchScopeActivation.Role>);
  v10 = type metadata accessor for ModifiedContent();
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &WitnessTable - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &WitnessTable - v14;
  v32 = v4;
  v33 = v25;
  v34 = v5;
  v35 = v24;
  v16 = v27;
  v36 = v27;
  v17 = swift_getWitnessTable();
  View.viewAlias<A, B>(_:_:)(&type metadata for SearchFieldConfiguration.Scopes, partial apply for closure #1 in SearchScopesModifier.body(content:), v31, v3, &type metadata for SearchFieldConfiguration.Scopes, v6, v17);
  swift_getKeyPath();
  LOBYTE(v41) = *(v16 + *(a1 + 56));
  v39 = v17;
  v40 = &protocol witness table for StaticSourceWriter<A, B>;
  v18 = swift_getWitnessTable();
  View.environment<A>(_:_:)();

  (*(v28 + 8))(v9, v7);
  v19 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchScopeActivation.Role> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SearchScopeActivation.Role> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SearchScopeActivation.Role>);
  v37 = v18;
  v38 = v19;
  v20 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v12, v10, v20);
  v21 = *(v29 + 8);
  v21(v12, v10);
  static ViewBuilder.buildExpression<A>(_:)(v15, v10, v20);
  return (v21)(v15, v10);
}

uint64_t closure #1 in SearchScopesModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = MEMORY[0x1E6981148];
  v21 = a2;
  v22 = a3;
  v23 = MEMORY[0x1E6981138];
  v24 = a4;
  v25 = a5;
  v9 = type metadata accessor for Picker();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v16 = type metadata accessor for SearchScopesModifier();
  SearchScopesModifier.scopePicker.getter(v16, v12);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v12, v9, WitnessTable);
  v18 = *(v10 + 8);
  v18(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)(v15, v9, WitnessTable);
  return (v18)(v15, v9);
}

uint64_t SearchScopesModifier.scopePicker.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Binding();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  Binding.projectedValue.getter();
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *&v11 = v5;
  *(&v11 + 1) = v9;
  v14 = v11;
  v15 = v10;
  v16 = v2;
  return Picker.init(selection:content:label:)(v8, partial apply for closure #1 in SearchScopesModifier.scopePicker.getter, v13, closure #2 in SearchScopesModifier.scopePicker.getter, MEMORY[0x1E6981148], v9, a2, MEMORY[0x1E6981138], v10, *(&v10 + 1));
}

uint64_t key path getter for EnvironmentValues.searchScopeActivation : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchScopeActivationKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchScopeActivationKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchScopeActivationKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchScopeActivationKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchScopeActivationKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchScopeActivationKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.searchScopeActivation : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchScopeActivationKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchScopeActivationKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchScopeActivationKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t closure #1 in SearchScopesModifier.scopePicker.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = v11;
  v17[1] = v12;
  v17[2] = v13;
  v17[3] = v14;
  v15 = type metadata accessor for SearchScopesModifier();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v15 + 52), a3, a5);
  static ViewBuilder.buildExpression<A>(_:)(v10, a3, a5);
  return (*(v8 + 8))(v10, a3);
}

uint64_t closure #2 in SearchScopesModifier.scopePicker.getter@<X0>(uint64_t a1@<X8>)
{
  result = static Text.System.search.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t SearchScopesModifier.init(scope:scopes:activation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = type metadata accessor for Binding();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for SearchScopesModifier();
  result = (*(*(a4 - 8) + 32))(a5 + *(v11 + 52), a2, a4);
  *(a5 + *(v11 + 56)) = v9;
  return result;
}

uint64_t View.searchScopes<A, B>(_:scopes:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v32 = a7;
  v30 = a9;
  v31 = a4;
  v28 = a3;
  v29 = a2;
  v27 = a1;
  v26 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Binding();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  v33[0] = a5;
  v33[1] = a6;
  v33[2] = a8;
  v33[3] = a10;
  v19 = type metadata accessor for SearchScopesModifier();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v26 - v22;
  v24 = (*(v16 + 16))(v18, v27, v15, v21);
  v29(v24);
  LOBYTE(v33[0]) = 2;
  SearchScopesModifier.init(scope:scopes:activation:)(v18, v14, v33, a6, v23);
  MEMORY[0x18D00A570](v23, v31, v19, v32);
  return (*(v20 + 8))(v23, v19);
}

uint64_t View.searchScopes<A, B>(_:activation:_:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v33 = a8;
  v31 = a9;
  v32 = a5;
  v29 = a4;
  v30 = a3;
  v28 = a1;
  v27[1] = a10;
  v27[2] = a11;
  MEMORY[0x1EEE9AC00](a1);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Binding();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v27 - v18;
  v34[0] = a6;
  v34[1] = a7;
  v34[2] = a10;
  v34[3] = a11;
  v20 = type metadata accessor for SearchScopesModifier();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v27 - v23;
  LOBYTE(a2) = *a2;
  v25 = (*(v17 + 16))(v19, v28, v16, v22);
  v30(v25);
  LOBYTE(v34[0]) = a2;
  SearchScopesModifier.init(scope:scopes:activation:)(v19, v15, v34, a7, v24);
  MEMORY[0x18D00A570](v24, v32, v20, v33);
  return (*(v21 + 8))(v24, v20);
}

uint64_t View.searchScopes<A, B>(_:isActive:scopes:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v33 = a8;
  v31 = a9;
  v32 = a5;
  v28 = a4;
  v29 = a3;
  v30 = a2;
  v27 = a1;
  v26[1] = a11;
  MEMORY[0x1EEE9AC00](a1);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Binding();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v26 - v17;
  v34[0] = a6;
  v34[1] = a7;
  v34[2] = a10;
  v34[3] = a11;
  v19 = type metadata accessor for SearchScopesModifier();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v26 - v22;
  v24 = (*(v16 + 16))(v18, v27, v15, v21);
  v29(v24);
  LOBYTE(v34[0]) = v30;
  SearchScopesModifier.init(scope:scopes:activation:)(v18, v14, v34, a7, v23);
  MEMORY[0x18D00A570](v23, v32, v19, v33);
  return (*(v20 + 8))(v23, v19);
}

uint64_t SearchCustomScopeBarModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for _EnvironmentKeyWritingModifier<Image.Scale>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Visibility>);
  v26 = type metadata accessor for ModifiedContent();
  v25 = *(a1 + 16);
  v27 = lazy protocol witness table accessor for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar();
  v5 = *(a1 + 24);
  v43 = &type metadata for EnvironmentValues.SearchCustomScopeBar;
  v44 = v25;
  v45 = v27;
  v46 = v5;
  type metadata accessor for OptionalSourceWriter();
  v6 = type metadata accessor for ModifiedContent();
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  type metadata accessor for ViewInputFlagModifier<HasCustomScopeBar>();
  v9 = type metadata accessor for ModifiedContent();
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  swift_getKeyPath();
  LOBYTE(v41) = *(v3 + 1);
  WitnessTable = swift_getWitnessTable();
  View.environment<A>(_:_:)();

  v41 = v43;
  v42 = v44;
  v16 = v25;
  v32 = v25;
  v33 = v5;
  v34 = v3;
  v17 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchScopeActivation.Role> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Visibility>);
  v39 = WitnessTable;
  v40 = v17;
  v18 = v26;
  v19 = swift_getWitnessTable();
  View.optionalViewAlias<A, B>(_:_:)(&type metadata for EnvironmentValues.SearchCustomScopeBar, partial apply for closure #1 in SearchCustomScopeBarModifier.body(content:), v31, v18, &type metadata for EnvironmentValues.SearchCustomScopeBar, v16, v19, v27, v5);

  v37 = v19;
  v38 = &protocol witness table for OptionalSourceWriter<A, B>;
  v20 = swift_getWitnessTable();
  lazy protocol witness table accessor for type HasCustomScopeBar and conformance HasCustomScopeBar();
  View.input<A>(_:)();
  (*(v28 + 8))(v8, v6);
  HasCustomScope = lazy protocol witness table accessor for type ViewInputFlagModifier<HasCustomScopeBar> and conformance ViewInputFlagModifier<A>();
  v35 = v20;
  v36 = HasCustomScope;
  v22 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v11, v9, v22);
  v23 = *(v29 + 8);
  v23(v11, v9);
  static ViewBuilder.buildExpression<A>(_:)(v14, v9, v22);
  return (v23)(v14, v9);
}

uint64_t EnvironmentValues.searchCustomScopeBarVisibility.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchCustomScopeBarVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchCustomScopeBarVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchCustomScopeBarVisibilityKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchCustomScopeBarVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchCustomScopeBarVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchCustomScopeBarVisibilityKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.searchCustomScopeBarVisibility : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchCustomScopeBarVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchCustomScopeBarVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchCustomScopeBarVisibilityKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchCustomScopeBarVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchCustomScopeBarVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchCustomScopeBarVisibilityKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.searchCustomScopeBarVisibility : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchCustomScopeBarVisibilityKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchCustomScopeBarVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchCustomScopeBarVisibilityKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t closure #1 in SearchCustomScopeBarModifier.body(content:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 == 1)
  {
    v6 = *(type metadata accessor for SearchCustomScopeBarModifier() + 40);
    v11 = *(a2 - 8);
    (*(v11 + 16))(a3, &a1[v6], a2);
    v7 = v11;
    v8 = 0;
  }

  else
  {
    v7 = *(a2 - 8);
    v8 = 1;
  }

  v9 = *(v7 + 56);

  return v9(a3, v8, 1, a2);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance HasCustomScopeBar()
{
  lazy protocol witness table accessor for type HasCustomScopeBar and conformance HasCustomScopeBar();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t View.searchScopeBar<A>(isActive:_:)(uint64_t a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  v19 = a4;
  v8 = a1;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SearchCustomScopeBarModifier();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  a2(v14);
  *v16 = v8;
  v16[1] = 0;
  (*(v9 + 32))(&v16[*(v12 + 40)], v11, a5);
  MEMORY[0x18D00A570](v16, v19, v12, v20);
  return (*(v13 + 8))(v16, v12);
}

uint64_t View.searchScopeBar<A>(isActive:visibility:_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(double)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v22 = a6;
  v20 = a7;
  v21 = a4;
  v10 = a1;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchCustomScopeBarModifier();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  a3(v16);
  *v18 = v10;
  v18[1] = a2;
  (*(v11 + 32))(&v18[*(v14 + 40)], v13, a5);
  MEMORY[0x18D00A570](v18, v21, v14, v22);
  return (*(v15 + 8))(v18, v14);
}

uint64_t getEnumTagSinglePayload for SearchScopeActivation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 3;
  }

  else
  {
    v7 = -4;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t type metadata completion function for SearchCustomScopeBarModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchCustomScopeBarModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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

  v9 = ((v6 + 2) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 2] & ~v6);
      }

      v15 = *a1;
      v16 = v15 >= 2;
      v17 = (v15 + 2147483646) & 0x7FFFFFFF;
      if (v16)
      {
        return (v17 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
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
        LODWORD(v9) = *a1 | (a1[2] << 16);
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

void storeEnumTagSinglePayload for SearchCustomScopeBarModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 2) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_44:
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
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
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
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 2] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t type metadata completion function for SearchScopesModifier()
{
  result = type metadata accessor for Binding();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SearchScopesModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v4 - 8);
  v9 = *(v8 + 80);
  v10 = ((v7 + 16) & ~v7) + *(v6 + 64) + v9;
  v11 = *(v8 + 64);
  v12 = (*(v8 + 80) | *(v6 + 80)) & 0x100000;
  v13 = *a2;
  *a1 = *a2;
  if ((v9 | v7) > 7 || v12 != 0 || v11 + (v10 & ~v9) + 1 > 0x18)
  {
    a1 = (v13 + (((v9 | v7) & 0xF8 ^ 0x1F8) & ((v9 | v7) + 16)));
  }

  else
  {
    v16 = ~v9;
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v18;
    v19 = *(v6 + 16);
    v22 = v4;

    v19(v17 + 1, v18 + 1, v5);
    (*(v8 + 16))((a1 + v10) & v16, (a2 + v10) & v16, v22);
    *(((a1 + v10) & v16) + v11) = *(((a2 + v10) & v16) + v11);
  }

  return a1;
}

uint64_t destroy for SearchScopesModifier(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 15;

  v5 = *(*(a2 + 16) - 8);
  v6 = v5 + 8;
  v7 = *(v5 + 80);
  (*(v5 + 8))(((v4 & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7);
  v8 = *(*(a2 + 24) - 8);
  v9 = *(v8 + 8);
  v10 = (*(v6 + 56) + a1 + *(v8 + 80) + ((v7 + 16) & ~v7)) & ~*(v8 + 80);

  return v9(v10);
}

void *initializeWithCopy for SearchScopesModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(a3 + 16);
  v9 = *(*(v8 - 8) + 16);
  v10 = *(v8 - 8) + 16;
  v11 = *(*(v8 - 8) + 80);
  v12 = v6 + v11 + 8;
  v13 = v7 + v11 + 8;

  v9(v12 & ~v11, v13 & ~v11, v8);
  v14 = *(*(a3 + 24) - 8);
  v15 = v14 + 16;
  v16 = *(v14 + 80);
  v17 = ((v11 + 16) & ~v11) + *(v10 + 48) + v16;
  v18 = (a1 + v17) & ~v16;
  v19 = (a2 + v17) & ~v16;
  (*(v14 + 16))(v18, v19);
  *(*(v15 + 48) + v18) = *(*(v15 + 48) + v19);
  return a1;
}

void *assignWithCopy for SearchScopesModifier(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  (*(v8 + 24))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = *(v9 + 40);
  v12 = *(*(a3 + 24) - 8);
  v13 = v12 + 24;
  v14 = *(v12 + 80);
  v15 = ((v10 + 16) & ~v10) + v11 + v14;
  v16 = (a1 + v15) & ~v14;
  v17 = (a2 + v15) & ~v14;
  (*(v12 + 24))(v16, v17);
  *(*(v13 + 40) + v16) = *(*(v13 + 40) + v17);
  return a1;
}

void *initializeWithTake for SearchScopesModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  (*(v8 + 32))((v6 + v10 + 8) & ~v10, (v7 + v10 + 8) & ~v10);
  v11 = *(v9 + 32);
  v12 = *(*(a3 + 24) - 8);
  v13 = v12 + 32;
  v14 = *(v12 + 80);
  v15 = ((v10 + 16) & ~v10) + v11 + v14;
  v16 = (a1 + v15) & ~v14;
  v17 = (a2 + v15) & ~v14;
  (*(v12 + 32))(v16, v17);
  *(*(v13 + 32) + v16) = *(*(v13 + 32) + v17);
  return a1;
}

void *assignWithTake for SearchScopesModifier(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  (*(v8 + 40))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = *(*(a3 + 24) - 8);
  v12 = v11 + 40;
  v13 = *(v11 + 80);
  v14 = ((v10 + 16) & ~v10) + *(v9 + 24) + v13;
  v15 = (a1 + v14) & ~v13;
  v16 = (a2 + v14) & ~v13;
  (*(v11 + 40))(v15, v16);
  *(*(v12 + 24) + v15) = *(*(v12 + 24) + v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for SearchScopesModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v4 + 80);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = ((v10 + 16) & ~v10) + *(*(*(a3 + 16) - 8) + 64) + v11;
  v14 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v15 = *(*(v7 - 8) + 64) + (v13 & ~v11) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v6 < v9)
      {
        return (*(v8 + 48))((a1 + v13) & ~v11, v9, v7);
      }

      v23 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v23 + v10 + 8) & ~v10);
      }

      v24 = *v23;
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void storeEnumTagSinglePayload for SearchScopesModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v10 + 80);
  if (v11 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = ((v12 + 16) & ~v12) + *(*(*(a4 + 16) - 8) + 64);
  v16 = *(*(v9 - 8) + 64) + ((v15 + v13) & ~v13) + 1;
  v17 = a3 >= v14;
  v18 = a3 - v14;
  if (v18 != 0 && v17)
  {
    if (v16 <= 3)
    {
      v22 = ((v18 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v16 < 4)
    {
      v21 = (v20 >> (8 * v16)) + 1;
      if (*(*(v9 - 8) + 64) + ((v15 + v13) & ~v13) != -1)
      {
        v24 = v20 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_61:
              if (v19 == 2)
              {
                *&a1[v16] = v21;
              }

              else
              {
                *&a1[v16] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v19)
    {
      a1[v16] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v16] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v19)
  {
    goto LABEL_33;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v8 >= v11)
  {
    if (v8 >= a2)
    {
      v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v31 = *(v6 + 56);

        v31((v29 + v12 + 8) & ~v12);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v30 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v30 = a2 - 1;
        }

        *v29 = v30;
      }
    }

    else
    {
      if (v15 <= 3)
      {
        v26 = ~(-1 << (8 * v15));
      }

      else
      {
        v26 = -1;
      }

      if (v15)
      {
        v27 = v26 & (~v8 + a2);
        if (v15 <= 3)
        {
          v28 = v15;
        }

        else
        {
          v28 = 4;
        }

        bzero(a1, v15);
        if (v28 > 2)
        {
          if (v28 == 3)
          {
            *a1 = v27;
            a1[2] = BYTE2(v27);
          }

          else
          {
            *a1 = v27;
          }
        }

        else if (v28 == 1)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v27;
        }
      }
    }
  }

  else
  {
    v25 = *(v10 + 56);

    v25(&a1[v15 + v13] & ~v13);
  }
}

void type metadata accessor for ViewInputFlagModifier<HasCustomScopeBar>()
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<HasCustomScopeBar>)
  {
    lazy protocol witness table accessor for type HasCustomScopeBar and conformance HasCustomScopeBar();
    v0 = type metadata accessor for ViewInputFlagModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewInputFlagModifier<HasCustomScopeBar>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<HasCustomScopeBar> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<HasCustomScopeBar> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<HasCustomScopeBar> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for ViewInputFlagModifier<HasCustomScopeBar>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<HasCustomScopeBar> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t PlatformViewHitTestFilterGesture.Value.gestureValue.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t PlatformViewHitTestFilterGesture.Value.gestureValue.setter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 40);

  return v4(v1, a1, AssociatedTypeWitness);
}

void PlatformViewHitTestFilterGesture.Value.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
}

uint64_t PlatformViewHitTestFilterGesture.Value.location.setter(uint64_t result, double a2, double a3)
{
  v4 = (v3 + *(result + 40));
  *v4 = a2;
  v4[1] = a3;
  return result;
}

uint64_t PlatformViewHitTestFilterGesture.Value.init(gestureValue:view:location:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  result = type metadata accessor for PlatformViewHitTestFilterGesture.Value();
  *(a3 + *(result + 36)) = a2;
  v12 = (a3 + *(result + 40));
  *v12 = a4;
  v12[1] = a5;
  return result;
}

uint64_t PlatformViewHitTestFilterGesture.init(_:filter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = (a5 + *(type metadata accessor for PlatformViewHitTestFilterGesture() + 36));
  *v10 = a2;
  v10[1] = a3;
  v11 = *(*(a4 - 8) + 32);

  return v11(a5, a1, a4);
}

uint64_t protocol witness for GestureStateProtocol.init() in conformance PlatformViewHitTestFilterGesture<A>.GestureState@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  *a1 = result & 1;
  return result;
}

uint64_t PlatformViewHitTestFilterGesture.internalBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = *(a1 - 8);
  v31 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  type metadata accessor for EventListener<HitTestableEvent>();
  v8 = v7;
  v9 = *(a1 + 24);
  v10 = type metadata accessor for PlatformViewHitTestFilterGesture.Value();
  v11 = lazy protocol witness table accessor for type EventListener<HitTestableEvent> and conformance EventListener<A>();
  v35 = v6;
  v36 = v8;
  v37 = v10;
  v38 = v9;
  v39 = v11;
  v26 = v11;
  v30 = MEMORY[0x1E6981A00];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v32 = OpaqueTypeMetadata2;
  v33 = v13;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v27 = &v24 - v14;
  LOBYTE(v35) = 1;
  v15 = swift_allocObject();
  *(v15 + 16) = v6;
  *(v15 + 24) = v9;
  v25 = swift_checkMetadataState();
  v16 = swift_checkMetadataState();
  v17 = v29;
  Gesture.combined<A, B>(with:body:)();

  type metadata accessor for PlatformViewHitTestFilterGesture.GestureState();
  v18 = v28;
  (*(v3 + 16))(v28, v17, a1);
  v19 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  *(v20 + 24) = v9;
  (*(v3 + 32))(v20 + v19, v18, a1);
  swift_getWitnessTable();
  v35 = v6;
  v36 = v25;
  v37 = v16;
  v38 = v9;
  v39 = v26;
  swift_getOpaqueTypeConformance2();
  v21 = v27;
  v22 = v32;
  static GestureStateProtocol.gesture<A, B>(content:_:)();

  return (*(v33 + 8))(v21, v22);
}

void type metadata accessor for EventListener<HitTestableEvent>()
{
  if (!lazy cache variable for type metadata for EventListener<HitTestableEvent>)
  {
    v0 = type metadata accessor for EventListener();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EventListener<HitTestableEvent>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EventListener<HitTestableEvent> and conformance EventListener<A>()
{
  result = lazy protocol witness table cache variable for type EventListener<HitTestableEvent> and conformance EventListener<A>;
  if (!lazy protocol witness table cache variable for type EventListener<HitTestableEvent> and conformance EventListener<A>)
  {
    type metadata accessor for EventListener<HitTestableEvent>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventListener<HitTestableEvent> and conformance EventListener<A>);
  }

  return result;
}

void closure #1 in PlatformViewHitTestFilterGesture.internalBody.getter(uint64_t a1, __int128 *a2)
{
  *&v32[10] = *(a2 + 42);
  v2 = a2[1];
  v30 = *a2;
  v31 = v2;
  *v32 = a2[2];
  if (v32[25] > 1u)
  {
    if (v32[25] != 2)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  if (v32[25])
  {
LABEL_6:
    v29 = *a2;
    v3 = v31;
    goto LABEL_7;
  }

  v3 = v31;
  if (v31 == 1)
  {
    goto LABEL_16;
  }

  v29 = *a2;
LABEL_7:
  v4 = *(a2 + 40);
  v26 = *(a2 + 24);
  v27 = v4;
  v28 = *(a2 + 56);
  v21 = v29;
  v22 = v3;
  v23 = v26;
  v24 = v4;
  v25 = v28;
  outlined init with copy of GesturePhase<HitTestableEvent>(&v30, v20);
  HitTestableEvent.hitTestLocation.getter();
  if (!v3)
  {
    outlined destroy of GesturePhase<HitTestableEvent>(&v30, type metadata accessor for GesturePhase<HitTestableEvent>);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
LABEL_15:
    outlined destroy of GesturePhase<HitTestableEvent>(&v17, type metadata accessor for EntityTargetingViewProviding?);
    goto LABEL_16;
  }

  v7 = v6;
  v8 = v5;
  outlined init with copy of GesturePhase<HitTestableEvent>(&v30, v20);
  type metadata accessor for ResponderNode();
  type metadata accessor for EntityTargetingViewProviding();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    goto LABEL_14;
  }

  if (!*(&v18 + 1))
  {
LABEL_14:
    outlined destroy of GesturePhase<HitTestableEvent>(&v30, type metadata accessor for GesturePhase<HitTestableEvent>);
    goto LABEL_15;
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v17, &v21);
  v9 = v23;
  __swift_project_boxed_opaque_existential_1(&v21, v23);
  v10 = (*(*(&v9 + 1) + 8))(v9, *(&v9 + 1));
  if (v10)
  {
    v11 = v10;
    [v10 convertPoint:0 fromView:{v8, v7}];
    v13 = v12;
    v15 = v14;
    outlined destroy of GesturePhase<HitTestableEvent>(&v30, type metadata accessor for GesturePhase<HitTestableEvent>);
    v20[0] = v13;
    v20[1] = v15;
    v16 = __swift_destroy_boxed_opaque_existential_1(&v21);
    MEMORY[0x1EEE9AC00](v16);
    swift_getAssociatedTypeWitness();
    type metadata accessor for GesturePhase();
    type metadata accessor for PlatformViewHitTestFilterGesture.Value();
    GesturePhase.map<A>(_:)();

    return;
  }

  outlined destroy of GesturePhase<HitTestableEvent>(&v30, type metadata accessor for GesturePhase<HitTestableEvent>);
  __swift_destroy_boxed_opaque_existential_1(&v21);
LABEL_16:
  type metadata accessor for PlatformViewHitTestFilterGesture.Value();
  type metadata accessor for GesturePhase();
  swift_storeEnumTagMultiPayload();
}

id closure #1 in closure #1 in PlatformViewHitTestFilterGesture.internalBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, uint64_t a4@<X8>)
{
  v15 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1, v8);
  PlatformViewHitTestFilterGesture.Value.init(gestureValue:view:location:)(v10, v15, a4, *a3, a3[1]);
  v12 = v15;

  return v12;
}

uint64_t closure #2 in PlatformViewHitTestFilterGesture.internalBody.getter@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v25 = a4;
  v26 = a3;
  v8 = type metadata accessor for PlatformViewHitTestFilterGesture.Value();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  v24 = a1;
  if ((*a1 & 1) == 0)
  {
    v23 = a5;
    type metadata accessor for GesturePhase();
    v22 = a2;
    GesturePhase.unwrapped.getter();
    if ((*(v13 + 48))(v12, 1, v8) == 1)
    {
      (*(v10 + 8))(v12, v9);
    }

    else
    {
      (*(v13 + 32))(v16, v12, v8);
      v17 = type metadata accessor for PlatformViewHitTestFilterGesture();
      v18 = (*(v26 + *(v17 + 36)))(*&v16[*(v8 + 36)], *&v16[*(v8 + 40)], *&v16[*(v8 + 40) + 8]);
      (*(v13 + 8))(v16, v8);
      if ((v18 & 1) == 0)
      {
        return swift_storeEnumTagMultiPayload();
      }

      *v24 = 1;
    }

    a2 = v22;
    a5 = v23;
  }

  v19 = type metadata accessor for GesturePhase();
  return (*(*(v19 - 8) + 16))(a5, a2, v19);
}

uint64_t partial apply for closure #2 in PlatformViewHitTestFilterGesture.internalBody.getter@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for PlatformViewHitTestFilterGesture() - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return closure #2 in PlatformViewHitTestFilterGesture.internalBody.getter(a1, a2, v9, v7, a3);
}

uint64_t protocol witness for static Gesture._makeGesture(gesture:inputs:) in conformance PlatformViewHitTestFilterGesture<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE1F78](a1, a2, a3, WitnessTable);
}

uint64_t type metadata completion function for PlatformViewHitTestFilterGesture.Value()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PlatformViewHitTestFilterGesture.Value(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  if ((v7 & 0x1000F8) != 0 || ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + (((v7 & 0xF8) + 23) & ~(v7 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    v10 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = *v11;
    *v10 = *v11;
    *((v10 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = v12;
  }

  return a1;
}

void destroy for PlatformViewHitTestFilterGesture.Value(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8) + 8;
  (*v3)(a1, AssociatedTypeWitness);
  v4 = *((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t initializeWithCopy for PlatformViewHitTestFilterGesture.Value(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 16;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9;
  return a1;
}

uint64_t assignWithCopy for PlatformViewHitTestFilterGesture.Value(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 24;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v8 += 15;
  v10 = *v7;
  *v7 = v9;
  v11 = v9;

  v12 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *(v8 & 0xFFFFFFFFFFFFFFF8);
  v12[1] = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  return a1;
}

uint64_t initializeWithTake for PlatformViewHitTestFilterGesture.Value(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 32;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for PlatformViewHitTestFilterGesture.Value(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 40;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v8 += 15;
  v10 = *v7;
  *v7 = v9;

  v11 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *(v8 & 0xFFFFFFFFFFFFFFF8);
  v11[1] = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformViewHitTestFilterGesture.Value(_DWORD *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = a2 - v7 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if (v6 < 0x7FFFFFFF)
    {
      v18 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }

    else
    {
      v17 = *(v5 + 48);

      return v17(a1);
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void storeEnumTagSinglePayload for PlatformViewHitTestFilterGesture.Value(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v13 = 0;
    v14 = a2 - v9;
    if (a2 <= v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = a3 - v9 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v9;
    if (a2 <= v9)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(a1 + v10) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v10) = 0;
      }

      else if (v13)
      {
        *(a1 + v10) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = ((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = (a2 - 1);
        }

        *v18 = v19;
      }

      else
      {
        v17 = *(v6 + 56);

        v17(a1, a2);
      }

      return;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v9 + a2;
    bzero(a1, v10);
    *a1 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(a1 + v10) = v15;
    }

    else
    {
      *(a1 + v10) = v15;
    }
  }

  else if (v13)
  {
    *(a1 + v10) = v15;
  }
}

uint64_t outlined init with copy of GesturePhase<HitTestableEvent>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GesturePhase<HitTestableEvent>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for GesturePhase<HitTestableEvent>()
{
  if (!lazy cache variable for type metadata for GesturePhase<HitTestableEvent>)
  {
    v0 = type metadata accessor for GesturePhase();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GesturePhase<HitTestableEvent>);
    }
  }
}

uint64_t outlined destroy of GesturePhase<HitTestableEvent>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for EntityTargetingViewProviding?()
{
  if (!lazy cache variable for type metadata for EntityTargetingViewProviding?)
  {
    type metadata accessor for EntityTargetingViewProviding();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EntityTargetingViewProviding?);
    }
  }
}

unint64_t type metadata accessor for EntityTargetingViewProviding()
{
  result = lazy cache variable for type metadata for EntityTargetingViewProviding;
  if (!lazy cache variable for type metadata for EntityTargetingViewProviding)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for EntityTargetingViewProviding);
  }

  return result;
}

uint64_t TabView.init(selection:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Binding();
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  (*(v8 + 24))(a3, a1, v7);
  v9 = type metadata accessor for TabView();
  a2(v9, v10, v11, v12);
  return (*(v8 + 8))(a1, v7);
}

uint64_t TabView.init<A>(selection:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v25 = a2;
  v26 = a7;
  v24[1] = a3;
  MEMORY[0x1EEE9AC00](a1);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Binding();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(a8, 1, 1, v15);
  v18 = type metadata accessor for Optional();
  (*(*(v18 - 8) + 8))(a8, v18);
  (*(v16 + 16))(a8, a1, v15);
  v19 = (v17)(a8, 0, 1, v15);
  v25(v19);
  (*(v16 + 8))(a1, v15);
  v27 = a4;
  v28 = a5;
  v20 = v26;
  v29 = a6;
  v30 = v26;
  v21 = type metadata accessor for TabContentBuilder.Content();
  WitnessTable = swift_getWitnessTable();
  v27 = a4;
  v28 = v21;
  v29 = a6;
  v30 = WitnessTable;
  type metadata accessor for TabView();
  return PickerBuilder.Content.init(_:)(v14, a4, a5, a6, v20);
}

uint64_t TabView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = a1[2];
  type metadata accessor for Binding();
  v62 = type metadata accessor for Optional();
  v59 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v57 = &v41 - v4;
  v5 = a1[4];
  v6 = type metadata accessor for TabViewStyleConfiguration();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v56 = &v41 - v7;
  v48 = type metadata accessor for ResolvedTabView();
  v60 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v58 = &v41 - v8;
  v9 = type metadata accessor for TabViewStyleConfiguration.Content();
  v10 = a1[3];
  type metadata accessor for StyleContextWriter<ContainerStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<ContainerStyleContext>, MEMORY[0x1E697FBF0], MEMORY[0x1E697FBE8], MEMORY[0x1E697F4C8]);
  type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for ModifiedContent();
  v50 = v9;
  WitnessTable = swift_getWitnessTable();
  v52 = WitnessTable;
  v13 = a1[5];
  v14 = lazy protocol witness table accessor for type StyleContextWriter<ContainerStyleContext> and conformance StyleContextWriter<A>();
  v78 = v13;
  v79 = v14;
  v55 = MEMORY[0x1E697E858];
  v76 = swift_getWitnessTable();
  v77 = &protocol witness table for AccessibilityContainerModifier;
  v51 = v11;
  v47 = swift_getWitnessTable();
  *&v74 = v9;
  *(&v74 + 1) = v11;
  *&v75 = WitnessTable;
  *(&v75 + 1) = v47;
  type metadata accessor for StaticSourceWriter();
  v15 = type metadata accessor for ModifiedContent();
  v54 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v41 - v16;
  type metadata accessor for StyleContextWriter<ContainerStyleContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<DisableNavigationDestination>, MEMORY[0x1E69808B0], MEMORY[0x1E69808A8], MEMORY[0x1E697FD28]);
  v17 = type metadata accessor for ModifiedContent();
  v53 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v41 - v18;
  *&v19 = v3;
  *(&v19 + 1) = v10;
  v42 = v19;
  *&v20 = v5;
  *(&v20 + 1) = v13;
  v41 = v20;
  v75 = v20;
  v74 = v19;
  v46 = type metadata accessor for TabView.TransformEnvironment();
  v21 = type metadata accessor for ModifiedContent();
  v49 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v45 = &v41 - v26;
  v27 = v57;
  v28 = v61;
  (*(v59 + 16))(v57, v61, v62, v25);
  v29 = v56;
  _ListStyleConfiguration.init(selection:)(v27, v56);
  v30 = v58;
  ResolvedTabView.init(configuration:)(v29, v58);
  v65 = v42;
  v66 = v41;
  v67 = v28;
  v31 = v44;
  v32 = v48;
  View.viewAlias<A, B>(_:_:)(v50, partial apply for closure #1 in TabView.body.getter, v64, v48, v50, v51, &protocol witness table for ResolvedTabView<A>);
  (*(v60 + 8))(v30, v32);
  v72 = &protocol witness table for ResolvedTabView<A>;
  v73 = &protocol witness table for StaticSourceWriter<A, B>;
  v33 = swift_getWitnessTable();
  v34 = v43;
  View.input<A>(_:)();
  (*(v54 + 8))(v31, v15);
  v35 = lazy protocol witness table accessor for type ViewInputFlagModifier<DisableNavigationDestination> and conformance ViewInputFlagModifier<A>();
  v70 = v33;
  v71 = v35;
  v36 = swift_getWitnessTable();
  MEMORY[0x18D00A570](v36, v17, v46, v36);
  (*(v53 + 8))(v34, v17);
  v68 = v36;
  v69 = &protocol witness table for TabView<A, B>.TransformEnvironment;
  v37 = swift_getWitnessTable();
  v38 = v45;
  static ViewBuilder.buildExpression<A>(_:)(v23, v21, v37);
  v39 = *(v49 + 8);
  v39(v23, v21);
  static ViewBuilder.buildExpression<A>(_:)(v38, v21, v37);
  return (v39)(v38, v21);
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<ContainerStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<ContainerStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<ContainerStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for StyleContextWriter<ContainerStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<ContainerStyleContext>, MEMORY[0x1E697FBF0], MEMORY[0x1E697FBE8], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<ContainerStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

void type metadata accessor for StyleContextWriter<ContainerStyleContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t closure #1 in TabView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25[1] = a1;
  v27 = a6;
  type metadata accessor for StyleContextWriter<ContainerStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<ContainerStyleContext>, MEMORY[0x1E697FBF0], MEMORY[0x1E697FBE8], MEMORY[0x1E697F4C8]);
  v10 = type metadata accessor for ModifiedContent();
  v26 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v25 - v18;
  v32[0] = a2;
  v32[1] = a3;
  v32[2] = a4;
  v32[3] = a5;
  type metadata accessor for TabView();
  View.styleContext<A>(_:)();
  if (one-time initialization token for contain != -1)
  {
    swift_once();
  }

  v32[0] = static AccessibilityChildBehavior.contain;
  v20 = lazy protocol witness table accessor for type StyleContextWriter<ContainerStyleContext> and conformance StyleContextWriter<A>();
  v30 = a5;
  v31 = v20;

  WitnessTable = swift_getWitnessTable();
  View.accessibilityElement(children:)(v32, v10, WitnessTable);

  (*(v26 + 8))(v12, v10);
  v28 = WitnessTable;
  v29 = &protocol witness table for AccessibilityContainerModifier;
  v22 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v16, v13, v22);
  v23 = *(v14 + 8);
  v23(v16, v13);
  static ViewBuilder.buildExpression<A>(_:)(v19, v13, v22);
  return (v23)(v19, v13);
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<DisableNavigationDestination> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<DisableNavigationDestination> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<DisableNavigationDestination> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for StyleContextWriter<ContainerStyleContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<DisableNavigationDestination>, MEMORY[0x1E69808B0], MEMORY[0x1E69808A8], MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<DisableNavigationDestination> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t TabView.init<A>(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = 0;
  a4[1] = 0;
  v10(v7);
  v11 = MEMORY[0x1E69E73E0];
  v16 = MEMORY[0x1E69E73E0];
  v17 = a2;
  v12 = MEMORY[0x1E69E73F0];
  v18 = MEMORY[0x1E69E73F0];
  v19 = a3;
  v13 = type metadata accessor for TabContentBuilder.Content();
  WitnessTable = swift_getWitnessTable();
  v16 = v11;
  v17 = v13;
  v18 = v12;
  v19 = WitnessTable;
  type metadata accessor for TabView();
  return PickerBuilder.Content.init(_:)(v9, v11, a2, v12, a3);
}

uint64_t specialized static TabView.TransformEnvironment.makeBridgeProperties(modifier:properties:)(void *a1)
{
  if ((*a1 & 0x11) != 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFEELL;
  }

  type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement.Role>();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 40) = 0;
  *(inited + 48) = 0;
  *(inited + 32) = 0;
  v3 = inited + 32;
  *(inited + 56) = xmmword_18CD79540;
  v4 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI16ToolbarPlacementV4RoleO_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of ToolbarPlacement.Role(v3);

  a1[2] = v4;
  return result;
}

uint64_t SymbolEffect.speed(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2[1];
  v8 = *v2;
  v9[0] = v3;
  *(v9 + 13) = *(v2 + 29);
  v4 = *(v9 + 13);
  *a1 = v8;
  *(a1 + 16) = v3;
  *(a1 + 29) = v4;
  v5 = a2;
  *(a1 + 28) = v5;
  return outlined init with copy of SymbolEffect(&v8, &v7);
}

uint64_t outlined init with copy of SymbolEffect(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  outlined copy of _SymbolEffect.Storage(*a1, v5, v6, v7);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = *(a1 + 28);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 28) = v8;
  return a2;
}

uint64_t SymbolEffect.repeatCount(_:)@<X0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *&v12[13] = *(v3 + 29);
  v4 = v3[1];
  v11 = *v3;
  *v12 = v4;
  v5 = *&v12[21];
  v6 = a1;
  v7 = v6;
  if (a2)
  {
    v7 = 0.0;
  }

  v10[52] = a2 & 1;
  v8 = v3[1];
  *a3 = *v3;
  *(a3 + 16) = v8;
  *(a3 + 32) = v7;
  *(a3 + 36) = a2 & 1;
  *(a3 + 37) = v5;
  return outlined init with copy of SymbolEffect(&v11, v10);
}

uint64_t SymbolEffect.repeatDelay(_:)@<X0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3[1];
  v10 = *v3;
  v11[0] = v4;
  *(v11 + 13) = *(v3 + 29);
  v5 = a1;
  v6 = v5;
  if (a2)
  {
    v6 = 0.0;
  }

  v9[52] = a2 & 1;
  v7 = v3[1];
  *a3 = *v3;
  *(a3 + 16) = v7;
  *(a3 + 32) = *(v3 + 4);
  *(a3 + 40) = v6;
  *(a3 + 44) = a2 & 1;
  return outlined init with copy of SymbolEffect(&v10, v9);
}

uint64_t SymbolEffect.PulseConfiguration.byLayer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 8) = 1;
  return outlined copy of _SymbolEffect.Trigger?(v2);
}

uint64_t outlined copy of _SymbolEffect.Trigger?(uint64_t result)
{
  if ((~result & 0xF000000000000006) != 0)
  {
    return outlined copy of _SymbolEffect.Trigger(result);
  }

  return result;
}

uint64_t outlined copy of _SymbolEffect.Trigger(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t SymbolEffect.PulseConfiguration.wholeSymbol.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 8) = 0;
  return outlined copy of _SymbolEffect.Trigger?(v2);
}

uint64_t static SymbolEffect.PulseConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v8 = *a1;
  v9 = v2;
  v6 = v3;
  v7 = v4;
  outlined copy of _SymbolEffect.Trigger?(v8);
  outlined copy of _SymbolEffect.Trigger?(v3);
  LOBYTE(v3) = specialized static _SymbolEffect.PulseConfiguration.== infix(_:_:)(&v8, &v6);
  outlined consume of _SymbolEffect.Trigger?(v6);
  outlined consume of _SymbolEffect.Trigger?(v8);
  return v3 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SymbolEffect.PulseConfiguration(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v8 = *a1;
  v9 = v2;
  v6 = v3;
  v7 = v4;
  outlined copy of _SymbolEffect.Trigger?(v8);
  outlined copy of _SymbolEffect.Trigger?(v3);
  LOBYTE(v3) = specialized static _SymbolEffect.PulseConfiguration.== infix(_:_:)(&v8, &v6);
  outlined consume of _SymbolEffect.Trigger?(v6);
  outlined consume of _SymbolEffect.Trigger?(v8);
  return v3 & 1;
}

uint64_t static SymbolEffect.pulse(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 28) = 1065353216;
  *(a2 + 36) = 1;
  *(a2 + 40) = 0;
  *(a2 + 44) = 1;
  return outlined copy of _SymbolEffect.Trigger?(v2);
}

void SymbolEffect.BreatheConfiguration.onlyScale.getter(uint64_t a1@<X8>)
{
  *a1 = 0xF000000000000006;
  *(a1 + 12) = 1;
  *(a1 + 8) = 1;
}

uint64_t static SymbolEffect.pulse.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *a2 = a3;
  *(a2 + 16) = 0;
  *(a2 + 24) = result;
  *(a2 + 28) = 1065353216;
  *(a2 + 36) = 1;
  *(a2 + 40) = 0;
  *(a2 + 44) = 1;
  return result;
}

void static SymbolEffect.BounceConfiguration.up.getter(uint64_t a1@<X8>)
{
  *a1 = 0xF000000000000006;
  *(a1 + 12) = 1;
  *(a1 + 8) = 1;
}

void static SymbolEffect.BounceConfiguration.down.getter(uint64_t a1@<X8>)
{
  *a1 = 0xF000000000000006;
  *(a1 + 12) = 1;
  *(a1 + 8) = 2;
}

void static SymbolEffect.BounceConfiguration.byLayer.getter(uint64_t a1@<X8>)
{
  *a1 = 0xF000000000000006;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
}

void static SymbolEffect.BounceConfiguration.wholeSymbol.getter(uint64_t a1@<X8>)
{
  *a1 = 0xF000000000000006;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
}

uint64_t SymbolEffect.BounceConfiguration.byLayer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 12) = 1;
  return outlined copy of _SymbolEffect.Trigger?(v2);
}

uint64_t SymbolEffect.BounceConfiguration.wholeSymbol.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  return outlined copy of _SymbolEffect.Trigger?(v2);
}

uint64_t static SymbolEffect.BreatheConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 12);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  outlined copy of _SymbolEffect.Trigger?(v11);
  outlined copy of _SymbolEffect.Trigger?(v4);
  LOBYTE(v4) = specialized static _SymbolEffect.BounceConfiguration.== infix(_:_:)(&v11, &v8);
  outlined consume of _SymbolEffect.Trigger?(v8);
  outlined consume of _SymbolEffect.Trigger?(v11);
  return v4 & 1;
}

double static SymbolEffect.WiggleConfiguration.default.getter@<D0>(uint64_t a1@<X8>)
{
  result = -3.10503618e231;
  *a1 = xmmword_18CD79630;
  *(a1 + 16) = 1;
  *(a1 + 20) = 0;
  *(a1 + 24) = 1;
  return result;
}

void static SymbolEffect.WiggleConfiguration.linear(angle:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = 0xF000000000000006;
  *(a1 + 20) = 0;
  *(a1 + 24) = 1;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
}

double static SymbolEffect.WiggleConfiguration.rotational.getter@<D0>(uint64_t a1@<X8>)
{
  result = -3.10503618e231;
  *a1 = xmmword_18CD79630;
  *(a1 + 16) = 1;
  *(a1 + 24) = 1;
  *(a1 + 20) = 3;
  return result;
}

uint64_t SymbolEffect.WiggleConfiguration.continuous(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 5);
  v5 = *(v2 + 24);
  v6 = *(v2 + 25);
  v7 = *v2;
  *a2 = *v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 25) = v6;
  v8 = v4 & 0xFFFFFEFF;
  if (a1)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  *(a2 + 20) = v8 | v9;
  return outlined copy of _SymbolEffect.Trigger?(v7);
}

uint64_t SymbolEffect.WiggleConfiguration.byLayer(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 5);
  v5 = *(v2 + 25);
  v6 = *v2;
  *a2 = *v2;
  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  *(a2 + 25) = v5;
  *(a2 + 24) = a1;
  return outlined copy of _SymbolEffect.Trigger?(v6);
}

uint64_t static SymbolEffect.WiggleConfiguration.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 5);
  v4 = *(a1 + 24);
  v5 = *(a1 + 25);
  v6 = *(a2 + 16);
  v7 = *(a2 + 5);
  v8 = *(a2 + 24);
  v9 = *(a2 + 25);
  v17 = *a1;
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v12 = *a2;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  outlined copy of _SymbolEffect.Trigger?(v17);
  outlined copy of _SymbolEffect.Trigger?(v12);
  v10 = specialized static _SymbolEffect.WiggleConfiguration.== infix(_:_:)(&v17, &v12);
  outlined consume of _SymbolEffect.Trigger?(v12);
  outlined consume of _SymbolEffect.Trigger?(v17);
  return v10 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SymbolEffect.WiggleConfiguration(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 5);
  v4 = *(a1 + 24);
  v5 = *(a1 + 25);
  v6 = *(a2 + 16);
  v7 = *(a2 + 5);
  v8 = *(a2 + 24);
  v9 = *(a2 + 25);
  v17 = *a1;
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v12 = *a2;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  outlined copy of _SymbolEffect.Trigger?(v17);
  outlined copy of _SymbolEffect.Trigger?(v12);
  v10 = specialized static _SymbolEffect.WiggleConfiguration.== infix(_:_:)(&v17, &v12);
  outlined consume of _SymbolEffect.Trigger?(v12);
  outlined consume of _SymbolEffect.Trigger?(v17);
  return v10 & 1;
}

uint64_t static SymbolEffect.wiggle(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16) | (*(a1 + 5) << 32);
  if (*(a1 + 25))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = *a1;
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4 | v2 | 0x3000;
  *(a2 + 28) = 1065353216;
  *(a2 + 36) = 1;
  *(a2 + 40) = 0;
  *(a2 + 44) = 1;
  return outlined copy of _SymbolEffect.Trigger?(v5);
}

uint64_t static SymbolEffect.wiggle<A>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 25);
  v11 = *(v5 + 20);
  (*(v12 + 16))(&v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v3);
  outlined copy of _SymbolEffect.Trigger?(v6);
  AnyEquatable.init<A>(_:)();
  v13 = v21;
  outlined consume of _SymbolEffect.Trigger?(v6);
  if (v10)
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14 | v9 | 0x3000;
  v20 = 1;
  v19[0] = 1;
  outlined copy of _SymbolEffect.Trigger?(v13);
  result = outlined consume of _SymbolEffect.Trigger?(v13);
  v17 = v20;
  v18 = v19[0];
  *a2 = v13;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 | (v11 << 32);
  *(a2 + 24) = v15;
  *(a2 + 28) = 1065353216;
  *(a2 + 36) = v17;
  *(a2 + 40) = 0;
  *(a2 + 44) = v18;
  return result;
}

uint64_t SymbolEffect.RotateConfiguration.continuous(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 12);
  *a2 = *v2;
  *(a2 + 12) = v5;
  v6 = v4 & 0xFFFFFFEF;
  if (a1)
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 8) = v6 | v7;
  return outlined copy of _SymbolEffect.Trigger?(v3);
}

uint64_t SymbolEffect.RotateConfiguration.byLayer(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  *a2 = *v2;
  *(a2 + 8) = v4;
  *(a2 + 12) = a1;
  return outlined copy of _SymbolEffect.Trigger?(v3);
}

uint64_t static SymbolEffect.breathe(_:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = 0x100000000;
  if (!*(a1 + 12))
  {
    v4 = 0;
  }

  v5 = v4 | *(a1 + 8);
  *a3 = v3;
  *(a3 + 8) = v5;
  *(a3 + 16) = 0;
  *(a3 + 24) = a2;
  *(a3 + 28) = 1065353216;
  *(a3 + 36) = 1;
  *(a3 + 40) = 0;
  *(a3 + 44) = 1;
  return outlined copy of _SymbolEffect.Trigger?(v3);
}

uint64_t static SymbolEffect.bounce<A>(_:value:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W4>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 12);
  (*(v11 + 16))(&v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v5);
  outlined copy of _SymbolEffect.Trigger?(v8);
  AnyEquatable.init<A>(_:)();
  v12 = v20;
  outlined consume of _SymbolEffect.Trigger?(v8);
  v13 = 0x100000000;
  if (!v10)
  {
    v13 = 0;
  }

  v14 = v13 | v9;
  v19 = 1;
  v18[0] = 1;
  outlined copy of _SymbolEffect.Trigger?(v12);
  result = outlined consume of _SymbolEffect.Trigger?(v12);
  v16 = v19;
  v17 = v18[0];
  *a3 = v12;
  *(a3 + 8) = v14;
  *(a3 + 16) = 0;
  *(a3 + 24) = a2;
  *(a3 + 28) = 1065353216;
  *(a3 + 36) = v16;
  *(a3 + 40) = 0;
  *(a3 + 44) = v17;
  return result;
}

uint64_t SymbolEffect.VariableColorConfiguration.reversing.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3 | 8;
  return outlined copy of _SymbolEffect.Trigger?(v2);
}

uint64_t SymbolEffect.VariableColorConfiguration.nonReversing.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3 & 0xFFFFFFF7;
  return outlined copy of _SymbolEffect.Trigger?(v2);
}

uint64_t SymbolEffect.VariableColorConfiguration.hideOn.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3 | 2;
  return outlined copy of _SymbolEffect.Trigger?(v2);
}

uint64_t SymbolEffect.VariableColorConfiguration.hideOff.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3 & 0xFFFFFFFD;
  return outlined copy of _SymbolEffect.Trigger?(v2);
}

uint64_t static SymbolEffect.VariableColorConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v8 = *a1;
  v9 = v2;
  v6 = v3;
  v7 = v4;
  outlined copy of _SymbolEffect.Trigger?(v8);
  outlined copy of _SymbolEffect.Trigger?(v3);
  LOBYTE(v3) = specialized static _SymbolEffect.VariableColorConfiguration.== infix(_:_:)(&v8, &v6);
  outlined consume of _SymbolEffect.Trigger?(v6);
  outlined consume of _SymbolEffect.Trigger?(v8);
  return v3 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SymbolEffect.VariableColorConfiguration(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v8 = *a1;
  v9 = v2;
  v6 = v3;
  v7 = v4;
  outlined copy of _SymbolEffect.Trigger?(v8);
  outlined copy of _SymbolEffect.Trigger?(v3);
  LOBYTE(v3) = specialized static _SymbolEffect.VariableColorConfiguration.== infix(_:_:)(&v8, &v6);
  outlined consume of _SymbolEffect.Trigger?(v6);
  outlined consume of _SymbolEffect.Trigger?(v8);
  return v3 & 1;
}

uint64_t static SymbolEffect.variableColor(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 20480;
  *(a2 + 28) = 1065353216;
  *(a2 + 36) = 1;
  *(a2 + 40) = 0;
  *(a2 + 44) = 1;
  return outlined copy of _SymbolEffect.Trigger?(v2);
}

unsigned int *static SymbolEffect.scale(_:)@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0x100000000;
  if (!*(result + 4))
  {
    v2 = 0;
  }

  v3 = v2 | *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = v3;
  *(a2 + 24) = 24576;
  *(a2 + 28) = 1065353216;
  *(a2 + 36) = 1;
  *(a2 + 40) = 0;
  *(a2 + 44) = 1;
  return result;
}

void static SymbolEffect.HiddenConfiguration.down.getter(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 4) = 0;
  *(a1 + 5) = 1;
}

void static SymbolEffect.HiddenConfiguration.up.getter(uint64_t a1@<X8>)
{
  *a1 = 3;
  *(a1 + 4) = 0;
  *(a1 + 5) = 1;
}

void static SymbolEffect.HiddenConfiguration.byLayer.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 5) = 1;
}

void SymbolEffect.HiddenConfiguration.byLayer.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 6);
  *a1 = *v1;
  *(a1 + 4) = v2;
  *(a1 + 5) = 1;
  *(a1 + 6) = v3;
}

void SymbolEffect.HiddenConfiguration.wholeSymbol.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 6);
  *a1 = *v1;
  *(a1 + 4) = v2;
  *(a1 + 6) = v3;
}

uint64_t static SymbolEffect.hidden(_:_:)@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0x100000000;
  if (!*(a2 + 4))
  {
    v3 = 0;
  }

  v4 = v3 | *a2;
  v5 = 0x10000000000;
  if (!*(a2 + 5))
  {
    v5 = 0;
  }

  v6 = 0x1000000000000;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if ((result & 1) == 0)
  {
    v6 = 0;
  }

  *a3 = v4 | v5 | v6;
  *(a3 + 24) = 28672;
  *(a3 + 28) = 1065353216;
  *(a3 + 36) = 1;
  *(a3 + 40) = 0;
  *(a3 + 44) = 1;
  return result;
}

void static SymbolEffect.ReplaceConfiguration.up.getter(uint64_t a1@<X8>)
{
  *a1 = 3;
  *(a1 + 4) = 1;
  *(a1 + 8) = 1065353216;
}

void static SymbolEffect.ReplaceConfiguration.down.getter(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 4) = 1;
  *(a1 + 8) = 1065353216;
}

void static SymbolEffect.ReplaceConfiguration.offUp.getter(uint64_t a1@<X8>)
{
  *a1 = 4;
  *(a1 + 4) = 1;
  *(a1 + 8) = 1065353216;
}

void static SymbolEffect.ReplaceConfiguration.byLayer.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 1065353216;
}

void static SymbolEffect.ReplaceConfiguration.wholeSymbol.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 1065353216;
}

float SymbolEffect.ReplaceConfiguration.byLayer.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 4) = 1;
  *(a1 + 8) = result;
  return result;
}

float SymbolEffect.ReplaceConfiguration.wholeSymbol.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 4) = 0;
  *(a1 + 8) = result;
  return result;
}

float SymbolEffect.ReplaceConfiguration.noSlashes.getter@<S0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  result = *(v1 + 8);
  *a1 = *v1 | 0x20;
  *(a1 + 4) = v2;
  *(a1 + 8) = result;
  return result;
}

float SymbolEffect.ReplaceConfiguration.noBadges.getter@<S0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  result = *(v1 + 8);
  *a1 = *v1 | 0x40;
  *(a1 + 4) = v2;
  *(a1 + 8) = result;
  return result;
}

uint64_t static SymbolEffect.ReplaceConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    return (*a1 == *a2) & ~(*(a1 + 4) ^ *(a2 + 4));
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SymbolEffect.ReplaceConfiguration(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    return (*a1 == *a2) & ~(*(a1 + 4) ^ *(a2 + 4));
  }

  else
  {
    return 0;
  }
}

uint64_t static SymbolEffect.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v12 = *a1;
  v13[0] = v2;
  *(v13 + 13) = *(a1 + 29);
  v3 = a2[1];
  v14 = *a2;
  v15[0] = v3;
  *(v15 + 13) = *(a2 + 29);
  v4 = a1[1];
  v10 = *a1;
  v11[0] = v4;
  *(v11 + 13) = *(a1 + 29);
  v5 = a2[1];
  v8 = *a2;
  v9[0] = v5;
  *(v9 + 13) = *(a2 + 29);
  outlined init with copy of _SymbolEffect(&v12, &v18);
  outlined init with copy of _SymbolEffect(&v14, &v18);
  v6 = specialized static _SymbolEffect.== infix(_:_:)(&v10, &v8);
  v16 = v8;
  v17[0] = v9[0];
  *(v17 + 13) = *(v9 + 13);
  outlined destroy of _SymbolEffect(&v16);
  v18 = v10;
  v19[0] = v11[0];
  *(v19 + 13) = *(v11 + 13);
  outlined destroy of _SymbolEffect(&v18);
  return v6 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SymbolEffect(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v12 = *a1;
  v13[0] = v2;
  *(v13 + 13) = *(a1 + 29);
  v3 = a2[1];
  v14 = *a2;
  v15[0] = v3;
  *(v15 + 13) = *(a2 + 29);
  v4 = a1[1];
  v10 = *a1;
  v11[0] = v4;
  *(v11 + 13) = *(a1 + 29);
  v5 = a2[1];
  v8 = *a2;
  v9[0] = v5;
  *(v9 + 13) = *(a2 + 29);
  outlined init with copy of _SymbolEffect(&v12, &v18);
  outlined init with copy of _SymbolEffect(&v14, &v18);
  v6 = specialized static _SymbolEffect.== infix(_:_:)(&v10, &v8);
  v16 = v8;
  v17[0] = v9[0];
  *(v17 + 13) = *(v9 + 13);
  outlined destroy of _SymbolEffect(&v16);
  v18 = v10;
  v19[0] = v11[0];
  *(v19 + 13) = *(v11 + 13);
  outlined destroy of _SymbolEffect(&v18);
  return v6 & 1;
}

__n128 _SymbolEffectModifier.init(effect:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);
  outlined consume of SymbolEffect?(0, 0, 4294967294, 2u);
  result = *a1;
  v8 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v8;
  *(a2 + 32) = v4;
  *(a2 + 44) = v6;
  *(a2 + 40) = v5;
  return result;
}

uint64_t _SymbolEffectModifier.effect.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 44);
  v8 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 44) = v7;
  *(a1 + 40) = v8;
  return outlined copy of SymbolEffect?(v2, v3, v4, v5);
}

__n128 _SymbolEffectModifier.effect.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 44);
  outlined consume of SymbolEffect?(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  result = *a1;
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  *(v1 + 32) = v3;
  *(v1 + 44) = v5;
  *(v1 + 40) = v4;
  return result;
}

uint64_t static _SymbolEffectModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2)
{

  return static _SymbolEffectModifier._makeInputs(modifier:inputs:)(a1, a2, protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key, lazy protocol witness table accessor for type _SymbolEffectModifier.EffectEnvironment and conformance _SymbolEffectModifier.EffectEnvironment);
}

uint64_t _SymbolEffectModifier.EffectEnvironment.value.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
  v12 = *Value;
  v13 = v4;

  result = AGGraphGetValue();
  v6 = *(result + 16);
  if ((~v6 & 0xFFFFFFFE) != 0 || (*(result + 24) & 0xFEFELL) != 2)
  {
    v8 = *result;
    *v9 = *(result + 16);
    *&v9[8] = *(result + 24);
    *&v9[12] = HIDWORD(*(result + 24));
    *&v9[16] = *(result + 32);
    v9[20] = HIDWORD(*(result + 32)) & 1;
    *&v9[24] = *(result + 40);
    v9[28] = *(result + 44) & 1;
    outlined copy of SymbolEffect?(*result, *(result + 8), v6, *&v9[8]);
    EnvironmentValues.appendSymbolEffect(_:for:)();
    v10 = v8;
    v11[0] = *v9;
    *(v11 + 13) = *&v9[13];
    result = outlined destroy of _SymbolEffect(&v10);
    v3 = v12;
    v4 = v13;
  }

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _SymbolEffectModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance _SymbolEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance _SymbolEffectModifier(a1, a2, a3, a4, protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key, lazy protocol witness table accessor for type _SymbolEffectModifier.EffectEnvironment and conformance _SymbolEffectModifier.EffectEnvironment);
}

uint64_t _SymbolEffectsModifier.effects.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t static _SymbolEffectsModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2)
{

  return static _SymbolEffectModifier._makeInputs(modifier:inputs:)(a1, a2, protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key, lazy protocol witness table accessor for type _SymbolEffectsModifier.EffectsEnvironment and conformance _SymbolEffectsModifier.EffectsEnvironment);
}

uint64_t static _SymbolEffectModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  swift_beginAccess();
  v8 = AGMakeUniqueID();
  a3(v8, v6);
  a4();
  Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _SymbolEffectsModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _SymbolEffectModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(int *, _BYTE *, uint64_t, uint64_t))
{
  v12 = *a1;
  outlined init with copy of _ViewListInputs(a2, v16);
  v15 = v12;
  v13 = a8(&v15, v16, a5, a7);
  a3(v13, v16);
  return outlined destroy of _ViewListInputs(v16);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance _SymbolEffectsModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance _SymbolEffectModifier(a1, a2, a3, a4, protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key, lazy protocol witness table accessor for type _SymbolEffectsModifier.EffectsEnvironment and conformance _SymbolEffectsModifier.EffectsEnvironment);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance _SymbolEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), void (*a6)(void))
{
  swift_beginAccess();
  v10 = AGMakeUniqueID();
  a5(v10, v8);
  a6();
  Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter();
}

uint64_t static _SymbolEffectsRemovedModifier._makeInputs(modifier:inputs:)()
{
  swift_beginAccess();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _SymbolEffectsRemovedModifier.EffectEnvironment and conformance _SymbolEffectsRemovedModifier.EffectEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter();
}

_BYTE *_SymbolEffectsRemovedModifier.EffectEnvironment.value.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
  v6 = *Value;

  result = AGGraphGetValue();
  if (*result == 1)
  {
    result = EnvironmentValues.symbolEffects.setter();
    v3 = v6;
  }

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _SymbolEffectsRemovedModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance _SymbolEffectsRemovedModifier()
{
  swift_beginAccess();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _SymbolEffectsRemovedModifier.EffectEnvironment and conformance _SymbolEffectsRemovedModifier.EffectEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter();
}

uint64_t SymbolEffect.HiddenTransition.init(config:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 4);
  v3 = *(result + 5);
  v4 = *(result + 6);
  *a2 = *result;
  *(a2 + 4) = v2;
  *(a2 + 5) = v3;
  *(a2 + 6) = v4;
  return result;
}

void SymbolEffect.HiddenTransition.config.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 5);
  v4 = *(v1 + 6);
  *a1 = *v1;
  *(a1 + 4) = v2;
  *(a1 + 5) = v3;
  *(a1 + 6) = v4;
}

uint64_t SymbolEffect.HiddenTransition.config.setter(uint64_t result)
{
  v2 = *(result + 4);
  v3 = *(result + 5);
  v4 = *(result + 6);
  *v1 = *result;
  *(v1 + 4) = v2;
  *(v1 + 5) = v3;
  *(v1 + 6) = v4;
  return result;
}

void SymbolEffect.HiddenTransition.body(content:phase:)(char a1@<W1>, uint64_t a2@<X8>)
{
  v3 = 0x100000000;
  if (!*(v2 + 4))
  {
    v3 = 0;
  }

  v4 = v3 | *v2;
  v5 = 0x10000000000;
  if (!*(v2 + 5))
  {
    v5 = 0;
  }

  *a2 = v4 | v5 | ((a1 != 1) << 48);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0x3F80000000007000;
  *(a2 + 32) = 0x100000000;
  *(a2 + 44) = 1;
  *(a2 + 40) = 0;
}

uint64_t SymbolEffect.HiddenTransition._makeContentTransition(transition:)(uint64_t a1)
{
  if (*a1 != 3)
  {
    if (v1[1])
    {
      v5 = 0;
      if (*(v1 + 5))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v5 = *v1;
      if ((*(v1 + 5) | ((*v1 & 0x10u) >> 4)))
      {
LABEL_8:
        type metadata accessor for _ContiguousArrayStorage<ContentTransition.Effect>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentTransition.Effect>, MEMORY[0x1E697ED00], MEMORY[0x1E69E6F90]);
        v4 = swift_allocObject();
        *(v4 + 16) = xmmword_18CD63400;
        *(v4 + 32) = 17;
        *(v4 + 36) = v5;
        v3 = 1;
        *(v4 + 40) = 1;
        *(v4 + 44) = 1065353216;
        *(v4 + 48) = 0;
        *(v4 + 52) = 0x3F80000000000000;
        *(v4 + 60) = 3;
        goto LABEL_9;
      }
    }

    v5 |= 0x10u;
    goto LABEL_8;
  }

  v3 = 0;
  v4 = 1;
LABEL_9:
  result = outlined consume of _Transition_ContentTransition.Result(*(a1 + 24), *(a1 + 32));
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  return result;
}

unsigned int *static ContentTransition.symbolReplace(_:)@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[2];
  v3 = 0x100000000;
  if (!*(result + 4))
  {
    v3 = 0;
  }

  *a2 = v3 | *result;
  *(a2 + 12) = 0;
  *(a2 + 8) = v2;
  *(a2 + 13) = 2;
  return result;
}

uint64_t SymbolEffect.encode(to:)()
{
  v1 = v0[1];
  v8 = *v0;
  v9[0] = v1;
  *(v9 + 13) = *(v0 + 29);
  v2 = v0[1];
  v6 = *v0;
  v7[0] = v2;
  *(v7 + 13) = *(v0 + 29);
  outlined init with copy of _SymbolEffect(&v8, &v4);
  _SymbolEffect.encode(to:)();
  v4 = v6;
  v5[0] = v7[0];
  *(v5 + 13) = *(v7 + 13);
  return outlined destroy of _SymbolEffect(&v4);
}

double SymbolEffect.init(from:)@<D0>(_OWORD *a1@<X8>)
{
  _SymbolEffect.init(from:)();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = *v5;
    result = *&v5[13];
    *(a1 + 29) = *&v5[13];
  }

  return result;
}

double protocol witness for ProtobufDecodableMessage.init(from:) in conformance SymbolEffect@<D0>(_OWORD *a1@<X8>)
{
  _SymbolEffect.init(from:)();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = *v5;
    result = *&v5[13];
    *(a1 + 29) = *&v5[13];
  }

  return result;
}

uint64_t protocol witness for ProtobufEncodableMessage.encode(to:) in conformance SymbolEffect()
{
  v1 = v0[1];
  v8 = *v0;
  v9[0] = v1;
  *(v9 + 13) = *(v0 + 29);
  v2 = v0[1];
  v6 = *v0;
  v7[0] = v2;
  *(v7 + 13) = *(v0 + 29);
  outlined init with copy of _SymbolEffect(&v8, &v4);
  _SymbolEffect.encode(to:)();
  v4 = v6;
  v5[0] = v7[0];
  *(v5 + 13) = *(v7 + 13);
  return outlined destroy of _SymbolEffect(&v4);
}

BOOL SymbolEffect.isIndefinite.getter()
{
  if ((*(v0 + 36) & 1) == 0)
  {
    return (~*(v0 + 32) & 0x7F800000) == 0;
  }

  return (~*v0 & 0xF000000000000006) == 0 || *(v0 + 24) >> 12 > 5u;
}

uint64_t specialized static _SymbolEffect.PulseConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if ((~*a1 & 0xF000000000000006) != 0)
  {
    v9 = *a1;
    if ((~v4 & 0xF000000000000006) != 0)
    {
      v8 = v4;
      outlined copy of _SymbolEffect.Trigger?(v2);
      outlined copy of _SymbolEffect.Trigger?(v4);
      outlined copy of _SymbolEffect.Trigger?(v2);
      v7 = MEMORY[0x18D0049C0](&v9, &v8);
      outlined consume of _SymbolEffect.Trigger(v8);
      outlined consume of _SymbolEffect.Trigger(v9);
      outlined consume of _SymbolEffect.Trigger?(v2);
      if (v7)
      {
        return v3 ^ v5 ^ 1u;
      }

      return 0;
    }

    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined copy of _SymbolEffect.Trigger?(v4);
    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger(v2);
LABEL_6:
    outlined consume of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger?(v4);
    return 0;
  }

  outlined copy of _SymbolEffect.Trigger?(*a1);
  outlined copy of _SymbolEffect.Trigger?(v4);
  if ((~v4 & 0xF000000000000006) != 0)
  {
    goto LABEL_6;
  }

  outlined consume of _SymbolEffect.Trigger?(v2);
  return v3 ^ v5 ^ 1u;
}

uint64_t outlined consume of _SymbolEffect.Trigger?(uint64_t result)
{
  if ((~result & 0xF000000000000006) != 0)
  {
    return outlined consume of _SymbolEffect.Trigger(result);
  }

  return result;
}

uint64_t outlined consume of _SymbolEffect.Trigger(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
  }

  return result;
}

BOOL specialized static SymbolEffect.HiddenConfiguration.== infix(_:_:)(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *(a1 + 5);
  v4 = *(a1 + 6);
  v5 = *a2;
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  if (a1[1])
  {
    return (a2[1] & 1) != 0 && v2 == v5 && ((v3 ^ v6) & 1) == 0 && v4 == v7;
  }

  return (a2[1] & 1) == 0 && v2 == v5 && ((v3 ^ v6) & 1) == 0 && ((v4 ^ v7) & 1) == 0;
}

uint64_t specialized static _SymbolEffect.WiggleConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 20);
  v12 = *(a2 + 24);
  v13 = *(a2 + 25);
  if ((~*a1 & 0xF000000000000006) == 0)
  {
    v20 = *(a2 + 16);
    v14 = *(a1 + 16);
    v15 = *(a2 + 20);
    v16 = *(a1 + 20);
    v17 = *(a2 + 24);
    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined copy of _SymbolEffect.Trigger?(v8);
    if ((~v8 & 0xF000000000000006) == 0)
    {
      outlined consume of _SymbolEffect.Trigger?(v2);
      v12 = v17;
      v5 = v16;
      v11 = v15;
      v4 = v14;
      v10 = v20;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v22 = *a1;
  if ((~v8 & 0xF000000000000006) == 0)
  {
    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined copy of _SymbolEffect.Trigger?(v8);
    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger(v2);
LABEL_6:
    outlined consume of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger?(v8);
    return 0;
  }

  v21 = v8;
  outlined copy of _SymbolEffect.Trigger?(v2);
  outlined copy of _SymbolEffect.Trigger?(v8);
  outlined copy of _SymbolEffect.Trigger?(v2);
  v19 = MEMORY[0x18D0049C0](&v22, &v21);
  outlined consume of _SymbolEffect.Trigger(v21);
  outlined consume of _SymbolEffect.Trigger(v22);
  outlined consume of _SymbolEffect.Trigger?(v2);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  result = 0;
  if (v4)
  {
    if (!v10)
    {
      return result;
    }
  }

  else if ((v10 & 1) != 0 || v3 != v9)
  {
    return result;
  }

  if (v5 == v11 && ((v6 ^ v12) & 1) == 0)
  {
    return v7 ^ v13 ^ 1u;
  }

  return result;
}

uint64_t specialized static _SymbolEffect.BounceConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 12);
  if ((~*a1 & 0xF000000000000006) == 0)
  {
    outlined copy of _SymbolEffect.Trigger?(*a1);
    outlined copy of _SymbolEffect.Trigger?(v5);
    if ((~v5 & 0xF000000000000006) == 0)
    {
      outlined consume of _SymbolEffect.Trigger?(v2);
      if (v3 != v6)
      {
        return 0;
      }

      return v4 ^ v7 ^ 1u;
    }

LABEL_7:
    outlined consume of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger?(v5);
    return 0;
  }

  v11 = *a1;
  if ((~v5 & 0xF000000000000006) == 0)
  {
    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined copy of _SymbolEffect.Trigger?(v5);
    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger(v2);
    goto LABEL_7;
  }

  v10 = v5;
  outlined copy of _SymbolEffect.Trigger?(v2);
  outlined copy of _SymbolEffect.Trigger?(v5);
  outlined copy of _SymbolEffect.Trigger?(v2);
  v9 = MEMORY[0x18D0049C0](&v11, &v10);
  outlined consume of _SymbolEffect.Trigger(v10);
  outlined consume of _SymbolEffect.Trigger(v11);
  outlined consume of _SymbolEffect.Trigger?(v2);
  result = 0;
  if ((v9 & 1) != 0 && v3 == v6)
  {
    return v4 ^ v7 ^ 1u;
  }

  return result;
}

BOOL specialized static _SymbolEffect.VariableColorConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if ((~*a1 & 0xF000000000000006) != 0)
  {
    v9 = *a1;
    if ((~v4 & 0xF000000000000006) != 0)
    {
      v8 = v4;
      outlined copy of _SymbolEffect.Trigger?(v2);
      outlined copy of _SymbolEffect.Trigger?(v4);
      outlined copy of _SymbolEffect.Trigger?(v2);
      v7 = MEMORY[0x18D0049C0](&v9, &v8);
      outlined consume of _SymbolEffect.Trigger(v8);
      outlined consume of _SymbolEffect.Trigger(v9);
      outlined consume of _SymbolEffect.Trigger?(v2);
      if (v7)
      {
        return v3 == v5;
      }

      return 0;
    }

    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined copy of _SymbolEffect.Trigger?(v4);
    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger(v2);
LABEL_6:
    outlined consume of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger?(v4);
    return 0;
  }

  outlined copy of _SymbolEffect.Trigger?(*a1);
  outlined copy of _SymbolEffect.Trigger?(v4);
  if ((~v4 & 0xF000000000000006) != 0)
  {
    goto LABEL_6;
  }

  outlined consume of _SymbolEffect.Trigger?(v2);
  return v3 == v5;
}

uint64_t specialized static _SymbolEffect.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 28);
  v4 = *(a1 + 32);
  v6 = *(a1 + 36);
  v7 = *(a1 + 40);
  v8 = *(a1 + 44);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v13 = *(a2 + 28);
  v12 = *(a2 + 32);
  v14 = *(a2 + 36);
  v15 = *(a2 + 40);
  v16 = *(a2 + 44);
  v17 = *(a1 + 24);
  v18 = *(a2 + 24);
  v26 = *a1;
  v27 = v2;
  v28 = v3;
  v29 = v17;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v18;
  outlined copy of _SymbolEffect.Storage(v26, v2, v3, v17);
  outlined copy of _SymbolEffect.Storage(v9, v10, v11, v18);
  LOBYTE(v9) = specialized static _SymbolEffect.Storage.== infix(_:_:)(&v26, &v22);
  outlined consume of _SymbolEffect.Storage(v22, v23, v24, v25);
  outlined consume of _SymbolEffect.Storage(v26, v27, v28, v29);
  result = 0;
  if ((v9 & 1) != 0 && v5 == v13)
  {
    if (v6)
    {
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v4 == v12)
      {
        v20 = v14;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        return 0;
      }
    }

    if (v8)
    {
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v7 == v15)
      {
        v21 = v16;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t outlined consume of SymbolEffect?(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if ((~a3 & 0xFFFFFFFE) != 0 || (a4 & 0xFEFE) != 2)
  {
    return outlined consume of _SymbolEffect.Storage(result, a2, a3, a4);
  }

  return result;
}

uint64_t outlined copy of SymbolEffect?(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if ((~a3 & 0xFFFFFFFE) != 0 || (a4 & 0xFEFE) != 2)
  {
    return outlined copy of _SymbolEffect.Storage(result, a2, a3, a4);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _SymbolEffectModifier.EffectEnvironment and conformance _SymbolEffectModifier.EffectEnvironment()
{
  result = lazy protocol witness table cache variable for type _SymbolEffectModifier.EffectEnvironment and conformance _SymbolEffectModifier.EffectEnvironment;
  if (!lazy protocol witness table cache variable for type _SymbolEffectModifier.EffectEnvironment and conformance _SymbolEffectModifier.EffectEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SymbolEffectModifier.EffectEnvironment and conformance _SymbolEffectModifier.EffectEnvironment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _SymbolEffectsModifier.EffectsEnvironment and conformance _SymbolEffectsModifier.EffectsEnvironment()
{
  result = lazy protocol witness table cache variable for type _SymbolEffectsModifier.EffectsEnvironment and conformance _SymbolEffectsModifier.EffectsEnvironment;
  if (!lazy protocol witness table cache variable for type _SymbolEffectsModifier.EffectsEnvironment and conformance _SymbolEffectsModifier.EffectsEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SymbolEffectsModifier.EffectsEnvironment and conformance _SymbolEffectsModifier.EffectsEnvironment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _SymbolEffectsRemovedModifier.EffectEnvironment and conformance _SymbolEffectsRemovedModifier.EffectEnvironment()
{
  result = lazy protocol witness table cache variable for type _SymbolEffectsRemovedModifier.EffectEnvironment and conformance _SymbolEffectsRemovedModifier.EffectEnvironment;
  if (!lazy protocol witness table cache variable for type _SymbolEffectsRemovedModifier.EffectEnvironment and conformance _SymbolEffectsRemovedModifier.EffectEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SymbolEffectsRemovedModifier.EffectEnvironment and conformance _SymbolEffectsRemovedModifier.EffectEnvironment);
  }

  return result;
}

uint64_t outlined consume of _Transition_ContentTransition.Result(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for SymbolEffect(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of _SymbolEffect.Storage(*a2, v5, v6, v7);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t assignWithCopy for SymbolEffect(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of _SymbolEffect.Storage(*a2, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v11 = *(a1 + 24);
  *(a1 + 24) = v7;
  outlined consume of _SymbolEffect.Storage(v8, v9, v10, v11);
  *(a1 + 28) = *(a2 + 28);
  v12 = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = v12;
  v13 = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = v13;
  return a1;
}

__n128 __swift_memcpy45_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for SymbolEffect(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v9 = *(a1 + 24);
  *(a1 + 24) = v5;
  outlined consume of _SymbolEffect.Storage(v6, v7, v8, v9);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t getEnumTagSinglePayload for SymbolEffect(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 45))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 16) >> 1) & 0x7FFFFFFF | ((*(a1 + 24) >> 1) << 31);
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

uint64_t storeEnumTagSinglePayload for SymbolEffect(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 45) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (-2 * a2);
      *(result + 24) = 2;
      return result;
    }

    *(result + 45) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SymbolEffect.PulseConfiguration(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  if ((~*a2 & 0xF000000000000006) != 0)
  {
    v4 = result;
    outlined copy of _SymbolEffect.Trigger(*a2);
    result = v4;
  }

  *result = v3;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithCopy for SymbolEffect.PulseConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a2 & 0xF000000000000006;
  if ((~*a1 & 0xF000000000000006) != 0)
  {
    if (v5 == 0xF000000000000006)
    {
      outlined destroy of _SymbolEffect.Trigger(a1);
      *a1 = *a2;
    }

    else
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
      v6 = *a1;
      *a1 = v4;
      outlined consume of _SymbolEffect.Trigger(v6);
    }
  }

  else
  {
    if (v5 != 0xF000000000000006)
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
    }

    *a1 = v4;
  }

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for SymbolEffect.PulseConfiguration(uint64_t result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if ((~*result & 0xF000000000000006) != 0)
  {
    if ((~v4 & 0xF000000000000006) != 0)
    {
      *result = v4;
      v6 = result;
      outlined consume of _SymbolEffect.Trigger(v3);
      result = v6;
    }

    else
    {
      v5 = result;
      outlined destroy of _SymbolEffect.Trigger(result);
      result = v5;
      *v5 = v4;
    }
  }

  else
  {
    *result = v4;
  }

  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t getEnumTagSinglePayload for SymbolEffect.PulseConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for SymbolEffect.PulseConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t initializeWithCopy for SymbolEffect.WiggleConfiguration(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  if ((~*a2 & 0xF000000000000006) != 0)
  {
    v4 = result;
    outlined copy of _SymbolEffect.Trigger(*a2);
    result = v4;
  }

  v5 = *(a2 + 8);
  *result = v3;
  *(result + 8) = v5;
  *(result + 16) = *(a2 + 16);
  *(result + 20) = *(a2 + 20);
  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t assignWithCopy for SymbolEffect.WiggleConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a2 & 0xF000000000000006;
  if ((~*a1 & 0xF000000000000006) != 0)
  {
    if (v5 == 0xF000000000000006)
    {
      outlined destroy of _SymbolEffect.Trigger(a1);
      *a1 = *a2;
    }

    else
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
      v6 = *a1;
      *a1 = v4;
      outlined consume of _SymbolEffect.Trigger(v6);
    }
  }

  else
  {
    if (v5 != 0xF000000000000006)
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
    }

    *a1 = v4;
  }

  v7 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v7;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  return a1;
}

uint64_t assignWithTake for SymbolEffect.WiggleConfiguration(uint64_t result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if ((~*result & 0xF000000000000006) != 0)
  {
    if ((~v4 & 0xF000000000000006) != 0)
    {
      *result = v4;
      v6 = result;
      outlined consume of _SymbolEffect.Trigger(v3);
      result = v6;
    }

    else
    {
      v5 = result;
      outlined destroy of _SymbolEffect.Trigger(result);
      result = v5;
      *v5 = v4;
    }
  }

  else
  {
    *result = v4;
  }

  *(result + 8) = a2[1];
  *(result + 16) = *(a2 + 16);
  *(result + 20) = *(a2 + 5);
  *(result + 24) = *(a2 + 24);
  *(result + 25) = *(a2 + 25);
  return result;
}

uint64_t getEnumTagSinglePayload for SymbolEffect.WiggleConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SymbolEffect.WiggleConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SymbolEffect.BreatheConfiguration(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  if ((~*a2 & 0xF000000000000006) != 0)
  {
    v4 = result;
    outlined copy of _SymbolEffect.Trigger(*a2);
    result = v4;
  }

  *result = v3;
  *(result + 8) = *(a2 + 8);
  *(result + 12) = *(a2 + 12);
  return result;
}

uint64_t assignWithCopy for SymbolEffect.BreatheConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a2 & 0xF000000000000006;
  if ((~*a1 & 0xF000000000000006) != 0)
  {
    if (v5 == 0xF000000000000006)
    {
      outlined destroy of _SymbolEffect.Trigger(a1);
      *a1 = *a2;
    }

    else
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
      v6 = *a1;
      *a1 = v4;
      outlined consume of _SymbolEffect.Trigger(v6);
    }
  }

  else
  {
    if (v5 != 0xF000000000000006)
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
    }

    *a1 = v4;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  return a1;
}

uint64_t assignWithTake for SymbolEffect.BreatheConfiguration(uint64_t result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if ((~*result & 0xF000000000000006) != 0)
  {
    if ((~v4 & 0xF000000000000006) != 0)
    {
      *result = v4;
      v6 = result;
      outlined consume of _SymbolEffect.Trigger(v3);
      result = v6;
    }

    else
    {
      v5 = result;
      outlined destroy of _SymbolEffect.Trigger(result);
      result = v5;
      *v5 = v4;
    }
  }

  else
  {
    *result = v4;
  }

  *(result + 8) = *(a2 + 2);
  *(result + 12) = *(a2 + 12);
  return result;
}

uint64_t getEnumTagSinglePayload for SymbolEffect.BreatheConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 13))
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

uint64_t storeEnumTagSinglePayload for SymbolEffect.BreatheConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SymbolEffect.VariableColorConfiguration(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  if ((~*a2 & 0xF000000000000006) != 0)
  {
    v4 = result;
    outlined copy of _SymbolEffect.Trigger(*a2);
    result = v4;
  }

  *result = v3;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithCopy for SymbolEffect.VariableColorConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a2 & 0xF000000000000006;
  if ((~*a1 & 0xF000000000000006) != 0)
  {
    if (v5 == 0xF000000000000006)
    {
      outlined destroy of _SymbolEffect.Trigger(a1);
      *a1 = *a2;
    }

    else
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
      v6 = *a1;
      *a1 = v4;
      outlined consume of _SymbolEffect.Trigger(v6);
    }
  }

  else
  {
    if (v5 != 0xF000000000000006)
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
    }

    *a1 = v4;
  }

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for SymbolEffect.VariableColorConfiguration(uint64_t result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if ((~*result & 0xF000000000000006) != 0)
  {
    if ((~v4 & 0xF000000000000006) != 0)
    {
      *result = v4;
      v6 = result;
      outlined consume of _SymbolEffect.Trigger(v3);
      result = v6;
    }

    else
    {
      v5 = result;
      outlined destroy of _SymbolEffect.Trigger(result);
      result = v5;
      *v5 = v4;
    }
  }

  else
  {
    *result = v4;
  }

  *(result + 8) = *(a2 + 2);
  return result;
}

uint64_t getEnumTagSinglePayload for SymbolEffect.VariableColorConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 12))
  {
    return (*a1 + 62);
  }

  v3 = *a1 >> 58;
  v4 = *a1 & 6 | (8 * ((v3 >> 2) & 7));
  v5 = 62 - (v4 | (v3 >> 5));
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for SymbolEffect.VariableColorConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 8) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      v3 = (32 * (a2 ^ 0x3F)) | ((a2 ^ 0x3F) >> 1);
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

_DWORD *__swift_memcpy7_4(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SymbolEffect.ReplaceConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 12))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SymbolEffect.ReplaceConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithTake for _SymbolEffectModifier(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  v4 = *(result + 24);
  if ((~v3 & 0xFFFFFFFE) == 0 && (*(result + 24) & 0xFEFELL) == 2)
  {
    v14 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v14;
    *(result + 29) = *(a2 + 29);
  }

  else
  {
    v7 = *(a2 + 16);
    v6 = *(a2 + 24);
    if ((~v7 & 0xFFFFFFFE) == 0 && (*(a2 + 24) & 0xFEFELL) == 2)
    {
      v12 = result;
      outlined destroy of SymbolEffect(result);
      v15 = *(a2 + 16);
      *v12 = *a2;
      *(v12 + 16) = v15;
      *(v12 + 29) = *(a2 + 29);
    }

    else
    {
      v9 = HIDWORD(v6);
      v11 = *result;
      v10 = *(result + 8);
      *result = *a2;
      *(result + 16) = v7;
      *(result + 24) = v6;
      v12 = result;
      outlined consume of _SymbolEffect.Storage(v11, v10, v3, v4);
      v13 = *(a2 + 32);
      *(v12 + 28) = v9;
      *(v12 + 32) = v13;
      *(v12 + 36) = *(a2 + 36);
      *(v12 + 40) = *(a2 + 40);
      *(v12 + 44) = *(a2 + 44);
    }

    return v12;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _SymbolEffectModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 45))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = (*(a1 + 16) >> 1) & 0x7FFFFFFF | ((*(a1 + 24) >> 1) << 31);
  v4 = -2 - v3;
  if ((-2 - v3) < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _SymbolEffectModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 45) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 45) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * ~a2;
      *(result + 24) = 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SymbolEffect.HiddenConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 7))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
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

uint64_t storeEnumTagSinglePayload for SymbolEffect.HiddenConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<SymbolEffect.HiddenTransition>, _SymbolEffectModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<SymbolEffect.HiddenTransition>, _SymbolEffectModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<SymbolEffect.HiddenTransition>, _SymbolEffectModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<PlaceholderContentView<SymbolEffect.HiddenTransition>, _SymbolEffectModifier>();
    lazy protocol witness table accessor for type PlaceholderContentView<SymbolEffect.HiddenTransition> and conformance PlaceholderContentView<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<SymbolEffect.HiddenTransition>, _SymbolEffectModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<PlaceholderContentView<SymbolEffect.HiddenTransition>, _SymbolEffectModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<SymbolEffect.HiddenTransition>, _SymbolEffectModifier>)
  {
    type metadata accessor for _ContiguousArrayStorage<ContentTransition.Effect>(255, &lazy cache variable for type metadata for PlaceholderContentView<SymbolEffect.HiddenTransition>, &type metadata for SymbolEffect.HiddenTransition, MEMORY[0x1E697FEC0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<SymbolEffect.HiddenTransition>, _SymbolEffectModifier>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<ContentTransition.Effect>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type PlaceholderContentView<SymbolEffect.HiddenTransition> and conformance PlaceholderContentView<A>()
{
  result = lazy protocol witness table cache variable for type PlaceholderContentView<SymbolEffect.HiddenTransition> and conformance PlaceholderContentView<A>;
  if (!lazy protocol witness table cache variable for type PlaceholderContentView<SymbolEffect.HiddenTransition> and conformance PlaceholderContentView<A>)
  {
    type metadata accessor for _ContiguousArrayStorage<ContentTransition.Effect>(255, &lazy cache variable for type metadata for PlaceholderContentView<SymbolEffect.HiddenTransition>, &type metadata for SymbolEffect.HiddenTransition, MEMORY[0x1E697FEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaceholderContentView<SymbolEffect.HiddenTransition> and conformance PlaceholderContentView<A>);
  }

  return result;
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance ResolvedSubviewsSizingOptionsEnvironmentKey(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v9[2] = *(a1 + 32);
  v10 = v2;
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v7[2] = *(a2 + 32);
  v8 = v3;
  return specialized static ResolvedSubviewsSizingOptions.== infix(_:_:)(v9, v7);
}

uint64_t EnvironmentValues.subviewsSizingOptions.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

double key path getter for EnvironmentValues.subviewsSizingOptions : EnvironmentValues@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v4;
  *(a2 + 16) = v5;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t key path setter for EnvironmentValues.subviewsSizingOptions : EnvironmentValues(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  type metadata accessor for EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey>();

  outlined copy of ResolvedSubviewsSizingOptions(v3, v4, v5);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

double specialized implicit closure #1 in _GraphInputs.subviewsSizingOptions.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  *(a2 + 16) = v5;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t View.subviewsSizing(_:)(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 17) = v2;
  View.transformEnvironment<A>(_:transform:)();
}

uint64_t closure #1 in View.subviewsSizing(_:)(uint64_t *a1, __int16 a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  if ((a2 & 0x100) != 0)
  {
    result = outlined consume of ResolvedSubviewsSizingOptions(result, v5, v6);
    v11 = 0;
    v5 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v6 = 0x1FFFFFFFCLL;
  }

  else
  {
    v11 = (result & a2);
    if (v6 >> 1 == 4294967294)
    {
      v11 = result;
    }
  }

  *a1 = v11;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  return result;
}

uint64_t View.subviewsUniformSizing<A>(template:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a2;
  v24 = a1;
  v27 = a7;
  v11 = lazy protocol witness table accessor for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent();
  v39 = &type metadata for ListRowHeightTemplateContent;
  v40 = a4;
  v41 = v11;
  v42 = a6;
  type metadata accessor for OptionalSourceWriter();
  v12 = type metadata accessor for ModifiedContent();
  v26 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  type metadata accessor for _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions>, &type metadata for ResolvedSubviewsSizingOptions, MEMORY[0x1E6980B20]);
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = v24;
  v34 = v25;
  View.optionalViewAlias<A, B>(_:_:)(&type metadata for ListRowHeightTemplateContent, partial apply for closure #1 in View.subviewsUniformSizing<A>(template:), v28, a3, &type metadata for ListRowHeightTemplateContent, a4, a5, v11, a6);
  swift_getKeyPath();
  v37 = a5;
  v38 = &protocol witness table for OptionalSourceWriter<A, B>;
  WitnessTable = swift_getWitnessTable();
  View.transformEnvironment<A>(_:transform:)();

  (*(v26 + 8))(v14, v12);
  v20 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions> and conformance _EnvironmentKeyTransformModifier<A>();
  v35 = WitnessTable;
  v36 = v20;
  v21 = swift_getWitnessTable();
  MEMORY[0x18D00A570](v21, v15, &type metadata for OptInScrollGeometryViewInputModifier, v21);
  return (*(v16 + 8))(v18, v15);
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions>, &type metadata for ResolvedSubviewsSizingOptions, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

uint64_t View.subviewsUniformSizing(width:height:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2 & 1;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4 & 1;
  View.transformEnvironment<A>(_:transform:)();
}

uint64_t *closure #1 in View.subviewsUniformSizing(width:height:)(uint64_t *result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v9 = result;
  v10 = result[2];
  if (v10 >> 1 == 4294967294)
  {
    v11 = 3;
  }

  else
  {
    v12 = *result;
    result = outlined consume of ResolvedSubviewsSizingOptions(*result, result[1], v10);
    v11 = v12 & 3;
  }

  *v9 = v11;
  v9[1] = a2;
  v9[2] = a3 & 1;
  v9[3] = a4;
  v9[5] = 0;
  v9[6] = 0;
  v9[4] = a5 & 1;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance OptInScrollGeometryViewInputModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance OptInScrollGeometryViewInputModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type OptInScrollGeometryViewInputModifier and conformance OptInScrollGeometryViewInputModifier();

  return MEMORY[0x1EEDE0CC8](a1, a2, a3, a4, a5, v10);
}

uint64_t View.listRowHeightTemplate<A>(templateRow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void (*a10)(double), uint64_t a11)
{
  v23 = a9;
  v24 = a11;
  v21 = a2;
  v22 = a10;
  v34 = a8;
  v35 = a4;
  v36 = a7();
  v37 = a6;
  type metadata accessor for OptionalSourceWriter();
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v20 - v17;
  v26 = a3;
  v27 = v35;
  v28 = a5;
  v29 = a6;
  v30 = a1;
  v31 = v21;
  View.optionalViewAlias<A, B>(_:_:)(v34, a10, v25, a3, v34, v35, a5, v36, a6);
  swift_getKeyPath();
  v32 = a5;
  v33 = &protocol witness table for OptionalSourceWriter<A, B>;
  swift_getWitnessTable();
  View.transformEnvironment<A>(_:transform:)();

  return (*(v16 + 8))(v18, v15);
}

unint64_t lazy protocol witness table accessor for type ListFirstRowHeightTemplateContent and conformance ListFirstRowHeightTemplateContent()
{
  result = lazy protocol witness table cache variable for type ListFirstRowHeightTemplateContent and conformance ListFirstRowHeightTemplateContent;
  if (!lazy protocol witness table cache variable for type ListFirstRowHeightTemplateContent and conformance ListFirstRowHeightTemplateContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListFirstRowHeightTemplateContent and conformance ListFirstRowHeightTemplateContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListFirstRowHeightTemplateContent and conformance ListFirstRowHeightTemplateContent;
  if (!lazy protocol witness table cache variable for type ListFirstRowHeightTemplateContent and conformance ListFirstRowHeightTemplateContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListFirstRowHeightTemplateContent and conformance ListFirstRowHeightTemplateContent);
  }

  return result;
}

uint64_t partial apply for closure #1 in View.subviewsUniformSizing<A>(template:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  (*(v1 + 48))();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

double closure #2 in View.subviewsUniformSizing<A>(template:)(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 16);
  if (v3 >> 1 == 4294967294)
  {
    v4 = 3;
  }

  else
  {
    v5 = *a1;
    v7 = a2;
    outlined consume of ResolvedSubviewsSizingOptions(*a1, *(a1 + 8), v3);
    a2 = v7;
    v4 = v5 & 3;
  }

  *a1 = v4;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

uint64_t getEnumTagSinglePayload for Subview.ContainerSizingOptions(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for Subview.ContainerSizingOptions(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t getEnumTag for Subview.ContainerSizingOptions(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for Subview.ContainerSizingOptions(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzAaBRd__r__lAA15ModifiedContentVyADyxAA20OptionalSourceWriter33_D9F7AF928092578A4B8FA861B49E2161LLVyAA021ListRowHeightTemplateE0Vqd__GGAA32_EnvironmentKeyTransformModifierVyAA29ResolvedSubviewsSizingOptionsOGGAaBHPAkaBHPxAaBHD1__AjA0cX0HPyHCHC_ApaRHPyHCHCTm(uint64_t a1, void (*a2)(void))
{
  a2();
  type metadata accessor for OptionalSourceWriter();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions>, &type metadata for ResolvedSubviewsSizingOptions, MEMORY[0x1E6980B20]);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions> and conformance _EnvironmentKeyTransformModifier<A>();
  return swift_getWitnessTable();
}

void *assignWithCopy for ResolvedSubviewsSizingOptions(void *result, __int128 *a2)
{
  v2 = result[2];
  v3 = (*(a2 + 2) >> 1) + 1;
  if ((v2 >> 1) + 1 >= 0x80000002)
  {
    if (v3 < 0x80000002)
    {
      *result = *a2;
      v4 = *(a2 + 2);
      if (v4 >> 1 != 0xFFFFFFFF)
      {
        goto LABEL_5;
      }

LABEL_8:
      v12 = *(a2 + 8);
      v13 = *(a2 + 24);
      *(result + 5) = *(a2 + 40);
      *(result + 3) = v13;
      *(result + 1) = v12;
      return result;
    }

    goto LABEL_11;
  }

  if (v3 >= 0x80000002)
  {
    if (v2 >> 1 != 0xFFFFFFFF)
    {
      v14 = result;
      v15 = a2;
      outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource(result[1], v2);
      a2 = v15;
      result = v14;
    }

LABEL_11:
    v16 = *a2;
    v17 = a2[1];
    v18 = a2[2];
    result[6] = *(a2 + 6);
    *(result + 1) = v17;
    *(result + 2) = v18;
    *result = v16;
    return result;
  }

  *result = *a2;
  v4 = *(a2 + 2);
  v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
  if (v2 >> 1 == 0xFFFFFFFF)
  {
    if (v5 != 0x1FFFFFFFELL)
    {
LABEL_5:
      v6 = *(a2 + 1);
      v7 = *(a2 + 3);
      v8 = *(a2 + 4);
      v9 = *(a2 + 5);
      v10 = *(a2 + 6);
      v11 = result;
      outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v6, v4);
      result = v11;
      v11[1] = v6;
      v11[2] = v4;
      v11[3] = v7;
      v11[4] = v8;
      v11[5] = v9;
      v11[6] = v10;
      return result;
    }

    goto LABEL_8;
  }

  if (v5 == 0x1FFFFFFFELL)
  {
    v19 = result;
    v20 = a2;
    outlined destroy of ResolvedSubviewsSizingOptions.UniformSizeSource((result + 1));
    result = v19;
    v21 = *(v20 + 40);
    v22 = *(v20 + 24);
    *(v19 + 1) = *(v20 + 8);
    *(v19 + 3) = v22;
    *(v19 + 5) = v21;
  }

  else
  {
    v23 = *(a2 + 1);
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 5);
    v27 = *(a2 + 6);
    v28 = result;
    outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v23, *(a2 + 2));
    v29 = v28[1];
    v30 = v28[2];
    v28[1] = v23;
    v28[2] = v4;
    v28[3] = v24;
    v28[4] = v25;
    v28[5] = v26;
    v28[6] = v27;
    outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource(v29, v30);
    return v28;
  }

  return result;
}

uint64_t assignWithTake for ResolvedSubviewsSizingOptions(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if ((v2 >> 1) + 1 >= 0x80000002)
  {
LABEL_7:
    v6 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v6;
    *(result + 32) = *(a2 + 32);
    *(result + 48) = *(a2 + 48);
    return result;
  }

  v3 = *(a2 + 16);
  if ((v3 >> 1) + 1 >= 0x80000002)
  {
    if (v2 >> 1 != 0xFFFFFFFF)
    {
      v4 = result;
      v5 = a2;
      outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource(*(result + 8), v2);
      a2 = v5;
      result = v4;
    }

    goto LABEL_7;
  }

  *result = *a2;
  if (v2 >> 1 == 0xFFFFFFFF)
  {
    *(result + 8) = *(a2 + 8);
    *(result + 24) = *(a2 + 24);
    *(result + 40) = *(a2 + 40);
  }

  else if (v3 >> 1 == 0xFFFFFFFF)
  {
    v7 = result;
    v8 = a2;
    outlined destroy of ResolvedSubviewsSizingOptions.UniformSizeSource(result + 8);
    result = v7;
    *(v7 + 8) = *(v8 + 8);
    *(v7 + 24) = *(v8 + 24);
    *(v7 + 40) = *(v8 + 40);
  }

  else
  {
    v9 = *(result + 8);
    *(result + 8) = *(a2 + 8);
    *(result + 16) = v3;
    *(result + 24) = *(a2 + 24);
    *(result + 40) = *(a2 + 40);
    v10 = result;
    outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource(v9, v2);
    return v10;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResolvedSubviewsSizingOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 56))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16) >> 1;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ResolvedSubviewsSizingOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = 2 * (-2 - a2);
      *(result + 24) = 0u;
      *(result + 40) = 0u;
    }
  }

  return result;
}

uint64_t getEnumTag for ResolvedSubviewsSizingOptions(uint64_t a1)
{
  v1 = *(a1 + 16) >> 1;
  v2 = -2 - v1;
  if (-2 - v1 < 0)
  {
    v2 = -1;
  }

  if (v1 > 0x80000000)
  {
    return (v2 + 1);
  }

  else
  {
    return 0;
  }
}

double destructiveInjectEnumTag for ResolvedSubviewsSizingOptions(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 2 * ~a2;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
  }

  return result;
}

uint64_t *initializeWithCopy for ResolvedSubviewsSizingOptions.UniformSizeSource(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  return a1;
}

uint64_t *assignWithCopy for ResolvedSubviewsSizingOptions.UniformSizeSource(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(*a2, v4);
  v9 = *a1;
  v10 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource(v9, v10);
  return a1;
}

uint64_t assignWithTake for ResolvedSubviewsSizingOptions.UniformSizeSource(uint64_t a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = a2[2];
  outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResolvedSubviewsSizingOptions.UniformSizeSource(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
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

double storeEnumTagSinglePayload for ResolvedSubviewsSizingOptions.UniformSizeSource(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 48) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 2 * -a2;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      return result;
    }

    *(a1 + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ListFirstRowHeightTemplateContent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ListFirstRowHeightTemplateContent and conformance ListFirstRowHeightTemplateContent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type OptInScrollGeometryViewInputModifier and conformance OptInScrollGeometryViewInputModifier()
{
  result = lazy protocol witness table cache variable for type OptInScrollGeometryViewInputModifier and conformance OptInScrollGeometryViewInputModifier;
  if (!lazy protocol witness table cache variable for type OptInScrollGeometryViewInputModifier and conformance OptInScrollGeometryViewInputModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OptInScrollGeometryViewInputModifier and conformance OptInScrollGeometryViewInputModifier);
  }

  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance ListTemplateRowWrapperView.ViewRule@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ListTemplateRowWrapperView();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for Rule.value.getter in conformance ListTemplateRowWrapperView.ViewRule@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  Value = AGGraphGetValue();
  v4 = type metadata accessor for ListTemplateRowWrapperView();
  (*(*(v2 - 8) + 16))(a1 + *(v4 + 24), Value, v2);
  result = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

__n128 closure #1 in ListTemplateRowWrapperView.body.getter@<Q0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  type metadata accessor for <<opaque return type of MappedViewElement.view>>.0();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[1];
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v37 = *a1;
  v63 = v37;
  v64 = v10;
  v65 = v11;
  v66 = v12;
  MappedViewElement.view.getter();
  v13 = *(a2 + 8);
  LOBYTE(a2) = *(a2 + 16);

  v14 = specialized Environment.wrappedValue.getter(v13, a2);
  v15 = *(v11 + 16);
  swift_bridgeObjectRetain_n();
  if (v15)
  {
    v16 = *(v11 + 52);
    v36 = *(v11 + 32);

    swift_bridgeObjectRelease_n();
    if (v16)
    {
      v10 = -1;
    }
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v36 = 0;
  }

  KeyPath = swift_getKeyPath();
  v62 = 0;
  v17 = swift_getKeyPath();
  v61 = 0;
  v31 = swift_getKeyPath();
  v59 = 0;
  v32 = swift_getKeyPath();
  v56 = 0;
  v34 = swift_getKeyPath();
  v39 = 0;
  *&v51 = v12;
  ViewTraitCollection.listRowInsets.getter();
  *(v50 + 5) = v40;
  *(&v50[1] + 5) = v41;
  *(&v50[2] + 5) = v42[0];
  *(&v50[2] + 14) = *(v42 + 9);
  v43.n128_u64[0] = v12;
  v38 = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v18 = v51;
  v38 = v12;
  v43.n128_u64[0] = 1;
  v43.n128_u8[8] = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  outlined consume of ListItemTint?(v43.n128_i64[0]);

  v19 = v51;
  v20 = BYTE8(v51);
  outlined consume of ListItemTint?(1);
  v21 = v35;
  (*(v7 + 32))(v35, v9, v6);
  type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListTableCellModifier>(0, &lazy cache variable for type metadata for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, CollectionViewCellModifier>);
  v23 = v21 + *(v22 + 36);
  *(v23 + 153) = *&v54[9];
  v24 = *v54;
  *(v23 + 128) = v53;
  *(v23 + 144) = v24;
  v25 = v52;
  *(v23 + 96) = v51;
  *(v23 + 112) = v25;
  v26 = v50[1];
  *(v23 + 171) = v50[0];
  *v23 = KeyPath;
  *(v23 + 8) = v62;
  *(v23 + 9) = v38;
  *(v23 + 12) = *(&v38 + 3);
  *(v23 + 16) = v17;
  *(v23 + 24) = v61;
  *(v23 + 25) = *v60;
  *(v23 + 28) = *&v60[3];
  *(v23 + 32) = v31;
  *(v23 + 40) = 0;
  *(v23 + 41) = v59;
  *(v23 + 42) = v57;
  *(v23 + 46) = v58;
  *(v23 + 48) = v32;
  *(v23 + 56) = 0;
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 80) = v56;
  *(v23 + 81) = *v55;
  *(v23 + 84) = *&v55[3];
  *(v23 + 88) = v34;
  *(v23 + 169) = 0;
  *(v23 + 187) = v26;
  *(v23 + 203) = v50[2];
  *(v23 + 217) = *(&v50[2] + 14);
  *(v23 + 236) = *&v49[3];
  *(v23 + 233) = *v49;
  *(v23 + 240) = v18;
  *(v23 + 248) = 0;
  *(v23 + 249) = *v48;
  *(v23 + 252) = *&v48[3];
  *(v23 + 256) = v19;
  *(v23 + 264) = v20;
  *(v23 + 265) = 0;
  *(v23 + 270) = v47;
  *(v23 + 266) = v46;
  *(v23 + 272) = v14;
  *(v23 + 280) = v37;
  *(v23 + 284) = v10;
  *(v23 + 288) = v36;
  result = v43;
  v28 = v44;
  v29 = *v45;
  *(v23 + 342) = *&v45[14];
  *(v23 + 312) = v28;
  *(v23 + 328) = v29;
  *(v23 + 296) = result;
  *(v23 + 350) = 1;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance ListTemplateRowWrapperView(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v7[15] = (*v1 & 1) == 0;
  outlined init with copy of ListTemplateRowWrapperView(v1, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of ListTemplateRowWrapperView(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4);
  type metadata accessor for _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions>(0, &lazy cache variable for type metadata for ListRowHeightTemplateContent?, &type metadata for ListRowHeightTemplateContent, MEMORY[0x1E69E6720]);
  type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListTableCellModifier>(0, &lazy cache variable for type metadata for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, CollectionViewCellModifier>);
  lazy protocol witness table accessor for type ListRowHeightTemplateContent? and conformance <A> A?();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListTableCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, CollectionViewCellModifier>, &type metadata for CollectionViewCellModifier, lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier);
  View.map<A>(_:)();
}

double protocol witness for static Rule.initialValue.getter in conformance TableTemplateRowWrapperView.ViewRule@<D0>(uint64_t a1@<X8>)
{
  *&result = 2;
  *a1 = xmmword_18CD79D60;
  *(a1 + 16) = 0;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance TableTemplateRowWrapperView.ViewRule@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

double closure #1 in TableTemplateRowWrapperView.body.getter@<D0>(int *a1@<X0>, uint64_t a2@<X2>, __int16 a3@<W3>, uint64_t a4@<X8>)
{
  v34 = a4;
  type metadata accessor for <<opaque return type of MappedViewElement.view>>.0();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v13 = *(a1 + 1);
  v14 = *(a1 + 2);
  v33 = *a1;
  v44 = v33;
  v45 = v12;
  v46 = v13;
  v47 = v14;
  MappedViewElement.view.getter();
  v36 = v14;
  ViewTraitCollection.listRowInsets.getter();
  *&v38 = v14;
  v35 = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v15 = v41;
  v35 = v14;
  *&v41 = 1;
  BYTE8(v41) = 0;

  ViewTraitCollection.value<A>(for:defaultValue:)();
  outlined consume of ListItemTint?(v41);

  v16 = v38;
  v32 = BYTE8(v38);
  v17 = specialized Environment.wrappedValue.getter(a2, a3 & 0x1FF);
  if (v18)
  {
    static _GraphInputs.defaultInterfaceIdiom.getter();
    if (static Solarium.isEnabled(for:)())
    {
      v19 = 52.0;
    }

    else
    {
      v19 = 44.0;
    }
  }

  else
  {
    v19 = *&v17;
  }

  v20 = *(v13 + 16);
  swift_bridgeObjectRetain_n();
  if (v20)
  {
    v20 = *(v13 + 32);
    v21 = *(v13 + 52);

    swift_bridgeObjectRelease_n();
    if (v21)
    {
      v12 = -1;
    }
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v41 = v48;
  v42 = v49;
  v43[0] = *v50;
  *(v43 + 9) = *&v50[9];
  KeyPath = swift_getKeyPath();
  v37 = 0;
  v23 = v34;
  (*(v9 + 32))(v34, v11, v8);
  type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListTableCellModifier>(0, &lazy cache variable for type metadata for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListTableCellModifier>);
  v25 = v23 + *(v24 + 36);
  v26 = v42;
  *v25 = v41;
  *(v25 + 16) = v26;
  v27 = v43[1];
  *(v25 + 32) = v43[0];
  *(v25 + 48) = v27;
  *(v25 + 64) = v15;
  *(v25 + 72) = v16;
  *(v25 + 80) = v32;
  *(v25 + 81) = v36;
  *(v25 + 84) = *(&v36 + 3);
  *(v25 + 88) = v19;
  *(v25 + 96) = 0;
  *(v25 + 97) = v35;
  v28 = v33;
  *(v25 + 100) = *(&v35 + 3);
  *(v25 + 104) = v28;
  *(v25 + 108) = v12;
  *(v25 + 112) = v20;
  v29 = v39;
  *(v25 + 120) = v38;
  *(v25 + 136) = v29;
  result = v40[0];
  *(v25 + 152) = *v40;
  *(v25 + 166) = *(&v40[1] + 6);
  *(v25 + 174) = 1;
  *(v25 + 176) = KeyPath;
  *(v25 + 184) = v37;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance TableTemplateRowWrapperView()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[17];
  v4 = v0[16];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v4;
  *(v5 + 33) = v3;
  outlined copy of Environment<CGFloat?>.Content(v2, v4, v3);
  type metadata accessor for _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions>(0, &lazy cache variable for type metadata for ListRowHeightTemplateContent?, &type metadata for ListRowHeightTemplateContent, MEMORY[0x1E69E6720]);
  type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListTableCellModifier>(0, &lazy cache variable for type metadata for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListTableCellModifier>);
  lazy protocol witness table accessor for type ListRowHeightTemplateContent? and conformance <A> A?();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListTableCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListTableCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListTableCellModifier>, &type metadata for ListTableCellModifier, lazy protocol witness table accessor for type ListTableCellModifier and conformance ListTableCellModifier);
  View.map<A>(_:)();
}

BOOL specialized static ResolvedSubviewsSizingOptions.UniformSizeSource.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v23[0] = *a1;
  v23[1] = v2;
  *&v23[2] = v4;
  v23[3] = v5;
  v23[4] = v6;
  v23[5] = v7;
  v23[6] = v9;
  v23[7] = v8;
  *&v23[8] = v10;
  v23[9] = v11;
  v23[10] = v12;
  v23[11] = v13;
  if (!(v2 >> 62))
  {
    if (!(v8 >> 62))
    {
      outlined destroy of (ResolvedSubviewsSizingOptions.UniformSizeSource, ResolvedSubviewsSizingOptions.UniformSizeSource)(v23);
      if (v2)
      {
        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v8 & 1) != 0 || *&v3 != *&v9)
      {
        return 0;
      }

      if (v5)
      {
        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v11 & 1) != 0 || v4 != v10)
      {
        return 0;
      }

      return 1;
    }

LABEL_17:
    v14 = v9;
    v15 = v8;
LABEL_36:
    outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v14, v15);
LABEL_37:
    outlined destroy of (ResolvedSubviewsSizingOptions.UniformSizeSource, ResolvedSubviewsSizingOptions.UniformSizeSource)(v23);
    return 0;
  }

  if (v2 >> 62 != 1)
  {
    if (v8 >> 62 == 2)
    {
      if (v2)
      {
        if ((v8 & 1) == 0)
        {
LABEL_35:
          outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v9, v8);
          v14 = v3;
          v15 = v2;
          goto LABEL_36;
        }
      }

      else if ((v8 & 1) != 0 || *&v3 != *&v9)
      {
        goto LABEL_35;
      }

      if (v4 == 0.0)
      {
        v19 = v6;
        if (v10 != 0.0)
        {
          outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v9, v8);
          outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v3, v2);

          outlined destroy of (ResolvedSubviewsSizingOptions.UniformSizeSource, ResolvedSubviewsSizingOptions.UniformSizeSource)(v23);
          goto LABEL_57;
        }

        outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v9, v8);
        v16 = v19;
        outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v3, v2);
      }

      else
      {
        v22 = v6;
        if (v10 == 0.0)
        {
          outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v9, v8);
          outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v3, v2);
          swift_retain_n();
          outlined destroy of (ResolvedSubviewsSizingOptions.UniformSizeSource, ResolvedSubviewsSizingOptions.UniformSizeSource)(v23);

          goto LABEL_57;
        }

        outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v9, v8);
        v16 = v22;
        outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v3, v2);
        swift_retain_n();

        v17 = static LayoutComputer.== infix(_:_:)();

        if ((v17 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      if (v16)
      {
        if (v12)
        {
          swift_retain_n();

          v20 = static LayoutComputer.== infix(_:_:)();
          outlined destroy of (ResolvedSubviewsSizingOptions.UniformSizeSource, ResolvedSubviewsSizingOptions.UniformSizeSource)(v23);

          return (v20 & 1) != 0;
        }

        swift_retain_n();
        outlined destroy of (ResolvedSubviewsSizingOptions.UniformSizeSource, ResolvedSubviewsSizingOptions.UniformSizeSource)(v23);
      }

      else
      {

        outlined destroy of (ResolvedSubviewsSizingOptions.UniformSizeSource, ResolvedSubviewsSizingOptions.UniformSizeSource)(v23);
        if (!v12)
        {
          return 1;
        }
      }

LABEL_57:

      return 0;
    }

    goto LABEL_16;
  }

  if (v8 >> 62 != 1)
  {
LABEL_16:

    goto LABEL_17;
  }

  if (v2)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if ((v8 & 1) != 0 || *&v3 != *&v9)
  {
    goto LABEL_35;
  }

  if (v4 == 0.0)
  {
    outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v3, v2);
    outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v9, v8);
    outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v9, v8);
    outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v3, v2);
    outlined destroy of (ResolvedSubviewsSizingOptions.UniformSizeSource, ResolvedSubviewsSizingOptions.UniformSizeSource)(v23);
    if (v10 == 0.0)
    {
      return 1;
    }

    goto LABEL_57;
  }

  if (v10 == 0.0)
  {
    outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v3, v2);
    outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v9, v8);
    outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v9, v8);
    outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v3, v2);

    outlined destroy of (ResolvedSubviewsSizingOptions.UniformSizeSource, ResolvedSubviewsSizingOptions.UniformSizeSource)(v23);

    goto LABEL_57;
  }

  outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v9, v8);
  outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v3, v2);
  outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v3, v2);
  outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v9, v8);
  outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v9, v8);
  outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v3, v2);

  v21 = static LayoutComputer.== infix(_:_:)();
  outlined destroy of (ResolvedSubviewsSizingOptions.UniformSizeSource, ResolvedSubviewsSizingOptions.UniformSizeSource)(v23);
  outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource(v9, v8);
  outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource(v3, v2);

  return (v21 & 1) != 0;
}

uint64_t outlined destroy of (ResolvedSubviewsSizingOptions.UniformSizeSource, ResolvedSubviewsSizingOptions.UniformSizeSource)(uint64_t a1)
{
  type metadata accessor for (ResolvedSubviewsSizingOptions.UniformSizeSource, ResolvedSubviewsSizingOptions.UniformSizeSource)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (ResolvedSubviewsSizingOptions.UniformSizeSource, ResolvedSubviewsSizingOptions.UniformSizeSource)()
{
  if (!lazy cache variable for type metadata for (ResolvedSubviewsSizingOptions.UniformSizeSource, ResolvedSubviewsSizingOptions.UniformSizeSource))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ResolvedSubviewsSizingOptions.UniformSizeSource, ResolvedSubviewsSizingOptions.UniformSizeSource));
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for TableTemplateRowWrapperView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 17);
  v5 = *(a2 + 16);
  outlined copy of Environment<CGFloat?>.Content(v3, v5, v4);
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 17) = v4;
  return a1;
}

uint64_t assignWithCopy for TableTemplateRowWrapperView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 17);
  v5 = *(a2 + 16);
  outlined copy of Environment<CGFloat?>.Content(v3, v5, v4);
  v6 = *(a1 + 8);
  v7 = *(a1 + 17);
  *(a1 + 8) = v3;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  *(a1 + 17) = v4;
  outlined consume of Environment<CGFloat?>.Content(v6, v8, v7);
  return a1;
}

uint64_t assignWithTake for TableTemplateRowWrapperView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 17);
  v5 = *(a1 + 8);
  v6 = *(a1 + 17);
  *(a1 + 8) = *(a2 + 8);
  v7 = *(a1 + 16);
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  outlined consume of Environment<CGFloat?>.Content(v5, v7, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for TableTemplateRowWrapperView(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[18])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TableTemplateRowWrapperView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableTemplateRowWrapperView.ViewRule and conformance TableTemplateRowWrapperView.ViewRule()
{
  result = lazy protocol witness table cache variable for type TableTemplateRowWrapperView.ViewRule and conformance TableTemplateRowWrapperView.ViewRule;
  if (!lazy protocol witness table cache variable for type TableTemplateRowWrapperView.ViewRule and conformance TableTemplateRowWrapperView.ViewRule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableTemplateRowWrapperView.ViewRule and conformance TableTemplateRowWrapperView.ViewRule);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListRowHeightTemplateContent? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ListRowHeightTemplateContent? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ListRowHeightTemplateContent? and conformance <A> A?)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions>(255, &lazy cache variable for type metadata for ListRowHeightTemplateContent?, &type metadata for ListRowHeightTemplateContent, MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListRowHeightTemplateContent? and conformance <A> A?);
  }

  return result;
}

uint64_t type metadata accessor for ListTemplateRowWrapperView()
{
  result = type metadata singleton initialization cache for ListTemplateRowWrapperView;
  if (!type metadata singleton initialization cache for ListTemplateRowWrapperView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *initializeBufferWithCopyOfBuffer for ListTemplateRowWrapperView(_BYTE *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v6 = a2[1];
    v7 = *(a2 + 16);
    outlined copy of Environment<Bool>.Content(v6, v7);
    *(v3 + 1) = v6;
    v3[16] = v7;
    v9 = *(a3 + 24);
    v10 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    (*(*(v10 - 8) + 16))(&v3[v9], a2 + v9, v10);
  }

  return v3;
}

uint64_t destroy for ListTemplateRowWrapperView(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<Bool>.Content(*(a1 + 8), *(a1 + 16));
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t initializeWithCopy for ListTemplateRowWrapperView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  outlined copy of Environment<Bool>.Content(v6, v7);
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  v8 = *(a3 + 24);
  v9 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
  return a1;
}

uint64_t assignWithCopy for ListTemplateRowWrapperView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  outlined copy of Environment<Bool>.Content(v6, v7);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v10 = *(a3 + 24);
  v11 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  (*(*(v11 - 8) + 24))(a1 + v10, a2 + v10, v11);
  return a1;
}

uint64_t initializeWithTake for ListTemplateRowWrapperView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t assignWithTake for ListTemplateRowWrapperView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v10 = *(a3 + 24);
  v11 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  (*(*(v11 - 8) + 40))(a1 + v10, a2 + v10, v11);
  return a1;
}

uint64_t type metadata completion function for ListTemplateRowWrapperView()
{
  result = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of ListTemplateRowWrapperView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListTemplateRowWrapperView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ListTemplateRowWrapperView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListTemplateRowWrapperView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double partial apply for closure #1 in ListTemplateRowWrapperView.body.getter@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ListTemplateRowWrapperView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  *&result = closure #1 in ListTemplateRowWrapperView.body.getter(a1, v6, a2).n128_u64[0];
  return result;
}

void type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListTableCellModifier>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for <<opaque return type of MappedViewElement.view>>.0();
    v3 = type metadata accessor for ModifiedContent();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListTableCellModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListTableCellModifier>(255, a2);
    swift_getOpaqueTypeConformance2();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE3mapyQrqd__AA06MappedC7ElementVcAaBRd__lFQOyAA28ListRowHeightTemplateContentVSg_AA08ModifiedK0VyAF4viewQrvpQOy_Qo_AA0G17TableCellModifierVGQo_HOTm(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4, void (*a5)(void))
{
  type metadata accessor for _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions>(255, &lazy cache variable for type metadata for ListRowHeightTemplateContent?, &type metadata for ListRowHeightTemplateContent, MEMORY[0x1E69E6720]);
  type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListTableCellModifier>(255, a2);
  lazy protocol witness table accessor for type ListRowHeightTemplateContent? and conformance <A> A?();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListTableCellModifier> and conformance <> ModifiedContent<A, B>(a4, a2, a3, a5);
  return swift_getOpaqueTypeConformance2();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TextInputDictationBehavior.Storage(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t static TextInputDictationBehavior.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return 1;
    }
  }

  else if (v2 == 3)
  {
    if (v3 == 3)
    {
      return 1;
    }
  }

  else if ((v3 & 0xFE) != 2 && ((v3 ^ v2) & 1) == 0)
  {
    return 1;
  }

  return 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TextInputDictationBehavior(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 != 3)
  {
    return (v3 & 0xFE) != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 3;
}

uint64_t getEnumTagSinglePayload for TextInputDictationBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t getEnumTagSinglePayload for TextInputDictationBehavior.Storage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TextInputDictationBehavior.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextInputDictationActivation.Role and conformance TextInputDictationActivation.Role()
{
  result = lazy protocol witness table cache variable for type TextInputDictationActivation.Role and conformance TextInputDictationActivation.Role;
  if (!lazy protocol witness table cache variable for type TextInputDictationActivation.Role and conformance TextInputDictationActivation.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextInputDictationActivation.Role and conformance TextInputDictationActivation.Role);
  }

  return result;
}

uint64_t ColorPickerStyleConfiguration.color.getter()
{
  v2[1] = *(v0 + 8);
  v3 = *(v0 + 16);
  type metadata accessor for Binding<UIColor>();
  MEMORY[0x18D00ACC0](v2);
  return v2[0];
}

void type metadata accessor for Binding<UIColor>()
{
  if (!lazy cache variable for type metadata for Binding<UIColor>)
  {
    type metadata accessor for UIColor();
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<UIColor>);
    }
  }
}

void *key path getter for ColorPickerStyleConfiguration.color : ColorPickerStyleConfiguration@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4[1] = *(a1 + 8);
  v5 = *(a1 + 16);
  type metadata accessor for Binding<UIColor>();
  result = MEMORY[0x18D00ACC0](v4);
  *a2 = v4[0];
  return result;
}

void key path setter for ColorPickerStyleConfiguration.color : ColorPickerStyleConfiguration(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);

  v4 = v3;
  v5 = v2;
  dispatch thunk of AnyLocation.set(_:transaction:)();
}

void (*ColorPickerStyleConfiguration.color.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 40) = v4;
  *v3 = v4;
  v5 = *(v1 + 16);
  *(v3 + 48) = v5;
  *(v3 + 8) = v5;
  type metadata accessor for Binding<UIColor>();
  MEMORY[0x18D00ACC0]();
  return ColorPickerStyleConfiguration.color.modify;
}

void ColorPickerStyleConfiguration.color.modify(id **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  (*a1)[4] = v3;
  if (a2)
  {
    v4 = v3;
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  else
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  free(v2);
}

uint64_t ColorPickerStyleConfiguration.$color.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);

  v3 = v2;
  return v1;
}

uint64_t ColorPickerStyleConfiguration.init(color:supportsOpacity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 8) = result;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *a5 = a4;
  return result;
}

id protocol witness for StyleableView.configuration.getter in conformance ResolvedColorPickerStyle@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;

  return v5;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedColorPickerStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedColorPickerStyle and conformance ResolvedColorPickerStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedColorPickerStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedColorPickerStyle and conformance ResolvedColorPickerStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t View.colorPickerStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ColorPickerStyleModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

unint64_t instantiation function for generic protocol witness table for ColorPickerStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ColorPickerStyleConfiguration.Label and conformance ColorPickerStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ColorPickerStyleConfiguration.Label and conformance ColorPickerStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type ColorPickerStyleConfiguration.Label and conformance ColorPickerStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type ColorPickerStyleConfiguration.Label and conformance ColorPickerStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColorPickerStyleConfiguration.Label and conformance ColorPickerStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColorPickerStyleConfiguration.Label and conformance ColorPickerStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type ColorPickerStyleConfiguration.Label and conformance ColorPickerStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColorPickerStyleConfiguration.Label and conformance ColorPickerStyleConfiguration.Label);
  }

  return result;
}

void destroy for ColorPickerStyleConfiguration(uint64_t a1)
{

  v2 = *(a1 + 24);
}

uint64_t initializeWithCopy for ColorPickerStyleConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;

  v5 = v4;
  return a1;
}

uint64_t assignWithCopy for ColorPickerStyleConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 24);
  v5 = *(a1 + 24);
  *(a1 + 24) = v4;
  v6 = v4;

  return a1;
}

uint64_t assignWithTake for ColorPickerStyleConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t ColorPickerStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16[-v10];
  v12 = *(a1 + 8);
  v16[0] = *a1;
  v17 = v12;
  v18 = *(a1 + 16);
  (*(v3 + 24))(v16, v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = *(v6 + 8);
  v14(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v14)(v11, AssociatedTypeWitness);
}

unint64_t lazy protocol witness table accessor for type ResolvedColorPickerStyle and conformance ResolvedColorPickerStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedColorPickerStyle and conformance ResolvedColorPickerStyle;
  if (!lazy protocol witness table cache variable for type ResolvedColorPickerStyle and conformance ResolvedColorPickerStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedColorPickerStyle and conformance ResolvedColorPickerStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedColorPickerStyle and conformance ResolvedColorPickerStyle;
  if (!lazy protocol witness table cache variable for type ResolvedColorPickerStyle and conformance ResolvedColorPickerStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedColorPickerStyle and conformance ResolvedColorPickerStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ColorPickerStyleModifier<DefaultColorPickerStyle> and conformance ColorPickerStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type ColorPickerStyleModifier<DefaultColorPickerStyle> and conformance ColorPickerStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type ColorPickerStyleModifier<DefaultColorPickerStyle> and conformance ColorPickerStyleModifier<A>)
  {
    type metadata accessor for ColorPickerStyleModifier<DefaultColorPickerStyle>(255, &lazy cache variable for type metadata for ColorPickerStyleModifier<DefaultColorPickerStyle>, lazy protocol witness table accessor for type DefaultColorPickerStyle and conformance DefaultColorPickerStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColorPickerStyleModifier<DefaultColorPickerStyle> and conformance ColorPickerStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultColorPickerStyle and conformance DefaultColorPickerStyle()
{
  result = lazy protocol witness table cache variable for type DefaultColorPickerStyle and conformance DefaultColorPickerStyle;
  if (!lazy protocol witness table cache variable for type DefaultColorPickerStyle and conformance DefaultColorPickerStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultColorPickerStyle and conformance DefaultColorPickerStyle);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ColorPickerStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ColorPickerStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

id protocol witness for ColorPickerStyle.makeBody(configuration:) in conformance DefaultColorPickerStyle@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v5 = *(a1 + 3);
  *a2 = *(a1 + 1);
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v2;

  return v5;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ColorPicker<ColorPickerStyleConfiguration.Label>, ColorPickerStyleModifier<SystemColorPickerStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ColorPicker<ColorPickerStyleConfiguration.Label>, ColorPickerStyleModifier<SystemColorPickerStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ColorPicker<ColorPickerStyleConfiguration.Label>, ColorPickerStyleModifier<SystemColorPickerStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ColorPicker<ColorPickerStyleConfiguration.Label>, ColorPickerStyleModifier<SystemColorPickerStyle>>();
    lazy protocol witness table accessor for type ColorPicker<ColorPickerStyleConfiguration.Label> and conformance ColorPicker<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ColorPicker<ColorPickerStyleConfiguration.Label>, ColorPickerStyleModifier<SystemColorPickerStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ColorPicker<ColorPickerStyleConfiguration.Label>, ColorPickerStyleModifier<SystemColorPickerStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ColorPicker<ColorPickerStyleConfiguration.Label>, ColorPickerStyleModifier<SystemColorPickerStyle>>)
  {
    type metadata accessor for ColorPicker<ColorPickerStyleConfiguration.Label>();
    type metadata accessor for ColorPickerStyleModifier<DefaultColorPickerStyle>(255, &lazy cache variable for type metadata for ColorPickerStyleModifier<SystemColorPickerStyle>, lazy protocol witness table accessor for type SystemColorPickerStyle and conformance SystemColorPickerStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ColorPicker<ColorPickerStyleConfiguration.Label>, ColorPickerStyleModifier<SystemColorPickerStyle>>);
    }
  }
}

void type metadata accessor for ColorPicker<ColorPickerStyleConfiguration.Label>()
{
  if (!lazy cache variable for type metadata for ColorPicker<ColorPickerStyleConfiguration.Label>)
  {
    v0 = type metadata accessor for ColorPicker();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ColorPicker<ColorPickerStyleConfiguration.Label>);
    }
  }
}

void type metadata accessor for ColorPickerStyleModifier<DefaultColorPickerStyle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for ColorPickerStyleModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SystemColorPickerStyle and conformance SystemColorPickerStyle()
{
  result = lazy protocol witness table cache variable for type SystemColorPickerStyle and conformance SystemColorPickerStyle;
  if (!lazy protocol witness table cache variable for type SystemColorPickerStyle and conformance SystemColorPickerStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemColorPickerStyle and conformance SystemColorPickerStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ColorPicker<ColorPickerStyleConfiguration.Label> and conformance ColorPicker<A>()
{
  result = lazy protocol witness table cache variable for type ColorPicker<ColorPickerStyleConfiguration.Label> and conformance ColorPicker<A>;
  if (!lazy protocol witness table cache variable for type ColorPicker<ColorPickerStyleConfiguration.Label> and conformance ColorPicker<A>)
  {
    type metadata accessor for ColorPicker<ColorPickerStyleConfiguration.Label>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColorPicker<ColorPickerStyleConfiguration.Label> and conformance ColorPicker<A>);
  }

  return result;
}

uint64_t TableRowContent.selectionDisabled(_:)(char a1, uint64_t a2)
{
  v5 = a1 ^ 1;
  type metadata accessor for _TraitWritingTableRowModifier<IsSelectionEnabledTraitKey>();
  return TableRowContent.modifier<A>(_:)(&v5, a2, v3);
}

void type metadata accessor for _TraitWritingTableRowModifier<IsSelectionEnabledTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingTableRowModifier<IsSelectionEnabledTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingTableRowModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<IsSelectionEnabledTraitKey>);
    }
  }
}

uint64_t protocol witness for ObservedAttribute.destroy() in conformance BoundNavigationPathDetector()
{
  v1 = type metadata accessor for ObservationTracking();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);
  v6 = OBJC_IVAR____TtCV7SwiftUI27BoundNavigationPathDetector15PathObservation_tracking;
  swift_beginAccess();
  result = (*(v2 + 48))(v5 + v6, 1, v1);
  if (!result)
  {
    (*(v2 + 16))(v4, v5 + v6, v1);
    ObservationTracking.cancel()();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody._destroySelf(_:) in conformance BoundNavigationPathDetector(uint64_t a1)
{
  v2 = type metadata accessor for ObservationTracking();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 40);
  v7 = OBJC_IVAR____TtCV7SwiftUI27BoundNavigationPathDetector15PathObservation_tracking;
  swift_beginAccess();
  result = (*(v3 + 48))(v6 + v7, 1, v2);
  if (!result)
  {
    (*(v3 + 16))(v5, v6 + v7, v2);
    ObservationTracking.cancel()();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t BoundNavigationPathDetector.PathObservation.__deallocating_deinit()
{
  outlined destroy of ObservationTracking?(v0 + OBJC_IVAR____TtCV7SwiftUI27BoundNavigationPathDetector15PathObservation_tracking, &lazy cache variable for type metadata for ObservationTracking?, MEMORY[0x1E69E81D8]);

  return swift_deallocClassInstance();
}

uint64_t assignWithCopy for BoundNavigationPathDetector(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithTake for BoundNavigationPathDetector(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t getEnumTagSinglePayload for BoundNavigationPathDetector(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for BoundNavigationPathDetector(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_10Foundation9PredicateVySS_QPGs5NeverOTg5066_s7SwiftUI11SceneBridgeC12canonicalize13externalEvent10Foundation9E30VySS_QPGSgShySSG_tFZAISSXEfU2_Tf1cn_n(uint64_t a1)
{
  type metadata accessor for Predicate<Pack{String}>();
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v32[1] = v1;
  v43 = MEMORY[0x1E69E7CC0];
  v34 = v5;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  v9 = v43;
  v10 = v34 + 56;
  result = _HashTable.startBucket.getter();
  v12 = v34;
  if (result < 0 || (v13 = result, result >= 1 << *(v34 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v36 = v10;
    v37 = v39 + 32;
    v14 = *(v34 + 36);
    v33 = v34 + 64;
    v15 = 1;
    v35 = v8;
    while (1)
    {
      v16 = v13 >> 6;
      if ((*(v10 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        break;
      }

      v40 = v32;
      v41 = v14;
      v17 = *(*(v12 + 48) + 16 * v13 + 8);
      MEMORY[0x1EEE9AC00](result);
      v32[-2] = v18;
      v32[-1] = v17;
      v20 = v19;

      v42 = MEMORY[0x1E69E6158];
      Predicate.init(_:)();

      v43 = v9;
      v21 = v7;
      v23 = *(v9 + 16);
      v22 = *(v9 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1);
        v9 = v43;
      }

      *(v9 + 16) = v23 + 1;
      result = (*(v39 + 32))(v9 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v23, v21, v38);
      v24 = 1 << *(v20 + 32);
      if (v13 >= v24)
      {
        goto LABEL_26;
      }

      v12 = v20;
      v10 = v36;
      v25 = *(v36 + 8 * v16);
      if ((v25 & (1 << v13)) == 0)
      {
        goto LABEL_27;
      }

      if (v41 != *(v12 + 36))
      {
        goto LABEL_28;
      }

      v7 = v21;
      v26 = v25 & (-2 << (v13 & 0x3F));
      if (v26)
      {
        v13 = __clz(__rbit64(v26)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v16 << 6;
        v28 = v16 + 1;
        v29 = (v33 + 8 * v16);
        while (v28 < (v24 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v13, v41, 0);
            v12 = v34;
            v13 = __clz(__rbit64(v30)) + v27;
            goto LABEL_18;
          }
        }

        result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v13, v41, 0);
        v12 = v34;
        v13 = v24;
LABEL_18:
        v7 = v21;
      }

      if (v15 == v35)
      {
        return v9;
      }

      if ((v13 & 0x8000000000000000) == 0)
      {
        v14 = *(v12 + 36);
        ++v15;
        if (v13 < 1 << *(v12 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t _defaultSwiftUIActivityEnvironmentLoggingEnabled.setter(Swift::Bool a1)
{
  result = swift_beginAccess();
  _defaultSwiftUIActivityEnvironmentLoggingEnabled = a1;
  return result;
}

Swift::Void __swiftcall UserActivityTrackingInfo.userActivityWillSave(_:)(NSUserActivity a1)
{
  if (pthread_main_np())
  {

    UserActivityTrackingInfo.updateUserActivity(_:)(a1);
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v3 = v1;
    v4 = static OS_dispatch_queue.main.getter();
    v5 = swift_allocObject();
    v5[2].super.isa = v3;
    v5[3].super.isa = a1.super.isa;
    v6 = swift_allocObject();
    *(v6 + 16) = partial apply for closure #1 in UserActivityTrackingInfo.userActivityWillSave(_:);
    *(v6 + 24) = v5;
    v11[4] = partial apply for thunk for @callee_guaranteed () -> ();
    v11[5] = v6;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = thunk for @escaping @callee_guaranteed () -> ();
    v11[3] = &block_descriptor_75_0;
    v7 = _Block_copy(v11);
    v8 = v3;
    v9 = a1.super.isa;

    dispatch_sync(v4, v7);

    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall UserActivityTrackingInfo.updateUserActivity(_:)(NSUserActivity a1)
{
  v2 = *&v1[OBJC_IVAR____TtC7SwiftUI24UserActivityTrackingInfo_userActivity];
  if (v2)
  {
    v3 = v2 == a1.super.isa;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v1;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v47 = Strong;
      v6 = OBJC_IVAR____TtC7SwiftUI24UserActivityTrackingInfo_handlers;
      swift_beginAccess();
      v7 = *&v1[v6];
      v10 = *(v7 + 64);
      v9 = v7 + 64;
      v8 = v10;
      v11 = 1 << *(*&v1[v6] + 32);
      v12 = -1;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      v13 = v12 & v8;
      v14 = (v11 + 63) >> 6;
      v48 = *&v1[v6];
      swift_bridgeObjectRetain_n();
      v15 = 0;
      v16 = MEMORY[0x1E69E7CC0];
      if (!v13)
      {
        goto LABEL_12;
      }

      do
      {
LABEL_10:
        while (1)
        {
          v17 = __clz(__rbit64(v13));
          v13 &= v13 - 1;
          v18 = v17 | (v15 << 6);
          v19 = *(*(v48 + 48) + 4 * v18);
          v20 = *(*(v48 + 56) + 16 * v18);
          v51[0] = a1.super.isa;

          v20(&v50, v51);

          if ((v50 & 1) == 0)
          {
            break;
          }

          if (!v13)
          {
            goto LABEL_12;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v23 = *(v16 + 2);
        v22 = *(v16 + 3);
        if (v23 >= v22 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v16);
        }

        *(v16 + 2) = v23 + 1;
        *&v16[4 * v23 + 32] = v19;
      }

      while (v13);
LABEL_12:
      while (1)
      {
        v21 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v21 >= v14)
        {

          v24 = *(v16 + 2);
          if (v24)
          {
            v25 = 32;
            do
            {
              v26 = *&v16[v25];
              swift_beginAccess();
              v27 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
              if (v28)
              {
                v29 = v27;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v31 = *&v4[v6];
                v50 = v31;
                *&v4[v6] = 0x8000000000000000;
                if (!isUniquelyReferenced_nonNull_native)
                {
                  specialized _NativeDictionary.copy()();
                  v31 = v50;
                }

                specialized _NativeDictionary._delete(at:)(v29, v31);
                *&v4[v6] = v31;
              }

              swift_endAccess();
              v25 += 4;
              --v24;
            }

            while (v24);

            v32 = v47;
            if (*(*&v4[v6] + 16))
            {
              v33 = *(v47 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_userActivityTrackingInfo);
              *(v47 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_userActivityTrackingInfo) = v4;
              v34 = v4;

              type metadata accessor for UserActivityTrackingInfo?(0, v35, v36);
              v38 = v37;
              v52 = v37;
              v51[0] = v4;
              v39 = v34;
              SceneBridge.publishEvent(event:type:identifier:)(v51, v38, 0xD000000000000018, 0x800000018CD7A830);
              __swift_destroy_boxed_opaque_existential_1(v51);
LABEL_35:
              [(objc_class *)a1.super.isa setNeedsSave:0];

              return;
            }
          }

          else
          {

            v32 = v47;
            if (*(*&v4[v6] + 16))
            {
              goto LABEL_35;
            }
          }

          v40 = *(v32 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_userActivityTrackingInfo);
          *(v32 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_userActivityTrackingInfo) = 0;

          type metadata accessor for UserActivityTrackingInfo?(0, v41, v42);
          v52 = v43;
          v51[0] = 0;
          SceneBridge.publishEvent(event:type:identifier:)(v51, v43, 0xD000000000000018, 0x800000018CD7A830);
          __swift_destroy_boxed_opaque_existential_1(v51);
          v44 = swift_unknownObjectWeakLoadStrong();
          if (v44)
          {
            v45 = v44;
            [v44 setUserActivity_];
          }

          else
          {
            v46 = *(v32 + 72);
            *(v32 + 72) = 0;
          }

          goto LABEL_35;
        }

        v13 = *(v9 + 8 * v21);
        ++v15;
        if (v13)
        {
          v15 = v21;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

uint64_t UserActivityTrackingInfo.description.getter()
{
  _StringGuts.grow(_:)(96);
  MEMORY[0x18D00C9B0](0xD000000000000027, 0x800000018CD41E00);
  swift_weakLoadStrong();
  type metadata accessor for Predicate<Pack{String}>?(0, &lazy cache variable for type metadata for SceneBridge?, 255, type metadata accessor for SceneBridge, MEMORY[0x1E69E6720]);
  v1 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v1);

  MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD41E30);
  swift_beginAccess();
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v2);

  MEMORY[0x18D00C9B0](0x6976697463610A2CLL, 0xEF20657079547974);
  v3 = OBJC_IVAR____TtC7SwiftUI24UserActivityTrackingInfo_userActivity;
  v4 = *(v0 + OBJC_IVAR____TtC7SwiftUI24UserActivityTrackingInfo_userActivity);
  if (v4)
  {
    v5 = [v4 activityType];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for PredicateExpressions.Variable<String>(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v6 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v6);

  MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD41E50);
  v7 = *(v0 + v3);
  if (v7)
  {
    v8 = [v7 title];
    if (v8)
    {
      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  v10 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v10);

  return 0;
}

uint64_t closure #1 in SceneBridge.pptTestCases.getter@<X0>(void *a1@<X8>)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    GraphHost.instantiateIfNeeded()();
    lazy protocol witness table accessor for type PPTFeature and conformance PPTFeature();
    if (ViewGraph.subscript.getter() && (type metadata accessor for PredicateExpressions.Variable<String>(0, &lazy cache variable for type metadata for [PPTTestCase.Name], &type metadata for PPTTestCase.Name, MEMORY[0x1E69E62F8]), (WeakValue = AGGraphGetWeakValue()) != 0))
    {
      v4 = *WeakValue;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v4;
  return result;
}

uint64_t SceneBridge.deinit()
{

  MEMORY[0x18D011290](v0 + 24);
  MEMORY[0x18D011290](v0 + 32);

  swift_weakDestroy();
  outlined destroy of Predicate<Pack{String}>?(v0 + OBJC_IVAR____TtC7SwiftUI11SceneBridge__preferredActivationConditions, type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?));
  outlined destroy of Predicate<Pack{String}>?(v0 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_defaultActivationConditions, type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?));

  return v0;
}

uint64_t SceneBridge.__deallocating_deinit()
{
  SceneBridge.deinit();

  return swift_deallocClassInstance();
}

uint64_t static SceneBridge.canonicalize(externalEvent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = *MEMORY[0x1E69E9840];
  type metadata accessor for Predicate<Pack{String}>();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v76 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v91 = v73 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v90 = v73 - v11;
  type metadata accessor for Predicate<Pack{String}>?(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v73 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v77 = v73 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v86 = v73 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v81 = v73 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v75 = v73 - v25;
  v26 = *(a1 + 32);
  v27 = v26 & 0x3F;
  v28 = ((1 << v26) + 63) >> 6;
  v29 = 8 * v28;

  if (v27 <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v73 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0), v29);
    v31 = 0;
    v32 = 0;
    v33 = 1 << *(a1 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(a1 + 56);
    v36 = (v33 + 63) >> 6;
    while (1)
    {
      if (!v35)
      {
        v39 = v32;
        while (1)
        {
          v32 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          if (v32 >= v36)
          {
            goto LABEL_19;
          }

          v40 = *(a1 + 56 + 8 * v32);
          ++v39;
          if (v40)
          {
            v35 = (v40 - 1) & v40;
            v38 = __clz(__rbit64(v40)) | (v32 << 6);
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_34;
      }

      v37 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v38 = v37 | (v32 << 6);
LABEL_12:
      v41 = (*(a1 + 48) + 16 * v38);
      v43 = *v41;
      v42 = v41[1];
      v44 = v43 & 0xFFFFFFFFFFFFLL;
      if ((v42 & 0x2000000000000000) != 0)
      {
        v45 = HIBYTE(v42) & 0xF;
      }

      else
      {
        v45 = v44;
      }

      if (v45)
      {
        *(v73 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v38;
        if (__OFADD__(v31++, 1))
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_19:
    v47 = specialized _NativeSet.extractSubset(using:count:)((v73 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0)), v28, v31, a1);
    if (!*(v47 + 16))
    {
      goto LABEL_36;
    }

    goto LABEL_20;
  }

LABEL_34:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
    goto LABEL_2;
  }

  v72 = swift_slowAlloc();
  v47 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySSG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_aB13VKXEfU_SS_TG5AHxSbs5Error_pRi_zRi0_zlySSIsgndzo_Tf1nc_n(v72, v28, a1, closure #1 in static SceneBridge.canonicalize(externalEvent:));
  MEMORY[0x18D0110E0](v72, -1, -1);
  if (!*(v47 + 16))
  {
    goto LABEL_36;
  }

LABEL_20:
  if (specialized Set.contains(_:)(42, 0xE100000000000000, v47))
  {
LABEL_36:

    v92 = MEMORY[0x1E69E6158];
    Predicate.init(_:)();
    return (*(v6 + 56))(a2, 0, 1, v5);
  }

  v85 = v17;
  v48 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_10Foundation9PredicateVySS_QPGs5NeverOTg5066_s7SwiftUI11SceneBridgeC12canonicalize13externalEvent10Foundation9E30VySS_QPGSgShySSG_tFZAISSXEfU2_Tf1cn_n(v47);

  v49 = v75;
  v88 = *(v6 + 56);
  v89 = v6 + 56;
  v88(v75, 1, 1, v5);
  v50 = v81;
  outlined init with copy of Predicate<Pack{String}>?(v49, v81, type metadata accessor for Predicate<Pack{String}>?);
  v51 = *(v48 + 16);
  if (v51)
  {
    v79 = v14;
    v74 = a2;
    v53 = *(v6 + 16);
    v52 = v6 + 16;
    v87 = v53;
    v54 = (*(v52 + 64) + 32) & ~*(v52 + 64);
    v73[1] = v48;
    v55 = v48 + v54;
    v56 = *(v52 + 56);
    v83 = (v52 + 32);
    v84 = v56;
    v78 = (v52 + 16);
    v82 = (v52 - 8);
    v57 = v77;
    v80 = v52;
    do
    {
      v59 = v90;
      v60 = v87;
      v87(v90, v55, v5);
      v60(v57, v59, v5);
      v88(v57, 0, 1, v5);
      v61 = v57;
      v62 = v85;
      outlined init with copy of Predicate<Pack{String}>?(v50, v85, type metadata accessor for Predicate<Pack{String}>?);
      v63 = *v83;
      if ((*v83)(v62, 1, v5) == 1)
      {
        (*v82)(v59, v5);
        outlined destroy of Predicate<Pack{String}>?(v50, type metadata accessor for Predicate<Pack{String}>?);
        outlined destroy of Predicate<Pack{String}>?(v62, type metadata accessor for Predicate<Pack{String}>?);
        v58 = v86;
        outlined init with take of Predicate<Pack{String}>?(v61, v86, type metadata accessor for Predicate<Pack{String}>?);
        v57 = v61;
      }

      else
      {
        v64 = *v78;
        (*v78)(v91, v62, v5);
        v65 = v79;
        outlined init with copy of Predicate<Pack{String}>?(v61, v79, type metadata accessor for Predicate<Pack{String}>?);
        v57 = v61;
        if (v63(v65, 1, v5) == 1)
        {
          outlined destroy of Predicate<Pack{String}>?(v61, type metadata accessor for Predicate<Pack{String}>?);
          v66 = *v82;
          (*v82)(v90, v5);
          v50 = v81;
          outlined destroy of Predicate<Pack{String}>?(v81, type metadata accessor for Predicate<Pack{String}>?);
          outlined destroy of Predicate<Pack{String}>?(v65, type metadata accessor for Predicate<Pack{String}>?);
          v58 = v86;
          v87(v86, v91, v5);
          v88(v58, 0, 1, v5);
        }

        else
        {
          v67 = v65;
          v68 = v76;
          v69 = (v64)(v76, v67, v5);
          v77 = v73;
          MEMORY[0x1EEE9AC00](v69);
          v73[-2] = v91;
          v73[-1] = v68;
          v92 = MEMORY[0x1E69E6158];
          v70 = v86;
          Predicate.init(_:)();
          outlined destroy of Predicate<Pack{String}>?(v57, type metadata accessor for Predicate<Pack{String}>?);
          v66 = *v82;
          (*v82)(v90, v5);
          v50 = v81;
          v58 = v70;
          outlined destroy of Predicate<Pack{String}>?(v81, type metadata accessor for Predicate<Pack{String}>?);
          v88(v70, 0, 1, v5);
          v66(v68, v5);
        }

        v66(v91, v5);
      }

      outlined init with take of Predicate<Pack{String}>?(v58, v50, type metadata accessor for Predicate<Pack{String}>?);
      v55 += v84;
      --v51;
    }

    while (v51);

    a2 = v74;
  }

  else
  {
  }

  outlined destroy of Predicate<Pack{String}>?(v75, type metadata accessor for Predicate<Pack{String}>?);
  return outlined init with take of Predicate<Pack{String}>?(v50, a2, type metadata accessor for Predicate<Pack{String}>?);
}

BOOL closure #1 in static SceneBridge.canonicalize(externalEvent:)(void *a1)
{
  v1 = a1[1];
  v2 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

uint64_t closure #6 in static SceneBridge.canonicalize(externalEvent:)@<X0>(uint64_t *a1@<X8>)
{
  return closure #6 in static SceneBridge.canonicalize(externalEvent:)(a1);
}

{
  type metadata accessor for PredicateExpressions.Variable<String>(0, &lazy cache variable for type metadata for PredicateExpressions.Value<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6968D10]);
  a1[3] = v2;
  a1[4] = lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return static PredicateExpressions.build_Arg<A>(_:)();
}

uint64_t closure #2 in closure #4 in static SceneBridge.canonicalize(externalEvent:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v20 = a1;
  v21 = a2;
  v4 = MEMORY[0x1E69E6158];
  v5 = MEMORY[0x1E6968D10];
  type metadata accessor for PredicateExpressions.Variable<String>(0, &lazy cache variable for type metadata for PredicateExpressions.Value<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6968D10]);
  v22 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  v10 = MEMORY[0x1E6968D98];
  type metadata accessor for PredicateExpressions.Variable<String>(0, &lazy cache variable for type metadata for PredicateExpressions.Variable<String>, v4, MEMORY[0x1E6968D98]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  lazy protocol witness table accessor for type PredicateExpressions.Value<String> and conformance PredicateExpressions.Value<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<String> and conformance PredicateExpressions.Variable<A>, &lazy cache variable for type metadata for PredicateExpressions.Variable<String>, v10);
  static PredicateExpressions.build_Arg<A>(_:)();
  v23 = v20;
  v24 = v21;
  static PredicateExpressions.build_Arg<A>(_:)();
  type metadata accessor for PredicateExpressions.StringLocalizedStandardContains<PredicateExpressions.Variable<String>, PredicateExpressions.Value<String>>();
  a3[3] = v16;
  a3[4] = lazy protocol witness table accessor for type PredicateExpressions.StringLocalizedStandardContains<PredicateExpressions.Variable<String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.StringLocalizedStandardContains<A, B>();
  __swift_allocate_boxed_opaque_existential_1(a3);
  lazy protocol witness table accessor for type PredicateExpressions.Value<String> and conformance PredicateExpressions.Value<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Value<String> and conformance PredicateExpressions.Value<A>, &lazy cache variable for type metadata for PredicateExpressions.Value<String>, v5);
  lazy protocol witness table accessor for type String and conformance String();
  v17 = v22;
  static PredicateExpressions.build_localizedStandardContains<A, B>(_:_:)();
  (*(v7 + 8))(v9, v17);
  return (*(v13 + 8))(v15, v12);
}

uint64_t closure #3 in static SceneBridge.merge(predicate:with:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v36 = a3;
  v34 = a2;
  v39 = a4;
  v5 = MEMORY[0x1E6968D98];
  type metadata accessor for PredicateExpressions.Variable<String>(0, &lazy cache variable for type metadata for PredicateExpressions.Variable<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6968D98]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v32 - v9;
  type metadata accessor for PredicateExpressions.Value<Predicate<Pack{String}>>(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>();
  v17 = *(v16 - 8);
  v37 = v16;
  v38 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v35 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v33 = v32 - v20;
  v32[1] = *a1;
  type metadata accessor for Predicate<Pack{String}>();
  v32[2] = v21;
  static PredicateExpressions.build_Arg<A>(_:)();
  v22 = lazy protocol witness table accessor for type PredicateExpressions.Value<String> and conformance PredicateExpressions.Value<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<String> and conformance PredicateExpressions.Variable<A>, &lazy cache variable for type metadata for PredicateExpressions.Variable<String>, v5);
  static PredicateExpressions.build_Arg<A>(_:)();
  v42 = v7;
  v43 = v10;
  lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Predicate<Pack{String}>> and conformance PredicateExpressions.Value<A>, type metadata accessor for PredicateExpressions.Value<Predicate<Pack{String}>>);
  v41 = v22;
  static PredicateExpressions.build_evaluate<A, B>(_:_:)();
  v23 = *(v13 + 8);
  v23(v15, v12);
  v24 = *(v8 + 8);
  v24(v10, v7);
  static PredicateExpressions.build_Arg<A>(_:)();
  static PredicateExpressions.build_Arg<A>(_:)();
  v40 = v10;
  v25 = v35;
  static PredicateExpressions.build_evaluate<A, B>(_:_:)();
  v23(v15, v12);
  v24(v10, v7);
  type metadata accessor for PredicateExpressions.Disjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>>();
  v26 = v39;
  v39[3] = v27;
  v26[4] = lazy protocol witness table accessor for type PredicateExpressions.Disjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>> and conformance <> PredicateExpressions.Disjunction<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v26);
  lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}> and conformance PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>, type metadata accessor for PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>);
  v28 = v33;
  v29 = v37;
  static PredicateExpressions.build_Disjunction<A, B>(lhs:rhs:)();
  v30 = *(v38 + 8);
  v30(v25, v29);
  return (v30)(v28, v29);
}

unint64_t SceneBridge.description.getter()
{
  swift_unknownObjectWeakLoadStrong();
  _s7SwiftUI15HashableWeakBoxVySo16UIViewControllerCGMaTm_0(0, &lazy cache variable for type metadata for UIViewController?, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258, MEMORY[0x1E69E6720]);
  v0 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v0);

  return 0xD000000000000022;
}

uint64_t *closure #1 in View.advertiseUserActivity(_:isActive:sceneBridge:handler:)(uint64_t *result, Swift::UInt32 *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a3 & 1) != 0 && a4)
  {
    v12 = result;
    v13 = *a2;
    v14 = *result;
    v15 = result[1];
    v16 = result[2];
    if (v15)
    {
      if (v14 == a5 && v15 == a6)
      {
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v18 & 1) == 0)
        {

          goto LABEL_10;
        }
      }

      v22 = swift_allocObject();
      *(v22 + 16) = a7;
      *(v22 + 24) = a8;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed NSUserActivity) -> (@unowned Bool)partial apply, v22, v13, isUniquelyReferenced_nonNull_native);
      v21 = v16;

      goto LABEL_13;
    }

LABEL_10:
    type metadata accessor for Predicate<Pack{String}>?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(ViewIdentity, (_:))>, 255, type metadata accessor for (ViewIdentity, (_:)), MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v20 = swift_allocObject();
    *(v20 + 16) = a7;
    *(v20 + 24) = a8;
    *(inited + 32) = v13;
    *(inited + 40) = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed NSUserActivity) -> (@unowned Bool);
    *(inited + 48) = v20;
    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_SbSo14NSUserActivityCcTt0g5Tf4g_n(inited);
    swift_setDeallocating();

    outlined destroy of Predicate<Pack{String}>?(inited + 32, type metadata accessor for (ViewIdentity, ()));
LABEL_13:
    result = outlined consume of FocusStore?(v14, v15);
    *v12 = a5;
    v12[1] = a6;
    v12[2] = v21;
  }

  return result;
}

void UserActivityModifier.scrapeableAttachment.getter(uint64_t *a1@<X8>)
{
  if (v1[2])
  {
    v3 = v1;
    type metadata accessor for Predicate<Pack{String}>?(0, &lazy cache variable for type metadata for State<UserActivityTrackingInfo?>, 255, type metadata accessor for UserActivityTrackingInfo?, MEMORY[0x1E6981790]);
    State.wrappedValue.getter();
    v4 = *v1;
    if (v13)
    {
      v5 = v3[1];
      v6 = *&v13[OBJC_IVAR____TtC7SwiftUI24UserActivityTrackingInfo_activityType] == v4 && *&v13[OBJC_IVAR____TtC7SwiftUI24UserActivityTrackingInfo_activityType + 8] == v5;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = *&v13[OBJC_IVAR____TtC7SwiftUI24UserActivityTrackingInfo_userActivity];
        v8 = v7;

        if (v7)
        {
LABEL_14:
          v12 = swift_allocObject();
          *(v12 + 16) = v8;
          v9 = v12 | 0x6000000000000000;
          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    else
    {
      v5 = v3[1];
    }

    v10 = objc_allocWithZone(MEMORY[0x1E696B090]);
    v11 = MEMORY[0x18D00C850](v4, v5);
    v8 = [v10 initWithActivityType_];

    (v3[3])(v8);
    goto LABEL_14;
  }

  v9 = 0xF000000000000007;
LABEL_15:
  *a1 = v9;
}