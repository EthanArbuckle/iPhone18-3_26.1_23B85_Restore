unint64_t type metadata accessor for CurrentEventProvider()
{
  result = lazy cache variable for type metadata for CurrentEventProvider;
  if (!lazy cache variable for type metadata for CurrentEventProvider)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CurrentEventProvider);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for NavigationLinkStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for _SetStorage<String>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey>, &type metadata for EnvironmentValues.KeyPressHandlersKey, &protocol witness table for EnvironmentValues.KeyPressHandlersKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label);
  }

  return result;
}

uint64_t (*ViewResponderFilter.preferredFocusableView.getter(uint64_t a1))()
{
  if (*(v1 + 44) == *MEMORY[0x1E698D3F8])
  {
    return 1;
  }

  type metadata accessor for UIView?();
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v7 = *Value;
  if (!*Value)
  {
    return 0;
  }

  v8 = Value[1];
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v4;
  v9[4] = v7;
  v9[5] = v8;

  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.CoreViewRepresentable.PlatformViewProvider) -> (@out UIView?);
}

uint64_t sub_18C0336FC()
{

  return swift_deallocObject();
}

uint64_t type metadata completion function for UpdateViewDestinationViewModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t closure #1 in ResponderNode.visitBaseFocusResponders(applying:)@<X0>(void (*a1)(uint64_t, uint64_t)@<X1>, _BYTE *a2@<X8>)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    v5 = result;

    a1(v6, v5);
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t type metadata completion function for UpdateViewDestinationRequestProcessor()
{
  result = type metadata accessor for Optional();
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

uint64_t closure #2 in FocusStateBindingResponder.defaultFocusItem(in:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = v8;
    v10 = *a1;
    v11 = *(v8 + 16);

    v11(v20, v10, v9);
    if (v23)
    {
      v12 = 0;
    }

    else
    {
      v12 = v24 == 1;
    }

    if (v12)
    {

      outlined destroy of FocusItem?(v20, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
    }

    else
    {
      v13 = FocusItem.isFocusable.getter();
      outlined destroy of FocusItem(v20);
      if (v13)
      {
        v11(v20, v10, v9);

LABEL_14:
        outlined assign with take of FocusItem?(v20, a3);
        goto LABEL_16;
      }
    }
  }

  if (!(*(a2 + 8))(*a1, a2))
  {
    goto LABEL_16;
  }

  ObjectType = swift_getObjectType();
  v15 = swift_conformsToProtocol2();
  if (v15 && ((*(v15 + 24))(ObjectType, v15) & 1) != 0)
  {
    v24 = 0;
    swift_weakInit();
    v25 = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v21 = 1;
    v24 = 0;
    swift_weakAssign();
    v22 = 0;
    goto LABEL_14;
  }

  swift_unknownObjectRelease();
LABEL_16:
  v16 = MEMORY[0x1E69E6720];
  outlined init with copy of FocusItem?(a3, v20, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
  if (v24 == 1 && v23 == 0)
  {
    v18 = 0;
  }

  else
  {
    v18 = 2;
  }

  result = outlined destroy of FocusItem?(v20, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, v16);
  *a4 = v18;
  return result;
}

uint64_t sub_18C033D50()
{
  lazy protocol witness table accessor for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  type metadata accessor for UpdateViewDestinationViewModifier();
  type metadata accessor for UpdateViewDestinationRequestProcessor();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ResolvedNavigationLink and conformance ResolvedNavigationLink();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void type metadata accessor for UIKitContainerFocusResponderItem<FocusStateBindingResponder>()
{
  if (!lazy cache variable for type metadata for UIKitContainerFocusResponderItem<FocusStateBindingResponder>)
  {
    type metadata accessor for FocusStateBindingResponder();
    v0 = type metadata accessor for UIKitContainerFocusResponderItem();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIKitContainerFocusResponderItem<FocusStateBindingResponder>);
    }
  }
}

uint64_t specialized FocusStateBindingResponder.hostedItem.getter()
{
  result = *(v0 + 248);
  if (!result)
  {
    type metadata accessor for UIKitContainerFocusResponderItem<FocusStateBindingResponder>();
    v3 = v2;
    v4 = objc_allocWithZone(v2);
    swift_weakInit();
    swift_unknownObjectWeakInit();
    *&v4[direct field offset for UIKitContainerFocusResponderItem.frameAttr] = 0;
    v4[direct field offset for UIKitContainerFocusResponderItem.isEnabled] = 1;
    *&v4[direct field offset for UIKitContainerFocusResponderItem.cachedCoordinateSpace] = 0;
    swift_weakAssign();
    v7.receiver = v4;
    v7.super_class = v3;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    v6 = *(v0 + 248);
    *(v0 + 248) = v5;

    return *(v0 + 248);
  }

  return result;
}

uint64_t protocol witness for BaseFocusResponder.platformItem.getter in conformance FocusStateBindingResponder()
{
  specialized FocusStateBindingResponder.hostedItem.getter();

  return swift_unknownObjectRetain();
}

unint64_t lazy protocol witness table accessor for type ResolvedNavigationLink and conformance ResolvedNavigationLink()
{
  result = lazy protocol witness table cache variable for type ResolvedNavigationLink and conformance ResolvedNavigationLink;
  if (!lazy protocol witness table cache variable for type ResolvedNavigationLink and conformance ResolvedNavigationLink)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedNavigationLink and conformance ResolvedNavigationLink);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedNavigationLink and conformance ResolvedNavigationLink;
  if (!lazy protocol witness table cache variable for type ResolvedNavigationLink and conformance ResolvedNavigationLink)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedNavigationLink and conformance ResolvedNavigationLink);
  }

  return result;
}

uint64_t static UpdateViewDestinationRequestProcessor._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, void (*a2)(void *__return_ptr)@<X2>, void *a3@<X8>)
{
  v3 = a1[3];
  v4 = a1[1];
  v15 = a1[2];
  v16 = v3;
  v5 = a1[3];
  v17 = a1[4];
  v6 = a1[1];
  v13 = *a1;
  v14 = v6;
  v11[2] = v15;
  v11[3] = v5;
  v11[4] = a1[4];
  v18 = *(a1 + 20);
  v12 = *(a1 + 20);
  v11[0] = v13;
  v11[1] = v4;
  a2(a3);
  lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type NavigationAuthority.ListSelectionCanonicalIDKey and conformance NavigationAuthority.ListSelectionCanonicalIDKey();
  PropertyList.subscript.getter();
  *&v11[0] = v16;
  DWORD2(v11[0]) = DWORD2(v16);
  v9 = v16;
  v10 = DWORD2(v16);
  outlined init with copy of PreferencesInputs(v11, v8);
  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t static UpdateViewDestinationViewModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
  PropertyList.subscript.getter();
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    AGGraphCreateOffsetAttribute2();
  }

  lazy protocol witness table accessor for type NavigationAuthority.ListSelectionCanonicalIDKey and conformance NavigationAuthority.ListSelectionCanonicalIDKey();
  v3 = PropertyList.subscript.getter();
  MEMORY[0x1EEE9AC00](v3);

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

void *PlatformUnaryViewResponder.visit(applying:)@<X0>(void *(*a1)(uint64_t *__return_ptr, uint64_t)@<X0>, _BYTE *a2@<X8>)
{
  result = a1(&v7, v2);
  v5 = v7;
  if (!v7)
  {

    MultiViewResponder.visit(applying:)();

    v5 = v6;
  }

  *a2 = v5;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedNavigationLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedNavigationLink and conformance ResolvedNavigationLink();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

double UIViewResponder.focusItem.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_17;
  }

  v5 = Strong;
  type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v7>);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v7>);
  if (static SemanticFeature.isEnabled.getter())
  {
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 isUserInteractionEnabled];

      if (!v8)
      {

LABEL_17:
        result = 0.0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        *(a1 + 32) = 0u;
        *(a1 + 48) = xmmword_18CD6A6D0;
        return result;
      }
    }
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFocusSystem);
  v9 = v5;
  v10 = static UIFocusSystem.focusSystem(for:)();

  if (v10)
  {

    v11 = [v9 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    v13 = dispatch thunk of PlatformViewResponderBase.preferredFocusableView.getter();
    if (v13 || (type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>), lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>), (static SemanticFeature.isEnabled.getter() & 1) != 0) && (v13 = UIView.firstFocusableDescendant.getter()) != 0)
    {
      v14 = v13;

      v9 = v14;
    }

    *(a1 + 48) = 0;
    swift_weakInit();
    *(a1 + 56) = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();

    *(a1 + 32) = 1;
    *(a1 + 48) = &protocol witness table for UIViewResponder;
    swift_weakAssign();
    *(a1 + 33) = v12 == 3;
  }

  else if ((*(*v2 + class metadata base offset for UIViewResponder + 48))())
  {
    v15 = dispatch thunk of PlatformViewResponderBase.preferredFocusableView.getter();
    if (v15)
    {
      v16 = v15;

      v9 = v16;
    }

    *(a1 + 48) = 0;
    swift_weakInit();
    *(a1 + 56) = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();

    *(a1 + 32) = 2;
    *(a1 + 48) = &protocol witness table for UIViewResponder;
    swift_weakAssign();
    *(a1 + 33) = 0;
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = xmmword_18CD6A6D0;
  }

  return result;
}

uint64_t FocusResponder.platformItem.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v7);
  if (v7[5])
  {
    v2 = 0;
  }

  else
  {
    v2 = v7[6] == 1;
  }

  if (v2)
  {
    _s7SwiftUI9FocusItemVSgWOhTm_0(v7, type metadata accessor for FocusItem?);
    return 0;
  }

  else
  {
    outlined init with copy of FocusItem.Base(v7, v5);
    if (v5[32] == 1)
    {
      outlined init with take of WeakBox<UIFocusItem>(v5, v6);
      Strong = swift_unknownObjectWeakLoadStrong();
      _s7SwiftUI9FocusItemVSgWOhTm_0(v6, type metadata accessor for WeakBox<UIFocusItem>);
    }

    else
    {
      outlined destroy of FocusItem.Base(v5);
      Strong = 0;
    }

    outlined destroy of FocusItem(v7);
  }

  return Strong;
}

uint64_t UIViewResponder.wantsSwiftUIFocusItem.getter()
{
  v0 = dispatch thunk of PlatformViewResponderBase.preferredFocusableView.getter();
  if (v0)
  {
    Strong = v0;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return 0;
    }
  }

  type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>);
  if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
  {
    v3 = [Strong canBecomeFirstResponder];
    goto LABEL_8;
  }

  v2 = UIView.firstFocusableDescendant.getter();

  if (!v2)
  {
    return 0;
  }

  v3 = 1;
  Strong = v2;
LABEL_8:

  return v3;
}

void *UIView.firstFocusableDescendant.getter()
{
  type metadata accessor for _ContiguousArrayStorage<[UIView]>();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18CD69590;
  *(v2 + 32) = v0;
  *(inited + 32) = v2;
  v3 = v0;
  for (i = PlatformSubtreeIterator.next()(); i; i = PlatformSubtreeIterator.next()())
  {
    if ([i canBecomeFirstResponder])
    {
      break;
    }
  }

  return i;
}

void type metadata accessor for _ContiguousArrayStorage<[UIView]>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<[UIView]>)
  {
    type metadata accessor for WeakBox<UIGestureRecognizer>(255, &lazy cache variable for type metadata for [UIView], &lazy cache variable for type metadata for UIView, 0x1E69DD250, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<[UIView]>);
    }
  }
}

void type metadata accessor for WeakBox<UIGestureRecognizer>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for NSObject(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for NavigationLinkStyleModifier<AutomaticNavigationLinkStyle>()
{
  if (!lazy cache variable for type metadata for NavigationLinkStyleModifier<AutomaticNavigationLinkStyle>)
  {
    lazy protocol witness table accessor for type AutomaticNavigationLinkStyle and conformance AutomaticNavigationLinkStyle();
    v0 = type metadata accessor for NavigationLinkStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NavigationLinkStyleModifier<AutomaticNavigationLinkStyle>);
    }
  }
}

void *PlatformSubtreeIterator.next()()
{
  v2 = v0[1];
  if (v2 > 9)
  {
    return 0;
  }

  v3 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = isUniquelyReferenced_nonNull_native;
    v5 = *(isUniquelyReferenced_nonNull_native + 16);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v3[2];
  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_5:
  v6 = v5 - 1;
  v7 = v3[v6 + 4];
  v3[2] = v6;
  v1 = v0;
  *v0 = v3;
  v23 = v7;
  specialized RangeReplaceableCollection.removeFirst()();
  v0 = v8;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      v0 = 0;
      *v1 = MEMORY[0x1E69E7CC0];
      v1[1] = v2 + 1;
      return v0;
    }
  }

  isUniquelyReferenced_nonNull_native = v23;
  if (v23 >> 62)
  {
LABEL_16:
    v11 = isUniquelyReferenced_nonNull_native;
    v12 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_native = v11;
    if (v12)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:
    v10 = v3[2];
    v9 = v3[3];
    if (v10 >= v9 >> 1)
    {
      v22 = isUniquelyReferenced_nonNull_native;
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v3);
      isUniquelyReferenced_nonNull_native = v22;
    }

    v3[2] = v10 + 1;
    v3[v10 + 4] = isUniquelyReferenced_nonNull_native;
    *v1 = v3;
    goto LABEL_18;
  }

LABEL_17:

LABEL_18:
  v13 = [v0 subviews];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    v15 = __CocoaSet.count.getter();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15 && v3[2] <= 3uLL)
  {
    v16 = [v0 effectiveUserInterfaceLayoutDirection];
    v17 = [v0 subviews];
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v16 == 1)
    {
      v18 = specialized Sequence.reversed()(v18);
    }

    v20 = v3[2];
    v19 = v3[3];
    if (v20 >= v19 >> 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v3);
    }

    v3[2] = v20 + 1;
    v3[v20 + 4] = v18;
    *v1 = v3;
  }

  v1[1] = v2 + 1;
  return v0;
}

unint64_t lazy protocol witness table accessor for type NavigationLinkStyleModifier<AutomaticNavigationLinkStyle> and conformance NavigationLinkStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type NavigationLinkStyleModifier<AutomaticNavigationLinkStyle> and conformance NavigationLinkStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type NavigationLinkStyleModifier<AutomaticNavigationLinkStyle> and conformance NavigationLinkStyleModifier<A>)
  {
    type metadata accessor for NavigationLinkStyleModifier<AutomaticNavigationLinkStyle>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationLinkStyleModifier<AutomaticNavigationLinkStyle> and conformance NavigationLinkStyleModifier<A>);
  }

  return result;
}

void specialized RangeReplaceableCollection.removeFirst()()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (__CocoaSet.count.getter())
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x18D00E9C0](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = __CocoaSet.count.getter();
LABEL_13:
      if (v3)
      {
        specialized Array.replaceSubrange<A>(_:with:)(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v4, v2, 0);
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), 0, type metadata accessor for AccessibilityNode);
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), 0, type metadata accessor for UIKitAccessibilityLinkRotorBridge.LinkElement);
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

unint64_t lazy protocol witness table accessor for type AutomaticNavigationLinkStyle and conformance AutomaticNavigationLinkStyle()
{
  result = lazy protocol witness table cache variable for type AutomaticNavigationLinkStyle and conformance AutomaticNavigationLinkStyle;
  if (!lazy protocol witness table cache variable for type AutomaticNavigationLinkStyle and conformance AutomaticNavigationLinkStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticNavigationLinkStyle and conformance AutomaticNavigationLinkStyle);
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t FocusItem.isFocusable.getter()
{
  outlined init with copy of FocusItem.Base(v0, v8);
  if (!v9)
  {
    LOBYTE(v2) = v8[4];

    return v2 & 1;
  }

  if (v9 == 1)
  {
    outlined init with take of WeakBox<UIFocusItem>(v8, &v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      LOBYTE(v2) = [Strong canBecomeFocused];
      swift_unknownObjectRelease();
      outlined destroy of WeakBox<UIFocusItem>(&v7, type metadata accessor for WeakBox<UIFocusItem>);
      return v2 & 1;
    }

    outlined destroy of WeakBox<UIFocusItem>(&v7, type metadata accessor for WeakBox<UIFocusItem>);
LABEL_16:
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  outlined init with take of WeakBox<UIView>(v8, &v7);
  if (swift_weakLoadStrong())
  {
    type metadata accessor for UIViewResponder();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      LOBYTE(v2) = (*(*v3 + class metadata base offset for UIViewResponder + 48))();

LABEL_18:
      outlined destroy of WeakBox<UIView>(&v7);
      return v2 & 1;
    }
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
    outlined destroy of WeakBox<UIView>(&v7);
    goto LABEL_16;
  }

  v5 = v4;
  type metadata accessor for _SemanticFeature<Semantics_v5>();
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
  if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
  {
    LOBYTE(v2) = [v5 canBecomeFirstResponder];

    goto LABEL_18;
  }

  v2 = UIView.firstFocusableDescendant.getter();

  outlined destroy of WeakBox<UIView>(&v7);
  if (v2)
  {

    LOBYTE(v2) = 1;
  }

  return v2 & 1;
}

uint64_t initializeWithCopy for FocusItem.Base(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3 >= 3)
  {
    v3 = *a2 + 3;
  }

  if (v3 == 2)
  {
    swift_unknownObjectWeakCopyInit();
    v4 = 2;
  }

  else
  {
    if (v3 != 1)
    {
      *a1 = *a2;
      *(a1 + 4) = *(a2 + 4);
      v5 = *(a2 + 16);
      v6 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = v5;
      *(a1 + 24) = v6;
      *(a1 + 32) = 0;

      return a1;
    }

    swift_unknownObjectWeakCopyInit();
    v4 = 1;
  }

  *(a1 + 32) = v4;
  return a1;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance NavigationLinkStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t outlined init with take of WeakBox<UIView>(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7WeakBoxVySo6UIViewCGMaTm_0(0, &lazy cache variable for type metadata for WeakBox<UIView>, MEMORY[0x1E6981A78]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18C035870()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t outlined destroy of WeakBox<UIView>(uint64_t a1)
{
  type metadata accessor for WeakBox<UIView>(0, &lazy cache variable for type metadata for WeakBox<UIView>, &lazy cache variable for type metadata for UIView, 0x1E69DD250, MEMORY[0x1E6981A78]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t destroy for FocusItem(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 == 2 || v1 == 1)
  {
    MEMORY[0x18D011290](a1);
  }

  else if (!*(a1 + 32))
  {
  }

  return swift_weakDestroy();
}

void type metadata accessor for NavigationLinkStyleModifier<ButtonNavigationLinkStyle>()
{
  if (!lazy cache variable for type metadata for NavigationLinkStyleModifier<ButtonNavigationLinkStyle>)
  {
    lazy protocol witness table accessor for type ButtonNavigationLinkStyle and conformance ButtonNavigationLinkStyle();
    v0 = type metadata accessor for NavigationLinkStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NavigationLinkStyleModifier<ButtonNavigationLinkStyle>);
    }
  }
}

void type metadata accessor for ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>)
  {
    type metadata accessor for NavigationLinkStyleModifier<ButtonNavigationLinkStyle>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>);
    }
  }
}

uint64_t outlined assign with take of FocusItem?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FocusItem?(0, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithTake for FocusItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4 == 2)
  {
    swift_unknownObjectWeakTakeInit();
    v5 = 2;
  }

  else if (v4 == 1)
  {
    swift_unknownObjectWeakTakeInit();
    v5 = 1;
  }

  else
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    v5 = *(a2 + 32);
  }

  *(a1 + 32) = v5;
  *(a1 + 33) = *(a2 + 33);
  swift_weakTakeInit();
  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;
  return a1;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>, PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>, PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>>)
  {
    type metadata accessor for ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>();
    type metadata accessor for PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>, PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>>);
    }
  }
}

uint64_t storeEnumTagSinglePayload for FocusItem(uint64_t result, int a2, int a3)
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
      *(result + 48) = 1;
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>, PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>, PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>, PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>, PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>>();
    lazy protocol witness table accessor for type ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type NavigationLinkButtonStyle<Never> and conformance NavigationLinkButtonStyle<A>(&lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>> and conformance PrimitiveButtonStyleContainerModifier<A>, type metadata accessor for PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>, PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t initializeWithCopy for FocusItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4 == 2)
  {
    swift_unknownObjectWeakCopyInit();
    v5 = 2;
  }

  else
  {
    if (v4 != 1)
    {
      *a1 = *a2;
      *(a1 + 4) = *(a2 + 4);
      v6 = *(a2 + 16);
      v7 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = v6;
      *(a1 + 24) = v7;
      *(a1 + 32) = 0;

      goto LABEL_7;
    }

    swift_unknownObjectWeakCopyInit();
    v5 = 1;
  }

  *(a1 + 32) = v5;
LABEL_7:
  *(a1 + 33) = *(a2 + 33);
  swift_weakCopyInit();
  v8 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v8;
  return a1;
}

unint64_t lazy protocol witness table accessor for type ButtonNavigationLinkStyle and conformance ButtonNavigationLinkStyle()
{
  result = lazy protocol witness table cache variable for type ButtonNavigationLinkStyle and conformance ButtonNavigationLinkStyle;
  if (!lazy protocol witness table cache variable for type ButtonNavigationLinkStyle and conformance ButtonNavigationLinkStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonNavigationLinkStyle and conformance ButtonNavigationLinkStyle);
  }

  return result;
}

void type metadata accessor for NavigationLinkButtonStyle<Never>()
{
  if (!lazy cache variable for type metadata for NavigationLinkButtonStyle<Never>)
  {
    v0 = type metadata accessor for NavigationLinkButtonStyle();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NavigationLinkButtonStyle<Never>);
    }
  }
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI9FocusItemV_s5NeverOytTg5(void (*a1)(uint64_t *__return_ptr, _BYTE *))
{
  outlined init with copy of AnyAccessibilityValue?(v1, v8, &lazy cache variable for type metadata for FocusItem?);
  if (v9)
  {
    v4 = 0;
  }

  else
  {
    v4 = v10 == 1;
  }

  v5 = v4;
  if (v4)
  {
    return v5;
  }

  outlined init with take of FocusItem(v8, v7);
  a1(&v11, v7);
  if (!v2)
  {
    outlined destroy of FocusItem(v7);
    return v5;
  }

  result = outlined destroy of FocusItem(v7);
  __break(1u);
  return result;
}

void type metadata accessor for PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>()
{
  if (!lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>)
  {
    type metadata accessor for NavigationLinkButtonStyle<Never>();
    lazy protocol witness table accessor for type NavigationLinkButtonStyle<Never> and conformance NavigationLinkButtonStyle<A>(&lazy protocol witness table cache variable for type NavigationLinkButtonStyle<Never> and conformance NavigationLinkButtonStyle<A>, type metadata accessor for NavigationLinkButtonStyle<Never>);
    v0 = type metadata accessor for PrimitiveButtonStyleContainerModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>);
    }
  }
}

void FocusBridge.moveFocus(to:designatedPlatformResponder:)(uint64_t a1, void *a2)
{
  v3 = v2;
  FocusBridge.focusedItem.getter(v25);
  outlined init with copy of FocusItem(a1, v24);
  v6 = specialized static FocusItem.isFocusChange(from:to:)(v25, v24);
  outlined destroy of FocusItem?(v24);
  outlined destroy of FocusItem?(v25);
  if (v6)
  {
    v7 = FocusBridge.host.getter();
    if (v7)
    {
      v10 = v7;
      v11 = v8;
      v12 = v9;
      FocusBridge.focusedItem.getter(v25);
      v14 = v30;
      v13 = v31;
      outlined destroy of FocusItem?(v25);
      if (!v14 && v13 == 1)
      {
        if (swift_weakLoadStrong())
        {

          v15 = v10;
          v16 = specialized static FocusBridge.representedFocusItem(_:in:)(a1, v15);

          if (v16)
          {
            if (swift_weakLoadStrong())
            {
              v31 = 0;
              swift_weakInit();
              v32 = 0;
              swift_unknownObjectWeakInit();
              swift_unknownObjectWeakAssign();
              v28 = 1;
              v31 = 0;
              swift_weakAssign();
              v29 = 0;
              FocusBridge.moveFocus(to:designatedPlatformResponder:)(v25, 0);

              swift_unknownObjectRelease();

              outlined destroy of FocusItem(v25);
            }

            else
            {

              swift_unknownObjectRelease();
            }

            return;
          }
        }
      }

      if ((FocusBridge.canAcceptFocus.getter() & 1) == 0)
      {
LABEL_29:

        return;
      }

      v17 = FocusItem.platformResponder.getter();
      if (v17)
      {
        if (FocusItem.isFocusable.getter())
        {
          _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_1(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48], MEMORY[0x1E697EC20]);
          lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
          if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
          {
            goto LABEL_16;
          }

          v18 = UIView.firstFocusableDescendant.getter();
        }

        else
        {
          v18 = 0;
        }

        v17 = v18;
      }

LABEL_16:
      outlined init with copy of FocusItem.Base(a1, v25);
      v19 = v28;
      outlined destroy of FocusItem.Base(v25);
      if (v19)
      {
        if (!v17)
        {
          outlined init with copy of FocusItem.Base(a1, v25);
          if (v28 != 1)
          {

            outlined destroy of FocusItem.Base(v25);
            return;
          }

          outlined init with take of WeakBox<UIFocusItem>(v25, v24);
          Strong = swift_unknownObjectWeakLoadStrong();
          outlined destroy of WeakBox<FocusBridge>(v24, &lazy cache variable for type metadata for WeakBox<UIFocusItem>, 255, type metadata accessor for UIFocusItem, MEMORY[0x1E6981A78]);
          if (Strong)
          {
            *(v3 + 160) = Strong;
            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            [v10 setNeedsFocusUpdate];
            type metadata accessor for UIFocusSystem();
            swift_unknownObjectRetain();
            v21 = static UIFocusSystem.focusSystem(for:)();
            swift_unknownObjectRelease();
            if (v21)
            {
              [v21 requestFocusUpdateToEnvironment_];
              swift_unknownObjectRelease();

              return;
            }

            swift_unknownObjectRelease();
          }

          goto LABEL_29;
        }
      }

      else
      {
        outlined init with copy of FocusItem(a1, v25);
        FocusBridge.focusedItem.setter(v25);

        v17 = a2;
        if (!a2)
        {
          v17 = v10;
        }

        v22 = a2;
      }

      v23 = v17;
      v24[0] = 17;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = v11;
      v27 = v12;
      swift_unknownObjectWeakInit();

      static Update.enqueueAction(reason:_:)();

      outlined destroy of weak FallbackResponderProvider?(v25);
    }
  }
}

