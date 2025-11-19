uint64_t key path setter for UIKitMenuButton.action : <A, B>UIKitMenuButton<A, B>(uint64_t *a1, uint64_t *a2)
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

  v7 = *a2;
  outlined copy of AppIntentExecutor?(v3);
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance UIKitMenuButton<A, B>.Child@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UIKitButton();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void protocol witness for Rule.value.getter in conformance BridgedPopUpButtonProvider(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  *(a1 + 8) = 0;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance BridgedPopUpButtonPreferenceKey(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  v4 = outlined init with take of WeakBox<UIButton>?(a1, &v6, type metadata accessor for WeakBox<UIButton>?);
  if (v7)
  {
    a2(&v8, v4);
    if (v7 != 1)
    {
      outlined destroy of WeakBox<UIButton>?(&v6, type metadata accessor for WeakBox<UIButton>?);
    }
  }

  else
  {
    outlined init with take of WeakBox<UIButton>?(&v6, &v8, type metadata accessor for WeakBox<UIButton>);
    v9 = 0;
  }

  return outlined init with take of WeakBox<UIButton>?(&v8, a1, type metadata accessor for WeakBox<UIButton>?);
}

uint64_t assignWithTake for PlatformItemListMenuStyle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Environment<Bool>.Content(v5, v6);
  v7 = *(a2 + 32);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;
  outlined consume of Environment<Color?>.Content(v8, v9);
  return a1;
}

uint64_t PlatformItemListMenuStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  Namespace.wrappedValue.getter();
  _print_unlocked<A, B>(_:_:)();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  v7 = specialized Environment.wrappedValue.getter(*(v2 + 24), *(v2 + 32));
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  LOBYTE(v7) = specialized Environment.wrappedValue.getter(*(v2 + 8), *(v2 + 16));
  v9 = swift_allocObject();
  *(v9 + 16) = 7;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0xC000000000000000;
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = 0u;
  *(v9 + 120) = v5;
  *(v9 + 128) = v4;
  *(v9 + 136) = v7;
  *(v9 + 137) = 2;
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  outlined copy of AppIntentExecutor?(v5);
  result = outlined copy of AppIntentExecutor?(v5);
  *a2 = partial apply for closure #1 in View.platformItemIdentifier(_:);
  *(a2 + 8) = v6;
  *(a2 + 16) = partial apply for closure #1 in View.platformItemTint(_:);
  *(a2 + 24) = v8;
  *(a2 + 32) = partial apply for closure #2 in View.platformItemChildren<A>(systemItem:primaryAction:menuIndicatorVisibility:controlSize:children:);
  *(a2 + 40) = v9;
  *(a2 + 48) = v5;
  *(a2 + 56) = v4;
  *(a2 + 64) = 1;
  *(a2 + 72) = KeyPath;
  *(a2 + 80) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = v10;
  *(a2 + 112) = 0;
  *(a2 + 113) = 0;
  *(a2 + 120) = v11;
  *(a2 + 128) = 0;
  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>();
    type metadata accessor for PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>)
  {
    type metadata accessor for ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>();
    type metadata accessor for LabelGroup<MenuStyleConfiguration.Label>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>, &type metadata for LayoutPlatformItemListFlags, &protocol witness table for LayoutPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>)
  {
    type metadata accessor for _UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>();
    type metadata accessor for LabelGroup<MenuStyleConfiguration.Label>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PlatformItemList.Key>, &type metadata for PlatformItemList.Key, &protocol witness table for PlatformItemList.Key, MEMORY[0x1E6980910]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>);
    }
  }
}

void type metadata accessor for _UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>()
{
  if (!lazy cache variable for type metadata for _UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>)
  {
    type metadata accessor for LabelGroup<MenuStyleConfiguration.Label>(255, &lazy cache variable for type metadata for LabelGroup<MenuStyleConfiguration.Label>, &type metadata for MenuStyleConfiguration.Label, &protocol witness table for MenuStyleConfiguration.Label, type metadata accessor for LabelGroup);
    lazy protocol witness table accessor for type LabelGroup<MenuStyleConfiguration.Label> and conformance LabelGroup<A>();
    v0 = type metadata accessor for _UnaryViewAdaptor();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LabelGroup<MenuStyleConfiguration.Label> and conformance LabelGroup<A>()
{
  result = lazy protocol witness table cache variable for type LabelGroup<MenuStyleConfiguration.Label> and conformance LabelGroup<A>;
  if (!lazy protocol witness table cache variable for type LabelGroup<MenuStyleConfiguration.Label> and conformance LabelGroup<A>)
  {
    type metadata accessor for LabelGroup<MenuStyleConfiguration.Label>(255, &lazy cache variable for type metadata for LabelGroup<MenuStyleConfiguration.Label>, &type metadata for MenuStyleConfiguration.Label, &protocol witness table for MenuStyleConfiguration.Label, type metadata accessor for LabelGroup);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LabelGroup<MenuStyleConfiguration.Label> and conformance LabelGroup<A>);
  }

  return result;
}

void type metadata accessor for PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>()
{
  if (!lazy cache variable for type metadata for PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>, lazy protocol witness table accessor for type ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _PreferenceTransformModifier<PlatformItemList.Key> and conformance _PreferenceTransformModifier<A>);
    v0 = type metadata accessor for PlatformItemListGeneratingViewModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>)
  {
    type metadata accessor for LabelGroup<MenuStyleConfiguration.Label>(255, &lazy cache variable for type metadata for ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, &type metadata for MenuStyleConfiguration.Content, &type metadata for PlatformItemListContentModifier, MEMORY[0x1E697E830]);
    type metadata accessor for LabelGroup<MenuStyleConfiguration.Label>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PlatformItemList.Key>, &type metadata for PlatformItemList.Key, &protocol witness table for PlatformItemList.Key, MEMORY[0x1E6980910]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>);
    }
  }
}

void type metadata accessor for LabelGroup<MenuStyleConfiguration.Label>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for LabelGroup<MenuStyleConfiguration.Label>(255, &lazy cache variable for type metadata for ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, &type metadata for MenuStyleConfiguration.Content, &type metadata for PlatformItemListContentModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, lazy protocol witness table accessor for type _UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>> and conformance _UnaryViewAdaptor<A>, lazy protocol witness table accessor for type _PreferenceTransformModifier<PlatformItemList.Key> and conformance _PreferenceTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type _UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>> and conformance _UnaryViewAdaptor<A>()
{
  result = lazy protocol witness table cache variable for type _UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>> and conformance _UnaryViewAdaptor<A>;
  if (!lazy protocol witness table cache variable for type _UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>> and conformance _UnaryViewAdaptor<A>)
  {
    type metadata accessor for _UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>> and conformance _UnaryViewAdaptor<A>);
  }

  return result;
}

uint64_t UIKitNavigationBridge.activePresentation.didset(uint64_t a1)
{
  swift_beginAccess();
  outlined init with copy of BridgedPresentation?(v1 + 40, v16);
  outlined init with copy of BridgedPresentation?(a1, &v7);
  if (!v8)
  {
    outlined destroy of AnyAccessibilityValue?(v16, &lazy cache variable for type metadata for BridgedPresentation?);
    return outlined destroy of AnyAccessibilityValue?(&v7, &lazy cache variable for type metadata for BridgedPresentation?);
  }

  v14[4] = v11;
  v14[5] = v12;
  v15 = v13;
  v14[0] = v7;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v10;
  v3 = v7;
  outlined init with copy of BridgedPresentation?(v16, &v7);
  if (v8)
  {
    outlined init with copy of NavigationDestinationContent(&v7, v6);
    outlined destroy of BridgedPresentation(&v7);
    v4 = v6[0];
    outlined destroy of NavigationDestinationContent(v6);
    if (v3 == v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(&v7, &lazy cache variable for type metadata for BridgedPresentation?);
  }

  LOBYTE(v7) = 17;
  static Update.enqueueAction(reason:_:)();
LABEL_8:
  outlined destroy of AnyAccessibilityValue?(v16, &lazy cache variable for type metadata for BridgedPresentation?);
  return outlined destroy of BridgedPresentation(v14);
}

id UIKitNavigationBridge.containingNavController.getter()
{
  v1 = v0;
  if (!swift_unknownObjectWeakLoadStrong() || (v2 = *(v0 + 24), v3 = swift_getObjectType(), ViewGraphDelegate.hostingControllerOverrides.getter(v3, *(*(v2 + 16) + 8), v20), swift_unknownObjectRelease(), Strong = swift_unknownObjectWeakLoadStrong(), outlined destroy of HostingControllerOverrides(v20), !Strong))
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      v7 = ViewGraphDelegate.uiContainingViewController.getter(ObjectType, *(*(v5 + 16) + 8));
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }

    Strong = [v7 navigationController];

    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v1 + 24);
      v9 = swift_getObjectType();
      v10 = ViewGraphDelegate.uiContainingViewController.getter(v9, *(*(v8 + 16) + 8));
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0;
    }

    v11 = [v10 splitViewController];

    if (v11)
    {
      type metadata accessor for NotificationSendingSplitViewController();
      if (!swift_dynamicCastClass() && (type metadata accessor for NotifyingMulticolumnSplitViewController(), !swift_dynamicCastClass()) || !Strong || (v12 = [Strong parentViewController]) == 0)
      {

        return Strong;
      }

      v13 = v12;
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14 && (v15 = v14, (v16 = [v14 parentViewController]) != 0))
      {
        v17 = v16;
        type metadata accessor for UIViewController();
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {

          return v15;
        }
      }

      else
      {
      }
    }
  }

  return Strong;
}

uint64_t UIKitNavigationBridge.inferredPreferenceBridge.getter()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v3 = ViewGraphDelegate.uiContainingViewController.getter(ObjectType, *(*(v1 + 16) + 8));
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 splitViewController];

  if (v4)
  {
    type metadata accessor for NotificationSendingSplitViewController();
    v5 = swift_dynamicCastClass();
    if (v5 || (type metadata accessor for NotifyingMulticolumnSplitViewController(), (v5 = swift_dynamicCastClass()) != 0))
    {
      v6 = [v5 traitCollection];
      v7 = [v6 _environmentWrapper];
      if (v7)
      {
        v8 = v7;
        type metadata accessor for EnvironmentWrapper();
        if (swift_dynamicCastClass())
        {
          v9 = v8;
          dispatch thunk of ViewGraphHostEnvironmentWrapper.environment.getter();

LABEL_18:
          v10 = EnvironmentValues.preferenceBridge.getter();

LABEL_36:

          return v10;
        }
      }

      EnvironmentValues.init()();
      EnvironmentValues.configureForRoot()();
      if (one-time initialization token for configuredForPlatform != -1)
      {
        swift_once();
      }

      if (v18)
      {
        if (!static EnvironmentValues.configuredForPlatform || v18 != static EnvironmentValues.configuredForPlatform)
        {
          goto LABEL_17;
        }
      }

      else if (static EnvironmentValues.configuredForPlatform)
      {
        goto LABEL_17;
      }

      EnvironmentValues.plist.setter();
LABEL_17:
      EnvironmentValues._configureForPlatform(traitCollection:)(v6);
      goto LABEL_18;
    }
  }

  v11 = UIKitNavigationBridge.containingNavController.getter();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 traitCollection];

    v14 = [v13 _environmentWrapper];
    if (v14)
    {
      v15 = v14;
      type metadata accessor for EnvironmentWrapper();
      if (swift_dynamicCastClass())
      {
        v16 = v15;
        dispatch thunk of ViewGraphHostEnvironmentWrapper.environment.getter();

LABEL_35:
        v10 = EnvironmentValues.preferenceBridge.getter();
        goto LABEL_36;
      }
    }

    EnvironmentValues.init()();
    EnvironmentValues.configureForRoot()();
    if (one-time initialization token for configuredForPlatform != -1)
    {
      swift_once();
    }

    if (v18)
    {
      if (!static EnvironmentValues.configuredForPlatform || v18 != static EnvironmentValues.configuredForPlatform)
      {
        goto LABEL_34;
      }
    }

    else if (static EnvironmentValues.configuredForPlatform)
    {
      goto LABEL_34;
    }

    EnvironmentValues.plist.setter();
LABEL_34:
    EnvironmentValues._configureForPlatform(traitCollection:)(v13);
    goto LABEL_35;
  }

  return 0;
}

void UIKitNavigationBridge.update(environment:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  v1[21] = v3;
  v1[22] = v2;

  EnvironmentValues.preferenceBridge.setter();
  swift_endAccess();
  swift_beginAccess();
  if (v1[22])
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsRepresentingSheetNavigationView>, &unk_1EFFD67B0, &protocol witness table for IsRepresentingSheetNavigationView, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IsRepresentingSheetNavigationView> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsRepresentingSheetNavigationView>, &unk_1EFFD67B0, &protocol witness table for IsRepresentingSheetNavigationView, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IsRepresentingSheetNavigationView> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  swift_endAccess();
  if (v10)
  {
    v11 = 0;
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsRepresentingSheetNavigationView>, &unk_1EFFD67B0, &protocol witness table for IsRepresentingSheetNavigationView, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IsRepresentingSheetNavigationView> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (v2)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
LABEL_9:

      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InternalNavigationEnabledKey>, &type metadata for InternalNavigationEnabledKey, &protocol witness table for InternalNavigationEnabledKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.Tracker.value<A>(_:for:)();

      v4 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    UIKitNavigationBridge.isBeingPresented.getter();
    v11 = 0;
    UIKitNavigationBridge.presentationModeLocation.getter();
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationModeKey>, &type metadata for PresentationModeKey, &protocol witness table for PresentationModeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (v2)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

      goto LABEL_9;
    }
  }

  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InternalNavigationEnabledKey>, &type metadata for InternalNavigationEnabledKey, &protocol witness table for InternalNavigationEnabledKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.getter();
  v4 = 1;
LABEL_13:
  v5 = (*(*v1 + 296))(1);
  if (v5)
  {

    v11 = 1;
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InternalNavigationEnabledKey>, &type metadata for InternalNavigationEnabledKey, &protocol witness table for InternalNavigationEnabledKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if ((v4 & 1) == 0)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  static Semantics.v5.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>();
    if (v4)
    {
      PropertyList.subscript.getter();
      if (v11)
      {
        return;
      }
    }

    else
    {

      PropertyList.Tracker.value<A>(_:for:)();

      if (v11)
      {
        return;
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = v1[3];
      ObjectType = swift_getObjectType();
      v8 = ViewGraphDelegate.uiContainingViewController.getter(ObjectType, *(*(v6 + 16) + 8));
      swift_unknownObjectRelease();
      if (v8)
      {
        v9 = [v8 splitViewController];

        if (v9)
        {
          [v9 isCollapsed];

          PropertyList.subscript.setter();
          if ((v4 & 1) == 0)
          {
            PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
          }
        }
      }
    }
  }
}

uint64_t popCurrentView #1 (transaction:) in UIKitNavigationBridge.updateNavigationDestinationsIfNeeded(preference:)(uint64_t a1, uint64_t a2)
{
  v3 = Transaction.disablesAnimations.getter();
  (*(*a2 + 320))((v3 & 1) == 0);
  v4 = [objc_opt_self() defaultCenter];
  v5 = MEMORY[0x18D00C850](0xD000000000000037, 0x800000018CD4F6B0);
  [v4 removeObserver:a2 name:v5 object:0];

  v6 = MEMORY[0x18D00C850](0xD000000000000038, 0x800000018CD4F6F0);
  [v4 removeObserver:a2 name:v6 object:0];

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  swift_beginAccess();
  outlined init with copy of BridgedPresentation?(a2 + 40, v8);
  swift_beginAccess();
  outlined assign with copy of BridgedPresentation?(v9, a2 + 40);
  swift_endAccess();
  UIKitNavigationBridge.activePresentation.didset(v8);

  outlined destroy of AnyAccessibilityValue?(v8, &lazy cache variable for type metadata for BridgedPresentation?);
  return outlined destroy of AnyAccessibilityValue?(v9, &lazy cache variable for type metadata for BridgedPresentation?);
}

unint64_t UIKitNavigationBridge.updatePresentedContent(_:animated:)(uint64_t a1, char a2)
{
  v3 = v2;
  (*(*v2 + 288))(&v34, *(a1 + 8));
  if (v35 == 2)
  {
    return outlined destroy of AnyAccessibilityValue?(&v34, &lazy cache variable for type metadata for PushTarget?);
  }

  outlined init with take of PushTarget(&v34, v36);
  swift_beginAccess();
  if (v2[7])
  {
    v7 = v2[17];
    if ((~v7 & 0xF000000000000007) != 0)
    {
      v8 = v2[16];
      v9 = *(*v2 + 304);
      outlined copy of BridgedPresentation.ContentHost(v8, v2[17]);
      v10 = v9(v8, v7, a1, v36, a2 & 1);
      outlined consume of BridgedPresentation.ContentHost?(v8, v7);
      if (v10)
      {
        return outlined destroy of PushTarget(v36);
      }
    }
  }

  (*(*v3 + 312))(a1, v36, a2 & 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return outlined destroy of PushTarget(v36);
  }

  v12 = Strong;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
  if ((static SemanticFeature.isEnabled.getter() & 1) == 0 || v36[8] != 1)
  {
    goto LABEL_18;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = v3[3];
    ObjectType = swift_getObjectType();
    v15 = ViewGraphDelegate.uiContainingViewController.getter(ObjectType, *(*(v13 + 16) + 8));
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0;
  }

  v16 = [v15 splitViewController];

  if (!v16)
  {
    goto LABEL_18;
  }

  type metadata accessor for NotificationSendingSplitViewController();
  v17 = swift_dynamicCastClass();
  if (!v17 && (type metadata accessor for NotifyingMulticolumnSplitViewController(), (v17 = swift_dynamicCastClass()) == 0) || (v18 = v17, ![v17 isCollapsed]) || (v19 = objc_msgSend(v18, sel_viewControllers), type metadata accessor for UIViewController(), v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v19, v33 = v12, MEMORY[0x1EEE9AC00](v21), v32[2] = &v33, LOBYTE(v19) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v32, v20), , (v19 & 1) != 0))
  {

LABEL_18:
    v22 = v12;
LABEL_19:
    v23 = v22;
    v24 = [objc_opt_self() defaultCenter];
    v25 = MEMORY[0x18D00C850](0xD000000000000037, 0x800000018CD4F6B0);
    [v24 addObserver:v3 selector:sel_navigationChanged_ name:v25 object:v23];

    return outlined destroy of PushTarget(v36);
  }

  v26 = [v18 viewControllers];
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v27 >> 62))
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_23;
    }

LABEL_31:

    goto LABEL_32;
  }

  v28 = __CocoaSet.count.getter();
  if (!v28)
  {
    goto LABEL_31;
  }

LABEL_23:
  v29 = __OFSUB__(v28, 1);
  result = v28 - 1;
  if (v29)
  {
    __break(1u);
    goto LABEL_34;
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
LABEL_34:
    v30 = MEMORY[0x18D00E9C0](result, v27);
LABEL_28:
    v31 = v30;

    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    v16 = v31;
    if (v22)
    {
      goto LABEL_19;
    }

LABEL_32:

    v22 = 0;
    goto LABEL_19;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v27 + 8 * result + 32);
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

void UIKitNavigationBridge.pushTarget(isDetail:)(uint64_t a1@<X8>)
{
  v3 = (*(*v1 + 296))();
  if (v3)
  {
    v4 = v3;
    swift_unknownObjectWeakInit();

    *(a1 + 8) = 0;
    *(a1 + 24) = 1;
  }

  else
  {
    *a1 = xmmword_18CD874C0;
    *(a1 + 24) = 0;
  }

  *(a1 + 16) = 0;
}

void __swiftcall UIKitNavigationBridge.pushTargetComponents(isDetail:)(Swift::tuple_navController_UINavigationController_optional_replaceRoot_Bool_column_UISplitViewControllerColumn_optional *__return_ptr retstr, Swift::Bool isDetail)
{
  if (!swift_unknownObjectWeakLoadStrong() || (v3 = *(v2 + 24), ObjectType = swift_getObjectType(), ViewGraphDelegate.hostingControllerOverrides.getter(ObjectType, *(*(v3 + 16) + 8), v6), swift_unknownObjectRelease(), Strong = swift_unknownObjectWeakLoadStrong(), outlined destroy of HostingControllerOverrides(v6), !Strong))
  {
    UIKitNavigationBridge.containingNavController.getter();
  }
}

