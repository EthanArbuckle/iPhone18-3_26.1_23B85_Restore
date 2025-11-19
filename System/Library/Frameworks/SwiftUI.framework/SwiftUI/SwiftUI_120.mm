Swift::Void __swiftcall AppPreviewHost.invalidateEverything()()
{
  if (static AppGraph.shared)
  {

    static Update.ensure<A>(_:)();
  }
}

void closure #1 in AppPreviewHost.invalidateEverything()(uint64_t a1)
{
  GraphHost.incrementPhase()();
  swift_beginAccess();
  if (*(a1 + 16))
  {
    AGGraphInvalidateAllValues();
    GraphHost.emptyTransaction(_:)();
    GraphHost.flushTransactions()();
  }

  else
  {
    __break(1u);
  }
}

uint64_t AppPreviewHost.previews.getter()
{
  AppPreviewHost.sceneItem()(v31);
  outlined init with copy of SceneList.Item.Value(v31, v26);
  if (v30)
  {
    outlined destroy of SceneList.Item(v31);
    outlined destroy of SceneList.Item.Value(v26);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v2 = v26[0];
    v1 = v26[1];
    v4 = v26[2];
    v3 = v27;
    v5 = v28;
    v6 = v29;
    type metadata accessor for _ContiguousArrayStorage<AppPreview>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AppPreview>, &type metadata for AppPreview, MEMORY[0x1E69E6F90]);
    v0 = swift_allocObject();
    *(v0 + 16) = xmmword_18CD63400;
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    swift_weakInit();
    swift_weakInit();
    swift_weakInit();
    v20 = 2;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v24 = 0;
    v25 = 0;
    *&v16 = v2;
    type metadata accessor for ModifiedContent<AnyView, RootModifier>();
    lazy protocol witness table accessor for type ModifiedContent<AnyView, RootModifier> and conformance <> ModifiedContent<A, B>();

    v7 = AnyView.init<A>(_:)();
    if (v5)
    {
      v13 = v7;
      v8 = EnvironmentValues.init()();
      v15 = v16;
      v14[1] = 0;
      v14[2] = 0;
      MEMORY[0x18D009CB0](v14, v8);
      v9 = Text.resolveString(in:with:idiom:)();
      v11 = v10;

      v7 = v13;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    *(v0 + 32) = v7;
    *(v0 + 40) = v9;
    *(v0 + 48) = v11;

    outlined consume of Text?(v1, v4, v3, v5);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6);
    outlined destroy of SceneList.Item(v31);
  }

  return v0;
}