uint64_t sub_18C03647C()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type NavigationLinkButtonStyle<Never> and conformance NavigationLinkButtonStyle<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t closure #1 in FocusStore.Entry.updateFocus(_:)(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    FocusBridge.moveFocus(to:designatedPlatformResponder:)(a1, 0);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>();
    lazy protocol witness table accessor for type ResolvedNavigationLink and conformance ResolvedNavigationLink();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t specialized static FocusItem.isFocusChange(from:to:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of FocusItem?(a1, v11);
  outlined init with copy of FocusItem?(a2, v14);
  if (v12)
  {
    v3 = 0;
  }

  else
  {
    v3 = v13 == 1;
  }

  if (v3)
  {
    if (v15)
    {
      v4 = 0;
    }

    else
    {
      v4 = v16 == 1;
    }

    if (v4)
    {
      outlined destroy of FocusItem?(v11);
      v5 = 0;
      return v5 & 1;
    }
  }

  else
  {
    outlined init with copy of FocusItem?(v11, v10);
    if (v15 || v16 != 1)
    {
      outlined init with take of FocusItem(v10, v9);
      outlined init with take of FocusItem(v14, v8);
      v6 = FocusItem.hasEqualIdentity(to:)(v8);
      outlined destroy of FocusItem(v8);
      outlined destroy of FocusItem(v9);
      v5 = !v6;
      outlined destroy of FocusItem?(v11);
      return v5 & 1;
    }

    outlined destroy of FocusItem(v10);
  }

  outlined destroy of WeakBox<UIFocusItem>(v11, type metadata accessor for (FocusItem?, FocusItem?));
  v5 = 1;
  return v5 & 1;
}

uint64_t outlined destroy of WeakBox<UIFocusItem>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI7WeakBoxVySo11UIFocusItem_pGWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  _s7SwiftUI7WeakBoxVySo6UIViewCGMaTm_2(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void type metadata accessor for (FocusItem?, FocusItem?)()
{
  if (!lazy cache variable for type metadata for (FocusItem?, FocusItem?))
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(255, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (FocusItem?, FocusItem?));
    }
  }
}

uint64_t specialized static FocusBridge.representedFocusItem(_:in:)(uint64_t a1, void *a2)
{
  outlined init with copy of FocusItem.Base(a1, v12);
  if (v13)
  {
    outlined destroy of FocusItem.Base(v12);
    outlined init with copy of FocusItem.Base(a1, v12);
    if (v13 == 1)
    {
      outlined init with take of WeakBox<UIFocusItem>(v12, v11);
      Strong = swift_unknownObjectWeakLoadStrong();
      _s7SwiftUI7WeakBoxVySo11UIFocusItem_pGWOhTm_0(v11, &lazy cache variable for type metadata for WeakBox<UIFocusItem>, &lazy cache variable for type metadata for UIFocusItem, &protocolRef_UIFocusItem, type metadata accessor for _UISceneBSActionHandler);
      return Strong;
    }

    else
    {
      outlined destroy of FocusItem.Base(v12);
      return 0;
    }
  }

  else
  {

    type metadata accessor for ListTableViewCell();
    v6 = a2;
    v7 = v6;
    while (1)
    {
      result = swift_dynamicCastClass();
      if (result)
      {
        v9 = &OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host;
        goto LABEL_13;
      }

      type metadata accessor for ListCollectionViewCell(0);
      result = swift_dynamicCastClass();
      if (result)
      {
        break;
      }

      v8 = [v7 parentFocusEnvironment];
      swift_unknownObjectRelease();
      if (!v8)
      {
        return 0;
      }

      v7 = swift_dynamicCastObjCProtocolConditional();
      if (!v7)
      {
        goto LABEL_15;
      }
    }

    v9 = &direct field offset for ListCollectionViewCellBase.host;
LABEL_13:
    v10 = *(result + *v9);
    if (!v10 || v10 != v6)
    {
LABEL_15:
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void type metadata accessor for Button<NavigationLinkStyleConfiguration.Label>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<Button<NavigationLinkStyleConfiguration.Label>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<NavigationLinkStyleConfiguration.Label>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>>)
  {
    type metadata accessor for Button<NavigationLinkStyleConfiguration.Label>(255, &lazy cache variable for type metadata for Button<NavigationLinkStyleConfiguration.Label>, &type metadata for NavigationLinkStyleConfiguration.Label, &protocol witness table for NavigationLinkStyleConfiguration.Label, type metadata accessor for Button);
    type metadata accessor for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<NavigationLinkStyleConfiguration.Label>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>>);
    }
  }
}

uint64_t destroy for FocusItem.Base(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 3)
  {
    v1 = *a1 + 3;
  }

  if (v1 == 2 || v1 == 1)
  {
    JUMPOUT(0x18D011290);
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<NavigationLinkStyleConfiguration.Label>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<NavigationLinkStyleConfiguration.Label>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<NavigationLinkStyleConfiguration.Label>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Button<NavigationLinkStyleConfiguration.Label>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>>();
    lazy protocol witness table accessor for type Button<NavigationLinkStyleConfiguration.Label> and conformance Button<A>();
    lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<NavigationLinkStyleConfiguration.Label>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>)
  {
    type metadata accessor for ButtonStylePredicate<DefaultButtonStyle>();
    type metadata accessor for ButtonStyleModifier<NavigationLinkButtonStyle<Never>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>);
    }
  }
}

uint64_t FocusItem.platformResponder.getter()
{
  outlined init with copy of FocusItem.Base(v0, v4);
  if (v5 == 2)
  {
    outlined init with take of WeakBox<UIView>(v4, v6);
    Strong = swift_unknownObjectWeakLoadStrong();
    outlined destroy of WeakBox<UIView>(v6);
    return Strong;
  }

  outlined destroy of FocusItem.Base(v4);
  outlined init with copy of FocusItem.Base(v0, v4);
  if (v5 != 1)
  {
    outlined destroy of FocusItem.Base(v4);
    return 0;
  }

  outlined init with take of WeakBox<UIFocusItem>(v4, v6);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    outlined destroy of WeakBox<UIFocusItem>(v6, type metadata accessor for WeakBox<UIFocusItem>);
    return 0;
  }

  if (*(v0 + 33))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFocusSystem);
    v3 = static UIFocusSystem.focusSystem(for:)();
    outlined destroy of WeakBox<UIFocusItem>(v6, type metadata accessor for WeakBox<UIFocusItem>);
    if (v3)
    {
      swift_unknownObjectRelease();

      return 0;
    }
  }

  else
  {
    outlined destroy of WeakBox<UIFocusItem>(v6, type metadata accessor for WeakBox<UIFocusItem>);
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return result;
  }

  swift_unknownObjectRelease();
  return 0;
}

void type metadata accessor for ButtonStylePredicate<DefaultButtonStyle>()
{
  if (!lazy cache variable for type metadata for ButtonStylePredicate<DefaultButtonStyle>)
  {
    lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle();
    v0 = type metadata accessor for ButtonStylePredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ButtonStylePredicate<DefaultButtonStyle>);
    }
  }
}

void type metadata accessor for ButtonStyleModifier<NavigationLinkButtonStyle<Never>>()
{
  if (!lazy cache variable for type metadata for ButtonStyleModifier<NavigationLinkButtonStyle<Never>>)
  {
    type metadata accessor for Button<NavigationLinkStyleConfiguration.Label>(255, &lazy cache variable for type metadata for NavigationLinkButtonStyle<Never>, MEMORY[0x1E69E73E0], MEMORY[0x1E6982070], type metadata accessor for NavigationLinkButtonStyle);
    lazy protocol witness table accessor for type NavigationLinkButtonStyle<Never> and conformance NavigationLinkButtonStyle<A>();
    v0 = type metadata accessor for ButtonStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ButtonStyleModifier<NavigationLinkButtonStyle<Never>>);
    }
  }
}

void closure #1 in FocusBridge.moveFocus(to:designatedPlatformResponder:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong becomeFirstResponder];
  }
}

unint64_t lazy protocol witness table accessor for type NavigationLinkButtonStyle<Never> and conformance NavigationLinkButtonStyle<A>()
{
  result = lazy protocol witness table cache variable for type NavigationLinkButtonStyle<Never> and conformance NavigationLinkButtonStyle<A>;
  if (!lazy protocol witness table cache variable for type NavigationLinkButtonStyle<Never> and conformance NavigationLinkButtonStyle<A>)
  {
    type metadata accessor for Button<NavigationLinkStyleConfiguration.Label>(255, &lazy cache variable for type metadata for NavigationLinkButtonStyle<Never>, MEMORY[0x1E69E73E0], MEMORY[0x1E6982070], type metadata accessor for NavigationLinkButtonStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationLinkButtonStyle<Never> and conformance NavigationLinkButtonStyle<A>);
  }

  return result;
}

void @objc _UIHostingView._didChange(toFirstResponder:)(void *a1, uint64_t a2, UIResponder_optional *a3)
{
  v5 = a3;
  v6 = a1;
  _UIHostingView._didChange(toFirstResponder:)(a3);
}

unint64_t lazy protocol witness table accessor for type Button<NavigationLinkStyleConfiguration.Label> and conformance Button<A>()
{
  result = lazy protocol witness table cache variable for type Button<NavigationLinkStyleConfiguration.Label> and conformance Button<A>;
  if (!lazy protocol witness table cache variable for type Button<NavigationLinkStyleConfiguration.Label> and conformance Button<A>)
  {
    type metadata accessor for Button<NavigationLinkStyleConfiguration.Label>(255, &lazy cache variable for type metadata for Button<NavigationLinkStyleConfiguration.Label>, &type metadata for NavigationLinkStyleConfiguration.Label, &protocol witness table for NavigationLinkStyleConfiguration.Label, type metadata accessor for Button);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Button<NavigationLinkStyleConfiguration.Label> and conformance Button<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStylePredicate<DefaultButtonStyle> and conformance ButtonStylePredicate<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStylePredicate<DefaultButtonStyle> and conformance ButtonStylePredicate<A>;
  if (!lazy protocol witness table cache variable for type ButtonStylePredicate<DefaultButtonStyle> and conformance ButtonStylePredicate<A>)
  {
    type metadata accessor for ViewInputFlagModifier<IsToggleButton>(255, &lazy cache variable for type metadata for ButtonStylePredicate<DefaultButtonStyle>, lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle, &type metadata for DefaultButtonStyle, type metadata accessor for ButtonStylePredicate);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStylePredicate<DefaultButtonStyle> and conformance ButtonStylePredicate<A>);
  }

  return result;
}

Swift::Void __swiftcall _UIHostingView._didChange(toFirstResponder:)(UIResponder_optional *toFirstResponder)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for _UIHostingView();
  [(UIResponder_optional *)&v4 _didChangeToFirstResponder:toFirstResponder];

  swift_getWitnessTable();
  v3 = ViewGraphRootValueUpdater.responderNode.getter();
  FocusBridge.firstResponderDidChange(to:rootResponder:)(toFirstResponder, v3);
}

unint64_t lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>();
    lazy protocol witness table accessor for type ButtonStylePredicate<DefaultButtonStyle> and conformance ButtonStylePredicate<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void FocusBridge.firstResponderDidChange(to:rootResponder:)(void *a1, uint64_t a2)
{
  v4 = FocusBridge.host.getter();
  if (!v4)
  {
    return;
  }

  v24 = v4;
  v5 = FocusBridge.host.getter();
  if (!v5)
  {

    return;
  }

  if (!a1 || (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) == 0))
  {
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = xmmword_18CD6A6D0;
    FocusBridge.focusedItem.setter(&v30);

    return;
  }

  v7 = v6;
  v8 = a1;
  FocusBridge.focusedItem.getter(&v30);
  outlined init with copy of FocusItem?(&v30, v26);
  if (v27 || v28 != 1)
  {
    outlined init with take of FocusItem(v26, v25);
    v9 = FocusItem.platformResponder.getter();
    outlined destroy of FocusItem(v25);
    outlined destroy of FocusItem?(&v30);
    if (!v9)
    {
      v9 = v24;
    }

    if (v7 == v9)
    {
      goto LABEL_22;
    }
  }

  else
  {
    outlined destroy of FocusItem?(&v30);
  }

  if (v7 == v24)
  {
    specialized FocusBridge.hostDidBecomeFirstResponder(in:)();
LABEL_22:

    return;
  }

  v23 = v8;
  v10 = [v7 superview];
  if (v10)
  {
    v11 = v10;
    while (1)
    {
      ObjectType = swift_getObjectType();
      v13 = swift_conformsToProtocol2();
      if (v13)
      {
        break;
      }

      v14 = [v11 superview];

      v11 = v14;
      if (!v14)
      {
        goto LABEL_20;
      }
    }

    v16 = *(v13 + 8);
    v17 = v13;
    v18 = v11;
    v15 = v16(ObjectType, v17);
  }

  else
  {
LABEL_20:
    v15 = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = xmmword_18CD6A6D0;
  swift_getObjectType();
  v19 = swift_conformsToProtocol2();
  if (v19)
  {
    v20 = v19;
    v21 = swift_getObjectType();
    if ((*(v20 + 8))(v21, v20))
    {
      v22 = &protocol witness table for UIViewResponder;
    }

    else
    {
      v22 = 0;
    }

    v28 = 0;
    swift_weakInit();
    v29 = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v26[32] = 2;
    v28 = v22;
    swift_weakAssign();

    v26[33] = 0;
  }

  else
  {
    if (a2)
    {
      MEMORY[0x1EEE9AC00](0);
      MEMORY[0x1EEE9AC00](v24);
      dispatch thunk of ResponderNode.visit(applying:)();
    }

    outlined init with copy of FocusItem?(&v30, v26);
  }

  FocusBridge.focusedItem.setter(v26);

  outlined destroy of FocusItem?(&v30);
}

void type metadata accessor for ViewInputFlagModifier<IsToggleButton>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t UIKitPlatformViewHost.focusView.getter()
{
  v0 = dispatch thunk of UICorePlatformViewHost.representedView.getter();
  swift_getObjectType();
  v1 = swift_conformsToProtocol2();
  if (v1 && v0)
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 8))(ObjectType, v2);

    return v4;
  }

  else
  {

    return dispatch thunk of UICorePlatformViewHost.representedView.getter();
  }
}

uint64_t closure #1 in ResponderNode.visitFocusResponders(applying:)@<X0>(void (*a1)(uint64_t, uint64_t)@<X1>, _BYTE *a2@<X8>)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    v5 = result;

    a1(v6, v5);
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance NavigationLinkStyleConfiguration.Label(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<NavigationLinkStyleConfiguration.Label>, lazy protocol witness table accessor for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label, &type metadata for NavigationLinkStyleConfiguration.Label, &lazy protocol witness table cache variable for type SourceInput<NavigationLinkStyleConfiguration.Label> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

void closure #2 in FocusBridge.firstResponderDidChange(to:rootResponder:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, id a4@<X5>, uint64_t a5@<X6>, void *a6@<X7>, _BYTE *a7@<X8>)
{
  (*(a2 + 16))(v20, *a1);
  if (v23)
  {
    v13 = 0;
  }

  else
  {
    v13 = v24 == 1;
  }

  if (v13)
  {
    outlined destroy of FocusItem?(v20);
  }

  else
  {
    outlined init with take of FocusItem(v20, v26);
    if (FocusItem.isFocusable.getter())
    {
      v14 = FocusItem.platformResponder.getter();
      if (!v14)
      {
        v14 = a3;
      }

      v15 = v14;

      if (v15 == a4)
      {
        outlined destroy of FocusItem?(a5);
        outlined init with take of FocusItem(v26, a5);
        *a7 = 2;
        return;
      }
    }

    v16 = FocusItem.platformResponder.getter();
    if (v16)
    {
      v17 = v16;
      if (a6)
      {
        v18 = a6;
        v19 = [v18 isDescendantOfView_];

        outlined destroy of FocusItem(v26);
        if (v19)
        {
          v24 = 0;
          swift_weakInit();
          v25 = 0;
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakAssign();
          v21 = 2;
          v24 = a2;
          swift_weakAssign();
          v22 = 0;
          outlined assign with take of FocusItem?(v20, a5);
          *a7 = 2;
          return;
        }
      }

      else
      {
        outlined destroy of FocusItem(v26);
      }
    }

    else
    {
      outlined destroy of FocusItem(v26);
    }
  }

  *a7 = 0;
}

uint64_t implicit closure #1 in static UpdateViewDestinationViewModifier._makeView(modifier:inputs:body:)(unsigned int a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  type metadata accessor for UpdateViewDestinationViewModifier();
  type metadata accessor for _GraphValue();
  v11 = _GraphValue.value.getter();
  v12 = a2;
  v13 = AGCreateWeakAttribute();
  v14 = 0;
  v15 = 1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = -1;
  updated = type metadata accessor for UpdateViewDestinationViewModifier.RequestWriter();
  v9 = updated;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<(_:)>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v11, closure #1 in Attribute.init<A>(_:)partial apply, v8, updated, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  (*(*(updated - 8) + 8))(&v11, updated);
  return a1;
}

uint64_t @objc _UIHostingView.canBecomeFirstResponder.getter(void *a1)
{
  v1 = a1;
  v2 = _UIHostingView.canBecomeFirstResponder.getter();

  return v2 & 1;
}

uint64_t _UIHostingView.canBecomeFirstResponder.getter()
{

  v0 = FocusBridge.host.getter();
  if (!v0)
  {
LABEL_7:

    return 0;
  }

  v2 = v0;
  v3 = v1;
  if (FocusBridge.canAcceptFocus.getter())
  {
    ObjectType = swift_getObjectType();
    v5 = (*(*(v3 + 8) + 24))(ObjectType);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v5);
      MEMORY[0x1EEE9AC00](v6);
      dispatch thunk of ResponderNode.visit(applying:)();

      return 0;
    }

    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_18C0380EC()
{
  swift_getWitnessTable();

  return ViewGraphRootValueUpdater.responderNode.getter();
}

uint64_t FocusStateBindingResponderFilter.updateValue()()
{
  v1 = *v0;
  type metadata accessor for WeakBox<FocusBridge>(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
  AGGraphGetValue();
  if (v2)
  {

    MultiViewResponder.children.setter();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for FocusItem?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_18CD69590;
    *(v4 + 32) = v1;

    AGGraphSetOutputValue();
  }

  return result;
}

double ButtonFocusInteractionModifier.body(content:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  *(&v22 + 1) = &type metadata for FocusInteractions;
  *&v23 = &protocol witness table for FocusInteractions;
  *&v21 = 3;
  LOBYTE(v25[0]) = 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v21, v25 + 8);
  *&v27 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(&v27 + 1) = 0;
  v21 = v25[0];
  v22 = v25[1];
  v23 = v26;
  v24 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v34 = 16;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  lazy protocol witness table accessor for type PhysicalButtonPressGesture and conformance PhysicalButtonPressGesture();
  lazy protocol witness table accessor for type PhysicalButtonEvent.ButtonType and conformance PhysicalButtonEvent.ButtonType();

  Gesture<>.onChanged(_:)();

  v34 = *&v25[0];
  v35 = *(v25 + 8);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  type metadata accessor for _ChangedGesture<PhysicalButtonPressGesture>();
  lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type _ChangedGesture<PhysicalButtonPressGesture> and conformance _ChangedGesture<A>, type metadata accessor for _ChangedGesture<PhysicalButtonPressGesture>);

  Gesture.onEnded(_:)();

  *v31 = v17;
  *&v31[8] = v18;
  *&v31[24] = v19;
  *v33 = 0;
  *&v33[8] = 0;
  v32 = v20;
  *&v33[16] = 3;
  v26 = v23;
  v27 = v24;
  v25[0] = v21;
  v25[1] = v22;
  *(v30 + 12) = *&v33[4];
  v29 = *&v31[16];
  v30[0] = v20;
  v28 = *v31;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v38 = 0;
  v39 = 0;
  v37 = v20;
  v40 = 3;
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_4(v31, v16, type metadata accessor for AddGestureModifier<_EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>, DefaultGestureCombiner>);
  outlined destroy of LinkDestination.Configuration(&v34, type metadata accessor for AddGestureModifier<_EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>, DefaultGestureCombiner>);
  v12 = v29;
  a5[4] = v28;
  a5[5] = v12;
  a5[6] = v30[0];
  *(a5 + 108) = *(v30 + 12);
  v13 = v25[1];
  *a5 = v25[0];
  a5[1] = v13;
  result = *&v26;
  v15 = v27;
  a5[2] = v26;
  a5[3] = v15;
  return result;
}

uint64_t initializeWithCopy for UpdateViewDestinationViewModifier.RequestWriter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  switch(*(a2 + 128))
  {
    case 0:
      v4 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v4;
      *(a1 + 128) = 0;

      return a1;
    case 1:
      v15 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v15;
      v16 = *(a2 + 56);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v16;
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 128) = 1;

      goto LABEL_23;
    case 2:
      v19 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v19;
      v20 = *(a2 + 72);
      *(a1 + 72) = v20;
      v21 = v20;
      v22 = **(v20 - 8);

      v22(a1 + 48, a2 + 48, v21);
      *(a1 + 88) = *(a2 + 88);
      v23 = 2;
      goto LABEL_58;
    case 3:
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 128) = 3;

      return a1;
    case 4:
      v12 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v12;
      *(a1 + 48) = *(a2 + 48);
      v13 = 4;
      goto LABEL_21;
    case 5:
      v14 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v14;
      *(a1 + 48) = *(a2 + 48);
      v13 = 5;
      goto LABEL_21;
    case 6:
      v33 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v33;
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 128) = 6;

LABEL_23:

      return a1;
    case 0xA:
      v17 = *(a2 + 56);
      *(a1 + 56) = v17;
      (**(v17 - 8))(a1 + 32, a2 + 32);
      v18 = *(a2 + 80);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = v18;
      *(a1 + 88) = *(a2 + 88);
      v13 = 10;
      goto LABEL_21;
    case 0xB:
      v34 = *(a2 + 56);
      *(a1 + 56) = v34;
      (**(v34 - 8))(a1 + 32, a2 + 32);
      v23 = 11;
      goto LABEL_58;
    case 0xC:
      *(a1 + 32) = *(a2 + 32);
      v10 = *(a2 + 64);

      if (v10)
      {
        v11 = *(a2 + 72);
        *(a1 + 64) = v10;
        *(a1 + 72) = v11;
        (**(v10 - 8))(a1 + 40, a2 + 40, v10);
      }

      else
      {
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 72) = *(a2 + 72);
      }

      v39 = *(a2 + 88);
      if (v39 == 1)
      {
        *(a1 + 80) = *(a2 + 80);
      }

      else
      {
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = v39;
      }

      v40 = *(a2 + 104);
      v41 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = v40;
      *(a1 + 112) = v41;
      v42 = 12;
      goto LABEL_52;
    case 0xD:
      *(a1 + 32) = *(a2 + 32);
      v24 = *(a2 + 64);

      if (v24)
      {
        v25 = *(a2 + 72);
        *(a1 + 64) = v24;
        *(a1 + 72) = v25;
        (**(v24 - 8))(a1 + 40, a2 + 40, v24);
      }

      else
      {
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 72) = *(a2 + 72);
      }

      v43 = *(a2 + 88);
      if (v43 == 1)
      {
        *(a1 + 80) = *(a2 + 80);
      }

      else
      {
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = v43;
      }

      v44 = *(a2 + 104);
      v45 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = v44;
      *(a1 + 112) = v45;
      *(a1 + 120) = *(a2 + 120);
      v42 = 13;
      goto LABEL_52;
    case 0xE:
      *(a1 + 32) = *(a2 + 32);
      v26 = *(a2 + 64);

      if (v26)
      {
        v27 = *(a2 + 72);
        *(a1 + 64) = v26;
        *(a1 + 72) = v27;
        (**(v26 - 8))(a1 + 40, a2 + 40, v26);
      }

      else
      {
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 72) = *(a2 + 72);
      }

      v46 = *(a2 + 88);
      if (v46 == 1)
      {
        *(a1 + 80) = *(a2 + 80);
      }

      else
      {
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = v46;
      }

      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      v23 = 14;
      goto LABEL_58;
    case 0x11:
      v31 = *(a2 + 56);
      *(a1 + 56) = v31;
      (**(v31 - 8))(a1 + 32, a2 + 32);
      *(a1 + 72) = *(a2 + 72);
      v32 = *(a2 + 88);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = v32;
      *(a1 + 96) = *(a2 + 96);
      v13 = 17;