uint64_t UIKitNavigationBridge.__deallocating_deinit()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + 16);

  outlined destroy of AnyAccessibilityValue?(v0 + 40, &lazy cache variable for type metadata for BridgedPresentation?);

  outlined consume of EnvironmentValues?(*(v0 + 184));
  MEMORY[0x18D011290](v0 + 200);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Location.get() in conformance UIKitNavigationBridgePresentationModeLocation@<X0>(_BYTE *a1@<X8>)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = UIKitNavigationBridge.isBeingPresented.getter();
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3 & 1;
  return result;
}

uint64_t protocol witness for Location.set(_:transaction:) in conformance UIKitNavigationBridgePresentationModeLocation(uint64_t result)
{
  if ((*result & 1) == 0)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(*result + 328))(1);
    }
  }

  return result;
}

uint64_t protocol witness for Location.update() in conformance UIKitNavigationBridgePresentationModeLocation(_BYTE *a1)
{
  if (swift_weakLoadStrong())
  {
    v2 = UIKitNavigationBridge.isBeingPresented.getter();
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2 & 1;
  return 1;
}

id outlined copy of BridgedPresentation.ContentHost(void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    v4 = a2 & 0x7FFFFFFFFFFFFFFFLL;
    v5 = a1;
    a1 = v4;
  }

  return a1;
}

void outlined consume of BridgedPresentation.ContentHost?(void *a1, uint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    outlined consume of BridgedPresentation.ContentHost(a1, a2);
  }
}

void outlined consume of BridgedPresentation.ContentHost(void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    v3 = a2 & 0x7FFFFFFFFFFFFFFFLL;

    a1 = v3;
  }
}

uint64_t outlined assign with copy of BridgedPresentation?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for BridgedPresentation?);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<IsRepresentingSheetNavigationView> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsRepresentingSheetNavigationView> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsRepresentingSheetNavigationView> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsRepresentingSheetNavigationView>, &unk_1EFFD67B0, &protocol witness table for IsRepresentingSheetNavigationView, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsRepresentingSheetNavigationView> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t View.editMenu<A>(menu:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a7;
  v20 = a6;
  v21 = a1;
  v22 = a5;
  v23 = a2;
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  type metadata accessor for ModifiedContent();
  v31 = a6;
  v32 = _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>);
  swift_getWitnessTable();
  v10 = type metadata accessor for ZStack();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  swift_getWitnessTable();
  v14 = type metadata accessor for EditMenuModifier();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - v16;
  v25 = a3;
  v26 = a4;
  v18 = v22;
  v27 = v22;
  v28 = v20;
  v29 = v21;
  v30 = v23;
  static Alignment.center.getter();
  ZStack.init(alignment:content:)();
  *(v17 + 5) = 0;
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 8) = 0;
  (*(v11 + 32))(&v17[*(v14 + 40)], v13, v10);
  MEMORY[0x18D00A570](v17, a3, v14, v18);
  return (*(v15 + 8))(v17, v14);
}

uint64_t View.editMenu<A>(isPresented:menu:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v35 = a8;
  v32 = a7;
  v36 = a5;
  v37 = a2;
  v34 = a4;
  v39 = a3;
  v33 = a1;
  v40 = a9;
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v30 = type metadata accessor for ModifiedContent();
  v49 = a10;
  v50 = _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>);
  v38 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for ZStack();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v28 = swift_getWitnessTable();
  v14 = type metadata accessor for EditMenuModifier();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  v27 = a6;
  v18 = type metadata accessor for ModifiedContent();
  v31 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  v41 = a6;
  v42 = v32;
  v21 = v35;
  v43 = v35;
  v44 = a10;
  v45 = v34;
  v46 = v36;
  v22 = v33;

  v23 = v37;

  static Alignment.center.getter();
  ZStack.init(alignment:content:)();
  EditMenuModifier.init(isPresented:menuContent:)(v22, v23, v39, v13, v11, v17);
  MEMORY[0x18D00A570](v17, v27, v14, v21);
  (*(v15 + 8))(v17, v14);
  v24 = swift_getWitnessTable();
  v47 = v21;
  v48 = v24;
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger();
  View.input<A>(_:)();
  return (*(v31 + 8))(v20, v18);
}

uint64_t closure #1 in View.editMenu<A>(menu:)@<X0>(void (*a1)(double)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v22[1] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - v16;
  a1(v15);
  View.styleContext<A>(_:)();
  (*(v7 + 8))(v9, a2);
  v18 = _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>);
  v22[2] = a3;
  v22[3] = v18;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v13, v10, WitnessTable);
  v20 = *(v11 + 8);
  v20(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)(v17, v10, WitnessTable);
  return (v20)(v17, v10);
}

uint64_t EditMenuModifier.init(isPresented:menuContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 20) = 0;
  outlined consume of StateOrBinding<Bool>(0, 0, 0, 0);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 17) = 1;
  v12 = type metadata accessor for EditMenuModifier();
  v13 = *(*(a5 - 8) + 32);
  v14 = a6 + *(v12 + 40);

  return v13(v14, a4, a5);
}

unint64_t lazy protocol witness table accessor for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger()
{
  result = lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger;
  if (!lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger;
  if (!lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger;
  if (!lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger;
  if (!lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger;
  if (!lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger);
  }

  return result;
}

uint64_t View.editMenu<A>(menu:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  type metadata accessor for ModifiedContent();
  v15[2] = a6;
  v15[3] = _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>);
  swift_getWitnessTable();
  v15[0] = partial apply for closure #1 in View.editMenu<A>(menu:);
  v15[1] = v12;
  v13 = type metadata accessor for SelectionEditMenuModifier();

  MEMORY[0x18D00A570](v15, a3, v13, a5);
}

uint64_t closure #1 in View.editMenu<A>(menu:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10(v7);
  View.styleContext<A>(_:)();
  return (*(v6 + 8))(v9, a5);
}

uint64_t type metadata accessor for EditMenuResponder()
{
  result = type metadata singleton initialization cache for EditMenuResponder;
  if (!type metadata singleton initialization cache for EditMenuResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static SelectionEditMenuModifier._makeInputs(modifier:inputs:)(int *a1, _OWORD *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = a2[1];
  v33[0] = *a2;
  v33[1] = v2;
  v4 = *a2;
  v3 = a2[1];
  v33[2] = a2[2];
  v5 = *a1;
  v19 = v4;
  v20 = v3;
  v21 = a2[2];
  outlined init with copy of _GraphInputs(v33, v18);
  _ViewInputs.init(withoutGeometry:)();
  _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA03AllfghM0V_Ttg5(0);
  v17 = v5;
  type metadata accessor for SelectionEditMenuModifier();
  type metadata accessor for _GraphValue();
  v6 = _GraphValue.value.getter();
  v34[2] = v29;
  v34[3] = v30;
  v34[4] = v31;
  v35 = v32;
  v34[0] = v27;
  v34[1] = v28;
  v7 = AGSubgraphGetCurrent();
  if (!v7)
  {
    __break(1u);
  }

  *&v26[36] = v29;
  *&v26[52] = v30;
  *&v26[68] = v31;
  *&v26[4] = v27;
  *&v26[20] = v28;
  *&v18[44] = *&v26[32];
  *&v18[60] = *&v26[48];
  *&v18[76] = *&v26[64];
  *&v18[28] = *&v26[16];
  *&v26[84] = v32;
  *v18 = v7;
  *&v18[8] = v6;
  *&v18[92] = *&v26[80];
  *&v18[12] = *v26;
  MEMORY[0x1EEE9AC00](v7);
  v8 = type metadata accessor for SelectionEditMenuModifier.Child();
  v13[2] = v8;
  v13[3] = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(v34, &v19);
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v18, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_23, v13, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  v23 = *&v18[64];
  v24 = *&v18[80];
  v25 = *&v18[96];
  v19 = *v18;
  v20 = *&v18[16];
  v21 = *&v18[32];
  v22 = *&v18[48];
  (*(*(v8 - 8) + 8))(&v19, v8);
  v11 = v14;
  type metadata accessor for _GraphInputs.SelectionBasedStorageKey<TextSelection>();
  _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type _GraphInputs.SelectionBasedStorageKey<TextSelection> and conformance _GraphInputs.SelectionBasedStorageKey<A>, type metadata accessor for _GraphInputs.SelectionBasedStorageKey<TextSelection>);
  PropertyList.subscript.getter();
  v14 = *v18;
  v15 = v11;
  v16 = *&v18[8];
  PropertyList.subscript.setter();
  *&v18[32] = v29;
  *&v18[48] = v30;
  *&v18[64] = v31;
  *&v18[80] = v32;
  *v18 = v27;
  *&v18[16] = v28;
  return outlined destroy of _ViewInputs(v18);
}

uint64_t (*SelectionEditMenuModifier.Child.value.getter(uint64_t a1))(uint64_t a1)
{
  v3 = v1[5];
  v15[4] = v1[4];
  v15[5] = v3;
  v16 = *(v1 + 24);
  v4 = v1[1];
  v15[0] = *v1;
  v15[1] = v4;
  v5 = v1[3];
  v15[2] = v1[2];
  v15[3] = v5;
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[2];
  *(v6 + 80) = v1[3];
  *(v6 + 96) = v8;
  *(v6 + 112) = v9;
  v11 = *v1;
  v12 = v1[1];
  *(v6 + 16) = v7;
  *(v6 + 32) = v11;
  *(v6 + 128) = *(v1 + 24);
  *(v6 + 48) = v12;
  *(v6 + 64) = v10;
  (*(*(a1 - 8) + 16))(v14, v15, a1);
  return partial apply for closure #1 in SelectionEditMenuModifier.Child.value.getter;
}

uint64_t closure #1 in SelectionEditMenuModifier.Child.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!AGSubgraphIsValid())
  {
    return MEMORY[0x1E69E7CC0];
  }

  AGGraphClearUpdate();
  v6 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in closure #1 in SelectionEditMenuModifier.Child.value.getter(a2, a1, a3, &v12);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v7 = v12;
  v8 = v13;
  AGGraphClearUpdate();
  v12 = v7;
  v13 = v8;
  v9 = PreferencesOutputs.subscript.getter();

  if ((v9 & 0x100000000) != 0)
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v10 = *AGGraphGetValue();
  }

  AGGraphSetUpdate();
  return v10;
}

uint64_t closure #1 in closure #1 in SelectionEditMenuModifier.Child.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = a4;
  v42 = *MEMORY[0x1E69E9840];
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10[5];
  v34 = v10[4];
  v35 = v11;
  v36 = *(v10 + 24);
  v12 = v10[1];
  v30 = *v10;
  v31 = v12;
  v13 = v10[3];
  v32 = v10[2];
  v33 = v13;
  type metadata accessor for SelectionEditMenuModifier.Child();
  v14 = specialized SelectionEditMenuModifier.Child.modifier.getter();

  v14(a2);

  v23[2] = a3;
  v15 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v9, partial apply for closure #1 in Attribute.init(value:), v23, a3, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  (*(v7 + 8))(v9, a3);
  _GraphValue.init(_:)();
  v17 = *(a1 + 64);
  v18 = *(a1 + 32);
  v38 = *(a1 + 48);
  v39 = v17;
  v19 = *(a1 + 64);
  v40 = *(a1 + 80);
  v20 = *(a1 + 32);
  v37[0] = *(a1 + 16);
  v37[1] = v20;
  v26 = v38;
  v27 = v19;
  v28 = *(a1 + 80);
  v41 = *(a1 + 96);
  v29 = *(a1 + 96);
  v24 = v37[0];
  v25 = v18;
  outlined init with copy of _ViewInputs(v37, &v30);
  static View.makeDebuggableView(view:inputs:)();
  v32 = v26;
  v33 = v27;
  v34 = v28;
  LODWORD(v35) = v29;
  v30 = v24;
  v31 = v25;
  return outlined destroy of _ViewInputs(&v30);
}

uint64_t protocol witness for Rule.value.getter in conformance SelectionEditMenuModifier<A>.Child@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = SelectionEditMenuModifier.Child.value.getter(a1);
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed TextSelection) -> (@owned PlatformItemList);
  a2[1] = result;
  return result;
}

uint64_t EditMenuModifier.id.getter@<X0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 20);
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t EditMenuModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v59 = a2;
  swift_getWitnessTable();
  v4 = type metadata accessor for _ViewModifier_Content();
  v5 = *(a1 + 16);
  v6 = type metadata accessor for EditMenuModifierCore();
  v50 = v4;
  v7 = type metadata accessor for ModifiedContent();
  type metadata accessor for AddGestureModifier<_EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>, DefaultGestureCombiner>();
  v53 = type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for StaticIf();
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v54 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = v48 - v11;
  v12 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v6;
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v48 - v18;
  v58 = v7;
  v52 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v51 = v48 - v21;
  EditMenuModifier.id.getter(v72);
  v22 = v72[0];
  (*(v12 + 16))(v15, &v2[*(a1 + 40)], v5);
  v23 = v2;
  v24 = *v2;
  v25 = *(v23 + 1);
  v26 = v23[17];
  v48[1] = v23;
  if (v26)
  {
    v27 = v23[16];
  }

  else
  {
    v60 = v24 & 1;
    v61 = v25;
    type metadata accessor for EventFilter<()>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    v24 = v69;
    v25 = v70;
    v27 = v71;
  }

  *v19 = static Anchor.Source<A>.bounds.getter();
  *(v19 + 2) = v22;
  v28 = type metadata accessor for EditMenuModifierCore();
  (*(v12 + 32))(&v19[*(v28 + 40)], v15, v5);
  v29 = &v19[*(v28 + 44)];
  *v29 = v24;
  *(v29 + 1) = v25;
  v29[16] = v27 & 1;
  v30 = v50;
  WitnessTable = swift_getWitnessTable();
  v32 = v51;
  v33 = v30;
  v34 = v49;
  MEMORY[0x18D00A570](v19, v33, v49, WitnessTable);
  v35 = (*(v16 + 8))(v19, v34);
  MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](v36);
  v37 = lazy protocol witness table accessor for type DeferTriggerPredicate and conformance DeferTriggerPredicate();
  v67 = WitnessTable;
  v68 = &protocol witness table for EditMenuModifierCore<A>;
  v38 = v58;
  v39 = swift_getWitnessTable();
  v40 = _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type AddGestureModifier<_EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>, type metadata accessor for AddGestureModifier<_EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>, DefaultGestureCombiner>);
  v65 = v39;
  v66 = v40;
  v47 = swift_getWitnessTable();
  v41 = v54;
  StaticIf<>.init(_:then:else:)();
  v62 = v37;
  v63 = v39;
  v64 = v47;
  v42 = v57;
  v43 = swift_getWitnessTable();
  v44 = v55;
  static ViewBuilder.buildExpression<A>(_:)(v41, v42, v43);
  v45 = *(v56 + 8);
  v45(v41, v42);
  static ViewBuilder.buildExpression<A>(_:)(v44, v42, v43);
  v45(v44, v42);
  return (*(v52 + 8))(v32, v38);
}

uint64_t closure #1 in EditMenuModifier.body(content:)(uint64_t a1)
{
  type metadata accessor for EditMenuModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for EditMenuModifierCore();
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v8 - v4;
  v8[0] = swift_getWitnessTable();
  v8[1] = &protocol witness table for EditMenuModifierCore<A>;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(a1, v2, WitnessTable);
  static ViewBuilder.buildExpression<A>(_:)(v5, v2, WitnessTable);
  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #2 in EditMenuModifier.body(content:)()
{
  v0 = type metadata accessor for EditMenuModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for EditMenuModifierCore();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AddGestureModifier<_EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>, DefaultGestureCombiner>();
  v1 = type metadata accessor for ModifiedContent();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v13 - v6;
  EditMenuModifier.editMenuGesture.getter(v0);
  v13[4] = v16;
  v14 = v17;
  v15 = v18;
  type metadata accessor for _EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>();
  v13[2] = swift_getWitnessTable();
  v13[3] = &protocol witness table for EditMenuModifierCore<A>;
  WitnessTable = swift_getWitnessTable();
  _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type _EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>> and conformance _EndedGesture<A>, type metadata accessor for _EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>);
  View.gesture<A>(_:including:)();

  v9 = _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type AddGestureModifier<_EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>, type metadata accessor for AddGestureModifier<_EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>, DefaultGestureCombiner>);
  v13[0] = WitnessTable;
  v13[1] = v9;
  v10 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v4, v1, v10);
  v11 = *(v2 + 8);
  v11(v4, v1);
  static ViewBuilder.buildExpression<A>(_:)(v7, v1, v10);
  return (v11)(v7, v1);
}

uint64_t EditMenuModifier.editMenuGesture.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent();
  Gesture.eventFilter<A>(forType:_:)();
  v9 = v11;
  v10 = v12;
  (*(v3 + 16))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = *(a1 + 16);
  (*(v3 + 32))(v6 + v5, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #2 in EditMenuModifier.editMenuGesture.getter;
  *(v7 + 24) = v6;
  type metadata accessor for ModifierGesture<EventFilter<()>, TapGesture>();
  _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<()>, TapGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<()>, TapGesture>);
  Gesture.onEnded(_:)();
}