uint64_t AppPreviewHost.sceneItem()@<X0>(void *a1@<X8>)
{
  MEMORY[0x18D00ABE0]();
  v3 = *(v1 + 32);
  if (v3 == 255 || !static AppGraph.shared)
  {
    goto LABEL_8;
  }

  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  outlined copy of SceneID?(v4, v5, *(v1 + 32));

  AppGraph.sceneList(namespace:)(0, 0, 2, __src);

  SceneList.item(id:where:)(v4, v5, v3 & 1, 0, __src);
  outlined consume of SceneID?(v4, v5, v3);

  if (!__src[68])
  {
    outlined destroy of HashableWeakBox<Swift.AnyObject>(__src, &lazy cache variable for type metadata for SceneList.Item?, &type metadata for SceneList.Item, MEMORY[0x1E69E6720]);
LABEL_8:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  memcpy(a1, __src, 0x231uLL);

  return static Update.end()();
}

uint64_t AppPreviewHost.deinit()
{
  outlined consume of SceneID?(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t AppPreviewHost.__deallocating_deinit()
{
  outlined consume of SceneID?(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AppGraphObserver.scenesDidChange(phaseChanged:) in conformance AppPreviewHost(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type AppPreviewRootModifierStorage and conformance AppPreviewRootModifierStorage(&lazy protocol witness table cache variable for type AppPreviewHost and conformance AppPreviewHost, a2, type metadata accessor for AppPreviewHost);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();
}

uint64_t AppPreviewRootModifierStorage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t AppPreviewRootModifierStorage.init()()
{
  v1 = v0;
  type metadata accessor for SceneBridge(0);
  swift_allocObject();
  *(v0 + 16) = SceneBridge.init()();
  v2 = MEMORY[0x1E69E7CC0];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for SceneStorageValues();
  v4 = swift_allocObject();
  v4[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI18SceneStorageValuesC5Entry33_1700ED20D4EA891B02973E899ABDB425LLCTt0g5Tf4g_n(v2);
  v4[6] = 0;
  swift_unknownObjectWeakInit();
  v4[2] = v3;
  v4[4] = *(v3 + 16);
  *(v1 + 24) = v4;
  return v1;
}

uint64_t View.configuredForSceneRoot()(uint64_t a1, uint64_t a2)
{
  v3[0] = implicit closure #2 in implicit closure #1 in variable initialization expression of AppPreviewRootModifier._storage;
  v3[1] = 0;
  v4 = 0;
  return MEMORY[0x18D00A570](v3, a1, &unk_1EFFD89B8, a2);
}

uint64_t implicit closure #2 in implicit closure #1 in variable initialization expression of AppPreviewRootModifier._storage()
{
  type metadata accessor for AppPreviewRootModifierStorage();
  swift_allocObject();
  return AppPreviewRootModifierStorage.init()();
}

uint64_t AppPreviewRootModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AppPreviewRootModifierStorage();
  lazy protocol witness table accessor for type AppPreviewRootModifierStorage and conformance AppPreviewRootModifierStorage(&lazy protocol witness table cache variable for type AppPreviewRootModifierStorage and conformance AppPreviewRootModifierStorage, 255, type metadata accessor for AppPreviewRootModifierStorage);
  StateObject.wrappedValue.getter();

  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  swift_weakInit();

  swift_weakInit();
  swift_weakInit();

  *(a1 + 64) = 2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy7SwiftUI15HashableWeakBoxVyyXlGG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab8VKXEfU_7i4UI15klM10VyyXlG_TG5ALxSbs5Error_pRi_zRi0_zlyAKIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = specialized closure #1 in _NativeSet.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t specialized closure #1 in _NativeSet.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  v22 = a4;
  v19 = result;
  v20 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    outlined init with copy of HashableWeakBox<Swift.AnyObject>(*(a3 + 48) + 16 * v15, v21);
    v16 = v22(v21);
    result = outlined destroy of HashableWeakBox<Swift.AnyObject>(v21, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
    if (v4)
    {
      return result;
    }

    if (v16)
    {
      *(v19 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        return specialized _NativeSet.extractSubset(using:count:)(v19, a2, v20, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        specialized _NativeSet.extractSubset(using:count:)(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t specialized closure #1 in _NativeSet.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return specialized _NativeSet.extractSubset(using:count:)(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void type metadata accessor for ModifiedContent<AnyView, RootModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>)
  {
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>);
    }
  }
}

uint64_t destroy for AppPreview()
{
}

void *initializeBufferWithCopyOfBuffer for AppPreview(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for AppPreview(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

void *assignWithTake for AppPreview(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  return a1;
}

unint64_t lazy protocol witness table accessor for type AppPreviewRootModifier and conformance AppPreviewRootModifier()
{
  result = lazy protocol witness table cache variable for type AppPreviewRootModifier and conformance AppPreviewRootModifier;
  if (!lazy protocol witness table cache variable for type AppPreviewRootModifier and conformance AppPreviewRootModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppPreviewRootModifier and conformance AppPreviewRootModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AppPreviewRootModifier>, RootModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AppPreviewRootModifier>, RootModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AppPreviewRootModifier>, RootModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<AppPreviewRootModifier>, RootModifier>();
    lazy protocol witness table accessor for type AppPreviewRootModifierStorage and conformance AppPreviewRootModifierStorage(&lazy protocol witness table cache variable for type _ViewModifier_Content<AppPreviewRootModifier> and conformance _ViewModifier_Content<A>, 255, type metadata accessor for _ViewModifier_Content<AppPreviewRootModifier>);
    lazy protocol witness table accessor for type RootModifier and conformance RootModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AppPreviewRootModifier>, RootModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<AppPreviewRootModifier>, RootModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AppPreviewRootModifier>, RootModifier>)
  {
    type metadata accessor for _ViewModifier_Content<AppPreviewRootModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AppPreviewRootModifier>, RootModifier>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<AppPreviewRootModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<AppPreviewRootModifier>)
  {
    lazy protocol witness table accessor for type AppPreviewRootModifier and conformance AppPreviewRootModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<AppPreviewRootModifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AppPreviewRootModifierStorage and conformance AppPreviewRootModifierStorage(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance NavigationPresentationAdaptorModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance NavigationPresentationAdaptorModifier();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

double static _FocusSectionModifier._makeView(modifier:inputs:body:)@<D0>(uint64_t a1@<X1>, void (*a2)(uint64_t *__return_ptr)@<X2>, double *a3@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  v33 = *(a1 + 32);
  v34 = v4;
  v6 = *(a1 + 48);
  v35 = *(a1 + 64);
  v7 = *(a1 + 16);
  v31 = *a1;
  v32 = v7;
  v21 = v33;
  v22 = v6;
  v23 = *(a1 + 64);
  v36 = *(a1 + 80);
  v24 = *(a1 + 80);
  v19 = v31;
  v20 = v5;
  a2(&v17);
  *&v19 = v34;
  DWORD2(v19) = DWORD2(v34);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    type metadata accessor for FocusSectionResponder(0);
    v8 = swift_allocObject();
    outlined init with copy of _ViewInputs(&v31, &v19);
    ViewTransform.init()();
    *(v8 + 264) = 0;
    *(v8 + 272) = 0;
    *(v8 + 280) = 512;
    *(v8 + 282) = 0;
    *(v8 + 288) = 0;
    v21 = v33;
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v19 = v31;
    v20 = v32;
    v9 = DefaultLayoutViewResponder.init(inputs:)();
    v10 = HIDWORD(v34);
    v21 = v33;
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v19 = v31;
    v20 = v32;
    v11 = _ViewInputs.animatedPosition()();
    v21 = v33;
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v19 = v31;
    v20 = v32;
    swift_beginAccess();
    v12 = CachedEnvironment.animatedSize(for:)();
    swift_endAccess();
    v21 = v33;
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v19 = v31;
    v20 = v32;
    v13 = _ViewInputs.isEnabled.getter();
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v25 = v31;
    v26 = v32;
    v14 = _ViewInputs.layoutDirection.getter();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();

    LODWORD(v8) = _ViewOutputs.viewResponders()();

    *&v19 = __PAIR64__(v11, v10);
    *(&v19 + 1) = __PAIR64__(v13, v12);
    *&v20 = __PAIR64__(OffsetAttribute2, v14);
    DWORD2(v20) = v8;
    *&v21 = v9;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for [ViewResponder](0);
    lazy protocol witness table accessor for type FocusSectionResponderFilter and conformance FocusSectionResponderFilter();

    LODWORD(v8) = Attribute.init<A>(body:value:flags:update:)();

    v27 = v33;
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v25 = v31;
    v26 = v32;
    outlined init with copy of _ViewInputs(&v31, &v19);
    UIKitHostedFocusItemLifecycle.init(inputs:responders:)(&v25, v8, &v19);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type UIKitHostedFocusItemLifecycle and conformance UIKitHostedFocusItemLifecycle();
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of UIKitHostedFocusItemLifecycle(&v19);
    AGGraphSetFlags();
    LOBYTE(v19) = 0;
    PreferencesOutputs.subscript.setter();
  }

  *a3 = v17;
  result = v18;
  a3[1] = v18;
  return result;
}

uint64_t FocusSectionResponderFilter.updateValue()()
{
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v32 = v2;
  v3 = *Value;
  v4 = Value[1];
  v5 = AGGraphGetValue();
  v7 = v6;
  v8 = *v5;
  v9 = *(v5 + 8);
  v27 = *(v5 + 16);
  v28 = *(v5 + 32);

  AGGraphGetValue();
  v11 = v10;
  v12 = AGGraphGetValue();
  v14 = v13;
  v31 = *v12;
  v15 = AGGraphGetValue();
  v17 = v16;
  v30 = *v15;
  v18 = AGGraphGetValue();
  v20 = v19;
  v29 = *v18;
  v21 = *(v0 + 32);
  type metadata accessor for [ViewResponder](0);

  AGGraphGetValue();
  if (v22)
  {

    MultiViewResponder.children.setter();
  }

  if ((v32 & 1) != 0 || (v7 & 1) != 0 || (v11 & 1) != 0 || (v14 & 1) != 0 || (v17 & 1) != 0 || (v20 & 1) != 0 || !AGGraphGetOutputValue())
  {

    ViewTransform.appendPosition(_:)(__PAIR128__(v4, v3));
    *(v21 + 216) = v8;
    *(v21 + 224) = v9;
    *(v21 + 232) = v27;
    *(v21 + 248) = v28;

    *(v21 + 264) = MEMORY[0x18D00B390](v23);
    *(v21 + 272) = v24;
    *(v21 + 280) = v31;
    *(v21 + 281) = v30;
    FocusSectionResponder.speedBumpEdges.setter(v29);
  }

  if (AGGraphGetOutputValue())
  {
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_18CD69590;
    *(v26 + 32) = v21;

    AGGraphSetOutputValue();
  }
}

void *FocusSectionResponder.speedBumpEdges.setter(uint64_t a1)
{
  *(v1 + 282) = a1;
  result = *(v1 + 288);
  if (result)
  {
    v4 = *(v1 + 281);
    v8 = *(v1 + 288);
    if (v4 == 2)
    {
      v10 = 0;
      v5 = result;
      v6 = &v10;
    }

    else
    {
      v9 = v4 & 1;
      v7 = result;
      v6 = &v9;
    }

    *(v8 + direct field offset for UIKitFocusSectionResponderItem._focusSpeedBumpEdges) = specialized UIRectEdge.init(_:layoutDirection:)(a1, v6);

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

void FocusSectionResponder.__ivar_destroyer()
{

  v1 = *(v0 + 288);
}

uint64_t FocusSectionResponder.__deallocating_deinit()
{
  v0 = DefaultLayoutViewResponder.deinit();

  v1 = *(v0 + 288);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for BaseFocusResponder.platformItem.getter in conformance FocusSectionResponder()
{
  specialized FocusSectionResponder.hostedItem.getter();

  return swift_unknownObjectRetain();
}

id UIKitFocusSectionResponderItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIKitFocusSectionResponderItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized FocusSectionResponder.hostedItem.getter()
{
  result = *(v0 + 288);
  if (!result)
  {
    v2 = *(v0 + 281);
    v3 = *(v0 + 282);
    if (v2 == 2)
    {
      v10 = 0;
    }

    else
    {
      v10 = v2 & 1;
    }

    v4 = specialized UIRectEdge.init(_:layoutDirection:)(v3, &v10);
    v5 = objc_allocWithZone(type metadata accessor for UIKitFocusSectionResponderItem(0));
    *&v5[direct field offset for UIKitFocusSectionResponderItem._focusSpeedBumpEdges] = v4;
    swift_weakInit();
    swift_unknownObjectWeakInit();
    *&v5[direct field offset for UIKitContainerFocusResponderItem.frameAttr] = 0;
    v5[direct field offset for UIKitContainerFocusResponderItem.isEnabled] = 1;
    *&v5[direct field offset for UIKitContainerFocusResponderItem.cachedCoordinateSpace] = 0;
    swift_weakAssign();
    type metadata accessor for UIKitContainerFocusResponderItem<FocusSectionResponder>();
    v9.receiver = v5;
    v9.super_class = v6;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    v8 = *(v0 + 288);
    *(v0 + 288) = v7;

    return *(v0 + 288);
  }

  return result;
}

void type metadata accessor for UIKitContainerFocusResponderItem<FocusSectionResponder>()
{
  if (!lazy cache variable for type metadata for UIKitContainerFocusResponderItem<FocusSectionResponder>)
  {
    type metadata accessor for FocusSectionResponder(255);
    v0 = type metadata accessor for UIKitContainerFocusResponderItem();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIKitContainerFocusResponderItem<FocusSectionResponder>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type FocusSectionResponderFilter and conformance FocusSectionResponderFilter()
{
  result = lazy protocol witness table cache variable for type FocusSectionResponderFilter and conformance FocusSectionResponderFilter;
  if (!lazy protocol witness table cache variable for type FocusSectionResponderFilter and conformance FocusSectionResponderFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusSectionResponderFilter and conformance FocusSectionResponderFilter);
  }

  return result;
}

uint64_t specialized FocusSectionResponder.__allocating_init(inputs:)()
{
  type metadata accessor for FocusSectionResponder(0);
  v0 = swift_allocObject();
  ViewTransform.init()();
  *(v0 + 264) = 0;
  *(v0 + 272) = 0;
  *(v0 + 280) = 512;
  *(v0 + 282) = 0;
  *(v0 + 288) = 0;
  return DefaultLayoutViewResponder.init(inputs:)();
}

uint64_t specialized FocusSectionResponder.__allocating_init(inputs:viewSubgraph:)()
{
  type metadata accessor for FocusSectionResponder(0);
  v0 = swift_allocObject();
  ViewTransform.init()();
  *(v0 + 264) = 0;
  *(v0 + 272) = 0;
  *(v0 + 280) = 512;
  *(v0 + 282) = 0;
  *(v0 + 288) = 0;
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)();
}

uint64_t View.accessibilityDirectTouch(_:options:)(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v8[0] = a1 & 1;
  v8[1] = v6;
  lazy protocol witness table accessor for type AccessibilityProperties.TouchInfoKey and conformance AccessibilityProperties.TouchInfoKey();
  return View.accessibility<A>(_:_:isEnabled:)(&type metadata for AccessibilityProperties.TouchInfoKey, v8, 1, a3, &type metadata for AccessibilityProperties.TouchInfoKey, a4);
}

uint64_t ModifiedContent<>.accessibilityDirectTouch(_:options:)@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v8[0] = a1 & 1;
  v8[1] = v6;
  lazy protocol witness table accessor for type AccessibilityProperties.TouchInfoKey and conformance AccessibilityProperties.TouchInfoKey();
  return ModifiedContent<>.update<A>(_:replacing:isEnabled:)(&type metadata for AccessibilityProperties.TouchInfoKey, v8, 1, a3, a4);
}

unint64_t lazy protocol witness table accessor for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions()
{
  result = lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions;
  if (!lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions;
  if (!lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions;
  if (!lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions;
  if (!lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions);
  }

  return result;
}

uint64_t KeyboardShortcutBridge.updateKeyCommands(_:)(uint64_t result)
{
  v124 = result;
  v121 = (v1 + OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_updatedBindings);
  v2 = *(v1 + OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_updatedBindings + 8);
  v3 = (v1 + OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_currentBindings);
  if (v2 != -1 && v2 == v3[2])
  {
    return result;
  }

  v4 = *v121;
  *&v146 = *v3;
  v143[0] = v4;
  *&v150 = MEMORY[0x1E69E7CC0];
  type metadata accessor for CollectionChanges<Int, Int>();
  v132 = v1;
  type metadata accessor for [KeyboardShortcutBinding]();
  lazy protocol witness table accessor for type [KeyboardShortcutBinding] and conformance [A]();
  lazy protocol witness table accessor for type KeyboardShortcutBinding and conformance KeyboardShortcutBinding();
  v5 = v1;
  CollectionChanges.formChanges<A, B>(from:to:)();
  v118 = v150;
  v6 = *(v150 + 16);
  if (!v6)
  {
LABEL_84:

    v116 = v121[2];
    *v3 = *v121;
    v3[2] = v116;
  }

  v7 = 0;
  v142 = OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_shortcutMap;
  v117 = v150 + 32;
  v125 = v3;
  while (1)
  {
    if (v7 >= v6)
    {
      goto LABEL_99;
    }

    v8 = v117 + 40 * v7;
    v10 = *v8;
    v9 = *(v8 + 8);
    v122 = *v8;
    v140 = v9;
    v119 = v7;
    if (*(v8 + 32))
    {
      break;
    }

    if (v9 != v10)
    {
      if (v10 >= v9)
      {
LABEL_86:
        __break(1u);
      }

      else
      {
        v52 = v9 - 1;
        v53 = (v9 << 6) - 32;
        while (v52 + 1 >= 1)
        {
          if (v52 >= *(*v3 + 16))
          {
            goto LABEL_88;
          }

          v54 = (*v3 + v53);
          v55 = v54[2];
          v56 = v54[3];
          v57 = v54[1];
          v150 = *v54;
          v151 = v57;
          v152 = v55;
          v153 = v56;
          v58 = v150;
          v59 = v57;
          v60 = BYTE8(v57);
          swift_beginAccess();
          v61 = *(v5 + v142);
          if (*(v61 + 16) && (v62 = specialized __RawDictionaryStorage.find<A>(_:)(v58, *(&v58 + 1), v59, v60), (v63 & 1) != 0))
          {
            v64 = *(v61 + 56) + 24 * v62;
            v65 = *v64;
            v134 = *(v64 + 8);
            v139 = *(v64 + 16);
            swift_endAccess();
            outlined init with copy of KeyboardShortcutSource?(v124, v143);
            v66 = v144;
            v136 = v65;
            if (v144)
            {
              v67 = v145;
              v129 = v145;
              __swift_project_boxed_opaque_existential_1(v143, v144);
              v68 = *(v67 + 16);
              outlined init with copy of KeyboardShortcutBinding(&v150, &v146);

              v69 = v65;

              v68(v69, v134, v139, v66, v129);
              __swift_destroy_boxed_opaque_existential_1(v143);
            }

            else
            {
              outlined init with copy of KeyboardShortcutBinding(&v150, &v146);

              v70 = v65;

              outlined destroy of KeyboardShortcutSource?(v143);
            }

            swift_beginAccess();
            v71 = specialized Dictionary._Variant.removeValue(forKey:)(v58, *(&v58 + 1), v59, v60);
            swift_endAccess();
            v5 = v132;
            outlined consume of KeyboardShortcutBridge.Shortcut?(v71);

            outlined destroy of KeyboardShortcutBinding(&v150);

            v3 = v125;
            v10 = v122;
          }

          else
          {
            swift_endAccess();
          }

          if (v10 == v52)
          {
            goto LABEL_5;
          }

          if (v10 < v52)
          {
            v53 -= 64;
            if (v140 >= v52--)
            {
              continue;
            }
          }

          goto LABEL_86;
        }
      }

      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

LABEL_5:
    v7 = v119 + 1;
    v6 = *(v118 + 16);
    if (v119 + 1 == v6)
    {
      goto LABEL_84;
    }
  }

  if (*(v8 + 32) == 1)
  {
    if (v10 != v9)
    {
      if (v9 < v10)
      {
        goto LABEL_101;
      }

      type metadata accessor for UIKeyCommand();
      if (v10 < v9)
      {
        v11 = (v10 << 6) | 0x20;
        v120 = v9 - 1;
        v12 = v10;
        while (1)
        {
          if (v10 < 0)
          {
            goto LABEL_92;
          }

          if (v12 >= *(*v121 + 16))
          {
            goto LABEL_94;
          }

          v13 = (*v121 + v11);
          v14 = v13[1];
          v16 = v13[2];
          v15 = v13[3];
          v150 = *v13;
          v151 = v14;
          v152 = v16;
          v153 = v15;
          v17 = *(&v16 + 1);
          v18 = *(&v150 + 1);
          v135 = v16;
          v137 = v150;
          v19 = v14;
          v20 = BYTE8(v14);
          v146 = *v13;
          v147 = v13[1];
          v148 = v13[2];
          v149 = v13[3];
          outlined init with copy of KeyboardShortcutBinding(&v150, v143);
          outlined init with copy of KeyboardShortcutBinding(&v150, v143);
          outlined init with copy of KeyboardShortcutBinding(&v150, v143);
          v21 = UIKeyCommand.init(_:)(&v146);

          outlined destroy of KeyboardShortcutBinding(&v150);
          swift_beginAccess();
          if (!*(*(v5 + v142) + 16))
          {
            break;
          }

          specialized __RawDictionaryStorage.find<A>(_:)(v137, v18, v19, v20);
          if ((v22 & 1) == 0)
          {
            break;
          }

          swift_endAccess();
          v10 = v122;
          v23 = v140;
LABEL_33:

          outlined destroy of KeyboardShortcutBinding(&v150);
          if (v120 == v12)
          {
            goto LABEL_5;
          }

          v51 = v12 + 1;
          if (v12 + 1 >= v10)
          {
            v11 += 64;
            ++v12;
            if (v51 < v23)
            {
              continue;
            }
          }

          goto LABEL_89;
        }

        v133 = v20;
        v128 = v12;
        v131 = v19;
        swift_endAccess();
        outlined init with copy of KeyboardShortcutSource?(v124, &v146);
        v24 = *(&v147 + 1);
        v126 = v11;
        if (*(&v147 + 1))
        {
          v25 = v148;
          __swift_project_boxed_opaque_existential_1(&v146, *(&v147 + 1));
          v26 = *(v25 + 8);
          v27 = v18;

          v26(v21, v135, v17, v24, v25);
          v28 = v137;
          __swift_destroy_boxed_opaque_existential_1(&v146);
        }

        else
        {

          outlined destroy of KeyboardShortcutSource?(&v146);
          v27 = v18;
          v28 = v137;
        }

        swift_beginAccess();
        v29 = v17;

        v138 = v21;
        v30 = v21;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v143[0] = *(v132 + v142);
        v32 = v143[0];
        *(v132 + v142) = 0x8000000000000000;
        v33 = v28;
        v34 = v27;
        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v27, v131, v133);
        v37 = *(v32 + 16);
        v38 = (v35 & 1) == 0;
        v39 = v37 + v38;
        if (__OFADD__(v37, v38))
        {
          goto LABEL_96;
        }

        v40 = v35;
        if (*(v32 + 24) < v39)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, isUniquelyReferenced_nonNull_native);
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v27, v131, v133);
          v12 = v128;
          if ((v40 & 1) != (v42 & 1))
          {
            goto LABEL_102;
          }

          v36 = v41;
          if ((v40 & 1) == 0)
          {
            goto LABEL_30;
          }

LABEL_28:

          v43 = v143[0];
          v44 = *(v143[0] + 56) + 24 * v36;
          v45 = *v44;
          *v44 = v30;
          *(v44 + 8) = v135;
          *(v44 + 16) = v29;

LABEL_32:
          v5 = v132;
          *(v132 + v142) = v43;
          swift_endAccess();
          v10 = v122;
          v21 = v138;
          v23 = v140;
          v3 = v125;
          v11 = v126;
          goto LABEL_33;
        }

        v12 = v128;
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v35)
          {
            goto LABEL_28;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if (v40)
          {
            goto LABEL_28;
          }
        }

LABEL_30:
        v43 = v143[0];
        *(v143[0] + 8 * (v36 >> 6) + 64) |= 1 << v36;
        v46 = v43[6] + 32 * v36;
        *v46 = v33;
        *(v46 + 8) = v34;
        *(v46 + 16) = v131;
        *(v46 + 24) = v133;
        v47 = (v43[7] + 24 * v36);
        *v47 = v30;
        v47[1] = v135;
        v47[2] = v29;
        v48 = v43[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_97;
        }

        v43[2] = v50;
        goto LABEL_32;
      }

LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    goto LABEL_5;
  }

  v74 = *(v8 + 16);
  v73 = *(v8 + 24);
  if (v74 == v73)
  {
    goto LABEL_5;
  }

  if (v73 >= v74)
  {
    if (v74 < v73)
    {
      v75 = (v74 << 6) | 0x20;
      v127 = v73 - 1;
      v130 = *(v8 + 24);
      v76 = *(v8 + 16);
      v123 = v76;
      while ((v74 & 0x8000000000000000) == 0)
      {
        if (v76 >= *(*v121 + 16))
        {
          goto LABEL_93;
        }

        v77 = (*v121 + v75);
        v78 = v77[1];
        v80 = v77[2];
        v79 = v77[3];
        v150 = *v77;
        v151 = v78;
        v152 = v80;
        v153 = v79;
        v81 = v80;
        v82 = v150;
        v83 = v78;
        v84 = BYTE8(v78);
        swift_beginAccess();
        v85 = *(v5 + v142);
        if (*(v85 + 16) && (v86 = specialized __RawDictionaryStorage.find<A>(_:)(v82, *(&v82 + 1), v83, v84), (v87 & 1) != 0))
        {
          v88 = *(*(v85 + 56) + 24 * v86);
          outlined init with copy of KeyboardShortcutBinding(&v150, &v146);

          v89 = v88;
          swift_retain_n();
          swift_endAccess();
          outlined consume of KeyboardShortcutBridge.Shortcut?(v88);

          v5 = v132;
          swift_beginAccess();
          v91 = specialized Dictionary.subscript.modify(&v146, v82, *(&v82 + 1), v83, v84);
          if (*v90)
          {
            *(v90 + 8) = v81;

            (v91)(&v146, 0);
            swift_endAccess();

            outlined destroy of KeyboardShortcutBinding(&v150);
          }

          else
          {
            (v91)(&v146, 0);
            swift_endAccess();

            outlined destroy of KeyboardShortcutBinding(&v150);
          }

          v3 = v125;
        }

        else
        {
          v141 = v83;
          swift_endAccess();
          type metadata accessor for UIKeyCommand();
          v146 = v150;
          v147 = v151;
          v148 = v152;
          v149 = v153;
          outlined init with copy of KeyboardShortcutBinding(&v150, v143);
          outlined init with copy of KeyboardShortcutBinding(&v150, v143);
          outlined init with copy of KeyboardShortcutBinding(&v150, v143);

          v92 = UIKeyCommand.init(_:)(&v146);

          outlined destroy of KeyboardShortcutBinding(&v150);
          outlined init with copy of KeyboardShortcutSource?(v124, &v146);
          v93 = *(&v147 + 1);
          if (*(&v147 + 1))
          {
            v94 = v148;
            __swift_project_boxed_opaque_existential_1(&v146, *(&v147 + 1));
            (*(v94 + 8))(v92, v81, *(&v81 + 1), v93, v94);
            __swift_destroy_boxed_opaque_existential_1(&v146);
          }

          else
          {
            outlined destroy of KeyboardShortcutSource?(&v146);
          }

          swift_beginAccess();

          v95 = v92;
          v96 = swift_isUniquelyReferenced_nonNull_native();
          v143[0] = *(v132 + v142);
          v97 = v143[0];
          *(v132 + v142) = 0x8000000000000000;
          v98 = v84;
          v100 = specialized __RawDictionaryStorage.find<A>(_:)(v82, *(&v82 + 1), v141, v84);
          v101 = *(v97 + 16);
          v102 = (v99 & 1) == 0;
          v103 = v101 + v102;
          if (__OFADD__(v101, v102))
          {
            goto LABEL_95;
          }

          v104 = v99;
          if (*(v97 + 24) >= v103)
          {
            if ((v96 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v103, v96);
            v105 = specialized __RawDictionaryStorage.find<A>(_:)(v82, *(&v82 + 1), v141, v98);
            if ((v104 & 1) != (v106 & 1))
            {
              goto LABEL_102;
            }

            v100 = v105;
          }

          if (v104)
          {

            v107 = v143[0];
            v108 = *(v143[0] + 56) + 24 * v100;
            v109 = *v108;
            *v108 = v95;
            *(v108 + 8) = v81;
          }

          else
          {
            v110 = v98;
            v107 = v143[0];
            *(v143[0] + 8 * (v100 >> 6) + 64) |= 1 << v100;
            v111 = v107[6] + 32 * v100;
            *v111 = v82;
            *(v111 + 16) = v141;
            *(v111 + 24) = v110;
            v112 = v107[7] + 24 * v100;
            *v112 = v95;
            *(v112 + 8) = v81;
            v113 = v107[2];
            v49 = __OFADD__(v113, 1);
            v114 = v113 + 1;
            if (v49)
            {
              goto LABEL_98;
            }

            v107[2] = v114;
          }

          v5 = v132;
          *(v132 + v142) = v107;
          swift_endAccess();

          outlined destroy of KeyboardShortcutBinding(&v150);
          v3 = v125;
          v74 = v123;
        }

        if (v127 == v76)
        {
          goto LABEL_5;
        }

        v115 = v76 + 1;
        if (v76 + 1 >= v74)
        {
          v75 += 64;
          ++v76;
          if (v115 < v130)
          {
            continue;
          }
        }

        goto LABEL_90;
      }

      goto LABEL_91;
    }

LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
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
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id UIKeyCommand.init(_:)(uint64_t a1)
{
  countAndFlagsBits = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 56);
  if (one-time initialization token for keyEquivalentToKeyInputMap != -1)
  {
    swift_once();
  }

  rawValue = keyEquivalentToKeyInputMap._rawValue;
  if (*(keyEquivalentToKeyInputMap._rawValue + 2))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v1);
    object = v1;
    if (v9)
    {
      v10 = (rawValue[7] + 16 * v7);
      countAndFlagsBits = *v10;
      object = v10[1];
    }
  }

  else
  {
    object = v1;
  }

  if (v3)
  {
    if ((v3 & 2) == 0)
    {
      v11 = 0x10000;
      if ((v3 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v11 = 196608;
    if ((v3 & 4) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if ((v3 & 2) == 0)
    {
      v11 = 0;
      if ((v3 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v11 = 0x20000;
    if ((v3 & 4) != 0)
    {
LABEL_13:
      v11 |= 0x40000uLL;
    }
  }

LABEL_14:
  if ((v3 & 8) == 0)
  {
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_16;
    }

LABEL_25:
    v11 |= 0x100000uLL;
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v11 |= 0x80000uLL;
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  if ((v3 & 0x20) != 0)
  {
LABEL_17:
    v11 |= 0x200000uLL;
  }

LABEL_18:
  specialized Collection.first.getter(countAndFlagsBits, object);
  if (v12)
  {
    v13 = Character.isUppercase.getter();

    if (v13)
    {
      static Semantics.v3.getter();
      if ((isLinkedOnOrAfter(_:)() & 1) == 0)
      {
        v14 = String.lowercased()();
        countAndFlagsBits = v14._countAndFlagsBits;

        v11 |= 0x20000uLL;
        object = v14._object;
      }
    }
  }

  if (v5)
  {

    v15 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = MEMORY[0x18D00C850](countAndFlagsBits, object);

    v15 = [ObjCClassFromMetadata keyCommandWithInput:v17 modifierFlags:v11 action:sel__performShortcutKeyCommand_];
  }

  v18 = v15;
  [v18 setAllowsAutomaticLocalization_];
  [v18 setAllowsAutomaticMirroring_];

  swift_bridgeObjectRelease_n();

  return v18;
}

Swift::Void __swiftcall KeyboardShortcutBridge._performShortcutKeyCommand(_:)(UIKeyCommand *a1)
{
  KeyboardShortcut.init(_:)(a1, &v12);
  v2 = v13;
  if (v13)
  {
    v3 = v12;
    v4 = v14;
    v5 = v15;
    v6 = OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_shortcutMap;
    swift_beginAccess();
    v7 = *(v1 + v6);
    if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v2, v4, v5), (v9 & 1) != 0))
    {
      v10 = *(*(v7 + 56) + 24 * v8);
      v11 = v10;
      swift_retain_n();
      swift_endAccess();
      outlined consume of KeyboardShortcutBridge.Shortcut?(v10);

      LOBYTE(v12) = 17;
      static Update.enqueueAction(reason:_:)();
    }

    else
    {
      swift_endAccess();
    }
  }
}

uint64_t destroy for KeyboardShortcutBridge.Shortcut(id *a1)
{
}

uint64_t assignWithCopy for KeyboardShortcutBridge.Shortcut(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v7;

  return a1;
}

uint64_t assignWithTake for KeyboardShortcutBridge.Shortcut(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;

  return a1;
}

uint64_t outlined init with copy of KeyboardShortcutSource?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for KeyboardShortcutSource?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for KeyboardShortcutSource()
{
  result = lazy cache variable for type metadata for KeyboardShortcutSource;
  if (!lazy cache variable for type metadata for KeyboardShortcutSource)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for KeyboardShortcutSource);
  }

  return result;
}

uint64_t outlined destroy of KeyboardShortcutSource?(uint64_t a1)
{
  type metadata accessor for KeyboardShortcutSource?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

void type metadata accessor for [KeyboardShortcutBinding]()
{
  if (!lazy cache variable for type metadata for [KeyboardShortcutBinding])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [KeyboardShortcutBinding]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [KeyboardShortcutBinding] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [KeyboardShortcutBinding] and conformance [A];
  if (!lazy protocol witness table cache variable for type [KeyboardShortcutBinding] and conformance [A])
  {
    type metadata accessor for [KeyboardShortcutBinding]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [KeyboardShortcutBinding] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KeyboardShortcutBinding and conformance KeyboardShortcutBinding()
{
  result = lazy protocol witness table cache variable for type KeyboardShortcutBinding and conformance KeyboardShortcutBinding;
  if (!lazy protocol witness table cache variable for type KeyboardShortcutBinding and conformance KeyboardShortcutBinding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyboardShortcutBinding and conformance KeyboardShortcutBinding);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KeyboardShortcutBinding and conformance KeyboardShortcutBinding;
  if (!lazy protocol witness table cache variable for type KeyboardShortcutBinding and conformance KeyboardShortcutBinding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyboardShortcutBinding and conformance KeyboardShortcutBinding);
  }

  return result;
}

unint64_t type metadata accessor for UIKeyCommand()
{
  result = lazy cache variable for type metadata for UIKeyCommand;
  if (!lazy cache variable for type metadata for UIKeyCommand)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIKeyCommand);
  }

  return result;
}

uint64_t DSLPlatformItem.text.getter(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void))
{
  v3 = v1[15];
  v31 = v1[14];
  v32 = v3;
  v33 = v1[16];
  v4 = v1[11];
  v27 = v1[10];
  v28 = v4;
  v5 = v1[13];
  v29 = v1[12];
  v30 = v5;
  v6 = v1[7];
  v23 = v1[6];
  v24 = v6;
  v7 = v1[9];
  v25 = v1[8];
  v26 = v7;
  v8 = v1[3];
  v19 = v1[2];
  v20 = v8;
  v9 = v1[5];
  v21 = v1[4];
  v22 = v9;
  v10 = _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v19);
  if (v10 == 1)
  {
    return 0;
  }

  else
  {
    return a1(v10, v11, v12, v13, v14, v15, v16, v17, v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1));
  }
}

uint64_t DSLPlatformItem.prioritizeImage.getter()
{
  v1 = v0[15];
  v10[12] = v0[14];
  v10[13] = v1;
  v11 = v0[16];
  v2 = v0[11];
  v10[8] = v0[10];
  v10[9] = v2;
  v3 = v0[13];
  v10[10] = v0[12];
  v10[11] = v3;
  v4 = v0[7];
  v10[4] = v0[6];
  v10[5] = v4;
  v5 = v0[9];
  v10[6] = v0[8];
  v10[7] = v5;
  v6 = v0[3];
  v10[0] = v0[2];
  v10[1] = v6;
  v7 = v0[5];
  v10[2] = v0[4];
  v10[3] = v7;
  v8 = _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(v10) == 1;
  return (v8 | v11) & 1;
}

UIImage_optional __swiftcall DSLPlatformItem.makeUIImage()()
{
  Platform = PlatformItem.coreMakePlatformImage()();
  if (Platform)
  {
    objc_opt_self();
    Platform = swift_dynamicCastObjCClassUnconditional();
  }

  result.value.super.isa = Platform;
  result.is_nil = v1;
  return result;
}

uint64_t DSLPlatformItemReader.init(content:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;

  static Alignment.center.getter();
  type metadata accessor for DSLPlatformItemReader();
  ZStack.init(alignment:content:)();
}

uint64_t closure #1 in DSLPlatformItemReader.init(content:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  v15(v12);
  static ViewBuilder.buildExpression<A>(_:)(v10, a4, a6);
  v16 = *(v8 + 8);
  v16(v10, a4);
  static ViewBuilder.buildExpression<A>(_:)(v14, a4, a6);
  return (v16)(v14, a4);
}

uint64_t DSLPlatformItemReader.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = *(v7 + 40);
  v31 = *(v7 + 16);
  v9 = type metadata accessor for ZStack();
  v10 = *(a1 + 32);
  v11 = v9;
  v28 = v9;
  WitnessTable = swift_getWitnessTable();
  v36 = MEMORY[0x1E69806B0];
  v29 = v31;
  v37 = v31;
  v38 = v11;
  v39 = MEMORY[0x1E69806A8];
  v40 = v10;
  v41 = WitnessTable;
  v12 = type metadata accessor for PlatformItemsReader();
  v27 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  (*(v5 + 16))(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v16);
  v19 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *&v21 = v10;
  *(&v21 + 1) = v8;
  *(v20 + 32) = v21;
  *(v20 + 16) = v31;
  (*(v5 + 32))(v20 + v19, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v32 = v31;
  v33 = v10;
  v34 = v8;
  v35 = v25;
  PlatformItemsReader.init(for:content:source:)();
  v22 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v14, v12, v22);
  v23 = *(v27 + 8);
  v23(v14, v12);
  static ViewBuilder.buildExpression<A>(_:)(v18, v12, v22);
  return (v23)(v18, v12);
}

uint64_t closure #1 in DSLPlatformItemReader.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19[-v11 - 8];
  v14 = *v13;
  outlined init with copy of PlatformItem(v15, v19);
  v14(v19);
  outlined destroy of DSLPlatformItem(v19);
  static ViewBuilder.buildExpression<A>(_:)(v9, a3, a5);
  v16 = *(v7 + 8);
  v16(v9, a3);
  static ViewBuilder.buildExpression<A>(_:)(v12, a3, a5);
  return (v16)(v12, a3);
}

uint64_t partial apply for closure #1 in DSLPlatformItemReader.body.getter(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for DSLPlatformItemReader() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return closure #1 in DSLPlatformItemReader.body.getter(a1, v7, v3, v4, v5);
}

uint64_t closure #2 in DSLPlatformItemReader.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ZStack();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v17 - v12;
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v14 = *(type metadata accessor for DSLPlatformItemReader() + 52);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(a1 + v14, v10, WitnessTable);
  static ViewBuilder.buildExpression<A>(_:)(v13, v10, WitnessTable);
  return (*(v11 + 8))(v13, v10);
}

uint64_t static DSLPlatformItem.makePlatformItem<A>(inputs:source:)@<X0>(__int128 *a1@<X0>, _DWORD *a2@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v26 = *a1;
  v27 = v3;
  v28 = a1[2];
  type metadata accessor for _GraphValue();
  LODWORD(v14) = _GraphValue.value.getter();
  v11 = type metadata accessor for ZStack();
  Source = type metadata accessor for DSLPlatformItem.MakeSource();
  WitnessTable = swift_getWitnessTable();
  v4 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v14, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v10, Source, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  PreferenceKeys.init()();
  *&v31[0] = v14;
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  LOBYTE(v29[0]) = 0;
  GraphHost.intern<A>(_:for:id:)();

  v14 = v26;
  v15 = v27;
  v16 = v28;
  outlined init with copy of _GraphInputs(&v26, v31);
  _ViewInputs.init(withoutGeometry:)();
  PreferencesInputs.init(hostKeys:)();
  v6 = v14;
  v7 = DWORD2(v14);

  *&v23 = v6;
  DWORD2(v23) = v7;
  MEMORY[0x18D008ED0](&v20, MEMORY[0x1E69806B0], MEMORY[0x1E69806A0]);
  _GraphValue.init(_:)();
  v29[2] = v22;
  v29[3] = v23;
  v29[4] = v24;
  v30 = v25;
  v29[0] = v20;
  v29[1] = v21;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v14 = v20;
  v15 = v21;
  outlined init with copy of _ViewInputs(v29, v31);
  swift_getWitnessTable();
  static View.makeDebuggableView(view:inputs:)();
  v31[2] = v16;
  v31[3] = v17;
  v31[4] = v18;
  v32 = v19;
  v31[0] = v14;
  v31[1] = v15;
  outlined destroy of _ViewInputs(v31);
  v14 = v9;
  LODWORD(v6) = static UnaryPlatformItemsStrategy.makeContent(from:)();

  static PlatformItem.empty.getter();
  LODWORD(v14) = v6;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type DSLPlatformItem.Child and conformance DSLPlatformItem.Child();
  LODWORD(v6) = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of DSLPlatformItem.Child(&v14);
  *a2 = v6;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v14 = v20;
  v15 = v21;
  return outlined destroy of _ViewInputs(&v14);
}

uint64_t closure #1 in DSLPlatformItem.MakeSource.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  Value = AGGraphGetValue();
  (*(v5 + 16))(v7, Value, a2);
  static ViewBuilder.buildExpression<A>(_:)(v7, a2, a3);
  v12 = *(v5 + 8);
  v12(v7, a2);
  static ViewBuilder.buildExpression<A>(_:)(v10, a2, a3);
  return (v12)(v10, a2);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance DSLPlatformItem.MakeSource<A>@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ZStack();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t DSLPlatformItem.Child.updateValue()()
{
  v10 = *MEMORY[0x1E69E9840];
  if (*v0 == *MEMORY[0x1E698D3F8])
  {
    bzero(__src, 0x272uLL);
    static PlatformItem.empty.getter();
    if (__src[0])
    {
      outlined destroy of (PlatformItem, Bool)?(__src);
    }

    v1 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v4 = v3;
    outlined init with copy of PlatformItem(Value, __src);
    BYTE1(__src[78]) = v4 & 1;
    memcpy(__dst, __src, 0x272uLL);
    v1 = __dst[625] ^ 1;
  }

  memcpy(__src, __dst, 0x271uLL);
  v5 = 0;
  if (HIDWORD(__src[3]) != -1)
  {
    v6 = *(v0 + 36);
    if (v6 != -1 && HIDWORD(__src[3]) == v6)
    {
      v5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12ViewIdentityV_Tt1g5(__src[0], *(v0 + 8));
    }
  }

  if (!AGGraphGetOutputValue() || ((v1 | v5) & 1) == 0)
  {
    outlined init with copy of PlatformItem(__src, __dst);
    AGGraphSetOutputValue();
    outlined destroy of DSLPlatformItem(__dst);
  }

  return outlined assign with take of PlatformItem(__src, v0 + 8);
}

unint64_t lazy protocol witness table accessor for type DSLPlatformItem.Child and conformance DSLPlatformItem.Child()
{
  result = lazy protocol witness table cache variable for type DSLPlatformItem.Child and conformance DSLPlatformItem.Child;
  if (!lazy protocol witness table cache variable for type DSLPlatformItem.Child and conformance DSLPlatformItem.Child)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DSLPlatformItem.Child and conformance DSLPlatformItem.Child);
  }

  return result;
}

uint64_t destroy for DSLPlatformItem(uint64_t a1)
{

  v2 = *(a1 + 32);
  if (v2 != 1)
  {

    v3 = *(a1 + 184);
    if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v4 = *(a1 + 64);
      if (v4 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(a1 + 56), v4);
      }

      if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(a1 + 168), *(a1 + 176), v3);
      }

      swift_unknownObjectRelease();
    }
  }

  result = *(a1 + 304);
  if (result != 1)
  {
    result = swift_unknownObjectRelease();
  }

  if (*(a1 + 608))
  {

    v6 = *(a1 + 416);
    if (v6)
    {
      if (v6 == 1)
      {
LABEL_16:
        if (*(a1 + 568) != 1)
        {
        }
      }

      __swift_destroy_boxed_opaque_existential_1(a1 + 392);
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t initializeWithCopy for DSLPlatformItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v5 = (a2 + 32);
  v6 = *(a2 + 32);

  if (v6 == 1)
  {
    v7 = v5[13];
    *(a1 + 224) = v5[12];
    *(a1 + 240) = v7;
    *(a1 + 256) = v5[14];
    v8 = v5[9];
    *(a1 + 160) = v5[8];
    *(a1 + 176) = v8;
    v9 = v5[11];
    *(a1 + 192) = v5[10];
    *(a1 + 208) = v9;
    v10 = v5[5];
    *(a1 + 96) = v5[4];
    *(a1 + 112) = v10;
    v11 = v5[7];
    *(a1 + 128) = v5[6];
    *(a1 + 144) = v11;
    v12 = v5[1];
    *(a1 + 32) = *v5;
    *(a1 + 48) = v12;
    v13 = v5[3];
    *(a1 + 64) = v5[2];
    *(a1 + 80) = v13;
  }

  else
  {
    v14 = *(a2 + 40);
    v15 = *(a2 + 48);
    *(a1 + 32) = v6;
    *(a1 + 40) = v14;
    *(a1 + 48) = v15;
    v16 = *(a2 + 184);
    v17 = v6;
    v18 = v14;
    v19 = v15;
    if (v16 >> 1 == 4294967294)
    {
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 227) = *(a2 + 227);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
    }

    else
    {
      v20 = *(a2 + 64);
      if (v20 == 255)
      {
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = *(a2 + 64);
      }

      else
      {
        v21 = *(a2 + 56);
        outlined copy of GraphicsImage.Contents(v21, *(a2 + 64));
        *(a1 + 56) = v21;
        *(a1 + 64) = v20;
        v16 = *(a2 + 184);
      }

      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 100) = *(a2 + 100);
      *(a1 + 113) = *(a2 + 113);
      v22 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v22;
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 162) = *(a2 + 162);
      *(a1 + 163) = *(a2 + 163);
      if (v16 >> 1 == 0xFFFFFFFF)
      {
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 184) = *(a2 + 184);
      }

      else
      {
        v23 = *(a2 + 168);
        v24 = *(a2 + 176);
        v25 = *(a2 + 192);
        outlined copy of AccessibilityImageLabel(v23, v24, v16);
        *(a1 + 168) = v23;
        *(a1 + 176) = v24;
        *(a1 + 184) = v16;
        *(a1 + 192) = v25;
      }

      v26 = *(a2 + 208);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = v26;
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 220) = *(a2 + 220);
      *(a1 + 224) = *(a2 + 224);
      v27 = *(a2 + 232);
      *(a1 + 232) = v27;
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 242) = *(a2 + 242);
      swift_unknownObjectRetain();

      v28 = v27;
    }

    *(a1 + 248) = *(a2 + 248);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
  }

  *(a1 + 272) = *(a2 + 272);
  v29 = *(a2 + 304);

  if (v29 == 1)
  {
    v30 = *(a2 + 296);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 296) = v30;
  }

  else
  {
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v29;
    swift_unknownObjectRetain();
  }

  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  if (!*(a2 + 608))
  {
    memcpy((a1 + 328), (a2 + 328), 0x129uLL);
    return a1;
  }

  v31 = *(a2 + 336);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = v31;
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  v32 = (a1 + 392);
  v33 = (a2 + 392);
  v34 = *(a2 + 416);

  if (!v34)
  {
    v36 = *(a2 + 408);
    *v32 = *v33;
    *(a1 + 408) = v36;
    *(a1 + 424) = *(a2 + 424);
LABEL_23:
    *(a1 + 432) = *(a2 + 432);

    goto LABEL_24;
  }

  if (v34 != 1)
  {
    v37 = *(a2 + 424);
    *(a1 + 416) = v34;
    *(a1 + 424) = v37;
    (**(v34 - 8))(a1 + 392, a2 + 392, v34);
    goto LABEL_23;
  }

  v35 = *(a2 + 408);
  *v32 = *v33;
  *(a1 + 408) = v35;
  *(a1 + 424) = *(a2 + 424);