LABEL_21:
      *(a1 + 128) = v13;

      return a1;
    case 0x12:
      v28 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v28;
      v29 = *(a2 + 72);

      if (v29)
      {
        v30 = *(a2 + 80);
        *(a1 + 72) = v29;
        *(a1 + 80) = v30;
        (**(v29 - 8))(a1 + 48, a2 + 48, v29);
      }

      else
      {
        v47 = *(a2 + 64);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 64) = v47;
        *(a1 + 80) = *(a2 + 80);
      }

      v48 = *(a2 + 96);
      if (v48 == 1)
      {
        *(a1 + 88) = *(a2 + 88);
      }

      else
      {
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = v48;
      }

      v49 = *(a2 + 112);
      v50 = *(a2 + 120);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = v49;
      *(a1 + 120) = v50;
      v42 = 18;
LABEL_52:
      *(a1 + 128) = v42;

      return a1;
    case 0x13:
      v8 = *(a2 + 56);
      if (v8)
      {
        v9 = *(a2 + 64);
        *(a1 + 56) = v8;
        *(a1 + 64) = v9;
        (**(v8 - 8))(a1 + 32, a2 + 32);
      }

      else
      {
        v37 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v37;
        *(a1 + 64) = *(a2 + 64);
      }

      v38 = *(a2 + 80);
      if (v38 == 1)
      {
        *(a1 + 72) = *(a2 + 72);
      }

      else
      {
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = v38;
      }

      *(a1 + 88) = *(a2 + 88);
      v23 = 19;
      goto LABEL_58;
    case 0x15:
      v35 = *(a2 + 32);
      if (v35)
      {
        v36 = *(a2 + 40);
        *(a1 + 32) = v35;
        *(a1 + 40) = v36;
      }

      else
      {
        *(a1 + 32) = *(a2 + 32);
      }

      v51 = *(a2 + 48);
      if (v51)
      {
        v52 = *(a2 + 56);
        *(a1 + 48) = v51;
        *(a1 + 56) = v52;
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
      }

      v23 = 21;
LABEL_58:
      *(a1 + 128) = v23;
      break;
    default:
      v5 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v5;
      *(a1 + 128) = *(a2 + 128);
      v6 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v6;
      v7 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v7;
      break;
  }

  return a1;
}

uint64_t initializeWithCopy for _FocusableModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  (**(v4 - 8))(a1 + 8, a2 + 8);
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  return a1;
}

uint64_t destroy for OnCommandModifier(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1 + 8);
}