uint64_t closure #2 in EditMenuModifier.editMenuGesture.getter(uint64_t result)
{
  if ((*(result + 17) & 1) != 0 || *(result + 8))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

double static EditMenuModifierCore._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, double *a6@<X8>)
{
  v89 = *MEMORY[0x1E69E9840];
  v44 = *a1;
  v10 = a2[3];
  v85 = a2[2];
  v86 = v10;
  v87 = a2[4];
  v88 = *(a2 + 20);
  v11 = a2[1];
  v83 = *a2;
  v84 = v11;
  v52 = *(a2 + 14);
  v51 = *(a2 + 6);
  v12 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  *&v71 = v51;
  DWORD2(v71) = v52;
  v13 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (v12 & 1) != 0 || (v13)
  {
    lazy protocol witness table accessor for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction();
    PropertyList.subscript.getter();
    v40 = v71;
    UniqueID.init()();
    v15 = v71;
    v79 = v85;
    v80 = v86;
    v81 = v87;
    v82 = v88;
    v77 = v83;
    v78 = v84;
    v42 = v12;
    v43 = a6;
    v39 = v71;
    if (v12)
    {
      v16 = a5;
      v73 = v85;
      v74 = v86;
      v75 = v87;
      v17 = HIDWORD(v86);
      LODWORD(v76[0]) = v88;
      v71 = v83;
      v72 = v84;
      outlined init with copy of _ViewInputs(&v83, &v59);
      *&v71 = __PAIR64__(_ViewInputs.position.getter(), v17);
      *(&v71 + 1) = v15;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type UIViewSnapshotResponder.Transform and conformance UIViewSnapshotResponder.Transform();
      Attribute.init<A>(body:value:flags:update:)();
      _ViewInputs.transform.setter();
    }

    else
    {
      v16 = a5;
      outlined init with copy of _ViewInputs(&v83, &v71);
    }

    v65[2] = v79;
    v65[3] = v80;
    v65[4] = v81;
    v66 = v82;
    v65[0] = v77;
    v65[1] = v78;
    v73 = v79;
    v74 = v80;
    v75 = v81;
    LODWORD(v76[0]) = v82;
    v71 = v77;
    v72 = v78;
    v18 = outlined init with copy of _ViewInputs(v65, &v59);
    (a3)(&v49, v18, &v71);
    v67[2] = v73;
    v67[3] = v74;
    v67[4] = v75;
    v68 = v76[0];
    v67[0] = v71;
    v67[1] = v72;
    outlined destroy of _ViewInputs(v67);
    v69[2] = v79;
    v69[3] = v80;
    v69[4] = v81;
    v70 = v82;
    v69[0] = v77;
    v69[1] = v78;
    outlined destroy of _ViewInputs(v69);
    v19 = v44;
    LODWORD(v53) = v44;
    type metadata accessor for EditMenuModifierCore();
    v20 = type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v73 = v85;
    v74 = v86;
    v75 = v87;
    LODWORD(v76[0]) = v88;
    v71 = v83;
    v72 = v84;
    v22 = PlatformItemListGenerator<>.init(content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v71, 1, &v59);
    v41 = &v38;
    MEMORY[0x1EEE9AC00](v22);
    *&v71 = &type metadata for AllPlatformItemListFlags;
    *(&v71 + 1) = a4;
    *&v72 = &protocol witness table for AllPlatformItemListFlags;
    *(&v72 + 1) = v16;
    v23 = type metadata accessor for PlatformItemListGenerator();
    v37[2] = v23;
    v37[3] = swift_getWitnessTable();
    outlined init with copy of _ViewInputs(&v83, &v71);
    type metadata accessor for EventFilter<()>(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v59, closure #1 in Attribute.init<A>(_:)partial apply, v37, v23, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
    v74 = v62;
    v75 = v63;
    v76[0] = v64[0];
    *(v76 + 12) = *(v64 + 12);
    v71 = v59;
    v72 = v60;
    v73 = v61;
    (*(*(v23 - 8) + 8))(&v71, v23);
    LODWORD(v59) = v19;
    _GraphValue.value.getter();
    closure #2 in static EditMenuModifierCore._makeView(modifier:inputs:body:)(1);
    v26 = AGGraphCreateOffsetAttribute2();
    v27 = v49;
    if (v42)
    {
      v42 = v26;
      *&v59 = v49;
      DWORD2(v59) = LODWORD(v50);
      if ((PreferencesOutputs.subscript.getter() & 0x100000000) == 0)
      {
        v48 = v44;
        LODWORD(v41) = _GraphValue.value.getter();
        v61 = v85;
        v62 = v86;
        v63 = v87;
        LODWORD(v64[0]) = v88;
        v59 = v83;
        v60 = v84;
        v38 = v20;
        v47[0] = v49;
        *&v47[1] = v50;
        type metadata accessor for EditMenuResponder();
        v28 = swift_allocObject();
        *(v28 + 308) = 0;
        outlined init with copy of _ViewInputs(&v83, &v53);
        outlined init with copy of _ViewInputs(&v83, &v53);

        *(v28 + 308) = AGCreateWeakAttribute();
        *(v28 + 296) = 0;
        *(v28 + 304) = 0;
        *(v28 + 296) = AGCreateWeakAttribute();
        v55 = v85;
        v56 = v86;
        v57 = v87;
        v58 = v88;
        v53 = v83;
        v54 = v84;
        v45 = 0;
        v46 = v39;
        v29 = UIViewSnapshotResponder.init(inputs:space:displayList:)(&v53, &v46);
        EditMenuResponderFilter.init<A>(modifier:inputs:outputs:responder:)(&v59, v29, &v53);
        v59 = v53;
        v60 = v54;
        *&v61 = v55;
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type EditMenuResponderFilter and conformance EditMenuResponderFilter();
        Attribute.init<A>(body:value:flags:update:)();
        outlined destroy of ContextMenuResponderFilter(&v53);
        LOBYTE(v59) = 0;
        v30 = PreferencesOutputs.subscript.setter();
        if ((v40 & 1) == 0)
        {
          LODWORD(v47[0]) = v44;
          v31 = _GraphValue.value.getter();
          v61 = v85;
          v62 = v86;
          v63 = v87;
          LODWORD(v64[0]) = v88;
          v59 = v83;
          v60 = v84;
          v32 = _ViewInputs.position.getter();
          v33 = Attribute<A>.origin()();
          *&v59 = v51;
          DWORD2(v59) = v52;
          MEMORY[0x1EEE9AC00](v33);
          v37[-4] = a4;
          v37[-3] = v16;
          LODWORD(v37[-2]) = v31;
          HIDWORD(v37[-2]) = v32;
          LODWORD(v37[-1]) = v34;
          HIDWORD(v37[-1]) = v35;
          outlined init with copy of PreferencesInputs(&v51, v47);
          PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
        }

        *&v59 = v51;
        DWORD2(v59) = v52;
        MEMORY[0x1EEE9AC00](v30);
        v37[-2] = &v83;
        outlined init with copy of PreferencesInputs(&v51, v47);
        PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

        v27 = v49;
      }
    }

    v36 = v43;
    *v43 = v27;
    result = v50;
    v36[1] = v50;
  }

  else
  {
    v73 = v85;
    v74 = v86;
    v75 = v87;
    LODWORD(v76[0]) = v88;
    v71 = v83;
    v72 = v84;
    a3();
  }

  return result;
}

uint64_t closure #2 in static EditMenuModifierCore._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v2 = type metadata accessor for EditMenuModifierCore();
  v3 = *(v2 + 44);
  v9[2] = v2;
  type metadata accessor for EventFilter<()>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v5 = v4;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, closure #1 in static PointerOffset.of(_:)partial apply, v9, v5, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t EditMenuResponderFilter.init<A>(modifier:inputs:outputs:responder:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 64);
  v17 = *(a1 + 48);
  v18 = v6;
  v7 = *(a1 + 16);
  v16[0] = *a1;
  v19 = *(a1 + 80);
  v16[1] = v7;
  v16[2] = v5;
  closure #1 in EditMenuResponderFilter.init<A>(modifier:inputs:outputs:responder:)(1);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v9 = _ViewOutputs.viewResponders()();

  v10 = _ViewInputs.animatedPosition()();
  v11 = HIDWORD(v17);
  swift_beginAccess();
  v12 = CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  v13 = _ViewInputs.containerPosition.getter();
  v14 = _ViewInputs.isEnabled.getter();
  result = outlined destroy of _ViewInputs(v16);
  *a3 = OffsetAttribute2;
  *(a3 + 4) = v9;
  *(a3 + 8) = v10;
  *(a3 + 12) = v11;
  *(a3 + 16) = v12;
  *(a3 + 20) = v13;
  *(a3 + 24) = v14;
  *(a3 + 32) = a2;
  return result;
}

uint64_t implicit closure #2 in static EditMenuModifierCore._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v6[0] = a1;
  v6[1] = a2;
  v8 = type metadata accessor for EditMenuTransform();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v6, closure #1 in Attribute.init<A>(_:)partial apply, v7, v8, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v5;
}

uint64_t EditMenuTransform.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EditMenuModifierCore();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance EditMenuModifierCore<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t (*EditMenuTransform.value.getter(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1)
{
  v25 = a4;
  v7 = type metadata accessor for EditMenuModifierCore();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v27 = HIDWORD(a2);
  v28 = HIDWORD(a1);
  AnchorGeometry.init(position:size:transform:)();
  v11 = v30;
  v26 = v31;
  EditMenuTransform.modifier.getter(v10);
  v12 = &v10[*(v7 + 44)];
  v14 = *v12;
  v13 = *(v12 + 1);
  v15 = v12[16];
  v16 = *(v8 + 8);

  v23 = v7;
  v24 = v16;
  v16(v10, v7);
  v30 = v14;
  v31 = v13;
  v32 = v15;
  type metadata accessor for EventFilter<()>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v29);

  v17 = v25;

  if (v29 == 1)
  {
    EditMenuTransform.modifier.getter(v10);

    v24(v10, v23);
  }

  type metadata accessor for CGRect(0);
  Anchor.Source.init<A>(_:)();
  v30 = v11;
  LODWORD(v31) = v26;
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for CGRect?, type metadata accessor for CGRect, MEMORY[0x1E69E6720]);
  v18 = Anchor.Source.prepare(geometry:)();

  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = v17;
  v20 = v27;
  v21 = v28;
  *(v19 + 32) = a1;
  *(v19 + 36) = v21;
  *(v19 + 40) = a2;
  *(v19 + 44) = v20;
  *(v19 + 48) = v18;
  return partial apply for closure #1 in EditMenuTransform.value.getter;
}

uint64_t closure #1 in EditMenuTransform.value.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v5 = type metadata accessor for EditMenuModifierCore();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  outlined consume of EditMenuPresentation?(*a1, a1[1], a1[2], a1[3]);
  EditMenuTransform.modifier.getter(v11);
  v19 = *(v11 + 2);
  v12 = *(v6 + 8);
  v12(v11, v5);
  EditMenuTransform.modifier.getter(v8);
  v13 = &v8[*(v5 + 44)];
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = v13[16];

  v12(v8, v5);
  v17 = v20;
  *a1 = v19;
  a1[1] = 0;
  a1[2] = v14;
  a1[3] = v15;
  a1[4] = v16;
  a1[5] = v17;
}

uint64_t protocol witness for Rule.value.getter in conformance EditMenuTransform<A>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = EditMenuTransform.value.getter(*v2, v2[1], *(a1 + 16), *(a1 + 24));
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v6;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  a2[1] = result;
  return result;
}

uint64_t closure #1 in EditMenuResponderFilter.init<A>(modifier:inputs:outputs:responder:)(uint64_t a1)
{
  v6[2] = type metadata accessor for EditMenuModifierCore();
  v2 = MEMORY[0x1E697DFC0];
  v3 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 8, closure #1 in static PointerOffset.of(_:)partial apply, v6, v2, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v4);
  return v6[5];
}

uint64_t EditMenuResponderFilter.updateValue()()
{
  v1 = v0;
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;
  v6 = Value[1];
  AGGraphGetValue();
  if (((v4 | v7) & 1) != 0 || (type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]), !AGGraphGetOutputValue()))
  {
    v8 = *(v1 + 32);
    *(v8 + 224) = MEMORY[0x18D00B390]();
    *(v8 + 232) = v9;
    *(v8 + 240) = v5;
    *(v8 + 248) = v6;
  }

  v10 = *(v1 + 32);
  *(v10 + 304) = *AGGraphGetValue();

  *(v10 + 256) = AGCreateWeakAttribute();
  *(v10 + 264) = *AGGraphGetValue();
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
  AGGraphGetValue();
  if (v11)
  {

    MultiViewResponder.children.setter();
  }

  v12 = AGGraphGetValue();
  v13 = v6 - v12[1];
  *(v10 + 280) = v5 - *v12;
  *(v10 + 288) = v13;
  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for EventFilter<()>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_18CD69590;
    *(v15 + 32) = v10;

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t closure #1 in EditMenuResponder.setPresentationState(to:)()
{
  AGGraphClearUpdate();
  closure #1 in closure #1 in EditMenuResponder.setPresentationState(to:)();

  return AGGraphSetUpdate();
}

uint64_t closure #1 in closure #1 in EditMenuResponder.setPresentationState(to:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    type metadata accessor for EventFilter<()>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    result = AGGraphGetWeakValue();
    if (result)
    {

      dispatch thunk of AnyLocation.set(_:transaction:)();
    }
  }

  return result;
}

uint64_t EditMenuResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  return swift_deallocClassInstance();
}

void type metadata accessor for ViewInputFlagModifier<ClientHandlesEditMenuTrigger>()
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<ClientHandlesEditMenuTrigger>)
  {
    lazy protocol witness table accessor for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger();
    v0 = type metadata accessor for ViewInputFlagModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewInputFlagModifier<ClientHandlesEditMenuTrigger>);
    }
  }
}

uint64_t destroy for ActiveEditMenu(uint64_t a1)
{
}

uint64_t initializeWithCopy for ActiveEditMenu(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  v4 = *(a2 + 48);
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for ActiveEditMenu(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
  *(a1 + 40) = v5;
  v6 = v5;

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithTake for ActiveEditMenu(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t storeEnumTagSinglePayload for ActiveEditMenu(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t destroy for EditMenuPresentation()
{
}

uint64_t initializeWithCopy for EditMenuPresentation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for EditMenuPresentation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for EditMenuPresentation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t type metadata completion function for EditMenuModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for EditMenuModifier(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  if (v7 <= 7 && (*(v6 + 80) & 0x100000) == 0 && ((-25 - v7) | v7) - *(v6 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v11 = *(a2 + 17);
    if (v11 >= 2)
    {
      v11 = *a2 + 2;
    }

    if (v11 == 1)
    {
      v12 = a2[1];
      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);

      v13 = 1;
    }

    else
    {
      v13 = 0;
      *a1 = *a2;
      v12 = a2[1];
    }

    *(v4 + 8) = v12;
    *(v4 + 17) = v13;
    v14 = ((v4 + 21) & 0xFFFFFFFFFFFFFFFCLL);
    v15 = ((a2 + 21) & 0xFFFFFFFFFFFFFFFCLL);
    *v14 = *v15;
    (*(v6 + 16))((v14 + v7 + 4) & ~v7, (v15 + v7 + 4) & ~v7, v5);
  }

  else
  {
    v10 = *a2;
    *v4 = *a2;
    v4 = v10 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16));
  }

  return v4;
}

uint64_t destroy for EditMenuModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 17);
  if (v4 >= 2)
  {
    v4 = *a1 + 2;
  }

  if (v4 == 1)
  {
  }

  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (((a1 + 21) & 0xFFFFFFFFFFFFFFFCLL) + *(v5 + 80) + 4) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t initializeWithCopy for EditMenuModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 17);
  if (v6 >= 2)
  {
    v6 = *a2 + 2;
  }

  if (v6 == 1)
  {
    v7 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);

    v8 = 1;
  }

  else
  {
    v8 = 0;
    *a1 = *a2;
    v7 = *(a2 + 8);
  }

  *(a1 + 8) = v7;
  *(a1 + 17) = v8;
  v9 = ((a1 + 21) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((a2 + 21) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 16))((v9 + *(v11 + 80) + 4) & ~*(v11 + 80), (v10 + *(v11 + 80) + 4) & ~*(v11 + 80));
  return a1;
}

uint64_t assignWithCopy for EditMenuModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *(a1 + 17);
    if (v6 >= 2)
    {
      v6 = *a1 + 2;
    }

    if (v6 == 1)
    {
    }

    v7 = *(a2 + 17);
    if (v7 >= 2)
    {
      v7 = *a2 + 2;
    }

    if (v7 == 1)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 17) = 1;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 17) = 0;
    }
  }

  v8 = ((a1 + 21) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((a2 + 21) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 24))((v8 + *(v10 + 80) + 4) & ~*(v10 + 80), (v9 + *(v10 + 80) + 4) & ~*(v10 + 80));
  return a1;
}

uint64_t initializeWithTake for EditMenuModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 17);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  if (v4 == 1)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a1 = *a2;
  }

  *(a1 + 17) = v5;
  v6 = ((a1 + 21) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((a2 + 21) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  (*(v8 + 32))((v6 + *(v8 + 80) + 4) & ~*(v8 + 80), (v7 + *(v8 + 80) + 4) & ~*(v8 + 80));
  return a1;
}

uint64_t assignWithTake for EditMenuModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *(a1 + 17);
    if (v6 >= 2)
    {
      v6 = *a1 + 2;
    }

    if (v6 == 1)
    {
    }

    v7 = *(a2 + 17);
    if (v7 >= 2)
    {
      v7 = *a2 + 2;
    }

    if (v7 == 1)
    {
      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
      v8 = 1;
    }

    else
    {
      v8 = 0;
      *a1 = *a2;
    }

    *(a1 + 17) = v8;
  }

  v9 = ((a1 + 21) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((a2 + 21) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 40))((v9 + *(v11 + 80) + 4) & ~*(v11 + 80), (v10 + *(v11 + 80) + 4) & ~*(v11 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for EditMenuModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((((a1 + 21) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6);
      }

      v15 = *(a1 + 17);
      if (v15 >= 2)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
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

void storeEnumTagSinglePayload for EditMenuModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 21) & 0xFFFFFFFFFFFFFFFCLL) + v9 + 4) & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 255;
  }

  else
  {
    a1[17] = -a2;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ActiveEditMenu()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ActiveEditMenu()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.__Key_activeEditMenu@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 1;
  *(a1 + 40) = xmmword_18CD6A6D0;
  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance DeferTriggerPredicate(_OWORD *a1)
{
  v1 = a1[1];
  v9[0] = *a1;
  v9[1] = v1;
  v3 = *a1;
  v2 = a1[1];
  v9[2] = a1[2];
  v6 = v3;
  v7 = v2;
  v8 = a1[2];
  outlined init with copy of _GraphInputs(v9, v10);
  v4 = specialized static DeferTriggerPredicate.evaluate(inputs:)(&v6);
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  outlined destroy of _GraphInputs(v10);
  return v4 & 1;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ProvidesEditMenuInteraction(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  PropertyList.subscript.getter();
  return v5;
}

unint64_t lazy protocol witness table accessor for type ActiveEditMenu and conformance ActiveEditMenu()
{
  result = lazy protocol witness table cache variable for type ActiveEditMenu and conformance ActiveEditMenu;
  if (!lazy protocol witness table cache variable for type ActiveEditMenu and conformance ActiveEditMenu)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActiveEditMenu and conformance ActiveEditMenu);
  }

  return result;
}

void type metadata accessor for AddGestureModifier<_EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>, DefaultGestureCombiner>()
{
  if (!lazy cache variable for type metadata for AddGestureModifier<_EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>, DefaultGestureCombiner>)
  {
    type metadata accessor for _EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>();
    _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type _EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>> and conformance _EndedGesture<A>, type metadata accessor for _EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>);
    lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
    v0 = type metadata accessor for AddGestureModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AddGestureModifier<_EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>, DefaultGestureCombiner>);
    }
  }
}

void type metadata accessor for _EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>()
{
  if (!lazy cache variable for type metadata for _EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>)
  {
    type metadata accessor for ModifierGesture<EventFilter<()>, TapGesture>();
    _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<()>, TapGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<()>, TapGesture>);
    v0 = type metadata accessor for _EndedGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>);
    }
  }
}