LABEL_24:
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);
  v38 = (a1 + 456);
  v39 = (a2 + 456);
  v40 = *(a2 + 568);
  if (v40 == 1)
  {
    v41 = *(a2 + 568);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 568) = v41;
    *(a1 + 584) = *(a2 + 584);
    *(a1 + 600) = *(a2 + 600);
    v42 = *(a2 + 504);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 504) = v42;
    v43 = *(a2 + 536);
    *(a1 + 520) = *(a2 + 520);
    *(a1 + 536) = v43;
    v44 = *(a2 + 472);
    *v38 = *v39;
    *(a1 + 472) = v44;
  }

  else
  {
    *v38 = *v39;
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 472) = *(a2 + 472);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 481) = *(a2 + 481);
    *(a1 + 483) = *(a2 + 483);
    *(a1 + 484) = *(a2 + 484);
    *(a1 + 488) = *(a2 + 488);
    v45 = *(a2 + 512);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 512) = v45;
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 536) = *(a2 + 536);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 568) = v40;
    *(a1 + 576) = *(a2 + 576);
    *(a1 + 592) = *(a2 + 592);
    *(a1 + 600) = *(a2 + 600);
  }

  *(a1 + 608) = *(a2 + 608);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);

  return a1;
}

uint64_t assignWithCopy for DSLPlatformItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = (a1 + 32);
  v5 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v7 = (a2 + 32);
  v6 = *(a2 + 32);
  if (v5 == 1)
  {
    if (v6 == 1)
    {
      v8 = *v7;
      v9 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v9;
      *v4 = v8;
      v10 = *(a2 + 80);
      v11 = *(a2 + 96);
      v12 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v12;
      *(a1 + 80) = v10;
      *(a1 + 96) = v11;
      v13 = *(a2 + 144);
      v14 = *(a2 + 160);
      v15 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v15;
      *(a1 + 144) = v13;
      *(a1 + 160) = v14;
      v16 = *(a2 + 208);
      v17 = *(a2 + 224);
      v18 = *(a2 + 256);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 256) = v18;
      *(a1 + 208) = v16;
      *(a1 + 224) = v17;
    }

    else
    {
      *(a1 + 32) = v6;
      v30 = *(a2 + 40);
      *(a1 + 40) = v30;
      v31 = *(a2 + 48);
      *(a1 + 48) = v31;
      v32 = *(a2 + 184);
      v33 = v6;
      v34 = v30;
      v35 = v31;
      if (v32 >> 1 == 4294967294)
      {
        v36 = *(a2 + 56);
        v37 = *(a2 + 72);
        v38 = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 88) = v38;
        *(a1 + 72) = v37;
        *(a1 + 56) = v36;
        v39 = *(a2 + 120);
        v40 = *(a2 + 136);
        v41 = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 152) = v41;
        *(a1 + 136) = v40;
        *(a1 + 120) = v39;
        v42 = *(a2 + 184);
        v43 = *(a2 + 200);
        v44 = *(a2 + 216);
        *(a1 + 227) = *(a2 + 227);
        *(a1 + 216) = v44;
        *(a1 + 200) = v43;
        *(a1 + 184) = v42;
      }

      else
      {
        v62 = *(a2 + 64);
        if (v62 == 255)
        {
          v79 = *(a2 + 56);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 56) = v79;
        }

        else
        {
          v63 = *(a2 + 56);
          outlined copy of GraphicsImage.Contents(v63, *(a2 + 64));
          *(a1 + 56) = v63;
          *(a1 + 64) = v62;
        }

        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = *(a2 + 96);
        v80 = *(a2 + 100);
        *(a1 + 113) = *(a2 + 113);
        *(a1 + 100) = v80;
        v81 = *(a2 + 128);
        v82 = *(a2 + 144);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 128) = v81;
        *(a1 + 144) = v82;
        *(a1 + 161) = *(a2 + 161);
        *(a1 + 162) = *(a2 + 162);
        *(a1 + 163) = *(a2 + 163);
        v83 = *(a2 + 184);
        if (v83 >> 1 == 0xFFFFFFFF)
        {
          v84 = *(a2 + 168);
          *(a1 + 184) = *(a2 + 184);
          *(a1 + 168) = v84;
        }

        else
        {
          v85 = *(a2 + 168);
          v86 = *(a2 + 176);
          v87 = *(a2 + 192);
          outlined copy of AccessibilityImageLabel(v85, v86, *(a2 + 184));
          *(a1 + 168) = v85;
          *(a1 + 176) = v86;
          *(a1 + 184) = v83;
          *(a1 + 192) = v87;
        }

        *(a1 + 200) = *(a2 + 200);
        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 217) = *(a2 + 217);
        v88 = *(a2 + 220);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 220) = v88;
        v89 = *(a2 + 232);
        *(a1 + 232) = v89;
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 242) = *(a2 + 242);
        swift_unknownObjectRetain();

        v90 = v89;
      }

      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
    }
  }

  else if (v6 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(a1 + 32);
    v20 = *(a2 + 48);
    v19 = *(a2 + 64);
    *v4 = *v7;
    *(a1 + 48) = v20;
    *(a1 + 64) = v19;
    v21 = *(a2 + 128);
    v23 = *(a2 + 80);
    v22 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v21;
    *(a1 + 80) = v23;
    *(a1 + 96) = v22;
    v24 = *(a2 + 192);
    v26 = *(a2 + 144);
    v25 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v24;
    *(a1 + 144) = v26;
    *(a1 + 160) = v25;
    v27 = *(a2 + 256);
    v29 = *(a2 + 208);
    v28 = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 256) = v27;
    *(a1 + 208) = v29;
    *(a1 + 224) = v28;
  }

  else
  {
    *(a1 + 32) = v6;
    v45 = v6;

    v46 = *(a1 + 40);
    v47 = *(a2 + 40);
    *(a1 + 40) = v47;
    v48 = v47;

    v49 = *(a1 + 48);
    v50 = *(a2 + 48);
    *(a1 + 48) = v50;
    v51 = v50;

    v52 = *(a2 + 184) & 0xFFFFFFFFFFFFFFFELL;
    if (*(a1 + 184) >> 1 == 4294967294)
    {
      if (v52 == 0x1FFFFFFFCLL)
      {
        v53 = *(a2 + 56);
        v54 = *(a2 + 72);
        v55 = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 88) = v55;
        *(a1 + 72) = v54;
        *(a1 + 56) = v53;
        v56 = *(a2 + 120);
        v57 = *(a2 + 136);
        v58 = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 152) = v58;
        *(a1 + 136) = v57;
        *(a1 + 120) = v56;
        v59 = *(a2 + 184);
        v60 = *(a2 + 200);
        v61 = *(a2 + 216);
        *(a1 + 227) = *(a2 + 227);
        *(a1 + 216) = v61;
        *(a1 + 200) = v60;
        *(a1 + 184) = v59;
      }

      else
      {
        v73 = *(a2 + 64);
        if (v73 == 255)
        {
          v91 = *(a2 + 56);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 56) = v91;
        }

        else
        {
          v74 = *(a2 + 56);
          outlined copy of GraphicsImage.Contents(v74, *(a2 + 64));
          *(a1 + 56) = v74;
          *(a1 + 64) = v73;
        }

        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = *(a2 + 96);
        v92 = *(a2 + 100);
        *(a1 + 113) = *(a2 + 113);
        *(a1 + 100) = v92;
        v93 = *(a2 + 128);
        v94 = *(a2 + 144);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 128) = v93;
        *(a1 + 144) = v94;
        *(a1 + 161) = *(a2 + 161);
        *(a1 + 162) = *(a2 + 162);
        *(a1 + 163) = *(a2 + 163);
        v95 = *(a2 + 184);
        if (v95 >> 1 == 0xFFFFFFFF)
        {
          v96 = *(a2 + 168);
          *(a1 + 184) = *(a2 + 184);
          *(a1 + 168) = v96;
        }

        else
        {
          v97 = *(a2 + 168);
          v98 = *(a2 + 176);
          v99 = *(a2 + 192);
          outlined copy of AccessibilityImageLabel(v97, v98, *(a2 + 184));
          *(a1 + 168) = v97;
          *(a1 + 176) = v98;
          *(a1 + 184) = v95;
          *(a1 + 192) = v99;
        }

        *(a1 + 200) = *(a2 + 200);
        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 217) = *(a2 + 217);
        v100 = *(a2 + 220);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 220) = v100;
        v101 = *(a2 + 232);
        *(a1 + 232) = v101;
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 242) = *(a2 + 242);
        swift_unknownObjectRetain();

        v102 = v101;
      }
    }

    else if (v52 == 0x1FFFFFFFCLL)
    {
      outlined destroy of Image.Resolved(a1 + 56);
      v64 = *(a2 + 72);
      v65 = *(a2 + 88);
      v66 = *(a2 + 104);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 104) = v66;
      *(a1 + 88) = v65;
      *(a1 + 72) = v64;
      v67 = *(a2 + 136);
      v68 = *(a2 + 152);
      v69 = *(a2 + 168);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 168) = v69;
      *(a1 + 152) = v68;
      *(a1 + 136) = v67;
      v70 = *(a2 + 200);
      v71 = *(a2 + 216);
      v72 = *(a2 + 227);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 227) = v72;
      *(a1 + 216) = v71;
      *(a1 + 200) = v70;
    }

    else
    {
      v75 = *(a2 + 64);
      if (*(a1 + 64) == 255)
      {
        if (v75 == 255)
        {
          v105 = *(a2 + 56);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 56) = v105;
        }

        else
        {
          v103 = *(a2 + 56);
          outlined copy of GraphicsImage.Contents(v103, *(a2 + 64));
          *(a1 + 56) = v103;
          *(a1 + 64) = v75;
        }
      }

      else if (v75 == 255)
      {
        outlined destroy of GraphicsImage.Contents(a1 + 56);
        v104 = *(a2 + 64);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = v104;
      }

      else
      {
        v76 = *(a2 + 56);
        outlined copy of GraphicsImage.Contents(v76, *(a2 + 64));
        v77 = *(a1 + 56);
        *(a1 + 56) = v76;
        v78 = *(a1 + 64);
        *(a1 + 64) = v75;
        outlined consume of GraphicsImage.Contents(v77, v78);
      }

      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      v106 = *(a2 + 100);
      *(a1 + 113) = *(a2 + 113);
      *(a1 + 100) = v106;
      v107 = *(a2 + 128);
      v108 = *(a2 + 144);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 128) = v107;
      *(a1 + 144) = v108;
      *(a1 + 161) = *(a2 + 161);
      *(a1 + 162) = *(a2 + 162);
      *(a1 + 163) = *(a2 + 163);
      v109 = *(a2 + 184);
      v110 = v109 & 0xFFFFFFFFFFFFFFFELL;
      if (*(a1 + 184) >> 1 == 0xFFFFFFFFLL)
      {
        if (v110 == 0x1FFFFFFFELL)
        {
          v111 = *(a2 + 168);
          *(a1 + 184) = *(a2 + 184);
          *(a1 + 168) = v111;
        }

        else
        {
          v113 = *(a2 + 168);
          v114 = *(a2 + 176);
          v115 = *(a2 + 192);
          outlined copy of AccessibilityImageLabel(v113, v114, *(a2 + 184));
          *(a1 + 168) = v113;
          *(a1 + 176) = v114;
          *(a1 + 184) = v109;
          *(a1 + 192) = v115;
        }
      }

      else if (v110 == 0x1FFFFFFFELL)
      {
        outlined destroy of AccessibilityImageLabel(a1 + 168);
        v112 = *(a2 + 184);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 184) = v112;
      }

      else
      {
        v116 = *(a2 + 168);
        v117 = *(a2 + 176);
        v118 = *(a2 + 192);
        outlined copy of AccessibilityImageLabel(v116, v117, *(a2 + 184));
        v119 = *(a1 + 168);
        v120 = *(a1 + 176);
        v121 = *(a1 + 184);
        *(a1 + 168) = v116;
        *(a1 + 176) = v117;
        *(a1 + 184) = v109;
        *(a1 + 192) = v118;
        outlined consume of AccessibilityImageLabel(v119, v120, v121);
      }

      *(a1 + 200) = *(a2 + 200);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 208) = *(a2 + 208);

      *(a1 + 216) = *(a2 + 216);
      *(a1 + 217) = *(a2 + 217);
      v122 = *(a2 + 220);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 220) = v122;
      v123 = *(a1 + 232);
      v124 = *(a2 + 232);
      *(a1 + 232) = v124;
      v125 = v124;

      *(a1 + 240) = *(a2 + 240);
      *(a1 + 242) = *(a2 + 242);
    }

    *(a1 + 248) = *(a2 + 248);

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
  }

  *(a1 + 272) = *(a2 + 272);

  v126 = (a1 + 280);
  v127 = (a2 + 280);
  v128 = *(a2 + 304);
  if (*(a1 + 304) == 1)
  {
    if (v128 == 1)
    {
      v129 = *(a2 + 296);
      *v126 = *v127;
      *(a1 + 296) = v129;
    }

    else
    {
      *(a1 + 280) = *(a2 + 280);
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 296) = *(a2 + 296);
      *(a1 + 304) = *(a2 + 304);
      swift_unknownObjectRetain();
    }
  }

  else if (v128 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(a1 + 280);
    v130 = *(a2 + 296);
    *v126 = *v127;
    *(a1 + 296) = v130;
  }

  else
  {
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 284) = *(a2 + 284);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 292) = *(a2 + 292);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 304) = *(a2 + 304);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  v131 = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 312) = v131;
  v132 = *(a2 + 608);
  if (*(a1 + 608))
  {
    if (v132)
    {
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 336) = *(a2 + 336);

      *(a1 + 344) = *(a2 + 344);
      *(a1 + 352) = *(a2 + 352);

      *(a1 + 360) = *(a2 + 360);
      v133 = *(a2 + 368);
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 368) = v133;
      v134 = (a1 + 392);
      v135 = (a2 + 392);
      v136 = *(a1 + 416);
      v137 = *(a2 + 416);
      if (v136 != 1)
      {
        if (v137 == 1)
        {
          outlined destroy of AccessibilityValueStorage(a1 + 392);
          v147 = *(a2 + 408);
          v146 = *(a2 + 424);
          *v134 = *v135;
          *(a1 + 408) = v147;
          *(a1 + 424) = v146;
        }

        else
        {
          if (v136)
          {
            if (v137)
            {
              __swift_assign_boxed_opaque_existential_1((a1 + 392), (a2 + 392));
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(a1 + 392);
              v165 = *(a2 + 424);
              v166 = *(a2 + 408);
              *v134 = *v135;
              *(a1 + 408) = v166;
              *(a1 + 424) = v165;
            }
          }

          else if (v137)
          {
            *(a1 + 416) = v137;
            *(a1 + 424) = *(a2 + 424);
            (**(v137 - 8))(a1 + 392, a2 + 392);
          }

          else
          {
            v167 = *v135;
            v168 = *(a2 + 408);
            *(a1 + 424) = *(a2 + 424);
            *v134 = v167;
            *(a1 + 408) = v168;
          }

          *(a1 + 432) = *(a2 + 432);
        }

        goto LABEL_83;
      }

      if (v137)
      {
        if (v137 == 1)
        {
          v138 = *v135;
          v139 = *(a2 + 424);
          *(a1 + 408) = *(a2 + 408);
          *(a1 + 424) = v139;
          *v134 = v138;
LABEL_83:
          v169 = *(a2 + 440);
          *(a1 + 448) = *(a2 + 448);
          *(a1 + 440) = v169;
          v170 = (a1 + 456);
          v171 = (a2 + 456);
          v172 = *(a2 + 568);
          if (*(a1 + 568) == 1)
          {
            if (v172 == 1)
            {
              v173 = *(a2 + 472);
              *v170 = *v171;
              *(a1 + 472) = v173;
              v174 = *(a2 + 488);
              v175 = *(a2 + 504);
              v176 = *(a2 + 536);
              *(a1 + 520) = *(a2 + 520);
              *(a1 + 536) = v176;
              *(a1 + 488) = v174;
              *(a1 + 504) = v175;
              v177 = *(a2 + 552);
              v178 = *(a2 + 568);
              v179 = *(a2 + 584);
              *(a1 + 600) = *(a2 + 600);
              *(a1 + 568) = v178;
              *(a1 + 584) = v179;
              *(a1 + 552) = v177;
            }

            else
            {
              v187 = *v171;
              *(a1 + 464) = *(a2 + 464);
              *v170 = v187;
              v188 = *(a2 + 472);
              *(a1 + 480) = *(a2 + 480);
              *(a1 + 472) = v188;
              *(a1 + 481) = *(a2 + 481);
              *(a1 + 482) = *(a2 + 482);
              *(a1 + 483) = *(a2 + 483);
              *(a1 + 484) = *(a2 + 484);
              *(a1 + 488) = *(a2 + 488);
              *(a1 + 496) = *(a2 + 496);
              *(a1 + 504) = *(a2 + 504);
              *(a1 + 512) = *(a2 + 512);
              *(a1 + 520) = *(a2 + 520);
              *(a1 + 528) = *(a2 + 528);
              *(a1 + 536) = *(a2 + 536);
              *(a1 + 537) = *(a2 + 537);
              *(a1 + 544) = *(a2 + 544);
              *(a1 + 552) = *(a2 + 552);
              *(a1 + 560) = *(a2 + 560);
              *(a1 + 568) = *(a2 + 568);
              v189 = *(a2 + 576);
              *(a1 + 592) = *(a2 + 592);
              *(a1 + 576) = v189;
              *(a1 + 600) = *(a2 + 600);
            }
          }

          else if (v172 == 1)
          {
            outlined destroy of AccessibilityTextLayoutProperties(a1 + 456);
            v180 = *(a2 + 472);
            *v170 = *v171;
            *(a1 + 472) = v180;
            v181 = *(a2 + 536);
            v183 = *(a2 + 488);
            v182 = *(a2 + 504);
            *(a1 + 520) = *(a2 + 520);
            *(a1 + 536) = v181;
            *(a1 + 488) = v183;
            *(a1 + 504) = v182;
            v185 = *(a2 + 568);
            v184 = *(a2 + 584);
            v186 = *(a2 + 552);
            *(a1 + 600) = *(a2 + 600);
            *(a1 + 568) = v185;
            *(a1 + 584) = v184;
            *(a1 + 552) = v186;
          }

          else
          {
            v190 = *v171;
            *(a1 + 464) = *(a2 + 464);
            *v170 = v190;
            v191 = *(a2 + 472);
            *(a1 + 480) = *(a2 + 480);
            *(a1 + 472) = v191;
            *(a1 + 481) = *(a2 + 481);
            *(a1 + 482) = *(a2 + 482);
            *(a1 + 483) = *(a2 + 483);
            *(a1 + 484) = *(a2 + 484);
            *(a1 + 488) = *(a2 + 488);
            *(a1 + 496) = *(a2 + 496);
            *(a1 + 504) = *(a2 + 504);
            *(a1 + 512) = *(a2 + 512);
            *(a1 + 520) = *(a2 + 520);
            *(a1 + 528) = *(a2 + 528);
            *(a1 + 536) = *(a2 + 536);
            *(a1 + 537) = *(a2 + 537);
            *(a1 + 544) = *(a2 + 544);
            *(a1 + 552) = *(a2 + 552);
            *(a1 + 560) = *(a2 + 560);
            *(a1 + 568) = *(a2 + 568);

            v192 = *(a2 + 576);
            *(a1 + 592) = *(a2 + 592);
            *(a1 + 576) = v192;
            *(a1 + 600) = *(a2 + 600);
          }

          *(a1 + 608) = *(a2 + 608);

          *(a1 + 616) = *(a2 + 616);
          *(a1 + 620) = *(a2 + 620);
          *(a1 + 624) = *(a2 + 624);
          return a1;
        }

        *(a1 + 416) = v137;
        *(a1 + 424) = *(a2 + 424);
        (**(v137 - 8))(a1 + 392, a2 + 392);
      }

      else
      {
        v163 = *v135;
        v164 = *(a2 + 408);
        *(a1 + 424) = *(a2 + 424);
        *v134 = v163;
        *(a1 + 408) = v164;
      }

      *(a1 + 432) = *(a2 + 432);

      goto LABEL_83;
    }

    outlined destroy of PlatformItem.AccessibilityContent(a1 + 328);
LABEL_62:
    memcpy((a1 + 328), (a2 + 328), 0x129uLL);
    return a1;
  }

  if (!v132)
  {
    goto LABEL_62;
  }

  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  v140 = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 368) = v140;
  v141 = (a1 + 392);
  v142 = (a2 + 392);
  v143 = *(a2 + 416);

  if (!v143)
  {
    v148 = *v142;
    v149 = *(a2 + 408);
    *(a1 + 424) = *(a2 + 424);
    *v141 = v148;
    *(a1 + 408) = v149;
LABEL_70:
    *(a1 + 432) = *(a2 + 432);

    goto LABEL_71;
  }

  if (v143 != 1)
  {
    *(a1 + 416) = v143;
    *(a1 + 424) = *(a2 + 424);
    (**(v143 - 8))(a1 + 392, a2 + 392, v143);
    goto LABEL_70;
  }

  v144 = *v142;
  v145 = *(a2 + 424);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 424) = v145;
  *v141 = v144;