uint64_t destroy for UpdateViewDestinationViewModifier.RequestWriter(uint64_t result)
{
  v1 = result;
  switch(*(result + 128))
  {
    case 0:
      goto LABEL_31;
    case 1:

      goto LABEL_31;
    case 2:

      v2 = (v1 + 6);
      goto LABEL_36;
    case 3:

    case 4:
    case 5:

      goto LABEL_31;
    case 6:

      goto LABEL_31;
    case 0xA:
    case 0x11:
      __swift_destroy_boxed_opaque_existential_1(result + 32);

      goto LABEL_31;
    case 0xB:
      v2 = result + 32;
LABEL_36:

      return __swift_destroy_boxed_opaque_existential_1(v2);
    case 0xC:
    case 0xD:

      if (v1[8])
      {
        __swift_destroy_boxed_opaque_existential_1((v1 + 5));
      }

      if (v1[11] != 1)
      {
      }

      goto LABEL_31;
    case 0xE:

      if (v1[8])
      {
        __swift_destroy_boxed_opaque_existential_1((v1 + 5));
      }

      result = v1[11];
      if (result == 1)
      {
        return result;
      }

      goto LABEL_31;
    case 0x12:

      if (v1[9])
      {
        __swift_destroy_boxed_opaque_existential_1((v1 + 6));
      }

      if (v1[12] != 1)
      {
      }

      goto LABEL_31;
    case 0x13:
      if (*(result + 56))
      {
        __swift_destroy_boxed_opaque_existential_1(result + 32);
      }

      result = v1[10];
      if (result == 1)
      {
        return result;
      }

      goto LABEL_31;
    case 0x15:
      if (*(result + 32))
      {
      }

      if (v1[6])
      {
LABEL_31:
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t implicit closure #1 in static UpdateViewDestinationRequestProcessor._makeView(modifier:inputs:body:)(unint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  type metadata accessor for UpdateViewDestinationRequestProcessor();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  UpdateViewDestinationRequestProcessor.PreferenceDebouncer.init(seeds:modifier:viewListID:phase:)(a1, a3, *(a4 + 24), v12);
  updated = type metadata accessor for UpdateViewDestinationRequestProcessor.PreferenceDebouncer();
  v14 = updated;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<(_:)>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v12, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_15, v13, updated, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return a2;
}

uint64_t TooltipModifier.TooltipResponderUpdater.updateValue()()
{
  v1 = *v0;

  *(v1 + 216) = AGCreateWeakAttribute();
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;
  v6 = Value[1];
  AGGraphGetValue();
  v8 = v7;
  v9 = AGGraphGetValue();
  v12 = *v9;
  v11 = *(v9 + 8);
  v18 = *(v9 + 32);
  v19 = *(v9 + 16);
  if ((v4 & 1) != 0 || (v8 & 1) != 0 || (v10 & 1) != 0 || (type metadata accessor for [ViewResponder](0), !AGGraphGetOutputValue()))
  {
    *(v1 + 224) = v5;
    *(v1 + 232) = v6;

    *(v1 + 240) = MEMORY[0x18D00B390](v13);
    *(v1 + 248) = v14;
    *(v1 + 256) = v12;
    *(v1 + 264) = v11;
    *(v1 + 272) = v19;
    *(v1 + 288) = v18;
  }

  else
  {
  }

  type metadata accessor for [ViewResponder](0);
  AGGraphGetValue();
  if (v15)
  {

    MultiViewResponder.children.setter();
  }

  if (AGGraphGetOutputValue())
  {
  }

  else
  {
    type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_18CD69590;
    *(v17 + 32) = v1;

    AGGraphSetOutputValue();
  }
}

double UpdateViewDestinationRequestProcessor.PreferenceDebouncer.init(seeds:modifier:viewListID:phase:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v4 = a2;
  v5 = a1;
  v7 = HIDWORD(a1);
  v13 = HIDWORD(a2);
  type metadata accessor for GraphHost();
  v8 = MEMORY[0x18D00B7D0]();
  swift_beginAccess();
  v9 = *(v8 + 64);

  type metadata accessor for Optional();
  LODWORD(v8) = AGGraphCreateOffsetAttribute2();
  type metadata accessor for UpdateViewDestinationRequestProcessor();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v11 = AGGraphCreateOffsetAttribute2();
  *a4 = v5;
  *(a4 + 4) = v7;
  *(a4 + 8) = v8;
  *(a4 + 12) = OffsetAttribute2;
  *(a4 + 16) = v11;
  *(a4 + 20) = a3;
  *(a4 + 24) = v4;
  *(a4 + 28) = v13;
  *(a4 + 32) = v9;
  *(a4 + 36) = 0xFFFFFFFFLL;
  *(a4 + 44) = 0;
  result = NAN;
  *(a4 + 48) = -1;
  *(a4 + 56) = 0;
  return result;
}

uint64_t closure #1 in FocusBridge.acceptsFirstResponder.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, _BYTE *a4@<X8>)
{
  (*(a2 + 16))(v10, *a1);
  if (v12)
  {
    v6 = 0;
  }

  else
  {
    v6 = v13 == 1;
  }

  if (v6)
  {
    result = outlined destroy of FocusItem?(v10);
  }

  else
  {
    outlined init with take of FocusItem(v10, v14);
    outlined init with copy of FocusItem.Base(v14, v10);
    v7 = v11;
    outlined destroy of FocusItem.Base(v10);
    if (v7)
    {
      result = outlined destroy of FocusItem(v14);
    }

    else
    {
      v9 = FocusItem.isFocusable.getter();
      result = outlined destroy of FocusItem(v14);
      if (v9)
      {
        *a3 = 1;
        *a4 = 2;
        return result;
      }
    }
  }

  *a4 = 0;
  return result;
}

__n128 __swift_memcpy60_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t FocusBridge.focusedItem.setter(uint64_t a1)
{
  FocusBridge.updatedFocusItem(_:)(a1, v6);
  swift_beginAccess();
  outlined init with copy of FocusItem?(v1 + 88, v5);
  swift_beginAccess();
  outlined assign with copy of FocusItem?(v6, v1 + 88);
  swift_endAccess();
  outlined init with copy of FocusItem?(v1 + 88, v4);
  FocusBridge.didChangeFocusItem(from:to:)(v5, v4);
  outlined destroy of FocusItem?(a1);
  outlined destroy of FocusItem?(v4);
  outlined destroy of FocusItem?(v5);
  return outlined destroy of FocusItem?(v6);
}

uint64_t Transform.init(modifier:nodeList:accessibilityEnabled:selfAttribute:scope:state:isRemoved:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 4) = a2;
  *(a8 + 8) = a3;
  *(a8 + 12) = a4;
  *(a8 + 16) = a5;
  v11 = type metadata accessor for Transform();
  v12 = *(v11 + 52);
  type metadata accessor for Transform.State();
  v13 = type metadata accessor for Optional();
  result = (*(*(v13 - 8) + 32))(a8 + v12, a6, v13);
  *(a8 + *(v11 + 56)) = a7;
  return result;
}

void storeEnumTagSinglePayload for Transform.State(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFB)
  {
    v7 = 251;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 1) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v15 = 0;
    v16 = a2 - v8;
    if (a2 <= v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = a3 - v8;
    if (((v10 + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = a2 - v8;
    if (a2 <= v8)
    {
LABEL_20:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *&a1[v11] = 0;
      }

      else if (v15)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      v20 = v10 + 8;
      if (v6 < 0x7FFFFFFF)
      {
        v23 = (&a1[v20 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v24 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v24 = a2 - 1;
        }

        *v23 = v24;
      }

      else if (v7 >= a2)
      {
        v25 = *(v5 + 56);
        v26 = &a1[v9 + 1] & ~v9;

        v25(v26);
      }

      else if (v10 != -8)
      {
        v21 = ~v7 + a2;
        v22 = a1;
        bzero(a1, v20);
        *v22 = v21;
      }

      return;
    }
  }

  if (((v10 + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  if (((v10 + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v18 = ~v8 + a2;
    v19 = a1;
    bzero(a1, ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    a1 = v19;
    *v19 = v18;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      *&a1[v11] = v17;
    }

    else
    {
      *&a1[v11] = v17;
    }
  }

  else if (v15)
  {
    a1[v11] = v17;
  }
}

uint64_t outlined assign with copy of FocusItem?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FocusItem?();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void FocusBridge.didChangeFocusItem(from:to:)(uint64_t a1, uint64_t a2)
{
  v4 = FocusBridge.host.getter();
  if (v4)
  {
    v7 = v4;
    if (specialized static FocusItem.isFocusChange(from:to:)(a1, a2))
    {
      outlined init with copy of FocusItem?(a1, v11);
      if (v12 || v13 != 1)
      {
        outlined init with copy of FocusItem.Base(v11, v8);
        if (v10)
        {
          outlined destroy of FocusItem.Base(v8);
        }

        else
        {
          v5 = v9;

          v5(0);
        }

        outlined destroy of FocusItem(v11);
      }

      else
      {
        outlined destroy of FocusItem?(v11);
      }

      outlined init with copy of FocusItem?(a2, v11);
      if (v12 || v13 != 1)
      {
        outlined init with copy of FocusItem.Base(v11, v8);
        if (v10)
        {
          outlined destroy of FocusItem.Base(v8);
        }

        else
        {
          v6 = v9;

          v6(1);
        }

        outlined destroy of FocusItem(v11);
      }

      else
      {
        outlined destroy of FocusItem?(v11);
      }

      swift_getObjectType();
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
    }

    else
    {
    }
  }
}

_DWORD *initializeWithCopy for Transform(_DWORD *a1, int *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2 + 7;
  *a1 = v4;
  v5 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFFCLL);
  v6 = (((v3 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v6;
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v8;
  v10 = ((v9 + 11) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = *(a3 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  v15 = *(v13 + 80);
  v16 = *(v13 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v17 = ((v10 + v15 + 8) & v16);
  v18 = ((v11 + v15 + 8) & v16);
  v19 = ~v15;
  v20 = v15 + 1;
  v21 = *(v13 + 64) + 7;
  v22 = (v21 + ((v15 + 1) & ~v15)) & 0xFFFFFFFFFFFFFFF8;
  v23 = v22 + 8;
  v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;

  if (v14 < 0x7FFFFFFF)
  {
    v27 = *&v18[v23];
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    v26 = v24 + 8;
    if (v27 != -1)
    {
      goto LABEL_3;
    }

LABEL_7:
    *v17 = *v18;
    v28 = &v17[v20] & v19;
    v29 = &v18[v20] & v19;
    (*(v13 + 16))(v28, v29, v12);
    *((v21 + v28) & 0xFFFFFFFFFFFFFFF8) = *((v21 + v29) & 0xFFFFFFFFFFFFFFF8);
    *&v17[v23] = *&v18[v23];

    goto LABEL_8;
  }

  v25 = (*(v13 + 48))(&v18[v20] & v19, v14, v12);
  v26 = v24 + 8;
  if (!v25)
  {
    goto LABEL_7;
  }

LABEL_3:
  memcpy(v17, v18, v26);
LABEL_8:
  v17[v26] = v18[v26];
  return a1;
}

uint64_t destroy for Transform(uint64_t a1, uint64_t a2)
{
  v3 = (((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;

  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + (v6 | 7) + 8) & ~(v6 | 7);
  v8 = ~v6;
  v9 = v6 + 1;
  if (*(v5 + 84) >= 0x7FFFFFFFu)
  {
    result = (*(v5 + 48))((v9 + v7) & v8);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v11 = *(((*(*(v4 - 8) + 64) + ((v6 + 1) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8 + v7);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  result = (v11 + 1);
  if (v11 == -1)
  {
LABEL_7:
    (*(v5 + 8))((v9 + v7) & v8, v4);
  }

  return result;
}

uint64_t PrimitiveNavigationLink.NavigationLinkViewRule.updateValue()(uint64_t a1)
{
  v2 = v1;
  v91 = *MEMORY[0x1E69E9840];
  v68 = *(*(a1 + 16) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v70 = v5;
  v71 = &v63.i8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v6[1].i64[1];
  v8 = v6[2];
  v81.i64[0] = v5;
  v81.i64[1] = v7;
  v75 = v8;
  v82 = v8;
  v9 = type metadata accessor for StyledNavigationLinkButton();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v72 = v63.i64 - v10;
  v76 = v7;
  v11 = type metadata accessor for NavigationDestinationPayload();
  v69 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v63.i8[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63.i8[-v14];
  v16 = v2[1];
  v79[2] = *v2;
  v80[0] = v16;
  *(v80 + 9) = *(v2 + 25);
  PrimitiveNavigationLink.NavigationLinkViewRule.listKey.getter(&v81);
  v17.i64[0] = 2;
  v18.i64[0] = v84;
  v19 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(v18, v17)).i64[0], 0);
  if (v84 == 2)
  {
    v20 = 1;
  }

  else
  {
    v20 = v84;
  }

  v63 = vandq_s8(v82, v19);
  v64 = vandq_s8(v81, v19);
  if (v84 == 2)
  {
    v21 = 0;
  }

  else
  {
    v21 = v83;
  }

  v22 = v2[1];
  v78[2] = *v2;
  v79[0] = v22;
  *(v79 + 9) = *(v2 + 25);
  v23 = v15;
  PrimitiveNavigationLink.NavigationLinkViewRule.payload.getter(v15);
  v24 = v2[1];
  v77 = *v2;
  v78[0] = v24;
  *(v78 + 9) = *(v2 + 25);
  v25 = a1;
  PrimitiveNavigationLink.NavigationLinkViewRule.authority.getter(&v87);
  outlined init with copy of NavigationAuthority??(&v87, &v85);
  if (*(&v85 + 1) == 2)
  {
    outlined destroy of NavigationAuthority??(&v87);
    v89 = xmmword_18CD633F0;
    *&v90[0] = 0;
  }

  else
  {
    outlined init with take of NavigationAuthority?(&v85, &v89);
    outlined destroy of NavigationAuthority??(&v87);
  }

  outlined assign with take of NavigationAuthority?(&v89, &v23[v11[11]]);
  v26 = &v23[v11[12]];
  v27 = v23;
  v28 = v63;
  *v26 = v64;
  v26[1] = v28;
  v26[2].i64[0] = v21;
  v26[2].i64[1] = v20;
  v29 = v2[1];
  v89 = *v2;
  v90[0] = v29;
  *(v90 + 9) = *(v2 + 25);
  v30 = v25;
  v31 = PrimitiveNavigationLink.NavigationLinkViewRule.stackKey.getter();
  if (v32 == 7)
  {
    v34 = 0;
  }

  else
  {
    v34 = v31;
  }

  v35 = 6;
  if (v32 == 7)
  {
    v36 = 0;
  }

  else
  {
    v35 = v32;
    v36 = v33;
  }

  v37 = v11[13];
  v38 = v11;
  v65 = v27;
  v66 = v11;
  v39 = (v27 + v37);
  *v39 = v34;
  v39[1] = v35;
  v39[2] = v36;
  v40 = v2[1];
  v87 = *v2;
  v88[0] = v40;
  *(v88 + 9) = *(v2 + 25);
  v41 = v27;
  PrimitiveNavigationLink.NavigationLinkViewRule.deprecated_isActiveBindingSideEffect(payload:)(v27, v25);
  v42 = v70;
  Value = AGGraphGetValue();
  v44 = v71;
  (*(v68 + 16))(v71, Value, v42);
  v45 = v69;
  v46 = v67;
  (*(v69 + 16))(v67, v41, v38);
  v47 = swift_allocObject();
  *&v48 = v42;
  *(&v48 + 1) = v76;
  v49 = v76;
  v50 = v75;
  v47[1] = v48;
  v47[2] = v50;
  v51 = *v2;
  v52 = v2[1];
  v47[3] = *v2;
  v47[4] = v52;
  v53 = *(v2 + 25);
  *(v47 + 73) = v53;
  v85 = v51;
  v86[0] = v52;
  *(v86 + 9) = v53;
  v54 = PrimitiveNavigationLink.NavigationLinkViewRule.isPresentingViewDestinationView.getter();
  v64.i64[0] = v75.i64[1];
  v68 = v75.i64[0];
  v62[0] = v49;
  v56 = v72;
  v58 = StyledNavigationLinkButton.init(label:payload:presentHandlingLegacyLinks:isPresentingViewDestinationView:)(v44, v46, partial apply for implicit closure #5 in implicit closure #4 in PrimitiveNavigationLink.NavigationLinkViewRule.updateValue(), v47, v54, v57, v55 & 1, v42, v72, v62[0], v75.i64[0], v75.i64[1], type metadata accessor for StyledNavigationLinkButton);
  MEMORY[0x1EEE9AC00](v58);
  v62[2] = v30;
  v62[3] = swift_getWitnessTable();
  v59 = v74;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v56, partial apply for closure #1 in StatefulRule.value.setter, v62, v74, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v60);
  (*(v73 + 8))(v56, v59);
  (*(v45 + 8))(v65, v66);
  return $defer #1 <A, B>() in PrimitiveNavigationLink.NavigationLinkViewRule.updateValue()(v2, v42, v76, v68, v64.i64[0]);
}

BOOL FocusItem.isExpired.getter()
{
  outlined init with copy of FocusItem.Base(v0, v7);
  if (v8)
  {
    if (v8 == 1)
    {
      outlined init with take of WeakBox<UIFocusItem>(v7, &v6);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of WeakBox<UIFocusItem>(&v6, type metadata accessor for WeakBox<UIFocusItem>);
      v2 = Strong;
      v3 = Strong == 0;
      if (v2)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      outlined init with take of WeakBox<UIView>(v7, &v6);
      v4 = swift_unknownObjectWeakLoadStrong();
      outlined destroy of WeakBox<UIView>(&v6);
      v3 = v4 == 0;
      if (v4)
      {
      }
    }
  }

  else
  {
    outlined destroy of FocusItem.Base(v7);
    return 0;
  }

  return v3;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), void (*a7)(void))
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

  if (v13)
  {
    type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_0(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 < a4 || v14 + 4 >= &a4[v12 + 4])
    {
      a7(0);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      a7(0);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

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

  if (v13)
  {
    type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_0(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 88);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[11 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 88 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

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

  if (v13)
  {
    type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_0(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 5);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[4 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 32 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

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

  if (v13)
  {
    type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_0(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

__int128 *PrimitiveNavigationLink.NavigationLinkViewRule.listKey.getter@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for Never?(0, &lazy cache variable for type metadata for NavigationState.ListKey?, &type metadata for NavigationState.ListKey, MEMORY[0x1E69E6720]);
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = *result;
    v4 = result[1];
    v5 = result[2];
  }

  else
  {
    v5 = xmmword_18CD874C0;
    v3 = 0uLL;
    v4 = 0uLL;
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t outlined init with copy of WeakBox<ViewResponder>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakBox<ViewResponder>(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PrimitiveNavigationLink.NavigationLinkViewRule.payload.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NavigationDestinationPayload();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t initializeWithCopy for NavigationDestinationPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v9 = *(v5 + 48) + 7;
  v6 = (v9 + a1) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v9 + a2) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 24);
  LODWORD(v9) = -1;
  if (v8 < 0xFFFFFFFF)
  {
    v9 = *(v7 + 24);
  }

  v10 = v9 + 1;
  if (v8)
  {
    v11 = v10 > 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 || v10)
  {
    v12 = *v7;
    v13 = *(v7 + 16);
    *(v6 + 32) = *(v7 + 32);
    *v6 = v12;
    *(v6 + 16) = v13;
  }

  else
  {
    *(v6 + 24) = v8;
    *(v6 + 32) = *(v7 + 32);
    (**(v8 - 8))(v6, v7);
  }

  v14 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;
  *(v14 + 8) = *(v15 + 8);
  v16 = (v6 + 63) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 17);
  if (v18 >= 2)
  {
    v18 = *v17 + 2;
  }

  if (v18 == 1)
  {
    *v16 = *v17;
    *(v16 + 8) = *(v17 + 8);
    *(v16 + 16) = *(v17 + 16);

    v19 = 1;
  }

  else
  {
    v19 = 0;
    *v16 = *v17;
    *(v16 + 8) = *(v17 + 8);
  }

  *(v16 + 17) = v19;
  v20 = (v16 + 25) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + 25) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v21 + 8);
  if (v22 >= 0xFFFFFFFF)
  {
    LODWORD(v22) = -1;
  }

  if (v22 - 1 < 0)
  {
    swift_weakCopyInit();
    *(v20 + 8) = *(v21 + 8);
    *(v20 + 16) = *(v21 + 16);
  }

  else
  {
    v23 = *v21;
    *(v20 + 16) = *(v21 + 16);
    *v20 = v23;
  }

  v24 = ((v20 + 31) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v21 + 31) & 0xFFFFFFFFFFFFFFF8);
  v26 = *v25;
  v27 = v25[2];
  v24[1] = v25[1];
  v24[2] = v27;
  *v24 = v26;
  v28 = (v24 + 55) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v25 + 55) & 0xFFFFFFFFFFFFFFF8;
  v30 = *v29;
  *(v28 + 16) = *(v29 + 16);
  *v28 = v30;
  return a1;
}

uint64_t assignWithTake for FocusStore.Entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v11 + 8;
  v13 = *(v10 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v14 = ((v7 + v11 + 8) & v13);
  v15 = ((v8 + v11 + 8) & v13);
  if (v14 == v15)
  {
    return a1;
  }

  v16 = v9;
  v17 = v11 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v18 = *(v10 + 64);
  v45 = v18;
  v46 = *(v9 - 8);
  if (((v11 + 16) & v17) + ((v18 + ((v11 + 9) & ~v11)) & 0xFFFFFFFFFFFFFFFCLL) + 9 <= 0x10)
  {
    v19 = 16;
  }

  else
  {
    v19 = ((v11 + 16) & v17) + ((v18 + ((v11 + 9) & ~v11)) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  }

  v20 = v14[v19];
  v21 = v20 - 2;
  if (v20 >= 2)
  {
    if (v19 <= 3)
    {
      v22 = v19;
    }

    else
    {
      v22 = 4;
    }

    if (v22 <= 1)
    {
      if (!v22)
      {
        goto LABEL_19;
      }

      v23 = *v14;
    }

    else if (v22 == 2)
    {
      v23 = *v14;
    }

    else if (v22 == 3)
    {
      v23 = *v14 | (v14[2] << 16);
    }

    else
    {
      v23 = *v14;
    }

    v24 = (v23 | (v21 << (8 * v19))) + 2;
    v20 = v23 + 2;
    if (v19 < 4)
    {
      v20 = v24;
    }
  }

LABEL_19:
  if (v20 == 1)
  {

    v25 = ~v11;
    (*(v46 + 8))((v11 + ((((v12 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) & v17) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v11, v16);
  }

  else
  {
    v25 = ~v11;
    swift_weakDestroy();
    swift_weakDestroy();
  }

  v26 = v15[v19];
  v27 = v26 - 2;
  if (v26 >= 2)
  {
    if (v19 <= 3)
    {
      v28 = v19;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v29 = *v15;
      }

      else if (v28 == 3)
      {
        v29 = *v15 | (v15[2] << 16);
      }

      else
      {
        v29 = *v15;
      }

LABEL_34:
      v30 = (v29 | (v27 << (8 * v19))) + 2;
      v26 = v29 + 2;
      if (v19 < 4)
      {
        v26 = v30;
      }

      goto LABEL_36;
    }

    if (v28)
    {
      v29 = *v15;
      goto LABEL_34;
    }
  }

LABEL_36:
  if (v26 == 1)
  {
    *v14 = *v15;
    v31 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    v32 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v32;
    v33 = ((v31 + v12) & v17);
    v34 = ((v32 + v12) & v17);
    *v33 = *v34;
    v33[1] = v34[1];
    v33[2] = v34[2];
    v33[3] = v34[3];
    v35 = (v33 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v36 = (v34 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v37 = *v36;
    *(v35 + 4) = *(v36 + 4);
    *v35 = v37;
    v38 = (v11 + 5 + v35) & v25;
    v39 = (v11 + 5 + v36) & v25;
    (*(v46 + 32))(v38, v39, v16);
    *(v45 + v38) = *(v45 + v39);
    v40 = (v45 + v38) & 0xFFFFFFFFFFFFFFFCLL;
    v41 = (v45 + v39) & 0xFFFFFFFFFFFFFFFCLL;
    v42 = *(v41 + 4);
    *(v40 + 8) = *(v41 + 8);
    *(v40 + 4) = v42;
    v43 = 1;
  }

  else
  {
    swift_weakTakeInit();
    swift_weakTakeInit();
    v43 = 0;
  }

  v14[v19] = v43;
  return a1;
}

double PrimitiveNavigationLink.NavigationLinkViewRule.authority.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Never?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    _s7SwiftUI28NavigationLinkPresentedValueOSgWOcTm_0(WeakValue, a1, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_18CD874C0;
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t outlined init with copy of NavigationLinkPresentedValue?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for NavigationLinkPresentedValue?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI28NavigationLinkPresentedValueOSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for Never?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

BOOL FocusItem.hasEqualIdentity(to:)(uint64_t a1)
{
  outlined init with copy of FocusItem.Base(v1, v12);
  outlined init with copy of FocusItem.Base(a1, v14);
  if (v13)
  {
    if (v13 == 1)
    {
      outlined init with copy of FocusItem.Base(v12, v11);
      if (v15 == 1)
      {
        outlined init with take of WeakBox<UIFocusItem>(v11, v10);
        outlined init with take of WeakBox<UIFocusItem>(v14, v9);
        Strong = swift_unknownObjectWeakLoadStrong();
        v4 = swift_unknownObjectWeakLoadStrong();
        outlined destroy of WeakBox<UIFocusItem>(v9, type metadata accessor for WeakBox<UIFocusItem>);
        outlined destroy of WeakBox<UIFocusItem>(v10, type metadata accessor for WeakBox<UIFocusItem>);
        if (Strong)
        {
          if (v4)
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
LABEL_13:
            v5 = Strong == v4;
LABEL_26:
            outlined destroy of FocusItem.Base(v12);
            return v5;
          }

          goto LABEL_23;
        }

        if (v4)
        {
LABEL_23:
          swift_unknownObjectRelease();
          goto LABEL_25;
        }

LABEL_22:
        v5 = 1;
        goto LABEL_26;
      }

      outlined destroy of WeakBox<UIFocusItem>(v11, type metadata accessor for WeakBox<UIFocusItem>);
    }

    else
    {
      outlined init with copy of FocusItem.Base(v12, v11);
      if (v15 == 2)
      {
        outlined init with take of WeakBox<UIView>(v11, v10);
        outlined init with take of WeakBox<UIView>(v14, v9);
        Strong = swift_unknownObjectWeakLoadStrong();
        v4 = swift_unknownObjectWeakLoadStrong();
        outlined destroy of WeakBox<UIView>(v9);
        outlined destroy of WeakBox<UIView>(v10);
        if (Strong)
        {
          if (v4)
          {

            goto LABEL_13;
          }
        }

        else
        {
          if (!v4)
          {
            goto LABEL_22;
          }
        }

LABEL_25:
        v5 = 0;
        goto LABEL_26;
      }

      outlined destroy of WeakBox<UIView>(v11);
    }
  }

  else
  {
    outlined init with copy of FocusItem.Base(v12, v11);
    if (!v15)
    {
      v6 = v11[0];
      v7 = v14[0];

      v5 = v6 == v7;
      goto LABEL_26;
    }
  }

  outlined destroy of WeakBox<UIFocusItem>(v12, type metadata accessor for (FocusItem.Base, FocusItem.Base));
  return 0;
}

void type metadata accessor for NavigationAuthority??()
{
  if (!lazy cache variable for type metadata for NavigationAuthority??)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for NavigationAuthority?);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NavigationAuthority??);
    }
  }
}

uint64_t outlined init with copy of NavigationAuthority??(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NavigationAuthority??();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PrimitiveNavigationLink.NavigationLinkViewRule.stackKey.getter()
{
  type metadata accessor for Never?(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6720]);
  result = AGGraphGetWeakValue();
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t PrimitiveNavigationLink.NavigationLinkViewRule.deprecated_isActiveBindingSideEffect(payload:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for NavigationDestinationPayload();
  result = NavigationDestinationPayload.deprecated_isActive.getter(v6);
  if (v8)
  {
    v13[0] = result;
    v13[1] = v8;
    v14 = v9 & 1;
    type metadata accessor for Never?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v16);
    v10 = v16;

    v11 = *(v3 + 40);
    if (v11 == 2)
    {
      static Semantics.v7.getter();
      result = isLinkedOnOrAfter(_:)();
      if ((result & v10 & 1) == 0)
      {
        return result;
      }

      return PrimitiveNavigationLink.NavigationLinkViewRule.present(_:)(a1, a2);
    }

    if (v10 == (v11 & 1))
    {
      return result;
    }

    if (v10)
    {
      return PrimitiveNavigationLink.NavigationLinkViewRule.present(_:)(a1, a2);
    }

    _s7SwiftUI28NavigationLinkPresentedValueOSgWOcTm_0(a1 + *(v6 + 28), v13, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
    v12 = v15;
    result = outlined destroy of NavigationLinkPresentedValue?(v13, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
    if (v12 == 1)
    {
      return PrimitiveNavigationLink.NavigationLinkViewRule.dismiss(_:)(a1, a2);
    }
  }

  return result;
}

uint64_t NavigationDestinationPayload.deprecated_isActive.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  if (*(v2 + 17) != 1)
  {
    return 0;
  }

  v3 = *v2;

  return v3;
}

uint64_t PrimitiveNavigationLink.NavigationLinkViewRule.isPresentingViewDestinationView.getter()
{
  type metadata accessor for Never?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v0 = *AGGraphGetValue();

  return v0;
}

uint64_t StyledNavigationLinkButton.init(label:payload:presentHandlingLegacyLinks:isPresentingViewDestinationView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(void, void *))
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v27[0] = a8;
  v27[1] = a10;
  v27[2] = a11;
  v27[3] = a12;
  v19 = a13(0, v27);
  v20 = v19[13];
  v21 = type metadata accessor for NavigationDestinationPayload();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v23 = (a9 + v19[14]);
  *v23 = a3;
  v23[1] = a4;
  v24 = a9 + v19[15];
  *v24 = a5;
  *(v24 + 8) = a6;
  *(v24 + 16) = a7;
  return result;
}

uint64_t initializeWithTake for NavigationDestinationPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 16);
  *(v7 + 32) = *(v8 + 32);
  *v7 = v9;
  *(v7 + 16) = v10;
  v11 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);
  v13 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 63) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 17);
  if (v15 >= 2)
  {
    v15 = *v14 + 2;
  }

  if (v15 == 1)
  {
    v16 = *v14;
    *(v13 + 16) = *(v14 + 16);
    *v13 = v16;
    v17 = 1;
  }

  else
  {
    v17 = 0;
    *v13 = *v14;
  }

  *(v13 + 17) = v17;
  v18 = (v13 + 25) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v14 + 25) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v19 + 8);
  if (*(v19 + 8) >= 0xFFFFFFFFuLL)
  {
    v20 = -1;
  }

  if (v20 - 1 < 0)
  {
    v18 = swift_weakTakeInit();
    *(v18 + 8) = *(v19 + 8);
  }

  else
  {
    v21 = *v19;
    *(v18 + 16) = *(v19 + 16);
    *v18 = v21;
  }

  v22 = ((v18 + 31) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v19 + 31) & 0xFFFFFFFFFFFFFFF8);
  v24 = *v23;
  v25 = v23[2];
  v22[1] = v23[1];
  v22[2] = v25;
  *v22 = v24;
  v26 = (v22 + 55) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v23 + 55) & 0xFFFFFFFFFFFFFFF8;
  v28 = *v27;
  *(v26 + 16) = *(v27 + 16);
  *v26 = v28;
  return a1;
}

uint64_t initializeWithCopy for StyledNavigationLinkButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 48);
  v9 = v7 + 16;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 16))(v12, v13);
  v14 = *(v9 + 48) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 24);
  LODWORD(v18) = -1;
  if (v17 < 0xFFFFFFFF)
  {
    v18 = *(v16 + 24);
  }

  v19 = v18 + 1;
  if (v17)
  {
    v20 = v19 > 1;
  }

  else
  {
    v20 = 0;
  }

  if (v20 || v19)
  {
    v21 = *v16;
    v22 = *(v16 + 16);
    *(v15 + 32) = *(v16 + 32);
    *v15 = v21;
    *(v15 + 16) = v22;
  }

  else
  {
    *(v15 + 24) = v17;
    *(v15 + 32) = *(v16 + 32);
    (**(v17 - 8))((v14 + v12) & 0xFFFFFFFFFFFFFFF8, (v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  }

  v23 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v23 = *v24;
  *(v23 + 8) = *(v24 + 8);
  v25 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v26 + 17);
  if (v27 >= 2)
  {
    v27 = *v26 + 2;
  }

  if (v27 == 1)
  {
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
    *(v25 + 16) = *(v26 + 16);

    v28 = 1;
  }

  else
  {
    v28 = 0;
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
  }

  *(v25 + 17) = v28;
  v29 = (v25 + 25) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v26 + 25) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(v30 + 8);
  if (v31 >= 0xFFFFFFFF)
  {
    LODWORD(v31) = -1;
  }

  if (v31 - 1 < 0)
  {
    swift_weakCopyInit();
    *(v29 + 8) = *(v30 + 8);
    *(v29 + 16) = *(v30 + 16);
  }

  else
  {
    v32 = *v30;
    *(v29 + 16) = *(v30 + 16);
    *v29 = v32;
  }

  v33 = ((v29 + 31) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v30 + 31) & 0xFFFFFFFFFFFFFFF8);
  v35 = *v34;
  v36 = v34[2];
  v33[1] = v34[1];
  v33[2] = v36;
  *v33 = v35;
  v37 = (v33 + 55) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v34 + 55) & 0xFFFFFFFFFFFFFFF8;
  v39 = *v38;
  *(v37 + 16) = *(v38 + 16);
  *v37 = v39;
  v40 = (((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v41 = (v40 + v12);
  v42 = (v40 + v13);
  v43 = v42[1];
  *v41 = *v42;
  v41[1] = v43;
  v44 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v44 = *v45;
  *(v44 + 8) = *(v45 + 8);
  *(v44 + 16) = *(v45 + 16);

  return a1;
}

uint64_t destroy for StyledNavigationLinkButton(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(*(a2 + 24) - 8);
  v7 = v6 + 8;
  v8 = *(v6 + 80) & 0xF8 | 7;
  v9 = (v5 + v8) & ~v8;
  (*(v6 + 8))(v9);
  v10 = *(v7 + 56) + 7;
  v11 = (v10 + v9) & 0xFFFFFFFFFFFFFFF8;
  if (*(v11 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1((v10 + v9) & 0xFFFFFFFFFFFFFFF8);
  }

  v12 = (v11 + 63) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 17);
  if (v13 >= 2)
  {
    v13 = *v12 + 2;
  }

  if (v13 == 1)
  {
  }

  v14 = *(((v12 + 25) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  if (v14 - 1 < 0)
  {
    swift_weakDestroy();
  }
}

uint64_t destroy for NavigationDestinationPayload(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v4 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  v5 = (v4 + 63) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v5 + 17);
  if (v6 >= 2)
  {
    v6 = *v5 + 2;
  }

  if (v6 == 1)
  {
  }

  v8 = *(((v5 + 25) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v8 >= 0xFFFFFFFF)
  {
    LODWORD(v8) = -1;
  }

  if (v8 - 1 < 0)
  {
    swift_weakDestroy();
  }

  return result;
}

uint64_t $defer #1 <A, B>() in PrimitiveNavigationLink.NavigationLinkViewRule.updateValue()(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for NavigationDestinationPayload();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v14 = a1[1];
  v28 = *a1;
  v29[0] = v14;
  *(v29 + 9) = *(a1 + 25);
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  type metadata accessor for PrimitiveNavigationLink.NavigationLinkViewRule();
  PrimitiveNavigationLink.NavigationLinkViewRule.payload.getter(v13);
  v15 = NavigationDestinationPayload.deprecated_isActive.getter(v10);
  v17 = v16;
  v19 = v18;
  result = (*(v11 + 8))(v13, v10);
  if (v17)
  {
    v24 = v15;
    v25 = v17;
    LOBYTE(v26) = v19 & 1;
    type metadata accessor for Never?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v23);
    v21 = v23;
  }

  else
  {
    v21 = 2;
  }

  *(a1 + 40) = v21;
  return result;
}

uint64_t initializeWithTake for StyledNavigationLinkButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 32);
  v9 = v7 + 32;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 32))(v12, v13);
  v14 = *(v9 + 32) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  v18 = *(v16 + 16);
  *(v15 + 32) = *(v16 + 32);
  *v15 = v17;
  *(v15 + 16) = v18;
  v19 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;
  *(v19 + 8) = *(v20 + 8);
  v21 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v22 + 17);
  if (v23 >= 2)
  {
    v23 = *v22 + 2;
  }

  if (v23 == 1)
  {
    v24 = *v22;
    *(v21 + 16) = *(v22 + 16);
    *v21 = v24;
    v25 = 1;
  }

  else
  {
    v25 = 0;
    *v21 = *v22;
  }

  *(v21 + 17) = v25;
  v26 = (v21 + 25) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v22 + 25) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v27 + 8);
  if (*(v27 + 8) >= 0xFFFFFFFFuLL)
  {
    v28 = -1;
  }

  if (v28 - 1 < 0)
  {
    v26 = swift_weakTakeInit();
    *(v26 + 8) = *(v27 + 8);
  }

  else
  {
    v29 = *v27;
    *(v26 + 16) = *(v27 + 16);
    *v26 = v29;
  }

  v30 = ((v26 + 31) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v27 + 31) & 0xFFFFFFFFFFFFFFF8);
  v32 = *v31;
  v33 = v31[2];
  v30[1] = v31[1];
  v30[2] = v33;
  *v30 = v32;
  v34 = (v30 + 55) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v31 + 55) & 0xFFFFFFFFFFFFFFF8;
  v36 = *v35;
  *(v34 + 16) = *(v35 + 16);
  *v34 = v36;
  v37 = (((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v38 = (v37 + v12);
  v39 = (v37 + v13);
  *v38 = *v39;
  v40 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v42 = *v41;
  *(v40 + 16) = *(v41 + 16);
  *v40 = v42;
  return a1;
}

void StyledNavigationLinkButton.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v48 = *(a1 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 24);
  v57 = type metadata accessor for NavigationDestinationPayload();
  v6 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v39 = &v32 - v7;
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = v8;
  v33 = v8;
  *(&v13 + 1) = v5;
  v56 = *(a1 + 32);
  v58 = v13;
  v59 = v56;
  v38 = type metadata accessor for InternalResolvedNavigationLink();
  v41 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v32 - v14;
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  v42 = v15;
  v43 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v32 - v17;
  type metadata accessor for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>();
  v46 = type metadata accessor for ModifiedContent();
  v52 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v40 = &v32 - v18;
  v34 = v5;
  v47 = type metadata accessor for NavigationLinkDisabledModifier();
  v51 = type metadata accessor for ModifiedContent();
  v53 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v44 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v50 = &v32 - v22;
  v23 = v55;
  (*(v9 + 16))(v12, v55, v8, v21);
  v37 = v23 + *(a1 + 52);
  v24 = v23;
  v25 = v39;
  (*(v6 + 16))(v39);
  v26 = *(a1 + 60);
  v27 = (v24 + *(a1 + 56));
  v29 = *v27;
  v28 = v27[1];
  v30 = *(v24 + v26);
  v31 = *(v24 + v26 + 8);
  LOBYTE(v24) = *(v24 + v26 + 16);

  StyledNavigationLinkButton.init(label:payload:presentHandlingLegacyLinks:isPresentingViewDestinationView:)(v12, v25, v29, v28, v30, v31, v24, v33, v36, v5, v56, *(&v56 + 1), type metadata accessor for InternalResolvedNavigationLink);

  swift_getWitnessTable();
  View.addNavigationDisclosureEnvironment()();
}

uint64_t sub_18C03C86C()
{
  (*(*(v0 + 72) + 8))(v3, v2);
  v8 = *(v0 + 128);
  v9 = *(v0 + 104);
  (*(v8 + 16))(v9, *(v0 + 184), v6);
  v10 = v8;
  v11 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = *(v0 + 16);
  *(v12 + 32) = *(v0 + 192);
  (*(v10 + 32))(v12 + v11, v9, v6);
  *(v7 - 160) = v1;
  *(v7 - 152) = &protocol witness table for NavigationDisclosureEnvironmentModifier;
  v13 = *(v0 + 80);
  WitnessTable = swift_getWitnessTable();
  v15 = *(v0 + 64);
  View.transformPlatformItemSelectionBehavior(_:)(partial apply for closure #1 in StyledNavigationLinkButton.body.getter, v12, v13, WitnessTable);

  (*(*(v0 + 88) + 8))(v5, v13);
  v16 = *(v0 + 216);
  v17 = *(v0 + 40);
  _s7SwiftUI28NavigationLinkPresentedValueOSgWOcTm_0(v17 + v16[7], v0 + 280, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
  v18 = v16;
  v19 = v16[12];
  v20 = v17;
  v21 = (v17 + v16[13]);
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = *(v20 + v19 + 32);
  *(v7 - 128) = *(v20 + v19 + 16);
  *(v7 - 112) = v25;
  *(v7 - 144) = *(v20 + v19);
  _s7SwiftUI28NavigationLinkPresentedValueOSgWOcTm_0(v20 + v18[11], v0 + 256, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  v26 = default argument 0 of NavigationLinkDisabledModifier.init(isNavigationEnabledInternal:presentedValue:stackKey:listKey:navigationAuthority:)();
  NavigationLinkDisabledModifier.init(isNavigationEnabledInternal:presentedValue:stackKey:listKey:navigationAuthority:)(v26, v27 & 1, v0 + 280, v22, v23, v24, (v7 - 144), v0 + 256, v0 + 320);
  *(v0 + 240) = WitnessTable;
  *(v0 + 248) = &protocol witness table for PlatformItemListTransformModifier<A>;
  v28 = *(v0 + 112);
  v29 = swift_getWitnessTable();
  v30 = *(v0 + 96);
  v31 = *(v0 + 120);
  MEMORY[0x18D00A570](v0 + 320, v28, v31, v29);
  (*(*(v31 - 8) + 8))(v0 + 320, v31);
  (*(*(v0 + 160) + 8))(v15, v28);
  v32 = swift_getWitnessTable();
  *(v0 + 224) = v29;
  *(v0 + 232) = v32;
  v33 = *(v0 + 152);
  v34 = swift_getWitnessTable();
  v35 = *(v0 + 144);
  static ViewBuilder.buildExpression<A>(_:)(v30, v33, v34);
  v36 = *(*(v0 + 168) + 8);
  v36(v30, v33);
  static ViewBuilder.buildExpression<A>(_:)(v35, v33, v34);
  return (v36)(v35, v33);
}

uint64_t View.transformPlatformItemSelectionBehavior(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  View.transformPlatformItemList<A>(_:_:)(v9, partial apply for closure #1 in View.transformPlatformItemSelectionBehavior(_:), v8, a3, &type metadata for SelectionPlatformItemListFlags, a4);
}

uint64_t NavigationLinkDisabledModifier.init(isNavigationEnabledInternal:presentedValue:stackKey:listKey:navigationAuthority:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  KeyPath = swift_getKeyPath();
  v17 = *(a3 + 16);
  *(a9 + 40) = *a3;
  *(a9 + 56) = v17;
  v18 = a7[1];
  *(a9 + 136) = a7[2];
  v19 = *a7;
  *(a9 + 120) = v18;
  *(a9 + 16) = KeyPath;
  *(a9 + 24) = 0;
  *(a9 + 32) = 0;
  *(a9 + 72) = *(a3 + 32);
  *(a9 + 80) = a4;
  *(a9 + 88) = a5;
  *(a9 + 96) = a6;
  *(a9 + 104) = v19;

  return outlined init with take of NavigationAuthority?(a8, a9 + 152);
}

uint64_t initializeWithCopy for NavigationLinkDisabledModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 33);
  v9 = *(a2 + 32);
  outlined copy of Environment<Binding<EditMode>?>.Content(v6, v7, v9, v8);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 33) = v8;
  v10 = *(a2 + 64);
  if (v10 > 1)
  {
    v11 = *(a2 + 72);
    *(a1 + 64) = v10;
    *(a1 + 72) = v11;
    (**(v10 - 8))(a1 + 40, a2 + 40);
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  if (*(a2 + 160) == 1)
  {
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
  }

  else
  {
    swift_weakCopyInit();
    v12 = *(a2 + 160);
    v13 = *(a2 + 168);
    *(a1 + 160) = v12;
    *(a1 + 168) = v13;
  }

  return a1;
}

uint64_t outlined copy of Environment<Binding<EditMode>?>.Content(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return outlined copy of Binding<Int>?(a1, a2);
  }
}

uint64_t destroy for NavigationLinkDisabledModifier(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  result = outlined consume of Environment<Binding<Visibility>?>.Content(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 33));
  if (*(a1 + 64) >= 2uLL)
  {
    result = __swift_destroy_boxed_opaque_existential_1(a1 + 40);
  }

  if (*(a1 + 160) != 1)
  {
    swift_weakDestroy();
  }

  return result;
}

uint64_t outlined consume of Environment<Binding<Visibility>?>.Content(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return outlined consume of Binding<NavigationSplitViewColumn>?(a1, a2);
  }

  else
  {
  }
}

{
  if (a4)
  {
    return outlined consume of Binding<NavigationSplitViewColumn>?(a1, a2);
  }
}