void type metadata accessor for ModifierGesture<EventFilter<()>, TapGesture>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<EventFilter<()>, TapGesture>)
  {
    type metadata accessor for EventFilter<()>(255, &lazy cache variable for type metadata for EventFilter<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E697DCD8]);
    lazy protocol witness table accessor for type EventFilter<()> and conformance EventFilter<A>();
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<EventFilter<()>, TapGesture>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EventFilter<()> and conformance EventFilter<A>()
{
  result = lazy protocol witness table cache variable for type EventFilter<()> and conformance EventFilter<A>;
  if (!lazy protocol witness table cache variable for type EventFilter<()> and conformance EventFilter<A>)
  {
    type metadata accessor for EventFilter<()>(255, &lazy cache variable for type metadata for EventFilter<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E697DCD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventFilter<()> and conformance EventFilter<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DeferTriggerPredicate and conformance DeferTriggerPredicate()
{
  result = lazy protocol witness table cache variable for type DeferTriggerPredicate and conformance DeferTriggerPredicate;
  if (!lazy protocol witness table cache variable for type DeferTriggerPredicate and conformance DeferTriggerPredicate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeferTriggerPredicate and conformance DeferTriggerPredicate);
  }

  return result;
}

uint64_t partial apply for closure #2 in EditMenuModifier.editMenuGesture.getter()
{
  v1 = *(type metadata accessor for EditMenuModifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return closure #2 in EditMenuModifier.editMenuGesture.getter(v2);
}

uint64_t initializeWithCopy for SelectionEditMenuModifier.Child(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for SelectionEditMenuModifier.Child(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t assignWithTake for SelectionEditMenuModifier.Child(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for SelectionEditMenuModifier.Child(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 100))
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

uint64_t storeEnumTagSinglePayload for SelectionEditMenuModifier.Child(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 100) = 1;
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

    *(result + 100) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for EditMenuModifierCore()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for EditMenuModifierCore(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((v7 + ((v6 + 12) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 17 > 0x18)
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
    v13 = ((a2 + 11) & 0xFFFFFFFFFFFFFFFCLL);
    *v12 = *v13;
    v14 = (v12 + v6 + 4) & ~v6;
    v15 = (v13 + v6 + 4) & ~v6;
    v16 = *(v5 + 16);

    v16(v14, v15, v4);
    v17 = (v7 + v14) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v7 + v15) & 0xFFFFFFFFFFFFFFF8;
    *v17 = *v18;
    *(v17 + 8) = *(v18 + 8);
    *(v17 + 16) = *(v18 + 16);
  }

  return a1;
}

uint64_t destroy for EditMenuModifierCore(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 11;

  (*(*(*(a2 + 16) - 8) + 8))(((v3 & 0xFFFFFFFFFFFFFFFCLL) + *(*(*(a2 + 16) - 8) + 80) + 4) & ~*(*(*(a2 + 16) - 8) + 80));
}

void *initializeWithCopy for EditMenuModifierCore(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 11;
  *a1 = v5;
  v6 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(v7 - 8) + 16;
  v10 = *(*(v7 - 8) + 80);
  v11 = (v6 + v10 + 4) & ~v10;
  v12 = (v10 + 4 + (v4 & 0xFFFFFFFFFFFFFFFCLL)) & ~v10;

  v8(v11, v12, v7);
  v13 = *(v9 + 48) + 7;
  v14 = (v13 + v11) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + v12) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;
  *(v14 + 8) = *(v15 + 8);
  *(v14 + 16) = *(v15 + 16);

  return a1;
}

void *assignWithCopy for EditMenuModifierCore(void *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 11;
  *a1 = *a2;
  v6 = a1 + 11;

  *(v6 & 0xFFFFFFFFFFFFFFFCLL) = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = (v9 + 4 + (v6 & 0xFFFFFFFFFFFFFFFCLL)) & ~v9;
  v11 = (v9 + 4 + (v5 & 0xFFFFFFFFFFFFFFFCLL)) & ~v9;
  (*(v7 + 24))(v10, v11);
  v12 = *(v8 + 40) + 7;
  v13 = (v12 + v10) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + v11) & 0xFFFFFFFFFFFFFFF8;
  *v13 = *v14;

  *(v13 + 8) = *(v14 + 8);

  *(v13 + 16) = *(v14 + 16);
  return a1;
}

void *initializeWithTake for EditMenuModifierCore(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (v4 + v8 + 4) & ~v8;
  v10 = (v5 + v8 + 4) & ~v8;
  (*(v6 + 32))(v9, v10);
  v11 = *(v7 + 32) + 7;
  v12 = (v11 + v9) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + v10) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v13 + 16);
  *v12 = *v13;
  *(v12 + 16) = v14;
  return a1;
}

void *assignWithTake for EditMenuModifierCore(void *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 11;
  *a1 = *a2;

  v6 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = (v6 + v9 + 4) & ~v9;
  v11 = (v9 + 4 + (v5 & 0xFFFFFFFFFFFFFFFCLL)) & ~v9;
  (*(v7 + 40))(v10, v11);
  v12 = *(v8 + 24) + 7;
  v13 = (v12 + v10) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + v11) & 0xFFFFFFFFFFFFFFF8;
  *v13 = *v14;

  *(v13 + 8) = *(v14 + 8);

  *(v13 + 16) = *(v14 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for EditMenuModifierCore(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 12) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for EditMenuModifierCore(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 12) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if ((v7 & 0x80000000) != 0)
      {
        v18 = *(v6 + 56);
        v19 = (((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL) + v9 + 4) & ~v9;

        v18(v19);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v17 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v17 = a2 - 1;
        }

        *a1 = v17;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t getEnumTagSinglePayload for EditMenuPresentation.Kind(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for EditMenuPresentation.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t specialized static DeferTriggerPredicate.evaluate(inputs:)(uint64_t *a1)
{
  v1 = *a1;
  if (static StyleContextAcceptsPredicate.evaluate(inputs:)() & 1) != 0 || (static StyleContextAcceptsPredicate.evaluate(inputs:)())
  {
    return 1;
  }

  lazy protocol witness table accessor for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger();
  PropertyList.subscript.getter();
  return v1;
}

unint64_t lazy protocol witness table accessor for type EditMenuResponderFilter and conformance EditMenuResponderFilter()
{
  result = lazy protocol witness table cache variable for type EditMenuResponderFilter and conformance EditMenuResponderFilter;
  if (!lazy protocol witness table cache variable for type EditMenuResponderFilter and conformance EditMenuResponderFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EditMenuResponderFilter and conformance EditMenuResponderFilter);
  }

  return result;
}

void type metadata accessor for EventFilter<()>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed TextSelection) -> (@owned PlatformItemList)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

double specialized static EditMenuPresentation.Key.reduce(value:nextValue:)(uint64_t *a1, void (*a2)(__int128 *__return_ptr))
{
  v4 = a1[3];
  if (!v4 || (v5 = *(a1 + 32), *&v10 = a1[2], *(&v10 + 1) = v4, LOBYTE(v11) = v5, type metadata accessor for EventFilter<()>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]), MEMORY[0x18D00ACC0](&v14), (v14 & 1) == 0))
  {
    a2(&v10);
    v7 = v12;
    v8 = v13;
    outlined consume of EditMenuPresentation?(*a1, a1[1], a1[2], a1[3]);
    result = *&v10;
    v9 = v11;
    *a1 = v10;
    *(a1 + 1) = v9;
    a1[4] = v7;
    a1[5] = v8;
  }

  return result;
}

uint64_t static ScrollViewDragAutoScrollWriter._makeGesture(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *))
{
  v3 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v3;
  v4 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v4;
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  v6 = *(a2 + 96);
  v7 = *(a2 + 104);
  v12 = *(a2 + 108);
  v10 = v6;
  v11 = v7;
  a3(v9);
  type metadata accessor for _GestureOutputs();
  _GestureOutputs.phase.getter();
  *&v9[0] = v6;
  DWORD2(v9[0]) = v7;

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
}

uint64_t implicit closure #1 in static ScrollViewDragAutoScrollWriter._makeGesture(modifier:inputs:body:)(unsigned int a1, int a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v9 = a1;
  type metadata accessor for ScrollViewDragAutoScrollWriter();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v8 = a2;
  IsActive = type metadata accessor for ScrollViewDragAutoScrollWriter.IsActive();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<Bool>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v7, closure #1 in Attribute.init<A>(_:)partial apply, v10, IsActive, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v9;
}

uint64_t closure #1 in implicit closure #1 in static ScrollViewDragAutoScrollWriter._makeGesture(modifier:inputs:body:)(uint64_t a1)
{
  v6[2] = type metadata accessor for ScrollViewDragAutoScrollWriter();
  v2 = MEMORY[0x1E69E6370];
  v3 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_1, v6, v2, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v4);
  return v6[5];
}

uint64_t ScrollViewDragAutoScrollWriter.IsActive.value.getter()
{
  v0 = type metadata accessor for GesturePhase();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  v4 = 0;
  if (*AGGraphGetValue() == 1)
  {
    SequenceEvents.phase.getter(v3);
    v4 = GesturePhase.isActive.getter();
    (*(v1 + 8))(v3, v0);
  }

  return v4 & 1;
}

uint64_t protocol witness for Rule.value.getter in conformance ScrollViewDragAutoScrollWriter<A>.IsActive@<X0>(_BYTE *a1@<X8>)
{
  result = ScrollViewDragAutoScrollWriter.IsActive.value.getter();
  *a1 = result & 1;
  return result;
}

void type metadata accessor for Attribute<Bool>()
{
  if (!lazy cache variable for type metadata for Attribute<Bool>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<Bool>);
    }
  }
}

uint64_t key path getter for ScrollEnvironmentStorage.baseProperties : ScrollEnvironmentStorage@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return outlined init with copy of ScrollEnvironmentProperties(v3 + 16, a2);
}

uint64_t key path getter for ScrollEnvironmentStorage.transform : ScrollEnvironmentStorage@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return outlined init with copy of ScrollEnvironmentTransform?(v3 + 280, a2);
}

uint64_t key path setter for ScrollEnvironmentStorage.transform : ScrollEnvironmentStorage(uint64_t a1)
{
  outlined init with copy of ScrollEnvironmentTransform?(a1, v2);
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return outlined destroy of ScrollEnvironmentTransform?(v2);
}

uint64_t View.scrollIndicators(_:options:axes:)(_BYTE *a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  v7[0] = *a1;
  v8 = v5;
  v9 = a3;
  return View.transformScrollEnvironment<A>(_:)(v7, a4, &type metadata for TransformScrollIndicators, a5);
}

uint64_t protocol witness for ScrollEnvironmentTransform.update(properties:) in conformance TransformScrollAccessories(uint64_t result)
{
  v2 = *v1;
  v3 = v1[1];
  if (v2 != 4)
  {
    *(result + 88) = v2;
  }

  if (v3)
  {
    *(result + 89) = v3;
  }

  return result;
}

uint64_t View.scrollAccessoryEdge(_:)(char a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = 0;
  return View.transformScrollEnvironment<A>(_:)(v4, a2, &unk_1EFFD7D50, a3);
}

uint64_t View.scrollAccessoryVisibility(_:)(char a1, uint64_t a2, uint64_t a3)
{
  v4[0] = 4;
  v4[1] = a1;
  return View.transformScrollEnvironment<A>(_:)(v4, a2, &unk_1EFFD7D50, a3);
}

unint64_t ScrollEdgeEffectStyleTransform.update(properties:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v40 = v1[1];
  v4 = v1[2];
  if (v3 == 3)
  {
LABEL_2:
    if (v40 == 2)
    {
      return result;
    }

    v21 = 0;
    while (1)
    {
      v22 = outlined read-only object #1 of ScrollEdgeEffectStyleTransform.update(properties:)[v21 + 32];
      if ((v22 - 9) >= 0xEFu)
      {
        if ((v22 & 0x80) != 0)
        {
          if (v22 > 0xF8)
          {
            LOBYTE(v23) = 0;
LABEL_33:
            if ((v23 & ~v4) != 0)
            {
              goto LABEL_28;
            }
          }
        }

        else if (v22 <= 7)
        {
          v23 = 1 << v22;
          goto LABEL_33;
        }
      }

      v24 = *(v2 + 104);
      if (*(v24 + 16) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(outlined read-only object #1 of ScrollEdgeEffectStyleTransform.update(properties:)[v21 + 32]), (v26 & 1) != 0))
      {
        v27 = *(*(v24 + 56) + v25);
      }

      else
      {
        v27 = 0;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *(v2 + 104);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v22);
      v31 = v29[2];
      v32 = (v30 & 1) == 0;
      v13 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v13)
      {
        goto LABEL_50;
      }

      v34 = v30;
      if (v29[3] >= v33)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v39 = result;
          specialized _NativeDictionary.copy()();
          result = v39;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v22);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_53;
        }
      }

      v36 = v40 | v27;
      if (v34)
      {
        *(v29[7] + result) = v36 & 1;
      }

      else
      {
        v29[(result >> 6) + 8] |= 1 << result;
        *(v29[6] + result) = v22;
        *(v29[7] + result) = v36 & 1;
        v37 = v29[2];
        v13 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v13)
        {
          goto LABEL_52;
        }

        v29[2] = v38;
      }

      *(v2 + 104) = v29;
LABEL_28:
      if (++v21 == 4)
      {
        return result;
      }
    }
  }

  v5 = 0;
  while (1)
  {
    v6 = outlined read-only object #0 of ScrollEdgeEffectStyleTransform.update(properties:)[v5 + 32];
    if ((v6 - 9) < 0xEFu)
    {
      goto LABEL_13;
    }

    if ((v6 & 0x80) != 0)
    {
      if (v6 <= 0xF8)
      {
        goto LABEL_13;
      }

      LOBYTE(v7) = 0;
    }

    else
    {
      if (v6 > 7)
      {
        goto LABEL_13;
      }

      v7 = 1 << v6;
    }

    if ((v7 & ~v4) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 96);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
    v11 = v9[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      break;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, v8);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if ((v15 & 1) != (v16 & 1))
      {
        goto LABEL_53;
      }

LABEL_18:
      v17 = v9;
      if ((v15 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_5;
    }

    if (v8)
    {
      goto LABEL_18;
    }

    v20 = result;
    specialized _NativeDictionary.copy()();
    result = v20;
    v17 = v9;
    if ((v15 & 1) == 0)
    {
LABEL_19:
      v17[(result >> 6) + 8] |= 1 << result;
      *(v17[6] + result) = v6;
      *(v17[7] + result) = v3;
      v18 = v17[2];
      v13 = __OFADD__(v18, 1);
      v19 = v18 + 1;
      if (v13)
      {
        goto LABEL_51;
      }

      v17[2] = v19;
      goto LABEL_6;
    }

LABEL_5:
    *(v17[7] + result) = v3;
LABEL_6:
    *(v2 + 96) = v17;
LABEL_7:
    if (++v5 == 4)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for ScrollEnvironmentTransform.update(properties:) in conformance ScrollEdgeEffectDisabledTransform(uint64_t result)
{
  v2 = *v1;
  if (v2 != 2)
  {
    if (v2)
    {
      v3 = 1;
    }

    else
    {
      v3 = *(result + 112);
    }

    *(result + 112) = v3;
  }

  return result;
}

uint64_t View.scrollEdgeEffectHidden(_:for:)(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v5[0] = 3;
  v5[1] = a1;
  v5[2] = a2;
  return View.transformScrollEnvironment<A>(_:)(v5, a3, &unk_1EFFD7CC8, a4);
}

uint64_t View.scrollEdgeEffectStyle(_:for:)(_BYTE *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5[0] = *a1;
  v5[1] = 2;
  v5[2] = a2;
  return View.transformScrollEnvironment<A>(_:)(v5, a3, &unk_1EFFD7CC8, a4);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ScrollInputKind.Storage(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 2))
  {
    return (*(a2 + 2) & 1) != 0;
  }

  if (*(a2 + 2))
  {
    return 0;
  }

  if ((*a1 & 0x100) != 0)
  {
    if ((*a2 & 0x100) != 0)
    {
      return 1;
    }
  }

  else if ((*a2 & 0x100) == 0 && *a1 == *a2)
  {
    return 1;
  }

  return 0;
}

BOOL static ScrollInputKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 2))
  {
    return (*(a2 + 2) & 1) != 0;
  }

  if (*(a2 + 2))
  {
    return 0;
  }

  if ((*a1 & 0x100) != 0)
  {
    return (*a2 & 0x100) != 0;
  }

  else
  {
    return (*a2 & 0x100) == 0 && *a1 == *a2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ScrollInputKind(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 2))
  {
    if (*(a2 + 2))
    {
      return 1;
    }
  }

  else if ((*(a2 + 2) & 1) == 0)
  {
    if ((*a1 & 0x100) != 0)
    {
      if ((*a2 & 0x100) != 0)
      {
        return 1;
      }
    }

    else if ((*a2 & 0x100) == 0 && *a1 == *a2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t View.scrollInputBehavior(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v11, v12, v13);
  static ViewBuilder.buildExpression<A>(_:)(v10, a3, a4);
  return (*(v8 + 8))(v10, a3);
}

uint64_t EnvironmentValues.verticalScrollIndicatorVisibility.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
    PropertyList.subscript.getter();
  }

  v3 = v12[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v12[0] + 16, v12);
  swift_getKeyPath();
  v11[0] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v3 + 280, v11);
  if (v11[3])
  {
    outlined init with take of ScrollEnvironmentTransform(v11, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v5 + 8))(v12, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  v6 = v13;
  result = outlined destroy of ScrollEnvironmentProperties(v12);
  *a1 = v6;
  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t EnvironmentValues.verticalScrollIndicatorVisibility.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v4 = v12[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v12[0] + 16, v12);
  swift_getKeyPath();
  v11[0] = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v4 + 280, v11);
  if (v11[3])
  {
    outlined init with take of ScrollEnvironmentTransform(v11, &v8);
    v5 = *(&v9 + 1);
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    (*(v6 + 8))(v12, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  v13 = v2;
  outlined init with copy of ScrollEnvironmentProperties(v12, v11);
  type metadata accessor for ScrollEnvironmentStorage();
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  swift_allocObject();
  v11[0] = ScrollEnvironmentStorage.init(_:transform:)(v11, &v8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return outlined destroy of ScrollEnvironmentProperties(v12);
}

uint64_t (*EnvironmentValues.verticalScrollIndicatorVisibility.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  EnvironmentValues.verticalScrollIndicatorVisibility.getter((a1 + 8));
  return EnvironmentValues.verticalScrollIndicatorVisibility.modify;
}

uint64_t EnvironmentValues.horizontalScrollIndicatorVisibility.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
    PropertyList.subscript.getter();
  }

  v3 = v12[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v12[0] + 16, v12);
  swift_getKeyPath();
  v11[0] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v3 + 280, v11);
  if (v11[3])
  {
    outlined init with take of ScrollEnvironmentTransform(v11, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v5 + 8))(v12, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  v6 = v13;
  result = outlined destroy of ScrollEnvironmentProperties(v12);
  *a1 = v6;
  return result;
}