LABEL_71:
  v150 = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 440) = v150;
  v151 = (a1 + 456);
  v152 = (a2 + 456);
  if (*(a2 + 568) == 1)
  {
    v153 = *(a2 + 472);
    *v151 = *v152;
    *(a1 + 472) = v153;
    v154 = *(a2 + 488);
    v155 = *(a2 + 504);
    v156 = *(a2 + 536);
    *(a1 + 520) = *(a2 + 520);
    *(a1 + 536) = v156;
    *(a1 + 488) = v154;
    *(a1 + 504) = v155;
    v157 = *(a2 + 552);
    v158 = *(a2 + 568);
    v159 = *(a2 + 584);
    *(a1 + 600) = *(a2 + 600);
    *(a1 + 568) = v158;
    *(a1 + 584) = v159;
    *(a1 + 552) = v157;
  }

  else
  {
    v160 = *v152;
    *(a1 + 464) = *(a2 + 464);
    *v151 = v160;
    v161 = *(a2 + 472);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 472) = v161;
    *(a1 + 481) = *(a2 + 481);
    *(a1 + 482) = *(a2 + 482);
    *(a1 + 483) = *(a2 + 483);
    *(a1 + 484) = *(a2 + 484);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 504) = *(a2 + 504);
    *(a1 + 512) = *(a2 + 512);
    *(a1 + 520) = *(a2 + 520);
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 536) = *(a2 + 536);
    *(a1 + 537) = *(a2 + 537);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 568) = *(a2 + 568);
    v162 = *(a2 + 576);
    *(a1 + 592) = *(a2 + 592);
    *(a1 + 576) = v162;
    *(a1 + 600) = *(a2 + 600);
  }

  *(a1 + 608) = *(a2 + 608);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);

  return a1;
}

uint64_t assignWithTake for DSLPlatformItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 32);
  v5 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  if (v4 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(a1 + 32);
LABEL_4:
    v6 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v6;
    *(a1 + 256) = *(a2 + 256);
    v7 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v7;
    v8 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v8;
    v9 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v9;
    v10 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v10;
    v11 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v11;
    v12 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v12;
    goto LABEL_21;
  }

  *(a1 + 32) = v4;

  v13 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  v14 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  if (*(a1 + 184) >> 1 == 4294967294)
  {
    goto LABEL_8;
  }

  if (*(a2 + 184) >> 1 != 4294967294)
  {
    v15 = *(a1 + 64);
    if (v15 != 255)
    {
      v16 = *(a2 + 64);
      if (v16 != 255)
      {
        v17 = *(a1 + 56);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = v16;
        outlined consume of GraphicsImage.Contents(v17, v15);
        goto LABEL_14;
      }

      outlined destroy of GraphicsImage.Contents(a1 + 56);
    }

    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
LABEL_14:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 100) = *(a2 + 100);
    *(a1 + 113) = *(a2 + 113);
    v18 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v18;
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 161) = *(a2 + 161);
    v19 = *(a1 + 184);
    *(a1 + 162) = *(a2 + 162);
    if (v19 >> 1 != 0xFFFFFFFF)
    {
      v20 = *(a2 + 184);
      if (v20 >> 1 != 0xFFFFFFFF)
      {
        v21 = *(a2 + 192);
        v22 = *(a1 + 168);
        v23 = *(a1 + 176);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 184) = v20;
        *(a1 + 192) = v21;
        outlined consume of AccessibilityImageLabel(v22, v23, v19);
        goto LABEL_19;
      }

      outlined destroy of AccessibilityImageLabel(a1 + 168);
    }

    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
LABEL_19:
    *(a1 + 200) = *(a2 + 200);
    swift_unknownObjectRelease();
    *(a1 + 208) = *(a2 + 208);

    *(a1 + 216) = *(a2 + 216);
    *(a1 + 217) = *(a2 + 217);
    *(a1 + 220) = *(a2 + 220);
    *(a1 + 224) = *(a2 + 224);
    v24 = *(a1 + 232);
    *(a1 + 232) = *(a2 + 232);

    *(a1 + 240) = *(a2 + 240);
    *(a1 + 242) = *(a2 + 242);
    goto LABEL_20;
  }

  outlined destroy of Image.Resolved(a1 + 56);
LABEL_8:
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 227) = *(a2 + 227);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
LABEL_20:
  *(a1 + 248) = *(a2 + 248);

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);

LABEL_21:
  *(a1 + 272) = *(a2 + 272);

  v25 = (a1 + 280);
  if (*(a1 + 304) == 1)
  {
LABEL_24:
    v27 = *(a2 + 296);
    *v25 = *(a2 + 280);
    *(a1 + 296) = v27;
    goto LABEL_26;
  }

  v26 = *(a2 + 304);
  if (v26 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(a1 + 280);
    goto LABEL_24;
  }

  *v25 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = v26;
  swift_unknownObjectRelease();
LABEL_26:
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  if (*(a1 + 608))
  {
    if (*(a2 + 608))
    {
      v28 = *(a2 + 336);
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 336) = v28;

      *(a1 + 344) = *(a2 + 344);
      *(a1 + 352) = *(a2 + 352);

      *(a1 + 360) = *(a2 + 360);
      *(a1 + 368) = *(a2 + 368);
      *(a1 + 384) = *(a2 + 384);
      v29 = (a1 + 392);
      v30 = (a2 + 392);
      v31 = *(a1 + 416);
      if (v31 != 1)
      {
        v32 = *(a2 + 416);
        if (v32 != 1)
        {
          if (v31)
          {
            v34 = a1 + 392;
            if (v32)
            {
              __swift_destroy_boxed_opaque_existential_1(v34);
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v34);
            }
          }

          v35 = *(a2 + 408);
          *v29 = *v30;
          *(a1 + 408) = v35;
          *(a1 + 424) = *(a2 + 424);
          *(a1 + 432) = *(a2 + 432);

LABEL_39:
          *(a1 + 440) = *(a2 + 440);
          *(a1 + 448) = *(a2 + 448);
          v36 = (a1 + 456);
          v37 = (a2 + 456);
          if (*(a1 + 568) != 1)
          {
            v38 = *(a2 + 568);
            if (v38 != 1)
            {
              *v36 = *v37;
              *(a1 + 464) = *(a2 + 464);
              *(a1 + 472) = *(a2 + 472);
              *(a1 + 480) = *(a2 + 480);
              *(a1 + 481) = *(a2 + 481);
              *(a1 + 483) = *(a2 + 483);
              *(a1 + 484) = *(a2 + 484);
              *(a1 + 488) = *(a2 + 488);
              v43 = *(a2 + 512);
              *(a1 + 496) = *(a2 + 496);
              *(a1 + 512) = v43;
              *(a1 + 528) = *(a2 + 528);
              *(a1 + 536) = *(a2 + 536);
              *(a1 + 537) = *(a2 + 537);
              *(a1 + 544) = *(a2 + 544);
              *(a1 + 560) = *(a2 + 560);
              *(a1 + 568) = v38;

              *(a1 + 576) = *(a2 + 576);
              *(a1 + 592) = *(a2 + 592);
              *(a1 + 600) = *(a2 + 600);
              goto LABEL_44;
            }

            outlined destroy of AccessibilityTextLayoutProperties(a1 + 456);
          }

          v39 = *(a2 + 568);
          *(a1 + 552) = *(a2 + 552);
          *(a1 + 568) = v39;
          *(a1 + 584) = *(a2 + 584);
          *(a1 + 600) = *(a2 + 600);
          v40 = *(a2 + 504);
          *(a1 + 488) = *(a2 + 488);
          *(a1 + 504) = v40;
          v41 = *(a2 + 536);
          *(a1 + 520) = *(a2 + 520);
          *(a1 + 536) = v41;
          v42 = *(a2 + 472);
          *v36 = *v37;
          *(a1 + 472) = v42;
LABEL_44:
          *(a1 + 608) = *(a2 + 608);

          *(a1 + 616) = *(a2 + 616);
          *(a1 + 624) = *(a2 + 624);
          return a1;
        }

        outlined destroy of AccessibilityValueStorage(a1 + 392);
      }

      v33 = *(a2 + 408);
      *v29 = *v30;
      *(a1 + 408) = v33;
      *(a1 + 424) = *(a2 + 424);
      goto LABEL_39;
    }

    outlined destroy of PlatformItem.AccessibilityContent(a1 + 328);
  }

  memcpy((a1 + 328), (a2 + 328), 0x129uLL);
  return a1;
}

uint64_t getEnumTagSinglePayload for DSLPlatformItem(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 625))
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

uint64_t storeEnumTagSinglePayload for DSLPlatformItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 616) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 624) = 0;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 625) = 1;
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

    *(result + 625) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for DSLPlatformItemReader()
{
  result = type metadata accessor for _VariadicView.Tree();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for DSLPlatformItemReader(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (*(v5 + 80) & 0xF8 ^ 0x1F8u) & (v6 + 16);
  v8 = *a2;
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-17 - v6) | v6) - *(v5 + 64) - v7 >= 0xFFFFFFFFFFFFFFE7)
  {
    v11 = a2[1];
    *a1 = v8;
    a1[1] = v11;
    v12 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = *(v5 + 16);

    v14(v12 + 1, v13 + 1, v4);
  }

  else
  {
    *a1 = v8;
    a1 = (v8 + v7);
  }

  return a1;
}

uint64_t destroy for DSLPlatformItemReader(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 24) - 8);
  v5 = *(v4 + 8);
  v6 = (*(v4 + 80) + ((a1 + (*(v4 + 80) | 7) + 16) & ~(*(v4 + 80) | 7)) + 16) & ~*(v4 + 80);

  return v5(v6);
}

void *initializeWithCopy for DSLPlatformItemReader(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 24);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(*(v5 - 8) + 80);
  v8 = (v7 | 7) + 16;
  v9 = ((a1 + v8) & ~(v7 | 7));
  v10 = ((a2 + v8) & ~(v7 | 7));
  *v9 = *v10;
  v11 = v9 + v7 + 16;
  v12 = v10 + v7 + 16;

  v6(v11 & ~v7, v12 & ~v7, v5);
  return a1;
}

void *assignWithCopy for DSLPlatformItemReader(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = *(*(a3 + 24) - 8);
  v8 = *(v7 + 24);
  v9 = *(v7 + 80);
  v10 = (v9 | 7) + 16;
  v11 = ((a1 + v10) & ~(v9 | 7));
  v12 = ((a2 + v10) & ~(v9 | 7));
  *v11 = *v12;
  v11[1] = v12[1];
  v8((v11 + v9 + 16) & ~v9, (v12 + v9 + 16) & ~v9);
  return a1;
}

_OWORD *initializeWithTake for DSLPlatformItemReader(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 32);
  v6 = *(v4 + 80);
  v7 = (v6 | 7) + 16;
  v8 = ((a1 + v7) & ~(v6 | 7));
  v9 = ((a2 + v7) & ~(v6 | 7));
  *v8 = *v9;
  v5((v8 + v6 + 16) & ~v6, (v9 + v6 + 16) & ~v6);
  return a1;
}

_OWORD *assignWithTake for DSLPlatformItemReader(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 40);
  v8 = *(v6 + 80);
  v9 = (v8 | 7) + 16;
  v10 = ((a1 + v9) & ~(v8 | 7));
  v11 = ((a2 + v9) & ~(v8 | 7));
  *v10 = *v11;
  v10[1] = v11[1];
  v7((v10 + v8 + 16) & ~v8, (v11 + v8 + 16) & ~v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for DSLPlatformItemReader(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v8 = v6 | 7;
  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = *(*(*(a3 + 24) - 8) + 64) - (((-17 - v6) | v6) + ((-17 - v6) | v8)) - 2;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v6 + ((a1 + v8 + 16) & ~v8) + 16) & ~v6);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for DSLPlatformItemReader(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
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
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = v10 + ((v9 + 16) & ~(v9 | 7));
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
    v20 = (&a1[(v9 | 7) + 16] & ~(v9 | 7));
    if (v7 >= a2)
    {
      v24 = *(v6 + 56);

      v24(&v20[v9 + 16] & ~v9);
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
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

uint64_t destroy for DSLPlatformItem.Child(uint64_t a1)
{

  v2 = *(a1 + 40);
  if (v2 != 1)
  {

    v3 = *(a1 + 192);
    if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v4 = *(a1 + 72);
      if (v4 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(a1 + 64), v4);
      }

      if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(a1 + 176), *(a1 + 184), v3);
      }

      swift_unknownObjectRelease();
    }
  }

  result = *(a1 + 312);
  if (result != 1)
  {
    result = swift_unknownObjectRelease();
  }

  if (*(a1 + 616))
  {

    v6 = *(a1 + 424);
    if (v6)
    {
      if (v6 == 1)
      {
LABEL_16:
        if (*(a1 + 576) != 1)
        {
        }
      }

      __swift_destroy_boxed_opaque_existential_1(a1 + 400);
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t initializeWithCopy for DSLPlatformItem.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  v5 = (a2 + 40);
  v6 = *(a2 + 40);

  if (v6 == 1)
  {
    v7 = v5[13];
    *(a1 + 232) = v5[12];
    *(a1 + 248) = v7;
    *(a1 + 264) = v5[14];
    v8 = v5[9];
    *(a1 + 168) = v5[8];
    *(a1 + 184) = v8;
    v9 = v5[11];
    *(a1 + 200) = v5[10];
    *(a1 + 216) = v9;
    v10 = v5[5];
    *(a1 + 104) = v5[4];
    *(a1 + 120) = v10;
    v11 = v5[7];
    *(a1 + 136) = v5[6];
    *(a1 + 152) = v11;
    v12 = v5[1];
    *(a1 + 40) = *v5;
    *(a1 + 56) = v12;
    v13 = v5[3];
    *(a1 + 72) = v5[2];
    *(a1 + 88) = v13;
  }

  else
  {
    v14 = *(a2 + 48);
    v15 = *(a2 + 56);
    *(a1 + 40) = v6;
    *(a1 + 48) = v14;
    *(a1 + 56) = v15;
    v16 = *(a2 + 192);
    v17 = v6;
    v18 = v14;
    v19 = v15;
    if (v16 >> 1 == 4294967294)
    {
      v20 = *(a2 + 208);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v20;
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 235) = *(a2 + 235);
      v21 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v21;
      v22 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v22;
      v23 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v23;
      v24 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v24;
    }

    else
    {
      v25 = *(a2 + 72);
      if (v25 == 255)
      {
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
      }

      else
      {
        v26 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v26, *(a2 + 72));
        *(a1 + 64) = v26;
        *(a1 + 72) = v25;
        v16 = *(a2 + 192);
      }

      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      if (v16 >> 1 == 0xFFFFFFFF)
      {
        v27 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v27;
      }

      else
      {
        v28 = *(a2 + 176);
        v29 = *(a2 + 184);
        v30 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v28, v29, v16);
        *(a1 + 176) = v28;
        *(a1 + 184) = v29;
        *(a1 + 192) = v16;
        *(a1 + 200) = v30;
      }

      v31 = *(a2 + 216);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = v31;
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 228) = *(a2 + 228);
      *(a1 + 232) = *(a2 + 232);
      v32 = *(a2 + 240);
      *(a1 + 240) = v32;
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v33 = v32;
    }

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);
  v34 = *(a2 + 312);

  if (v34 == 1)
  {
    v35 = *(a2 + 304);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v35;
  }

  else
  {
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = v34;
    swift_unknownObjectRetain();
  }

  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  if (!*(a2 + 616))
  {
    memcpy((a1 + 336), (a2 + 336), 0x129uLL);
    return a1;
  }

  v36 = *(a2 + 344);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = v36;
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 376) = *(a2 + 376);
  v37 = *(a2 + 424);

  if (!v37)
  {
    v39 = *(a2 + 416);
    *(a1 + 400) = *(a2 + 400);
    *(a1 + 416) = v39;
    *(a1 + 432) = *(a2 + 432);
LABEL_23:
    *(a1 + 440) = *(a2 + 440);

    goto LABEL_24;
  }

  if (v37 != 1)
  {
    v40 = *(a2 + 432);
    *(a1 + 424) = v37;
    *(a1 + 432) = v40;
    (**(v37 - 8))(a1 + 400, a2 + 400, v37);
    goto LABEL_23;
  }

  v38 = *(a2 + 416);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = v38;
  *(a1 + 432) = *(a2 + 432);
LABEL_24:
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 456) = *(a2 + 456);
  v41 = *(a2 + 576);
  if (v41 == 1)
  {
    v42 = *(a2 + 576);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 576) = v42;
    *(a1 + 592) = *(a2 + 592);
    *(a1 + 608) = *(a2 + 608);
    v43 = *(a2 + 512);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 512) = v43;
    v44 = *(a2 + 544);
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 544) = v44;
    v45 = *(a2 + 480);
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 480) = v45;
  }

  else
  {
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 472) = *(a2 + 472);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 489) = *(a2 + 489);
    *(a1 + 491) = *(a2 + 491);
    *(a1 + 492) = *(a2 + 492);
    v46 = *(a2 + 512);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 512) = v46;
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 568) = *(a2 + 568);
    *(a1 + 576) = v41;
    *(a1 + 584) = *(a2 + 584);
    *(a1 + 600) = *(a2 + 600);
    *(a1 + 608) = *(a2 + 608);
  }

  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 632) = *(a2 + 632);

  return a1;
}