__n128 initializeWithTake for NavigationLinkDisabledModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  v3 = (a2 + 160);
  v2 = *(a2 + 160);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = *(a2 + 120);
  v4 = *(a2 + 104);
  v5 = (a2 + 152);
  *(a1 + 104) = v4;
  if (v2 == 1)
  {
    result = *v5;
    *(a1 + 152) = *v5;
    *(a1 + 168) = v5[1].n128_u64[0];
  }

  else
  {
    swift_weakTakeInit();
    result = *v3;
    *(a1 + 160) = *v3;
  }

  return result;
}

uint64_t InternalResolvedNavigationLink.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = lazy protocol witness table accessor for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label();
  v7 = *(a1 + 16);
  v53 = *(a1 + 32);
  *&v75 = &type metadata for NavigationLinkStyleConfiguration.Label;
  *(&v75 + 1) = v7;
  v76 = v54;
  v77 = v53;
  type metadata accessor for StaticSourceWriter();
  v8 = type metadata accessor for ModifiedContent();
  v60 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v51 - v9;
  v10 = *(a1 + 24);
  v11 = *(a1 + 40);
  type metadata accessor for UpdateViewDestinationViewModifier();
  type metadata accessor for UpdateViewDestinationRequestProcessor();
  v12 = type metadata accessor for ModifiedContent();
  v55 = v8;
  v58 = v12;
  v62 = type metadata accessor for ModifiedContent();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v57 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v59 = &v51 - v16;
  (*(v4 + 16))(v6, v2, a1, v15);
  v17 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v18 = swift_allocObject();
  *&v19 = v7;
  *(&v19 + 1) = v10;
  v52 = v19;
  *&v20 = v53;
  v56 = v11;
  *(&v20 + 1) = v11;
  v51 = v20;
  *(v18 + 16) = v19;
  *(v18 + 32) = v20;
  (*(v4 + 32))(v18 + v17, v6, a1);
  *&v75 = partial apply for closure #1 in InternalResolvedNavigationLink.body.getter;
  *(&v75 + 1) = v18;
  v66 = v52;
  v67 = v51;
  v68 = v2;
  v21 = lazy protocol witness table accessor for type ResolvedNavigationLink and conformance ResolvedNavigationLink();
  View.viewAlias<A, B>(_:_:)(&type metadata for NavigationLinkStyleConfiguration.Label, partial apply for closure #2 in InternalResolvedNavigationLink.body.getter, v65, &type metadata for ResolvedNavigationLink, &type metadata for NavigationLinkStyleConfiguration.Label, v7, v21);

  v22 = v2 + *(a1 + 60);
  v23 = *v22;
  v24 = *(v22 + 8);
  LODWORD(v54) = *(v22 + 16);
  v25 = v2 + *(a1 + 52);
  v26 = type metadata accessor for NavigationDestinationPayload();

  v27 = (v25 + v26[12]);
  v28 = v27[5];
  if (v28 == 1)
  {
    v29 = v25 + v26[13];
    v30 = *(v29 + 8);
    if (v30 == 6)
    {
      v31 = 0;
      v30 = 0;
      v32 = 0;
      v33 = 0;
      v28 = 0;
      v34 = 0x1FFFFFFFELL;
    }

    else
    {
      v33 = 0;
      v34 = 0;
      v28 = 0;
      v31 = *v29;
      v32 = *(v29 + 16);
    }
  }

  else
  {
    v33 = v27[3];
    v35 = v27[4];
    v30 = v27[1];
    v32 = v27[2];
    v31 = *v27;
    v34 = v35 & 1 | 0x4000000000000000;
  }

  *&v75 = v31;
  *(&v75 + 1) = v30;
  v76 = v32;
  v77 = v33;
  v78 = v34;
  v79 = v28;
  v36 = *(v25 + v26[8]);
  v37 = *(v25 + v26[9]);
  v38 = v25 + v26[11];
  v73 = v21;
  v74 = &protocol witness table for StaticSourceWriter<A, B>;
  v39 = v55;
  WitnessTable = swift_getWitnessTable();
  v50 = v38;
  v41 = v57;
  v42 = v36;
  v43 = v64;
  View.updateViewDestinations<A>(isPresented:destination:key:kind:id:shouldTargetSourceColumn:navigationAuthority:isExtractingDestinations:transaction:)(v23, v24, v54, v25, &v75, 0, 1, v42, v57, (v37 & 1) == 0, v50, 0, 1, v39, v10, WitnessTable);

  (*(v60 + 8))(v43, v39);
  v71 = &protocol witness table for UpdateViewDestinationViewModifier<A>;
  v72 = &protocol witness table for UpdateViewDestinationRequestProcessor<A, B>;
  v44 = swift_getWitnessTable();
  v69 = WitnessTable;
  v70 = v44;
  v45 = v62;
  v46 = swift_getWitnessTable();
  v47 = v59;
  static ViewBuilder.buildExpression<A>(_:)(v41, v45, v46);
  v48 = *(v61 + 8);
  v48(v41, v45);
  static ViewBuilder.buildExpression<A>(_:)(v47, v45, v46);
  return (v48)(v47, v45);
}

uint64_t closure #2 in InternalResolvedNavigationLink.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v7, v10, v11);
  static ViewBuilder.buildExpression<A>(_:)(v9, a2, a4);
  return (*(v6 + 8))(v9, a2);
}

uint64_t View.updateViewDestinations<A>(isPresented:destination:key:kind:id:shouldTargetSourceColumn:navigationAuthority:isExtractingDestinations:transaction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v55 = a8;
  v48 = a7;
  v52 = a5;
  v53 = a6;
  v41 = a4;
  v43 = a3;
  v51 = a2;
  v60 = a9;
  v46 = a12;
  v47 = a10;
  v59 = a14;
  v42 = a11;
  v58 = a16;
  updated = type metadata accessor for UpdateViewDestinationRequestProcessor();
  v57 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v56 = &v40 - v18;
  v19 = *(a15 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for UpdateViewDestinationViewModifier();
  v54 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v24 = &v40 - v23;
  v25 = type metadata accessor for ModifiedContent();
  v26 = *(v25 - 8);
  v49 = v25;
  v50 = v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v40 - v28;
  v40 = *(v19 + 16);
  v40(v22, a4, a15, v27);
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v42, v63, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  v30 = a1;
  v31 = a1;
  v32 = v51;
  v33 = v43;
  v34 = v55;
  UpdateViewDestinationViewModifier.init(isPresented:destination:key:kind:id:shouldTargetSourceColumn:navigationAuthority:isExtractingDestinations:transaction:)(v31, v51, v43, v22, v52, v53, v48 & 1, v55, v24, v47, v63, v46, a13, a15);
  v63[0] = v30;
  v63[1] = v32;
  v64 = v33;

  outlined copy of Transaction?(a13);
  type metadata accessor for NavigationAuthority?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v62);
  v61 = v62;
  (v40)(v22, v41, a15);
  v35 = v56;
  UpdateViewDestinationRequestProcessor.init(presentationData:destination:linkID:)(&v61, v22, v34, a15, v56);
  v37 = updated;
  v36 = v45;
  MEMORY[0x18D003AC0](v35, v45, updated, &protocol witness table for UpdateViewDestinationViewModifier<A>);
  (*(v57 + 8))(v35, v37);
  (*(v54 + 8))(v24, v36);
  v38 = v49;
  MEMORY[0x18D00A570](v29, v59, v49, v58);
  return (*(v50 + 8))(v29, v38);
}

uint64_t outlined init with copy of NavigationAuthority?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for NavigationAuthority?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI19NavigationAuthorityVSgWOcTm_1(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI19NavigationAuthorityVSgMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t UpdateViewDestinationViewModifier.init(isPresented:destination:key:kind:id:shouldTargetSourceColumn:navigationAuthority:isExtractingDestinations:transaction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  updated = type metadata accessor for UpdateViewDestinationViewModifier();
  (*(*(a14 - 8) + 32))(a9 + updated[9], a4, a14);
  v21 = (a9 + updated[10]);
  v22 = a5[1];
  *v21 = *a5;
  v21[1] = v22;
  v21[2] = a5[2];
  v23 = a9 + updated[11];
  *v23 = a6;
  *(v23 + 8) = a7 & 1;
  *(a9 + updated[12]) = a8;
  *(a9 + updated[13]) = a10;
  result = outlined init with take of NavigationAuthority?(a11, a9 + updated[14], &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  *(a9 + updated[15]) = a12;
  *(a9 + updated[16]) = a13;
  return result;
}

uint64_t outlined init with take of NavigationAuthority?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for NavigationAuthority?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t UpdateViewDestinationRequestProcessor.init(presentationData:destination:linkID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Optional();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  updated = type metadata accessor for UpdateViewDestinationRequestProcessor();
  result = (*(*(a4 - 8) + 32))(a5 + *(updated + 44), a2, a4);
  *(a5 + *(updated + 48)) = a3;
  return result;
}

uint64_t initializeWithCopy for UpdateViewDestinationViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(v5 - 8) + 16;
  v8 = *(*(v5 - 8) + 80);
  v9 = (v8 + 17 + a1) & ~v8;
  v10 = (v8 + 17 + a2) & ~v8;

  v6(v9, v10, v5);
  v11 = *(v7 + 48) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = v13[2];
  v12[1] = v13[1];
  v12[2] = v15;
  *v12 = v14;
  v16 = (v12 + 55) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v13 + 55) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 8);
  *v16 = *v17;
  *(v16 + 8) = v18;
  v19 = (v12 + 71) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v13 + 71) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;
  *(v19 + 8) = *(v20 + 8);
  v21 = (v12 + 87) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v13 + 87) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v22 + 8);
  if (v23 >= 0xFFFFFFFF)
  {
    LODWORD(v23) = -1;
  }

  if (v23 - 1 < 0)
  {
    swift_weakCopyInit();
    *(v21 + 8) = *(v22 + 8);
    *(v21 + 16) = *(v22 + 16);
  }

  else
  {
    v24 = *v22;
    *(v21 + 16) = *(v22 + 16);
    *v21 = v24;
  }

  *(v21 + 24) = *(v22 + 24);
  v25 = *((v13 + 119) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v26) = -1;
  if (v25 < 0xFFFFFFFF)
  {
    v26 = *((v13 + 119) & 0xFFFFFFFFFFFFFFF8);
  }

  if (v26 - 1 < 0)
  {
  }

  *((v12 + 119) & 0xFFFFFFFFFFFFFFF8) = v25;
  return a1;
}

uint64_t initializeWithTake for UpdateViewDestinationViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (v6 + 17 + a1) & ~v6;
  v8 = (v6 + 17 + a2) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 7;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + v8) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = v11[2];
  v10[1] = v11[1];
  v10[2] = v13;
  *v10 = v12;
  v14 = (v10 + 55) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v11 + 55) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 8);
  *v14 = *v15;
  *(v14 + 8) = v16;
  v17 = (v10 + 71) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v11 + 71) & 0xFFFFFFFFFFFFFFF8;
  *v17 = *v18;
  *(v17 + 8) = *(v18 + 8);
  v19 = (v10 + 87) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v11 + 87) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v20 + 8);
  if (*(v20 + 8) >= 0xFFFFFFFFuLL)
  {
    v21 = -1;
  }

  if (v21 - 1 < 0)
  {
    v19 = swift_weakTakeInit();
    *(v19 + 8) = *(v20 + 8);
  }

  else
  {
    v22 = *v20;
    *(v19 + 16) = *(v20 + 16);
    *v19 = v22;
  }

  *(v19 + 24) = *(v20 + 24);
  *((v10 + 119) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 119) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t specialized static FocusStoreList.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    v7 = *(a2 + 16);
    if (!v7)
    {
      return 1;
    }

    v4 = 0;
    goto LABEL_11;
  }

  v4 = 0;
  v5 = a1 + 32;
  do
  {
    outlined init with copy of FocusStoreList.Item(v5, v12);
    v6 = v12[0];
    outlined destroy of FocusStoreList.Item(v12);
    if (v6 > v4)
    {
      v4 = v6;
    }

    v5 += 72;
    --v3;
  }

  while (v3);
  v7 = *(a2 + 16);
  if (v7)
  {
LABEL_11:
    v8 = 0;
    v9 = a2 + 32;
    do
    {
      outlined init with copy of FocusStoreList.Item(v9, v12);
      v10 = v12[0];
      outlined destroy of FocusStoreList.Item(v12);
      if (v10 > v8)
      {
        v8 = v10;
      }

      v9 += 72;
      --v7;
    }

    while (v7);
    return v4 == v8;
  }

  return !v4;
}

unint64_t destroy for UpdateViewDestinationViewModifier(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (a1 + *(v4 + 80) + 17) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = (*(v5 + 56) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(((v7 + 87) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v8 >= 0xFFFFFFFF)
  {
    LODWORD(v8) = -1;
  }

  if (v8 - 1 < 0)
  {
    swift_weakDestroy();
  }

  result = *((v7 + 119) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v10) = -1;
  if (result < 0xFFFFFFFF)
  {
    v10 = *((v7 + 119) & 0xFFFFFFFFFFFFFFF8);
  }

  if (v10 - 1 < 0)
  {
  }

  return result;
}

uint64_t protocol witness for StyleableView.configuration.getter in conformance ResolvedNavigationLink@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t NavigationLinkStyleModifier.styleBody(configuration:)(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  v15 = *a1;
  (*(v3 + 24))(&v15, v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v13 = *(v6 + 8);
  v13(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v13)(v11, AssociatedTypeWitness);
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *a2 = v2;
  a2[1] = v3;
  a2[2] = v4;
}

{
  v3 = *a1;
  result = outlined init with copy of _Benchmark((a1 + 1), (a2 + 1));
  *a2 = v3;
  return result;
}

{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

{
  v3 = *a1;
  result = outlined init with copy of NavigationDestinationPresentation((a1 + 1), (a2 + 1));
  *a2 = v3;
  return result;
}

uint64_t protocol witness for NavigationLinkStyle.makeBody(configuration:) in conformance ButtonNavigationLinkStyle@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = 4;
  type metadata accessor for Button<NavigationLinkStyleConfiguration.Label>(0, &lazy cache variable for type metadata for Button<NavigationLinkStyleConfiguration.Label>, &type metadata for NavigationLinkStyleConfiguration.Label, &protocol witness table for NavigationLinkStyleConfiguration.Label, type metadata accessor for Button);
  v7 = &a2[*(v6 + 36)];
  *v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v7[1] = v5;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_18C03E78C()
{

  return swift_deallocObject();
}

BOOL NavigationLinkDisabledModifier.valueLinkDisabledByClient.getter()
{
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_1(v0 + 40, v5, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
  if (v6 == 1)
  {
    _s7SwiftUI19NavigationAuthorityVSgWOhTm_1(v5, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
    return 0;
  }

  else
  {
    outlined init with copy of NavigationLinkPresentedValue(v5, v3);
    v1 = v4 == 0;
    if (v4)
    {
      outlined destroy of NavigationLinkPresentedValue(v3);
    }

    outlined destroy of NavigationLinkPresentedValue(v5);
  }

  return v1;
}

uint64_t NavigationLinkDisabledModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  NavigationLinkDisabledModifier.isDisabled.getter(a2);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  swift_getWitnessTable();
  View.disabled(_:)();
  v5 = v7;
  v6 = v8;
  _s7SwiftUI19NavigationAuthorityVSgMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
  v2 = type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v5, v2, WitnessTable);

  v7 = v9;
  v8 = v10;
  static ViewBuilder.buildExpression<A>(_:)(&v7, v2, WitnessTable);
}

BOOL NavigationLinkDisabledModifier.isContextuallyDisabled.getter()
{
  v1 = *(v0 + 144);
  if (v1 == 1)
  {
    return specialized Environment.wrappedValue.getter(*v0, *(v0 + 8)) != 1;
  }

  v2 = *(v0 + 136);
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_1(v0 + 40, &v10, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
  if (*(&v11 + 1) == 1)
  {
    _s7SwiftUI19NavigationAuthorityVSgWOhTm_1(&v10, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
    return specialized Environment.wrappedValue.getter(*v0, *(v0 + 8)) != 1;
  }

  v13[0] = v10;
  v13[1] = v11;
  v14 = v12;
  outlined init with copy of NavigationLinkPresentedValue(v13, &v10);
  if (!*(&v11 + 1))
  {
    outlined destroy of NavigationLinkPresentedValue(v13);
    return specialized Environment.wrappedValue.getter(*v0, *(v0 + 8)) != 1;
  }

  v7 = v10;
  v8 = v11;
  v9 = v12;
  if ((v2 & 1) == 0)
  {
    outlined destroy of NavigationLinkPresentedValue(v13);
    goto LABEL_11;
  }

  v3 = *(&v8 + 1);
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
  v5 = (*(v4 + 16))(v3, v4);
  outlined destroy of NavigationLinkPresentedValue(v13);
  if (!v1)
  {
LABEL_11:
    outlined destroy of AnyNavigationLinkPresentedValue(&v7);
    return specialized Environment.wrappedValue.getter(*v0, *(v0 + 8)) != 1;
  }

  outlined destroy of AnyNavigationLinkPresentedValue(&v7);
  if (v5 == v1)
  {
    return 0;
  }

  return specialized Environment.wrappedValue.getter(*v0, *(v0 + 8)) != 1;
}

BOOL NavigationLinkDisabledModifier.inEditModeAndShouldDisable.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  _s7SwiftUI19NavigationAuthorityVSgMaTm_0(0, &lazy cache variable for type metadata for Never?, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6720]);
  result = 0;
  if (v2 != v3)
  {
    specialized Environment.wrappedValue.getter(*(v1 + 16), *(v1 + 24), *(v1 + 32) | (*(v1 + 33) << 8), &v11);
    v4 = v12;
    if (v12)
    {
      v5 = v11;
      v8 = v11;
      v9 = v12;
      v10 = v13;
      _s7SwiftUI19NavigationAuthorityVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode, MEMORY[0x1E6981948]);
      MEMORY[0x18D00ACC0](&v7);
      outlined consume of Binding<NavigationSplitViewColumn>?(v5, v4);
      if (v7)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t static Transform.didReinsert(attribute:)()
{
  AGGraphGetAttributeInfo();
  v0 = type metadata accessor for Transform();
  return Transform.insert()(v0);
}

uint64_t Transform.insert()(uint64_t result)
{
  v2 = *(result + 56);
  if (*(v1 + v2) == 1)
  {
    v3 = result;
    *(v1 + v2) = 0;
    Value = AGGraphGetValue();
    v5 = *Value;
    v6 = Value[1];

    v7[0] = v5;
    v7[1] = v6;
    Transform.updateScope(nodeList:changed:)(v7, 1, v3);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnyNavigationLinkPresentedValue(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 112))(a2, v3, v4) & 1;
}

uint64_t AnyNavigationLinkPresentedValueStorage.matches(_:)(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7 - 8];
  outlined init with copy of _Benchmark(v9, v16);
  type metadata accessor for AnyNavigationLinkPresentedValueStorageProtocol();
  if (swift_dynamicCast())
  {
    v10 = v15;
    v11 = *(v3 + 16);
    v11(v8, v1 + *(*v1 + 96), v2);
    v11(v5, v10 + *(*v10 + 96), v2);
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();

    v13 = *(v3 + 8);
    v13(v5, v2);
    v13(v8, v2);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t type metadata accessor for AnyNavigationLinkPresentedValueStorageProtocol()
{
  result = lazy cache variable for type metadata for AnyNavigationLinkPresentedValueStorageProtocol;
  if (!lazy cache variable for type metadata for AnyNavigationLinkPresentedValueStorageProtocol)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValueStorageProtocol);
  }

  return result;
}

double destructiveInjectEnumTag for _PresentationTransitionOutputs.Content(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SidebarRow_iOS and conformance SidebarRow_iOS()
{
  result = lazy protocol witness table cache variable for type SidebarRow_iOS and conformance SidebarRow_iOS;
  if (!lazy protocol witness table cache variable for type SidebarRow_iOS and conformance SidebarRow_iOS)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarRow_iOS and conformance SidebarRow_iOS);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<ListLabelStyle>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for ScaledMetric<CGFloat>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ListLabelStyle>, lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle, &type metadata for ListLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _DefaultForegroundStyleModifier<AnyShapeStyle> and conformance _DefaultForegroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _DefaultForegroundStyleModifier<AnyShapeStyle> and conformance _DefaultForegroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _DefaultForegroundStyleModifier<AnyShapeStyle> and conformance _DefaultForegroundStyleModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(255, &lazy cache variable for type metadata for _DefaultForegroundStyleModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980AB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DefaultForegroundStyleModifier<AnyShapeStyle> and conformance _DefaultForegroundStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI22EnvironmentPropertyKeyVyAA024TableHeaderLeadingMarginE0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for _EnvironmentKeyWritingModifier<Image.Scale>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Image.Scale>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Image.Scale>);
    }
  }
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>()
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)
  {
    type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>();
    type metadata accessor for EnvironmentPropertyKey<ListItemTintKey>(255, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, &type metadata for LabelStyleConfiguration.Title, MEMORY[0x1E69805A8], MEMORY[0x1E697E830]);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type LabelStyleWritingModifier<ListLabelStyle> and conformance LabelStyleWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type LabelStyleWritingModifier<ListLabelStyle> and conformance LabelStyleWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type LabelStyleWritingModifier<ListLabelStyle> and conformance LabelStyleWritingModifier<A>)
  {
    type metadata accessor for ScaledMetric<CGFloat>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ListLabelStyle>, lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle, &type metadata for ListLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LabelStyleWritingModifier<ListLabelStyle> and conformance LabelStyleWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListLabelStyle.PhoneImplementation and conformance ListLabelStyle.PhoneImplementation()
{
  result = lazy protocol witness table cache variable for type ListLabelStyle.PhoneImplementation and conformance ListLabelStyle.PhoneImplementation;
  if (!lazy protocol witness table cache variable for type ListLabelStyle.PhoneImplementation and conformance ListLabelStyle.PhoneImplementation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabelStyle.PhoneImplementation and conformance ListLabelStyle.PhoneImplementation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListLabelStyle.SimpleImplementation and conformance ListLabelStyle.SimpleImplementation()
{
  result = lazy protocol witness table cache variable for type ListLabelStyle.SimpleImplementation and conformance ListLabelStyle.SimpleImplementation;
  if (!lazy protocol witness table cache variable for type ListLabelStyle.SimpleImplementation and conformance ListLabelStyle.SimpleImplementation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabelStyle.SimpleImplementation and conformance ListLabelStyle.SimpleImplementation);
  }

  return result;
}

uint64_t type metadata completion function for ListLabelTitleModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ScrollTransitionModifier.StageProgress(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ListLabelConfiguration.Resolved(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
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

void type metadata accessor for (ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)()
{
  if (!lazy cache variable for type metadata for (ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>(255, &lazy cache variable for type metadata for ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, type metadata accessor for HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>);
    type metadata accessor for <<opaque return type of View.enumerated<A>(_:)>>.0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0));
    }
  }
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<ListLabelStack, CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<ListLabelStack, CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<ListLabelStack, CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>>> and conformance <> _VariadicView.Tree<A, B>)
  {
    type metadata accessor for _VariadicView.Tree<ListLabelStack, CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>>>();
    lazy protocol witness table accessor for type CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>> and conformance CountViews<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<ListLabelStack, CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

void type metadata accessor for HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>()
{
  if (!lazy cache variable for type metadata for HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_0(255, &lazy cache variable for type metadata for PlaceholderContentView<LabelStyleConfiguration.Icon>, &type metadata for LabelStyleConfiguration.Icon, MEMORY[0x1E697FEC0]);
    lazy protocol witness table accessor for type PlaceholderContentView<LabelStyleConfiguration.Icon> and conformance PlaceholderContentView<A>();
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>);
    }
  }
}

void type metadata accessor for _VariadicView.Tree<ListLabelStack, CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>>>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<ListLabelStack, CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>>>)
  {
    type metadata accessor for CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>>(255, &lazy cache variable for type metadata for CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>>, &lazy cache variable for type metadata for TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>, type metadata accessor for (ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0), &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)> and conformance TupleView<A>);
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<ListLabelStack, CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type PlaceholderContentView<LabelStyleConfiguration.Icon> and conformance PlaceholderContentView<A>()
{
  result = lazy protocol witness table cache variable for type PlaceholderContentView<LabelStyleConfiguration.Icon> and conformance PlaceholderContentView<A>;
  if (!lazy protocol witness table cache variable for type PlaceholderContentView<LabelStyleConfiguration.Icon> and conformance PlaceholderContentView<A>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_0(255, &lazy cache variable for type metadata for PlaceholderContentView<LabelStyleConfiguration.Icon>, &type metadata for LabelStyleConfiguration.Icon, MEMORY[0x1E697FEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaceholderContentView<LabelStyleConfiguration.Icon> and conformance PlaceholderContentView<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>>)
  {
    type metadata accessor for <<opaque return type of MappedViewElement.view>>.0();
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(255, &lazy cache variable for type metadata for ListLabelTitleModifier<BodyLabelGroupStyle>, &type metadata for BodyLabelGroupStyle, &protocol witness table for BodyLabelGroupStyle, type metadata accessor for ListLabelTitleModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>>);
    }
  }
}

void type metadata accessor for <<opaque return type of View.enumerated<A>(_:)>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of View.enumerated<A>(_:)>>.0)
  {
    type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>> and conformance <> ModifiedContent<A, B>();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.enumerated<A>(_:)>>.0);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>> and conformance CountViews<A, B>()
{
  result = lazy protocol witness table cache variable for type CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>> and conformance CountViews<A, B>;
  if (!lazy protocol witness table cache variable for type CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>> and conformance CountViews<A, B>)
  {
    type metadata accessor for CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>>(255, &lazy cache variable for type metadata for CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>>, &lazy cache variable for type metadata for TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>, type metadata accessor for (ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0), &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)> and conformance TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>> and conformance CountViews<A, B>);
  }

  return result;
}

uint64_t static ListLabelStack._makeView(root:inputs:body:)()
{
  _GraphInputs.interfaceIdiom.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ListLabelStack.Child and conformance ListLabelStack.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type ListLabelLayout and conformance ListLabelLayout();
  return static Layout.makeLayoutView(root:inputs:body:)();
}

unint64_t lazy protocol witness table accessor for type ListLabelStack.Child and conformance ListLabelStack.Child()
{
  result = lazy protocol witness table cache variable for type ListLabelStack.Child and conformance ListLabelStack.Child;
  if (!lazy protocol witness table cache variable for type ListLabelStack.Child and conformance ListLabelStack.Child)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabelStack.Child and conformance ListLabelStack.Child);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListLabelLayout and conformance ListLabelLayout()
{
  result = lazy protocol witness table cache variable for type ListLabelLayout and conformance ListLabelLayout;
  if (!lazy protocol witness table cache variable for type ListLabelLayout and conformance ListLabelLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabelLayout and conformance ListLabelLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListLabelLayout and conformance ListLabelLayout;
  if (!lazy protocol witness table cache variable for type ListLabelLayout and conformance ListLabelLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabelLayout and conformance ListLabelLayout);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ListLabelLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ListLabelLayout and conformance ListLabelLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ListLabelIconModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ListLabelIconModifier();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ListLabelIconModifier()
{
  lazy protocol witness table accessor for type ListLabelIconModifier and conformance ListLabelIconModifier();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

unint64_t lazy protocol witness table accessor for type ListLabelIconModifier and conformance ListLabelIconModifier()
{
  result = lazy protocol witness table cache variable for type ListLabelIconModifier and conformance ListLabelIconModifier;
  if (!lazy protocol witness table cache variable for type ListLabelIconModifier and conformance ListLabelIconModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabelIconModifier and conformance ListLabelIconModifier);
  }

  return result;
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ListLabelTitleModifier<A>()
{
  swift_getWitnessTable();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

__n128 protocol witness for LabelStyle.makeBody(configuration:) in conformance SidebarLabelStyle@<Q0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = 0;
  SidebarRow_iOS.init(configuration:listItemTint:)(&KeyPath, v7);
  v2 = v8[0];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v2;
  *(a1 + 90) = *(v8 + 10);
  v3 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v3;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t SidebarRow_iOS.init(configuration:listItemTint:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  static _GraphInputs.defaultInterfaceIdiom.getter();
  static Solarium.isEnabled(for:)();
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = swift_getKeyPath();
  *(a2 + 56) = 0;
  *(a2 + 64) = swift_getKeyPath();
  *(a2 + 72) = 0;
  result = swift_getKeyPath();
  *(a2 + 80) = result;
  *(a2 + 88) = 0;
  *(a2 + 96) = v3;
  *(a2 + 104) = v4;
  *(a2 + 105) = v5;
  return result;
}

uint64_t initializeWithCopy for SidebarRow_iOS(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 57);
  v10 = *(a2 + 56);
  outlined copy of Environment<CGFloat?>.Content(v8, v10, v9);
  *(a1 + 48) = v8;
  *(a1 + 56) = v10;
  *(a1 + 57) = v9;
  v11 = *(a2 + 64);
  v12 = *(a2 + 73);
  v13 = *(a2 + 72);
  outlined copy of Environment<CGFloat?>.Content(v11, v13, v12);
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 73) = v12;
  v14 = *(a2 + 80);
  v15 = *(a2 + 89);
  v16 = *(a2 + 88);
  outlined copy of Environment<CGFloat?>.Content(v14, v16, v15);
  *(a1 + 80) = v14;
  *(a1 + 88) = v16;
  *(a1 + 89) = v15;
  v17 = *(a2 + 96);
  v18 = *(a2 + 105);
  v19 = *(a2 + 104);
  outlined copy of Environment<ListItemTint?>.Content(v17, v19, v18);
  *(a1 + 96) = v17;
  *(a1 + 104) = v19;
  *(a1 + 105) = v18;
  return a1;
}

uint64_t destroy for SidebarRow_iOS(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 48), *(a1 + 56), *(a1 + 57));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 64), *(a1 + 72), *(a1 + 73));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 80), *(a1 + 88), *(a1 + 89));
  v2 = *(a1 + 96);
  v3 = *(a1 + 105);
  v4 = *(a1 + 104);

  return outlined consume of Environment<ListItemTint?>.Content(v2, v4, v3);
}