uint64_t EnvironmentValues.horizontalScrollIndicatorVisibility.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v4 = v12[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v12[0] + 16, v12);
  swift_getKeyPath();
  v11[0] = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v4 + 280, v11);
  if (v11[3])
  {
    outlined init with take of ScrollEnvironmentTransform(v11, &v8);
    v5 = *(&v9 + 1);
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    (*(v6 + 8))(v12, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  v13 = v2;
  outlined init with copy of ScrollEnvironmentProperties(v12, v11);
  type metadata accessor for ScrollEnvironmentStorage();
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  swift_allocObject();
  v11[0] = ScrollEnvironmentStorage.init(_:transform:)(v11, &v8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return outlined destroy of ScrollEnvironmentProperties(v12);
}

uint64_t (*EnvironmentValues.horizontalScrollIndicatorVisibility.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  EnvironmentValues.horizontalScrollIndicatorVisibility.getter((a1 + 8));
  return EnvironmentValues.horizontalScrollIndicatorVisibility.modify;
}

uint64_t ScrollIndicatorsFlashModifier.seed.getter()
{
  type metadata accessor for [HandGestureShortcutPaginationDirection](0, &lazy cache variable for type metadata for State<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  return v1;
}

uint64_t ScrollIndicatorsFlashModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  swift_getWitnessTable();
  v7 = type metadata accessor for _ViewModifier_Content();
  v8 = *(a2 + 24);
  v27 = *(a2 + 16);
  v28 = v8;
  updated = type metadata accessor for ScrollIndicatorsFlashModifier.UpdateFlashSeed();
  type metadata accessor for TransformScrollStorageModifier();
  v30 = type metadata accessor for ModifiedContent();
  v32 = type metadata accessor for _ValueActionModifier2();
  v33 = type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for ModifiedContent();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v29 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v31 = &v25 - v13;
  v26 = v3;
  v42[0] = ScrollIndicatorsFlashModifier.seed.getter();
  WitnessTable = swift_getWitnessTable();
  View.transformScrollEnvironment<A>(_:)(v42, v7, updated, WitnessTable);
  v42[0] = v42[1];
  (*(v5 + 16))(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v16 = swift_allocObject();
  v17 = v28;
  *(v16 + 16) = v27;
  *(v16 + 24) = v17;
  (*(v5 + 32))(v16 + v15, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v40 = WitnessTable;
  v41 = &protocol witness table for TransformScrollStorageModifier<A>;
  v18 = swift_getWitnessTable();
  v19 = v29;
  View.onChange<A>(of:initial:_:)();

  v20 = swift_getWitnessTable();
  v38 = v18;
  v39 = v20;
  v36 = swift_getWitnessTable();
  v37 = MEMORY[0x1E69805D0];
  v21 = swift_getWitnessTable();
  v22 = v31;
  static ViewBuilder.buildExpression<A>(_:)(v19, v10, v21);
  v23 = *(v34 + 8);
  v23(v19, v10);
  static ViewBuilder.buildExpression<A>(_:)(v22, v10, v21);
  return (v23)(v22, v10);
}

uint64_t closure #1 in ScrollIndicatorsFlashModifier.body(content:)(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for ScrollIndicatorsFlashModifier() + 36) + 8);
  type metadata accessor for [HandGestureShortcutPaginationDirection](0, &lazy cache variable for type metadata for State<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E6981790]);
  result = State.wrappedValue.getter();
  if (v1)
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t ScrollIndicatorFlashOnAppearModifier.UpdateIndicators.update(properties:)(uint64_t result, char a2)
{
  v2 = *(result + 128);
  if (a2)
  {
    if ((v2 & 1) == 0)
    {
      *(result + 128) = v2 | 1;
    }

    v3 = *(result + 152);
    if ((v3 & 1) == 0)
    {
      v4 = v3 | 1;
LABEL_10:
      *(result + 152) = v4;
    }
  }

  else
  {
    if (v2)
    {
      *(result + 128) = v2 & 0xFFFFFFFFFFFFFFFELL;
    }

    v5 = *(result + 152);
    if (v5)
    {
      v4 = v5 & 0xFFFFFFFFFFFFFFFELL;
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t View.scrollIndicatorsFlash<A>(trigger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ScrollIndicatorsFlashModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  v16 = &v15[*(v11 + 36)];
  *v16 = 0;
  *(v16 + 1) = 0;
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

uint64_t ScrollView.scrollDisabled(_:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(*(a2 - 8) + 16))(a3, v3, a2);
  *(a3 + *(a2 + 36) + 40) = a1 ^ 1;
  return result;
}

uint64_t EnvironmentValues.isScrollEnabled.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
    PropertyList.subscript.getter();
  }

  v1 = *v10;
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(*v10 + 16, v10);
  swift_getKeyPath();
  v9[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v1 + 280, v9);
  if (v9[3])
  {
    outlined init with take of ScrollEnvironmentTransform(v9, v6);
    v2 = v7;
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v3 + 8))(v10, v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  v4 = v10[0];
  outlined destroy of ScrollEnvironmentProperties(v10);
  return v4;
}

uint64_t EnvironmentValues.isScrollEnabled.setter(char a1)
{
  v3 = *(v1 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v4 = v12[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v12[0] + 16, v12);
  swift_getKeyPath();
  v11[0] = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v4 + 280, v11);
  if (v11[3])
  {
    outlined init with take of ScrollEnvironmentTransform(v11, &v8);
    v5 = *(&v9 + 1);
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    (*(v6 + 8))(v12, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  LOBYTE(v12[0]) &= a1 & 1;
  outlined init with copy of ScrollEnvironmentProperties(v12, v11);
  type metadata accessor for ScrollEnvironmentStorage();
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  swift_allocObject();
  v11[0] = ScrollEnvironmentStorage.init(_:transform:)(v11, &v8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return outlined destroy of ScrollEnvironmentProperties(v12);
}

uint64_t (*EnvironmentValues.isScrollEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = EnvironmentValues.isScrollEnabled.getter() & 1;
  return EnvironmentValues.isScrollEnabled.modify;
}

uint64_t protocol witness for ScrollEnvironmentTransform.update(properties:) in conformance ScrollClipTransform(uint64_t result)
{
  v2 = v1[1];
  *(result + 1) &= *v1 & 1;
  if (v2 != 2)
  {
    *(result + 2) = v2 & 1;
  }

  return result;
}

uint64_t View.scrollClipDisabled(_:)(char a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1 ^ 1;
  v4[1] = 2;
  return View.transformScrollEnvironment<A>(_:)(v4, a2, &unk_1EFFD79F0, a3);
}

uint64_t View.scrollClipDisabled(_:behavior:)(char a1, char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v6[0] = a1 ^ 1;
  v6[1] = v4;
  return View.transformScrollEnvironment<A>(_:)(v6, a3, &unk_1EFFD79F0, a4);
}

uint64_t EnvironmentValues.scrollDismissesKeyboardMode.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
    PropertyList.subscript.getter();
  }

  v3 = v12[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v12[0] + 16, v12);
  swift_getKeyPath();
  v11[0] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v3 + 280, v11);
  if (v11[3])
  {
    outlined init with take of ScrollEnvironmentTransform(v11, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v5 + 8))(v12, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  v6 = BYTE3(v12[0]);
  result = outlined destroy of ScrollEnvironmentProperties(v12);
  *a1 = v6;
  return result;
}

uint64_t EnvironmentValues.scrollDismissesKeyboardMode.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v4 = v12[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v12[0] + 16, v12);
  swift_getKeyPath();
  v11[0] = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v4 + 280, v11);
  if (v11[3])
  {
    outlined init with take of ScrollEnvironmentTransform(v11, &v8);
    v5 = *(&v9 + 1);
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    (*(v6 + 8))(v12, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  BYTE3(v12[0]) = v2;
  outlined init with copy of ScrollEnvironmentProperties(v12, v11);
  type metadata accessor for ScrollEnvironmentStorage();
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  swift_allocObject();
  v11[0] = ScrollEnvironmentStorage.init(_:transform:)(v11, &v8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return outlined destroy of ScrollEnvironmentProperties(v12);
}

uint64_t (*EnvironmentValues.scrollDismissesKeyboardMode.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  EnvironmentValues.scrollDismissesKeyboardMode.getter((a1 + 8));
  return EnvironmentValues.scrollDismissesKeyboardMode.modify;
}

uint64_t EnvironmentValues.verticalScrollBounceBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
    PropertyList.subscript.getter();
  }

  v3 = v12[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v12[0] + 16, v12);
  swift_getKeyPath();
  v11[0] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v3 + 280, v11);
  if (v11[3])
  {
    outlined init with take of ScrollEnvironmentTransform(v11, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v5 + 8))(v12, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  v6 = v13;
  result = outlined destroy of ScrollEnvironmentProperties(v12);
  *a1 = v6;
  return result;
}

uint64_t EnvironmentValues.verticalScrollBounceBehavior.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v4 = v12[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v12[0] + 16, v12);
  swift_getKeyPath();
  v11[0] = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v4 + 280, v11);
  if (v11[3])
  {
    outlined init with take of ScrollEnvironmentTransform(v11, &v8);
    v5 = *(&v9 + 1);
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    (*(v6 + 8))(v12, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  v13 = v2;
  outlined init with copy of ScrollEnvironmentProperties(v12, v11);
  type metadata accessor for ScrollEnvironmentStorage();
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  swift_allocObject();
  v11[0] = ScrollEnvironmentStorage.init(_:transform:)(v11, &v8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return outlined destroy of ScrollEnvironmentProperties(v12);
}

uint64_t (*EnvironmentValues.verticalScrollBounceBehavior.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  EnvironmentValues.verticalScrollBounceBehavior.getter((a1 + 8));
  return EnvironmentValues.verticalScrollBounceBehavior.modify;
}

uint64_t EnvironmentValues.horizontalScrollBounceBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
    PropertyList.subscript.getter();
  }

  v3 = v12[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v12[0] + 16, v12);
  swift_getKeyPath();
  v11[0] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v3 + 280, v11);
  if (v11[3])
  {
    outlined init with take of ScrollEnvironmentTransform(v11, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v5 + 8))(v12, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  v6 = v13;
  result = outlined destroy of ScrollEnvironmentProperties(v12);
  *a1 = v6;
  return result;
}

uint64_t EnvironmentValues.horizontalScrollBounceBehavior.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v4 = v12[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v12[0] + 16, v12);
  swift_getKeyPath();
  v11[0] = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v4 + 280, v11);
  if (v11[3])
  {
    outlined init with take of ScrollEnvironmentTransform(v11, &v8);
    v5 = *(&v9 + 1);
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    (*(v6 + 8))(v12, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  v13 = v2;
  outlined init with copy of ScrollEnvironmentProperties(v12, v11);
  type metadata accessor for ScrollEnvironmentStorage();
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  swift_allocObject();
  v11[0] = ScrollEnvironmentStorage.init(_:transform:)(v11, &v8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return outlined destroy of ScrollEnvironmentProperties(v12);
}

uint64_t (*EnvironmentValues.horizontalScrollBounceBehavior.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  EnvironmentValues.horizontalScrollBounceBehavior.getter((a1 + 8));
  return EnvironmentValues.horizontalScrollBounceBehavior.modify;
}

uint64_t EnvironmentValues.verticalScrollIndicatorVisibility.modify(uint64_t a1, char a2, uint64_t (*a3)(char *))
{
  if (a2)
  {
    v5 = *(a1 + 8);
    v3 = &v5;
  }

  else
  {
    v6 = *(a1 + 8);
    v3 = &v6;
  }

  return a3(v3);
}

uint64_t protocol witness for ScrollEnvironmentTransform.update(properties:) in conformance DisableFocusFastScrolling(uint64_t result)
{
  if (*v1)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(result + 82) |= v2;
  return result;
}

uint64_t View.onScrollToTopGesture(perform:)(uint64_t a1)
{
  swift_getKeyPath();
  outlined copy of AppIntentExecutor?(a1);
  View.environment<A>(_:_:)();

  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a1);
}

uint64_t EnvironmentValues.onScrollToTopGesture.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollToTopGestureActionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollToTopGestureActionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey);
    PropertyList.subscript.getter();
  }

  return v2;
}