uint64_t assignWithCopy for DSLPlatformItem.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = (a1 + 40);
  v5 = *(a1 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  v7 = (a2 + 40);
  v6 = *(a2 + 40);
  if (v5 == 1)
  {
    if (v6 == 1)
    {
      v8 = *v7;
      v9 = *(a2 + 72);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = v9;
      *v4 = v8;
      v10 = *(a2 + 88);
      v11 = *(a2 + 104);
      v12 = *(a2 + 136);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 136) = v12;
      *(a1 + 88) = v10;
      *(a1 + 104) = v11;
      v13 = *(a2 + 152);
      v14 = *(a2 + 168);
      v15 = *(a2 + 200);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 200) = v15;
      *(a1 + 152) = v13;
      *(a1 + 168) = v14;
      v16 = *(a2 + 216);
      v17 = *(a2 + 232);
      v18 = *(a2 + 264);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = v18;
      *(a1 + 216) = v16;
      *(a1 + 232) = v17;
    }

    else
    {
      *(a1 + 40) = v6;
      v30 = *(a2 + 48);
      *(a1 + 48) = v30;
      v31 = *(a2 + 56);
      *(a1 + 56) = v31;
      v32 = *(a2 + 192);
      v33 = v6;
      v34 = v30;
      v35 = v31;
      if (v32 >> 1 == 4294967294)
      {
        v36 = *(a2 + 64);
        v37 = *(a2 + 80);
        v38 = *(a2 + 112);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 112) = v38;
        *(a1 + 64) = v36;
        *(a1 + 80) = v37;
        v39 = *(a2 + 128);
        v40 = *(a2 + 144);
        v41 = *(a2 + 176);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 176) = v41;
        *(a1 + 128) = v39;
        *(a1 + 144) = v40;
        v42 = *(a2 + 192);
        v43 = *(a2 + 208);
        v44 = *(a2 + 224);
        *(a1 + 235) = *(a2 + 235);
        *(a1 + 208) = v43;
        *(a1 + 224) = v44;
        *(a1 + 192) = v42;
      }

      else
      {
        v62 = *(a2 + 72);
        if (v62 == 255)
        {
          v79 = *(a2 + 64);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 64) = v79;
        }

        else
        {
          v63 = *(a2 + 64);
          outlined copy of GraphicsImage.Contents(v63, *(a2 + 72));
          *(a1 + 64) = v63;
          *(a1 + 72) = v62;
        }

        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        v80 = *(a2 + 108);
        *(a1 + 121) = *(a2 + 121);
        *(a1 + 108) = v80;
        v81 = *(a2 + 136);
        v82 = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 152) = v82;
        *(a1 + 136) = v81;
        *(a1 + 169) = *(a2 + 169);
        *(a1 + 170) = *(a2 + 170);
        *(a1 + 171) = *(a2 + 171);
        v83 = *(a2 + 192);
        if (v83 >> 1 == 0xFFFFFFFF)
        {
          v84 = *(a2 + 192);
          *(a1 + 176) = *(a2 + 176);
          *(a1 + 192) = v84;
        }

        else
        {
          v85 = *(a2 + 176);
          v86 = *(a2 + 184);
          v87 = *(a2 + 200);
          outlined copy of AccessibilityImageLabel(v85, v86, *(a2 + 192));
          *(a1 + 176) = v85;
          *(a1 + 184) = v86;
          *(a1 + 192) = v83;
          *(a1 + 200) = v87;
        }

        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 225) = *(a2 + 225);
        v88 = *(a2 + 228);
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 228) = v88;
        v89 = *(a2 + 240);
        *(a1 + 240) = v89;
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 250) = *(a2 + 250);
        swift_unknownObjectRetain();

        v90 = v89;
      }

      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 272) = *(a2 + 272);
    }
  }

  else if (v6 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(a1 + 40);
    v20 = *(a2 + 56);
    v19 = *(a2 + 72);
    *v4 = *v7;
    *(a1 + 56) = v20;
    *(a1 + 72) = v19;
    v21 = *(a2 + 136);
    v23 = *(a2 + 88);
    v22 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = v21;
    *(a1 + 88) = v23;
    *(a1 + 104) = v22;
    v24 = *(a2 + 200);
    v26 = *(a2 + 152);
    v25 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = v24;
    *(a1 + 152) = v26;
    *(a1 + 168) = v25;
    v27 = *(a2 + 264);
    v29 = *(a2 + 216);
    v28 = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = v27;
    *(a1 + 216) = v29;
    *(a1 + 232) = v28;
  }

  else
  {
    *(a1 + 40) = v6;
    v45 = v6;

    v46 = *(a1 + 48);
    v47 = *(a2 + 48);
    *(a1 + 48) = v47;
    v48 = v47;

    v49 = *(a1 + 56);
    v50 = *(a2 + 56);
    *(a1 + 56) = v50;
    v51 = v50;

    v52 = *(a2 + 192) & 0xFFFFFFFFFFFFFFFELL;
    if (*(a1 + 192) >> 1 == 4294967294)
    {
      if (v52 == 0x1FFFFFFFCLL)
      {
        v53 = *(a2 + 64);
        v54 = *(a2 + 80);
        v55 = *(a2 + 112);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 112) = v55;
        *(a1 + 64) = v53;
        *(a1 + 80) = v54;
        v56 = *(a2 + 128);
        v57 = *(a2 + 144);
        v58 = *(a2 + 176);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 176) = v58;
        *(a1 + 128) = v56;
        *(a1 + 144) = v57;
        v59 = *(a2 + 192);
        v60 = *(a2 + 208);
        v61 = *(a2 + 224);
        *(a1 + 235) = *(a2 + 235);
        *(a1 + 208) = v60;
        *(a1 + 224) = v61;
        *(a1 + 192) = v59;
      }

      else
      {
        v73 = *(a2 + 72);
        if (v73 == 255)
        {
          v91 = *(a2 + 64);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 64) = v91;
        }

        else
        {
          v74 = *(a2 + 64);
          outlined copy of GraphicsImage.Contents(v74, *(a2 + 72));
          *(a1 + 64) = v74;
          *(a1 + 72) = v73;
        }

        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        v92 = *(a2 + 108);
        *(a1 + 121) = *(a2 + 121);
        *(a1 + 108) = v92;
        v93 = *(a2 + 136);
        v94 = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 152) = v94;
        *(a1 + 136) = v93;
        *(a1 + 169) = *(a2 + 169);
        *(a1 + 170) = *(a2 + 170);
        *(a1 + 171) = *(a2 + 171);
        v95 = *(a2 + 192);
        if (v95 >> 1 == 0xFFFFFFFF)
        {
          v96 = *(a2 + 192);
          *(a1 + 176) = *(a2 + 176);
          *(a1 + 192) = v96;
        }

        else
        {
          v97 = *(a2 + 176);
          v98 = *(a2 + 184);
          v99 = *(a2 + 200);
          outlined copy of AccessibilityImageLabel(v97, v98, *(a2 + 192));
          *(a1 + 176) = v97;
          *(a1 + 184) = v98;
          *(a1 + 192) = v95;
          *(a1 + 200) = v99;
        }

        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 225) = *(a2 + 225);
        v100 = *(a2 + 228);
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 228) = v100;
        v101 = *(a2 + 240);
        *(a1 + 240) = v101;
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 250) = *(a2 + 250);
        swift_unknownObjectRetain();

        v102 = v101;
      }
    }

    else if (v52 == 0x1FFFFFFFCLL)
    {
      outlined destroy of Image.Resolved(a1 + 64);
      v64 = *(a2 + 112);
      v66 = *(a2 + 64);
      v65 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v64;
      *(a1 + 64) = v66;
      *(a1 + 80) = v65;
      v67 = *(a2 + 176);
      v69 = *(a2 + 128);
      v68 = *(a2 + 144);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v67;
      *(a1 + 128) = v69;
      *(a1 + 144) = v68;
      v71 = *(a2 + 208);
      v70 = *(a2 + 224);
      v72 = *(a2 + 192);
      *(a1 + 235) = *(a2 + 235);
      *(a1 + 208) = v71;
      *(a1 + 224) = v70;
      *(a1 + 192) = v72;
    }

    else
    {
      v75 = *(a2 + 72);
      if (*(a1 + 72) == 255)
      {
        if (v75 == 255)
        {
          v105 = *(a2 + 64);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 64) = v105;
        }

        else
        {
          v103 = *(a2 + 64);
          outlined copy of GraphicsImage.Contents(v103, *(a2 + 72));
          *(a1 + 64) = v103;
          *(a1 + 72) = v75;
        }
      }

      else if (v75 == 255)
      {
        outlined destroy of GraphicsImage.Contents(a1 + 64);
        v104 = *(a2 + 72);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = v104;
      }

      else
      {
        v76 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v76, *(a2 + 72));
        v77 = *(a1 + 64);
        *(a1 + 64) = v76;
        v78 = *(a1 + 72);
        *(a1 + 72) = v75;
        outlined consume of GraphicsImage.Contents(v77, v78);
      }

      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      v106 = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 108) = v106;
      v107 = *(a2 + 136);
      v108 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v108;
      *(a1 + 136) = v107;
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      v109 = *(a2 + 192);
      v110 = v109 & 0xFFFFFFFFFFFFFFFELL;
      if (*(a1 + 192) >> 1 == 0xFFFFFFFFLL)
      {
        if (v110 == 0x1FFFFFFFELL)
        {
          v111 = *(a2 + 192);
          *(a1 + 176) = *(a2 + 176);
          *(a1 + 192) = v111;
        }

        else
        {
          v113 = *(a2 + 176);
          v114 = *(a2 + 184);
          v115 = *(a2 + 200);
          outlined copy of AccessibilityImageLabel(v113, v114, *(a2 + 192));
          *(a1 + 176) = v113;
          *(a1 + 184) = v114;
          *(a1 + 192) = v109;
          *(a1 + 200) = v115;
        }
      }

      else if (v110 == 0x1FFFFFFFELL)
      {
        outlined destroy of AccessibilityImageLabel(a1 + 176);
        v112 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v112;
      }

      else
      {
        v116 = *(a2 + 176);
        v117 = *(a2 + 184);
        v118 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v116, v117, *(a2 + 192));
        v119 = *(a1 + 176);
        v120 = *(a1 + 184);
        v121 = *(a1 + 192);
        *(a1 + 176) = v116;
        *(a1 + 184) = v117;
        *(a1 + 192) = v109;
        *(a1 + 200) = v118;
        outlined consume of AccessibilityImageLabel(v119, v120, v121);
      }

      *(a1 + 208) = *(a2 + 208);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 216) = *(a2 + 216);

      *(a1 + 224) = *(a2 + 224);
      *(a1 + 225) = *(a2 + 225);
      v122 = *(a2 + 228);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 228) = v122;
      v123 = *(a1 + 240);
      v124 = *(a2 + 240);
      *(a1 + 240) = v124;
      v125 = v124;

      *(a1 + 248) = *(a2 + 248);
      *(a1 + 250) = *(a2 + 250);
    }

    *(a1 + 256) = *(a2 + 256);

    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);

  v126 = *(a2 + 312);
  if (*(a1 + 312) == 1)
  {
    if (v126 == 1)
    {
      v127 = *(a2 + 304);
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 304) = v127;
    }

    else
    {
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 296) = *(a2 + 296);
      *(a1 + 304) = *(a2 + 304);
      *(a1 + 312) = *(a2 + 312);
      swift_unknownObjectRetain();
    }
  }

  else if (v126 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(a1 + 288);
    v128 = *(a2 + 304);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v128;
  }

  else
  {
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 292) = *(a2 + 292);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 300) = *(a2 + 300);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = *(a2 + 312);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  v129 = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 320) = v129;
  v130 = *(a2 + 616);
  if (*(a1 + 616))
  {
    if (v130)
    {
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 344) = *(a2 + 344);

      *(a1 + 352) = *(a2 + 352);
      *(a1 + 360) = *(a2 + 360);

      *(a1 + 368) = *(a2 + 368);
      v131 = *(a2 + 376);
      *(a1 + 392) = *(a2 + 392);
      *(a1 + 376) = v131;
      v132 = *(a1 + 424);
      v133 = *(a2 + 424);
      if (v132 != 1)
      {
        if (v133 == 1)
        {
          outlined destroy of AccessibilityValueStorage(a1 + 400);
          v141 = *(a2 + 416);
          v140 = *(a2 + 432);
          *(a1 + 400) = *(a2 + 400);
          *(a1 + 416) = v141;
          *(a1 + 432) = v140;
        }

        else
        {
          if (v132)
          {
            v142 = (a1 + 400);
            if (v133)
            {
              __swift_assign_boxed_opaque_existential_1(v142, (a2 + 400));
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v142);
              v158 = *(a2 + 432);
              v159 = *(a2 + 416);
              *(a1 + 400) = *(a2 + 400);
              *(a1 + 416) = v159;
              *(a1 + 432) = v158;
            }
          }

          else if (v133)
          {
            *(a1 + 424) = v133;
            *(a1 + 432) = *(a2 + 432);
            (**(v133 - 8))(a1 + 400, a2 + 400);
          }

          else
          {
            v160 = *(a2 + 400);
            v161 = *(a2 + 416);
            *(a1 + 432) = *(a2 + 432);
            *(a1 + 400) = v160;
            *(a1 + 416) = v161;
          }

          *(a1 + 440) = *(a2 + 440);
        }

        goto LABEL_83;
      }

      if (v133)
      {
        if (v133 == 1)
        {
          v134 = *(a2 + 400);
          v135 = *(a2 + 432);
          *(a1 + 416) = *(a2 + 416);
          *(a1 + 432) = v135;
          *(a1 + 400) = v134;
LABEL_83:
          v162 = *(a2 + 448);
          *(a1 + 456) = *(a2 + 456);
          *(a1 + 448) = v162;
          v163 = *(a2 + 576);
          if (*(a1 + 576) == 1)
          {
            if (v163 == 1)
            {
              v164 = *(a2 + 480);
              *(a1 + 464) = *(a2 + 464);
              *(a1 + 480) = v164;
              v165 = *(a2 + 496);
              v166 = *(a2 + 512);
              v167 = *(a2 + 544);
              *(a1 + 528) = *(a2 + 528);
              *(a1 + 544) = v167;
              *(a1 + 496) = v165;
              *(a1 + 512) = v166;
              v168 = *(a2 + 560);
              v169 = *(a2 + 576);
              v170 = *(a2 + 592);
              *(a1 + 608) = *(a2 + 608);
              *(a1 + 576) = v169;
              *(a1 + 592) = v170;
              *(a1 + 560) = v168;
            }

            else
            {
              v178 = *(a2 + 464);
              *(a1 + 472) = *(a2 + 472);
              *(a1 + 464) = v178;
              v179 = *(a2 + 480);
              *(a1 + 488) = *(a2 + 488);
              *(a1 + 480) = v179;
              *(a1 + 489) = *(a2 + 489);
              *(a1 + 490) = *(a2 + 490);
              *(a1 + 491) = *(a2 + 491);
              *(a1 + 492) = *(a2 + 492);
              *(a1 + 496) = *(a2 + 496);
              *(a1 + 504) = *(a2 + 504);
              *(a1 + 512) = *(a2 + 512);
              *(a1 + 520) = *(a2 + 520);
              *(a1 + 528) = *(a2 + 528);
              *(a1 + 536) = *(a2 + 536);
              *(a1 + 544) = *(a2 + 544);
              *(a1 + 545) = *(a2 + 545);
              *(a1 + 552) = *(a2 + 552);
              *(a1 + 560) = *(a2 + 560);
              *(a1 + 568) = *(a2 + 568);
              *(a1 + 576) = *(a2 + 576);
              v180 = *(a2 + 584);
              *(a1 + 600) = *(a2 + 600);
              *(a1 + 584) = v180;
              *(a1 + 608) = *(a2 + 608);
            }
          }

          else if (v163 == 1)
          {
            outlined destroy of AccessibilityTextLayoutProperties(a1 + 464);
            v171 = *(a2 + 480);
            *(a1 + 464) = *(a2 + 464);
            *(a1 + 480) = v171;
            v172 = *(a2 + 544);
            v174 = *(a2 + 496);
            v173 = *(a2 + 512);
            *(a1 + 528) = *(a2 + 528);
            *(a1 + 544) = v172;
            *(a1 + 496) = v174;
            *(a1 + 512) = v173;
            v176 = *(a2 + 576);
            v175 = *(a2 + 592);
            v177 = *(a2 + 560);
            *(a1 + 608) = *(a2 + 608);
            *(a1 + 576) = v176;
            *(a1 + 592) = v175;
            *(a1 + 560) = v177;
          }

          else
          {
            v181 = *(a2 + 464);
            *(a1 + 472) = *(a2 + 472);
            *(a1 + 464) = v181;
            v182 = *(a2 + 480);
            *(a1 + 488) = *(a2 + 488);
            *(a1 + 480) = v182;
            *(a1 + 489) = *(a2 + 489);
            *(a1 + 490) = *(a2 + 490);
            *(a1 + 491) = *(a2 + 491);
            *(a1 + 492) = *(a2 + 492);
            *(a1 + 496) = *(a2 + 496);
            *(a1 + 504) = *(a2 + 504);
            *(a1 + 512) = *(a2 + 512);
            *(a1 + 520) = *(a2 + 520);
            *(a1 + 528) = *(a2 + 528);
            *(a1 + 536) = *(a2 + 536);
            *(a1 + 544) = *(a2 + 544);
            *(a1 + 545) = *(a2 + 545);
            *(a1 + 552) = *(a2 + 552);
            *(a1 + 560) = *(a2 + 560);
            *(a1 + 568) = *(a2 + 568);
            *(a1 + 576) = *(a2 + 576);

            v183 = *(a2 + 584);
            *(a1 + 600) = *(a2 + 600);
            *(a1 + 584) = v183;
            *(a1 + 608) = *(a2 + 608);
          }

          *(a1 + 616) = *(a2 + 616);

          *(a1 + 624) = *(a2 + 624);
          *(a1 + 628) = *(a2 + 628);
          *(a1 + 632) = *(a2 + 632);
          return a1;
        }

        *(a1 + 424) = v133;
        *(a1 + 432) = *(a2 + 432);
        (**(v133 - 8))(a1 + 400, a2 + 400);
      }

      else
      {
        v156 = *(a2 + 400);
        v157 = *(a2 + 416);
        *(a1 + 432) = *(a2 + 432);
        *(a1 + 400) = v156;
        *(a1 + 416) = v157;
      }

      *(a1 + 440) = *(a2 + 440);

      goto LABEL_83;
    }

    outlined destroy of PlatformItem.AccessibilityContent(a1 + 336);
LABEL_62:
    memcpy((a1 + 336), (a2 + 336), 0x129uLL);
    return a1;
  }

  if (!v130)
  {
    goto LABEL_62;
  }

  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  v136 = *(a2 + 376);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 376) = v136;
  v137 = *(a2 + 424);

  if (!v137)
  {
    v143 = *(a2 + 400);
    v144 = *(a2 + 416);
    *(a1 + 432) = *(a2 + 432);
    *(a1 + 400) = v143;
    *(a1 + 416) = v144;
LABEL_70:
    *(a1 + 440) = *(a2 + 440);

    goto LABEL_71;
  }

  if (v137 != 1)
  {
    *(a1 + 424) = v137;
    *(a1 + 432) = *(a2 + 432);
    (**(v137 - 8))(a1 + 400, a2 + 400, v137);
    goto LABEL_70;
  }

  v138 = *(a2 + 400);
  v139 = *(a2 + 432);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = v139;
  *(a1 + 400) = v138;
LABEL_71:
  v145 = *(a2 + 448);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 448) = v145;
  if (*(a2 + 576) == 1)
  {
    v146 = *(a2 + 480);
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 480) = v146;
    v147 = *(a2 + 496);
    v148 = *(a2 + 512);
    v149 = *(a2 + 544);
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 544) = v149;
    *(a1 + 496) = v147;
    *(a1 + 512) = v148;
    v150 = *(a2 + 560);
    v151 = *(a2 + 576);
    v152 = *(a2 + 592);
    *(a1 + 608) = *(a2 + 608);
    *(a1 + 576) = v151;
    *(a1 + 592) = v152;
    *(a1 + 560) = v150;
  }

  else
  {
    v153 = *(a2 + 464);
    *(a1 + 472) = *(a2 + 472);
    *(a1 + 464) = v153;
    v154 = *(a2 + 480);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 480) = v154;
    *(a1 + 489) = *(a2 + 489);
    *(a1 + 490) = *(a2 + 490);
    *(a1 + 491) = *(a2 + 491);
    *(a1 + 492) = *(a2 + 492);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 504) = *(a2 + 504);
    *(a1 + 512) = *(a2 + 512);
    *(a1 + 520) = *(a2 + 520);
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 536) = *(a2 + 536);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 545) = *(a2 + 545);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 568) = *(a2 + 568);
    *(a1 + 576) = *(a2 + 576);
    v155 = *(a2 + 584);
    *(a1 + 600) = *(a2 + 600);
    *(a1 + 584) = v155;
    *(a1 + 608) = *(a2 + 608);
  }

  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 632) = *(a2 + 632);

  return a1;
}

uint64_t assignWithTake for DSLPlatformItem.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  if (v4 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(a1 + 40);
LABEL_4:
    v6 = *(a2 + 248);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = v6;
    *(a1 + 264) = *(a2 + 264);
    v7 = *(a2 + 184);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = v7;
    v8 = *(a2 + 216);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = v8;
    v9 = *(a2 + 120);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = v9;
    v10 = *(a2 + 152);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = v10;
    v11 = *(a2 + 56);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = v11;
    v12 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v12;
    goto LABEL_21;
  }

  *(a1 + 40) = v4;

  v13 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  v14 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  if (*(a1 + 192) >> 1 == 4294967294)
  {
    goto LABEL_8;
  }

  if (*(a2 + 192) >> 1 != 4294967294)
  {
    v20 = *(a1 + 72);
    if (v20 != 255)
    {
      v21 = *(a2 + 72);
      if (v21 != 255)
      {
        v22 = *(a1 + 64);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = v21;
        outlined consume of GraphicsImage.Contents(v22, v20);
        goto LABEL_14;
      }

      outlined destroy of GraphicsImage.Contents(a1 + 64);
    }

    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
LABEL_14:
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 169) = *(a2 + 169);
    v23 = *(a1 + 192);
    *(a1 + 170) = *(a2 + 170);
    if (v23 >> 1 != 0xFFFFFFFF)
    {
      v24 = *(a2 + 192);
      if (v24 >> 1 != 0xFFFFFFFF)
      {
        v26 = *(a2 + 200);
        v27 = *(a1 + 176);
        v28 = *(a1 + 184);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v24;
        *(a1 + 200) = v26;
        outlined consume of AccessibilityImageLabel(v27, v28, v23);
        goto LABEL_19;
      }

      outlined destroy of AccessibilityImageLabel(a1 + 176);
    }

    v25 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v25;
LABEL_19:
    *(a1 + 208) = *(a2 + 208);
    swift_unknownObjectRelease();
    *(a1 + 216) = *(a2 + 216);

    *(a1 + 224) = *(a2 + 224);
    *(a1 + 225) = *(a2 + 225);
    *(a1 + 228) = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    v29 = *(a1 + 240);
    *(a1 + 240) = *(a2 + 240);

    *(a1 + 248) = *(a2 + 248);
    *(a1 + 250) = *(a2 + 250);
    goto LABEL_20;
  }

  outlined destroy of Image.Resolved(a1 + 64);
LABEL_8:
  v15 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v15;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 235) = *(a2 + 235);
  v16 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v16;
  v17 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v17;
  v18 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v18;
  v19 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v19;
LABEL_20:
  *(a1 + 256) = *(a2 + 256);

  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);

LABEL_21:
  *(a1 + 280) = *(a2 + 280);

  if (*(a1 + 312) == 1)
  {
LABEL_24:
    v31 = *(a2 + 304);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v31;
    goto LABEL_26;
  }

  v30 = *(a2 + 312);
  if (v30 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(a1 + 288);
    goto LABEL_24;
  }

  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = v30;
  swift_unknownObjectRelease();
LABEL_26:
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  if (*(a1 + 616))
  {
    if (*(a2 + 616))
    {
      v32 = *(a2 + 344);
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 344) = v32;

      *(a1 + 352) = *(a2 + 352);
      *(a1 + 360) = *(a2 + 360);

      *(a1 + 368) = *(a2 + 368);
      *(a1 + 376) = *(a2 + 376);
      *(a1 + 392) = *(a2 + 392);
      v33 = *(a1 + 424);
      if (v33 != 1)
      {
        v34 = *(a2 + 424);
        if (v34 != 1)
        {
          if (v33)
          {
            v36 = a1 + 400;
            if (v34)
            {
              __swift_destroy_boxed_opaque_existential_1(v36);
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v36);
            }
          }

          v37 = *(a2 + 416);
          *(a1 + 400) = *(a2 + 400);
          *(a1 + 416) = v37;
          v38 = *(a2 + 440);
          *(a1 + 432) = *(a2 + 432);
          *(a1 + 440) = v38;

LABEL_39:
          *(a1 + 448) = *(a2 + 448);
          *(a1 + 456) = *(a2 + 456);
          if (*(a1 + 576) != 1)
          {
            v39 = *(a2 + 576);
            if (v39 != 1)
            {
              *(a1 + 464) = *(a2 + 464);
              *(a1 + 472) = *(a2 + 472);
              *(a1 + 480) = *(a2 + 480);
              *(a1 + 488) = *(a2 + 488);
              *(a1 + 489) = *(a2 + 489);
              *(a1 + 491) = *(a2 + 491);
              *(a1 + 492) = *(a2 + 492);
              v44 = *(a2 + 512);
              *(a1 + 496) = *(a2 + 496);
              *(a1 + 512) = v44;
              *(a1 + 528) = *(a2 + 528);
              *(a1 + 544) = *(a2 + 544);
              *(a1 + 545) = *(a2 + 545);
              *(a1 + 552) = *(a2 + 552);
              *(a1 + 560) = *(a2 + 560);
              *(a1 + 568) = *(a2 + 568);
              *(a1 + 576) = v39;

              *(a1 + 584) = *(a2 + 584);
              *(a1 + 600) = *(a2 + 600);
              *(a1 + 608) = *(a2 + 608);
              goto LABEL_44;
            }

            outlined destroy of AccessibilityTextLayoutProperties(a1 + 464);
          }

          v40 = *(a2 + 576);
          *(a1 + 560) = *(a2 + 560);
          *(a1 + 576) = v40;
          *(a1 + 592) = *(a2 + 592);
          *(a1 + 608) = *(a2 + 608);
          v41 = *(a2 + 512);
          *(a1 + 496) = *(a2 + 496);
          *(a1 + 512) = v41;
          v42 = *(a2 + 544);
          *(a1 + 528) = *(a2 + 528);
          *(a1 + 544) = v42;
          v43 = *(a2 + 480);
          *(a1 + 464) = *(a2 + 464);
          *(a1 + 480) = v43;
LABEL_44:
          *(a1 + 616) = *(a2 + 616);

          *(a1 + 624) = *(a2 + 624);
          *(a1 + 632) = *(a2 + 632);
          return a1;
        }

        outlined destroy of AccessibilityValueStorage(a1 + 400);
      }

      v35 = *(a2 + 416);
      *(a1 + 400) = *(a2 + 400);
      *(a1 + 416) = v35;
      *(a1 + 432) = *(a2 + 432);
      goto LABEL_39;
    }

    outlined destroy of PlatformItem.AccessibilityContent(a1 + 336);
  }

  memcpy((a1 + 336), (a2 + 336), 0x129uLL);
  return a1;
}

uint64_t getEnumTagSinglePayload for DSLPlatformItem.Child(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 633))
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

uint64_t storeEnumTagSinglePayload for DSLPlatformItem.Child(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 632) = 0;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 633) = 1;
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

    *(result + 633) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined destroy of (PlatformItem, Bool)?(uint64_t a1)
{
  type metadata accessor for (PlatformItem, Bool)?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (PlatformItem, Bool)?()
{
  if (!lazy cache variable for type metadata for (PlatformItem, Bool)?)
  {
    type metadata accessor for (PlatformItem, Bool)();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (PlatformItem, Bool)?);
    }
  }
}

void type metadata accessor for (PlatformItem, Bool)()
{
  if (!lazy cache variable for type metadata for (PlatformItem, Bool))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PlatformItem, Bool));
    }
  }
}

void KeyboardShortcut.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 input];
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

LABEL_15:

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 16) = 0;
    return;
  }

  if (one-time initialization token for keyInputToKeyEquivalentMap != -1)
  {
    swift_once();
  }

  rawValue = keyInputToKeyEquivalentMap._rawValue;
  if (*(keyInputToKeyEquivalentMap._rawValue + 2))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v8);
    if (v12)
    {
      v13 = (rawValue[7] + 16 * v11);
      v6 = *v13;
      v14 = v13[1];

      v8 = v14;
    }
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    if ((v8 & 0xF00000000000000) != 0)
    {
LABEL_17:
      v17 = [a1 modifierFlags];

      v18 = specialized EventModifiers.init(_:)(v17);
      *a2 = v6;
      *(a2 + 8) = v8;
      *(a2 + 16) = v18;
      *(a2 + 24) = 0;
      return;
    }
  }

  else
  {
    if ((v6 & 0xFFFFFFFFFFFFLL) != 0)
    {
      if ((v6 & 0x1000000000000000) == 0)
      {
        v6 = static String._copying(_:)();
        v16 = v15;

        v8 = v16;
      }

      goto LABEL_17;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t one-time initialization function for keyInputToKeyEquivalentMap()
{
  type metadata accessor for _ContiguousArrayStorage<(String, Character)>();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CDB9700;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 48) = 8428783;
  *(inited + 56) = 0xA300000000000000;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v2;
  *(inited + 80) = 8494319;
  *(inited + 88) = 0xA300000000000000;
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v3;
  *(inited + 112) = 8559855;
  *(inited + 120) = 0xA300000000000000;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v4;
  *(inited + 144) = 8625391;
  *(inited + 152) = 0xA300000000000000;
  *(inited + 160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 168) = v5;
  *(inited + 176) = 27;
  *(inited + 184) = 0xE100000000000000;
  *(inited + 192) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 200) = v6;
  *(inited + 208) = 8;
  *(inited + 216) = 0xE100000000000000;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v7;
  *(inited + 240) = 11312367;
  *(inited + 248) = 0xA300000000000000;
  *(inited + 256) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 264) = v8;
  *(inited + 272) = 11377903;
  *(inited + 280) = 0xA300000000000000;
  *(inited + 288) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 296) = v9;
  *(inited + 304) = 11115759;
  *(inited + 312) = 0xA300000000000000;
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v10;
  *(inited + 336) = 11246831;
  *(inited + 344) = 0xA300000000000000;
  *(inited + 352) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 360) = v11;
  *(inited + 368) = 8690927;
  *(inited + 376) = 0xA300000000000000;
  *(inited + 384) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 392) = v12;
  *(inited + 400) = 8756463;
  *(inited + 408) = 0xA300000000000000;
  *(inited + 416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 424) = v13;
  *(inited + 432) = 8821999;
  *(inited + 440) = 0xA300000000000000;
  *(inited + 448) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 456) = v14;
  *(inited + 464) = 8887535;
  *(inited + 472) = 0xA300000000000000;
  *(inited + 480) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 488) = v15;
  *(inited + 496) = 8953071;
  *(inited + 504) = 0xA300000000000000;
  *(inited + 512) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 520) = v16;
  *(inited + 528) = 9018607;
  *(inited + 536) = 0xA300000000000000;
  *(inited + 544) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 552) = v17;
  *(inited + 560) = 9084143;
  *(inited + 568) = 0xA300000000000000;
  *(inited + 576) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 584) = v18;
  *(inited + 592) = 9149679;
  *(inited + 600) = 0xA300000000000000;
  *(inited + 608) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 616) = v19;
  *(inited + 624) = 9215215;
  *(inited + 632) = 0xA300000000000000;
  *(inited + 640) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 648) = v20;
  *(inited + 656) = 9280751;
  *(inited + 664) = 0xA300000000000000;
  *(inited + 672) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 680) = v21;
  *(inited + 688) = 9346287;
  *(inited + 696) = 0xA300000000000000;
  *(inited + 704) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 712) = v22;
  *(inited + 720) = 9411823;
  *(inited + 728) = 0xA300000000000000;
  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SJTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  type metadata accessor for (String, Character)();
  result = swift_arrayDestroy();
  keyInputToKeyEquivalentMap._rawValue = v23;
  return result;
}