uint64_t closure #1 in SidebarRow_iOS.stack.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  specialized Environment.wrappedValue.getter(*(a1 + 64), *(a1 + 72) | (*(a1 + 73) << 8));
  if (v5)
  {
    v6 = *(a1 + 16);
    *v13 = *a1;
    *&v13[16] = v6;
    *&v13[25] = *(a1 + 25);
    type metadata accessor for ScaledMetric<CGFloat>(0, &lazy cache variable for type metadata for ScaledMetric<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
    ScaledMetric.wrappedValue.getter();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(v15 + 7) = *&v15[7];
  *(&v15[2] + 7) = *&v15[9];
  *(&v15[4] + 7) = v16;
  type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>();
  type metadata accessor for EnvironmentPropertyKey<ListItemTintKey>(0, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, &type metadata for LabelStyleConfiguration.Title, MEMORY[0x1E69805A8], MEMORY[0x1E697E830]);
  lazy protocol witness table accessor for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>);
  lazy protocol witness table accessor for type ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>();
  View.staticIf<A, B>(_:then:)();
  v7 = *v13;
  v8 = *&v13[8];
  *v12 = KeyPath;
  v12[8] = 2;
  *&v12[9] = *v15;
  *&v12[25] = *&v15[2];
  *&v12[41] = *&v15[4];
  *&v12[56] = *(&v16 + 1);
  v9 = *&v12[16];
  *a2 = *v12;
  *(a2 + 16) = v9;
  v10 = *&v12[48];
  *(a2 + 32) = *&v12[32];
  *(a2 + 48) = v10;
  *(a2 + 64) = v7;
  *(a2 + 72) = v8;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>(v12, v13, type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>);
  *v13 = KeyPath;
  v13[8] = 2;
  *&v13[9] = *v15;
  *&v13[25] = *&v15[2];
  *v14 = *&v15[4];
  *&v14[15] = *(&v15[5] + 7);
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>(v13, type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for EnvironmentPropertyKey<ListItemTintKey>(255, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, &type metadata for LabelStyleConfiguration.Title, MEMORY[0x1E69805A8], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in closure #1 in SidebarRow_iOS.stack.getter@<X0>(uint64_t *a1@<X8>)
{
  result = static HorizontalAlignment.listRowSeparatorLeading.getter();
  *a1 = result;
  a1[1] = closure #1 in closure #1 in closure #1 in SidebarRow_iOS.stack.getter;
  a1[2] = 0;
  return result;
}

__n128 protocol witness for LabelStyle.makeBody(configuration:) in conformance ListLabelStyle@<Q0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  ListLabelStyle.SimpleImplementation.init(configuration:)(v5);
  *&v4[55] = v5[3];
  *&v4[71] = v5[4];
  *&v4[87] = v6[0];
  *&v4[96] = *(v6 + 9);
  *&v4[7] = v5[0];
  *&v4[23] = v5[1];
  *&v4[39] = v5[2];
  *(a1 + 81) = *&v4[48];
  *(a1 + 97) = *&v4[64];
  *(a1 + 113) = *&v4[80];
  *(a1 + 129) = *&v4[96];
  result = *v4;
  *(a1 + 33) = *v4;
  *(a1 + 49) = *&v4[16];
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 65) = *&v4[32];
  return result;
}

void sub_18C0408D8(uint64_t a1@<X8>)
{
  v2 = ListLabelConfiguration.resolved.getter();
  *a1 = v3 & 1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

double ListLabelStyle.SimpleImplementation.init(configuration:)@<D0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  *(a1 + 32) = swift_getKeyPath();
  *(a1 + 40) = 0;
  *(a1 + 48) = swift_getKeyPath();
  *(a1 + 56) = 0;
  static _GraphInputs.defaultInterfaceIdiom.getter();
  static Solarium.isEnabled(for:)();
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  result = v7;
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  *(a1 + 80) = v5;
  *(a1 + 88) = v6;
  *(a1 + 96) = v7;
  *(a1 + 104) = v8;
  return result;
}

uint64_t initializeWithCopy for ListLabelStyle.SimpleImplementation(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 25);
  v8 = *(a2 + 24);
  outlined copy of Environment<CGFloat?>.Content(v6, v8, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 25) = v7;
  v9 = *(a2 + 32);
  v10 = *(a2 + 41);
  v11 = *(a2 + 40);
  outlined copy of Environment<CGFloat?>.Content(v9, v11, v10);
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 41) = v10;
  v12 = *(a2 + 48);
  v13 = *(a2 + 57);
  v14 = *(a2 + 56);
  outlined copy of Environment<CGFloat?>.Content(v12, v14, v13);
  *(a1 + 48) = v12;
  *(a1 + 56) = v14;
  *(a1 + 57) = v13;
  v15 = *(a2 + 64);
  v16 = *(a2 + 72);
  outlined copy of Environment<Selector?>.Content(v15, v16);
  *(a1 + 64) = v15;
  *(a1 + 72) = v16;
  v17 = *(a2 + 80);
  v18 = *(a2 + 88);
  outlined copy of Environment<Selector?>.Content(v17, v18);
  *(a1 + 80) = v17;
  *(a1 + 88) = v18;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t initializeWithCopy for ListLabelStyle.PhoneImplementation(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of Environment<EdgeInsets>.Content(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t destroy for ListLabelStyle.SimpleImplementation(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 16), *(a1 + 24), *(a1 + 25));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 32), *(a1 + 40), *(a1 + 41));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 48), *(a1 + 56), *(a1 + 57));
  outlined consume of Environment<Selector?>.Content(*(a1 + 64), *(a1 + 72));
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

double ListLabelConfiguration.resolved.getter()
{
  v1 = *(v0 + 8);
  lazy protocol witness table accessor for type AccessibilityLayoutKey and conformance AccessibilityLayoutKey();
  EnvironmentValues.subscript.getter();
  ListLabelConfiguration.effectiveIconWidth.getter();
  v3 = v2;
  ListLabelConfiguration.effectiveSpacing.getter();
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>, &unk_1EFFDB4B0, &protocol witness table for EnvironmentValues.__Key_listLabelVerticalTitlePadding, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding> and conformance EnvironmentPropertyKey<A>();
  if (v1)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return v3;
}

unint64_t lazy protocol witness table accessor for type AccessibilityLayoutKey and conformance AccessibilityLayoutKey()
{
  result = lazy protocol witness table cache variable for type AccessibilityLayoutKey and conformance AccessibilityLayoutKey;
  if (!lazy protocol witness table cache variable for type AccessibilityLayoutKey and conformance AccessibilityLayoutKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityLayoutKey and conformance AccessibilityLayoutKey);
  }

  return result;
}

BOOL protocol witness for static DerivedEnvironmentKey.value(in:) in conformance AccessibilityLayoutKey@<W0>(_BYTE *a1@<X8>)
{
  result = specialized static AccessibilityLayoutKey.value(in:)();
  *a1 = result;
  return result;
}

BOOL specialized static AccessibilityLayoutKey.value(in:)()
{
  EnvironmentValues.dynamicTypeSize.getter();
  if (v3 - 7 > 4)
  {
    return 0;
  }

  EnvironmentValues.horizontalSizeClass.getter();
  return (v2 & 1) == 0 && v2 != 2;
}