double key path getter for EnvironmentValues.onScrollToTopGesture : EnvironmentValues@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollToTopGestureActionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollToTopGestureActionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.onScrollToTopGesture : EnvironmentValues(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey, MEMORY[0x1E697FE38]);

  outlined copy of AppIntentExecutor?(v3);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollToTopGestureActionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey);
  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions()
{
  result = lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions;
  if (!lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions;
  if (!lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions;
  if (!lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions;
  if (!lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollEdgeEffectStyle and conformance ScrollEdgeEffectStyle()
{
  result = lazy protocol witness table cache variable for type ScrollEdgeEffectStyle and conformance ScrollEdgeEffectStyle;
  if (!lazy protocol witness table cache variable for type ScrollEdgeEffectStyle and conformance ScrollEdgeEffectStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollEdgeEffectStyle and conformance ScrollEdgeEffectStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollPocketStyle_V1 and conformance ScrollPocketStyle_V1()
{
  result = lazy protocol witness table cache variable for type ScrollPocketStyle_V1 and conformance ScrollPocketStyle_V1;
  if (!lazy protocol witness table cache variable for type ScrollPocketStyle_V1 and conformance ScrollPocketStyle_V1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollPocketStyle_V1 and conformance ScrollPocketStyle_V1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HandGestureShortcutPaginationDirection and conformance HandGestureShortcutPaginationDirection()
{
  result = lazy protocol witness table cache variable for type HandGestureShortcutPaginationDirection and conformance HandGestureShortcutPaginationDirection;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutPaginationDirection and conformance HandGestureShortcutPaginationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutPaginationDirection and conformance HandGestureShortcutPaginationDirection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [HandGestureShortcutPaginationDirection] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [HandGestureShortcutPaginationDirection] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HandGestureShortcutPaginationDirection] and conformance [A])
  {
    type metadata accessor for [HandGestureShortcutPaginationDirection](255, &lazy cache variable for type metadata for [HandGestureShortcutPaginationDirection], &type metadata for HandGestureShortcutPaginationDirection, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [HandGestureShortcutPaginationDirection] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollDismissesKeyboardMode and conformance ScrollDismissesKeyboardMode()
{
  result = lazy protocol witness table cache variable for type ScrollDismissesKeyboardMode and conformance ScrollDismissesKeyboardMode;
  if (!lazy protocol witness table cache variable for type ScrollDismissesKeyboardMode and conformance ScrollDismissesKeyboardMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollDismissesKeyboardMode and conformance ScrollDismissesKeyboardMode);
  }

  return result;
}

void *keypath_get_11Tm@<X0>(__int128 *a1@<X0>, void *(*a2)(char *__return_ptr)@<X3>, _BYTE *a3@<X8>)
{
  v6 = *a1;
  result = a2(&v5);
  *a3 = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for ScrollInputKind(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0x1FFFFFF) >> 24)
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 0xFFFFFF;
}

uint64_t storeEnumTagSinglePayload for ScrollInputKind(uint64_t result, int a2, int a3)
{
  if ((a3 + 0x1FFFFFF) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!a3)
  {
    v3 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v3)
    {
      v4 = ((a2 - 1) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else if (v3)
  {
    if (v3 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollEnvironmentStorage> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ScrollEnvironmentStorage> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ScrollEnvironmentStorage> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for ScrollEnvironmentTransform?(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ScrollEnvironmentStorage>, type metadata accessor for ScrollEnvironmentStorage, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ScrollEnvironmentStorage> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollIndicatorFlashOnAppearModifier and conformance ScrollIndicatorFlashOnAppearModifier()
{
  result = lazy protocol witness table cache variable for type ScrollIndicatorFlashOnAppearModifier and conformance ScrollIndicatorFlashOnAppearModifier;
  if (!lazy protocol witness table cache variable for type ScrollIndicatorFlashOnAppearModifier and conformance ScrollIndicatorFlashOnAppearModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollIndicatorFlashOnAppearModifier and conformance ScrollIndicatorFlashOnAppearModifier);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?>)
  {
    type metadata accessor for [HandGestureShortcutPaginationDirection](255, &lazy cache variable for type metadata for ScrollToTopGestureAction?, &type metadata for ScrollToTopGestureAction, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?>);
    }
  }
}

uint64_t getEnumTagSinglePayload for ScrollInputKind.Storage(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFFFF) >> 24 == 255)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    if ((a2 + 0xFFFFFF) >> 24)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      return v3;
    }

    if (v3 == 2)
    {
      v3 = *(a1 + 3);
      if (!*(a1 + 3))
      {
        return v3;
      }
    }

    else
    {
      v3 = *(a1 + 3);
      if (!*(a1 + 3))
      {
        return v3;
      }
    }

    return (*a1 | (*(a1 + 2) << 16) | (v3 << 24)) - 0xFFFFFF;
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for ScrollInputKind.Storage(uint64_t result, int a2, int a3)
{
  if ((a3 + 0xFFFFFF) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 0xFFFFFF) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v4)
    {
      v5 = ((a2 - 1) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else if (v4)
  {
    if (v4 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

uint64_t getEnumTag for ScrollInputKind.Storage(unsigned __int16 *a1)
{
  if (*(a1 + 2))
  {
    return (*a1 | (*(a1 + 2) << 16)) - 0xFFFF;
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for ScrollInputKind.Storage(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = ((a2 - 1) >> 16) + 1;
  }

  else
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t type metadata completion function for ScrollIndicatorsFlashModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ScrollIndicatorsFlashModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
  }

  return v3;
}

uint64_t initializeWithCopy for ScrollIndicatorsFlashModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);

  return a1;
}

uint64_t assignWithCopy for ScrollIndicatorsFlashModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);

  return a1;
}

uint64_t assignWithTake for ScrollIndicatorsFlashModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollIndicatorsFlashModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *storeEnumTagSinglePayload for ScrollIndicatorsFlashModifier(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = a2 - 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollEdgeEffectStyleTransform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = a1[1];
  if (v4 >= 2)
  {
    v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollEdgeEffectStyleTransform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransformScrollAccessories(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransformScrollAccessories(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransformScrollIndicators(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[17])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TransformScrollIndicators(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollIndicatorVisibility.Role and conformance ScrollIndicatorVisibility.Role()
{
  result = lazy protocol witness table cache variable for type ScrollIndicatorVisibility.Role and conformance ScrollIndicatorVisibility.Role;
  if (!lazy protocol witness table cache variable for type ScrollIndicatorVisibility.Role and conformance ScrollIndicatorVisibility.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollIndicatorVisibility.Role and conformance ScrollIndicatorVisibility.Role);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollEdgeEffectStyle.Role and conformance ScrollEdgeEffectStyle.Role()
{
  result = lazy protocol witness table cache variable for type ScrollEdgeEffectStyle.Role and conformance ScrollEdgeEffectStyle.Role;
  if (!lazy protocol witness table cache variable for type ScrollEdgeEffectStyle.Role and conformance ScrollEdgeEffectStyle.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollEdgeEffectStyle.Role and conformance ScrollEdgeEffectStyle.Role);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollInputBehavior.Storage and conformance ScrollInputBehavior.Storage()
{
  result = lazy protocol witness table cache variable for type ScrollInputBehavior.Storage and conformance ScrollInputBehavior.Storage;
  if (!lazy protocol witness table cache variable for type ScrollInputBehavior.Storage and conformance ScrollInputBehavior.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollInputBehavior.Storage and conformance ScrollInputBehavior.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollClipDisabledBehavior.Role and conformance ScrollClipDisabledBehavior.Role()
{
  result = lazy protocol witness table cache variable for type ScrollClipDisabledBehavior.Role and conformance ScrollClipDisabledBehavior.Role;
  if (!lazy protocol witness table cache variable for type ScrollClipDisabledBehavior.Role and conformance ScrollClipDisabledBehavior.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollClipDisabledBehavior.Role and conformance ScrollClipDisabledBehavior.Role);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollDismissesKeyboardMode.Role and conformance ScrollDismissesKeyboardMode.Role()
{
  result = lazy protocol witness table cache variable for type ScrollDismissesKeyboardMode.Role and conformance ScrollDismissesKeyboardMode.Role;
  if (!lazy protocol witness table cache variable for type ScrollDismissesKeyboardMode.Role and conformance ScrollDismissesKeyboardMode.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollDismissesKeyboardMode.Role and conformance ScrollDismissesKeyboardMode.Role);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollBounceBehavior.Role and conformance ScrollBounceBehavior.Role()
{
  result = lazy protocol witness table cache variable for type ScrollBounceBehavior.Role and conformance ScrollBounceBehavior.Role;
  if (!lazy protocol witness table cache variable for type ScrollBounceBehavior.Role and conformance ScrollBounceBehavior.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollBounceBehavior.Role and conformance ScrollBounceBehavior.Role);
  }

  return result;
}

double specialized implicit closure #1 in _GraphInputs.onScrollToTopGesture.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollToTopGestureActionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollToTopGestureActionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey);

    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t partial apply for closure #1 in ScrollIndicatorsFlashModifier.body(content:)()
{
  v1 = *(type metadata accessor for ScrollIndicatorsFlashModifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return closure #1 in ScrollIndicatorsFlashModifier.body(content:)(v2);
}

uint64_t outlined destroy of ScrollEnvironmentTransform?(uint64_t a1)
{
  type metadata accessor for ScrollEnvironmentTransform?(0, &lazy cache variable for type metadata for ScrollEnvironmentTransform?, type metadata accessor for ScrollEnvironmentTransform, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollIndicatorConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollIndicatorConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier>, TransformScrollStorageModifier<ScrollIndicatorFlashOnAppearModifier.UpdateIndicators>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier>, TransformScrollStorageModifier<ScrollIndicatorFlashOnAppearModifier.UpdateIndicators>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier>, TransformScrollStorageModifier<ScrollIndicatorFlashOnAppearModifier.UpdateIndicators>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier>, TransformScrollStorageModifier<ScrollIndicatorFlashOnAppearModifier.UpdateIndicators>>();
    lazy protocol witness table accessor for type _ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier>, lazy protocol witness table accessor for type ScrollIndicatorFlashOnAppearModifier and conformance ScrollIndicatorFlashOnAppearModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier>, TransformScrollStorageModifier<ScrollIndicatorFlashOnAppearModifier.UpdateIndicators>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier>, TransformScrollStorageModifier<ScrollIndicatorFlashOnAppearModifier.UpdateIndicators>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier>, TransformScrollStorageModifier<ScrollIndicatorFlashOnAppearModifier.UpdateIndicators>>)
  {
    type metadata accessor for _ViewModifier_Content<ResetScrollEnvironmentModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier>, lazy protocol witness table accessor for type ScrollIndicatorFlashOnAppearModifier and conformance ScrollIndicatorFlashOnAppearModifier);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(255, &lazy cache variable for type metadata for TransformScrollStorageModifier<ScrollIndicatorFlashOnAppearModifier.UpdateIndicators>, &unk_1EFFD8040, &protocol witness table for ScrollIndicatorFlashOnAppearModifier.UpdateIndicators, type metadata accessor for TransformScrollStorageModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier>, TransformScrollStorageModifier<ScrollIndicatorFlashOnAppearModifier.UpdateIndicators>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ScrollIndicatorStyle.Value and conformance ScrollIndicatorStyle.Value()
{
  result = lazy protocol witness table cache variable for type ScrollIndicatorStyle.Value and conformance ScrollIndicatorStyle.Value;
  if (!lazy protocol witness table cache variable for type ScrollIndicatorStyle.Value and conformance ScrollIndicatorStyle.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollIndicatorStyle.Value and conformance ScrollIndicatorStyle.Value);
  }

  return result;
}

Swift::String __swiftcall currentAppName()()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = specialized NSBundle.localizedValue(for:)(0xD000000000000013, 0x800000018CD4F860);
  v4 = v3;

  if (!v4)
  {
    v5 = [v0 mainBundle];
    v2 = specialized NSBundle.localizedValue(for:)(0x656C646E75424643, 0xEC000000656D614ELL);
    v4 = v6;

    if (!v4)
    {
      v7 = [objc_opt_self() processInfo];
      v8 = [v7 processName];

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v9;
    }
  }

  v10 = v2;
  v11 = v4;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t specialized NSBundle.localizedValue(for:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v6 = [v5 localizedInfoDictionary];

  if (v6)
  {
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v9 & 1) != 0))
    {
      outlined init with copy of Any(*(v7 + 56) + 32 * v8, v16);

      if (swift_dynamicCast())
      {
        return v17;
      }
    }

    else
    {
    }
  }

  v11 = [v4 mainBundle];
  v12 = [v11 infoDictionary];

  if (!v12)
  {
    return 0;
  }

  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v13 + 16) || (v14 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v15 & 1) == 0))
  {

    return 0;
  }

  outlined init with copy of Any(*(v13 + 56) + 32 * v14, v16);

  if (swift_dynamicCast())
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t RotatingDisclosureIndicator.body.getter@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if ((a1 & 0x100) != 0)
  {
    v4 = 1.57079633;
  }

  else
  {
    v4 = 0.0;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0x6465646E61707865;
  }

  else
  {
    v5 = 0x657370616C6C6F63;
  }

  if ((a1 & 0x100) != 0)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  AccessibilityProperties.init()();

  v12[0] = v5;
  v12[1] = v6;
  v13 = 0;
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v12);
  _s7SwiftUI7BindingVySbGMaTm_7(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v7 = swift_allocObject();
  memcpy((v7 + 16), __src, 0x128uLL);
  result = static UnitPoint.center.getter();
  *a2 = v2 & 1;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  *(a2 + 24) = v4;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  return result;
}

uint64_t closure #1 in static RotatingDisclosureIndicator.toggle(_:)()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in static RotatingDisclosureIndicator.toggle(_:)()
{
  _s7SwiftUI7BindingVySbGMaTm_7(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v1);
  return dispatch thunk of AnyLocation.set(_:transaction:)();
}

uint64_t protocol witness for View.body.getter in conformance RotatingDisclosureIndicator@<X0>(uint64_t a1@<X8>)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return RotatingDisclosureIndicator.body.getter(v2 | *v1, a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>, ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>, ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>, ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>, ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>, lazy protocol witness table accessor for type ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor> and conformance ViewInputFlagModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>, ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>, ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>, ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>();
    type metadata accessor for ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>, ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>)
  {
    type metadata accessor for ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>);
    }
  }
}

void type metadata accessor for ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>)
  {
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>);
    }
  }
}

void type metadata accessor for ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>()
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>)
  {
    lazy protocol witness table accessor for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor();
    v0 = type metadata accessor for ViewInputFlagModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _DisclosureIndicator and conformance _DisclosureIndicator()
{
  result = lazy protocol witness table cache variable for type _DisclosureIndicator and conformance _DisclosureIndicator;
  if (!lazy protocol witness table cache variable for type _DisclosureIndicator and conformance _DisclosureIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DisclosureIndicator and conformance _DisclosureIndicator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance DividerShape<A>(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for Animatable.animatableData.modify in conformance PlatterButtonStyleView<A>.ClippingShape;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance DividerShape<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4440](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance DividerShape<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for View.body.getter in conformance DividerShape<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4410](a1, WitnessTable);
}

uint64_t one-time initialization function for sharedColor()
{
  lazy protocol witness table accessor for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle();
  result = Color.init<A>(provider:)();
  static PlainDividerShapeStyle.sharedColor = result;
  return result;
}

uint64_t protocol witness for ShapeStyle.resolve(in:) in conformance PlainDividerShapeStyle@<X0>(_DWORD *a1@<X8>)
{
  result = specialized PlainDividerShapeStyle.resolve(in:)();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t protocol witness for ColorProvider.tag.getter in conformance PlainDividerShapeStyle@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Color.ProviderTag.SwiftUIPlatformTag();
  result = swift_allocObject();
  *(result + 16) = 1;
  *a1 = result;
  return result;
}

uint64_t protocol witness for ColorProvider.resolveHDR(in:) in conformance PlainDividerShapeStyle@<X0>(_DWORD *a1@<X8>)
{
  result = specialized PlainDividerShapeStyle.resolve(in:)();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = 2143289344;
  return result;
}

uint64_t specialized PlainDividerShapeStyle._apply(to:)()
{

  v0 = EnvironmentValues.isVisionEnabled.getter();

  if (v0)
  {
    return SeparatorShapeStyle._apply(to:)();
  }

  EnvironmentValues.backgroundMaterial.getter();

  if (v3 == 0xFF)
  {
    if (one-time initialization token for sharedColor != -1)
    {
      swift_once();
    }
  }

  else
  {
    outlined consume of Material?(v2, v3);
    static Color.quaternary.getter();
  }

  Color._apply(to:)();
}

void TableColumnForEach.IDGenerator.makeID(data:index:offset:)(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v14 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v13 - v10;
  if (a2)
  {
    v12 = dispatch thunk of Collection.subscript.read();
    (*(v8 + 16))(v11);
    v12(v15, 0);
    swift_getAtKeyPath();
    (*(v8 + 8))(v11, AssociatedTypeWitness);
  }

  else
  {
    v15[0] = a1;
    if (*(*(v14 - 8) + 64) == 8)
    {
      (*(*(v14 - 8) + 16))(a4, v15, v9);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t TableColumnForEach.content.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 84));

  return v2;
}

uint64_t TableColumnForEach.content.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 84));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t TableColumnForEach.init<>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return TableColumnForEach.init(_:id:content:)(a1, KeyPath, a2, a3, a4, a5);
}

uint64_t TableColumnForEach.init(_:id:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  result = type metadata accessor for TableColumnForEach();
  *(a6 + *(result + 88)) = a2;
  v11 = (a6 + *(result + 84));
  *v11 = a3;
  v11[1] = a4;
  return result;
}

double TableColumnForEach.init<>(_:content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v25[0] = a1;
  v25[1] = a2;
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a8;
  v16[6] = a3;
  v16[7] = a4;
  type metadata accessor for Range<Int>();
  v18 = v17;
  v19 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  (*(*(v18 - 8) + 32))(v26, v25, v18);
  v28 = v18;
  v29 = MEMORY[0x1E69E6530];
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = v19;
  v34 = MEMORY[0x1E69E6540];
  v35 = a8;
  v20 = type metadata accessor for TableColumnForEach();
  *(v26 + *(v20 + 88)) = 0;
  v21 = (v26 + *(v20 + 84));
  *v21 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Int) -> (@out D);
  v21[1] = v16;
  v22 = v27;
  result = *v26;
  v24 = v26[1];
  *a9 = v26[0];
  *(a9 + 16) = v24;
  *(a9 + 32) = v22;
  return result;
}

uint64_t static TableColumnForEach._makeContent(content:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *&v26 = a7;
  *(&v26 + 1) = a8;
  v49 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  v27 = *a1;
  v14 = *(a2 + 48);
  v45[2] = *(a2 + 32);
  v46 = v14;
  v47 = *(a2 + 64);
  v48 = *(a2 + 80);
  v15 = *(a2 + 16);
  v45[0] = *a2;
  v45[1] = v15;
  *&v39 = a3;
  *(&v39 + 1) = a4;
  *&v40 = a7;
  *(&v40 + 1) = a8;
  v41 = a9;
  type metadata accessor for TableColumnForEachState();
  v16 = *(a2 + 48);
  v41 = *(a2 + 32);
  v42 = v16;
  v43 = *(a2 + 64);
  v44 = *(a2 + 80);
  v17 = *(a2 + 16);
  v39 = *a2;
  v40 = v17;
  outlined init with copy of _TableColumnInputs(v45, &v37);
  swift_allocObject();
  v18 = TableColumnForEachState.init(inputs:)(&v39);
  LODWORD(v37) = v13;

  *&v39 = a3;
  *(&v39 + 1) = a4;
  *&v40 = a5;
  *(&v40 + 1) = a6;
  v41 = v26;
  v42 = a9;
  type metadata accessor for TableColumnForEach();
  type metadata accessor for _GraphValue();
  v19 = _GraphValue.value.getter();
  v37 = v18;
  v38 = v19;
  *&v39 = a3;
  *(&v39 + 1) = a4;
  v40 = v26;
  v41 = a9;
  v34 = type metadata accessor for TableColumnForEachState.Info();
  *&v39 = a3;
  *(&v39 + 1) = a4;
  v40 = v26;
  v41 = a9;
  v35 = type metadata accessor for TableColumnForEachState.Info.Init();
  WitnessTable = swift_getWitnessTable();
  v20 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v37, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v33, v35, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);

  v18[28] = v39;
  *(v18 + 116) = 0;
  LODWORD(v39) = v27;

  v22 = _GraphValue.value.getter();
  v37 = v18;
  v38 = v22;
  *&v39 = a3;
  *(&v39 + 1) = a4;
  *&v40 = a5;
  *(&v40 + 1) = a6;
  v41 = v26;
  v42 = a9;
  List = type metadata accessor for TableColumnForEach.MakeList();
  v32 = swift_getWitnessTable();
  type metadata accessor for Attribute<TableColumnList>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v37, closure #1 in Attribute.init<A>(_:)partial apply, v30, List, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);

  v18[30] = v39;
  *(v18 + 124) = 0;
  PreferencesOutputs.init()();
  *&v39 = v46;
  DWORD2(v39) = DWORD2(v46);

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
}

uint64_t TableColumnForEach.MakeList.forEach.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TableColumnForEach();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t TableColumnForEach.MakeList.value.getter@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v25 = a6;
  v26 = a8;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v35 = a10;
  v36 = a11;
  v23 = a10;
  v24 = a11;
  v27 = type metadata accessor for TableColumnForEach();
  v17 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v19 = &v23 - v18;

  v21 = v25;
  v20 = v26;
  TableColumnForEach.MakeList.forEach.getter(v19);
  TableColumnForEachState.update(forEach:)(v19);
  (*(v17 + 8))(v19, v27);
  LODWORD(v17) = *(a1 + *(*a1 + 184));
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = v21;
  v33 = a7;
  v34 = v20;
  v35 = v23;
  v36 = v24;
  result = type metadata accessor for TableColumnForEach.DynamicTableColumnList();
  *(a9 + 24) = result;
  *(a9 + 32) = &protocol witness table for TableColumnForEach<A, B, C, D, E>.DynamicTableColumnList;
  *a9 = a1;
  *(a9 + 8) = v17;
  return result;
}

uint64_t TableColumnForEachState.update(forEach:)(uint64_t a1)
{
  v195 = a1;
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 104);
  v189 = *(*(v5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v173 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v191 = (&v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v172 = &v163 - v8;
  v9 = *(v2 + 88);
  v177 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v194 = &v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v187 = &v163 - v13;
  v14 = *(v2 + 96);
  *&v15 = v4;
  *(&v15 + 1) = v9;
  *&v16 = v14;
  v186 = v5;
  *(&v16 + 1) = v5;
  v198 = v16;
  v190 = v3;
  v17 = *(v3 + 112);
  v206 = v15;
  v207 = v16;
  v175 = v17;
  v208 = v17;
  v18 = *(&v17 + 1);
  v19 = type metadata accessor for TableColumnForEachState.Item();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = type metadata accessor for Optional();
  v167 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v192 = &v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v180 = &v163 - v24;
  v171 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v168 = &v163 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v170 = &v163 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v169 = &v163 - v30;
  v31 = swift_getAssociatedTypeWitness();
  v184 = v18;
  v185 = v14;
  v32 = swift_getAssociatedTypeWitness();
  v196 = v4;
  *&v206 = v4;
  *(&v206 + 1) = v9;
  v183 = v31;
  *&v207 = v31;
  *(&v207 + 1) = v32;
  v182 = v32;
  v209 = v175;
  v208 = v198;
  v33 = type metadata accessor for TableColumnForEach();
  v34 = type metadata accessor for Optional();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v163 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v163 - v39;
  v197 = v1;
  result = AGSubgraphIsValid();
  if (!result)
  {
    return result;
  }

  v166 = v37;
  v176 = v21;
  v179 = TupleTypeMetadata2;
  v42 = *(v190 + 184);
  v43 = v197;
  v178 = *(v197 + v42);
  v188 = v42;
  *(v197 + v42) = v178 + 1;
  v44 = v43 + *(*v43 + 160);
  swift_beginAccess();
  v45 = *(v35 + 16);
  v174 = v44;
  v45(v40, v44, v34);
  v46 = v35;
  v47 = *(v33 - 8);
  v48 = *(v47 + 48);
  LODWORD(v44) = v48(v40, 1, v33);
  v165 = v46;
  (*(v46 + 8))(v40, v34);
  v190 = v19;
  *&v198 = v9;
  v49 = v172;
  v181 = v33;
  if (v44 != 1)
  {
    v164 = v48;
    result = v48(v174, 1, v33);
    if (result == 1)
    {
      goto LABEL_64;
    }

    if (!*&v174[*(v33 + 88)])
    {
      v194 = v34;
      v103 = v196;
      v104 = v171;
      v105 = *(v171 + 16);
      v106 = v169;
      v105(v169, v174, v196);
      v107 = dispatch thunk of Collection.count.getter();
      v108 = *(v104 + 8);
      v184 = v104 + 8;
      v183 = v108;
      v108(v106, v103);
      if (v107 != dispatch thunk of Collection.count.getter())
      {
        v204 = 0;
        v205 = 0xE000000000000000;
        _StringGuts.grow(_:)(205);
        v109 = v181;
        v110 = _typeName(_:qualified:)();
        MEMORY[0x18D00C9B0](v110);

        MEMORY[0x18D00C9B0](0x2820746E756F6320, 0xE800000000000000);
        v111 = v196;
        v201 = dispatch thunk of Collection.count.getter();
        v112 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v112);

        MEMORY[0x18D00C9B0](0xD000000000000018, 0x800000018CD4F950);
        result = v164(v174, 1, v109);
        if (result == 1)
        {
LABEL_67:
          __break(1u);
          return result;
        }

        v113 = v169;
        v105(v169, v174, v111);
        v114 = dispatch thunk of Collection.count.getter();
        v183(v113, v111);
        v201 = v114;
        v115 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v115);

        MEMORY[0x18D00C9B0](0xD0000000000000A7, 0x800000018CD4F970);
        MEMORY[0x18D009810](v204, v205);
      }

      v116 = v181;
      v117 = v164;
      result = v164(v174, 1, v181);
      if (result == 1)
      {
        goto LABEL_65;
      }

      v118 = v170;
      v119 = v174;
      v120 = v196;
      v105(v170, v174, v196);
      v121 = v166;
      (*(v47 + 16))(v166, v195, v116);
      (*(v47 + 56))(v121, 0, 1, v116);
      swift_beginAccess();
      (*(v165 + 40))(v119, v121, v194);
      v122 = v168;
      v105(v168, v118, v120);
      result = v117(v119, 1, v116);
      if (result != 1)
      {
        (*(v171 + 40))(v174, v122, v120);
        swift_endAccess();
        v123 = v197;
        v124 = *(*v197 + 176);
        swift_beginAccess();
        v125 = *(v123 + v124);
        v126 = v179;
        v127 = v176;
        v128 = v192;
        v129 = v180;
        if ((v125 & 0xC000000000000001) != 0)
        {
          v130 = __CocoaDictionary.makeIterator()();
          v131 = 0;
          v132 = 0;
          v133 = 0;
          v134 = v130 | 0x8000000000000000;
        }

        else
        {
          v135 = -1 << *(v125 + 32);
          v132 = ~v135;
          v131 = v125 + 64;
          v136 = -v135;
          if (v136 < 64)
          {
            v137 = ~(-1 << v136);
          }

          else
          {
            v137 = -1;
          }

          v133 = v137 & *(v125 + 64);
          v134 = v125;
        }

        v186 = (v177 + 32);
        AssociatedTypeWitness = v126 - 8;
        v182 = v132;
        v138 = (v132 + 64) >> 6;
        v185 = v177 + 16;
        v191 = (v167 + 32);
        v189 = (v177 + 8);

        v139 = 0;
        v195 = v134;
        while (1)
        {
          v194 = v133;
          if ((v134 & 0x8000000000000000) != 0)
          {
            if (__CocoaDictionary.Iterator.next()())
            {
              v155 = v187;
              v156 = v198;
              _forceBridgeFromObjectiveC<A>(_:_:)();
              swift_unknownObjectRelease();
              _forceBridgeFromObjectiveC<A>(_:_:)();
              swift_unknownObjectRelease();
              v157 = v133;
              v158 = *(v126 + 48);
              v159 = v155;
              v128 = v192;
              v160 = v156;
              v129 = v180;
              (*v186)(v192, v159, v160);
              *&v128[v158] = v201;
              v154 = *(v126 - 8);
              (*(v154 + 56))(v128, 0, 1, v126);
              v143 = v139;
              v133 = v157;
              v127 = v176;
            }

            else
            {
              v154 = *(v126 - 8);
              (*(v154 + 56))(v128, 1, 1, v126);
              v143 = v139;
            }
          }

          else
          {
            v140 = v133;
            v141 = v139;
            if (!v133)
            {
              if (v138 <= v139 + 1)
              {
                v142 = v139 + 1;
              }

              else
              {
                v142 = v138;
              }

              v143 = v142 - 1;
              v144 = v139;
              while (1)
              {
                v141 = v144 + 1;
                if (__OFADD__(v144, 1))
                {
                  break;
                }

                if (v141 >= v138)
                {
                  v154 = *(v126 - 8);
                  (*(v154 + 56))(v128, 1, 1, v126);
                  v133 = 0;
                  goto LABEL_53;
                }

                v140 = *(v131 + 8 * v141);
                ++v144;
                if (v140)
                {
                  goto LABEL_52;
                }
              }

              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
              break;
            }

LABEL_52:
            v133 = (v140 - 1) & v140;
            v145 = __clz(__rbit64(v140)) | (v141 << 6);
            v146 = v177;
            v147 = v187;
            v148 = v198;
            (*(v177 + 16))(v187, *(v134 + 48) + *(v177 + 72) * v145, v198);
            v149 = *(*(v134 + 56) + 8 * v145);
            v150 = *(v179 + 48);
            v151 = *(v146 + 32);
            v152 = v147;
            v127 = v176;
            v126 = v179;
            v153 = v148;
            v128 = v192;
            v151(v192, v152, v153);
            *&v128[v150] = v149;
            v154 = *(v126 - 8);
            (*(v154 + 56))(v128, 0, 1, v126);

            v143 = v141;
LABEL_53:
            v129 = v180;
          }

          (*v191)(v129, v128, v127);
          if ((*(v154 + 48))(v129, 1, v126) == 1)
          {
            v183(v170, v196);
            return outlined consume of Set<UIPress>.Iterator._Variant();
          }

          v161 = *&v129[*(v126 + 48)];
          v162 = *(*v161 + 176);
          v134 = v195;
          if (*(v161 + v162) == v178)
          {
            *(v161 + v162) = *(v197 + v188);
          }

          result = (*v189)(v129, v198);
          v139 = v143;
        }
      }

      __break(1u);
      goto LABEL_67;
    }
  }

  v50 = v175;
  v51 = v166;
  (*(v47 + 16))(v166, v195, v33);
  (*(v47 + 56))(v51, 0, 1, v33);
  v52 = v174;
  swift_beginAccess();
  (*(v165 + 40))(v52, v51, v34);
  swift_endAccess();
  dispatch thunk of Collection.startIndex.getter();
  v53 = v19;
  dispatch thunk of Collection.endIndex.getter();
  v54 = *(*v197 + 176);
  swift_beginAccess();

  v192 = v50;
  v56 = MEMORY[0x18D00C470](v55, v9, v19, v50);

  if (v56)
  {
    v57 = 0;
    v180 = *(swift_getAssociatedConformanceWitness() + 8);
    v179 = v173 + 24;
    v58 = (v177 + 8);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v59 = v192;
      v60 = v53;
      v61 = v194;
      v62 = v198;
      TableColumnForEach.IDGenerator.makeID(data:index:offset:)(v57, *(v195 + *(v181 + 88)), v198, v194);
      v63 = v49;
      v64 = v197;
      swift_beginAccess();
      v65 = v61;
      v53 = v60;
      MEMORY[0x18D00C560](&v200, v65, *(v64 + v54), v62, v60, v59);
      v66 = v200;
      if (v200)
      {
        swift_endAccess();
        v67 = *(*v66 + 160);
        swift_beginAccess();
        v68 = v66 + v67;
        v69 = v197;
        v53 = v190;
        (*v179)(v68, v63, AssociatedTypeWitness);
        swift_endAccess();
        *(v66 + *(*v66 + 168)) = v57;
        *(v66 + *(*v66 + 176)) = *(v69 + v188);

        --v56;
      }

      else
      {
        swift_endAccess();
      }

      dispatch thunk of Collection.formIndex(after:)();
      (*v58)(v194, v198);
      ++v57;
      v49 = v63;
      if (!v56)
      {
        goto LABEL_12;
      }
    }

    v200 = Array.init()();

    v73 = v198;
    v74 = v53;
    v75 = v192;
    v76 = MEMORY[0x18D00C400](v72, v198, v74, v192);
    v78 = v77;
    v80 = v79;

    v201 = v76;
    v202 = v78;
    v81 = v80 & 1;
    v82 = v190;
    v203 = v81;

    v196 = MEMORY[0x18D00C500](v83, v73, v82, v75);
    v195 = v84;
    LODWORD(v194) = v85;

    do
    {
      if (static Dictionary.Index.== infix(_:_:)())
      {
        break;
      }

      v88 = v197;

      v89 = v187;
      v90 = v198;
      Dictionary.subscript.getter();

      (*v58)(v89, v90);
      if ((*(v199 + *(*v199 + 192)) & 1) != 0 || *(v199 + *(*v199 + 176)) == *(v88 + v188))
      {
        v82 = v190;
      }

      else
      {
        v91 = v190;
        type metadata accessor for Array();

        v82 = v91;
        v90 = v198;
        Array.append(_:)();
        --v56;
      }

      v86 = v192;
      v87 = *(v197 + v54);

      MEMORY[0x18D00C510](&v201, v87, v90, v82, v86);
    }

    while (v56);
    v92 = v200;
    v93 = MEMORY[0x18D00CDE0](v200, v82);
    v94 = v173;
    if (v93)
    {
      v95 = 4;
      do
      {
        v96 = v95 - 4;
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          v98 = *(v92 + 8 * v95);

          v99 = __OFADD__(v96, 1);
          v100 = v95 - 3;
          if (v99)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v98 = _ArrayBuffer._getElementSlowPath(_:)();
          v99 = __OFADD__(v96, 1);
          v100 = v95 - 3;
          if (v99)
          {
LABEL_28:
            __break(1u);
            break;
          }
        }

        TableColumnForEachState.eraseItem(_:)(v98);

        ++v95;
      }

      while (v100 != MEMORY[0x18D00CDE0](v92, v82));
    }

    outlined consume of Set<UIOpenURLContext>.Index._Variant(v196, v195, v194 & 1);

    v101 = *(v94 + 8);
    v102 = AssociatedTypeWitness;
    v101(v191, AssociatedTypeWitness);
    v101(v172, v102);
    return outlined consume of Set<UIOpenURLContext>.Index._Variant(v201, v202, v203);
  }

  else
  {
LABEL_12:
    v70 = *(v173 + 8);
    v71 = AssociatedTypeWitness;
    v70(v191, AssociatedTypeWitness);
    return (v70)(v49, v71);
  }
}

uint64_t TableColumnForEach.DynamicTableColumnList.visitColumns<A>(applying:from:)(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a10;
  v15[5] = a14;
  v15[6] = a3;
  v16 = a4;
  v17 = a1;
  return TableColumnForEachState.forEachItem(from:do:)(a2, partial apply for closure #1 in TableColumnForEach.DynamicTableColumnList.visitColumns<A>(applying:from:), v15) & 1;
}

uint64_t closure #1 in TableColumnForEach.DynamicTableColumnList.visitColumns<A>(applying:from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a3 + 124) == 1)
  {
    __break(1u);
  }

  else
  {
    v20 = v9;
    v21 = v10;
    v13 = result;
    type metadata accessor for TableColumnList();
    InputValue = AGGraphGetInputValue();
    outlined init with copy of _Benchmark(InputValue, v17);
    v15 = v18;
    v16 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    LOBYTE(a8) = (*(v16 + 16))(a5, v13, a8, a9, v15, v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return a8 & 1;
  }

  return result;
}

uint64_t TableColumnForEachState.forEachItem(from:do:)(uint64_t *a1, uint64_t (*a2)(uint64_t *, uint64_t), uint64_t a3)
{
  v136 = a3;
  v135 = a2;
  v146 = *v3;
  v142 = v146[13];
  v5 = *(*(v142 + 8) + 8);
  v6 = v146[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v130 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v129 = &v120 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v126 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v143 = &v120 - v10;
  v141 = v6;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v149 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v120 - v15;
  v17 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v150 = &v120 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v128 = &v120 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v140 = &v120 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v120 - v28;
  result = AGSubgraphIsValid();
  if (result)
  {
    v127 = v29;
    v160 = 0;
    v31 = TableColumnForEachState.fetchColumnsPerElement()();
    v147 = v5;
    v137 = v8;
    if (v32)
    {
      v120 = v9;
      v125 = v20;
      v138 = v17;
      v151 = 0;
      v33 = *(*v3 + 160);
      swift_beginAccess();
      v34 = v146;
      v35 = v146[15];
      v36 = v146[11];
      v37 = v146[12];
      v38 = swift_getAssociatedTypeWitness();
      v39 = swift_getAssociatedTypeWitness();
      v40 = v34[14];
      v41 = v141;
      v152 = v141;
      v153 = v36;
      v133 = v36;
      v154 = v38;
      v155 = v39;
      v132 = v37;
      v156 = v37;
      v157 = v142;
      v131 = v40;
      v158 = v40;
      v159 = v35;
      v134 = v35;
      v42 = type metadata accessor for TableColumnForEach();
      v43 = *(v42 - 8);
      v123 = *(v43 + 48);
      v122 = v43 + 48;
      result = v123(&v3[v33], 1, v42);
      if (result == 1)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v44 = *(v11 + 16);
      v121 = v33;
      v45 = &v3[v33];
      v46 = v3;
      v47 = v149;
      v146 = (v11 + 16);
      v44(v149, v45, v41);
      v48 = v129;
      dispatch thunk of Collection.indices.getter();
      v49 = *(v11 + 8);
      v148 = v11 + 8;
      v144 = v49;
      v50 = (v49)(v47, v41);
      MEMORY[0x1EEE9AC00](v50);
      *(&v120 - 4) = v46;
      *(&v120 - 3) = &v160;
      *(&v120 - 2) = a1;
      *(&v120 - 1) = &v151;
      v51 = AssociatedTypeWitness;
      swift_getAssociatedConformanceWitness();
      v52 = v143;
      Sequence.first(where:)();
      v124 = 0;
      v130[1](v48, v51);
      v17 = v138;
      v53 = *(v138 + 48);
      v54 = v137;
      v55 = v53(v52, 1, v137);
      v145 = v44;
      if (v55 == 1)
      {
        v56 = v121;
        result = v123((v46 + v121), 1, v42);
        if (result == 1)
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v57 = (v46 + v56);
        v58 = v149;
        v59 = v141;
        (v145)(v149, v57, v141);
        v60 = v128;
        dispatch thunk of Collection.endIndex.getter();
        v144(v58, v59);
        v61 = v143;
        v8 = v137;
        v62 = v53(v143, 1, v137);
        v63 = v60;
        v20 = v125;
        if (v62 != 1)
        {
          (*(v126 + 8))(v61, v120);
        }
      }

      else
      {
        v63 = v128;
        (*(v17 + 32))(v128, v52, v54);
        v59 = v141;
        v8 = v54;
        v20 = v125;
      }

      v89 = v127;
      (*(v17 + 32))(v127, v63, v8);
      v90 = v150;
      v88 = *a1 - v151;
      if (!__OFSUB__(*a1, v151))
      {
LABEL_18:
        *a1 = v88;
        v106 = *(v17 + 16);
        v105 = v17 + 16;
        v130 = v106;
        (v106)(v90, v89, v8);
        v107 = *(*v46 + 160);
        swift_beginAccess();
        AssociatedTypeWitness = v105 - 8;
        v129 = v88 & ~(v88 >> 63);
        v138 = v105;
        v128 = v107;
        while (1)
        {
          (v130)(v20, v90, v8);
          v108 = v134;
          v109 = v132;
          v110 = swift_getAssociatedTypeWitness();
          v111 = swift_getAssociatedTypeWitness();
          v152 = v59;
          v153 = v133;
          v154 = v110;
          v155 = v111;
          v156 = v109;
          v157 = v142;
          v158 = v131;
          v159 = v108;
          v112 = type metadata accessor for TableColumnForEach();
          v143 = *(*(v112 - 8) + 48);
          result = (v143)(&v107[v46], 1, v112);
          if (result == 1)
          {
            break;
          }

          v113 = v149;
          (v145)(v149, &v107[v46], v59);
          v114 = v140;
          dispatch thunk of Collection.endIndex.getter();
          v144(v113, v59);
          swift_getAssociatedConformanceWitness();
          LOBYTE(v113) = dispatch thunk of static Equatable.== infix(_:_:)();
          v115 = *AssociatedTypeWitness;
          (*AssociatedTypeWitness)(v114, v8);
          v115(v20, v8);
          if (v113)
          {
            v115(v150, v8);
            v115(v127, v8);
            return 1;
          }

          v116 = v160;
          v117 = TableColumnForEachState.item(at:offset:)(v150, v160);
          *a1 = v129;
          if ((v135(a1, v117) & 1) == 0)
          {

            v119 = v137;
            v115(v150, v137);
            v115(v127, v119);
            return 0;
          }

          v160 = v116 + 1;
          *a1 = 0;
          v107 = v128;
          result = (v143)(&v128[v46], 1, v112);
          if (result == 1)
          {
            goto LABEL_28;
          }

          v118 = v149;
          v59 = v141;
          (v145)(v149, &v107[v46], v141);
          v90 = v150;
          dispatch thunk of Collection.formIndex(after:)();

          v144(v118, v59);
          v8 = v137;
        }

        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      __break(1u);
    }

    else
    {
      v46 = v3;
      v148 = v11;
      if (v31 >= 1)
      {
        v125 = v20;
        v138 = v17;
        v64 = *a1;
        AssociatedTypeWitness = v31;
        v130 = v64;
        v129 = v64 / v31;
        v160 = v64 / v31;
        v65 = *(*v3 + 160);
        swift_beginAccess();
        v66 = v146;
        v67 = v146[15];
        v69 = v146[11];
        v68 = v146[12];
        v70 = swift_getAssociatedTypeWitness();
        v71 = swift_getAssociatedTypeWitness();
        v72 = v66[14];
        v73 = v141;
        v152 = v141;
        v153 = v69;
        v133 = v69;
        v154 = v70;
        v155 = v71;
        v74 = v65;
        v132 = v68;
        v156 = v68;
        v157 = v142;
        v131 = v72;
        v158 = v72;
        v159 = v67;
        v134 = v67;
        v75 = type metadata accessor for TableColumnForEach();
        v76 = *(*(v75 - 8) + 48);
        v143 = v46;
        v146 = v76;
        result = (v76)(v46 + v74, 1, v75);
        if (result == 1)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v77 = v148;
        v78 = (v148 + 16);
        v79 = *(v148 + 16);
        v80 = v143;
        v79(v16, &v143[v74], v73);
        result = (v146)(&v80[v74], 1, v75);
        if (result == 1)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v81 = v149;
        v146 = v78;
        v145 = v79;
        v79(v149, &v143[v74], v73);
        v82 = v140;
        dispatch thunk of Collection.startIndex.getter();
        v83 = *(v77 + 8);
        v83(v81, v73);
        v84 = v127;
        v85 = v129;
        dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
        v86 = v138;
        v87 = v137;
        (*(v138 + 8))(v82, v137);
        v148 = v77 + 8;
        v144 = v83;
        v83(v16, v73);
        v124 = 0;
        v88 = v130 - v85 * AssociatedTypeWitness;
        v46 = v143;
        v8 = v87;
        v89 = v84;
        v59 = v73;
        v17 = v86;
        v90 = v150;
        v20 = v125;
        goto LABEL_18;
      }
    }

    v160 = 0;
    v145 = *(*v46 + 160);
    swift_beginAccess();
    v91 = v146;
    v92 = v146[15];
    v93 = v146[11];
    v94 = v146[12];
    v144 = swift_getAssociatedTypeWitness();
    v95 = swift_getAssociatedTypeWitness();
    v96 = v91[14];
    v59 = v141;
    v152 = v141;
    v153 = v93;
    v133 = v93;
    v97 = v145;
    v154 = v144;
    v155 = v95;
    v132 = v94;
    v156 = v94;
    v157 = v142;
    v131 = v96;
    v158 = v96;
    v159 = v92;
    v134 = v92;
    v98 = type metadata accessor for TableColumnForEach();
    result = (*(*(v98 - 8) + 48))(&v97[v46], 1, v98);
    if (result == 1)
    {
LABEL_33:
      __break(1u);
      return result;
    }

    v100 = v148;
    v99 = v149;
    v101 = *(v148 + 16);
    v146 = (v148 + 16);
    v145 = v101;
    (v101)(v149, &v97[v46], v59);
    v102 = v127;
    dispatch thunk of Collection.endIndex.getter();
    v103 = *(v100 + 8);
    v104 = v99;
    v89 = v102;
    v148 = v100 + 8;
    v144 = v103;
    v103(v104, v59);
    v88 = 0;
    v124 = 0;
    v90 = v150;
    goto LABEL_18;
  }

  return result;
}

uint64_t TableColumnForEachState.count()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v26 - v5;
  if (!AGSubgraphIsValid())
  {
    return 0;
  }

  v7 = TableColumnForEachState.fetchColumnsPerElement()();
  if (v8)
  {
    v35 = 0;
    v36 = 0;
    MEMORY[0x1EEE9AC00](v7);
    *(&v26 - 2) = &v35;
    *(&v26 - 1) = v1;
    TableColumnForEachState.forEachItem(from:do:)(&v36, partial apply for closure #1 in TableColumnForEachState.count(), (&v26 - 2));
    v9 = *(*v1 + 160);
    swift_beginAccess();
    v10 = *(v2 + 120);
    v12 = *(v2 + 88);
    v11 = *(v2 + 96);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v14 = swift_getAssociatedTypeWitness();
    v28 = v3;
    v29 = v12;
    v30 = AssociatedTypeWitness;
    v31 = v14;
    v32 = v11;
    v27 = *(v2 + 104);
    v33 = v27;
    v34 = v10;
    v15 = type metadata accessor for TableColumnForEach();
    result = (*(*(v15 - 8) + 48))(v1 + v9, 1, v15);
    if (result != 1)
    {
      (*(v4 + 16))(v6, v1 + v9, v3);
      v17 = dispatch thunk of Collection.count.getter();
      (*(v4 + 8))(v6, v3);
      return v17;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *&v27 = v7;
  v18 = *(*v1 + 160);
  swift_beginAccess();
  v19 = *(v2 + 120);
  v21 = *(v2 + 88);
  v20 = *(v2 + 96);
  v22 = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedTypeWitness();
  v28 = v3;
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v32 = v20;
  v26 = *(v2 + 104);
  v33 = v26;
  v34 = v19;
  v24 = type metadata accessor for TableColumnForEach();
  result = (*(*(v24 - 8) + 48))(v1 + v18, 1, v24);
  if (result != 1)
  {
    (*(v4 + 16))(v6, v1 + v18, v3);
    v25 = dispatch thunk of Collection.count.getter();
    (*(v4 + 8))(v6, v3);
    result = v25 * v27;
    if ((v25 * v27) >> 64 == (v25 * v27) >> 63)
    {
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t TableColumnForEachState.fetchColumnsPerElement()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 104);
  v5 = *(*(v4 + 8) + 8);
  v6 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v32 - v13;
  v15 = (v1 + v2[21]);
  v16 = v15[8];
  if (v16 != 1 || *v15 != 0)
  {
    if (v16)
    {
      return 0;
    }

    return *v15;
  }

  v38 = v5;
  v39 = v12;
  v33 = v11;
  v34 = v10;
  v19 = v3[15];
  v37 = v3[14];
  v20 = v3[11];
  v21 = v3[12];
  v35 = v9;
  v36 = v20;
  v22 = v3[20];
  swift_beginAccess();
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  v40 = v6;
  v41 = v36;
  v42 = v23;
  v43 = v24;
  v44 = v21;
  v45 = v4;
  v46 = v37;
  v47 = v19;
  v25 = type metadata accessor for TableColumnForEach();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  v36 = v26 + 48;
  v37 = v27;
  result = v27(v1 + v22, 1, v25);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v28 = v39;
  v32 = *(v39 + 16);
  v32(v14, v1 + v22, v6);
  v29 = dispatch thunk of Collection.isEmpty.getter();
  v30 = *(v28 + 8);
  v39 = v28 + 8;
  v30(v14, v6);
  if (v29)
  {
    goto LABEL_11;
  }

  result = v37(v1 + v22, 1, v25);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v32(v14, v1 + v22, v6);
  v31 = v33;
  dispatch thunk of Collection.startIndex.getter();
  v30(v14, v6);
  TableColumnForEachState.item(at:offset:)(v31, 0);

  (*(v34 + 8))(v31, v35);
LABEL_11:
  if (v15[8])
  {
    return 0;
  }

  return *v15;
}

uint64_t static TableColumnForEachState.ElementCount.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v4 = a4 & (a3 != 0);
  if (!a1)
  {
    v4 = a4 & (a3 == 0);
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return (a1 == a3) & ~a4;
  }
}

id TableColumnForEachState.init(inputs:)(__int128 *a1)
{
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = *(a1 + 20);
  v7 = *a1;
  v8 = a1[1];
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *(v1 + 104) = result;
    *(v1 + 112) = 0;
    *(v1 + 116) = 1;
    *(v1 + 120) = 0;
    *(v1 + 124) = 1;
    v3 = *(*v1 + 160);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    v4 = type metadata accessor for TableColumnForEach();
    (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
    v5 = v1 + *(*v1 + 168);
    *v5 = 0;
    *(v5 + 8) = 1;
    v6 = *(*v1 + 176);
    type metadata accessor for TableColumnForEachState.Item();
    *(v1 + v6) = Dictionary.init()();
    *(v1 + *(*v1 + 184)) = 0;
    *(v1 + 48) = v9;
    *(v1 + 64) = v10;
    *(v1 + 80) = v11;
    *(v1 + 96) = v12;
    *(v1 + 16) = v7;
    *(v1 + 32) = v8;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TableColumnForEachState.eraseItem(_:)(uint64_t a1)
{
  AGSubgraphRef.willRemove()();
  AGSubgraphRemoveChild();
  *(a1 + *(*a1 + 192)) = 1;
  return TableColumnForEachState.Item.release()();
}

uint64_t TableColumnForEachState.item(at:offset:)(uint64_t a1, uint64_t a2)
{
  v106 = a1;
  v107 = a2;
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 104);
  v88 = *(*(v6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v96 = *(AssociatedTypeWitness - 8);
  v97 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v93 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v87 = &v86 - v10;
  v100 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v86 - v12;
  v13 = v3[11];
  v105 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v95 = &v86 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v109 = &v86 - v19;
  v20 = &v2[v3[20]];
  swift_beginAccess();
  v21 = v3[12];
  v110 = *(v4 + 112);
  v22 = *(&v110 + 1);
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  *&v123 = v5;
  *(&v123 + 1) = v13;
  v108 = v13;
  v98 = v24;
  v99 = v23;
  *&v124 = v23;
  *(&v124 + 1) = v24;
  *&v25 = v21;
  v101 = v6;
  *(&v25 + 1) = v6;
  v125 = v25;
  v126 = v110;
  v26 = type metadata accessor for TableColumnForEach();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v91 = v27 + 48;
  v92 = v28;
  result = v28(v20, 1, v26);
  if (result == 1)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v94 = v26;
  v30 = v20;
  v31 = *&v20[*(v26 + 88)];
  v32 = v100;
  v33 = *(v100 + 16);
  v34 = v102;
  v89 = v30;
  v33(v102);

  v104 = v110;
  v103 = v22;
  v35 = v101;
  v36 = v108;
  v37 = v109;
  TableColumnForEach.IDGenerator.makeID(data:index:offset:)(v107, v31, v108, v109);

  (*(v32 + 8))(v34, v5);
  v38 = *(*v2 + 176);
  swift_beginAccess();
  v39 = *&v2[v38];
  v102 = v5;
  *&v40 = v5;
  v41 = v104;
  *(&v40 + 1) = v36;
  *&v42 = v21;
  *(&v42 + 1) = v35;
  v123 = v40;
  v124 = v42;
  *&v125 = v110;
  *(&v125 + 1) = v103;
  v43 = type metadata accessor for TableColumnForEachState.Item();
  MEMORY[0x18D00C560](&v112, v37, v39, v36, v43, v41);
  v44 = v112;
  if (v112)
  {
    swift_endAccess();
    v45 = *v44;
    if (*(v44 + *(*v44 + 192)) == 1)
    {
      TableColumnForEachState.uneraseItem(_:)(v44);
      v45 = *v44;
    }

    v46 = v45[22];
    v47 = *(*v2 + 184);
    v48 = v107;
    if (*(v44 + v46) == *&v2[v47])
    {
      v49 = v45[25];
      if ((*(v44 + v49) & 1) == 0)
      {
        v50 = v45[20];
        swift_beginAccess();
        v52 = v96;
        v51 = v97;
        v53 = v87;
        (*(v96 + 16))(v87, v44 + v50, v97);
        swift_getAssociatedConformanceWitness();
        LOBYTE(v50) = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v52 + 8))(v53, v51);
        if ((v50 & 1) == 0)
        {
          *(v44 + v49) = 1;
          *&v118[0] = 0;
          *(&v118[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(92);
          v84 = _typeName(_:qualified:)();
          MEMORY[0x18D00C9B0](v84);

          MEMORY[0x18D00C9B0](0x444920656874203ALL, 0xE900000000000020);
          v54 = v108;
          v85 = v109;
          DefaultStringInterpolation.appendInterpolation<A>(_:)();
          MEMORY[0x18D00C9B0](0xD00000000000004FLL, 0x800000018CD4FA20);
          MEMORY[0x18D009810](*&v118[0], *(&v118[0] + 1));

          v83 = v85;
          goto LABEL_20;
        }
      }

      v54 = v108;
    }

    else
    {
      v82 = v45[20];
      swift_beginAccess();
      (*(v96 + 24))(v44 + v82, v106, v97);
      swift_endAccess();
      *(v44 + *(*v44 + 168)) = v48;
      *(v44 + v46) = *&v2[v47];
      v54 = v108;
    }

LABEL_19:
    v83 = v109;
LABEL_20:
    (*(v105 + 8))(v83, v54);
    return v44;
  }

  *&v110 = v38;
  v100 = v21;
  swift_endAccess();
  result = AGSubgraphGetGraph();
  if (v2[124] == 1)
  {
    goto LABEL_23;
  }

  v55 = result;
  v56 = v2;
  v57 = AGSubgraphCreate2();

  AGSubgraphAddChild();
  AGGraphClearUpdate();
  v58 = AGSubgraphGetCurrent();
  v102 = v57;
  AGSubgraphSetCurrent();
  v59 = v109;
  closure #1 in TableColumnForEachState.item(at:offset:)(v2, v109, &v123);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v60 = v123;
  v61 = DWORD2(v123);
  v101 = *(v105 + 16);
  v101(v95, v59, v108);
  *&v123 = v60;
  DWORD2(v123) = v61;
  result = PreferencesOutputs.subscript.getter();
  v63 = v93;
  v62 = v94;
  if ((result & 0x100000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v64 = result;
  (*(v96 + 16))(v93, v106, v97);
  v65 = v63;
  v66 = *v56;
  v67 = v89;
  result = v92(v89, 1, v62);
  if (result != 1)
  {
    v68 = *(v56 + *(v66 + 184));
    v69 = *&v67[*(v62 + 88)];

    swift_allocObject();
    v70 = v102;
    v44 = specialized TableColumnForEachState.Item.init(id:columns:subgraph:index:offset:seed:state:isConstant:)(v95, v64, v102, v65, v107, v68, v56, v69 == 0);
    v54 = v108;
    v101(v90, v109, v108);
    *&v118[0] = v44;
    swift_beginAccess();
    type metadata accessor for Dictionary();
    v71 = v70;

    Dictionary.subscript.setter();
    swift_endAccess();
    v72 = v56 + *(*v56 + 168);
    if (*(v72 + 8) != 1 || *v72)
    {
    }

    else
    {
      v73 = *(v56 + 64);
      v74 = *(v56 + 32);
      v119 = *(v56 + 48);
      v120 = v73;
      v75 = *(v56 + 64);
      v121 = *(v56 + 80);
      v76 = *(v56 + 32);
      v118[0] = *(v56 + 16);
      v118[1] = v76;
      v113 = v74;
      v114 = v119;
      v77 = *(v56 + 80);
      v115 = v75;
      v116 = v77;
      v122 = *(v56 + 96);
      v117 = *(v56 + 96);
      v112 = v118[0];
      v78 = *(v103 + 72);
      outlined init with copy of _TableColumnInputs(v118, &v111);
      v79 = v78(&v112);
      v81 = v80;

      v125 = v114;
      v126 = v115;
      v127 = v116;
      v128 = v117;
      v123 = v112;
      v124 = v113;
      outlined destroy of _TableColumnInputs(&v123);
      if (v81)
      {
        *v72 = 1;
        *(v72 + 8) = 1;
      }

      else
      {
        *v72 = v79;
        *(v72 + 8) = 0;
      }
    }

    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
  return result;
}

void TableColumnForEachState.uneraseItem(_:)(uint64_t a1)
{
  *(a1 + *(*a1 + 192)) = 0;
  AGSubgraphAddChild();
  AGSubgraphRef.didReinsert()();
}

uint64_t closure #1 in TableColumnForEachState.item(at:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v38 = a2;
  v40 = a3;
  v62 = *MEMORY[0x1E69E9840];
  v4 = *(*a1 + 88);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v37 - v6;
  v9 = v8[10];
  v11 = *(v10 + 96);
  v12 = v8[14];
  v13 = v8[15];
  *(v14 + 96) = v9;
  *(v14 + 104) = v4;
  v41 = v11;
  *(v14 + 112) = v11;
  *(v14 + 128) = v12;
  *(v14 + 136) = v13;
  v42 = v13;
  v15 = type metadata accessor for TableColumnForEachState.ChildContent();
  v39 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - v17;
  if (*(a1 + 116))
  {
    __break(1u);
  }

  v19 = *(a1 + 112);
  (*(v5 + 16))(v7, v38, v4, v16);
  *v18 = v19;
  *&v20 = v9;
  *(&v20 + 1) = v4;
  v56 = v20;
  v57 = v41;
  *&v58 = v12;
  *(&v58 + 1) = v42;
  v21 = type metadata accessor for TableColumnForEachState.ChildContent();
  v22 = (*(v5 + 32))(&v18[*(v21 + 68)], v7, v4);
  MEMORY[0x1EEE9AC00](v22);
  v23 = v41;
  *(&v37 - 4) = v41;
  *(&v37 - 3) = v15;
  *(&v37 - 2) = swift_getWitnessTable();
  v24 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v18, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, (&v37 - 6), v15, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
  (*(v39 + 8))(v18, v15);
  _GraphValue.init(_:)();
  v26 = *(a1 + 48);
  v27 = *(a1 + 80);
  v53 = *(a1 + 64);
  v54 = v27;
  v28 = *(a1 + 32);
  v52[0] = *(a1 + 16);
  v29 = *(a1 + 16);
  v30 = *(a1 + 32);
  v31 = *(a1 + 48);
  v52[1] = v28;
  v52[2] = v31;
  v48 = v26;
  v49 = v53;
  v50 = *(a1 + 80);
  v55 = *(a1 + 96);
  v51 = *(a1 + 96);
  v46 = v29;
  v47 = v30;
  v32 = v42;
  v33 = *(v42 + 64);
  outlined init with copy of _TableColumnInputs(v52, &v56);
  v33(&v44, &v43, &v46, v23, v32);
  v58 = v48;
  v59 = v49;
  v60 = v50;
  v61 = v51;
  v56 = v46;
  v57 = v47;
  result = outlined destroy of _TableColumnInputs(&v56);
  v35 = v45;
  v36 = v40;
  *v40 = v44;
  *(v36 + 2) = v35;
  return result;
}

uint64_t TableColumnForEachState.Item.release()()
{
  result = AGSubgraphIsValid();
  if (result)
  {
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();
      type metadata accessor for Dictionary();
      Dictionary.removeValue(forKey:)();
      swift_endAccess();
    }

    AGSubgraphRef.willInvalidate(isInserted:)(1);
    return AGSubgraphInvalidate();
  }

  return result;
}

uint64_t closure #1 in TableColumnForEachState.forEachItem(from:do:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  TableColumnForEachState.item(at:offset:)(a1, *a3);

  if (*(a2 + 124) == 1)
  {
    goto LABEL_7;
  }

  type metadata accessor for TableColumnList();
  InputValue = AGGraphGetInputValue();
  outlined init with copy of _Benchmark(InputValue, v16);
  v11 = v17;
  v12 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v13 = (*(v12 + 8))(v11, v12);
  result = __swift_destroy_boxed_opaque_existential_1(v16);
  v14 = *a5 + v13;
  if (__OFADD__(*a5, v13))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v15 = *a4;
  if (*a4 >= v14)
  {
    *a5 = v14;
    *a3 &= 1uLL;
  }

  return v15 < v14;
}

void closure #1 in TableColumnForEachState.count()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*(a4 + 124) != 1)
  {
    type metadata accessor for TableColumnList();
    InputValue = AGGraphGetInputValue();
    outlined init with copy of _Benchmark(InputValue, v9);
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v8 = (*(v7 + 8))(v6, v7);
    if (!__OFADD__(*a3, v8))
    {
      *a3 += v8;
      __swift_destroy_boxed_opaque_existential_1(v9);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t TableColumnForEachState.Info.Init.forEach.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for TableColumnForEach();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t TableColumnForEachState.Info.Init.value.getter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18[3] = a2;
  v19 = a3;
  v20 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedTypeWitness();
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v13 = type metadata accessor for TableColumnForEach();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v18 - v15;

  TableColumnForEachState.Info.Init.forEach.getter(v16);
  TableColumnForEachState.update(forEach:)(v16);
  (*(v14 + 8))(v16, v13);
  return a1;
}

uint64_t protocol witness for Rule.value.getter in conformance TableColumnForEachState<A, B, C>.Info.Init@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = TableColumnForEachState.Info.Init.value.getter(*v2, *(v2 + 8), a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

uint64_t TableColumnForEachState.Item.deinit()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 128));
  swift_weakDestroy();

  v1 = *(*v0 + 160);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  return v0;
}

uint64_t TableColumnForEachState.ChildContent.updateValue()(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v60 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 40);
  v8 = *(*(v7 + 8) + 8);
  v9 = *(v6 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v54 = &v50 - v10;
  v55 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v8;
  v62 = swift_getAssociatedTypeWitness();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v50 - v13;
  v14 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = specialized TableColumnForEachState.ChildContent.info.getter();
  v19 = *(v14 + 16);
  v59 = v1;
  v19(v17, v1, a1);
  v20 = *(a1 + 68);
  v21 = *(*v18 + 176);
  swift_beginAccess();
  v22 = *(v18 + v21);
  v23 = *(a1 + 24);
  v64 = *(a1 + 48);

  *&v24 = v9;
  *(&v24 + 1) = v23;
  *&v25 = v3;
  *(&v25 + 1) = v7;
  v67 = v25;
  v66 = v24;
  v68 = v64;
  v26 = type metadata accessor for TableColumnForEachState.Item();
  MEMORY[0x18D00C560](v65, &v17[v20], v22, v23, v26, v64);
  (*(*(v23 - 8) + 8))(&v17[v20], v23);
  v27 = v65[0];
  if (!v65[0])
  {
    swift_endAccess();
  }

  swift_endAccess();
  v28 = *v18;
  if (*(v27 + *(*v27 + 176)) != *(v18 + *(*v18 + 184)))
  {
  }

  v52 = v4;
  v29 = *(v28 + 160);
  swift_beginAccess();
  v30 = swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedTypeWitness();
  *&v66 = v9;
  *(&v66 + 1) = v23;
  *&v67 = v30;
  *(&v67 + 1) = v31;
  v51 = v3;
  *&v32 = v3;
  *(&v32 + 1) = v7;
  v69 = v64;
  v68 = v32;
  v33 = type metadata accessor for TableColumnForEach();
  result = (*(*(v33 - 8) + 48))(v18 + v29, 1, v33);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v35 = v55;
    v36 = v53;
    (*(v55 + 16))(v53, v18 + v29, v9);
    v37 = *(*v27 + 160);
    swift_beginAccess();
    v38 = v57;
    v39 = v27 + v37;
    v40 = v54;
    v41 = AssociatedTypeWitness;
    (*(v57 + 16))(v54, v39, AssociatedTypeWitness);
    v42 = dispatch thunk of Collection.subscript.read();
    (*(v61 + 16))(v63);
    v42(&v66, 0);
    (*(v38 + 8))(v40, v41);
    v43 = (*(v35 + 8))(v36, v9);
    MEMORY[0x1EEE9AC00](v43);
    v44 = v63;
    *(&v50 - 2) = v18;
    *(&v50 - 1) = v44;
    WitnessTable = swift_getWitnessTable();
    v46 = v51;
    MEMORY[0x18D000B40](a1, v51, WitnessTable);
    v47 = v60;
    StatefulRule.withObservation<A>(observationCenter:do:)();

    MEMORY[0x1EEE9AC00](v48);
    *(&v50 - 2) = a1;
    *(&v50 - 1) = WitnessTable;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v47, partial apply for closure #1 in StatefulRule.value.setter, (&v50 - 4), v46, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v49);

    (*(v52 + 8))(v47, v46);
    return (*(v61 + 8))(v63, v62);
  }

  return result;
}

uint64_t closure #1 in TableColumnForEachState.ChildContent.updateValue()(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(*a1 + 160);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for TableColumnForEach();
  result = (*(*(v4 - 8) + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v3 + *(v4 + 84));

    v6(a2);
  }

  return result;
}

uint64_t TableColumnForEachState.ChildContent.description.getter()
{
  MEMORY[0x18D00C9B0](0x697463656C6C6F43, 0xEB000000005B6E6FLL);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x18D00C9B0](93, 0xE100000000000000);
  return 0;
}

uint64_t TableColumnForEachState.deinit()
{
  v1 = *(v0 + 64);
  v6[2] = *(v0 + 48);
  v6[3] = v1;
  v6[4] = *(v0 + 80);
  v7 = *(v0 + 96);
  v2 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v2;
  outlined destroy of _TableColumnInputs(v6);

  v3 = *(*v0 + 160);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for TableColumnForEach();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t TableColumnForEachState.Item.__deallocating_deinit(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void type metadata accessor for Attribute<TableColumnList>()
{
  if (!lazy cache variable for type metadata for Attribute<TableColumnList>)
  {
    type metadata accessor for TableColumnList();
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<TableColumnList>);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for TableColumnForEach<A, B, C, D, E>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for TableColumnForEach()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TableColumnForEach(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    *((v10 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t destroy for TableColumnForEach(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t initializeWithCopy for TableColumnForEach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for TableColumnForEach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t initializeWithTake for TableColumnForEach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for TableColumnForEach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + a2;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);

  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *(v9 & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for TableColumnForEach(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for TableColumnForEach(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t type metadata completion function for TableColumnForEachState()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for TableColumnForEach();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t type metadata completion function for TableColumnForEachState.Item()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t *specialized TableColumnForEachState.Item.init(id:columns:subgraph:index:offset:seed:state:isConstant:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, char a8)
{
  v15 = *v8;
  swift_weakInit();
  *(v8 + *(*v8 + 192)) = 0;
  *(v8 + *(*v8 + 200)) = 0;
  (*(*(*(v15 + 88) - 8) + 32))(v8 + *(*v8 + 128), a1);
  *(v8 + *(*v8 + 136)) = a2;
  swift_weakAssign();
  *(v8 + *(*v8 + 152)) = a3;
  v16 = *(*v8 + 160);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v8 + v16, a4, AssociatedTypeWitness);
  *(v8 + *(*v8 + 168)) = a5;
  *(v8 + *(*v8 + 176)) = a6;
  *(v8 + *(*v8 + 184)) = a8;
  return v8;
}

uint64_t type metadata completion function for TableColumnForEachState.ChildContent()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TableColumnForEachState.ChildContent(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-5 - v5) | v5) - *(*(*(a3 + 24) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    (*(v4 + 16))((a1 + v5 + 4) & ~v5, (a2 + v5 + 4) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xFC ^ 0x1FC) & (v5 + 16)));
  }

  return v3;
}

_DWORD *initializeWithCopy for TableColumnForEachState.ChildContent(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  (*(v4 + 16))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

_DWORD *assignWithCopy for TableColumnForEachState.ChildContent(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  (*(v4 + 24))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

_DWORD *initializeWithTake for TableColumnForEachState.ChildContent(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

_DWORD *assignWithTake for TableColumnForEachState.ChildContent(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  (*(v4 + 40))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for TableColumnForEachState.ChildContent(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 4) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for TableColumnForEachState.ChildContent(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 4) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 4] & ~v8;

  v18(v19);
}

uint64_t AppPreview.content.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AppPreview.description.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AppPreview.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AppPreviewHost.__allocating_init()()
{
  v0 = swift_allocObject();
  AppPreviewHost.init()();
  return v0;
}

uint64_t AppPreviewHost.init()()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = -1;
  type metadata accessor for AppPreviewRootModifierStorage();
  swift_allocObject();
  *(v0 + 40) = AppPreviewRootModifierStorage.init()();
  v2 = static AppGraph.shared;
  if (static AppGraph.shared)
  {

    static Update.ensure<A>(_:)();
    if (*(v11 + 16))
    {
      v3 = *(v11 + 168);
      v4 = *(v11 + 176);
      v5 = *(v11 + 184);
      v6 = *(v1 + 16);
      v7 = *(v1 + 24);
      *(v1 + 16) = v3;
      *(v1 + 24) = v4;
      v8 = *(v1 + 32);
      *(v1 + 32) = v5;
      outlined copy of SceneID(v3, v4, v5);
      outlined consume of SceneID?(v6, v7, v8);

      specialized AppGraph.addObserver(_:)(v9, v2);

      return v1;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}