uint64_t one-time initialization function for keyEquivalentToKeyInputMap()
{
  if (one-time initialization token for keyInputToKeyEquivalentMap == -1)
  {
    goto LABEL_2;
  }

LABEL_27:
  swift_once();
LABEL_2:
  rawValue = keyInputToKeyEquivalentMap._rawValue;
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v2 = rawValue + 64;
  v3 = 1 << rawValue[32];
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(rawValue + 8);
  v6 = (v3 + 63) >> 6;
  v32 = rawValue;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  if (v5)
  {
LABEL_7:
    v10 = v7;
    goto LABEL_11;
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *&v2[8 * v10];
    ++v7;
    if (v5)
    {
LABEL_11:
      v11 = (v10 << 10) | (16 * __clz(__rbit64(v5)));
      v12 = (*(v32 + 6) + v11);
      v13 = v12[1];
      v33 = *v12;
      v14 = (*(v32 + 7) + v11);
      v16 = *v14;
      v15 = v14[1];
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
      v20 = v1[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v24 = v19;
      if (v1[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = v18;
          specialized _NativeDictionary.copy()();
          v18 = v30;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
        if ((v24 & 1) != (v25 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v5 &= v5 - 1;
      if (v24)
      {
        v8 = v18;

        v9 = (v1[7] + 16 * v8);
        *v9 = v33;
        v9[1] = v13;

        v7 = v10;
        if (v5)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v1[(v18 >> 6) + 8] |= 1 << v18;
        v26 = (v1[6] + 16 * v18);
        *v26 = v16;
        v26[1] = v15;
        v27 = (v1[7] + 16 * v18);
        *v27 = v33;
        v27[1] = v13;

        v28 = v1[2];
        v22 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v22)
        {
          goto LABEL_26;
        }

        v1[2] = v29;
        v7 = v10;
        if (v5)
        {
          goto LABEL_7;
        }
      }
    }
  }

  keyEquivalentToKeyInputMap._rawValue = v1;
}

void type metadata accessor for _ContiguousArrayStorage<(String, Character)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Character)>)
  {
    type metadata accessor for (String, Character)();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Character)>);
    }
  }
}

void type metadata accessor for (String, Character)()
{
  if (!lazy cache variable for type metadata for (String, Character))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, Character));
    }
  }
}

uint64_t specialized EventModifiers.init(_:)(int a1)
{
  if ((a1 & 0x10000) != 0)
  {
    if ((a1 & 0x20000) != 0)
    {
      v1 = 3;
      if ((a1 & 0x40000) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v1 = 1;
      if ((a1 & 0x40000) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    if ((a1 & 0x20000) == 0)
    {
      v1 = 0;
      if ((a1 & 0x40000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v1 = 2;
    if ((a1 & 0x40000) != 0)
    {
LABEL_4:
      v1 |= 4uLL;
    }
  }

LABEL_5:
  if ((a1 & 0x80000) == 0)
  {
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v1 |= 0x10uLL;
    if ((a1 & 0x200000) == 0)
    {
      return v1;
    }

    return v1 | 0x20;
  }

  v1 |= 8uLL;
  if ((a1 & 0x100000) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((a1 & 0x200000) != 0)
  {
    return v1 | 0x20;
  }

  return v1;
}

uint64_t View.labelGroupStyle_v0<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LabelGroupStyleModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedLabelGroupStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedLabelGroupStyle and conformance ResolvedLabelGroupStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance LabelGroupStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance LabelGroupChildEnvironmentModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0CC8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t static UIViewPlatformViewDefinition.supportsMixedHierarchy.getter()
{
  static Semantics.v7.getter();

  return isLinkedOnOrAfter(_:)();
}

uint64_t static UIViewPlatformViewDefinition.setPath(_:shapeView:)(__int128 *a1, uint64_t a2)
{
  v2 = a2 + OBJC_IVAR____TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView_path;
  v3 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView_path);
  v4 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView_path + 8);
  v5 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView_path + 16);
  v6 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView_path + 24);
  v7 = *a1;
  v8 = a1[1];
  *v2 = *a1;
  *(v2 + 16) = v8;
  v9 = *(a1 + 32);
  v10 = *(v2 + 32);
  *(v2 + 32) = v9;
  v13[0] = v7;
  v13[1] = v8;
  v14 = v9;
  outlined init with copy of Path.Storage(v13, v12);
  return outlined consume of Path.Storage(v3, v4, v5, v6, v10);
}

void static UIViewPlatformViewDefinition.setProjectionTransform(_:projectionView:)(int a1, id a2)
{
  v2 = [a2 layer];
  CATransform3D.init(_:)();
  [v2 setTransform_];
}

id _UIGraphicsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIGraphicsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void __swiftcall _UIInheritedView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  if ((UIViewIgnoresTouchEvents() & 1) == 0)
  {
    v7 = [v3 subviews];
    type metadata accessor for UIView();
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v8 >> 62)
    {
LABEL_18:
      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v8 & 0xC000000000000001;
    v17 = v8;
    v12 = v8 + 32;
    v8 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
    while (v10)
    {
      if (__OFSUB__(v10--, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (v11)
      {
        v14 = MEMORY[0x18D00E9C0](v10, v17);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v10 >= *(v9 + 16))
        {
          goto LABEL_17;
        }

        v14 = *(v12 + 8 * v10);
      }

      v15 = v14;
      [v3 convertPoint:v14 toCoordinateSpace:{x, y}];
      v16 = [v15 hitTest:isa withEvent:?];

      if (v16)
      {
        break;
      }
    }
  }
}

uint64_t key path getter for EnvironmentValues.listStackBehavior : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6;
  return result;
}

uint64_t key path setter for EnvironmentValues.listStackBehavior : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t View.listHasPresentationStackBehavior()()
{
  lazy protocol witness table accessor for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag();

  return View.input<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<ListPresentationSizingFlag> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<ListPresentationSizingFlag> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<ListPresentationSizingFlag> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for ViewInputFlagModifier<ListPresentationSizingFlag>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ListPresentationSizingFlag>, lazy protocol witness table accessor for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag, &unk_1EFFD9128, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<ListPresentationSizingFlag> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t *assignWithTake for ListPresentationSizingModifier(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 17);
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 17);
  *a1 = *a2;
  v8 = *(a1 + 16);
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  outlined consume of Environment<CGSize?>.Content(v5, v6, v8, v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListPresentationSizingModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
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

uint64_t storeEnumTagSinglePayload for ListPresentationSizingModifier(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 17) = -a2;
    }
  }

  return result;
}

__n128 ListPresentationSizingModifier.body(content:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, __int16 a3@<W3>, uint64_t a4@<X8>)
{
  specialized Environment.wrappedValue.getter(a1, a2, a3 & 0x1FF);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  KeyPath = swift_getKeyPath();
  *(a4 + 64) = v11;
  *(a4 + 80) = v12;
  *(a4 + 96) = v13;
  *a4 = v7;
  *(a4 + 16) = v8;
  result = v10;
  *(a4 + 32) = v9;
  *(a4 + 48) = v10;
  *(a4 + 112) = KeyPath;
  *(a4 + 120) = 1;
  *(a4 + 128) = 256;
  return result;
}

uint64_t EnvironmentValues.defaultPresentationSize.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ListPresentationSizingFlag()
{
  lazy protocol witness table accessor for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag();
  PropertyList.subscript.getter();
  return v1;
}

double key path getter for EnvironmentValues.defaultPresentationSize : EnvironmentValues@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.defaultPresentationSize : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListStackBehavior>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListStackBehavior>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListStackBehavior>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListStackBehavior>>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListStackBehavior>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListStackBehavior>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListStackBehavior>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>();
    type metadata accessor for _EnvironmentKeyWritingModifier<ListStackBehavior>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListStackBehavior>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>)
  {
    type metadata accessor for ViewInputFlagModifier<ListPresentationSizingFlag>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ListPresentationSizingModifier>, lazy protocol witness table accessor for type ListPresentationSizingModifier and conformance ListPresentationSizingModifier, &type metadata for ListPresentationSizingModifier, MEMORY[0x1E697FDE8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>);
    }
  }
}

void type metadata accessor for ViewInputFlagModifier<ListPresentationSizingFlag>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for _EnvironmentKeyWritingModifier<ListStackBehavior>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListStackBehavior>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListStackBehavior>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>();
    lazy protocol witness table accessor for type _ViewModifier_Content<ListPresentationSizingModifier> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ListPresentationSizingModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ListPresentationSizingModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ListPresentationSizingModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for ViewInputFlagModifier<ListPresentationSizingFlag>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ListPresentationSizingModifier>, lazy protocol witness table accessor for type ListPresentationSizingModifier and conformance ListPresentationSizingModifier, &type metadata for ListPresentationSizingModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ListPresentationSizingModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<ListStackBehavior>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t EnvironmentValues.listItemTint.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListItemTintKey>, &type metadata for ListItemTintKey, &protocol witness table for ListItemTintKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListItemTintKey>, &type metadata for ListItemTintKey, &protocol witness table for ListItemTintKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

uint64_t static ListItemTint.fixed(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 1;
}

uint64_t static ListItemTint.preferred(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
}

uint64_t static ListItemTint.monochrome.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for monochrome != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = byte_1EAA2B608;
  *a1 = static ListItemTint.monochrome;
  *(a1 + 8) = v2;
}

uint64_t View.listItemTint(_:)(unint64_t a1)
{
  if (a1 <= 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = a1;
  }

  v3 = v1;

  View._trait<A>(_:_:)();
  return outlined consume of ListItemTint?(v3);
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<ListItemTintTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<ListItemTintTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<ListItemTintTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ListItemTintTraitKey>, &type metadata for ListItemTintTraitKey, &protocol witness table for ListItemTintTraitKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<ListItemTintTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t AnyTabContent.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnyTabContentStorage();
  (*(v6 + 16))(v8, a1, a2);
  v9 = LimitedAvailabilityCommandContentStorage.__allocating_init(_:)(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  return result;
}

uint64_t protocol witness for TabContent._identifiedView.getter in conformance AnyTabContent<A>@<X0>(uint64_t *a1@<X8>)
{
  result = AnyTabContent._identifiedView.getter();
  *a1 = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for AnyTabContent<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t AnyTabContentStorage.identifiedView.getter()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v1 + 56))(v2, v1, v4);
  swift_getAssociatedConformanceWitness();
  return AnyView.init<A>(_:)();
}

double CGVector.subscript.getter(char a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return result;
}

double (*CGVector.subscript.modify(uint64_t a1, char a2))(uint64_t a1)
{
  *(a1 + 8) = v2;
  *(a1 + 16) = a2;
  v3 = v2 + 1;
  if ((a2 & 1) == 0)
  {
    v3 = v2;
  }

  *a1 = *v3;
  return CGVector.subscript.modify;
}

double CGVector.subscript.modify(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 8 * (*(a1 + 16) & 1)) = *a1;
  return result;
}

double CGVector.init(_:in:by:)(char a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return a2;
}

uint64_t static AnimatedValueTrackBuilder.buildExpression(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AnimatedValueTrack();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t destroy for AnyTransferable()
{
}

void *initializeWithCopy for AnyTransferable(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];

  return a1;
}

void *assignWithCopy for AnyTransferable(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];

  return a1;
}

uint64_t assignWithTake for AnyTransferable(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t AnyTransferable.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v46 = a4;
  v47 = a3;
  v6 = type metadata accessor for TransferRepresentationVisibility();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v44 = v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - v17;
  v19 = *(v9 + 16);
  v48 = a1;
  v19(&v39 - v17, a1, v8, v16);
  v20 = *(a2 - 8);
  v21 = *(v20 + 48);
  if (v21(v18, 1, a2) == 1)
  {
    v39 = 0;
    v40 = 0;
    v22 = v9;
    v23 = v8;
  }

  else
  {
    v24 = Transferable.suggestedFilename.getter();
    v39 = v25;
    v40 = v24;
    v22 = v20;
    v23 = a2;
  }

  (*(v22 + 8))(v18, v23);
  (v19)(v13, v48, v8);
  if (v21(v13, 1, a2) == 1)
  {
    v26 = *(v9 + 8);
    v27 = v39;

    v26(v13, v8);
    v28 = v41;
    static TransferRepresentationVisibility.all.getter();
    v29 = v47;
    v30 = static Transferable.exportedContentTypes(visibility:)();

    (*(v42 + 8))(v28, v43);
  }

  else
  {
    v31 = v39;

    v32 = v41;
    static TransferRepresentationVisibility.all.getter();
    v29 = v47;
    v30 = Transferable.exportedContentTypes(_:)();
    (*(v42 + 8))(v32, v43);
    (*(v20 + 8))(v13, a2);
    v27 = v31;
  }

  v33 = *(v9 + 32);
  v34 = v45;
  v33(v45, v48, v8);
  v35 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = a2;
  *(v36 + 24) = v29;
  result = (v33)(v36 + v35, v34, v8);
  v38 = v46;
  *v46 = &async function pointer to partial apply for closure #1 in AnyTransferable.init<A>(_:);
  v38[1] = v36;
  v38[2] = v40;
  v38[3] = v27;
  v38[4] = v30;
  return result;
}

uint64_t closure #1 in AnyTransferable.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_5(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  v6[19] = swift_task_alloc();
  v8 = type metadata accessor for UTType();
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v9 = type metadata accessor for Optional();
  v6[24] = v9;
  v6[25] = *(v9 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = *(a5 - 8);
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in AnyTransferable.init<A>(_:), 0, 0);
}

uint64_t closure #1 in AnyTransferable.init<A>(_:)()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 136);
  (*(*(v0 + 200) + 16))(v1, *(v0 + 128), *(v0 + 192));
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    type metadata accessor for AnyTransferable.ExportError();
    lazy protocol witness table accessor for type AnyTransferable.ExportError and conformance AnyTransferable.ExportError();
    swift_allocError();
    v5 = v4;
    type metadata accessor for (UTType, Error)();
    (*(*(v6 - 8) + 56))(v5, 1, 2, v6);
    swift_willThrow();
LABEL_3:

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 160);
  v10 = *(v0 + 168);
  v11 = *(v0 + 152);
  v12 = *(v0 + 112);
  (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 208), *(v0 + 136));
  outlined init with copy of UTType?(v12, v11);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v13 = *(v0 + 120);
    _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_2(*(v0 + 152), &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
    v14 = *(v13 + 16);
    *(v0 + 232) = v14;
    if (!v14)
    {
      v28 = *(v0 + 216);
      v27 = *(v0 + 224);
      v29 = *(v0 + 136);
      type metadata accessor for AnyTransferable.ExportError();
      lazy protocol witness table accessor for type AnyTransferable.ExportError and conformance AnyTransferable.ExportError();
      swift_allocError();
      v31 = v30;
      type metadata accessor for (UTType, Error)();
      (*(*(v32 - 8) + 56))(v31, 2, 2, v32);
      swift_willThrow();
      (*(v28 + 8))(v27, v29);
      goto LABEL_3;
    }

    v15 = *(v0 + 120);
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);
    v18 = *(v17 + 16);
    v17 += 16;
    v19 = *(v17 + 64);
    *(v0 + 296) = v19;
    *(v0 + 240) = *(v17 + 56);
    *(v0 + 248) = v18;
    *(v0 + 272) = 0;
    v18(*(v0 + 176), v15 + ((v19 + 32) & ~v19), v16);
    v20 = swift_task_alloc();
    *(v0 + 280) = v20;
    *v20 = v0;
    v20[1] = closure #1 in AnyTransferable.init<A>(_:);
    v21 = *(v0 + 224);
    v22 = *(v0 + 176);
  }

  else
  {
    (*(*(v0 + 168) + 32))(*(v0 + 184), *(v0 + 152), *(v0 + 160));
    v23 = swift_task_alloc();
    *(v0 + 256) = v23;
    *v23 = v0;
    v23[1] = closure #1 in AnyTransferable.init<A>(_:);
    v21 = *(v0 + 224);
    v22 = *(v0 + 184);
  }

  v24 = *(v0 + 136);
  v25 = *(v0 + 144);
  v26 = *(v0 + 104);

  return fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:)(v26, v22, v21, v24, v25);
}

{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[17];
  (*(v0[21] + 8))(v0[23], v0[20]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[3];

  v5 = v0[1];

  return v5(v4);
}

{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[17];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[6];

  v5 = v0[1];

  return v5(v4);
}

{
  v1 = v0[33];
  v2 = v0[27];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v13 = v0[17];
  v14 = v0[28];
  type metadata accessor for AnyTransferable.ExportError();
  lazy protocol witness table accessor for type AnyTransferable.ExportError and conformance AnyTransferable.ExportError();
  swift_allocError();
  v7 = v6;
  type metadata accessor for (UTType, Error)();
  v9 = v8;
  v10 = *(v8 + 48);
  (*(v5 + 16))(v7, v3, v4);
  *(v7 + v10) = v1;
  (*(*(v9 - 8) + 56))(v7, 0, 2, v9);
  swift_willThrow();
  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v14, v13);

  v11 = v0[1];

  return v11();
}

{
  v1 = *(v0 + 288);
  v24 = *(v0 + 232);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 272) + 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  _StringGuts.grow(_:)(39);
  v6 = *(v0 + 88);
  *(v0 + 64) = *(v0 + 80);
  *(v0 + 72) = v6;
  MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD4FF80);
  v7 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v7);

  MEMORY[0x18D00C9B0](0x206874697720, 0xE600000000000000);
  v8 = UTType.identifier.getter();
  MEMORY[0x18D00C9B0](v8);

  MEMORY[0x18D00C9B0](0x3A726F727245202ELL, 0xE900000000000020);
  *(v0 + 96) = v1;
  type metadata accessor for Error();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  MEMORY[0x18D009810](*(v0 + 64), *(v0 + 72));

  (*(v3 + 8))(v2, v4);
  if (v5 == v24)
  {
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v11 = *(v0 + 136);
    type metadata accessor for AnyTransferable.ExportError();
    lazy protocol witness table accessor for type AnyTransferable.ExportError and conformance AnyTransferable.ExportError();
    swift_allocError();
    v13 = v12;
    type metadata accessor for (UTType, Error)();
    (*(*(v14 - 8) + 56))(v13, 2, 2, v14);
    swift_willThrow();
    (*(v10 + 8))(v9, v11);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 272) + 1;
    *(v0 + 272) = v17;
    (*(v0 + 248))(*(v0 + 176), *(v0 + 120) + ((*(v0 + 296) + 32) & ~*(v0 + 296)) + *(v0 + 240) * v17, *(v0 + 160));
    v18 = swift_task_alloc();
    *(v0 + 280) = v18;
    *v18 = v0;
    v18[1] = closure #1 in AnyTransferable.init<A>(_:);
    v19 = *(v0 + 224);
    v20 = *(v0 + 176);
    v21 = *(v0 + 136);
    v22 = *(v0 + 144);
    v23 = *(v0 + 104);

    return fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:)(v23, v20, v19, v21, v22);
  }
}

uint64_t closure #1 in AnyTransferable.init<A>(_:)(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[33] = v1;

  if (v1)
  {
    v4 = closure #1 in AnyTransferable.init<A>(_:);
  }

  else
  {
    v4 = closure #1 in AnyTransferable.init<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[36] = v1;

  if (v1)
  {
    v4 = closure #1 in AnyTransferable.init<A>(_:);
  }

  else
  {
    v4 = closure #1 in AnyTransferable.init<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_5(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v7 = type metadata accessor for TransferRepresentationVisibility();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:), 0, 0);
}

uint64_t fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:)()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[11];
  static TransferRepresentationVisibility.all.getter();
  v5 = static Transferable.exportedFileContentTypes(visibility:)();
  v6 = *(v2 + 8);
  v6(v1, v3);
  LOBYTE(v1) = specialized Sequence<>.contains(_:)(v4, v5);

  if (v1)
  {
    v7 = v0[17];
    v8 = v0[11];
    v9 = type metadata accessor for UTType();
    v0[25] = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 16);
    v0[26] = v11;
    v0[27] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v7, v8, v9);
    (*(v10 + 56))(v7, 0, 1, v9);
    v12 = swift_task_alloc();
    v0[28] = v12;
    *v12 = v0;
    v12[1] = fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:);
    v13 = v0[21];
    v14 = v0[17];
    v15 = v0[18];
    v16 = v0[13];
    v17 = v0[14];

    return MEMORY[0x1EEDBF540](v13, v14, &async function pointer to closure #1 in fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:), 0, v16, v15, v17);
  }

  else
  {
    v18 = v0[24];
    v19 = v0[22];
    v20 = v0[11];
    static TransferRepresentationVisibility.all.getter();
    v21 = static Transferable.exportedDataContentTypes(visibility:)();
    v6(v18, v19);
    LOBYTE(v18) = specialized Sequence<>.contains(_:)(v20, v21);

    v22 = type metadata accessor for UTType();
    v0[30] = v22;
    v23 = *(v22 - 8);
    v24 = *(v23 + 16);
    v25 = (v23 + 56);
    v0[31] = v24;
    v0[32] = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26 = v0[11];
    if (v18)
    {
      v27 = v0[16];
      v24(v27, v26, v22);
      (*v25)(v27, 0, 1, v22);
      v28 = swift_task_alloc();
      v0[33] = v28;
      *v28 = v0;
      v28[1] = fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:);
      v29 = v0[16];
    }

    else
    {
      v30 = v0[15];
      v24(v30, v26, v22);
      (*v25)(v30, 0, 1, v22);
      v31 = swift_task_alloc();
      v0[35] = v31;
      *v31 = v0;
      v31[1] = fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:);
      v29 = v0[15];
    }

    v32 = v0[13];
    v33 = v0[14];

    return MEMORY[0x1EEDBF598](v29, v32, v33);
  }
}

{
  v2 = *(*v1 + 136);
  *(*v1 + 232) = v0;

  _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_2(v2, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  if (v0)
  {
    v3 = fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:);
  }

  else
  {
    v3 = fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 232);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  (*(v5 + 16))(v3, v2, v4);
  v6 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  v7 = @nonobjc NSFileWrapper.init(url:options:)(v3, 0);
  (*(v5 + 8))(v2, v4);
  if (v1)
  {

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    (*(v0 + 208))(*(v0 + 80), *(v0 + 88), *(v0 + 200));

    v10 = *(v0 + 8);

    return v10(v7);
  }
}

{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = [v3 initRegularFileWithContents_];

  outlined consume of Data._Representation(v2, v1);
  (*(v0 + 248))(*(v0 + 80), *(v0 + 88), *(v0 + 240));

  v6 = *(v0 + 8);

  return v6(v5);
}