uint64_t ListLabelConfiguration.effectiveIconWidth.getter()
{
  v2 = *v0;
  v1 = v0[1];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LabelReservedIconWidthKey>, &type metadata for LabelReservedIconWidthKey, &protocol witness table for LabelReservedIconWidthKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>();
  if (v1)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    result = PropertyList.subscript.getter();
  }

  if (v7 == 1)
  {
    static _GraphInputs.defaultInterfaceIdiom.getter();
    v5 = 6;
    static Solarium.isEnabled(for:)();
    v6 = v2;
    v7 = v1;
    EnvironmentValues.dynamicTypeSize.getter();
    MEMORY[0x18D0099E0](&v5, &v4);
    v6 = v2;
    v7 = v1;
    return EnvironmentValues.pixelLength.getter();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LabelReservedIconWidthKey>, &type metadata for LabelReservedIconWidthKey, &protocol witness table for LabelReservedIconWidthKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

double ListLabelConfiguration.effectiveSpacing.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LabelIconToTitleSpacingKey>, &type metadata for LabelIconToTitleSpacingKey, &protocol witness table for LabelIconToTitleSpacingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();

    if (v4 == 1)
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultLabelIconToTitleSpacingKey>, &type metadata for DefaultLabelIconToTitleSpacingKey, &protocol witness table for DefaultLabelIconToTitleSpacingKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultLabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.Tracker.value<A>(_:for:)();

      goto LABEL_6;
    }

    return v3;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LabelIconToTitleSpacingKey>, &type metadata for LabelIconToTitleSpacingKey, &protocol witness table for LabelIconToTitleSpacingKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.getter();
  if ((v4 & 1) == 0)
  {
    return v3;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultLabelIconToTitleSpacingKey>, &type metadata for DefaultLabelIconToTitleSpacingKey, &protocol witness table for DefaultLabelIconToTitleSpacingKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultLabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.getter();
LABEL_6:
  if (v4 != 1)
  {
    return v3;
  }

  static _GraphInputs.defaultInterfaceIdiom.getter();
  v1 = static Solarium.isEnabled(for:)();
  result = 10.0;
  if (v1)
  {
    return 12.0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LabelIconToTitleSpacingKey>, &type metadata for LabelIconToTitleSpacingKey, &protocol witness table for LabelIconToTitleSpacingKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance ListLabelStyle.PhoneImplementation@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v16 = *v1;
  v17 = v3;
  v18 = *(v1 + 32);
  v19 = v16;
  v20 = v3;
  v21 = v18;
  v4 = specialized Environment.wrappedValue.getter();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v4 & 1;
  v12 = swift_allocObject();
  v13 = v17;
  *(v12 + 16) = v16;
  *(v12 + 32) = v13;
  *(v12 + 48) = v18;
  *a1 = v11;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = partial apply for closure #1 in closure #1 in ListLabelStyle.PhoneImplementation.body.getter;
  *(a1 + 40) = v12;
  return outlined init with copy of ListLabelStyle.PhoneImplementation(&v16, v15);
}

uint64_t sub_18C0413D4()
{
  outlined consume of Environment<EdgeInsets>.Content(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t outlined init with copy of ListLabelStyle.PhoneImplementation(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  outlined copy of Environment<EdgeInsets>.Content(*a1, v4, v5, v6, v7);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return a2;
}

double ListLabelLayout.makeCache(subviews:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = *v2;
  v9 = *(v2 + 3);
  LOBYTE(v13) = 0;
  v21 = MEMORY[0x1E69E7CC0];
  *&v22 = 0xFFF0000000000000;
  BYTE8(v22) = 0;
  *&v23 = 0xFFF0000000000000;
  BYTE8(v23) = 0;
  v25 = 0u;
  v24 = 0u;
  v26 = 1;
  v17 = v8;
  v18 = *(v2 + 8);
  v19 = v9;
  v20 = *(v2 + 2);
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  ListLabelLayout.makeChildren(cache:subviews:)(&v21, &v13);
  v10 = v24;
  *(a2 + 32) = v23;
  *(a2 + 48) = v10;
  *(a2 + 64) = v25;
  *(a2 + 80) = v26;
  result = *&v21;
  v12 = v22;
  *a2 = v21;
  *(a2 + 16) = v12;
  return result;
}

double protocol witness for Layout.makeCache(subviews:) in conformance ListLabelLayout@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ListLabelLayout.makeCache(subviews:)(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

uint64_t ListLabelLayout.makeChildren(cache:subviews:)(uint64_t a1, int *a2)
{
  v16 = *a2;
  v2 = LayoutSubviews.endIndex.getter();
  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  result = LayoutSubviews.endIndex.getter();
  if ((v2 & 0x8000000000000000) != 0 || result < v2)
  {
    goto LABEL_27;
  }

  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v2 > *(v4 + 3) >> 1)
  {
    if (*(v4 + 2) <= v2)
    {
      v6 = v2;
    }

    else
    {
      v6 = *(v4 + 2);
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v6, 0, v4);
  }

  *a1 = v4;
  *(a1 + 8) = 0;
  v7 = LayoutSubviews.endIndex.getter();
  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
    goto LABEL_28;
  }

  result = LayoutSubviews.endIndex.getter();
  if (v7 < 0 || result < v7)
  {
    goto LABEL_29;
  }

  if (v7)
  {
    v8 = 0;
    v9 = 0.0;
LABEL_18:
    v10 = 0.0;
    while (1)
    {
      LayoutSubviews.subscript.getter();
      result = static ViewGeometry.invalidValue.getter();
      *&v19[39] = v22;
      *&v19[55] = v23;
      *&v19[7] = v20;
      *&v19[23] = v21;
      v24 = *(&v23 + 1);
      LOBYTE(v24) = BYTE8(v23);
      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      if (v13 >= v12 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v13 + 1;
      v14 = &v4[96 * v13];
      *(v14 + 2) = v17;
      v14[48] = v18;
      *(v14 + 49) = *v19;
      *(v14 + 14) = v24;
      *(v14 + 97) = *&v19[48];
      *(v14 + 81) = *&v19[32];
      *(v14 + 65) = *&v19[16];
      *(v14 + 15) = v10;
      if (v7 - 1 == v8)
      {
        break;
      }

      if (++v8 < 2)
      {
        goto LABEL_18;
      }

      static _GraphInputs.defaultInterfaceIdiom.getter();
      v10 = 4.0;
      if ((static Solarium.isEnabled(for:)() & 1) == 0)
      {
        LayoutSubviews.subscript.getter();
        LayoutSubview.spacing.getter();
        *v19 = v16;
        LayoutSubviews.subscript.getter();
        LayoutSubview.spacing.getter();
        ViewSpacing.distance(to:along:)();
        v10 = v11;
      }

      v9 = v9 + v10;
      *(a1 + 8) = v9;
    }

    *a1 = v4;
  }

  return result;
}

uint64_t initializeWithCopy for ListLabelLayout.Cache(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t ListLabelLayout.spacing(subviews:cache:)@<X0>(uint64_t a1@<X8>)
{
  v2 = LayoutSubviews.endIndex.getter();
  if (LayoutSubviews.endIndex.getter() < 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v3 = LayoutSubviews.endIndex.getter();
  if (v2 < 0 || v3 < v2)
  {
    goto LABEL_24;
  }

  if (!v2)
  {

    return MEMORY[0x1EEDDD780]();
  }

  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (LayoutSubviews.endIndex.getter())
  {
    AbsoluteEdge.Set.init(_:layoutDirection:)();
    LayoutSubviews.subscript.getter();
    LayoutSubview.spacing.getter();
    Spacing.incorporate(_:of:)();
  }

  v4 = LayoutSubviews.endIndex.getter();
  if (LayoutSubviews.endIndex.getter() < 0)
  {
    goto LABEL_25;
  }

  result = LayoutSubviews.endIndex.getter();
  if (v4 < 0 || result < v4)
  {
    goto LABEL_26;
  }

  if (v4 < 2)
  {
    goto LABEL_19;
  }

  v6 = LayoutSubviews.endIndex.getter();
  if (LayoutSubviews.endIndex.getter() < 0)
  {
    goto LABEL_27;
  }

  result = LayoutSubviews.endIndex.getter();
  if ((v6 & 0x8000000000000000) == 0 && result >= v6)
  {
    if (v6 != 1)
    {
      if (v6)
      {
        LayoutSubviews.endIndex.getter();
        AbsoluteEdge.Set.init(_:layoutDirection:)();
        LayoutSubviews.subscript.getter();
        LayoutSubview.spacing.getter();
        Spacing.incorporate(_:of:)();

        if (v6 != 2)
        {
          for (i = 2; i != v6; ++i)
          {
            LayoutSubviews.endIndex.getter();
            AbsoluteEdge.Set.init(_:layoutDirection:)();
            LayoutSubviews.subscript.getter();
            LayoutSubview.spacing.getter();
            Spacing.incorporate(_:of:)();
          }
        }

        goto LABEL_19;
      }

      goto LABEL_29;
    }

LABEL_19:
    *a1 = v8;
    *(a1 + 8) = 2;
    return result;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return MEMORY[0x1EEDDD780]();
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<Spacing.Key, Spacing.Value>, lazy protocol witness table accessor for type Spacing.Key and conformance Spacing.Key);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 40; ; i += 56)
    {
      v5 = *(i - 8);
      v6 = *i;
      v15 = *(i + 24);
      v16 = *(i + 8);
      v7 = *(i + 40);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, *i);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      v11 = v3[7] + 40 * result;
      *v11 = v16;
      *(v11 + 16) = v15;
      *(v11 + 32) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t specialized static ListLabelIconModifier.makeEnvironment(modifier:environment:)(uint64_t a1)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle>, &type metadata for EnvironmentValues.__Key_listLabelIconStyle, &protocol witness table for EnvironmentValues.__Key_listLabelIconStyle, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle>, &type metadata for EnvironmentValues.__Key_listLabelIconStyle, &protocol witness table for EnvironmentValues.__Key_listLabelIconStyle, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  ShapeStyle.copyStyle(name:in:foregroundStyle:)();

  EnvironmentValues.defaultForegroundStyle.setter();
  EnvironmentValues.dynamicTypeSize.getter();
  EnvironmentValues.imageScale.setter();
}

uint64_t static ListLabelTitleModifier.makeEnvironment(modifier:environment:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ListLabelTitleModifier();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  Value = AGGraphGetValue();
  v28 = v10;
  (*(v10 + 16))(v12, Value, v9);
  v14 = *a2;
  v26 = a2[1];
  v15 = *&v12[*(v9 + 36)];
  v24 = v14;
  v25 = v15;
  v16 = *(a4 + 32);

  v16(v15, v29, a4);
  v17 = a2[1];
  *&v32 = *a2;
  *(&v32 + 1) = v17;
  swift_getAssociatedConformanceWitness();

  default argument 0 of ShapeStyle.copyStyle(name:in:foregroundStyle:)();
  ShapeStyle.copyStyle(name:in:foregroundStyle:)();

  v18 = v24;

  (*(v27 + 8))(v8, AssociatedTypeWitness);
  EnvironmentValues.defaultForegroundStyle.setter();
  v19 = *(a4 + 24);
  v20 = v25;
  v21 = a4;
  v22 = v26;
  v19(v25, v29, v21);
  EnvironmentValues.defaultFont.setter();
  if (!v20)
  {
    v32 = *a2;
    lazy protocol witness table accessor for type AccessibilityLayoutKey and conformance AccessibilityLayoutKey();
    EnvironmentValues.subscript.getter();
    if (v30 == 1 && v12[*(v9 + 40)] == 1)
    {
      *&v32 = v18;
      *(&v32 + 1) = v22;
      ListLabelConfiguration.effectiveIconWidth.getter();
      v30 = v18;
      v31 = v22;
      ListLabelConfiguration.effectiveSpacing.getter();
      EnvironmentValues.bodyHeadOutdent.setter();
    }
  }

  return (*(v28 + 8))(v12, v9);
}

uint64_t closure #1 in closure #1 in ListLabelStyle.PhoneImplementation.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for <<opaque return type of View.enumerated<A>(_:)>>.0();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 8);
  v22 = *a1;
  v23 = v12;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for CountViewsProxy<LabelStyleConfiguration.Icon>, &type metadata for LabelStyleConfiguration.Icon, &protocol witness table for LabelStyleConfiguration.Icon, MEMORY[0x1E697E678]);
  v13 = CountViewsProxy.count.getter() == 0;
  v14 = static VerticalAlignment.center.getter();
  *(swift_allocObject() + 16) = v13;
  type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>>();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>> and conformance <> ModifiedContent<A, B>();
  View.enumerated<A>(_:)();

  v21 = 1;
  v15 = *(v6 + 16);
  v15(v8, v11, v5);
  v16 = v21;
  *a2 = v14;
  *(a2 + 8) = 0;
  *(a2 + 16) = v16;
  type metadata accessor for (ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)();
  v15((a2 + *(v17 + 48)), v8, v5);
  v18 = *(v6 + 8);
  v18(v11, v5);
  return (v18)(v8, v5);
}

void storeEnumTagSinglePayload for ListLabelTitleModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
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
      if (v7 < 0xFE)
      {
        *((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
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

void closure #2 in closure #1 in closure #1 in ListLabelStyle.PhoneImplementation.body.getter(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for <<opaque return type of MappedViewElement.view>>.0();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  v12 = a1[2];
  *&v13 = *a1;
  v18 = v13;
  v24 = v13;
  v25 = v11;
  v26 = v12;
  MappedViewElement.view.getter();
  v21 = v12;
  v19 = 0uLL;
  v20 = -1;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v23 == 255)
  {
    v14 = 0;
  }

  else
  {
    v19 = v22;
    v20 = v23 & 1;
    v14 = ViewContentOffset.offset.getter();
  }

  v15 = v14 + v18;
  if (__OFADD__(v14, v18))
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(a3, v10, v7);
    type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>>();
    v17 = a3 + *(v16 + 36);
    *v17 = v15;
    *(v17 + 8) = (a2 & 1) == 0;
  }
}

uint64_t getEnumTagSinglePayload for ListLabelTitleModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
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
      if (*&a1[v8])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v14 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return v7 + (v15 | v14) + 1;
}

double protocol witness for Layout.sizeThatFits(proposal:subviews:cache:) in conformance ListLabelLayout(uint64_t a1, char a2, uint64_t a3, char a4, int *a5, uint64_t a6)
{
  v8 = *a5;
  v9 = *(a5 + 1);
  v10 = *(a5 + 16);
  v11 = *(a5 + 17);
  v12 = *(v6 + 3);
  v18 = *v6;
  v19 = *(v6 + 8);
  v20 = v12;
  v21 = *(v6 + 2);
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  ListLabelLayout.placeChildren(proposal:subviews:cache:)(a1, a2 & 1, a3, a4 & 1, &v14, a6);
  return *(a6 + 48);
}

uint64_t ListLabelLayout.placeChildren(proposal:subviews:cache:)(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v12 = a4;
  LODWORD(v14) = a2;
  v106 = *v6;
  v17 = v6[1];
  v16 = v6[2];
  v18 = v6[3];
  LOBYTE(v144) = a2 & 1;
  LOBYTE(v142) = a4 & 1;
  result = static ProposedViewSize.== infix(_:_:)();
  if (result)
  {
    return result;
  }

  v20 = *a6;
  if (!*(*a6 + 16))
  {
    return result;
  }

  *(a6 + 48) = 0;
  v21 = (a6 + 48);
  *(a6 + 56) = 0;
  v22 = 0.0;
  if (ListLabelLayout.Cache.hasIconView.getter())
  {
    if (*(v20 + 2) <= 1uLL)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = v16;
    }
  }

  v23 = *&a1;
  if (v14)
  {
    v23 = 10.0;
  }

  v102 = v23;
  v107 = v23 - v22;
  LODWORD(v24) = a6;
  v25 = ListLabelLayout.Cache.hasIconView.getter();
  v26 = *(v20 + 2);
  if (!v25)
  {
    if (!v26)
    {
      goto LABEL_17;
    }

    static ViewDimensions.zero.getter();
    v136 = v142;
    v137 = *v143;
    v138 = *&v143[16];
    ViewGeometry.init(origin:dimensions:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_83;
    }

    if (*(v20 + 2))
    {
      goto LABEL_16;
    }

LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (!v26)
  {
    goto LABEL_17;
  }

  v100 = v22;
  v97 = a1;
  v98 = v14;
  v99 = a6;
  v7 = v129;
  v27 = *(v20 + 3);
  v144 = *(v20 + 2);
  *v145 = v27;
  v28 = *(v20 + 4);
  v29 = *(v20 + 5);
  v30 = *(v20 + 7);
  *&v145[48] = *(v20 + 6);
  *&v145[64] = v30;
  *&v145[16] = v28;
  *&v145[32] = v29;
  LODWORD(v8) = DWORD1(v144);
  v31 = v12;
  a6 = DWORD2(v144);
  v12 = HIDWORD(v144);
  a1 = v145[0];
  v32 = *(v20 + 49);
  v33 = *(v20 + 65);
  v34 = *(v20 + 81);
  v35 = *(v20 + 97);
  *&v129[63] = *(v20 + 14);
  *&v129[32] = v34;
  *&v129[48] = v35;
  *v129 = v32;
  *&v129[16] = v33;
  v117 = *&v145[72];
  v96 = v31;
  v101 = a3;
  v119 = v144;
  v136 = v144;
  LOBYTE(v137) = v145[0] & 1;
  outlined init with copy of ListLabelLayout.Child(&v144, &v142);
  LOBYTE(v142) = 0;
  LOBYTE(v130) = 0;
  LayoutSubview.dimensions(in:)();
  v14 = *(&v142 + 1);
  a3 = v142;
  v36 = *v143;
  v37 = *&v143[16];
  v9 = v17;
  v38 = static HorizontalAlignment.center.getter();
  v142 = __PAIR128__(v14, a3);
  *v143 = v36;
  *&v143[16] = v37;
  MEMORY[0x18D004E80](v38);
  v10 = v18;
  if (v106)
  {
    v39 = static VerticalAlignment.firstTextLineCenter.getter();
  }

  else
  {
    v39 = static VerticalAlignment.center.getter();
  }

  *&v142 = a3;
  *(&v142 + 1) = v14;
  *v143 = v36;
  *&v143[16] = v37;
  MEMORY[0x18D004E70](v39);
  *&v142 = a3;
  *(&v142 + 1) = v14;
  *v143 = v36;
  *&v143[16] = v37;

  ViewGeometry.init(origin:dimensions:)();
  *v126 = *&v129[7];
  *&v126[16] = *&v129[23];
  v127 = *&v129[39];
  v128 = *&v129[55];
  outlined destroy of ViewGeometry(v126);
  *&v129[7] = v121;
  *&v129[23] = v123;
  *&v129[39] = v124;
  *&v129[55] = v125;
  *v21 = v17;
  LODWORD(v24) = v119;
  *&v142 = __PAIR64__(v8, v119);
  *(&v142 + 1) = __PAIR64__(v12, a6);
  v143[0] = a1;
  v21 = &v136;
  *&v143[1] = *v129;
  *&v143[64] = *&v129[63];
  *&v143[49] = *&v129[48];
  *&v143[33] = *&v129[32];
  *&v143[17] = *&v129[16];
  v16 = v117;
  *&v143[72] = v117;
  outlined init with copy of ListLabelLayout.Child(&v142, &v136);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_85:
    v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
  }

  v18 = v10;
  v22 = v100;

  if (*(v20 + 2))
  {
    v107 = v107 - v9;
    v103 = v9 + v100;
    v44 = *(v20 + 4);
    v45 = *(v20 + 5);
    v46 = *(v20 + 7);
    v133 = *(v20 + 6);
    *v134 = v46;
    *&v131[16] = v44;
    v132 = v45;
    v47 = *(v20 + 3);
    v130 = *(v20 + 2);
    *v131 = v47;
    v48 = *&v143[64];
    *(v20 + 6) = *&v143[48];
    *(v20 + 7) = v48;
    v49 = *&v143[32];
    *(v20 + 4) = *&v143[16];
    *(v20 + 5) = v49;
    v50 = *v143;
    *(v20 + 2) = v142;
    *(v20 + 3) = v50;
    outlined destroy of ListLabelLayout.Child(&v130);
    v51 = *v129;
    *(v7 + 225) = *&v129[16];
    v52 = *&v129[48];
    *(v7 + 241) = *&v129[32];
    *(v21 + 65) = v52;
    *v99 = v20;
    *&v136 = __PAIR64__(v8, LODWORD(v24));
    *(&v136 + 1) = __PAIR64__(v12, a6);
    a6 = v99;
    LOBYTE(v137) = a1;
    *&v141 = *(v7 + 63);
    *(v21 + 17) = v51;
    *(&v141 + 1) = v16;
    outlined destroy of ListLabelLayout.Child(&v136);
    v12 = v96;
    a3 = v101;
    LODWORD(v14) = v98;
    a1 = v97;
    while (1)
    {
      v122 = 1;
      LOBYTE(v144) = v14 & 1;
      LOBYTE(v142) = v12 & 1;
      v53 = COERCE_DOUBLE(ProposedViewSize.subscript.getter());
      if (v54)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v53 - *(a6 + 8) - (v18 + v18);
        v122 = 0;
      }

      v55 = *(v20 + 2);
      v16 = 0.0;
      v104 = v55 - 2;
      if (v55 < 2)
      {
        break;
      }

      v94 = v9;
      v95 = v18;
      v100 = v22;
      v97 = a1;
      v98 = v14;
      v101 = a3;
      v96 = v12;
      v99 = a6;
      v21 = 0;
      *&a1 = 0.0;
      v105 = v103;
      v113 = 0.0;
      while (1)
      {
        v56 = *(v21 + v20 + 160);
        v57 = *(v21 + v20 + 176);
        v58 = *(v21 + v20 + 192);
        *&v145[64] = *(v21 + v20 + 208);
        v59 = *(v21 + v20 + 144);
        v144 = *(v21 + v20 + 128);
        *v145 = v59;
        *&v145[32] = v57;
        *&v145[48] = v58;
        *&v145[16] = v56;
        v60 = *&v145[72];
        v116 = DWORD1(v144);
        v118 = v144;
        v114 = HIDWORD(v144);
        v115 = DWORD2(v144);
        v120 = v59;
        v61 = *(v21 + v20 + 145);
        *&v126[15] = *(v21 + v20 + 160);
        *v126 = v61;
        v108 = v24;
        v109 = v57;
        v110 = *&v145[24];
        v111 = *&v145[56];
        v112 = *&v145[40];
        v18 = v18 + *&v145[72];
        v130 = v144;
        a6 = HIDWORD(v144);
        LODWORD(v8) = DWORD2(v144);
        v12 = v59;
        v131[0] = v59 & 1;
        outlined init with copy of ListLabelLayout.Child(&v144, &v136);
        LOBYTE(v136) = 0;
        v135 = v122;
        LayoutSubview.dimensions(in:)();
        v62 = *(&v136 + 1);
        a3 = v136;
        v22 = *(&v137 + 1);
        v63 = v137;
        v64 = v138;
        v65 = static HorizontalAlignment.leading.getter();
        v136 = __PAIR128__(v62, a3);
        v137 = __PAIR128__(*&v22, v63);
        v138 = v64;
        v9 = v105 + MEMORY[0x18D004E80](v65);
        v130 = __PAIR128__(v62, a3);
        *v131 = __PAIR128__(*&v22, v63);
        *&v131[16] = v64;

        ViewGeometry.init(origin:dimensions:)();
        v7 = *(&v137 + 1);
        v14 = v137;
        v10 = *(&v138 + 1);
        v66 = v138;
        v16 = *(&v139 + 1);
        v67 = v139;
        *&v24 = v126;
        *v129 = *&v126[7];
        *&v129[16] = v110;
        *&v129[24] = v109;
        *&v129[32] = v112;
        *&v129[48] = v111;
        outlined destroy of ViewGeometry(v129);
        *&v126[7] = v136;
        *&v142 = __PAIR64__(v116, v118);
        *(&v142 + 1) = __PAIR64__(v114, v115);
        v143[0] = v120;
        *&v143[1] = *v126;
        *&v143[16] = *(&v136 + 1);
        *&v143[24] = v14;
        *&v143[32] = v7;
        *&v143[40] = v66;
        *&v143[48] = v10;
        *&v143[56] = v67;
        *&v143[64] = v16;
        *&v143[72] = v60;
        outlined init with copy of ListLabelLayout.Child(&v142, &v136);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
        }

        if ((a1 + 1) >= *(v20 + 2))
        {
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v68 = (v21 + v20);
        v69 = *(v21 + v20 + 144);
        v136 = *(v21 + v20 + 128);
        v137 = v69;
        v70 = *(v21 + v20 + 160);
        v71 = *(v21 + v20 + 176);
        v72 = *(v21 + v20 + 208);
        v140 = *(v21 + v20 + 192);
        v141 = v72;
        v138 = v70;
        v139 = v71;
        v73 = *&v143[64];
        v75 = *&v143[16];
        v74 = *&v143[32];
        v68[12] = *&v143[48];
        v68[13] = v73;
        v68[10] = v75;
        v68[11] = v74;
        v76 = *v143;
        v68[8] = v142;
        v68[9] = v76;
        outlined destroy of ListLabelLayout.Child(&v136);
        *&v130 = v14;
        *(&v130 + 1) = v7;
        *v131 = v66;
        *&v131[8] = v10;
        *&v131[16] = v67;
        *&v131[24] = v16;
        ViewDimensions.width.getter();
        if (v106)
        {
          if (*&a1 == 0.0)
          {
            v105 = 0.0;
            v107 = v102;
          }

          else
          {
            v77 = v77 - v103;
          }
        }

        v78 = v113;
        if (v113 <= v77)
        {
          v78 = v77;
        }

        v113 = v78;
        *&v130 = v14;
        *(&v130 + 1) = v7;
        *v131 = v66;
        *&v131[8] = v10;
        *&v131[16] = v67;
        *&v131[24] = v16;
        ViewDimensions.height.getter();
        v9 = v79;
        if (v122)
        {

          v24 = v108;
        }

        else
        {
          *&v130 = v14;
          *(&v130 + 1) = v7;
          *v131 = v66;
          *&v131[8] = v10;
          *&v131[16] = v67;
          *&v131[24] = v16;
          ViewDimensions.height.getter();
          v22 = v80;

          v24 = v108 - v22;
        }

        v18 = v18 + v9;
        *&v130 = __PAIR64__(v116, v118);
        *(&v130 + 1) = __PAIR64__(v114, v115);
        v131[0] = v120;
        *&v131[1] = *v126;
        *&v131[16] = *&v126[15];
        *&v131[24] = v14;
        *&v132 = v7;
        *(&v132 + 1) = v66;
        *&v133 = v10;
        *(&v133 + 1) = v67;
        v134[0] = v16;
        v134[1] = v60;
        result = outlined destroy of ListLabelLayout.Child(&v130);
        if (v104 == a1)
        {
          break;
        }

        v81 = a1 + 2;
        ++a1;
        v21 += 6;
        if (v81 >= *(v20 + 2))
        {
          goto LABEL_79;
        }
      }

      a6 = v99;
      *v99 = v20;
      v82 = v95 + v18;
      *(v99 + 48) = v100 + v94 + v113;
      if (v106)
      {
        a3 = v101;
        LODWORD(v14) = v98;
        a1 = v97;
        if (*(v20 + 2) < 2uLL)
        {
          goto LABEL_89;
        }

        v83 = *(v20 + 11);
        *&v145[16] = *(v20 + 10);
        *&v145[32] = v83;
        v84 = *(v20 + 13);
        *&v145[48] = *(v20 + 12);
        *&v145[64] = v84;
        v85 = *(v20 + 9);
        v144 = *(v20 + 8);
        *v145 = v85;
        outlined init with copy of ListLabelLayout.Child(&v144, &v142);
        static VerticalAlignment.firstTextLineCenter.getter();
        v142 = *&v145[8];
        *v143 = *&v145[24];
        *&v143[16] = *&v145[40];
        *&v143[32] = *&v145[56];
        *&v24 = &v142;
        ViewGeometry.subscript.getter();
        v22 = v86;
        outlined destroy of ListLabelLayout.Child(&v144);
        v12 = v96;
      }

      else
      {
        v22 = v82 * 0.5;
        v12 = v96;
        a3 = v101;
        LODWORD(v14) = v98;
        a1 = v97;
      }

      v9 = -v22;
      v87 = 0.0;
      v146.origin.x = 0.0;
      v146.origin.y = -v22;
      v146.size.width = v113;
      v146.size.height = v82;
      if (CGRectIsNull(v146))
      {
        v88 = 0.0;
        goto LABEL_56;
      }

      if (v82 - v22 >= v9)
      {
        v16 = -v22;
      }

      else
      {
        v16 = v82 - v22;
      }

      if (v82 - v22 < v9)
      {
        v89 = -v22;
      }

      else
      {
        v89 = v82 - v22;
      }

      v88 = 0.0;
      if (v16 > v89)
      {
LABEL_56:
        v18 = v87;
        v16 = v88;
        goto LABEL_57;
      }

      if (v16 >= 0.0)
      {
        v87 = v89;
        v16 = 0.0;
        v18 = 0.0;
        if (v89 >= 0.0)
        {
          goto LABEL_56;
        }

        goto LABEL_58;
      }

      v18 = 0.0;
      v87 = v89;
      v88 = v16;
      if (v89 >= 0.0)
      {
        goto LABEL_56;
      }

LABEL_57:
      if (v16 > v18)
      {
        goto LABEL_81;
      }

LABEL_58:
      v21 = *(v20 + 2);
      if (v21 == 1)
      {
        goto LABEL_66;
      }

      if (v21)
      {
        v9 = v9 - v16;
        v7 = 1;
        a3 = 152;
        v8 = &v144;
        while (1)
        {
          *&v24 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            *&v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          }

          if (v7 >= *(*&v24 + 16))
          {
            goto LABEL_80;
          }

          v20 = *&v24;
          ++v7;
          v90 = ViewGeometry.origin.modify();
          *(v91 + 8) = v9 + *(v91 + 8);
          v90(&v144, 0);
          a3 += 96;
          if (v21 == v7)
          {
            *v99 = v24;
            a3 = v101;
            goto LABEL_66;
          }
        }
      }

LABEL_82:
      __break(1u);
LABEL_83:
      v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      if (!*(v20 + 2))
      {
        goto LABEL_84;
      }

LABEL_16:
      v40 = *(v20 + 104);
      v41 = *(v20 + 72);
      v142 = *(v20 + 56);
      *v143 = v41;
      *&v143[16] = *(v20 + 88);
      *&v143[32] = v40;
      v42 = v144;
      *(v20 + 72) = *v145;
      v43 = *&v145[32];
      *(v20 + 88) = *&v145[16];
      *(v20 + 104) = v43;
      *(v20 + 56) = v42;
      outlined destroy of ViewGeometry(&v142);
      *a6 = v20;
LABEL_17:
      v9 = 0.0;
      v103 = v22;
    }

    v18 = 0.0;