{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = [v3 initRegularFileWithContents_];

  outlined consume of Data._Representation(v2, v1);
  (*(v0 + 248))(*(v0 + 80), *(v0 + 88), *(v0 + 240));

  v6 = *(v0 + 8);

  return v6(v5);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v5[34] = v2;

  _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_2(v4[16], &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  if (v2)
  {
    v6 = fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:);
  }

  else
  {
    v6 = fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v4 = *v3;
  v5 = *v3;
  v5[6] = v3;
  v5[7] = a1;
  v5[8] = a2;
  v5[9] = v2;
  v5[36] = v2;

  _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_2(v4[15], &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  if (v2)
  {
    v6 = fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:);
  }

  else
  {
    v6 = fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t closure #1 in fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:), 0, 0);
}

uint64_t closure #1 in fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = v0[1];

  return v4();
}

uint64_t AnyTransferable.newFileWrapper(contentType:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a1;
  v3[8] = a2;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_5(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_5(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for UTType();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *v2;
  v8 = v2[1];
  v3[17] = v6;
  v3[18] = v7;
  v9 = v2[4];
  v3[19] = v8;
  v3[20] = v9;
  v12 = (v7 + *v7);
  v10 = swift_task_alloc();
  v3[21] = v10;
  *v10 = v3;
  v10[1] = AnyTransferable.newFileWrapper(contentType:);

  return v12(v6, a2, v9);
}

uint64_t AnyTransferable.newFileWrapper(contentType:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = AnyTransferable.newFileWrapper(contentType:);
  }

  else
  {
    *(v4 + 184) = a1;
    v5 = AnyTransferable.newFileWrapper(contentType:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v4 = *v2;
  v4[33] = v1;

  v5 = v4[9];
  if (v1)
  {
    _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_2(v5, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
    v6 = AnyTransferable.newFileWrapper(contentType:);
  }

  else
  {
    v4[34] = a1;
    _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_2(v5, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
    v6 = AnyTransferable.newFileWrapper(contentType:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t AnyTransferable.newFileWrapper(contentType:)()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[7];
  (*(v2 + 32))(v3, v0[17], v1);
  (*(v2 + 56))(v3, 0, 1, v1);
  v4 = v0[23];

  v5 = v0[1];

  return v5(v4);
}

{
  v1 = *(v0 + 88);
  static Log.documents.getter();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_2(*(v0 + 88), &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  }

  else
  {
    v4 = *(v0 + 176);
    v5 = v4;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 176);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v8;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_18BD4A000, v6, v7, "Failed to export item. Error: %@", v9, 0xCu);
      _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_2(v10, &lazy cache variable for type metadata for NSObject?, type metadata accessor for NSObject);
      MEMORY[0x18D0110E0](v10, -1, -1);
      MEMORY[0x18D0110E0](v9, -1, -1);
    }

    v13 = *(v0 + 88);

    (*(v3 + 8))(v13, v2);
  }

  v14 = *(v0 + 96);
  v15 = *(v0 + 104);
  v16 = *(v0 + 80);
  outlined init with copy of UTType?(*(v0 + 64), v16);
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_2(*(v0 + 80), &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
LABEL_18:
    v42 = *(v0 + 176);
    v44 = *(v0 + 56);
    v43 = *(v0 + 64);
    v45 = [objc_allocWithZone(MEMORY[0x1E696AC38]) init];

    outlined init with copy of UTType?(v43, v44);

    v46 = *(v0 + 8);

    return v46(v45);
  }

  v17 = *(v0 + 160);
  v18 = *(v0 + 128);
  v19 = *(v0 + 96);
  v20 = *(v0 + 104);
  v21 = *(v0 + 80);
  v22 = *(v20 + 32);
  *(v0 + 192) = v22;
  *(v0 + 200) = (v20 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v22(v18, v21, v19);
  v23 = *(v17 + 16);
  *(v0 + 208) = v23;
  v24 = *(v0 + 104);
  if (!v23)
  {
    (*(v24 + 8))(*(v0 + 128), *(v0 + 96));
    goto LABEL_18;
  }

  v25 = 0;
  v26 = *(v24 + 80);
  *(v0 + 280) = v26;
  v27 = *(v24 + 72);
  *(v0 + 216) = v27;
  v28 = *(v24 + 16);
  *(v0 + 224) = v28;
  while (1)
  {
    *(v0 + 232) = v25;
    v28(*(v0 + 120), *(v0 + 160) + ((v26 + 32) & ~v26) + v27 * v25, *(v0 + 96));
    if (UTType.conforms(to:)())
    {
      break;
    }

    v29 = *(v0 + 208);
    v30 = *(v0 + 232) + 1;
    v31 = *(*(v0 + 104) + 8);
    v31(*(v0 + 120), *(v0 + 96));
    if (v30 == v29)
    {
      v31(*(v0 + 128), *(v0 + 96));
      goto LABEL_18;
    }

    v28 = *(v0 + 224);
    v25 = *(v0 + 232) + 1;
    v27 = *(v0 + 216);
    LOBYTE(v26) = *(v0 + 280);
  }

  v32 = *(v0 + 144);
  v33 = *(v0 + 96);
  v34 = *(v0 + 104);
  v35 = *(v0 + 72);
  (*(v0 + 224))(v35, *(v0 + 120), v33);
  v36 = *(v34 + 56);
  *(v0 + 240) = v36;
  *(v0 + 248) = (v34 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v36(v35, 0, 1, v33);
  v47 = (v32 + *v32);
  v37 = swift_task_alloc();
  *(v0 + 256) = v37;
  *v37 = v0;
  v37[1] = AnyTransferable.newFileWrapper(contentType:);
  v38 = *(v0 + 160);
  v39 = *(v0 + 112);
  v40 = *(v0 + 72);

  return v47(v39, v40, v38);
}

{
  v12 = *(v0 + 240);
  v1 = *(v0 + 192);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *(v0 + 56);

  v8 = *(v5 + 8);
  v8(v2, v6);
  v8(v3, v6);
  v1(v7, v4, v6);
  v12(v7, 0, 1, v6);
  v9 = *(v0 + 272);

  v10 = *(v0 + 8);

  return v10(v9);
}

{
  v1 = *(v0 + 264);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  _StringGuts.grow(_:)(41);
  v2 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 32);
  *(v0 + 24) = v2;
  MEMORY[0x18D00C9B0](0xD00000000000001BLL, 0x800000018CD4FFA0);
  v3 = UTType.identifier.getter();
  MEMORY[0x18D00C9B0](v3);

  MEMORY[0x18D00C9B0](0x3A726F727245202ELL, 0xE900000000000020);
  *(v0 + 48) = v1;
  type metadata accessor for Error();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  MEMORY[0x18D009810](*(v0 + 16), *(v0 + 24));

  while (1)
  {
    v4 = *(v0 + 208);
    v5 = *(v0 + 232) + 1;
    v6 = *(*(v0 + 104) + 8);
    v6(*(v0 + 120), *(v0 + 96));
    if (v5 == v4)
    {
      break;
    }

    v7 = *(v0 + 224);
    v8 = *(v0 + 232) + 1;
    *(v0 + 232) = v8;
    v7(*(v0 + 120), *(v0 + 160) + ((*(v0 + 280) + 32) & ~*(v0 + 280)) + *(v0 + 216) * v8, *(v0 + 96));
    if (UTType.conforms(to:)())
    {
      v9 = *(v0 + 144);
      v10 = *(v0 + 96);
      v11 = *(v0 + 104);
      v12 = *(v0 + 72);
      (*(v0 + 224))(v12, *(v0 + 120), v10);
      v13 = *(v11 + 56);
      *(v0 + 240) = v13;
      *(v0 + 248) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v13(v12, 0, 1, v10);
      v24 = (v9 + *v9);
      v14 = swift_task_alloc();
      *(v0 + 256) = v14;
      *v14 = v0;
      v14[1] = AnyTransferable.newFileWrapper(contentType:);
      v15 = *(v0 + 160);
      v16 = *(v0 + 112);
      v17 = *(v0 + 72);

      return v24(v16, v17, v15);
    }
  }

  v6(*(v0 + 128), *(v0 + 96));
  v19 = *(v0 + 176);
  v21 = *(v0 + 56);
  v20 = *(v0 + 64);
  v22 = [objc_allocWithZone(MEMORY[0x1E696AC38]) init];

  outlined init with copy of UTType?(v20, v21);

  v23 = *(v0 + 8);

  return v23(v22);
}

unint64_t AnyTransferable.ExportError.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AnyTransferable.ExportError();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AnyTransferable.ExportError(v1, v8);
  type metadata accessor for (UTType, Error)();
  v10 = v9;
  v11 = (*(*(v9 - 8) + 48))(v8, 2, v9);
  if (v11)
  {
    if (v11 == 1)
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      return 0xD00000000000004BLL;
    }
  }

  else
  {
    v13 = *&v8[*(v10 + 48)];
    (*(v3 + 32))(v5, v8, v2);
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    MEMORY[0x18D00C9B0](0xD000000000000025, 0x800000018CD4FF30);
    v14 = UTType.identifier.getter();
    MEMORY[0x18D00C9B0](v14);

    MEMORY[0x18D00C9B0](0x3A726F7272450A2ELL, 0xE900000000000020);
    v16[1] = v13;
    type metadata accessor for Error();
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](46, 0xE100000000000000);

    v15 = v17;
    (*(v3 + 8))(v5, v2);
    return v15;
  }
}

uint64_t type metadata accessor for AnyTransferable.ExportError()
{
  result = type metadata singleton initialization cache for AnyTransferable.ExportError;
  if (!type metadata singleton initialization cache for AnyTransferable.ExportError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of AnyTransferable.ExportError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyTransferable.ExportError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (UTType, Error)()
{
  if (!lazy cache variable for type metadata for (UTType, Error))
  {
    type metadata accessor for UTType();
    type metadata accessor for Error();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UTType, Error));
    }
  }
}

uint64_t partial apply for closure #1 in AnyTransferable.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = *(type metadata accessor for Optional() - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = partial apply for closure #1 in AnyTransferable.init<A>(_:);

  return closure #1 in AnyTransferable.init<A>(_:)(a1, a2, a3, v3 + v11, v8, v9);
}

uint64_t partial apply for closure #1 in AnyTransferable.init<A>(_:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t lazy protocol witness table accessor for type AnyTransferable.ExportError and conformance AnyTransferable.ExportError()
{
  result = lazy protocol witness table cache variable for type AnyTransferable.ExportError and conformance AnyTransferable.ExportError;
  if (!lazy protocol witness table cache variable for type AnyTransferable.ExportError and conformance AnyTransferable.ExportError)
  {
    type metadata accessor for AnyTransferable.ExportError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyTransferable.ExportError and conformance AnyTransferable.ExportError);
  }

  return result;
}

uint64_t _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_2(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_5(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnyTransferable.ExportError(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  type metadata accessor for (UTType, Error)();
  v8 = v7;
  v9 = *(v7 - 8);
  if (!(*(v9 + 48))(a2, 2, v7))
  {
    v13 = type metadata accessor for UTType();
    (*(*(v13 - 8) + 16))(a1, a2, v13);
    v14 = *(v8 + 48);
    v15 = *(a2 + v14);
    v16 = v15;
    *(a1 + v14) = v15;
    (*(v9 + 56))(a1, 0, 2, v8);
    return a1;
  }

  v10 = *(v6 + 64);

  return memcpy(a1, a2, v10);
}

void destroy for AnyTransferable.ExportError(uint64_t a1)
{
  type metadata accessor for (UTType, Error)();
  v3 = v2;
  if (!(*(*(v2 - 8) + 48))(a1, 2, v2))
  {
    v4 = type metadata accessor for UTType();
    (*(*(v4 - 8) + 8))(a1, v4);
    v5 = *(a1 + *(v3 + 48));
  }
}

char *initializeWithCopy for AnyTransferable.ExportError(char *a1, char *a2, uint64_t a3)
{
  type metadata accessor for (UTType, Error)();
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(a2, 2, v6))
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }

  else
  {
    v11 = type metadata accessor for UTType();
    (*(*(v11 - 8) + 16))(a1, a2, v11);
    v12 = *(v7 + 48);
    v13 = *&a2[v12];
    v14 = v13;
    *&a1[v12] = v13;
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }
}

char *assignWithCopy for AnyTransferable.ExportError(char *a1, char *a2, uint64_t a3)
{
  type metadata accessor for (UTType, Error)();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 2, v6);
  v11 = v9(a2, 2, v7);
  if (v10)
  {
    if (!v11)
    {
      v12 = type metadata accessor for UTType();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
      v13 = *(v7 + 48);
      v14 = *&a2[v13];
      v15 = v14;
      *&a1[v13] = v14;
      (*(v8 + 56))(a1, 0, 2, v7);
      return a1;
    }
  }

  else
  {
    if (!v11)
    {
      v18 = type metadata accessor for UTType();
      (*(*(v18 - 8) + 24))(a1, a2, v18);
      v19 = *(v7 + 48);
      v20 = *&a2[v19];
      v21 = v20;
      v22 = *&a1[v19];
      *&a1[v19] = v20;

      return a1;
    }

    outlined destroy of (UTType, Error)(a1);
  }

  v16 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v16);
}

uint64_t outlined destroy of (UTType, Error)(uint64_t a1)
{
  type metadata accessor for (UTType, Error)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *initializeWithTake for AnyTransferable.ExportError(char *a1, char *a2, uint64_t a3)
{
  type metadata accessor for (UTType, Error)();
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(a2, 2, v6))
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }

  else
  {
    v11 = type metadata accessor for UTType();
    (*(*(v11 - 8) + 32))(a1, a2, v11);
    *&a1[*(v7 + 48)] = *&a2[*(v7 + 48)];
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }
}

char *assignWithTake for AnyTransferable.ExportError(char *a1, char *a2, uint64_t a3)
{
  type metadata accessor for (UTType, Error)();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 2, v6);
  v11 = v9(a2, 2, v7);
  if (v10)
  {
    if (!v11)
    {
      v12 = type metadata accessor for UTType();
      (*(*(v12 - 8) + 32))(a1, a2, v12);
      *&a1[*(v7 + 48)] = *&a2[*(v7 + 48)];
      (*(v8 + 56))(a1, 0, 2, v7);
      return a1;
    }
  }

  else
  {
    if (!v11)
    {
      v15 = type metadata accessor for UTType();
      (*(*(v15 - 8) + 40))(a1, a2, v15);
      v16 = *(v7 + 48);
      v17 = *&a1[v16];
      *&a1[v16] = *&a2[v16];

      return a1;
    }

    outlined destroy of (UTType, Error)(a1);
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

uint64_t getEnumTag for AnyTransferable.ExportError(uint64_t a1)
{
  type metadata accessor for (UTType, Error)();
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 2, v2);
}

uint64_t destructiveInjectEnumTag for AnyTransferable.ExportError(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (UTType, Error)();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 2, v4);
}

uint64_t type metadata completion function for AnyTransferable.ExportError()
{
  result = type metadata accessor for UTType();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t destroy for URLReceipt(uint64_t *a1)
{
  result = *a1;
  if ((result - 1) >= 2)
  {
  }

  return result;
}

uint64_t *assignWithCopy for URLReceipt(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1 - 1;
  v4 = *a2;
  v5 = *a2 - 1;
  if (v3 >= 2)
  {
    if (v5 >= 2)
    {
      *a1 = v4;
    }

    else
    {
      outlined destroy of (urls: [URL]?)(a1);
      *a1 = *a2;
    }
  }

  else
  {
    *a1 = v4;
    if (v5 >= 2)
    {
    }
  }

  return a1;
}

uint64_t outlined destroy of (urls: [URL]?)(uint64_t a1)
{
  type metadata accessor for (urls: [URL]?)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (urls: [URL]?)()
{
  if (!lazy cache variable for type metadata for (urls: [URL]?))
  {
    type metadata accessor for [URL]?(0, &lazy cache variable for type metadata for [URL]?, type metadata accessor for [URL], MEMORY[0x1E69E6720]);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (urls: [URL]?));
    }
  }
}

void type metadata accessor for [URL]?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *assignWithTake for URLReceipt(void *result, uint64_t *a2)
{
  v2 = *a2;
  if ((*result - 1) >= 2)
  {
    if ((v2 - 1) >= 2)
    {
      *result = v2;
      v4 = result;

      return v4;
    }

    else
    {
      v3 = result;
      outlined destroy of (urls: [URL]?)(result);
      result = v3;
      *v3 = v2;
    }
  }

  else
  {
    *result = v2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for URLReceipt(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 2;
  if (v4 < 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

unint64_t destroy for URLReceipt.Result(unint64_t *a1)
{
  result = *a1;
  v2 = -1;
  if (result < 0xFFFFFFFF)
  {
    v2 = result;
  }

  if (v2 - 1 < 0)
  {
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for URLReceipt.Result(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  LODWORD(v4) = -1;
  if (*a2 < 0xFFFFFFFF)
  {
    v4 = *a2;
  }

  if (v4 - 1 < 0)
  {
    v5 = a1;

    a1 = v5;
  }

  *a1 = v3;
  return a1;
}

uint64_t *assignWithCopy for URLReceipt.Result(uint64_t *result, uint64_t *a2)
{
  LODWORD(v2) = -1;
  if (*result >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  else
  {
    v3 = *result;
  }

  v4 = v3 - 1;
  v5 = *a2;
  if (*a2 < 0xFFFFFFFF)
  {
    v2 = *a2;
  }

  v6 = v2 - 1;
  if (v4 < 0)
  {
    if (v6 < 0)
    {
      *result = v5;
      v10 = result;

      return v10;
    }

    else
    {
      v7 = result;

      result = v7;
      *v7 = *a2;
    }
  }

  else
  {
    *result = v5;
    if (v6 < 0)
    {
      v9 = result;

      return v9;
    }
  }

  return result;
}

unint64_t *assignWithTake for URLReceipt.Result(unint64_t *result, unint64_t *a2)
{
  LODWORD(v2) = -1;
  if (*result < 0xFFFFFFFF)
  {
    v2 = *result;
  }

  v3 = *a2;
  if (v2 - 1 < 0)
  {
    LODWORD(v4) = -1;
    if (v3 < 0xFFFFFFFF)
    {
      v4 = *a2;
    }

    if (v4 - 1 < 0)
    {
      *result = v3;
      v6 = result;

      return v6;
    }

    else
    {
      v5 = result;

      result = v5;
      *v5 = v3;
    }
  }

  else
  {
    *result = v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for URLReceipt.Result(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
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

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *destructiveInjectEnumTag for URLReceipt.Result(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

uint64_t TabContent.popover<A>(isPresented:attachmentAnchor:arrowEdge:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = *a4;
  v11 = *(a4 + 8);
  v12 = a5;
  v13 = *(a4 + 16);
  PopoverConditionalStateProvider.init(isPresented:content:)(a1, a2, a3, a6, a7, v22);
  v20[0] = v10;
  v20[1] = v11;
  v21 = v13;
  if (v12 == 4)
  {
    v14 = 0;
  }

  else
  {
    v14 = specialized Edge.Set.init(_:)(a5);
  }

  v15 = type metadata accessor for PopoverConditionalStateProvider();
  swift_getWitnessTable();
  PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)(v22, v20, v14 | ((v12 == 4) << 8), 0, 0, 0, v15, v23);
  v16 = type metadata accessor for PopoverPresentationModifier();
  TabContent.modifier<A>(_:)(v23, a8, v16, a9);

  outlined copy of Environment<CGFloat?>.Content(v10, v11, v13);
  return (*(*(v16 - 8) + 8))(v23, v16);
}

uint64_t TabContent.popover<A, B>(item:attachmentAnchor:arrowEdge:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v47 = a6;
  v43 = a5;
  v44 = a4;
  v42 = a1;
  v46 = a9;
  v37 = a12;
  v38 = a8;
  v45 = a10;
  v35 = a7;
  v36 = a11;
  v34 = a3;
  v41 = a3;
  type metadata accessor for Optional();
  v40 = type metadata accessor for Binding();
  v15 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v17 = &v33[-v16];
  v48 = a7;
  v49 = a8;
  v50 = a11;
  v51 = a12;
  v18 = type metadata accessor for PopoverItemStateProvider();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33[-v19];
  WitnessTable = swift_getWitnessTable();
  v21 = type metadata accessor for PopoverPresentationModifier();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v33[-v24];
  v27 = *a2;
  v26 = *(a2 + 8);
  v28 = *(a2 + 16);
  (*(v15 + 16))(v17, v42, v40, v23);
  v29 = v17;
  v30 = v41;
  PopoverItemStateProvider.init(item:content:)(v29, v44, v43, v20);
  v48 = v27;
  v49 = v26;
  LOBYTE(v50) = v28;
  if (v30 == 4)
  {
    v31 = 0;
  }

  else
  {
    v31 = specialized Edge.Set.init(_:)(v34);
  }

  PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)(v20, &v48, v31 | ((v30 == 4) << 8), 0, 0, 0, v18, v25);
  TabContent.modifier<A>(_:)(v25, v47, v21, v46);

  outlined copy of Environment<CGFloat?>.Content(v27, v26, v28);
  return (*(v22 + 8))(v25, v21);
}

uint64_t protocol witness for static _ViewTraitKey.defaultValue.getter in conformance TabPopoverPresentationsKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static TabPopoverPresentationsKey.defaultValue;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>();
    lazy protocol witness table accessor for type ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>)
  {
    type metadata accessor for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>();
    type metadata accessor for _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>)
  {
    type metadata accessor for Toggle<ToggleStyleConfiguration.Label>(255, &lazy cache variable for type metadata for Toggle<ToggleStyleConfiguration.Label>, &type metadata for ToggleStyleConfiguration.Label, &protocol witness table for ToggleStyleConfiguration.Label, type metadata accessor for Toggle);
    type metadata accessor for ToggleStyleModifier<_CheckboxToggleStyle>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>);
    }
  }
}

void type metadata accessor for ToggleStyleModifier<_CheckboxToggleStyle>()
{
  if (!lazy cache variable for type metadata for ToggleStyleModifier<_CheckboxToggleStyle>)
  {
    lazy protocol witness table accessor for type _CheckboxToggleStyle and conformance _CheckboxToggleStyle();
    v0 = type metadata accessor for ToggleStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ToggleStyleModifier<_CheckboxToggleStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _CheckboxToggleStyle and conformance _CheckboxToggleStyle()
{
  result = lazy protocol witness table cache variable for type _CheckboxToggleStyle and conformance _CheckboxToggleStyle;
  if (!lazy protocol witness table cache variable for type _CheckboxToggleStyle and conformance _CheckboxToggleStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _CheckboxToggleStyle and conformance _CheckboxToggleStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>();
    lazy protocol witness table accessor for type Toggle<ToggleStyleConfiguration.Label> and conformance Toggle<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

id UIActivityViewController.init(configuration:env:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*(a1 + 32) == 1)
  {
    v5 = *(a1 + 16);

    outlined copy of AppIntentExecutor?(v5);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5);

    outlined destroy of AnyShareConfiguration(a1);
    return 0;
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIActivityItemsConfiguration);
    v13[0] = v3;
    v13[1] = v4;
    outlined init with copy of AnyShareConfiguration(a1, v12);

    v7 = UIActivityItemsConfiguration.init(configuration:env:)(a1, v13);
    if (v7)
    {
      isa = v7;

      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithActivityItemsConfiguration_];
    }

    else
    {
      v12[0] = v3;
      v12[1] = v4;
      AnyShareConfiguration.resolveActivityItems(in:)(v12);

      v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      isa = Array._bridgeToObjectiveC()().super.isa;

      v9 = [v10 initWithActivityItems:isa applicationActivities:0];
    }

    v11 = v9;
    outlined destroy of AnyShareConfiguration(a1);

    return v11;
  }
}

id UIActivityItemsConfiguration.init(configuration:env:)(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 32);
  if (v6 == 2)
  {
    v33 = *a2;
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());

    outlined copy of AppIntentExecutor?(v5);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSItemProvider);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v29 = [v7 initWithItemProviders_];

    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v31 = v5;
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v27 = v4;
    v13 = v3;
    v14 = *(a1 + 72);
    v15 = *(a1 + 80);
    v16 = *(a1 + 88);
    v17 = *(a1 + 96);
    v18 = swift_allocObject();
    v18[2] = v9;
    v18[3] = v10;
    v18[4] = v11;
    v18[5] = v12;
    v18[6] = v33;
    v18[7] = v13;
    v18[8] = v14;
    v18[9] = v15;
    v18[10] = v16;
    v18[11] = v17;
    v38 = partial apply for closure #1 in UIActivityItemsConfiguration.init(configuration:env:);
    v39 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = thunk for @escaping @callee_guaranteed (@guaranteed UIActivityItemsConfigurationMetadataKey) -> (@out Any?);
    v37 = &block_descriptor_48;
    v28 = _Block_copy(&aBlock);
    outlined copy of Text?(v9, v10, v11, v12);
    outlined copy of Text?(v14, v15, v16, v17);
    v32 = v9;
    outlined copy of Text?(v9, v10, v11, v12);
    v30 = v15;
    v19 = v15;
    v20 = v16;
    outlined copy of Text?(v14, v19, v16, v17);

    v21 = v29;

    [v21 setMetadataProvider_];

    _Block_release(v28);
    if (v31)
    {
      v22 = swift_allocObject();
      v22[2] = v31;
      v22[3] = v27;
      v22[4] = v33;
      v22[5] = v13;
      v38 = partial apply for closure #2 in UIActivityItemsConfiguration.init(configuration:env:);
      v39 = v22;
      aBlock = MEMORY[0x1E69E9820];
      v35 = 1107296256;
      v36 = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed UIActivityItemsConfigurationMetadataKey) -> (@out Any?);
      v37 = &block_descriptor_11;
      v23 = _Block_copy(&aBlock);
      outlined copy of AppIntentExecutor?(v31);

      [v21 setPerItemMetadataProvider_];
      _Block_release(v23);
      v24 = swift_allocObject();
      *(v24 + 16) = v31;
      *(v24 + 24) = v27;
      v38 = partial apply for closure #3 in UIActivityItemsConfiguration.init(configuration:env:);
      v39 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v35 = 1107296256;
      v36 = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed UIActivityItemsConfigurationPreviewIntent, @unowned CGSize) -> (@owned NSItemProvider?);
      v37 = &block_descriptor_17_0;
      v25 = _Block_copy(&aBlock);

      [v21 setPreviewProvider_];
      outlined destroy of AnyShareConfiguration(a1);
      _Block_release(v25);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v31);
      outlined consume of Text?(v14, v30, v20, v17);
      outlined consume of Text?(v32, v10, v11, v12);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v31);
    }

    else
    {

      outlined destroy of AnyShareConfiguration(a1);
      outlined consume of Text?(v14, v30, v16, v17);
      outlined consume of Text?(v32, v10, v11, v12);
    }
  }

  else
  {

    if (v6 == 1)
    {

      outlined copy of AppIntentExecutor?(v4);

      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4);
    }

    outlined destroy of AnyShareConfiguration(a1);
    return 0;
  }

  return v21;
}

double closure #1 in UIActivityItemsConfiguration.init(configuration:env:)@<D0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    goto LABEL_14;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
LABEL_14:
    if (!a1)
    {
      goto LABEL_21;
    }

    v33 = a2;
    v34 = a3;
    v31 = 0;
    v32 = 0;
    MEMORY[0x18D009CB0](&v30, v16);
LABEL_16:
    v24 = Text.resolveString(in:with:idiom:)();
    *(a4 + 24) = MEMORY[0x1E69E6158];
    *a4 = v24;
    *(a4 + 8) = v26;
    return result;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {

    if (!a7)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0 || !a7)
    {
      goto LABEL_21;
    }
  }

  MEMORY[0x18D009DC0](&v33, v23);
  if ((Text.isStyled(options:)() & 1) == 0)
  {
    v33 = a2;
    v34 = a3;
    v31 = 0;
    v32 = 0;
    MEMORY[0x18D009CB0](&v30);
    goto LABEL_16;
  }

  v33 = a2;
  v34 = a3;
  v31 = 0;
  v32 = 0;
  v30 = 128;
  v27 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)();
  if (v27)
  {
    v28 = v27;
    *(a4 + 24) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
    *a4 = v28;
    return result;
  }

LABEL_21:
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

id thunk for @escaping @callee_guaranteed (@guaranteed UIActivityItemsConfigurationMetadataKey) -> (@out Any?)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(v13);

  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t closure #2 in UIActivityItemsConfiguration.init(configuration:env:)@<X0>(void (*a1)(void *__return_ptr)@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  a1(v24);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
      if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
      {

LABEL_17:
        outlined init with copy of Any?(&v25, a4);
        return outlined destroy of AnySharePreview(v24);
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = outlined destroy of AnySharePreview(v24);
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }
  }

  if (!v24[3])
  {
    goto LABEL_15;
  }

  v23[3] = a2;
  v23[4] = a3;
  v23[1] = 0;
  v23[2] = 0;
  MEMORY[0x18D009CB0](v23, v13);
  v20 = Text.resolveString(in:with:idiom:)();
  *(a4 + 24) = MEMORY[0x1E69E6158];
  *a4 = v20;
  *(a4 + 8) = v21;
  return outlined destroy of AnySharePreview(v24);
}

id thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed UIActivityItemsConfigurationMetadataKey) -> (@out Any?)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(v15, a2, v6);

  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t closure #3 in UIActivityItemsConfiguration.init(configuration:env:)(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  a3(v19);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
    v10 = 6;
LABEL_8:

    goto LABEL_9;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    v10 = 6;
    goto LABEL_9;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {
    v10 = 4;
    goto LABEL_8;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v18 & 1) == 0)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v10 = 4;
LABEL_9:
  v11 = (v19[v10])(v9);
LABEL_10:
  outlined destroy of AnySharePreview(v19);
  return v11;
}

id thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed UIActivityItemsConfigurationPreviewIntent, @unowned CGSize) -> (@owned NSItemProvider?)(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v9 = *(a1 + 32);

  v10 = a3;
  v11 = v9(a2, v10, a4, a5);

  return v11;
}

char *AnyShareConfiguration.resolveActivityItems(in:)(uint64_t *a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  if (*(v1 + 32))
  {
    return v2;
  }

  v4 = *a1;
  v3 = a1[1];
  v5 = *v1;
  if (*(v1 + 64))
  {
    v35 = *(v1 + 16);
    v36 = *(v1 + 8);
    v34 = *(v1 + 24);
    *&v40 = *a1;
    *(&v40 + 1) = v3;
    v38 = 0;
    v39 = 0;

    MEMORY[0x18D009CB0](v42, v6);
    v7 = Text.resolveString(in:with:idiom:)();
    v9 = v8;
    v10 = *(v5 + 16);
    if (v10)
    {
      v11 = v7;
      v32 = v4;
      v33 = v1;
      v42[0] = v2;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
      v2 = v42[0];
      v31 = v5;
      v12 = v5 + 32;
      do
      {
        outlined init with copy of Any(v12, &v38);
        outlined init with copy of Any(&v38, &v40);
        v13 = type metadata accessor for ActivitySubjectProvider();
        v14 = objc_allocWithZone(v13);
        outlined init with copy of Any(&v40, &v14[OBJC_IVAR____TtC7SwiftUIP33_91555EE1A45CC99D949E9B39601C01F623ActivitySubjectProvider_item]);
        v15 = &v14[OBJC_IVAR____TtC7SwiftUIP33_91555EE1A45CC99D949E9B39601C01F623ActivitySubjectProvider_subject];
        *v15 = v11;
        v15[1] = v9;
        v37.receiver = v14;
        v37.super_class = v13;

        v16 = objc_msgSendSuper2(&v37, sel_init);
        __swift_destroy_boxed_opaque_existential_1(&v40);
        v41 = v13;
        *&v40 = v16;
        __swift_destroy_boxed_opaque_existential_1(&v38);
        v42[0] = v2;
        v18 = *(v2 + 2);
        v17 = *(v2 + 3);
        if (v18 >= v17 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
          v2 = v42[0];
        }

        *(v2 + 2) = v18 + 1;
        outlined init with take of Any(&v40, &v2[32 * v18 + 32]);
        v12 += 32;
        --v10;
      }

      while (v10);

      outlined consume of AnyShareConfiguration.Storage(v31, v36, v35, v34, 0);
      v1 = v33;
      v4 = v32;
      if (!*(v33 + 96))
      {
        return v2;
      }
    }

    else
    {

      outlined consume of AnyShareConfiguration.Storage(v5, v36, v35, v34, 0);
      if (!*(v1 + 96))
      {
        return v2;
      }
    }
  }

  else
  {

    v2 = v5;
    if (!*(v1 + 96))
    {
      return v2;
    }
  }

  v19 = *(v1 + 72);
  v20 = *(v1 + 80);
  v21 = *(v1 + 88);
  outlined copy of Text.Storage(v19, v20, v21 & 1);

  MEMORY[0x18D009DC0](&v40, v22);
  v23 = Text.isStyled(options:)();
  if (v23)
  {
    *&v40 = v4;
    *(&v40 + 1) = v3;
    v38 = 0;
    v39 = 0;
    v42[0] = 128;
    v24 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)();
    if (!v24)
    {
      outlined consume of Text.Storage(v19, v20, v21 & 1);

      return v2;
    }

    v25 = v24;
    v26 = 0;
    v41 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
    *&v40 = v25;
  }

  else
  {
    *&v40 = v4;
    *(&v40 + 1) = v3;
    v38 = 0;
    v39 = 0;
    MEMORY[0x18D009CB0](v42);
    v25 = Text.resolveString(in:with:idiom:)();
    v26 = v27;
    v41 = MEMORY[0x1E69E6158];
    *&v40 = v25;
    *(&v40 + 1) = v27;
  }

  outlined copy of Text.ResolvedMessage(v25, v26, v23 & 1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v29 = *(v2 + 2);
  v28 = *(v2 + 3);
  if (v29 >= v28 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v2);
  }

  outlined consume of Text.Storage(v19, v20, v21 & 1);

  outlined consume of AccessibilityText.Storage(v25, v26, v23 & 1);
  *(v2 + 2) = v29 + 1;
  outlined init with take of Any(&v40, &v2[32 * v29 + 32]);
  return v2;
}

id ActivitySubjectProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySubjectProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id outlined copy of Text.ResolvedMessage(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t HiddenLabeledContentStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = partial apply for closure #1 in View.accessibilityLabel<A>(_:label:);
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>, AccessibilityClearLabeledContentModifier>, ScrollEdgeEffectTagModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>, AccessibilityClearLabeledContentModifier>, ScrollEdgeEffectTagModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>, AccessibilityClearLabeledContentModifier>, ScrollEdgeEffectTagModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>, AccessibilityClearLabeledContentModifier>, ScrollEdgeEffectTagModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>, AccessibilityClearLabeledContentModifier>, ScrollEdgeEffectTagModifier>, type metadata accessor for ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>, AccessibilityClearLabeledContentModifier>);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>, AccessibilityClearLabeledContentModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>, AccessibilityClearLabeledContentModifier>, lazy protocol witness table accessor for type ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>, AccessibilityClearLabeledContentModifier>, ScrollEdgeEffectTagModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>, AccessibilityClearLabeledContentModifier>, ScrollEdgeEffectTagModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>)
  {
    type metadata accessor for AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>);
    }
  }
}

void type metadata accessor for AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>()
{
  if (!lazy cache variable for type metadata for AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>)
  {
    v0 = type metadata accessor for AccessibilityProxyTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t InspectorSplitView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v32 = *(a1 + 24);
  v36 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _InspectorSplitViewRoot();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for _VariadicView.Tree();
  v34 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v31 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v33 = &v30 - v16;
  v17 = v2[1];
  v43[0] = *v2;
  v43[1] = v17;
  v19 = *v2;
  v18 = v2[1];
  v44[0] = v2[2];
  *(v44 + 9) = *(v2 + 41);
  v40 = v19;
  v41 = v18;
  v42[0] = v2[2];
  *(v42 + 9) = *(v2 + 41);
  v20 = *(v2 + *(a1 + 60));
  v21 = *(v2 + *(a1 + 64));
  (*(v7 + 16))(v9, v2 + *(a1 + 52), v6);
  v22 = v42[0];
  *(v12 + 1) = v41;
  *(v12 + 2) = v22;
  *(v12 + 41) = *(v42 + 9);
  *v12 = v40;
  v12[57] = v20;
  v12[58] = v21;
  (*(v7 + 32))(&v12[*(v10 + 44)], v9, v6);
  (*(v36 + 16))(v35, v2 + *(a1 + 56), v32);
  outlined init with copy of InspectorState(v43, &v40);
  v23 = v31;
  _VariadicView.Tree.init(root:content:)();
  WitnessTable = swift_getWitnessTable();
  v25 = *(a1 + 40);
  v38 = WitnessTable;
  v39 = v25;
  v26 = swift_getWitnessTable();
  v27 = v33;
  static ViewBuilder.buildExpression<A>(_:)(v23, v13, v26);
  v28 = *(v34 + 8);
  v28(v23, v13);
  static ViewBuilder.buildExpression<A>(_:)(v27, v13, v26);
  return (v28)(v27, v13);
}

__n128 InspectorSplitView.init(inspectorState:mainContent:inspectorContent:horizontalSizeClass:inspectorHasToolbarItems:presentationOptions:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v16 = *a4;
  v17 = a1[1];
  *a9 = *a1;
  a9[1] = v17;
  a9[2] = a1[2];
  *(a9 + 41) = *(a1 + 41);
  v18 = type metadata accessor for InspectorSplitView();
  (*(*(a7 - 8) + 32))(a9 + v18[13], a2, a7);
  (*(*(a8 - 8) + 32))(a9 + v18[14], a3, a8);
  *(a9 + v18[15]) = v16;
  *(a9 + v18[16]) = a5;
  v19 = a9 + v18[17];
  v20 = *(a6 + 112);
  *(v19 + 6) = *(a6 + 96);
  *(v19 + 7) = v20;
  *(v19 + 122) = *(a6 + 122);
  v21 = *(a6 + 48);
  *(v19 + 2) = *(a6 + 32);
  *(v19 + 3) = v21;
  v22 = *(a6 + 80);
  *(v19 + 4) = *(a6 + 64);
  *(v19 + 5) = v22;
  result = *(a6 + 16);
  *v19 = *a6;
  *(v19 + 1) = result;
  return result;
}

uint64_t type metadata completion function for InspectorSplitView()
{
  result = swift_checkMetadataState();
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

unint64_t initializeBufferWithCopyOfBuffer for InspectorSplitView(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(v4 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v5 - 8);
  v10 = *(v9 + 80);
  v11 = v8 + v10;
  if ((v10 | v7) > 7 || ((*(v9 + 80) | *(v6 + 80)) & 0x100000) != 0 || ((*(*(v5 - 8) + 64) + ((v8 + v10 + ((v7 + 57) & ~v7)) & ~v10) + 9) & 0xFFFFFFFFFFFFFFF8) + 138 > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = v14 + (((v10 | v7) & 0xF8 ^ 0x1F8) & ((v10 | v7) + 16));

    return a1;
  }

  v36 = v4;
  v37 = ~v10;
  v38 = v5;
  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = *(a2 + 17);
  v18 = *(a2 + 16);
  v39 = *(*(v5 - 8) + 64);
  outlined copy of StateOrBinding<Bool>(*a2, v16, v18, v17);
  *a1 = v15;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18;
  *(a1 + 17) = v17;
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v20 = (a2 + v7 + 57) & ~v7;
  (*(v6 + 16))((a1 + v7 + 57) & ~v7, v20, v36);
  v21 = (((a1 + v7 + 57) & ~v7) + v11) & v37;
  v22 = (v20 + v11) & v37;
  (*(v9 + 16))(v21, v22, v38);
  v23 = (v21 + v39);
  *v23 = *(v22 + v39);
  v23[1] = *(v22 + v39 + 1);
  v24 = (v21 + v39 + 9) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v22 + v39 + 9) & 0xFFFFFFFFFFFFFFF8;
  *v24 = *v25;
  v26 = *(v25 + 16);

  if (v26)
  {
    *(v24 + 8) = *(v25 + 8);
    *(v24 + 16) = *(v25 + 16);
    *(v24 + 24) = *(v25 + 24);
  }

  else
  {
    v27 = *(v25 + 24);
    *(v24 + 8) = *(v25 + 8);
    *(v24 + 24) = v27;
  }

  *(v24 + 40) = *(v25 + 40);
  *(v24 + 41) = *(v25 + 41);
  v28 = *(v25 + 48);
  if (v28 < 2)
  {
    goto LABEL_17;
  }

  if (v28 == 2)
  {
    v28 = 2;
LABEL_17:
    *(v24 + 48) = v28;
    goto LABEL_18;
  }

  *(v24 + 48) = v28;
  v29 = v28;
LABEL_18:
  *(v24 + 56) = *(v25 + 56);
  *(v24 + 57) = *(v25 + 57);
  *(v24 + 58) = *(v25 + 58);
  v30 = *(v25 + 64);
  *(v24 + 72) = *(v25 + 72);
  *(v24 + 64) = v30;
  v31 = *(v25 + 80);
  *(v24 + 88) = *(v25 + 88);
  *(v24 + 80) = v31;
  v32 = *(v25 + 120);
  if (v32)
  {
    *(v24 + 120) = v32;
    *(v24 + 128) = *(v25 + 128);
    (**(v32 - 8))(v24 + 96, v25 + 96);
  }

  else
  {
    v33 = *(v25 + 96);
    v34 = *(v25 + 112);
    *(v24 + 128) = *(v25 + 128);
    *(v24 + 96) = v33;
    *(v24 + 112) = v34;
  }

  *(v24 + 136) = *(v25 + 136);
  *(v24 + 137) = *(v25 + 137);
  return a1;
}

void destroy for InspectorSplitView(uint64_t a1, uint64_t a2)
{
  outlined consume of StateOrBinding<Bool>(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 17));
  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (a1 + *(v4 + 80) + 57) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = *(v5 + 56);
  v8 = *(*(a2 + 24) - 8);
  v9 = v8 + 8;
  v10 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v8 + 8))(v10);
  v11 = ((*(v9 + 56) + v10 + 9) & 0xFFFFFFFFFFFFFFF8);

  if (v11[2])
  {
  }

  v12 = v11[6];
  if (v12 >= 3)
  {
  }

  if (v11[15])
  {

    __swift_destroy_boxed_opaque_existential_1((v11 + 12));
  }
}

uint64_t initializeWithCopy for InspectorSplitView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 17);
  v9 = *(a2 + 16);
  outlined copy of StateOrBinding<Bool>(*a2, v7, v9, v8);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 17) = v8;
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 16;
  v12 = *(v10 + 80);
  v13 = (v12 + 57 + a1) & ~v12;
  v14 = (v12 + 57 + a2) & ~v12;
  (*(v10 + 16))(v13, v14);
  v15 = *(v11 + 48);
  v16 = *(*(a3 + 24) - 8);
  v17 = v16 + 16;
  v18 = *(v16 + 80);
  v19 = v15 + v18;
  v20 = (v19 + v13) & ~v18;
  v21 = (v19 + v14) & ~v18;
  (*(v16 + 16))(v20, v21);
  v22 = *(v17 + 48);
  v23 = (v22 + v20);
  v24 = (v22 + v21);
  *v23 = *v24;
  v23[1] = v24[1];
  v25 = (v23 + 9) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v24 + 9) & 0xFFFFFFFFFFFFFFF8;
  *v25 = *v26;
  v27 = *(v26 + 16);

  if (v27)
  {
    *(v25 + 8) = *(v26 + 8);
    *(v25 + 16) = *(v26 + 16);
    *(v25 + 24) = *(v26 + 24);
  }

  else
  {
    v28 = *(v26 + 24);
    *(v25 + 8) = *(v26 + 8);
    *(v25 + 24) = v28;
  }

  *(v25 + 40) = *(v26 + 40);
  *(v25 + 41) = *(v26 + 41);
  v29 = *(v26 + 48);
  if (v29 >= 2)
  {
    if (v29 != 2)
    {
      *(v25 + 48) = v29;
      v30 = v29;
      goto LABEL_9;
    }

    v29 = 2;
  }

  *(v25 + 48) = v29;
LABEL_9:
  *(v25 + 56) = *(v26 + 56);
  *(v25 + 57) = *(v26 + 57);
  *(v25 + 58) = *(v26 + 58);
  v31 = *(v26 + 64);
  *(v25 + 72) = *(v26 + 72);
  *(v25 + 64) = v31;
  v32 = *(v26 + 80);
  *(v25 + 88) = *(v26 + 88);
  *(v25 + 80) = v32;
  v33 = *(v26 + 120);
  if (v33)
  {
    *(v25 + 120) = v33;
    *(v25 + 128) = *(v26 + 128);
    (**(v33 - 8))(v25 + 96, v26 + 96);
  }

  else
  {
    v34 = *(v26 + 96);
    v35 = *(v26 + 112);
    *(v25 + 128) = *(v26 + 128);
    *(v25 + 96) = v34;
    *(v25 + 112) = v35;
  }

  *(v25 + 136) = *(v26 + 136);
  *(v25 + 137) = *(v26 + 137);
  return a1;
}

uint64_t assignWithCopy for InspectorSplitView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 17);
  v9 = *(a2 + 16);
  outlined copy of StateOrBinding<Bool>(*a2, v7, v9, v8);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 17);
  *a1 = v6;
  *(a1 + 8) = v7;
  v13 = *(a1 + 16);
  *(a1 + 16) = v9;
  *(a1 + 17) = v8;
  outlined consume of StateOrBinding<Bool>(v10, v11, v13, v12);
  *(a1 + 18) = *(a2 + 18);
  v14 = *(a2 + 24);
  v15 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v15;
  *(a1 + 24) = v14;
  v16 = *(*(a3 + 16) - 8);
  v17 = v16 + 24;
  v18 = *(v16 + 80);
  v19 = (v18 + 57 + a1) & ~v18;
  v20 = (v18 + 57 + a2) & ~v18;
  (*(v16 + 24))(v19, v20);
  v21 = *(v17 + 40);
  v22 = *(*(a3 + 24) - 8);
  v23 = v22 + 24;
  v24 = *(v22 + 80);
  v25 = v21 + v24;
  v26 = (v25 + v19) & ~v24;
  v27 = (v25 + v20) & ~v24;
  (*(v22 + 24))(v26, v27);
  v28 = *(v23 + 40);
  v29 = (v28 + v26);
  v30 = (v28 + v27);
  *v29 = *v30;
  v29[1] = v30[1];
  v31 = (v29 + 9) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v30 + 9) & 0xFFFFFFFFFFFFFFF8;
  *v31 = *v32;

  v33 = *(v32 + 16);
  if (*(v31 + 16))
  {
    if (v33)
    {
      *(v31 + 8) = *(v32 + 8);

      *(v31 + 16) = *(v32 + 16);

      *(v31 + 24) = *(v32 + 24);
    }

    else
    {
      outlined destroy of Binding<PresentationDetent>(v31 + 8);
      v34 = *(v32 + 24);
      *(v31 + 8) = *(v32 + 8);
      *(v31 + 24) = v34;
    }
  }

  else if (v33)
  {
    *(v31 + 8) = *(v32 + 8);
    *(v31 + 16) = *(v32 + 16);
    *(v31 + 24) = *(v32 + 24);
  }

  else
  {
    v35 = *(v32 + 8);
    *(v31 + 24) = *(v32 + 24);
    *(v31 + 8) = v35;
  }

  v36 = (v31 + 48);
  v37 = *(v31 + 48);
  *(v31 + 40) = *(v32 + 40);
  *(v31 + 41) = *(v32 + 41);
  v38 = *(v32 + 48);
  if (v37 == 2)
  {
    if (v38 < 2)
    {
LABEL_15:
      *v36 = v38;
      goto LABEL_16;
    }

    if (v38 == 2)
    {
      v38 = 2;
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  if (v38 == 2)
  {
    outlined destroy of PresentationDimmingBehavior(v31 + 48);
LABEL_14:
    v38 = *(v32 + 48);
    goto LABEL_15;
  }

  if (v37 < 2)
  {
    if (v38 < 2)
    {
      goto LABEL_15;
    }

LABEL_23:
    *v36 = v38;
    v43 = v38;
    goto LABEL_16;
  }

  if (v38 < 2)
  {
    outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(v31 + 48, type metadata accessor for UISheetPresentationControllerDetentIdentifier);
    goto LABEL_14;
  }

  *v36 = v38;
  v47 = v38;

LABEL_16:
  *(v31 + 56) = *(v32 + 56);
  *(v31 + 57) = *(v32 + 57);
  *(v31 + 58) = *(v32 + 58);
  v39 = *(v32 + 64);
  *(v31 + 72) = *(v32 + 72);
  *(v31 + 64) = v39;
  v40 = *(v32 + 80);
  *(v31 + 88) = *(v32 + 88);
  *(v31 + 80) = v40;
  v41 = *(v32 + 120);
  if (!*(v31 + 120))
  {
    if (v41)
    {
      *(v31 + 120) = v41;
      *(v31 + 128) = *(v32 + 128);
      (**(v41 - 8))(v31 + 96, v32 + 96);
      goto LABEL_26;
    }

LABEL_25:
    v44 = *(v32 + 96);
    v45 = *(v32 + 112);
    *(v31 + 128) = *(v32 + 128);
    *(v31 + 96) = v44;
    *(v31 + 112) = v45;
    goto LABEL_26;
  }

  v42 = (v31 + 96);
  if (!v41)
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
    goto LABEL_25;
  }

  __swift_assign_boxed_opaque_existential_1(v42, (v32 + 96));
LABEL_26:
  *(v31 + 136) = *(v32 + 136);
  *(v31 + 137) = *(v32 + 137);
  return a1;
}