LABEL_66:
    result = ListLabelLayout.Cache.hasIconView.getter();
    if ((result & 1) == 0 || !*(v20 + 2))
    {
      goto LABEL_71;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if (*(v20 + 2))
      {
LABEL_70:
        v92 = ViewGeometry.origin.modify();
        *(v93 + 8) = *(v93 + 8) - v16;
        result = v92(&v144, 0);
        *a6 = v20;
LABEL_71:
        *(a6 + 56) = v18 - v16;
        *(a6 + 16) = *&a1;
        *(a6 + 24) = v14 & 1;
        *(a6 + 32) = a3;
        *(a6 + 40) = v12 & 1;
        return result;
      }

      goto LABEL_88;
    }
  }

  else
  {
    __break(1u);
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
  v20 = result;
  if (*(result + 16))
  {
    goto LABEL_70;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  return result;
}

BOOL ListLabelLayout.Cache.hasIconView.getter()
{
  if (*(v0 + 80))
  {
    if (*(*v0 + 16))
    {
      static ProposedViewSize.unspecified.getter();
      LayoutSubview.sizeThatFits(_:)();
      *(v0 + 64) = v2;
      *(v0 + 72) = v1;
      *(v0 + 80) = 0;
      if (v2 > 0.0)
      {
        v3 = v1 <= 0.0;
        return !v3;
      }
    }

    return 0;
  }

  if (*(v0 + 64) <= 0.0)
  {
    return 0;
  }

  v3 = *(v0 + 72) <= 0.0;
  return !v3;
}

uint64_t outlined init with copy of ListLabelLayout.Child(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *a2 = v3;
  *(a2 + 24) = *(a1 + 24);
  v4 = *(a1 + 6);
  *(a2 + 40) = *(a1 + 5);
  *(a2 + 48) = v4;
  v5 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v5;
  *(a2 + 88) = *(a1 + 11);

  return a2;
}

uint64_t initializeWithCopy for ListLabelLayout.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t assignWithTake for ListLabelLayout.Cache(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t ListLabelLayout.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, int *a5, uint64_t a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v16 = *a5;
  v17 = *(a5 + 1);
  v18 = *(a5 + 16);
  v19 = *(a5 + 17);
  v20 = *(v10 + 24);
  v46[0] = *v10;
  *&v46[8] = *(v10 + 8);
  *&v46[24] = v20;
  *&v46[32] = *(v10 + 32);
  LODWORD(v42) = v16;
  *(&v42 + 1) = v17;
  LOBYTE(v43) = v18;
  BYTE1(v43) = v19;
  v21 = a2 & 1;
  LOBYTE(v38) = v21;
  LOBYTE(v37[0]) = a4 & 1;
  result = ListLabelLayout.placeChildren(proposal:subviews:cache:)(a1, v21, a3, a4 & 1, &v42, a6);
  v23 = *a6;
  v24 = *(*a6 + 16);
  if (v24)
  {
    v25 = (v23 + 32);
    do
    {
      v26 = v25[1];
      *v46 = *v25;
      *&v46[16] = v26;
      v27 = v25[2];
      v28 = v25[3];
      v29 = v25[5];
      *&v46[64] = v25[4];
      *&v46[80] = v29;
      *&v46[32] = v27;
      *&v46[48] = v28;
      outlined init with copy of ListLabelLayout.Child(v46, &v42);
      v47.origin.x = a7;
      v47.origin.y = a8;
      v47.size.width = a9;
      v47.size.height = a10;
      CGRectGetMinX(v47);
      v48.origin.x = a7;
      v48.origin.y = a8;
      v48.size.width = a9;
      v48.size.height = a10;
      CGRectGetMinY(v48);
      v38 = *&v46[24];
      v39 = *&v46[40];
      v40 = *&v46[56];
      v41 = *&v46[72];
      outlined init with copy of ListLabelLayout.Child(v46, &v42);
      ViewGeometry.origin.getter();
      if ((~v30 & 0x7FF0000000000000) != 0 || (v30 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        ViewGeometry.origin.getter();
      }

      ViewGeometry.origin.getter();
      if ((~v31 & 0x7FF0000000000000) != 0 || (v31 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        ViewGeometry.origin.getter();
      }

      ViewGeometry.origin.setter();
      v36[0] = v38;
      v36[1] = v39;
      v36[2] = v40;
      v36[3] = v41;
      v32 = v38;
      v33 = v39;
      v34 = v40;
      v35 = v41;
      outlined init with copy of ViewGeometry(v36, &v42);
      LayoutSubview.place(in:layoutDirection:)();
      outlined destroy of ListLabelLayout.Child(v46);
      v37[0] = v32;
      v37[1] = v33;
      v37[2] = v34;
      v37[3] = v35;
      outlined destroy of ViewGeometry(v37);
      v42 = v38;
      v43 = v39;
      v44 = v40;
      v45 = v41;
      result = outlined destroy of ViewGeometry(&v42);
      v25 += 6;
      --v24;
    }

    while (v24);
  }

  return result;
}

uint64_t ListLabelLayout.explicitAlignment(of:in:proposal:subviews:cache:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, int *a6, uint64_t a7, double a8)
{
  v12 = *a6;
  v13 = *(a6 + 1);
  v14 = *(a6 + 16);
  v15 = *(a6 + 17);
  v16 = *v8;
  v17 = v8[1];
  v18 = *(v8 + 4);
  v19 = *(v8 + 5);
  LOBYTE(v61) = *v8;
  *(&v61 + 1) = v17;
  v56 = *(v8 + 1);
  *v62 = v56;
  *&v62[16] = v18;
  *&v62[24] = v19;
  LODWORD(v57) = v12;
  *(&v57 + 1) = v13;
  LOBYTE(v58) = v14;
  BYTE1(v58) = v15;
  LOBYTE(v63) = a3 & 1;
  v65 = a5 & 1;
  ListLabelLayout.placeChildren(proposal:subviews:cache:)(a2, a3 & 1, a4, a5 & 1, &v57, a7);
  v63 = 0.0;
  v64 = 1;
  if (static HorizontalAlignment.listRowSeparatorLeading.getter() != a1 || (*&v61 = v18, *(&v61 + 1) = v19, (AnyInterfaceIdiom.accepts<A>(_:)() & 1) != 0))
  {
    v20 = *a7;
    v21 = *(*a7 + 16);
    if (v21)
    {
      v22 = 0;
      v23 = (v20 + 56);
      while (1)
      {
        v61 = *v23;
        *v62 = v23[1];
        *&v62[16] = v23[2];
        *&v62[32] = v23[3];
        *&v24 = COERCE_DOUBLE(ViewGeometry.subscript.getter());
        if ((v25 & 1) == 0)
        {
          v26 = *&v24;
          AlignmentKey.id.getter();
          (*(v27 + 16))(v22, &v63, v26);
          if (__OFADD__(v22++, 1))
          {
            break;
          }
        }

        v23 += 6;
        if (!--v21)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_10:
      if (v64)
      {
        *&result = v63;
      }

      else
      {
        *&result = v63 + a8;
      }

      return result;
    }

LABEL_16:
    *&result = 0.0;
    return result;
  }

  v30 = *a7;
  if (!*(*a7 + 16))
  {
    goto LABEL_16;
  }

  v31 = *(v30 + 72);
  v61 = *(v30 + 56);
  *v62 = v31;
  v32 = *(v30 + 104);
  *&v62[16] = *(v30 + 88);
  *&v62[32] = v32;
  *&result = COERCE_DOUBLE(ViewGeometry.subscript.getter());
  if (v33)
  {
    *&result = 0.0;
    v34 = 0;
  }

  else
  {
    v63 = *&result;
    v64 = 0;
    v34 = 1;
  }

  v35 = *(v30 + 16);
  if (v35 < 2)
  {
    return result;
  }

  v36 = *(v30 + 176);
  *&v62[16] = *(v30 + 160);
  *&v62[32] = v36;
  v37 = *(v30 + 208);
  *&v62[48] = *(v30 + 192);
  *&v62[64] = v37;
  v38 = *(v30 + 144);
  v61 = *(v30 + 128);
  *v62 = v38;
  outlined init with copy of ListLabelLayout.Child(&v61, &v57);
  static HorizontalAlignment.leadingText.getter();
  v57 = *&v62[8];
  v58 = *&v62[24];
  v59 = *&v62[40];
  v60 = *&v62[56];
  ViewGeometry.subscript.getter();
  v40 = v39;
  outlined destroy of ListLabelLayout.Child(&v61);
  if (v16)
  {
    if (*(a7 + 80))
    {
      if (!*(v30 + 16))
      {
        goto LABEL_29;
      }

      v41 = *(v30 + 48);
      v57 = *(v30 + 32);
      LOBYTE(v58) = v41;
      static ProposedViewSize.unspecified.getter();
      v65 = v42 & 1;
      LayoutSubview.sizeThatFits(_:)();
      *(a7 + 64) = v44;
      *(a7 + 72) = v43;
      *(a7 + 80) = 0;
      if (v44 <= 0.0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (*(a7 + 64) <= 0.0)
      {
        goto LABEL_29;
      }

      v43 = *(a7 + 72);
    }

    if (v43 > 0.0)
    {
      v40 = v40 - (v17 + *&v56);
    }
  }

LABEL_29:
  AlignmentKey.id.getter();
  (*(v45 + 16))(v34, &v63, v40);
  v46 = v35 - 2;
  if (v35 == 2)
  {
LABEL_33:
    *&result = v63;
  }

  else
  {
    v47 = v34 + 1;
    v48 = (v30 + 224);
    while (1)
    {
      v49 = v48[1];
      v61 = *v48;
      *v62 = v49;
      v50 = v48[2];
      v51 = v48[3];
      v52 = v48[5];
      *&v62[48] = v48[4];
      *&v62[64] = v52;
      *&v62[16] = v50;
      *&v62[32] = v51;
      outlined init with copy of ListLabelLayout.Child(&v61, &v57);
      static HorizontalAlignment.leadingText.getter();
      v57 = *&v62[8];
      v58 = *&v62[24];
      v59 = *&v62[40];
      v60 = *&v62[56];
      ViewGeometry.subscript.getter();
      v54 = v53;
      outlined destroy of ListLabelLayout.Child(&v61);
      AlignmentKey.id.getter();
      *&result = COERCE_DOUBLE((*(v55 + 16))(v47, &v63, v54));
      if (v47 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++v47;
      v48 += 6;
      if (!--v46)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t @objc UICollectionViewListCoordinatorBase.collectionView(_:willDisplaySupplementaryView:forElementKind:at:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  specialized UICollectionViewListCoordinatorBase.collectionView(_:willDisplaySupplementaryView:forElementKind:at:)(v15, v11, v13, v10);

  return (*(v8 + 8))(v10, v7);
}

uint64_t specialized UICollectionViewListCoordinatorBase.collectionView(_:willDisplaySupplementaryView:forElementKind:at:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v41 = a1;
  v7 = *MEMORY[0x1E69E7D40] & *v4;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v12 == a3)
  {
    goto LABEL_12;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_13;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v15 == a3)
  {
LABEL_12:

    goto LABEL_13;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v17 & 1) == 0)
  {
    return result;
  }

LABEL_13:
  v19 = *(*(v7 + 112) + 8);
  v20 = *(v7 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = swift_dynamicCastUnknownClass();
  if (result)
  {
    v22 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x98));
    v23 = *v22;
    if (*v22)
    {
      v39[0] = v20;
      v39[1] = v19;
      v24 = v22[1];
      (*(v9 + 16))(v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v8);
      v25 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = v23;
      *(v26 + 24) = v24;
      (*(v9 + 32))(v26 + v25, v11, v8);
      v27 = v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x100);
      v28 = *(v27 + 2);
      v29 = v28 & 0xFFFFFFFFFFFFFFFELL;
      v40 = v26;
      if ((v28 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFALL)
      {
        outlined copy of AppIntentExecutor?(v23);
        outlined copy of AppIntentExecutor?(v23);
        v30 = v41;
        v31 = v41;
        v32 = partial apply for closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:willDisplaySupplementaryView:forElementKind:at:);
LABEL_30:
        v35 = v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x108);
        v36 = *v35;
        v37 = v35[8];
        v38 = *(swift_getAssociatedConformanceWitness() + 8);
        (*(v38 + 136))(v36, v37, AssociatedTypeWitness, v38);
        (*(v38 + 120))(1, v32, v40, AssociatedTypeWitness, v38);

        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v23);
        return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v32);
      }

      v30 = v41;
      if (v29 == 0x1FFFFFFFCLL || v29 == 0x1FFFFFFFELL)
      {
LABEL_18:
        outlined copy of AppIntentExecutor?(v23);
        outlined copy of AppIntentExecutor?(v23);
        v33 = v30;
        v32 = partial apply for closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:willDisplaySupplementaryView:forElementKind:at:);
        goto LABEL_30;
      }

      if (v28 >> 62)
      {
        if ((*v27 & 2) == 0 || !*(v27 + 3) || v28 & 1 | (*(v27 + 1) <= 0.0))
        {
          goto LABEL_18;
        }
      }

      else if (*v27 & 2) == 0 || (*(v27 + 4))
      {
        goto LABEL_18;
      }

      outlined copy of AppIntentExecutor?(v23);
      outlined copy of AppIntentExecutor?(v23);
      v34 = v30;

      v32 = 0;
      v40 = 0;
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t ListCollectionViewCellBase.explicitAlignment(of:at:)()
{
  v1 = *(v0 + direct field offset for ListCollectionViewCellBase.host);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier();
  v2 = v1;
  swift_getWitnessTable();
  type metadata accessor for _UIHostingView();
  swift_getWitnessTable();
  v3 = ViewRendererHost.explicitAlignment(of:at:)();

  return v3;
}

uint64_t UpdateViewDestinationViewModifier.RequestWriter.updateValue()()
{
  v1 = v0;
  v49 = *MEMORY[0x1E69E9840];
  updated = type metadata accessor for UpdateViewDestinationViewModifier();
  v3 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v5 = v20 - v4;
  UpdateViewDestinationViewModifier.RequestWriter.modifier.getter(v20 - v4);
  UpdateViewDestinationViewModifier.RequestWriter.viewListID.getter(&v24);
  v7 = *(&v24 + 1);
  v6 = v24;
  if (*(&v24 + 1) == 2)
  {
    v6 = 0;
    v7 = 1;
  }

  *&v24 = v6;
  *(&v24 + 1) = v7;
  UpdateViewDestinationViewModifier.request(viewListID:)(&v24, updated, v43);
  outlined consume of Text.LineStyle?(v24, *(&v24 + 1));
  (*(v3 + 8))(v5, updated);
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v43, &v24, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
  if (v31 >> 1 == 4294967294)
  {
    v8 = &lazy cache variable for type metadata for UpdateViewDestinationRequest?;
    v9 = &type metadata for UpdateViewDestinationRequest;
    v10 = &v24;
LABEL_7:
    outlined destroy of NavigationAuthority?(v10, v8, v9);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = -1;
    goto LABEL_9;
  }

  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(&v25 + 8, &v44, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
  outlined destroy of UpdateViewDestinationRequest(&v24);
  if (v48 >> 1 == 0xFFFFFFFF)
  {
    v8 = &lazy cache variable for type metadata for NavigationRequest?;
    v9 = &type metadata for NavigationRequest;
    v10 = &v44;
    goto LABEL_7;
  }

  outlined init with copy of NavigationRequest.Action(&v44, &v36);
  outlined destroy of NavigationRequest(&v44);
LABEL_9:
  v27 = v39;
  v28 = v40;
  v29 = v41;
  v24 = v36;
  v30[0] = v42;
  v25 = v37;
  v26 = v38;
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v0 + 32, &v30[8], &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
  if (v30[0] != 255)
  {
    _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(&v24, &v44, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
    if (v47 == 13)
    {

      v11 = &v45;

      if (v35 != 255)
      {
        _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(&v30[8], &v21, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
        if (v23 == 13)
        {

          v12 = &v21 + 8;
LABEL_18:
          outlined destroy of NavigationLinkSelectionIdentifier(v12);
          outlined destroy of NavigationLinkSelectionIdentifier(v11);
          outlined destroy of NavigationAuthority?(&v30[8], &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
          outlined destroy of NavigationAuthority?(&v24, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
          v13 = *(v1 + 20);
          v14 = *(v1 + 24);
          v15 = UpdateViewDestinationViewModifier.RequestWriter.structuralSeed.getter();
          if (v14)
          {
            if ((v15 & 0x100000000) == 0)
            {
LABEL_29:
              memset(v30, 0, sizeof(v30));
              v28 = 0u;
              v29 = 0u;
              v26 = 0u;
              v27 = 0u;
              v25 = 0u;
              v24 = 0u;
              v31 = 0x1FFFFFFFCLL;
              v32 = 0;
              v33 = 0;
              v34 = 0;
              goto LABEL_30;
            }
          }

          else if ((v15 & 0x100000000) != 0 || v13 != v15)
          {
            goto LABEL_29;
          }

          _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v43, &v24, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
LABEL_30:
          outlined init with take of NavigationAuthority?(&v24, &v44, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
          goto LABEL_25;
        }

        goto LABEL_22;
      }

LABEL_23:
      outlined destroy of NavigationLinkSelectionIdentifier(v11);
      goto LABEL_24;
    }

    if (v47 == 18)
    {

      v11 = &v46;

      if (v35 != 255)
      {
        _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(&v30[8], &v21, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
        if (v23 == 18)
        {

          v12 = v22;
          goto LABEL_18;
        }

LABEL_22:
        outlined destroy of NavigationRequest.Action(&v21);
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    outlined destroy of NavigationRequest.Action(&v44);
  }

LABEL_24:
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v43, &v44, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
  outlined destroy of (NavigationRequest.Action?, NavigationRequest.Action?)(&v24);
LABEL_25:
  UpdateViewDestinationViewModifier.RequestWriter.selectionIdentifier.getter(&v36);
  outlined init with copy of NavigationLinkSelectionIdentifier(&v36, &v21);
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(&v44, &v24, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
  v16 = swift_allocObject();
  v17 = v22[0];
  v16[1] = v21;
  v16[2] = v17;
  v18 = v22[2];
  v16[3] = v22[1];
  v16[4] = v18;
  outlined init with take of NavigationAuthority?(&v24, (v16 + 5), &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
  v20[1] = partial apply for closure #1 in UpdateViewDestinationViewModifier.RequestWriter.updateValue();
  v20[2] = v16;
  type metadata accessor for (_:)();
  AGGraphSetOutputValue();
  outlined destroy of NavigationLinkSelectionIdentifier(&v36);

  $defer #2 <A>() in UpdateViewDestinationViewModifier.RequestWriter.updateValue()(v1, v43);
  $defer #1 <A>() in UpdateViewDestinationViewModifier.RequestWriter.updateValue()(v1);
  outlined destroy of NavigationAuthority?(v43, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
  return outlined destroy of NavigationAuthority?(&v44, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
}

uint64_t sub_18C044F90()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  if (*(v0 + 64) != 1)
  {
  }

  v1 = *(v0 + 240) & 0xFFFFFFFFFFFFFFFELL;
  if (v1 != 0x1FFFFFFFCLL)
  {
    if (*(v0 + 88) != 1)
    {
      swift_weakDestroy();

      v1 = *(v0 + 240) & 0xFFFFFFFFFFFFFFFELL;
    }

    if (v1 != 0x1FFFFFFFELL)
    {
      switch(*(v0 + 200))
      {
        case 0:
          goto LABEL_37;
        case 1:

          goto LABEL_37;
        case 2:

          __swift_destroy_boxed_opaque_existential_1(v0 + 120);
          break;
        case 3:

          break;
        case 4:
        case 5:

          goto LABEL_37;
        case 6:

          goto LABEL_37;
        case 0xA:
        case 0x11:
          __swift_destroy_boxed_opaque_existential_1(v0 + 104);

          goto LABEL_37;
        case 0xB:
          __swift_destroy_boxed_opaque_existential_1(v0 + 104);
          break;
        case 0xC:
        case 0xD:

          if (*(v0 + 136))
          {
            __swift_destroy_boxed_opaque_existential_1(v0 + 112);
          }

          if (*(v0 + 160) != 1)
          {
          }

          goto LABEL_37;
        case 0xE:

          if (*(v0 + 136))
          {
            __swift_destroy_boxed_opaque_existential_1(v0 + 112);
          }

          v2 = *(v0 + 160);
          goto LABEL_32;
        case 0x12:

          if (*(v0 + 144))
          {
            __swift_destroy_boxed_opaque_existential_1(v0 + 120);
          }

          if (*(v0 + 168) != 1)
          {
          }

          goto LABEL_37;
        case 0x13:
          if (*(v0 + 128))
          {
            __swift_destroy_boxed_opaque_existential_1(v0 + 104);
          }

          v2 = *(v0 + 152);
LABEL_32:
          if (v2 == 1)
          {
            break;
          }

          goto LABEL_37;
        case 0x15:
          if (*(v0 + 104))
          {
          }

          if (*(v0 + 120))
          {
LABEL_37:
          }

          break;
        default:
          break;
      }
    }
  }

  return swift_deallocObject();
}

uint64_t UpdateViewDestinationViewModifier.RequestWriter.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  updated = type metadata accessor for UpdateViewDestinationViewModifier();
  Value = AGGraphGetValue();
  v4 = *(*(updated - 8) + 16);

  return v4(a1, Value, updated);
}

uint64_t *UpdateViewDestinationViewModifier.RequestWriter.viewListID.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NavigationAuthority?(0, &lazy cache variable for type metadata for _ViewList_ID.Canonical?, MEMORY[0x1E697E088], MEMORY[0x1E69E6720]);
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = *result;
    v4 = result[1];
    result = outlined copy of Text.LineStyle?(*result, v4);
  }

  else
  {
    v3 = 0;
    v4 = 2;
  }

  *a1 = v3;
  a1[1] = v4;
  return result;
}

void UpdateViewDestinationViewModifier.request(viewListID:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - v12;
  if (*(v3 + *(v14 + 60)))
  {
    goto LABEL_8;
  }

  v17 = v11;
  v15 = *v11;
  v16 = v17[1];
  memset(v65, 0, sizeof(v65));
  v18 = *(v3 + *(a2 + 48));
  v66 = 0;
  v67 = v15;
  v68 = v16;
  v69 = v18;
  LOBYTE(v46) = 17;
  MEMORY[0x1EEE9AC00](v15);
  *&v45 = *(a2 + 24);
  outlined copy of Text.LineStyle?(v19, v20);
  static Update.dispatchImmediately<A>(reason:_:)();
  v21 = v58[0];
  v22 = UpdateViewDestinationViewModifier.authorityIsPresenting.getter(a2);
  v23 = v3 + *(a2 + 44);
  v24 = *(v23 + 8);
  if ((v22 & 1) == 0)
  {
    if (v21 && (v24 & 1) == 0)
    {
      v35 = *v23;
      (*(v7 + 16))(v13, v3 + *(a2 + 36), v6);
      v36 = (v3 + *(a2 + 40));
      v37 = v36[1];
      v46 = *v36;
      v47 = v37;
      v48 = v36[2];
      outlined init with copy of NavigationLinkSelectionIdentifier(v65, v58);
      v38 = *v3;
      v39 = *(v3 + 8);
      v40 = *(v3 + 16);
      _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v3 + *(a2 + 56), v64, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
      v41 = *(v3 + *(a2 + 64));
      v42 = v41;
      if (v41 == 1)
      {

        v42 = v38;
      }

      outlined copy of Transaction?(v41);
      UpdateViewDestinationRequest.init<A>(presentDestination:key:depth:linkIdentifier:shouldTargetSourceColumn:isPresented:navigationAuthority:transaction:)(v13, &v46, v35, v58, v38, v39, v40, a3, v64, v42, v6);
      goto LABEL_14;
    }

    outlined destroy of NavigationLinkSelectionIdentifier(v65);
LABEL_8:
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 160) = 0x1FFFFFFFCLL;
    *(a3 + 168) = 0;
    *(a3 + 176) = 0;
    *(a3 + 184) = 0;
    return;
  }

  if ((v21 | v24))
  {
    (*(v7 + 16))(v9, v3 + *(a2 + 36), v6);
    v25 = (v3 + *(a2 + 40));
    v26 = v25[1];
    v46 = *v25;
    v47 = v26;
    v48 = v25[2];
    outlined init with copy of NavigationLinkSelectionIdentifier(v65, v58);
    v27 = *(a2 + 56);
    v28 = *(v3 + *(a2 + 52));
    _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v3 + v27, v64, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
    UpdateViewDestinationRequest.init<A>(updateDestination:key:identifier:shouldTargetSourceColumn:navigationAuthority:)(v9, &v46, v58, v28, v64, v6, a3);
LABEL_14:
    outlined destroy of NavigationLinkSelectionIdentifier(v65);
    return;
  }

  v29 = (v3 + *(a2 + 40));
  v30 = *v29;
  v31 = v29[1];
  v32 = *(v29 + 2);
  v44 = *(v29 + 1);
  v45 = v32;
  outlined init with copy of NavigationLinkSelectionIdentifier(v65, v64);
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v3 + *(a2 + 56), v63, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  *v58 = xmmword_18CD633F0;
  memset(&v58[16], 0, 144);
  v59 = 0x1FFFFFFFELL;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  if (v45 >> 1 == 0xFFFFFFFF)
  {
    outlined destroy of NavigationLinkSelectionIdentifier(v64);
    outlined destroy of NavigationLinkSelectionIdentifier(v65);
    v33 = 0uLL;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v56 = 0;
    v53 = 0;
    v34 = xmmword_18CD67BD0;
  }

  else
  {
    outlined init with copy of NavigationLinkSelectionIdentifier(v64, &v46);
    LOBYTE(v52) = 19;
    v43 = Transaction.disablesAnimations.getter();
    outlined destroy of NavigationLinkSelectionIdentifier(v64);
    outlined destroy of NavigationLinkSelectionIdentifier(v65);
    v33 = v44;
    v34 = v45;
    *(&v52 + 1) = v30;
    v53 = v31;
    LOBYTE(v56) = v43 & 1;
  }

  v54 = v33;
  v55 = v34;
  v57 = 0;
  outlined assign with take of NavigationRequest?(&v46, &v58[24], &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
  outlined assign with take of NavigationRequest?(v63, v58, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  outlined init with take of UpdateViewDestinationRequest(v58, a3);
}

uint64_t outlined copy of Text.LineStyle?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t UpdateViewDestinationViewModifier.authorityIsPresenting.getter(int *a1)
{
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v1 + a1[14], v36, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (*(&v36[0] + 1) == 1)
  {
    outlined destroy of NavigationAuthority?(v36, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  }

  else
  {
    outlined init with take of NavigationAuthority(v36, v42);
    v3 = v1 + a1[10];
    v4 = *(v3 + 32);
    if (v4 >> 1 != 0xFFFFFFFF)
    {
      v5 = *(v3 + 40);
      v6 = *(v3 + 16);
      v43[0] = *v3;
      v43[1] = v6;
      v44 = v4;
      v45 = v5;
      v7 = *(v1 + a1[12]);
      memset(v38, 0, sizeof(v38));
      v40 = xmmword_18CD633F0;
      v39 = 0;
      v41 = v7;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        swift_beginAccess();
        v10 = v9[8];
        v33 = v9[7];
        v34 = v10;
        v35[0] = v9[9];
        *(v35 + 10) = *(v9 + 154);
        v11 = v9[4];
        v29 = v9[3];
        v30 = v11;
        v12 = v9[6];
        v31 = v9[5];
        v32 = v12;
        v13 = v9[2];
        v27 = v9[1];
        v28 = v13;
        _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(&v27, v25, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);

        v36[6] = v33;
        v36[7] = v34;
        v37[0] = v35[0];
        *(v37 + 10) = *(v35 + 10);
        v36[2] = v29;
        v36[3] = v30;
        v36[4] = v31;
        v36[5] = v32;
        v36[0] = v27;
        v36[1] = v28;
        if (getEnumTag for AccessibilityActionCategory.Category(v36) != 1)
        {
          v22 = v33;
          v23 = v34;
          *v24 = v35[0];
          *&v24[10] = *(v35 + 10);
          v18 = v29;
          v19 = v30;
          v20 = v31;
          v21 = v32;
          v16 = v27;
          v17 = v28;
          v14 = NavigationState.isPresentingView(_:from:)(v38, v43);
          outlined destroy of NavigationLinkSelectionIdentifier(v38);
          outlined destroy of NavigationAuthority(v42);
          v25[6] = v22;
          v25[7] = v23;
          v26[0] = *v24;
          *(v26 + 10) = *&v24[10];
          v25[2] = v18;
          v25[3] = v19;
          v25[4] = v20;
          v25[5] = v21;
          v25[0] = v16;
          v25[1] = v17;
          outlined destroy of NavigationState(v25);
          return v14 & 1;
        }
      }

      outlined destroy of NavigationLinkSelectionIdentifier(v38);
    }

    outlined destroy of NavigationAuthority(v42);
  }

  v14 = 0;
  return v14 & 1;
}

uint64_t NavigationState.isPresentingView(_:from:)(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v8 = *(v2 + 24);
  v9 = a2[4] >> 62;
  v10 = *a2;
  v11 = v5;
  v12 = v7;
  if (v9)
  {
    if (v9 != 1)
    {
      return 0;
    }

    v10 = v5;
    v11 = v7;
    v12 = v6;
    if (v7 == 6)
    {
      return 0;
    }
  }

  if (!*(v8 + 16))
  {
    return 0;
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11, v12);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of NavigationColumnState(*(v8 + 56) + 360 * v13, v21);
  memcpy(__dst, v21, 0x163uLL);
  v15 = NavigationColumnState.ColumnContent.isPresentingViewDestinationView(_:)(a1);
  outlined destroy of NavigationColumnState(__dst);
  if (v15)
  {
    return 1;
  }

  if (!v9)
  {
    v6 = v7;
    goto LABEL_12;
  }

  v4 = v5;
  LOBYTE(v5) = v7;
  if (v7 != 6)
  {
LABEL_12:
    if (v5 - 2 >= 4)
    {
      if (v5 == 1)
      {
        v17 = 2;
      }

      else
      {
        v17 = v6 == 3 ? 1 : 2;
      }

      for (; *(v8 + 16); v17 = 2)
      {
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v17, v6);
        if ((v19 & 1) == 0)
        {
          break;
        }

        outlined init with copy of NavigationColumnState(*(v8 + 56) + 360 * v18, v21);
        memcpy(__dst, v21, 0x163uLL);
        v20 = NavigationColumnState.ColumnContent.isPresentingViewDestinationView(_:)(a1);
        outlined destroy of NavigationColumnState(__dst);
        if (v20)
        {
          return 1;
        }

        if (v17 != 1)
        {
          break;
        }
      }
    }
  }

  return 0;
}