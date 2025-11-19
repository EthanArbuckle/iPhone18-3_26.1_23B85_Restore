Swift::Void __swiftcall AppGraph.graphDidChange()()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 96);
  v35 = *(v0 + 80);
  v36 = v2;
  v3 = *(v0 + 32);
  v32[0] = *(v0 + 16);
  v32[1] = v3;
  v4 = *(v0 + 64);
  v6 = *(v0 + 16);
  v5 = *(v0 + 32);
  v33 = *(v0 + 48);
  v34 = v4;
  v28 = v1;
  v29 = v35;
  v30 = *(v0 + 96);
  v25 = v6;
  v37 = *(v0 + 112);
  v31 = *(v0 + 112);
  v26 = v5;
  v27 = v33;
  outlined init with copy of GraphHost.Data(v32, v24);
  v7 = GraphHost.Data.updateSeed.modify();
  ++*v8;
  v7(v24, 0);
  outlined destroy of GraphHost.Data(v32);
  GraphHost.runTransaction()();
  AGGraphGetValue();
  v10 = v9;
  v11 = 0;
  if (*(v0 + 236) != *MEMORY[0x1E698D3F8])
  {
    AGGraphGetValue();
    v11 = v12 & 1;
  }

  swift_beginAccess();
  v13 = *(v0 + 192);
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 56);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  while (v16)
  {
LABEL_13:
    outlined init with copy of HashableWeakBox<Swift.AnyObject>(*(v13 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v16)))), v24);
    outlined init with take of HashableWeakBox<Swift.AnyObject>(v24, v23);
    if (swift_unknownObjectWeakLoadStrong())
    {
      ObjectType = swift_getObjectType();
      v21 = swift_conformsToProtocol2();
      if (v21)
      {
        v22 = v21;
        (*(v21 + 8))(v10 & 1, ObjectType, v21);
        if (v11)
        {
          (*(v22 + 16))(ObjectType, v22);
        }
      }

      swift_unknownObjectRelease();
    }

    v16 &= v16 - 1;
    outlined destroy of HashableWeakBox<Swift.AnyObject>(v23);
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      return;
    }

    v16 = *(v13 + 56 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t outlined destroy of HashableWeakBox<Swift.AnyObject>(uint64_t a1)
{
  type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t assignWithCopy for RootEnvironmentModifier(uint64_t a1, uint64_t a2)
{
  swift_weakCopyAssign();
  swift_weakCopyAssign();
  swift_weakCopyAssign();
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  if (*(a1 + 48) == 255)
  {
    if (v4 == 255)
    {
      v15 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v15;
    }

    else
    {
      v11 = *(a2 + 32);
      v12 = *(a2 + 40);
      v13 = v4 & 1;
      outlined copy of SceneID(v11, v12, v4 & 1);
      *(a1 + 32) = v11;
      *(a1 + 40) = v12;
      *(a1 + 48) = v13;
    }
  }

  else if (v4 == 255)
  {
    outlined destroy of SceneID(a1 + 32);
    v14 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v14;
  }

  else
  {
    v5 = *(a2 + 32);
    v6 = *(a2 + 40);
    v7 = v4 & 1;
    outlined copy of SceneID(v5, v6, v4 & 1);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    *(a1 + 48) = v7;
    outlined consume of SceneID(v8, v9, v10);
  }

  v16 = *(a1 + 56);
  v17 = *(a2 + 56);
  *(a1 + 56) = v17;
  v18 = v17;

  return a1;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance CoreSheetPresentationModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE1620](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for Rule.value.getter in conformance CommandsModifier<A>.UpdateList@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  updated = CommandsModifier.UpdateList.value.getter(*v2, *(a1 + 16), *(a1 + 24));
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = updated;
  *(result + 24) = v6;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  a2[1] = result;
  return result;
}

uint64_t sub_18BE84B28()
{

  return swift_deallocObject();
}

uint64_t (*CommandsModifier.UpdateList.value.getter(int a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a1;
  return partial apply for closure #1 in CommandsModifier.UpdateList.value.getter;
}

uint64_t closure #1 in CommandsModifier.UpdateList.value.getter()
{
  AGGraphGetValue();

  return specialized Array.append<A>(contentsOf:)(v0);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t type metadata completion function for CommandsList.Item()
{
  result = type metadata accessor for CommandsList.Item.Value(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for CommandsList.Item.Value()
{
  result = type metadata accessor for CommandOperation();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

__n128 assignWithCopy for FocusGroupModifier(__n128 *a1, __n128 *a2)
{
  v2 = a2[1].n128_u64[1];
  if (a1[1].n128_u64[1])
  {
    if (v2)
    {
      __swift_assign_boxed_opaque_existential_1(a1, a2);
    }

    else
    {
      outlined destroy of AnyHashable(a1);
      v6 = a2[2].n128_u64[0];
      result = a2[1];
      *a1 = *a2;
      a1[1] = result;
      a1[2].n128_u64[0] = v6;
    }
  }

  else if (v2)
  {
    a1[1].n128_u64[1] = v2;
    a1[2].n128_u64[0] = a2[2].n128_u64[0];
    (**(v2 - 8))();
  }

  else
  {
    result = *a2;
    v7 = a2[1];
    a1[2].n128_u64[0] = a2[2].n128_u64[0];
    *a1 = result;
    a1[1] = v7;
  }

  return result;
}

uint64_t destroy for UIViewControllerRepresentableContext(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
}

id protocol witness for static CoreViewRepresentable.platformView(for:) in conformance PlatformViewControllerRepresentableAdaptor<A>(void **a1)
{
  v1 = *a1;
  swift_getWitnessTable();
  return static PlatformViewRepresentable<>.platformView(for:)(v1);
}

id static PlatformViewRepresentable<>.platformView(for:)(void *a1)
{
  result = [a1 view];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t PlatformViewControllerRepresentableAdaptor.updateViewProvider(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  swift_getWitnessTable();
  v5 = type metadata accessor for PlatformViewRepresentableContext();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = type metadata accessor for UIViewControllerRepresentableContext();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  (*(v6 + 16))(v8, a2, v5, v13);
  swift_getWitnessTable();
  v16 = UIViewControllerRepresentableContext.init<A>(_:)(v8, v15);
  (*(v10 + 40))(v18, v15, v9, v10, v16);
  return (*(v12 + 8))(v15, v11);
}

void type metadata accessor for [ToolbarStorage.Entry](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI14ToolbarStorageV5EntryVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for ToolbarButtonStyle.ResolvedBody()
{
  result = type metadata accessor for PrimitiveButtonStyleConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>>)
  {
    _s7SwiftUI26InvertedViewInputPredicateVyAA027CreatesToolbarSafeAreaInsetF0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<AllowsToolbarItemBridgingModifier>, lazy protocol witness table accessor for type AllowsToolbarItemBridgingModifier and conformance AllowsToolbarItemBridgingModifier, &type metadata for AllowsToolbarItemBridgingModifier, MEMORY[0x1E697FDE8]);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>, &type metadata for ToolbarItemBridgingPreferenceKey, &protocol witness table for ToolbarItemBridgingPreferenceKey, MEMORY[0x1E6980910]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<AllowsToolbarItemBridgingModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<AllowsToolbarItemBridgingModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<AllowsToolbarItemBridgingModifier> and conformance _ViewModifier_Content<A>)
  {
    _s7SwiftUI26InvertedViewInputPredicateVyAA027CreatesToolbarSafeAreaInsetF0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<AllowsToolbarItemBridgingModifier>, lazy protocol witness table accessor for type AllowsToolbarItemBridgingModifier and conformance AllowsToolbarItemBridgingModifier, &type metadata for AllowsToolbarItemBridgingModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<AllowsToolbarItemBridgingModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t type metadata completion function for UIKitSystemButtonConfigurationModifier()
{
  result = type metadata accessor for UIButton.Configuration();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static SubscriptionView._makeViewList(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  type metadata accessor for SubscriptionView();
  type metadata accessor for _GraphValue();
  v11 = _GraphValue.value.getter();
  type metadata accessor for SubscriptionLifetime();
  v15 = v11;
  v16 = SubscriptionLifetime.__allocating_init()();
  v17 = default argument 2 of SubscriptionView.Subscriber.init(view:subscriptionLifetime:actionBox:)(a3, a4, a5, a6);
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v23 = type metadata accessor for SubscriptionView.Subscriber();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v15, closure #1 in Attribute.init<A>(_:)partial apply, v22, v23, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);

  AGGraphSetFlags();
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  LODWORD(v25) = v10;
  _GraphValue.subscript.getter();
  return static View.makeDebuggableViewList(view:inputs:)();
}

void type metadata accessor for Attribute<NavigationState.StackContent.Key?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for Binding<AnyNavigationPath>(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t initializeWithCopy for NavigationStackReader.ChildEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  if (*(a2 + 48) == 1)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    swift_weakCopyInit();
    v4 = *(a2 + 48);
    v5 = *(a2 + 56);
    *(a1 + 48) = v4;
    *(a1 + 56) = v5;
  }

  return a1;
}

uint64_t View.toolbar<A>(content:)(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for ToolbarModifier();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v16 - v11);
  v14 = (&v16 + *(v13 + 48) - v11);
  *v14 = 0;
  v14[1] = 0;
  v14[2] = 0;
  *v12 = 0;
  v12[1] = 0;
  a1(v10);
  MEMORY[0x18D00A570](v12, a3, v8, a5);
  return (*(v9 + 8))(v12, v8);
}

uint64_t static ToolbarItemPlacement.automatic.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return outlined init with copy of ToolbarItemPlacement(a2, v4);
}

uint64_t static ToolbarContentBuilder.buildBlock<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  return TupleToolbarContent.init(_:)(v7, a2, a3);
}

void *initializeWithCopy for ToolbarModifier(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 24);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(v5 - 8) + 16;
  v8 = *(*(v5 - 8) + 80);
  v9 = (a1 + v8 + 16) & ~v8;
  v10 = (a2 + v8 + 16) & ~v8;

  v6(v9, v10, v5);
  v11 = *(v7 + 48) + 7;
  v12 = (v11 + v9) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + v10) & 0xFFFFFFFFFFFFFFF8;
  if (*(v13 + 8) < 0xFFFFFFFFuLL)
  {
    v14 = *v13;
    *(v12 + 16) = *(v13 + 16);
    *v12 = v14;
  }

  else
  {
    *v12 = *v13;
    *(v12 + 8) = *(v13 + 8);
    *(v12 + 16) = *(v13 + 16);
  }

  return a1;
}

uint64_t destroy for ToolbarModifier(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 24) - 8);
  v5 = v4 + 8;
  v6 = (a1 + *(v4 + 80) + 16) & ~*(v4 + 80);
  result = (*(v4 + 8))(v6);
  if (*(((*(v5 + 56) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t ToolbarItem<>.init(placement:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = outlined init with copy of ToolbarItemPlacement(v10, v13);
  a2(v11);
  outlined destroy of ToolbarItemPlacement(a1);
  return ToolbarItem<>.init(placement:content:)(v13, v9, a3, a4);
}

uint64_t ToolbarItem<>.init(placement:content:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = type metadata accessor for ToolbarItem();
  *(a4 + v8[15]) = 5;
  v9 = a1[1];
  *a4 = *a1;
  a4[1] = v9;
  *(a4 + 25) = *(a1 + 25);
  *(a4 + v8[13]) = 1;
  *(a4 + v8[14]) = 0;
  v10 = *(*(a3 - 8) + 32);
  v11 = a4 + v8[12];

  return v10(v11, a2, a3);
}

uint64_t initializeWithCopy for ToolbarItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*(v9 + 40) == 1)
  {
    v10 = *(v9 + 24);
    *(v8 + 24) = v10;
    *(v8 + 32) = *(v9 + 32);
    (**(v10 - 8))(v8, v9);
    *(v8 + 40) = 1;
  }

  else
  {
    v11 = *v9;
    v12 = *(v9 + 16);
    *(v8 + 25) = *(v9 + 25);
    *v8 = v11;
    *(v8 + 16) = v12;
  }

  v13 = *(*(a3 + 24) - 8);
  v14 = v13 + 16;
  v15 = *(v13 + 80);
  v16 = (v8 + v15 + 41) & ~v15;
  v17 = (v9 + v15 + 41) & ~v15;
  (*(v13 + 16))(v16, v17);
  v18 = *(v14 + 48);
  v19 = (v16 + v18);
  v20 = (v17 + v18);
  *v19 = *v20;
  v19[1] = v20[1];
  v19[2] = v20[2];
  return a1;
}

uint64_t destroy for ToolbarItem(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = (a1 + *(v4 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v5 + 40) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  v6 = *(*(a2 + 24) - 8);
  v7 = *(v6 + 8);
  v8 = (v5 + *(v6 + 80) + 41) & ~*(v6 + 80);

  return v7(v8);
}

uint64_t NavigationStack.init<>(root:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NavigationStack();
  *(a2 + v4[11]) = 0;
  v5 = a2 + v4[13];
  *v5 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  a1();
  type metadata accessor for AnyNavigationPath.HeterogeneousBoxBase();
  result = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = v7;
  *(result + 40) = 0;
  *(result + 48) = v7;
  *(result + 56) = 0;
  v8 = a2 + v4[12];
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = result;
  *(v8 + 24) = 0;
  return result;
}

__n128 __swift_memcpy28_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t static NavigationStackReader._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = a5;
  v58 = a7;
  v149 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = *(a2 + 48);
  v137 = *(a2 + 32);
  v138 = v12;
  v139 = *(a2 + 64);
  v140 = *(a2 + 80);
  v13 = *(a2 + 16);
  v135 = *a2;
  v136 = v13;
  v90 = a3;
  v91 = a4;
  v92 = a5;
  v93 = a6;
  LODWORD(v141) = a3;
  type metadata accessor for NavigationStackReader();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v60 = v141;
  v86 = a3;
  v87 = a4;
  v88 = v8;
  v89 = a6;
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
  _GraphValue.subscript.getter();
  LODWORD(v62) = v11;
  v82 = a3;
  v83 = a4;
  v84 = v8;
  v85 = a6;
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v64 = _GraphValue.value.getter();
  v78 = a3;
  v79 = a4;
  v80 = v8;
  v81 = a6;
  _GraphValue.subscript.getter();
  LODWORD(v53) = v11;
  v74 = a3;
  v75 = a4;
  v76 = v8;
  v77 = a6;
  type metadata accessor for NavigationStateHost();
  _GraphValue.subscript.getter();
  v63 = v11;
  v70 = a3;
  v71 = a4;
  v72 = v8;
  v73 = a6;
  v65 = a6;
  type metadata accessor for NavigationStackReader.TransformBox();
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v49 = _GraphValue.value.getter();
  lazy protocol witness table accessor for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations();
  PropertyList.subscript.getter();
  LODWORD(v61) = a3;
  v52 = lazy protocol witness table accessor for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey();
  v51 = v135;
  PropertyList.subscript.getter();
  *&v128 = a3;
  DWORD2(v128) = v141;
  HIDWORD(v128) = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v129) = Attribute.init<A>(body:value:flags:update:)();
  *&v141 = a3;
  *(&v141 + 1) = a4;
  *&v142 = v8;
  *(&v142 + 1) = a6;
  v68 = type metadata accessor for NavigationStackReader.StackKey();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<NavigationState.StackContent.Key?>(0, &lazy cache variable for type metadata for Attribute<NavigationState.StackContent.Key?>, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v128, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_27, &v67, v68, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  v16 = v141;
  v50 = lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey();
  PropertyList.subscript.getter();
  v17 = v141;
  v18 = v136;
  swift_beginAccess();
  v19 = *(v18 + 16);
  v128 = xmmword_18CD633F0;
  *&v129 = 0;
  *(&v141 + 4) = v17;
  LODWORD(v141) = v64;
  HIDWORD(v141) = v19;
  *&v142 = __PAIR64__(v16, v11);
  *(&v142 + 1) = __PAIR64__(v64, v11);
  LOBYTE(v143) = a3;
  outlined init with take of NavigationAuthority?(&v128, &v143 + 8);
  v55 = a3;
  v56 = v8;
  *&v128 = a3;
  *(&v128 + 1) = a4;
  v57 = a4;
  *&v129 = v8;
  *(&v129 + 1) = a6;
  v20 = type metadata accessor for NavigationStackReader.ChildEnvironment();
  v66[2] = v20;
  v66[3] = swift_getWitnessTable();
  type metadata accessor for Attribute<(authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v141, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_19, v66, v20, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
  v48[9] = 0;
  (*(*(v20 - 8) + 8))(&v141, v20);
  v60 = v128;
  v54 = v16;
  v23 = AGCreateWeakAttribute();
  AGGraphCreateOffsetAttribute2();
  v24 = AGCreateWeakAttribute();
  v48[8] = v18;
  LODWORD(v8) = *(v18 + 16);
  type metadata accessor for BoundNavigationPathDetector.PathObservation();
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtCV7SwiftUI27BoundNavigationPathDetector15PathObservation_tracking;
  v27 = type metadata accessor for ObservationTracking();
  v28 = *(*(v27 - 8) + 56);
  *&v29 = *(&v136 + 1);
  v59 = v29;
  v28(v25 + v26, 1, 1, v27);
  *(v25 + OBJC_IVAR____TtCV7SwiftUI27BoundNavigationPathDetector15PathObservation_updateObserved) = 0;
  v48[7] = type metadata accessor for GraphHost();
  v30 = MEMORY[0x18D00B7D0]();
  swift_beginAccess();
  LODWORD(v18) = *(v30 + 64);

  *&v141 = v23;
  *(&v141 + 1) = __PAIR64__(v53, v62);
  *&v142 = v24;
  v53 = HIDWORD(v24);
  DWORD2(v142) = v8;
  BYTE12(v142) = v61;
  *(&v142 + 13) = v116;
  HIBYTE(v142) = BYTE2(v116);
  *&v143 = v59;
  *(&v143 + 1) = v25;
  LODWORD(v144) = v18;
  *(&v144 + 4) = 0xFFFFFFFFLL;
  BYTE12(v144) = 0;
  HIBYTE(v144) = BYTE2(v110);
  *(&v144 + 13) = v110;
  LODWORD(v145) = 0;
  v146 = 0;
  *&v147 = 0;
  BYTE8(v147) = 2;
  *(&v147 + 9) = v122;
  HIDWORD(v147) = *(&v122 + 3);
  v148 = 0;
  v132 = v145;
  v133 = v147;
  v134 = 0;
  v128 = v141;
  v129 = v142;
  v130 = v143;
  v131 = v144;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type BoundNavigationPathDetector and conformance BoundNavigationPathDetector();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of BoundNavigationPathDetector(&v141);
  AGGraphSetFlags();
  v130 = v137;
  v131 = v138;
  v132 = v139;
  LODWORD(v133) = v140;
  v128 = v135;
  v129 = v136;
  outlined init with copy of _ViewInputs(&v135, &v122);
  AGGraphCreateOffsetAttribute2();
  _GraphInputs.environment.setter();
  _ViewInputs.disableNavigationDestination.setter();
  LOBYTE(v122) = 1;
  v61 = lazy protocol witness table accessor for type IsInNavigationV4Context and conformance IsInNavigationV4Context();
  PropertyList.subscript.setter();
  *&v122 = v23;
  PropertyList.subscript.setter();
  v62 = v24;
  *&v122 = v24;
  PropertyList.subscript.setter();
  PreferenceKeys.add(_:)();
  lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
  PropertyList.subscript.getter();
  v31 = v122;
  KeyPath = swift_getKeyPath();
  LODWORD(v122) = v63;
  *(&v122 + 1) = _s14AttributeGraph0A0V13dynamicMemberACyqd__Gs7KeyPathCyxqd__G_tcluigqd__xcfU_7SwiftUI19NavigationStateHostC_AI0i4SeedK0CTG5TA_0;
  *&v123 = KeyPath;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for NavigationSeedHost(0);
  type metadata accessor for Map<NavigationStateHost, NavigationSeedHost>();
  lazy protocol witness table accessor for type Map<NavigationStateHost, NavigationSeedHost> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<NavigationStateHost, NavigationSeedHost> and conformance Map<A, B>, type metadata accessor for Map<NavigationStateHost, NavigationSeedHost>);

  Attribute.init<A>(body:value:flags:update:)();

  v33 = AGCreateWeakAttribute();
  *&v122 = v31;
  *(&v122 + 1) = v33;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type EnsureNavigationStateSeeds and conformance EnsureNavigationStateSeeds();
  Attribute.init<A>(body:value:flags:update:)();
  *&v122 = AGCreateWeakAttribute();
  PropertyList.subscript.setter();
  PropertyList.subscript.getter();
  if (v122)
  {
    *&v122 = 0;
    LODWORD(v122) = Attribute.init<A>(body:value:flags:update:)();
    lazy protocol witness table accessor for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey();
    lazy protocol witness table accessor for type Attribute<Int> and conformance Attribute<A>();
    v34 = _GraphInputs.subscript.setter();
    *&v116 = __PAIR64__(v54, v64);
    *(&v116 + 1) = __PAIR64__(v53, v62);
    MEMORY[0x1EEE9AC00](v34);
    *&v122 = v55;
    *(&v122 + 1) = v57;
    v35 = v65;
    *&v123 = v56;
    *(&v123 + 1) = v65;
    v36 = type metadata accessor for NavigationStackReader.ExtractedRoot();
    type metadata accessor for ReadDestinationsModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<NavigationDestinationKey>, &type metadata for NavigationDestinationKey, &protocol witness table for NavigationDestinationKey, MEMORY[0x1E6980910]);
    type metadata accessor for ModifiedContent();
    type metadata accessor for PositionedNavigationDestinationProcessor();
    v48[2] = type metadata accessor for ModifiedContent();
    v48[3] = v36;
    v48[4] = swift_getWitnessTable();
    v37 = type metadata accessor for Attribute();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v116, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v48, v36, MEMORY[0x1E69E73E0], v37, MEMORY[0x1E69E7410], v38);
    _GraphValue.init(_:)();
    v112 = v130;
    v113 = v131;
    v114 = v132;
    v115 = v133;
    v110 = v128;
    v111 = v129;
    v106 = v130;
    v107 = v131;
    v108 = v132;
    v109 = v133;
    v104 = v128;
    v105 = v129;
    outlined init with copy of _ViewInputs(&v110, &v122);
    v98 = v35;
    v99 = &protocol witness table for ReadDestinationsModifier<A>;
    v39 = swift_getWitnessTable();
    v40 = lazy protocol witness table accessor for type _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey> and conformance _PreferenceTransformModifier<A>(&lazy protocol witness table cache variable for type _PreferenceTransformModifier<NavigationDestinationKey> and conformance _PreferenceTransformModifier<A>, &lazy cache variable for type metadata for _PreferenceTransformModifier<NavigationDestinationKey>, &type metadata for NavigationDestinationKey, &protocol witness table for NavigationDestinationKey);
    v96 = v39;
    v97 = v40;
    v94 = swift_getWitnessTable();
    v95 = &protocol witness table for PositionedNavigationDestinationProcessor<A>;
    swift_getWitnessTable();
    static View.makeDebuggableView(view:inputs:)();
    v118 = v106;
    v119 = v107;
    v120 = v108;
    v121 = v109;
    v116 = v104;
    v117 = v105;
    outlined destroy of _ViewInputs(&v116);
    v124 = v130;
    v125 = v131;
    v126 = v132;
    v127 = v133;
    v122 = v128;
    v123 = v129;
  }

  else
  {
    outlined init with copy of _GraphInputs(&v135, &v122);
    if (one-time initialization token for navigationEventHandlers != -1)
    {
      swift_once();
    }

    *&v116 = static CachedEnvironment.ID.navigationEventHandlers;
    swift_beginAccess();
    v41 = CachedEnvironment.attribute<A>(id:_:)();
    swift_endAccess();
    outlined destroy of _GraphInputs(&v135);
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v43 = MEMORY[0x18D00B7D0]();
    swift_beginAccess();
    v44 = *(v43 + 64);

    *&v122 = __PAIR64__(OffsetAttribute2, v41);
    *(&v122 + 1) = __PAIR64__(v44, v59);
    *&v123 = 0xFFFFFFFFLL;
    BYTE8(v123) = 0;
    HIDWORD(v123) = 0;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type UpdateNavigationEventHandlers and conformance UpdateNavigationEventHandlers();
    Attribute.init<A>(body:value:flags:update:)();
    AGGraphSetFlags();
    *&v122 = v55;
    *(&v122 + 1) = v57;
    *&v123 = v56;
    *(&v123 + 1) = v65;
    type metadata accessor for NavigationStackReader.AppliedBody();
    type metadata accessor for PositionedNavigationDestinationProcessor();
    type metadata accessor for ModifiedContent();
    type metadata accessor for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>, &type metadata for InspectorStorageV5.PreferenceKey, &protocol witness table for InspectorStorageV5.PreferenceKey, MEMORY[0x1E6980910]);
    type metadata accessor for ModifiedContent();
    *&v122 = __PAIR64__(v49, v54);
    *(&v122 + 1) = __PAIR64__(v62, v64);
    LODWORD(v123) = v53;
    swift_getWitnessTable();
    _GraphValue.init<A>(_:)();
    v112 = v130;
    v113 = v131;
    v114 = v132;
    v115 = v133;
    v110 = v128;
    v111 = v129;
    v106 = v130;
    v107 = v131;
    v108 = v132;
    v109 = v133;
    v104 = v128;
    v105 = v129;
    outlined init with copy of _ViewInputs(&v110, &v122);
    v102 = v56;
    v103 = &protocol witness table for PositionedNavigationDestinationProcessor<A>;
    v45 = swift_getWitnessTable();
    v46 = lazy protocol witness table accessor for type _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey> and conformance _PreferenceTransformModifier<A>(&lazy protocol witness table cache variable for type _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey> and conformance _PreferenceTransformModifier<A>, &lazy cache variable for type metadata for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>, &type metadata for InspectorStorageV5.PreferenceKey, &protocol witness table for InspectorStorageV5.PreferenceKey);
    v100 = v45;
    v101 = v46;
    swift_getWitnessTable();
    static View.makeDebuggableView(view:inputs:)();
    v118 = v106;
    v119 = v107;
    v120 = v108;
    v121 = v109;
    v116 = v104;
    v117 = v105;
    outlined destroy of _ViewInputs(&v116);
    v124 = v130;
    v125 = v131;
    v126 = v132;
    v127 = v133;
    v122 = v128;
    v123 = v129;
  }

  return outlined destroy of _ViewInputs(&v122);
}

uint64_t sub_18BE873EC(void *a1, uint64_t a2)
{
  *(*a2 + 192) = *a1;
}

void type metadata accessor for Attribute<(authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)>()
{
  if (!lazy cache variable for type metadata for Attribute<(authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)>)
  {
    type metadata accessor for (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)();
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<(authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)>);
    }
  }
}

uint64_t destroy for NavigationStackReader.ChildEnvironment(uint64_t result)
{
  if (*(result + 48) != 1)
  {
    swift_weakDestroy();
  }

  return result;
}

void type metadata accessor for ObservationTracking?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata completion function for BoundNavigationPathDetector.PathObservation()
{
  type metadata accessor for ObservationTracking?(319, &lazy cache variable for type metadata for ObservationTracking?, MEMORY[0x1E69E81D8]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t lazy protocol witness table accessor for type BoundNavigationPathDetector and conformance BoundNavigationPathDetector()
{
  result = lazy protocol witness table cache variable for type BoundNavigationPathDetector and conformance BoundNavigationPathDetector;
  if (!lazy protocol witness table cache variable for type BoundNavigationPathDetector and conformance BoundNavigationPathDetector)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BoundNavigationPathDetector and conformance BoundNavigationPathDetector);
  }

  return result;
}

uint64_t initializeWithCopy for BoundNavigationPathDetector(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 53) = *(a2 + 53);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v4;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t destroy for BoundNavigationPathDetector()
{
}

uint64_t lazy protocol witness table accessor for type Map<NavigationStateHost, NavigationSeedHost> and conformance Map<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey> and conformance _PreferenceTransformModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>(255, a2, a3, a4, MEMORY[0x1E6980910]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NavigationStackStyledCore._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v21 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = *a2;
  v7 = *(a2 + 40);
  v28 = *(a2 + 24);
  v29 = v7;
  v30[0] = *(a2 + 56);
  *(v30 + 12) = *(a2 + 68);
  v27 = *(a2 + 8);
  LODWORD(v24) = v5;
  type metadata accessor for NavigationStackStyledCore();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static NavigationStackStyledCore._makeView(view:inputs:)(1, a3);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  LODWORD(v24) = v5;
  _GraphValue.value.getter();
  closure #2 in static NavigationStackStyledCore._makeView(view:inputs:)(1);
  v9 = AGGraphCreateOffsetAttribute2();
  lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
  v10 = v24;
  v11 = PropertyList.subscript.getter();
  MEMORY[0x1EEE9AC00](v11);
  v19 = type metadata accessor for NavigationStackStyledCore.NavigationStateStructureSeed();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<UInt32?>(0, &lazy cache variable for type metadata for Attribute<UInt32?>, &lazy cache variable for type metadata for UInt32?, MEMORY[0x1E69E7668], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v24, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_29, &v18, v19, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  v14 = v22;
  type metadata accessor for NavigationStackStyledCore.NavigationStackRepresentableRoot();
  v24 = __PAIR64__(v9, OffsetAttribute2);
  LODWORD(v25[0]) = v14;
  *(v25 + 4) = v10;
  *(v25 + 12) = 0;
  BYTE4(v25[1]) = 1;
  type metadata accessor for NavigationStackStyledCore.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  v24 = v6;
  v25[1] = v28;
  v25[2] = v29;
  v26[0] = v30[0];
  *(v26 + 12) = *(v30 + 12);
  v25[0] = v27;
  swift_getWitnessTable();
  result = static View.makeDebuggableView(view:inputs:)();
  v16 = v23;
  v17 = v21;
  *v21 = v22;
  v17[1] = v16;
  return result;
}

uint64_t closure #1 in static NavigationStackStyledCore._makeView(view:inputs:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for NavigationStackStyledCore();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t closure #2 in static NavigationStackStyledCore._makeView(view:inputs:)(uint64_t a1)
{
  v2 = type metadata accessor for NavigationStackStyledCore();
  v3 = *(v2 + 36);
  v7[2] = v2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_16, v7, &type metadata for NavigationStackContext, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

void type metadata accessor for Attribute<UInt32?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for UInt32?(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for UInt32?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata completion function for NavigationStackStyledCore.NavigationStackRepresentableRoot()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _NavigationStackStyleConfiguration.Root(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root()
{
  result = lazy protocol witness table cache variable for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root;
  if (!lazy protocol witness table cache variable for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root;
  if (!lazy protocol witness table cache variable for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root);
  }

  return result;
}

uint64_t sub_18BE88098()
{
  lazy protocol witness table accessor for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceWritingModifier<HasSwiftUINavigationKey>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ResolvedNavigationStackStyle and conformance ResolvedNavigationStackStyle();
  swift_getWitnessTable();
  _s7SwiftUI19NavigationStateHostCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type _PreferenceWritingModifier<HasSwiftUINavigationKey> and conformance _PreferenceWritingModifier<A>, type metadata accessor for _PreferenceWritingModifier<HasSwiftUINavigationKey>);
  return swift_getWitnessTable();
}

void type metadata accessor for _PreferenceWritingModifier<HasSwiftUINavigationKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceWritingModifier<HasSwiftUINavigationKey>)
  {
    v0 = type metadata accessor for _PreferenceWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceWritingModifier<HasSwiftUINavigationKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ResolvedNavigationStackStyle and conformance ResolvedNavigationStackStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedNavigationStackStyle and conformance ResolvedNavigationStackStyle;
  if (!lazy protocol witness table cache variable for type ResolvedNavigationStackStyle and conformance ResolvedNavigationStackStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedNavigationStackStyle and conformance ResolvedNavigationStackStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedNavigationStackStyle and conformance ResolvedNavigationStackStyle;
  if (!lazy protocol witness table cache variable for type ResolvedNavigationStackStyle and conformance ResolvedNavigationStackStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedNavigationStackStyle and conformance ResolvedNavigationStackStyle);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedNavigationStackStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedNavigationStackStyle and conformance ResolvedNavigationStackStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

unint64_t lazy protocol witness table accessor for type NavigationStackStyleModifier<_AutomaticNavigationStackStyle> and conformance NavigationStackStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type NavigationStackStyleModifier<_AutomaticNavigationStackStyle> and conformance NavigationStackStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type NavigationStackStyleModifier<_AutomaticNavigationStackStyle> and conformance NavigationStackStyleModifier<A>)
  {
    type metadata accessor for NavigationStackStyleModifier<_AutomaticNavigationStackStyle>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationStackStyleModifier<_AutomaticNavigationStackStyle> and conformance NavigationStackStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for NavigationStackStyleModifier<_AutomaticNavigationStackStyle>()
{
  if (!lazy cache variable for type metadata for NavigationStackStyleModifier<_AutomaticNavigationStackStyle>)
  {
    lazy protocol witness table accessor for type _AutomaticNavigationStackStyle and conformance _AutomaticNavigationStackStyle();
    v0 = type metadata accessor for NavigationStackStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NavigationStackStyleModifier<_AutomaticNavigationStackStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _AutomaticNavigationStackStyle and conformance _AutomaticNavigationStackStyle()
{
  result = lazy protocol witness table cache variable for type _AutomaticNavigationStackStyle and conformance _AutomaticNavigationStackStyle;
  if (!lazy protocol witness table cache variable for type _AutomaticNavigationStackStyle and conformance _AutomaticNavigationStackStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _AutomaticNavigationStackStyle and conformance _AutomaticNavigationStackStyle);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance NavigationStackStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t type metadata completion function for NavigationStackCore()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BE88664()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

double static NavigationStackCore._makeView(view:inputs:)@<D0>(int *a1@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  PropertyList.subscript.getter();
  v5 = v8;
  type metadata accessor for NavigationStackCore();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a2 - 8) + 64))
  {
    closure #1 in static NavigationStackCore._makeView(view:inputs:)(1, a2);
  }

  AGGraphCreateOffsetAttribute2();
  LODWORD(v8) = v4;
  _GraphValue.value.getter();
  closure #2 in static NavigationStackCore._makeView(view:inputs:)(1);
  AGGraphCreateOffsetAttribute2();
  lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey();
  PropertyList.subscript.getter();
  AnyInterfaceIdiom.init<A>(_:)();
  if (v5)
  {
    v9 = v5;
    if (v8 && (static AnyInterfaceIdiom.== infix(_:_:)() & 1) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
    PropertyList.subscript.getter();
    lazy protocol witness table accessor for type _GraphInputs.NavigationPresentationAdaptorKey and conformance _GraphInputs.NavigationPresentationAdaptorKey();
    PropertyList.subscript.getter();
    type metadata accessor for NavigationStackCore.NavigationStackRepresentableRoot();
    type metadata accessor for _VariadicView.Tree();
    type metadata accessor for NavigationStackCore.NavigationStackRepresentableChild();
    swift_getWitnessTable();
    _GraphValue.init<A>(_:)();
    swift_getWitnessTable();
    goto LABEL_9;
  }

  if (v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
  PropertyList.subscript.getter();
  type metadata accessor for NavigationStackCore.MultimodalNavigationStackRoot();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for NavigationStackCore.MultimodalNavigationStackChild();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
LABEL_9:
  swift_getWitnessTable();
  static View.makeDebuggableView(view:inputs:)();
  result = *(&v9 + 1);
  *a3 = v9;
  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance _NavigationStackStyleConfiguration.Root(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<_NavigationStackStyleConfiguration.Root>, lazy protocol witness table accessor for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root, &type metadata for _NavigationStackStyleConfiguration.Root, &lazy protocol witness table cache variable for type SourceInput<_NavigationStackStyleConfiguration.Root> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t closure #1 in static NavigationStackReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v10[2] = type metadata accessor for NavigationStackReader();
  v6 = MEMORY[0x1E6981EA0];
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v10, v6, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11;
}

void type metadata accessor for Binding<AnyNavigationPath>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t closure #2 in static NavigationStackReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v11[2] = type metadata accessor for NavigationStackReader();
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
  v7 = v6;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 8, closure #1 in static PointerOffset.of(_:)partial apply, v11, v7, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v12;
}

uint64_t closure #3 in static NavigationStackReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = type metadata accessor for NavigationStackReader();
  v8 = *(v7 + 56);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t closure #4 in static NavigationStackReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v6 = type metadata accessor for NavigationStackReader();
  v7 = *(v6 + 60);
  v12[2] = v6;
  v8 = MEMORY[0x1E69E6370];
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_1, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t closure #5 in static NavigationStackReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v6 = type metadata accessor for NavigationStackReader();
  v7 = *(v6 + 64);
  v12[2] = v6;
  v8 = type metadata accessor for NavigationStateHost();
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_8, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t closure #6 in static NavigationStackReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v10 = type metadata accessor for NavigationStackReader();
  v11 = *(v10 + 68);
  v15[2] = v10;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v16 = type metadata accessor for NavigationStackReader.TransformBox();
  v12 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v11, partial apply for closure #1 in static PointerOffset.of(_:), v15, v16, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  return v17;
}

uint64_t type metadata accessor for BoundNavigationPathDetector.PathObservation()
{
  result = type metadata singleton initialization cache for BoundNavigationPathDetector.PathObservation;
  if (!type metadata singleton initialization cache for BoundNavigationPathDetector.PathObservation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #2 in static NavigationStackCore._makeView(view:inputs:)(uint64_t a1)
{
  v2 = type metadata accessor for NavigationStackCore();
  v3 = *(v2 + 36);
  v7[2] = v2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_16, v7, &type metadata for NavigationStackContext, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

unint64_t lazy protocol witness table accessor for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy()
{
  result = lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy;
  if (!lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy;
  if (!lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy;
  if (!lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy;
  if (!lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy;
  if (!lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance StackDepthModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance StackDepthModifier();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance StackDepthModifier()
{
  AGGraphCreateOffsetAttribute2();
  lazy protocol witness table accessor for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey();
  lazy protocol witness table accessor for type Attribute<Int> and conformance Attribute<A>();
  return _GraphInputs.subscript.setter();
}

void type metadata accessor for ModifiedContent<StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable>, _SafeAreaRegionsIgnoringLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable>, _SafeAreaRegionsIgnoringLayout>)
  {
    type metadata accessor for StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable>, _SafeAreaRegionsIgnoringLayout>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void type metadata accessor for StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable>()
{
  if (!lazy cache variable for type metadata for StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable>();
    lazy protocol witness table accessor for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IsInSecureDrawingHierarchy()
{
  lazy protocol witness table accessor for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t _s7SwiftUI29UIViewControllerRepresentablePAAE9_makeView4view6inputsAA01_G7OutputsVAA11_GraphValueVyxG_AA01_G6InputsVtFZAA015NavigationStackE033_97044434BF355299D05CCAF67303A1CBLLV_Tt2B5@<X0>(__int128 *a1@<X1>, void *a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  lazy protocol witness table accessor for type IsInHostingConfiguration and conformance IsInHostingConfiguration();
  PropertyList.subscript.getter();
  if (v21 == 1)
  {
    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(119);
    MEMORY[0x18D00C9B0](0xD000000000000043, 0x800000018CD4E500);
    MEMORY[0x18D00C9B0](0xD000000000000075, 0x800000018CD4E1C0);
    MEMORY[0x18D009810](0, 0xE000000000000000);

    _ViewOutputs.init()();
    *&v21 = *(a1 + 6);
    DWORD2(v21) = *(a1 + 14);
    result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if (result)
    {
      _DisplayList_Identity.init()();
      v5 = v21;
      v6 = a1[3];
      v23 = a1[2];
      v24 = v6;
      v25 = a1[4];
      v26 = *(a1 + 20);
      v7 = a1[1];
      v21 = *a1;
      v22 = v7;
      LODWORD(v19) = v5;
      _ViewInputs.pushIdentity(_:)();
      v8 = a1[3];
      v23 = a1[2];
      v24 = v8;
      v25 = a1[4];
      v26 = *(a1 + 20);
      v9 = a1[1];
      v21 = *a1;
      v22 = v9;
      v10 = _ViewInputs.animatedPosition()();
      v11 = a1[3];
      v23 = a1[2];
      v24 = v11;
      v25 = a1[4];
      v26 = *(a1 + 20);
      v12 = a1[1];
      v21 = *a1;
      v22 = v12;
      swift_beginAccess();
      v13 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v14 = a1[3];
      v23 = a1[2];
      v24 = v14;
      v25 = a1[4];
      v26 = *(a1 + 20);
      v22 = a1[1];
      *&v21 = __PAIR64__(v10, v5);
      DWORD2(v21) = v13;
      HIDWORD(v21) = _ViewInputs.containerPosition.getter();
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type UnsupportedDisplayList and conformance UnsupportedDisplayList();
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v21) = 0;
      result = PreferencesOutputs.subscript.setter();
    }

    *a2 = v18[0];
    a2[1] = v18[1];
  }

  else
  {
    static Semantics.v4.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
    {
      _StringGuts.grow(_:)(54);
      MEMORY[0x18D00C9B0](0xD000000000000034, 0x800000018CD4E180);
      MEMORY[0x18D00C9B0](0xD000000000000043, 0x800000018CD4E500);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      _s7SwiftUI29_TraitWritingTableRowModifierVyAA08DropOntoC3KeyVGMaTm_0(0, &lazy cache variable for type metadata for PlatformViewControllerRepresentableAdaptor<NavigationStackRepresentable>, &type metadata for NavigationStackRepresentable, &protocol witness table for NavigationStackRepresentable, type metadata accessor for PlatformViewControllerRepresentableAdaptor);
      LODWORD(v19) = Attribute.unsafeBitCast<A>(to:)();
      v15 = a1[3];
      v23 = a1[2];
      v24 = v15;
      v25 = a1[4];
      v26 = *(a1 + 20);
      v16 = a1[1];
      v21 = *a1;
      v22 = v16;
      v17 = static View.makeDebuggableView(view:inputs:)();
      *&v21 = *(a1 + 6);
      DWORD2(v21) = *(a1 + 14);
      v19 = *(a1 + 6);
      v20 = *(a1 + 14);
      MEMORY[0x1EEE9AC00](v17);
      outlined init with copy of PreferencesInputs(&v21, v18);
      PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
    }
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance NavigationStackRepresentable@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v2;
  v5[4] = *(a1 + 64);
  v6 = *(a1 + 80);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  return _s7SwiftUI29UIViewControllerRepresentablePAAE9_makeView4view6inputsAA01_G7OutputsVAA11_GraphValueVyxG_AA01_G6InputsVtFZAA015NavigationStackE033_97044434BF355299D05CCAF67303A1CBLLV_Tt2B5(v5, a2);
}

uint64_t implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost()
{
  type metadata accessor for NavigationStateHost();
  swift_allocObject();
  return NavigationStateHost.init()();
}

uint64_t NavigationStateHost.init()()
{
  _s7SwiftUI15NavigationStateVSgWOi0_(v8);
  v1 = v8[7];
  *(v0 + 112) = v8[6];
  *(v0 + 128) = v1;
  *(v0 + 144) = v9[0];
  *(v0 + 154) = *(v9 + 10);
  v2 = v8[3];
  *(v0 + 48) = v8[2];
  *(v0 + 64) = v2;
  v3 = v8[5];
  *(v0 + 80) = v8[4];
  *(v0 + 96) = v3;
  v4 = v8[1];
  *(v0 + 16) = v8[0];
  *(v0 + 32) = v4;
  *(v0 + 176) = 0;
  type metadata accessor for NavigationSelectionHost(0);
  v5 = swift_allocObject();
  *(v5 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV12StackContentV3KeyV_AE13SelectionSeedVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  ObservationRegistrar.init()();
  *(v0 + 184) = v5;
  type metadata accessor for NavigationSeedHost(0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  ObservationRegistrar.init()();
  *(v0 + 192) = v6;
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  return v0;
}

double _s7SwiftUI15NavigationStateVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 138) = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV12StackContentV3KeyV_AE13SelectionSeedVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.StackContent.Key, NavigationState.SelectionSeed>, lazy protocol witness table accessor for type NavigationState.StackContent.Key and conformance NavigationState.StackContent.Key);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 56); ; i += 8)
    {
      v5 = *(i - 3);
      v6 = *(i - 16);
      v7 = *(i - 1);
      v8 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 4 * result) = v8;
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

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance NavigationStateHost@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NavigationStateHost();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement.Role>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement.Role>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement.Role>);
    }
  }
}

uint64_t outlined assign with take of NavigationAuthority?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t storeEnumTagSinglePayload for ScrollTargetBehaviorDecelerationContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 initializeWithTake for NavigationAuthority(uint64_t a1, uint64_t a2)
{
  v3 = swift_weakTakeInit();
  result = *(a2 + 8);
  *(v3 + 8) = result;
  return result;
}

uint64_t NavigationStateHost.createState(environment:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  v4 = MEMORY[0x1E69E7CC0];
  *(v1 + 176) = MEMORY[0x1E69E7CC0];

  *&v18 = v2;
  *(&v18 + 1) = v3;
  *&v19 = 0;
  *(&v19 + 1) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV12StackContentV3KeyV_AC0e6ColumnF0VTt0g5Tf4g_n(v4);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  LODWORD(v23) = 0;
  *(&v23 + 1) = 0;
  *&v24 = 0;
  *(&v24 + 1) = 1;
  v25 = 0u;
  memset(v26, 0, 26);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(&v18, v5, v6, v7);
  swift_beginAccess();
  v8 = *(v1 + 128);
  v27[6] = *(v1 + 112);
  v27[7] = v8;
  v28[0] = *(v1 + 144);
  *(v28 + 10) = *(v1 + 154);
  v9 = *(v1 + 64);
  v27[2] = *(v1 + 48);
  v27[3] = v9;
  v10 = *(v1 + 96);
  v27[4] = *(v1 + 80);
  v27[5] = v10;
  v11 = *(v1 + 32);
  v27[0] = *(v1 + 16);
  v27[1] = v11;
  v12 = v25;
  *(v1 + 112) = v24;
  *(v1 + 128) = v12;
  *(v1 + 144) = v26[0];
  *(v1 + 154) = *(v26 + 10);
  v13 = v21;
  *(v1 + 48) = v20;
  *(v1 + 64) = v13;
  v14 = v23;
  *(v1 + 80) = v22;
  *(v1 + 96) = v14;
  v15 = v19;
  *(v1 + 16) = v18;
  *(v1 + 32) = v15;

  outlined destroy of NavigationState?(v27);
  type metadata accessor for NavigationHostingControllerCache_UIKit();
  v16 = swift_allocObject();
  *(v16 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationContentAbstractPositionV_AC0E22StackHostingControllerCyAC7AnyViewVGTt0g5Tf4g_n(v4);
  *(v16 + 24) = 0;
  *(v1 + 200) = v16;

  *(v1 + 208) = 1;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV12StackContentV3KeyV_AC0e6ColumnF0VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.StackContent.Key, NavigationColumnState>, lazy protocol witness table accessor for type NavigationState.StackContent.Key and conformance NavigationState.StackContent.Key);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 384)
    {
      outlined init with copy of (String, TabEntry)(i, &v14, &lazy cache variable for type metadata for (NavigationState.StackContent.Key, NavigationColumnState), &type metadata for NavigationState.StackContent.Key, &type metadata for NavigationColumnState, type metadata accessor for (Badge, Spacer));
      v5 = v14;
      v6 = v15;
      v7 = v16;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15, v16);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 24 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      *(v10 + 16) = v7;
      result = memcpy((v3[7] + 360 * result), v17, 0x163uLL);
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t outlined destroy of NavigationState?(uint64_t a1)
{
  type metadata accessor for NavigationState?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for NavigationState?()
{
  if (!lazy cache variable for type metadata for NavigationState?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NavigationState?);
    }
  }
}

uint64_t getEnumTagSinglePayload for NavigationState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 154))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationContentAbstractPositionV_AC0E22StackHostingControllerCyAC7AnyViewVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<NavigationContentAbstractPosition, NavigationStackHostingController<AnyView>>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v6;
    return v3;
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v10 = v3[6] + 16 * result;
    *v10 = v4;
    *(v10 + 8) = v5;
    *(v3[7] + 8 * result) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 3;
    v4 = *(v9 - 16);
    v5 = *(v9 - 1);
    v15 = *v9;
    v16 = v6;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
    v9 = v14;
    v6 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t initializeWithCopy for NavigationAuthority(uint64_t a1, uint64_t a2)
{
  swift_weakCopyInit();
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;

  return a1;
}

uint64_t NavigationAuthority.enqueueRequest(_:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if ((*(result + 208) & 1) == 0)
    {
      v9 = *(v1 + 16);
      *&v41[0] = *(v1 + 8);
      *(&v41[0] + 1) = v9;

      NavigationStateHost.createState(environment:)(v41);
    }

    static Log.navigation.getter();
    v10 = type metadata accessor for Logger();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {
      _s2os6LoggerVSgWOhTm_2(v6, type metadata accessor for Logger?);
    }

    else
    {
      outlined init with copy of NavigationRequest(a1, v41);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v39 = v1;
        v15 = v14;
        v16 = swift_slowAlloc();
        v43[0] = v16;
        *v15 = 141558275;
        *(v15 + 4) = 1752392040;
        *(v15 + 12) = 2081;
        v17 = NavigationRequest.description.getter();
        v38 = a1;
        v19 = v18;
        outlined destroy of NavigationRequest(v41);
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v43);
        a1 = v38;

        *(v15 + 14) = v20;
        _os_log_impl(&dword_18BD4A000, v12, v13, "%{private,mask.hash}s", v15, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x18D0110E0](v16, -1, -1);
        v21 = v15;
        v2 = v39;
        MEMORY[0x18D0110E0](v21, -1, -1);
      }

      else
      {

        outlined destroy of NavigationRequest(v41);
      }

      (*(v11 + 8))(v6, v10);
    }

    result = swift_beginAccess();
    v22 = *(v8 + 176);
    if (v22)
    {
      v23 = *(v22 + 16);
      outlined init with copy of NavigationRequest(a1, v41);
      swift_beginAccess();
      v24 = *(v8 + 176);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + 176) = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
        *(v8 + 176) = v24;
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v27 >= v26 >> 1)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v24);
      }

      *(v24 + 2) = v27 + 1;
      v28 = &v24[168 * v27];
      v29 = v41[0];
      v30 = v41[2];
      *(v28 + 3) = v41[1];
      *(v28 + 4) = v30;
      *(v28 + 2) = v29;
      v31 = v41[3];
      v32 = v41[4];
      v33 = v41[6];
      *(v28 + 7) = v41[5];
      *(v28 + 8) = v33;
      *(v28 + 5) = v31;
      *(v28 + 6) = v32;
      v34 = v41[7];
      v35 = v41[8];
      v36 = v41[9];
      *(v28 + 24) = v42;
      *(v28 + 10) = v35;
      *(v28 + 11) = v36;
      *(v28 + 9) = v34;
      *(v8 + 176) = v24;
      swift_endAccess();
      if (!v23)
      {
        v40 = 17;
        outlined init with copy of NavigationAuthority(v2, v41);
        v37 = swift_allocObject();
        outlined init with take of NavigationAuthority(v41, v37 + 16);
        static Update.enqueueAction(reason:_:)();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_18BE8AAA4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t initializeWithCopy for NavigationRequest(uint64_t a1, uint64_t a2)
{
  switch(*(a2 + 96))
  {
    case 0:
      v4 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v4;
      *(a1 + 96) = 0;
      goto LABEL_57;
    case 1:
      v22 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v22;
      v23 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v23;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 96) = 1;

      goto LABEL_57;
    case 2:
      v14 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v14;
      v15 = *(a2 + 40);
      *(a1 + 40) = v15;
      v16 = v15;
      v17 = **(v15 - 8);

      v17(a1 + 16, a2 + 16, v16);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 96) = 2;
      break;
    case 3:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 96) = 3;

      break;
    case 4:
      v30 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v30;
      *(a1 + 16) = *(a2 + 16);
      v13 = 4;
      goto LABEL_21;
    case 5:
      v18 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v18;
      *(a1 + 16) = *(a2 + 16);
      v13 = 5;
      goto LABEL_21;
    case 6:
      v24 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v24;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 96) = 6;

      goto LABEL_57;
    case 0xA:
      v25 = *(a2 + 24);
      *(a1 + 24) = v25;
      (**(v25 - 8))(a1, a2);
      v26 = *(a2 + 48);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = v26;
      *(a1 + 56) = *(a2 + 56);
      v13 = 10;
      goto LABEL_21;
    case 0xB:
      v34 = *(a2 + 24);
      *(a1 + 24) = v34;
      (**(v34 - 8))(a1, a2);
      *(a1 + 96) = 11;
      break;
    case 0xC:
      *a1 = *a2;
      v31 = (a1 + 8);
      v32 = *(a2 + 32);

      if (v32)
      {
        v33 = *(a2 + 40);
        *(a1 + 32) = v32;
        *(a1 + 40) = v33;
        (**(v32 - 8))(a1 + 8, a2 + 8, v32);
      }

      else
      {
        v53 = *(a2 + 24);
        *v31 = *(a2 + 8);
        *(a1 + 24) = v53;
        *(a1 + 40) = *(a2 + 40);
      }

      v54 = *(a2 + 56);
      if (v54 == 1)
      {
        *(a1 + 48) = *(a2 + 48);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v54;
      }

      v55 = *(a2 + 72);
      v56 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v55;
      *(a1 + 80) = v56;
      v42 = 12;
      goto LABEL_56;
    case 0xD:
      *a1 = *a2;
      v8 = (a1 + 8);
      v9 = *(a2 + 32);

      if (v9)
      {
        v10 = *(a2 + 40);
        *(a1 + 32) = v9;
        *(a1 + 40) = v10;
        (**(v9 - 8))(a1 + 8, a2 + 8, v9);
      }

      else
      {
        v43 = *(a2 + 24);
        *v8 = *(a2 + 8);
        *(a1 + 24) = v43;
        *(a1 + 40) = *(a2 + 40);
      }

      v44 = *(a2 + 56);
      if (v44 == 1)
      {
        *(a1 + 48) = *(a2 + 48);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v44;
      }

      v45 = *(a2 + 72);
      v46 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v45;
      *(a1 + 80) = v46;
      *(a1 + 88) = *(a2 + 88);
      v42 = 13;
      goto LABEL_56;
    case 0xE:
      *a1 = *a2;
      v19 = (a1 + 8);
      v20 = *(a2 + 32);

      if (v20)
      {
        v21 = *(a2 + 40);
        *(a1 + 32) = v20;
        *(a1 + 40) = v21;
        (**(v20 - 8))(a1 + 8, a2 + 8, v20);
      }

      else
      {
        v47 = *(a2 + 24);
        *v19 = *(a2 + 8);
        *(a1 + 24) = v47;
        *(a1 + 40) = *(a2 + 40);
      }

      v48 = *(a2 + 56);
      if (v48 == 1)
      {
        *(a1 + 48) = *(a2 + 48);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v48;
      }

      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 96) = 14;
      break;
    case 0x11:
      v11 = *(a2 + 24);
      *(a1 + 24) = v11;
      (**(v11 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      v12 = *(a2 + 56);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v12;
      *(a1 + 64) = *(a2 + 64);
      v13 = 17;
LABEL_21:
      *(a1 + 96) = v13;

      goto LABEL_57;
    case 0x12:
      v5 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v5;
      v6 = *(a2 + 40);

      if (v6)
      {
        v7 = *(a2 + 48);
        *(a1 + 40) = v6;
        *(a1 + 48) = v7;
        (**(v6 - 8))(a1 + 16, a2 + 16, v6);
      }

      else
      {
        v38 = *(a2 + 32);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 32) = v38;
        *(a1 + 48) = *(a2 + 48);
      }

      v39 = *(a2 + 64);
      if (v39 == 1)
      {
        *(a1 + 56) = *(a2 + 56);
      }

      else
      {
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = v39;
      }

      v40 = *(a2 + 80);
      v41 = *(a2 + 88);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = v40;
      *(a1 + 88) = v41;
      v42 = 18;
LABEL_56:
      *(a1 + 96) = v42;
LABEL_57:

      break;
    case 0x13:
      v27 = *(a2 + 24);
      if (v27)
      {
        v28 = *(a2 + 32);
        *(a1 + 24) = v27;
        *(a1 + 32) = v28;
        (**(v27 - 8))(a1, a2);
      }

      else
      {
        v49 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v49;
        *(a1 + 32) = *(a2 + 32);
      }

      v50 = *(a2 + 48);
      if (v50 == 1)
      {
        *(a1 + 40) = *(a2 + 40);
      }

      else
      {
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = v50;
      }

      *(a1 + 56) = *(a2 + 56);
      *(a1 + 96) = 19;
      break;
    case 0x15:
      if (*a2)
      {
        v29 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v29;
      }

      else
      {
        *a1 = *a2;
      }

      v51 = *(a2 + 16);
      if (v51)
      {
        v52 = *(a2 + 24);
        *(a1 + 16) = v51;
        *(a1 + 24) = v52;
      }

      else
      {
        *(a1 + 16) = *(a2 + 16);
      }

      *(a1 + 96) = 21;
      break;
    default:
      v35 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v35;
      *(a1 + 96) = *(a2 + 96);
      v36 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v36;
      v37 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v37;
      break;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);

  return a1;
}

uint64_t destroy for NavigationRequest(uint64_t a1)
{
  switch(*(a1 + 96))
  {
    case 0:
      goto LABEL_29;
    case 1:

      goto LABEL_29;
    case 2:

      __swift_destroy_boxed_opaque_existential_1(a1 + 16);
      break;
    case 3:

      break;
    case 4:
    case 5:

      goto LABEL_29;
    case 6:

      goto LABEL_29;
    case 0xA:
    case 0x11:
      __swift_destroy_boxed_opaque_existential_1(a1);

      goto LABEL_29;
    case 0xB:
      __swift_destroy_boxed_opaque_existential_1(a1);
      break;
    case 0xC:
    case 0xD:

      if (*(a1 + 32))
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 8);
      }

      if (*(a1 + 56) != 1)
      {
      }

      goto LABEL_29;
    case 0xE:

      if (*(a1 + 32))
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 8);
      }

      v2 = *(a1 + 56);
      goto LABEL_24;
    case 0x12:

      if (*(a1 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 16);
      }

      if (*(a1 + 64) != 1)
      {
      }

      goto LABEL_29;
    case 0x13:
      if (*(a1 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v2 = *(a1 + 48);
LABEL_24:
      if (v2 == 1)
      {
        break;
      }

      goto LABEL_29;
    case 0x15:
      if (*a1)
      {
      }

      if (*(a1 + 16))
      {
LABEL_29:
      }

      break;
    default:
      break;
  }
}

uint64_t destroy for NavigationAuthority()
{
  swift_weakDestroy();
}

uint64_t *closure #1 in EnsureNavigationStateSeeds.value.getter@<X0>(uint64_t *a1@<X8>)
{
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = *result;
  }

  else
  {
    type metadata accessor for NavigationSeedHost(0);
    result = AGGraphGetWeakValue();
    if (result)
    {
      v4 = *result;
      swift_getKeyPath();
      lazy protocol witness table accessor for type NavigationSeedHost and conformance NavigationSeedHost();

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = *(v4 + 16);

      v3 = v5;
    }

    else
    {
      v3 = -1;
    }
  }

  *a1 = v3;
  return result;
}

uint64_t _s14AttributeGraph0A0V13dynamicMemberACyqd__Gs7KeyPathCyxqd__G_tcluigqd__xcfU_7SwiftUI19NavigationStateHostC_AI0i4SeedK0CTG5TA_0@<X0>(void *a1@<X8>)
{
  result = swift_getAtKeyPath();
  *a1 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationSeedHost and conformance NavigationSeedHost()
{
  result = lazy protocol witness table cache variable for type NavigationSeedHost and conformance NavigationSeedHost;
  if (!lazy protocol witness table cache variable for type NavigationSeedHost and conformance NavigationSeedHost)
  {
    type metadata accessor for NavigationSeedHost(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSeedHost and conformance NavigationSeedHost);
  }

  return result;
}

uint64_t initializeWithCopy for NavigationState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6 = *(a2 + 40);

  if (v6)
  {
    *(a1 + 32) = *(a2 + 32);
    v7 = *(a2 + 48);
    v8 = *(a2 + 56);
    *(a1 + 40) = v6;
    *(a1 + 48) = v7;
    v9 = *(a2 + 64);
    v10 = *(a2 + 72);
    *(a1 + 56) = v8;
    *(a1 + 64) = v9;
    *(a1 + 72) = v10;
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    v11 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v11;
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
  }

  v12 = *(a2 + 104);
  if (v12 != 1)
  {
    *(a1 + 88) = *(a2 + 88);
    if (v12)
    {
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = v12;
      *(a1 + 112) = *(a2 + 112);
    }

    else
    {
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = *(a2 + 112);
    }

    v13 = *(a2 + 120);
    *(a1 + 113) = *(a2 + 113);
    if (v13)
    {
      v14 = *(a2 + 128);
      *(a1 + 120) = v13;
      *(a1 + 128) = v14;

      v15 = *(a2 + 144);
      if (v15)
      {
LABEL_11:
        *(a1 + 136) = *(a2 + 136);
        *(a1 + 144) = v15;
        *(a1 + 152) = *(a2 + 152);

LABEL_14:
        *(a1 + 153) = *(a2 + 153);
        return a1;
      }
    }

    else
    {
      *(a1 + 120) = *(a2 + 120);
      v15 = *(a2 + 144);
      if (v15)
      {
        goto LABEL_11;
      }
    }

    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    goto LABEL_14;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t storeEnumTagSinglePayload for NavigationState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 154) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 154) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTag for AccessibilityActionCategory.Category(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t destroy for NavigationState(void *a1)
{

  if (a1[5])
  {
  }

  result = a1[13];
  if (result)
  {
    if (result == 1)
    {
      return result;
    }
  }

  if (a1[15])
  {
  }

  result = a1[18];
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationState.StackContent.Key and conformance NavigationState.StackContent.Key()
{
  result = lazy protocol witness table cache variable for type NavigationState.StackContent.Key and conformance NavigationState.StackContent.Key;
  if (!lazy protocol witness table cache variable for type NavigationState.StackContent.Key and conformance NavigationState.StackContent.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationState.StackContent.Key and conformance NavigationState.StackContent.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationState.StackContent.Key and conformance NavigationState.StackContent.Key;
  if (!lazy protocol witness table cache variable for type NavigationState.StackContent.Key and conformance NavigationState.StackContent.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationState.StackContent.Key and conformance NavigationState.StackContent.Key);
  }

  return result;
}

uint64_t initializeWithCopy for PositionedNavigationDestinationProcessor(uint64_t result, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    *result = *a2;
    *(result + 16) = *(a2 + 16);
  }

  else
  {
    v2 = result;
    swift_weakCopyInit();
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    *(v2 + 8) = v4;
    *(v2 + 16) = v5;

    return v2;
  }

  return result;
}

uint64_t destroy for PositionedNavigationDestinationProcessor(uint64_t result)
{
  if (*(result + 8) != 1)
  {
    swift_weakDestroy();
  }

  return result;
}

unint64_t type metadata accessor for UINavigationPresentationAdaptor()
{
  result = lazy cache variable for type metadata for UINavigationPresentationAdaptor;
  if (!lazy cache variable for type metadata for UINavigationPresentationAdaptor)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UINavigationPresentationAdaptor);
  }

  return result;
}

uint64_t sub_18BE8BEA4@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_18CD6C650;
  *(a1 + 16) = 0;
  return EnvironmentValues.init()();
}

uint64_t initializeWithCopy for ContainerBackgroundValue(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of ContainerBackgroundValue.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;

  return a1;
}

uint64_t destroy for ContainerBackgroundValue(uint64_t a1)
{
  outlined consume of ContainerBackgroundValue.Content(*a1, *(a1 + 8));
}

uint64_t outlined copy of ContainerBackgroundValue.Content(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 != 1)
    {
      return result;
    }
  }
}

uint64_t outlined consume of ContainerBackgroundValue.Content(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 != 1)
    {
      return result;
    }
  }
}

uint64_t RootViewDelegate.hostingView<A>(_:didMoveTo:)(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E7D40] & *a1;
  _UIHostingView.viewGraph.getter();
  if (a2)
  {
    GraphHost.addPreference<A>(_:)();
  }

  else
  {
    GraphHost.removePreference<A>(_:)();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a1, a2, *(v5 + 80), *(v5 + 88), ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Namespace.ID and conformance Namespace.ID()
{
  result = lazy protocol witness table cache variable for type Namespace.ID and conformance Namespace.ID;
  if (!lazy protocol witness table cache variable for type Namespace.ID and conformance Namespace.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Namespace.ID and conformance Namespace.ID);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(Namespace.ID, Transaction)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(Namespace.ID, Transaction)>)
  {
    type metadata accessor for (Namespace.ID, Transaction)();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Namespace.ID, Transaction)>);
    }
  }
}

void type metadata accessor for (Namespace.ID, Transaction)()
{
  if (!lazy cache variable for type metadata for (Namespace.ID, Transaction))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Namespace.ID, Transaction));
    }
  }
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI9NamespaceV2IDV_AC11TransactionVTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<Namespace.ID, Transaction>, lazy protocol witness table accessor for type Namespace.ID and conformance Namespace.ID);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void type metadata accessor for SheetPreference?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined destroy of (Namespace.ID, Transaction)(uint64_t a1)
{
  type metadata accessor for (Namespace.ID, Transaction)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for AccessibilityFocusStore.Entry()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for NavigationStackCoordinator()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t outlined init with take of NavigationAuthority?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ScrollTargetBehaviorDecelerationContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t MakeConfirmationDialog.environment.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance DialogSuppressionConfiguration.Key@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t ScrollBehaviorModifier.ChildEnvironment.environment.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

uint64_t closure #1 in View.navigationTitlePreferenceTransform(adding:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = *(a3 + 16);
      v18 = *a3;
      v19 = v7;
      v20[0] = *(a3 + 32);
      *(v20 + 9) = *(a3 + 41);
      v8 = *(a1 + 16);
      v21[0] = *a1;
      v21[1] = v8;
      v22[0] = *(a1 + 32);
      *(v22 + 9) = *(a1 + 41);
      outlined init with copy of NavigationTitleStorage(a3, &v17);
      result = outlined destroy of NavigationTitleStorage?(v21);
      v10 = v19;
      *a1 = v18;
      *(a1 + 16) = v10;
      *(a1 + 32) = v20[0];
      *(a1 + 41) = *(v20 + 9);
      if (*(a1 + 24) == 1)
      {
        return result;
      }

LABEL_16:
      v16 = *(a1 + 32);

      result = outlined consume of ListItemTint?(v16);
      *(a1 + 32) = a2;
      return result;
    }

    v14 = *(a1 + 40);
    if (v14 == 5)
    {
      goto LABEL_8;
    }

    if (*(a1 + 48))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v11 = *a3;
    v12 = *(a3 + 8);
    v13 = *(a3 + 16);
    v6 = *(a3 + 24);
    outlined copy of Text?(*a3, v12, v13, v6);
    v14 = *(a1 + 40);
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13;
    *(a1 + 24) = v6;
    if (v14 == 5)
    {
LABEL_8:
      LOBYTE(v14) = *(a3 + 40);
    }
  }

  *(a1 + 40) = v14;
  result = *(a1 + 48);
  if (!result)
  {
  }

  *(a1 + 48) = result;
  v15 = *(a1 + 56);
  if (v15 == 3)
  {
    LOBYTE(v15) = *(a3 + 56);
  }

  *(a1 + 56) = v15;
  if (v6 != 1)
  {
    goto LABEL_16;
  }

  return result;
}

void type metadata accessor for _GraphValue<ToolbarRemovingModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined destroy of NavigationTitleStorage?(uint64_t a1)
{
  type metadata accessor for PredicateExpressions.Variable<String>(0, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static TrueAllowsSecureDrawingModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v17 = *(a2 + 32);
  v18 = v4;
  v6 = *(a2 + 48);
  v19 = *(a2 + 64);
  v7 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v7;
  v12 = v17;
  v13 = v6;
  v14 = *(a2 + 64);
  v20 = *(a2 + 80);
  v15 = *(a2 + 80);
  v10 = v16[0];
  v11 = v5;
  LOBYTE(v25[0]) = 1;
  outlined init with copy of _ViewInputs(v16, &v27);
  lazy protocol witness table accessor for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy();
  PropertyList.subscript.setter();
  v23[2] = v12;
  v23[3] = v13;
  v23[4] = v14;
  v24 = v15;
  v23[0] = v10;
  v23[1] = v11;
  v29 = v12;
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v27 = v10;
  v28 = v11;
  v8 = outlined init with copy of _ViewInputs(v23, v25);
  a3(v8, &v27);
  v25[2] = v29;
  v25[3] = v30;
  v25[4] = v31;
  v26 = v32;
  v25[0] = v27;
  v25[1] = v28;
  outlined destroy of _ViewInputs(v25);
  v21 = v18;
  v22 = DWORD2(v18);
  outlined init with copy of PreferencesInputs(&v21, &v27);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v29 = v12;
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v27 = v10;
  v28 = v11;
  return outlined destroy of _ViewInputs(&v27);
}

void type metadata accessor for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

double one-time initialization function for navigationBarLeading()
{
  static ToolbarItemPlacement.navigationBarLeading = 9;
  result = 0.0;
  *algn_1EAA0AC60 = 0u;
  *&algn_1EAA0AC60[16] = 0u;
  byte_1EAA0AC80 = 2;
  return result;
}

uint64_t Button.init(role:action:label:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, _BYTE *a5@<X8>)
{
  *a5 = *a1;
  v8 = &a5[*(type metadata accessor for Button() + 36)];
  *v8 = a2;
  v8[1] = a3;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();

  a4(v9);
}

uint64_t AlertModifier.AlertEnvironment.value.getter@<X0>(void *a1@<X8>)
{
  ScrollBehaviorModifier.ChildEnvironment.environment.getter(a1);
  EnvironmentValues.textCase.setter();
  static Text.Sizing.standard.getter();
  return EnvironmentValues.textSizing.setter();
}

uint64_t View.onTest(_:handler:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v7 = a1[1];
  v10[0] = v8;
  v10[1] = v7;
  v10[2] = a2;
  v10[3] = a3;

  MEMORY[0x18D00A570](v10, a4, &unk_1EFFA84B0, a5);
}

uint64_t MakeAlertStorage.updateValue()(void *a1)
{
  v2 = v1;
  v3 = a1;
  v252 = *MEMORY[0x1E69E9840];
  v4 = a1[2];
  v5 = a1[4];
  v6 = a1[5];
  v158 = a1[3];
  v159 = v4;
  *&v243 = v4;
  *(&v243 + 1) = v158;
  v156 = v6;
  v157 = v5;
  *&v244 = v5;
  *(&v244 + 1) = v6;
  v7 = type metadata accessor for AlertModifier();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v163 = &v140 - v9;
  v155 = type metadata accessor for (_:)();
  OutputValue = AGGraphGetOutputValue();
  v168 = v3;
  v165 = v7;
  v161 = v8;
  if (!OutputValue)
  {
    v166 = 0;
    v167 = 0;
    v150 = 0;
    v151 = 0;
    v148 = 0;
    v149 = 0;
    v147 = 0;
    v152 = 0;
    v146 = 0;
    v154 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_5;
  }

  LODWORD(v243) = *v1;
  v11 = AGGraphAnyInputsChanged();
  *v1 = v243;
  if (v11)
  {
    v152 = 0;
    v153 = 1;
    v166 = 0;
    v167 = 0;
    v150 = 0;
    v151 = 0;
    v148 = 0;
    v149 = 0;
    v147 = 0;
    v146 = 0;
    v154 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_6;
  }

  v17 = *(v1 + 112);
  v249 = *(v1 + 96);
  v250 = v17;
  v251[0] = *(v1 + 128);
  *(v251 + 9) = *(v1 + 137);
  v18 = *(v1 + 48);
  v245 = *(v1 + 32);
  v246 = v18;
  v19 = *(v1 + 80);
  v247 = *(v1 + 64);
  v248 = v19;
  v20 = *(v1 + 16);
  v243 = *v1;
  v244 = v20;
  MakeConfirmationDialog.environment.getter(&v234);

  v21 = PropertyList.Tracker.hasDifferentUsedValues(_:)();

  if ((v21 & 1) == 0)
  {
    return result;
  }

  v23 = *(v2 + 112);
  v24 = *(v2 + 80);
  v240 = *(v2 + 96);
  v241 = v23;
  v25 = *(v2 + 112);
  v242[0] = *(v2 + 128);
  *(v242 + 9) = *(v2 + 137);
  v26 = *(v2 + 48);
  v27 = *(v2 + 16);
  v236 = *(v2 + 32);
  v237 = v26;
  v28 = *(v2 + 48);
  v29 = *(v2 + 80);
  v238 = *(v2 + 64);
  v239 = v29;
  v30 = *(v2 + 16);
  v234 = *v2;
  v235 = v30;
  v231 = v240;
  v232 = v25;
  v233[0] = *(v2 + 128);
  *(v233 + 9) = *(v2 + 137);
  v227 = v236;
  v228 = v28;
  v229 = v238;
  v230 = v24;
  v31 = v168;
  v225 = v234;
  v226 = v27;
  v32 = *(v168 - 8);
  v166 = *(v32 + 16);
  v167 = v32 + 16;
  v166(&v216, &v234, v168);
  Alert = MakeAlertStorage.resolveTitle()(v31);
  v160 = v33;
  v249 = v231;
  v250 = v232;
  v251[0] = v233[0];
  *(v251 + 9) = *(v233 + 9);
  v245 = v227;
  v246 = v228;
  v247 = v229;
  v248 = v230;
  v243 = v225;
  v244 = v226;
  v34 = *(v32 + 8);
  *&v162 = v32 + 8;
  v152 = v34;
  v34(&v243, v31);
  v35 = *(v2 + 112);
  v231 = *(v2 + 96);
  v232 = v35;
  v233[0] = *(v2 + 128);
  *(v233 + 9) = *(v2 + 137);
  v36 = *(v2 + 48);
  v227 = *(v2 + 32);
  v228 = v36;
  v37 = *(v2 + 80);
  v229 = *(v2 + 64);
  v230 = v37;
  v38 = *(v2 + 16);
  v225 = *v2;
  v226 = v38;
  MakeConfirmationDialog.environment.getter(&v214);
  if (v215)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>);
    PropertyList.subscript.getter();
  }

  if (v170 == 2)
  {
    v108 = *(v2 + 112);
    v222 = *(v2 + 96);
    v223 = v108;
    v224[0] = *(v2 + 128);
    *(v224 + 9) = *(v2 + 137);
    v109 = *(v2 + 48);
    v218 = *(v2 + 32);
    v219 = v109;
    v110 = *(v2 + 80);
    v220 = *(v2 + 64);
    v221 = v110;
    v111 = *(v2 + 16);
    v216 = *v2;
    v217 = v111;
    MakeConfirmationDialog.environment.getter(v209);
    EnvironmentValues.explicitPreferredColorScheme.getter();

    v144 = v171;
  }

  else
  {
    v144 = v170;
    v171 = v170;
  }

  v112 = *(v2 + 112);
  v222 = *(v2 + 96);
  v223 = v112;
  v224[0] = *(v2 + 128);
  *(v224 + 9) = *(v2 + 137);
  v113 = *(v2 + 48);
  v218 = *(v2 + 32);
  v219 = v113;
  v114 = *(v2 + 80);
  v220 = *(v2 + 64);
  v221 = v114;
  v115 = *(v2 + 16);
  v216 = *v2;
  v217 = v115;
  MakeConfirmationDialog.environment.getter(&v212);
  if (v213)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>);
    PropertyList.subscript.getter();
  }

  v154 = v211;

  v116 = *(v2 + 112);
  v117 = *(v2 + 80);
  v206 = *(v2 + 96);
  v207 = v116;
  v118 = *(v2 + 112);
  v208[0] = *(v2 + 128);
  *(v208 + 9) = *(v2 + 137);
  v119 = *(v2 + 48);
  v120 = *(v2 + 16);
  v202 = *(v2 + 32);
  v203 = v119;
  v121 = *(v2 + 48);
  v122 = *(v2 + 80);
  v204 = *(v2 + 64);
  v205 = v122;
  v123 = *(v2 + 16);
  v200 = *v2;
  v201 = v123;
  v197 = v206;
  v198 = v118;
  v199[0] = *(v2 + 128);
  *(v199 + 9) = *(v2 + 137);
  v193 = v202;
  v194 = v121;
  v195 = v204;
  v196 = v117;
  v191 = v200;
  v192 = v120;
  v124 = v168;
  v166(v181, &v200, v168);
  v125 = MakeAlertStorage.resolveTintColor()();
  v166 = v126;
  v167 = v125;
  v153 = v127;
  v209[6] = v197;
  v209[7] = v198;
  v210[0] = v199[0];
  *(v210 + 9) = *(v199 + 9);
  v209[2] = v193;
  v209[3] = v194;
  v209[4] = v195;
  v209[5] = v196;
  v209[0] = v191;
  v209[1] = v192;
  v152(v209, v124);
  v128 = *(v2 + 112);
  v197 = *(v2 + 96);
  v198 = v128;
  v199[0] = *(v2 + 128);
  *(v199 + 9) = *(v2 + 137);
  v129 = *(v2 + 48);
  v193 = *(v2 + 32);
  v194 = v129;
  v130 = *(v2 + 80);
  v195 = *(v2 + 64);
  v196 = v130;
  v131 = *(v2 + 16);
  v191 = *v2;
  v192 = v131;
  MakeConfirmationDialog.environment.getter(v180);
  if (v180[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>);
    PropertyList.subscript.getter();
  }

  v141 = v169;
  v132 = *(v2 + 16);
  v181[0] = *v2;
  v181[1] = v132;
  v181[2] = *(v2 + 32);
  v133 = *(v2 + 48);
  v134 = *(v2 + 72);
  v135 = *(v2 + 96);
  v185 = *(v2 + 80);
  v186 = v135;
  v136 = *(v2 + 128);
  v187 = *(v2 + 112);
  v188 = v136;
  v137 = *(v2 + 144);
  v138 = *(v2 + 152);
  v145 = v133;
  v182 = v133;
  v162 = *(v2 + 56);
  v183 = v162;
  v142 = v134;
  v184 = v134;
  v140 = v137;
  v189 = v137;
  v190 = v138;
  MakeConfirmationDialog.environment.getter(v179);
  if (v179[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>);
    PropertyList.subscript.getter();
  }

  v150 = v173;
  v151 = v172;
  v148 = v175;
  v149 = v174;
  v147 = v176;
  v152 = v177;
  v146 = v178;

  v12 = Alert;
  v7 = v165;
  v13 = v160;
  v8 = v161;
  if (!v162)
  {
    v3 = v168;
    goto LABEL_6;
  }

  v3 = v168;
  if (Alert == v145 && v162 == v160 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v139 = *(v2 + 64);
    if (v144 == 2)
    {
      if (v139 != 2)
      {
        goto LABEL_6;
      }
    }

    else if (v139 == 2 || ((v139 ^ v144) & 1) != 0)
    {
      goto LABEL_6;
    }

    if (v154)
    {
      if (!v142)
      {
        goto LABEL_6;
      }

      LODWORD(v162) = static Image.== infix(_:_:)();

      if ((v162 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (v142)
    {
      v154 = 0;
      goto LABEL_6;
    }

    if ((v153 & 1) == 0)
    {
      if ((v206 & 1) != 0 || *&v167 != *&v205 || *(&v167 + 1) != *(&v205 + 1) || *&v166 != *(&v205 + 2) || *(&v166 + 1) != *(&v205 + 3))
      {
        v153 = 0;
        goto LABEL_6;
      }

LABEL_66:
      if (v141 == BYTE1(v206) && !v152)
      {
        if (!v140)
        {
        }

        v152 = 0;
      }

      goto LABEL_6;
    }

    if (v206)
    {
      goto LABEL_66;
    }

LABEL_5:
    v153 = 1;
  }

LABEL_6:
  Value = AGGraphGetValue();
  v16 = v15;
  (*(v8 + 16))(v163, Value, v7);
  if (v13)
  {
    v160 = v13;
  }

  else if (!*(v2 + 56) || (v16 & 1) != 0)
  {
    v39 = *(v2 + 112);
    v40 = *(v2 + 80);
    v240 = *(v2 + 96);
    v241 = v39;
    v41 = *(v2 + 112);
    v242[0] = *(v2 + 128);
    *(v242 + 9) = *(v2 + 137);
    v42 = *(v2 + 48);
    v43 = *(v2 + 16);
    v236 = *(v2 + 32);
    v237 = v42;
    v44 = *(v2 + 48);
    v45 = *(v2 + 80);
    v238 = *(v2 + 64);
    v239 = v45;
    v46 = *(v2 + 16);
    v234 = *v2;
    v235 = v46;
    v231 = v240;
    v232 = v41;
    v233[0] = *(v2 + 128);
    *(v233 + 9) = *(v2 + 137);
    v227 = v236;
    v228 = v44;
    v229 = v238;
    v230 = v40;
    v225 = v234;
    v226 = v43;
    v47 = *(v3 - 8);
    (*(v47 + 16))(&v243, &v234, v3);
    v12 = MakeAlertStorage.resolveTitle()(v3);
    v160 = v48;
    v249 = v231;
    v250 = v232;
    v251[0] = v233[0];
    *(v251 + 9) = *(v233 + 9);
    v245 = v227;
    v246 = v228;
    v247 = v229;
    v248 = v230;
    v243 = v225;
    v244 = v226;
    (*(v47 + 8))(&v243, v3);
  }

  else
  {
    v12 = *(v2 + 48);
    v160 = *(v2 + 56);
  }

  Alert = v12;
  v49 = *(v2 + 112);
  v249 = *(v2 + 96);
  v250 = v49;
  v251[0] = *(v2 + 128);
  *(v251 + 9) = *(v2 + 137);
  v50 = *(v2 + 48);
  v245 = *(v2 + 32);
  v246 = v50;
  v51 = *(v2 + 80);
  v247 = *(v2 + 64);
  v248 = v51;
  v52 = *(v2 + 16);
  v243 = *v2;
  v244 = v52;
  MakeConfirmationDialog.environment.getter(v181);
  if (*(&v181[0] + 1))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>);
    PropertyList.subscript.getter();
  }

  if (LOBYTE(v179[0]) == 2)
  {
    v53 = *(v2 + 112);
    v240 = *(v2 + 96);
    v241 = v53;
    v242[0] = *(v2 + 128);
    *(v242 + 9) = *(v2 + 137);
    v54 = *(v2 + 48);
    v236 = *(v2 + 32);
    v237 = v54;
    v55 = *(v2 + 80);
    v238 = *(v2 + 64);
    v239 = v55;
    v56 = *(v2 + 16);
    v234 = *v2;
    v235 = v56;
    MakeConfirmationDialog.environment.getter(&v225);
    EnvironmentValues.explicitPreferredColorScheme.getter();

    LODWORD(v162) = LOBYTE(v180[0]);
  }

  else
  {
    LODWORD(v162) = LOBYTE(v179[0]);
    LOBYTE(v180[0]) = v179[0];
  }

  v57 = *(v2 + 112);
  v240 = *(v2 + 96);
  v241 = v57;
  v242[0] = *(v2 + 128);
  *(v242 + 9) = *(v2 + 137);
  v58 = *(v2 + 48);
  v236 = *(v2 + 32);
  v237 = v58;
  v59 = *(v2 + 80);
  v238 = *(v2 + 64);
  v239 = v59;
  v60 = *(v2 + 16);
  v234 = *v2;
  v235 = v60;
  MakeConfirmationDialog.environment.getter(&v225);
  if (*(&v225 + 1))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>);
    PropertyList.subscript.getter();
  }

  v145 = v216;

  v61 = v168;
  if (v153)
  {
    v62 = *(v2 + 112);
    v63 = *(v2 + 80);
    v231 = *(v2 + 96);
    v232 = v62;
    v64 = *(v2 + 112);
    v233[0] = *(v2 + 128);
    *(v233 + 9) = *(v2 + 137);
    v65 = *(v2 + 48);
    v66 = *(v2 + 16);
    v227 = *(v2 + 32);
    v228 = v65;
    v67 = *(v2 + 48);
    v68 = *(v2 + 80);
    v229 = *(v2 + 64);
    v230 = v68;
    v69 = *(v2 + 16);
    v225 = *v2;
    v226 = v69;
    v222 = v231;
    v223 = v64;
    v224[0] = *(v2 + 128);
    *(v224 + 9) = *(v2 + 137);
    v218 = v227;
    v219 = v67;
    v220 = v229;
    v221 = v63;
    v216 = v225;
    v217 = v66;
    v70 = *(v168 - 8);
    (*(v70 + 16))(&v234, &v225, v168);
    v71 = MakeAlertStorage.resolveTintColor()();
    v166 = v72;
    v167 = v71;
    LODWORD(v153) = v73;
    v240 = v222;
    v241 = v223;
    v242[0] = v224[0];
    *(v242 + 9) = *(v224 + 9);
    v236 = v218;
    v237 = v219;
    v238 = v220;
    v239 = v221;
    v234 = v216;
    v235 = v217;
    (*(v70 + 8))(&v234, v61);
  }

  else
  {
    LODWORD(v153) = 0;
  }

  v74 = *(v2 + 112);
  v240 = *(v2 + 96);
  v241 = v74;
  v242[0] = *(v2 + 128);
  *(v242 + 9) = *(v2 + 137);
  v75 = *(v2 + 48);
  v236 = *(v2 + 32);
  v237 = v75;
  v76 = *(v2 + 80);
  v238 = *(v2 + 64);
  v239 = v76;
  v77 = *(v2 + 16);
  v234 = *v2;
  v235 = v77;
  MakeConfirmationDialog.environment.getter(&v172);
  if (v173)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>);
    PropertyList.subscript.getter();
  }

  v144 = v211;
  v78 = *(v2 + 112);
  v231 = *(v2 + 96);
  v232 = v78;
  v233[0] = *(v2 + 128);
  *(v233 + 9) = *(v2 + 137);
  v79 = *(v2 + 48);
  v227 = *(v2 + 32);
  v228 = v79;
  v80 = *(v2 + 80);
  v229 = *(v2 + 64);
  v230 = v80;
  v81 = *(v2 + 16);
  v225 = *v2;
  v226 = v81;
  MakeConfirmationDialog.environment.getter(&v214);
  if (v215)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>);
    PropertyList.subscript.getter();
  }

  v200 = v191;
  v201 = v192;
  v202 = v193;
  LOBYTE(v203) = v194;

  v82 = v165;
  v83 = v163;
  v84 = &v163[*(v165 + 68)];
  v85 = *(v84 + 3);
  v218 = *(v84 + 2);
  v219 = v85;
  v220 = *(v84 + 4);
  *&v221 = *(v84 + 10);
  v86 = *(v84 + 1);
  v216 = *v84;
  v217 = v86;
  v87 = *(v2 + 8);
  v88 = *(v2 + 16);
  LODWORD(v212) = *AGGraphGetValue();
  ViewIdentity.Tracker.update(for:)();
  v89 = *v83;
  v90 = v2;
  v143 = v2;
  v92 = *(v83 + 1);
  v91 = *(v83 + 2);
  v93 = v83[24];
  v94 = *(v90 + 28);
  v95 = v83[*(v82 + 72)];
  v96 = swift_allocObject();
  *(v96 + 16) = v94;
  *(v96 + 20) = v89;
  *(v96 + 24) = v92;
  *(v96 + 32) = v91;
  *(v96 + 40) = v93;
  *(v96 + 44) = v87;
  *(v96 + 52) = v88;
  v97 = v160;
  *(v96 + 64) = Alert;
  *(v96 + 72) = v97;
  *(v96 + 80) = v95;
  *(v96 + 81) = v162;
  v98 = v145;
  v99 = v166;
  v100 = v167;
  *(v96 + 88) = v145;
  *(v96 + 96) = v100;
  *(v96 + 104) = v99;
  v101 = v153 & 1;
  *(v96 + 112) = v153 & 1;
  v102 = v144;
  *(v96 + 113) = v144;
  v103 = v200;
  v104 = v201;
  v105 = v202;
  *(v96 + 168) = v203;
  *(v96 + 152) = v105;
  *(v96 + 136) = v104;
  *(v96 + 120) = v103;
  v106 = v219;
  *(v96 + 208) = v218;
  *(v96 + 224) = v106;
  *(v96 + 240) = v220;
  *(v96 + 256) = v221;
  v107 = v217;
  *(v96 + 176) = v216;
  *(v96 + 192) = v107;
  v212 = partial apply for closure #2 in MakeAlertStorage.updateValue();
  v213 = v96;

  outlined init with copy of DialogSuppressionConfiguration?(&v200, v209, &lazy cache variable for type metadata for DialogSuppressionConfiguration?, &type metadata for DialogSuppressionConfiguration);
  outlined init with copy of DialogSuppressionConfiguration?(&v216, v209, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView);
  AGGraphSetOutputValue();

  $defer #1 <A, B>() in MakeAlertStorage.updateValue()(v143, Alert, v97, v162, v98, v167, v166, v101, v102);
  outlined consume of DialogSuppressionConfiguration?(v151, v150, v149, v148, v147, v152);

  outlined destroy of BoundInputsView?(&v200, &lazy cache variable for type metadata for DialogSuppressionConfiguration?, &type metadata for DialogSuppressionConfiguration);

  return (*(v161 + 8))(v83, v165);
}

uint64_t sub_18BE8E6F4()
{

  if (*(v0 + 160))
  {
    if (*(v0 + 144))
    {
      outlined consume of Text.Storage(*(v0 + 120), *(v0 + 128), *(v0 + 136));
    }
  }

  if (*(v0 + 176))
  {
  }

  return swift_deallocObject();
}

uint64_t MakeAlertStorage.resolveTitle()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v37 = *(a1 + 16);
  v38 = v2;
  v26 = type metadata accessor for AlertModifier();
  v3 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v26 - v4;
  v6 = *(v1 + 5);
  v29 = *(v1 + 4);
  v7 = v1[1];
  v27 = *v1;
  v28 = v7;
  v8 = v1[7];
  v36[0] = v1[8];
  *(v36 + 9) = *(v1 + 137);
  v9 = v1[4];
  v31 = v1[3];
  v32 = v9;
  v10 = v1[5];
  v34 = v1[6];
  v35 = v8;
  v33 = v10;

  PropertyList.Tracker.reset()();
  v11 = v1[1];
  v37 = *v1;
  v38 = v11;
  v12 = v1[7];
  v13 = v1[8];
  v14 = v1[5];
  v44 = v1[6];
  v45 = v12;
  v46[0] = v13;
  *(v46 + 9) = *(v1 + 137);
  v15 = v1[4];
  v41 = v1[3];
  v42 = v15;
  v39 = *(v1 + 4);
  v40 = v6;
  v43 = v14;
  MakeConfirmationDialog.environment.getter(&v47);

  EnvironmentValues.init(_:tracker:)();
  v17 = v48;
  v16 = v49;
  v30 = v6;
  MakeAlertStorage.modifier.getter(v5);
  v18 = *(v5 + 4);
  v19 = *(v5 + 5);
  v20 = v5[48];
  outlined copy of Text.Storage(v18, v19, v20);
  v21 = *(v3 + 8);

  v21(v5, v26);
  *&v37 = v17;
  *(&v37 + 1) = v16;
  static Semantics.v7.getter();
  v22 = isLinkedOnOrAfter(_:)();
  v23 = 256;
  if ((v22 & 1) == 0)
  {
    v23 = 0;
  }

  v47 = v23;
  v48 = 0;
  v49 = 0;
  v24 = Text.resolveString(in:with:idiom:)();
  outlined consume of Text.Storage(v18, v19, v20);

  return v24;
}

uint64_t MakeAlertStorage.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AlertModifier();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

unint64_t MakeAlertStorage.resolveTintColor()()
{
  v1 = *(v0 + 5);
  v40 = *(v0 + 4);
  v2 = v0[1];
  v38 = *v0;
  v39 = v2;
  v3 = v0[8];
  v36 = v0[7];
  v37[0] = v3;
  *(v37 + 9) = *(v0 + 137);
  v4 = v0[4];
  v32 = v0[3];
  v33 = v4;
  v5 = v0[6];
  v34 = v0[5];
  v35 = v5;
  static Semantics.v6_4.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    v6 = v0[1];
    v21 = *v0;
    v22 = v6;
    v23 = *(v0 + 4);
    v24 = v1;
    v7 = v0[8];
    v29 = v0[7];
    v30[0] = v7;
    *(v30 + 9) = *(v0 + 137);
    v8 = v0[4];
    v25 = v0[3];
    v26 = v8;
    v9 = v0[6];
    v27 = v0[5];
    v28 = v9;
    MakeConfirmationDialog.environment.getter(&v31);
    v10 = EnvironmentValues.tintColor.getter();
  }

  else
  {
    v10 = 0;
  }

  v11 = v0[1];
  v21 = *v0;
  v22 = v11;
  v23 = *(v0 + 4);
  v24 = v1;
  v12 = v0[8];
  v29 = v0[7];
  v30[0] = v12;
  *(v30 + 9) = *(v0 + 137);
  v13 = v0[4];
  v25 = v0[3];
  v26 = v13;
  v14 = v0[6];
  v27 = v0[5];
  v28 = v14;
  MakeConfirmationDialog.environment.getter(&v31);
  if (*(&v31 + 1))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogTintColorKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogTintColorKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogTintColorKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogTintColorKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogTintColorKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogTintColorKey>);
    PropertyList.subscript.getter();
  }

  if (v20)
  {
    goto LABEL_10;
  }

  if (v10)
  {

LABEL_10:

    PropertyList.Tracker.reset()();
    v21 = v38;
    v22 = v39;
    v23 = v40;
    v24 = v1;
    v29 = v36;
    v30[0] = v37[0];
    *(v30 + 9) = *(v37 + 9);
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    MakeConfirmationDialog.environment.getter(&v20);

    EnvironmentValues.init(_:tracker:)();
    v21 = v31;
    dispatch thunk of AnyColorBox.resolve(in:)();
    v16 = v15;
    v18 = v17;

    return v16 | (v18 << 32);
  }

  return 0;
}

uint64_t outlined init with copy of DialogSuppressionConfiguration?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for DialogSuppressionConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t $defer #1 <A, B>() in MakeAlertStorage.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;

  *(a1 + 64) = a4;
  *(a1 + 72) = a5;

  *(a1 + 80) = a6;
  *(a1 + 88) = a7;
  *(a1 + 96) = a8 & 1;
  *(a1 + 97) = a9;
  return result;
}

uint64_t outlined consume of DialogSuppressionConfiguration?(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    outlined consume of Text?(result, a2, a3, a4);
  }

  return result;
}

uint64_t closure #2 in MakeAlertStorage.updateValue()(uint64_t a1, Swift::UInt32 a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, char a17, uint64_t a18, uint64_t *a19)
{
  if (*(*a1 + 16))
  {
    v21 = a6;
    specialized __RawDictionaryStorage.find<A>(_:)(a2);
    a6 = v21;
    if (v22)
    {
      MEMORY[0x18D009810](0xD00000000000007DLL, 0x800000018CD510F0);
      a6 = v21;
    }
  }

  *&v42[6] = *a18;
  v39 = a6 & 1;
  *&v42[22] = *(a18 + 16);
  *&v42[38] = *(a18 + 32);
  v42[54] = *(a18 + 48);
  memset(v43, 0, sizeof(v43));
  v44 = 0;

  outlined init with copy of DialogSuppressionConfiguration?(a18, v72, &lazy cache variable for type metadata for DialogSuppressionConfiguration?, &type metadata for DialogSuppressionConfiguration);
  outlined init with copy of DialogSuppressionConfiguration?(a19, v72, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView);
  outlined destroy of BoundInputsView?(v43, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView);
  *&v89[15] = *&v42[47];
  *v89 = *&v42[32];
  v88 = *&v42[16];
  v34 = a19[1];
  v35 = *a19;
  v32 = a19[3];
  v33 = a19[2];
  v30 = a19[5];
  v31 = a19[4];
  v28 = a19[7];
  v29 = a19[6];
  v26 = a19[9];
  v27 = a19[8];
  v25 = a19[10];
  v72[0] = a3 & 1;
  v73 = a4;
  v74 = a5;
  v75 = v39;
  v76 = a7;
  v77 = a8;
  v78 = a9;
  v79 = a10;
  v80 = a11 & 1;
  v81 = a12;
  v82 = a13;
  v83 = a14;
  v84 = a15;
  v85 = a16 & 1;
  v86 = a17;
  v87 = *v42;
  v90 = v35;
  v91 = v34;
  v92 = v33;
  v93 = v32;
  v94 = v31;
  v95 = v30;
  v96 = v29;
  v97 = v28;
  v98 = v27;
  v99 = v26;
  v100 = v25;
  outlined init with copy of AlertStorage(v72, v45);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v72, a2, isUniquelyReferenced_nonNull_native);
  *&v60[15] = *&v42[47];
  *v60 = *&v42[32];
  v59 = *&v42[16];
  *a1 = v45[0];
  LOBYTE(v45[0]) = a3 & 1;
  v45[1] = a4;
  v45[2] = a5;
  v46 = v39;
  v47 = a7;
  v48 = a8;
  v49 = a9;
  v50 = a10;
  v51 = a11 & 1;
  v52 = a12;
  v53 = a13;
  v54 = a14;
  v55 = a15;
  v56 = a16 & 1;
  v57 = a17;
  v58 = *v42;
  v61 = v35;
  v62 = v34;
  v63 = v33;
  v64 = v32;
  v65 = v31;
  v66 = v30;
  v67 = v29;
  v68 = v28;
  v69 = v27;
  v70 = v26;
  v71 = v25;
  return outlined destroy of AlertStorage(v45);
}

uint64_t initializeWithCopy for AlertStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  v6 = *(a2 + 144);

  if (v6)
  {
    v7 = *(a2 + 128);
    if (v7)
    {
      v8 = *(a2 + 104);
      v9 = *(a2 + 112);
      v10 = *(a2 + 120);
      outlined copy of Text.Storage(v8, v9, v10);
      *(a1 + 104) = v8;
      *(a1 + 112) = v9;
      *(a1 + 120) = v10;
      *(a1 + 128) = v7;
    }

    else
    {
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
    }

    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = v6;
    *(a1 + 152) = *(a2 + 152);
  }

  else
  {
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
  }

  v11 = *(a2 + 160);
  if (v11)
  {
    v12 = *(a2 + 168);
    *(a1 + 160) = v11;
    *(a1 + 168) = v12;
    *(a1 + 176) = *(a2 + 176);
    v13 = *(a2 + 192);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = v13;
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    v14 = v13;
  }

  else
  {
    v15 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v15;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    v16 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v16;
  }

  return a1;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, Swift::UInt32 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 248 * v9;

    return outlined assign with take of AlertStorage(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 120 * v9;

    return outlined assign with take of InspectorStorage(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt32 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t destroy for AlertStorage(uint64_t a1)
{

  if (*(a1 + 144))
  {
    if (*(a1 + 128))
    {
      outlined consume of Text.Storage(*(a1 + 104), *(a1 + 112), *(a1 + 120));
    }
  }

  if (*(a1 + 160))
  {
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  v4 = a4[7] + 248 * result;
  v5 = *(a3 + 208);
  *(v4 + 192) = *(a3 + 192);
  *(v4 + 208) = v5;
  *(v4 + 224) = *(a3 + 224);
  *(v4 + 240) = *(a3 + 240);
  v6 = *(a3 + 144);
  *(v4 + 128) = *(a3 + 128);
  *(v4 + 144) = v6;
  v7 = *(a3 + 176);
  *(v4 + 160) = *(a3 + 160);
  *(v4 + 176) = v7;
  v8 = *(a3 + 80);
  *(v4 + 64) = *(a3 + 64);
  *(v4 + 80) = v8;
  v9 = *(a3 + 112);
  *(v4 + 96) = *(a3 + 96);
  *(v4 + 112) = v9;
  v10 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v10;
  v11 = *(a3 + 48);
  *(v4 + 32) = *(a3 + 32);
  *(v4 + 48) = v11;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  v4 = a4[7] + 120 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  v6 = *(a3 + 48);
  *(v4 + 32) = *(a3 + 32);
  *(v4 + 48) = v6;
  *(v4 + 112) = *(a3 + 112);
  v7 = *(a3 + 96);
  *(v4 + 80) = *(a3 + 80);
  *(v4 + 96) = v7;
  *(v4 + 64) = *(a3 + 64);
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t NavigationStackCore.NavigationStackRepresentableChild.value.getter@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v26 = a5;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v24 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v11 = *Value;
  v23 = *(Value + 8);
  v22 = *(Value + 16);
  NavigationStackCore.NavigationStackRepresentableChild.ensuredAuthority.getter(v27);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v13 = *WeakValue;
  }

  else
  {
    v13 = -1;
  }

  v25 = a4;
  NavigationStackCore.NavigationStackRepresentableChild.navigationPresentationAdaptor.getter(a2, &v28);
  v14 = v31[0];
  if (v31[0] == 1)
  {
    v15 = 0;
    v14 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v18 = v28;
    v17 = v29;
    v16 = v30;
    v15 = v31[1];
  }

  v28 = v11;
  LOBYTE(v29) = v23;
  v30 = v22;
  outlined init with take of NavigationAuthority(v27, v31);
  v31[3] = v13;
  v31[4] = v18;
  v31[5] = v17;
  v31[6] = v16;
  v31[7] = v14;
  v31[8] = v15;
  v19 = AGGraphGetValue();
  (*(v8 + 16))(v24, v19, a3);
  type metadata accessor for NavigationStackCore.NavigationStackRepresentableRoot();
  return _VariadicView.Tree.init(root:content:)();
}

uint64_t NavigationStackReader.AppliedBody.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v42 = a3;
  v41 = a2;
  v48 = a8;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ModifiedContent();
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v17 = &v33 - v16;
  v46 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v35 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v55 = a4;
  *(&v55 + 1) = a5;
  v56 = a6;
  v57 = a7;
  v39 = type metadata accessor for NavigationStackReader.AppliedBody();
  type metadata accessor for PositionedNavigationDestinationProcessor();
  v47 = type metadata accessor for ModifiedContent();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v33 - v20;
  v36 = a4;
  *&v55 = a4;
  *(&v55 + 1) = a5;
  v44 = a6;
  v56 = a6;
  v57 = a7;
  v21 = a7;
  type metadata accessor for NavigationStackReader.TransformBox();
  v34 = *AGGraphGetValue();
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6720]);

  v40 = a1;
  result = AGGraphGetValue();
  v23 = *(result + 8);
  if (v23 == 6)
  {
    __break(1u);
  }

  else
  {
    v24 = *(result + 16);
    v25 = *result;
    Value = AGGraphGetValue();
    v27 = (*(v13 + 16))(v15, Value, a5);
    MEMORY[0x18D00A570](v27, a5, &type metadata for NavigationStackRootDecoratingModifier, v21);
    (*(v13 + 8))(v15, a5);
    v28 = v35;
    v34(v25, v23, v24, v17);

    (*(v37 + 8))(v17, v38);
    v29 = v36;
    v30 = v44;
    NavigationStackReader.AppliedBody.authority.getter(v53);
    if (v54 == 2)
    {
      outlined destroy of NavigationAuthority??(v53);
      v55 = xmmword_18CD633F0;
      v56 = 0;
    }

    else
    {
      outlined init with copy of NavigationAuthority?(v53, v49);
      if (v50 == 1)
      {
        v55 = xmmword_18CD633F0;
        v56 = 0;
      }

      else
      {
        outlined init with take of NavigationAuthority(v49, &v55);
      }

      outlined destroy of NavigationAuthority?(v53);
    }

    v31 = v43;
    View.processNavigationDestinations<A>(authority:processor:)(&v55, v39, v29, v39, v30);
    outlined destroy of NavigationAuthority?(&v55);
    (*(v46 + 8))(v28, v29);
    v51 = v30;
    v52 = &protocol witness table for PositionedNavigationDestinationProcessor<A>;
    v32 = v47;
    swift_getWitnessTable();
    View.transformPreference<A>(_:_:)();
    return (*(v45 + 8))(v31, v32);
  }

  return result;
}

void *initializeWithCopy for NavigationStackReader(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 15;
  *a1 = v5;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v6[1] = *((v4 & 0xFFFFFFFFFFFFFFF8) + 8);
  v6[2] = *((v4 & 0xFFFFFFFFFFFFFFF8) + 16);
  v7 = *(a3 + 24);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(v7 - 8) + 16;
  v10 = *(*(v7 - 8) + 80);
  v11 = (v6 + v10 + 24) & ~v10;
  v12 = (v10 + 24 + (v4 & 0xFFFFFFFFFFFFFFF8)) & ~v10;

  v8(v11, v12, v7);
  v13 = *(v9 + 48);
  v14 = v13 + v11;
  v15 = v13 + v12;
  *v14 = *v15;
  v14 &= 0xFFFFFFFFFFFFFFF8;
  v15 &= 0xFFFFFFFFFFFFFFF8;
  *(v14 + 8) = *(v15 + 8);
  v16 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  v18 = v17[1];
  *v16 = *v17;
  v16[1] = v18;

  return a1;
}

uint64_t destroy for NavigationStackReader(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(*(*(a2 + 24) - 8) + 8))((v3 + *(*(*(a2 + 24) - 8) + 80) + 24) & ~*(*(*(a2 + 24) - 8) + 80));
}

uint64_t NavigationStackReader.ChildEnvironment.updateValue()(void *a1)
{
  v2 = v1;
  v64 = *MEMORY[0x1E69E9840];
  v4 = a1[3];
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  NavigationStackReader.ChildEnvironment.environment.getter(&v62);
  NavigationStackReader.ChildEnvironment.inheritedAuthority.getter(&v60);
  v42 = v7;
  v43 = v5;
  if (v61 == 1)
  {
    outlined destroy of NavigationAuthority?(&v60);
  }

  else
  {
    if (v61 != 2)
    {
      goto LABEL_8;
    }

    outlined destroy of NavigationAuthority??(&v60);
  }

  outlined init with copy of NavigationAuthority?(v1 + 40, &v60);
  if (v61 == 1)
  {
    outlined destroy of NavigationAuthority?(&v60);
    type metadata accessor for NavigationStateHost();
    AGGraphGetValue();

    NavigationStackReader.ChildEnvironment.environment.getter(&v60);
    v8 = v60;
    v9 = v61;
    swift_weakInit();
    swift_weakAssign();

    v46 = v8;
    v47 = v9;
    outlined assign with take of NavigationAuthority?(&v45, v2 + 40);
    outlined init with copy of NavigationAuthority?(v2 + 40, &v45);
    if (v46 != 1)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

LABEL_8:
  outlined init with take of NavigationAuthority(&v60, &v45);
LABEL_9:
  outlined init with take of NavigationAuthority(&v45, &v60);
  v10 = *(a1 - 1);
  v11 = (*(v10 + 16))(&v45, v2, a1);
  MEMORY[0x1EEE9AC00](v11);
  *(&v40 - 6) = a1[2];
  *(&v40 - 5) = v4;
  v12 = a1[5];
  *(&v40 - 4) = a1[4];
  *(&v40 - 3) = v12;
  v40 = v12;
  v41 = v4;
  *(&v40 - 2) = &v60;
  *(&v40 - 1) = v2;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D000B40](a1, &type metadata for NavigationState.SelectionSeed, WitnessTable);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  (*(v10 + 8))(&v45, a1);
  LODWORD(v45) = v59[0];
  type metadata accessor for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationStateSelectionSeed>, &type metadata for NavigationStateSelectionSeed, &protocol witness table for NavigationStateSelectionSeed, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationStateSelectionSeed> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationStateSelectionSeed>, &type metadata for NavigationStateSelectionSeed, &protocol witness table for NavigationStateSelectionSeed);

  PropertyList.subscript.setter();
  v14 = v63;
  if (v63)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  type metadata accessor for (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)();
  v16 = v15;
  if (AGGraphGetOutputValue())
  {
    goto LABEL_19;
  }

  v45 = NavigationStackReader.ChildEnvironment.path.getter();
  v46 = v17;
  v47 = v18;
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v59);
  v19 = v59[0];

  v21 = (*(*v19 + 80))(v20);

  if ((v21 & 1) == 0)
  {
    outlined init with copy of NavigationAuthority(&v60, v59);
    v22 = v41;
    Value = AGGraphGetValue();
    v25 = v42;
    v24 = v43;
    (*(v43 + 16))(v42, Value, v22);
    result = NavigationStackReader.ChildEnvironment.key.getter();
    if (v27 == 6)
    {
LABEL_25:
      __break(1u);
      return result;
    }

    static NavigationRequest.setInitialPossibilities<A>(_:stack:)(v25, result, v27, v28, v22, v40, &v45);
    (*(v24 + 8))(v25, v22);
    NavigationAuthority.enqueueRequest(_:)(&v45);
    outlined destroy of NavigationRequest(&v45);
    outlined destroy of NavigationAuthority(v59);
  }

  v43 = v16;
  outlined init with copy of NavigationAuthority(&v60, v59);
  v29 = NavigationStackReader.ChildEnvironment.path.getter();
  v31 = v30;
  v33 = v32;
  result = NavigationStackReader.ChildEnvironment.key.getter();
  v41 = result;
  v42 = v34;
  v40 = v35;
  if (v35 == 6)
  {
    __break(1u);
    goto LABEL_25;
  }

  NavigationStackReader.ChildEnvironment.environment.getter(v44);
  v45 = v29;
  v46 = v31;
  v47 = v33;
  v48 = v44[0];
  v49 = v44[1];
  v50 = 1;

  v36 = Transaction.disablesAnimations.getter();
  v37 = Transaction.animation.getter();

  v51 = v41;
  v52 = v40;
  v53 = v42;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = v36 & 1;
  v58 = v37;
  if ((*(v2 + 32) & 1) == 0)
  {
    NavigationAuthority.enqueueRequest(_:)(&v45);
  }

  outlined destroy of NavigationRequest(&v45);
  outlined destroy of NavigationAuthority(v59);
LABEL_19:
  LOBYTE(v45) = 1;
  type metadata accessor for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InternalNavigationEnabledKey>, &type metadata for InternalNavigationEnabledKey, &protocol witness table for InternalNavigationEnabledKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<InternalNavigationEnabledKey>, &type metadata for InternalNavigationEnabledKey, &protocol witness table for InternalNavigationEnabledKey);

  PropertyList.subscript.setter();
  if (v14)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  LOBYTE(v45) = 0;
  type metadata accessor for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey>, &type metadata for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, &protocol witness table for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey>, &type metadata for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, &protocol witness table for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey);

  PropertyList.subscript.setter();
  if (v14)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined init with copy of NavigationAuthority(&v60, v59);
  v38 = v62;
  v39 = v63;
  outlined init with take of NavigationAuthority?(v59, &v45);
  v48 = v38;
  v49 = v39;

  AGGraphSetOutputValue();
  outlined destroy of (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)(&v45);

  return outlined destroy of NavigationAuthority(&v60);
}

uint64_t NavigationStackReader.ChildEnvironment.environment.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

uint64_t outlined destroy of NavigationAuthority??(uint64_t a1)
{
  type metadata accessor for Attribute<NavigationState.ListKey?>(0, &lazy cache variable for type metadata for NavigationAuthority??, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of NavigationAuthority?(uint64_t a1)
{
  type metadata accessor for NavigationState.StackContent.Key?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in NavigationStackReader.ChildEnvironment.updateValue()@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_7;
  }

  v5 = *(result + 184);

  v6 = type metadata accessor for NavigationStackReader.ChildEnvironment();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v16, a1, v6);
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v9 = *Value;
  v10 = *(Value + 8);
  v11 = *(Value + 16);
  result = (*(v7 + 8))(v16, v6);
  if (v10 != 6)
  {
    swift_getKeyPath();
    lazy protocol witness table accessor for type Map<NavigationStateHost, NavigationSeedHost> and conformance Map<A, B>(&lazy protocol witness table cache variable for type NavigationSelectionHost and conformance NavigationSelectionHost, type metadata accessor for NavigationSelectionHost);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = *(v5 + 16);

    if (*(v12 + 16))
    {
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10, v11);
      if (v14)
      {
        v15 = *(*(v12 + 56) + 4 * v13);

LABEL_8:
        *a2 = v15;
        return result;
      }
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t NavigationStackReader.ChildEnvironment.path.getter()
{
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
  v0 = *AGGraphGetValue();

  return v0;
}

__n128 initializeWithTake for PositionedNavigationDestinationProcessor(__n128 *a1, __n128 *a2)
{
  v2 = &a2->n128_i8[8];
  if (a2->n128_u64[1] == 1)
  {
    result = *a2;
    *a1 = *a2;
    a1[1].n128_u64[0] = a2[1].n128_u64[0];
  }

  else
  {
    v4 = swift_weakTakeInit();
    result = *v2;
    *(v4 + 8) = *v2;
  }

  return result;
}

uint64_t NavigationStackStyledCore.Child.ensuredAuthority.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 20);
  v5 = *(v1 + 28);
  v10 = *v1;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  NavigationStackStyledCore.Child.authority.getter(v9);
  outlined init with take of NavigationAuthority??(v9, v8);
  if (v8[1] == 2)
  {
    v14 = xmmword_18CD633F0;
    v15 = 0;
  }

  else
  {
    outlined init with take of NavigationAuthority?(v8, &v14);
    if (*(&v14 + 1) != 1)
    {
      return outlined init with take of NavigationAuthority(&v14, a1);
    }
  }

  type metadata accessor for NavigationStateHost();
  swift_allocObject();
  NavigationStateHost.init()();
  EnvironmentValues.init()();
  v6 = v10;
  swift_weakInit();
  swift_weakAssign();

  *(a1 + 8) = v6;
  if (*(&v14 + 1) != 1)
  {
    return outlined destroy of NavigationState.StackContent?(&v14, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  }

  return result;
}

uint64_t outlined init with take of NavigationAuthority??(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Attribute<UInt32?>(0, &lazy cache variable for type metadata for NavigationAuthority??, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for NavigationStackStyledCore.NavigationStackRepresentableRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = (a2 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = swift_weakCopyInit();
  *(v6 + 8) = *(v5 + 8);
  *(v6 + 16) = *(v5 + 16);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v11 = *(v8 + 80);
  v12 = (v11 + 24 + v6) & ~v11;
  v13 = (v11 + 24 + v5) & ~v11;

  v9(v12, v13, v7);
  v14 = *(v10 + 48);
  v15 = v14 + v12;
  v16 = v14 + v13;
  v17 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v18 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v19 = *v18;
  *(v17 + 4) = *(v18 + 4);
  *v17 = v19;
  v20 = (v15 + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v21 = (v16 + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v22 = *v21;
  *(v20 + 8) = *(v21 + 8);
  *v20 = v22;
  return a1;
}

uint64_t initializeWithTake for NavigationStackStyledCore.NavigationStackRepresentableRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = (a2 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = swift_weakTakeInit();
  *(v6 + 8) = *(v5 + 8);
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = (v9 + 24 + v6) & ~v9;
  v11 = (v9 + 24 + v5) & ~v9;
  (*(v7 + 32))(v10, v11);
  v12 = *(v8 + 32);
  v13 = v12 + v10;
  v14 = v12 + v11;
  v15 = (v13 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = (v14 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *v16;
  *(v15 + 4) = *(v16 + 4);
  *v15 = v17;
  v18 = (v13 + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v19 = (v14 + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v20 = *v19;
  *(v18 + 8) = *(v19 + 8);
  *v18 = v20;
  return a1;
}

uint64_t NavigationStackStyledCore.NavigationStackRepresentableRoot.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v4 = *(a1 + 16);
  v5 = lazy protocol witness table accessor for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root();
  v6 = *(a1 + 24);
  *&v32 = &type metadata for _NavigationStackStyleConfiguration.Root;
  *(&v32 + 1) = v4;
  *&v33 = v5;
  *(&v33 + 1) = v6;
  type metadata accessor for StaticSourceWriter();
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - v9;
  outlined init with copy of NavigationAuthority(v2 + 24, &v32);
  v11 = *v2;
  v12 = *(v2 + 16);
  v13 = (v2 + *(a1 + 44));
  v14 = *v13;
  LOBYTE(v13) = *(v13 + 4);
  v15 = (v2 + *(a1 + 48));
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  v17 = *(v2 + 8);
  *&v27 = v16;
  BYTE8(v27) = v15;
  LOBYTE(v30[0]) = v13;
  _NavigationStackStyleConfiguration.init(authority:context:structureSeed:previousAnimationSeed:)(&v32, v11, v17, v12, v14 | (v13 << 32), &v27, v30);
  v27 = v30[0];
  v28 = v30[1];
  *v29 = *v31;
  *&v29[14] = *&v31[14];
  v22 = v4;
  v23 = v6;
  v24 = v2;
  outlined init with copy of _NavigationStackStyleConfiguration(v30, &v32);
  v18 = lazy protocol witness table accessor for type ResolvedNavigationStackStyle and conformance ResolvedNavigationStackStyle();
  View.viewAlias<A, B>(_:_:)(&type metadata for _NavigationStackStyleConfiguration.Root, partial apply for closure #1 in NavigationStackStyledCore.NavigationStackRepresentableRoot.body.getter, v21, &type metadata for ResolvedNavigationStackStyle, &type metadata for _NavigationStackStyleConfiguration.Root, v4, v18);
  v32 = v27;
  v33 = v28;
  v34[0] = *v29;
  *(v34 + 14) = *&v29[14];
  outlined destroy of ResolvedNavigationStackStyle(&v32);
  LOBYTE(v27) = 1;
  v25 = v18;
  v26 = &protocol witness table for StaticSourceWriter<A, B>;
  swift_getWitnessTable();
  View.preference<A>(key:value:)();
  outlined destroy of _NavigationStackStyleConfiguration(v30);
  return (*(v8 + 8))(v10, v7);
}

uint64_t outlined init with copy of AnyNavigationLinkPresentedValue?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  _sypSgMaTm_6(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t _s7SwiftUI31AnyNavigationLinkPresentedValueVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for AnyNavigationLinkPresentedValue?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for AnyNavigationLinkPresentedValue?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined destroy of NavigationState?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for AnyNavigationLinkPresentedValue?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(unint64_t a1, char a2, uint64_t a3, char a4, unint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t (*)()))
{
  result = outlined init with copy of NavigationState.Base(v7, __src);
  v16 = v42;
  if (!v42)
  {
    return v16;
  }

  if (v42 == 1)
  {
    outlined consume of ResolvedNavigationDestinations?(__src[45]);
    memcpy(__dst, __src, 0x163uLL);
    v17 = specialized NavigationState.StackContent.Views.ViewsSequence.index(after:for:)(a1, a2 & 1, a3, a4, __dst, a5, a6, a7);
    v19 = ~v18;
    outlined destroy of NavigationColumnState(__dst);
    if (v19)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v20 = __src[0];
  v43[2] = *&__src[5];
  v43[3] = *&__src[7];
  v44 = __src[9];
  v43[0] = *&__src[1];
  v43[1] = *&__src[3];
  if ((a2 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      goto LABEL_80;
    }

    if (*(__src[0] + 16) <= a1)
    {
LABEL_81:
      __break(1u);
    }

    else
    {
      outlined init with copy of NavigationColumnState(__src[0] + 360 * a1 + 32, __dst);
      v16 = specialized NavigationState.StackContent.Views.ViewsSequence.index(after:for:)(a1, 0, a3, a4, __dst, a5, a6, a7);
      v22 = ~v21;
      result = outlined destroy of NavigationColumnState(__dst);
      if (v22)
      {
        outlined destroy of NavigationState?(v43, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);

        return v16;
      }

      v23 = *(v20 + 16);
      if (v23 > a1)
      {
        if (a1 + 1 == v23)
        {

LABEL_16:
          outlined destroy of NavigationState?(v43, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
          swift_bridgeObjectRelease_n();
          return 0;
        }

        v24 = a1 + 6;
        v25 = 360 * a1;
        while (1)
        {
          v16 = v24 - 5;
          if ((v24 - 5) >= v23)
          {
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
            goto LABEL_81;
          }

          if (v16 >= *(v20 + 16))
          {
            goto LABEL_79;
          }

          outlined init with copy of NavigationColumnState(v20 + v25 + 392, __dst);
          if (__dst[24] > 2u)
          {
            if (__dst[24] != 5)
            {
              goto LABEL_74;
            }

            goto LABEL_19;
          }

          if (__dst[24] == 1)
          {
            break;
          }

          if (__dst[24] != 2)
          {
            goto LABEL_74;
          }

          v26 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v43, __dst, v24 - 5, v20);
          result = outlined destroy of NavigationColumnState(__dst);
          if (v26)
          {
            goto LABEL_76;
          }

LABEL_20:
          ++v24;
          v25 += 360;
          if (1 - v23 + v24 == 6)
          {
            goto LABEL_16;
          }
        }

        result = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v43, __dst, v24 - 5, v20);
        if (result)
        {
LABEL_74:
          outlined destroy of NavigationState?(v43, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
          swift_bridgeObjectRelease_n();
          outlined destroy of NavigationColumnState(__dst);
          return v16;
        }

        if ((v24 - 4) >= v23)
        {
          goto LABEL_19;
        }

        if (v24 - 4 >= *(v20 + 16))
        {
          goto LABEL_83;
        }

        outlined init with copy of NavigationColumnState(v20 + v25 + 752, v38);
        if (v39 > 2u)
        {
          if (v39 != 5)
          {
            goto LABEL_75;
          }

LABEL_56:
          outlined destroy of NavigationColumnState(v38);
LABEL_19:
          result = outlined destroy of NavigationColumnState(__dst);
          goto LABEL_20;
        }

        if (v39 != 1)
        {
          if (v39 != 2)
          {
            goto LABEL_75;
          }

          v27 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v43, v38, v24 - 4, v20) ^ 1;
LABEL_62:
          outlined destroy of NavigationColumnState(v38);
          result = outlined destroy of NavigationColumnState(__dst);
          if ((v27 & 1) == 0)
          {
            goto LABEL_76;
          }

          goto LABEL_20;
        }

        result = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v43, v38, v24 - 4, v20);
        if (result)
        {
LABEL_75:
          outlined destroy of NavigationColumnState(v38);
          outlined destroy of NavigationColumnState(__dst);
LABEL_76:
          outlined destroy of NavigationState?(v43, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
          swift_bridgeObjectRelease_n();
          return v16;
        }

        if (v24 - 3 >= v23)
        {
          goto LABEL_56;
        }

        if (v24 - 3 >= *(v20 + 16))
        {
          goto LABEL_84;
        }

        outlined init with copy of NavigationColumnState(v20 + v25 + 1112, v36);
        if (v37 > 2u)
        {
          if (v37 - 3 >= 2)
          {
LABEL_59:
            v27 = 1;
            goto LABEL_61;
          }
        }

        else if (v37)
        {
          v28 = v24 - 3;
          if (v37 != 1)
          {
            v27 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v43, v36, v28, v20) ^ 1;
            goto LABEL_61;
          }

          if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v43, v36, v28, v20) & 1) == 0)
          {
            if (v24 - 2 < *(v20 + 16))
            {
              outlined init with copy of NavigationColumnState(v20 + v25 + 1472, v34);
              if (v35 > 2u)
              {
                if (v35 - 3 >= 2)
                {
LABEL_66:
                  v27 = 1;
                  goto LABEL_68;
                }
              }

              else if (v35)
              {
                v29 = v24 - 2;
                if (v35 != 1)
                {
                  v27 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v43, v34, v29, v20) ^ 1;
                  goto LABEL_68;
                }

                if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v43, v34, v29, v20) & 1) == 0)
                {
                  v30 = *(v20 + 16);
                  if (v24 - 1 < v30)
                  {
                    outlined init with copy of NavigationColumnState(v20 + v25 + 1832, v32);
                    if (v33 > 2u)
                    {
                      if (v33 - 3 >= 2)
                      {
                        goto LABEL_71;
                      }
                    }

                    else if (v33)
                    {
                      v31 = v24 - 1;
                      if (v33 != 1)
                      {
                        v27 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v43, v32, v31, v20) ^ 1;
                        goto LABEL_73;
                      }

                      if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v43, v32, v31, v20) & 1) == 0)
                      {
                        if (v24 < v30)
                        {
                          v27 = _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(v24, v20, v43);
LABEL_73:
                          outlined destroy of NavigationColumnState(v32);
                          goto LABEL_68;
                        }

LABEL_71:
                        v27 = 1;
                        goto LABEL_73;
                      }
                    }

                    v27 = 0;
                    goto LABEL_73;
                  }

                  goto LABEL_66;
                }
              }

              v27 = 0;
LABEL_68:
              outlined destroy of NavigationColumnState(v34);
              goto LABEL_61;
            }

            goto LABEL_59;
          }
        }

        v27 = 0;
LABEL_61:
        outlined destroy of NavigationColumnState(v36);
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, EmptyModifier>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, EmptyModifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, EmptyModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>);
    lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _PreferenceTransformModifier<NavigationDestinationKey> and conformance _PreferenceTransformModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>(255, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>);
    lazy protocol witness table accessor for type _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root> and conformance <> _VariadicView.Tree<A, B>(&lazy protocol witness table cache variable for type _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root> and conformance <> _VariadicView.Tree<A, B>, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of IndexingIterator<DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (offset: Int, element: NavigationState.StackContent.PositionedView)()
{
  if (!lazy cache variable for type metadata for (offset: Int, element: NavigationState.StackContent.PositionedView))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: NavigationState.StackContent.PositionedView));
    }
  }
}

uint64_t initializeWithCopy for NavigationStackViewSource(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    v5 = *(a2 + 24);
    if (v5)
    {
      v6 = *(a2 + 32);
      *(a1 + 24) = v5;
      *(a1 + 32) = v6;
      v7 = a2;
      (**(v5 - 8))(a1);
      a2 = v7;
    }

    else
    {
      v10 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v10;
      *(a1 + 32) = *(a2 + 32);
    }

    v11 = *(a2 + 48);
    if (v11 == 1)
    {
      *(a1 + 40) = *(a2 + 40);
    }

    else
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = v11;
      v12 = a2;

      a2 = v12;
    }

    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = 1;
  }

  else if (v3)
  {
    v8 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v8;
    *(a1 + 64) = *(a2 + 64);
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    *(a1 + 64) = 0;
  }

  return a1;
}

uint64_t outlined init with take of _NavigationStackStyleConfiguration.Item(__int128 *a1, uint64_t a2)
{
  v4 = *a1;
  *(a2 + 16) = *(a1 + 2);
  *a2 = v4;
  swift_weakTakeInit();
  *(a2 + 32) = a1[2];
  v6 = a1[7];
  v5 = a1[8];
  v7 = a1[6];
  *(a2 + 144) = *(a1 + 18);
  *(a2 + 112) = v6;
  *(a2 + 128) = v5;
  *(a2 + 96) = v7;
  v8 = a1[3];
  v9 = a1[5];
  *(a2 + 64) = a1[4];
  *(a2 + 80) = v9;
  *(a2 + 48) = v8;
  return a2;
}

void type metadata accessor for DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>(255, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence);
    v10 = v9;
    v11 = lazy protocol witness table accessor for type NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(a3);
    v12 = a5(a1, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

uint64_t outlined destroy of EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>(uint64_t a1)
{
  type metadata accessor for DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>(0, &lazy cache variable for type metadata for EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>, &lazy protocol witness table cache variable for type NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>, &protocol conformance descriptor for NavigationState.StackContent.Views.ViewsSequence<A, B>, MEMORY[0x1E69E6E48]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[6] = v3;
    v8[7] = v4;
    v8[0] = &type metadata for _NavigationStackStyleConfiguration.Root;
    v8[1] = MEMORY[0x1E697E108];
    v8[2] = &protocol witness table for _NavigationStackStyleConfiguration.Root;
    v8[3] = MEMORY[0x1E697E100];
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>(255, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t initializeWithCopy for _NavigationStackStyleConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v3;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);

  return a1;
}

uint64_t closure #1 in NavigationStackStyledCore.NavigationStackRepresentableRoot.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NavigationStackStyledCore.NavigationStackRepresentableRoot();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v9 + 40), a2, a3);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t NavigationStackCore.NavigationStackRepresentableChild.ensuredAuthority.getter@<X0>(uint64_t a1@<X8>)
{
  NavigationStackCore.NavigationStackRepresentableChild.authority.getter(v6);
  outlined init with take of NavigationAuthority??(v6, v5);
  if (v5[1] == 2)
  {
    v7 = xmmword_18CD633F0;
    v8 = 0;
  }

  else
  {
    outlined init with take of NavigationAuthority?(v5, &v7);
    if (*(&v7 + 1) != 1)
    {
      return outlined init with take of NavigationAuthority(&v7, a1);
    }
  }

  type metadata accessor for NavigationStateHost();
  swift_allocObject();
  NavigationStateHost.init()();
  EnvironmentValues.init()();
  v2 = v6[0];
  v3 = v6[1];
  swift_weakInit();
  swift_weakAssign();

  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  if (*(&v7 + 1) != 1)
  {
    return outlined destroy of PPTTestCase?(&v7, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  }

  return result;
}

double NavigationStackCore.NavigationStackRepresentableChild.authority.getter@<D0>(uint64_t a1@<X8>)
{
  _s7SwiftUI11PPTTestCaseVSgMaTm_0(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of NavigationState.StackContent?(WeakValue, a1, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_18CD874C0;
    *(a1 + 16) = 0;
  }

  return result;
}

void NavigationStackCore.NavigationStackRepresentableChild.navigationPresentationAdaptor.getter(int a1@<W3>, uint64_t a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = xmmword_18CD6A6D0;
  }

  else
  {
    type metadata accessor for UINavigationPresentationAdaptor?(0, &lazy cache variable for type metadata for UINavigationPresentationAdaptor?, type metadata accessor for UINavigationPresentationAdaptor);
    Value = AGGraphGetValue();
    outlined init with copy of Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>?(Value, a2, &lazy cache variable for type metadata for UINavigationPresentationAdaptor?, type metadata accessor for UINavigationPresentationAdaptor);
  }
}

uint64_t initializeWithCopy for NavigationStackCore.NavigationStackRepresentableRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  swift_weakCopyInit();
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a2 + 80);

  if (v5)
  {
    v6 = *(a2 + 88);
    *(a1 + 80) = v5;
    *(a1 + 88) = v6;
    (**(v5 - 8))(a1 + 56, a2 + 56, v5);
  }

  else
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
  }

  return a1;
}

uint64_t closure #1 in NavigationStackCore.NavigationStackRepresentableRoot.body(children:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W4>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = a1[2];
  outlined init with copy of _VariadicView_Children(a2, a4 + 24);
  outlined init with copy of NavigationAuthority((a1 + 3), a4 + 88);
  v10 = a1[6];
  outlined init with copy of Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>?((a1 + 7), a4 + 128, &lazy cache variable for type metadata for UINavigationPresentationAdaptor?, type metadata accessor for UINavigationPresentationAdaptor);
  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  *(a4 + 112) = a3;
  *(a4 + 116) = v10;
  result = swift_getKeyPath();
  *(a4 + 168) = result;
  *(a4 + 176) = 0;
  return result;
}

uint64_t initializeWithTake for NavigationStackRepresentable(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  swift_weakTakeInit();
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  v4 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v4;
  v5 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v5;
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t initializeWithCopy for NavigationStackRepresentable(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 48) = v4;
  (**(v4 - 8))(a1 + 24, a2 + 24);
  v5 = *(a2 + 64);
  v6 = *(a2 + 72);
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  *(a1 + 80) = *(a2 + 80);
  v7 = v5;

  swift_weakCopyInit();
  v8 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v8;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  v9 = *(a2 + 152);

  if (v9)
  {
    v10 = *(a2 + 160);
    *(a1 + 152) = v9;
    *(a1 + 160) = v10;
    (**(v9 - 8))(a1 + 128, a2 + 128, v9);
  }

  else
  {
    v11 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v11;
    *(a1 + 160) = *(a2 + 160);
  }

  v12 = *(a2 + 168);
  v13 = *(a2 + 176);
  outlined copy of Environment<Bool>.Content(v12, v13);
  *(a1 + 168) = v12;
  *(a1 + 176) = v13;
  return a1;
}

uint64_t destroy for NavigationStackRepresentable(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1 + 24);

  swift_weakDestroy();

  if (*(a1 + 152))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 128);
  }

  v2 = *(a1 + 168);
  v3 = *(a1 + 176);

  return outlined consume of Environment<Bool>.Content(v2, v3);
}

void type metadata accessor for NavigationStackCoordinator<NavigationStrategy_Phone>()
{
  if (!lazy cache variable for type metadata for NavigationStackCoordinator<NavigationStrategy_Phone>)
  {
    lazy protocol witness table accessor for type NavigationStrategy_Phone and conformance NavigationStrategy_Phone();
    v0 = type metadata accessor for NavigationStackCoordinator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NavigationStackCoordinator<NavigationStrategy_Phone>);
    }
  }
}

char *partial apply for specialized closure #2 in NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:)()
{
  return partial apply for specialized closure #2 in NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:)();
}

{
  return specialized NavigationStrategy.viewControllerCommon(for:entering:canPop:isRoot:)(**(v0 + 24), 0);
}

{
  return partial apply for specialized closure #2 in NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:)();
}

void type metadata accessor for Spacer?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance NavigationAuthority.StackKeyViewInputKey()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<NavigationEnabled>(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6720]);

  return static WeakAttribute.== infix(_:_:)();
}

uint64_t NavigationStack.body.getter(uint64_t *a1)
{
  v3 = a1[3];
  type metadata accessor for ModifiedContent();
  v4 = a1[4];
  v15[6] = v4;
  v15[7] = lazy protocol witness table accessor for type NavigationStackRootDecoratingModifier and conformance NavigationStackRootDecoratingModifier();
  swift_getWitnessTable();
  v15[2] = type metadata accessor for NavigationStackStyledCore();
  v15[3] = v3;
  v15[4] = &protocol witness table for NavigationStackStyledCore<A>;
  v15[5] = v4;
  type metadata accessor for NavigationStackReader();
  type metadata accessor for ModifiedContent();
  v15[0] = &protocol witness table for NavigationStackReader<A, B>;
  v15[1] = lazy protocol witness table accessor for type NavigationCommonModifier and conformance NavigationCommonModifier();
  swift_getWitnessTable();
  v5 = type metadata accessor for _UnaryViewAdaptor();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  closure #1 in NavigationStack.body.getter(v1, a1[2], v3, v4, v8);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v8, v5, WitnessTable);
  v13 = *(v6 + 8);
  v13(v8, v5);
  static ViewBuilder.buildExpression<A>(_:)(v11, v5, WitnessTable);
  return (v13)(v11, v5);
}

uint64_t NavigationStack.$path.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = *v2;
  if (v2[3])
  {
  }

  else
  {
    type metadata accessor for UInt32?(0, &lazy cache variable for type metadata for State<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    return v5;
  }

  return v3;
}

uint64_t NavigationStack.localStateHost.getter()
{
  type metadata accessor for NavigationStateHost();
  _s7SwiftUI19NavigationStateHostCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type NavigationStateHost and conformance NavigationStateHost, type metadata accessor for NavigationStateHost);

  return StateObject.wrappedValue.getter();
}

uint64_t NavigationStackReader.StackKey.inheritedStackKey.getter()
{
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6720]);
  result = AGGraphGetWeakValue();
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t NavigationStackReader.StackKey.value.getter()
{
  result = NavigationStackReader.StackKey.inheritedStackKey.getter();
  if ((v1 & 0xFE) == 6)
  {
    v2 = *AGGraphGetValue();
    AGGraphGetValue();
    AGGraphGetValue();
    return v2;
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance NavigationStackReader<A, B>.StackKey@<X0>(uint64_t *a1@<X8>)
{
  result = NavigationStackReader.StackKey.value.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

double NavigationStackReader.AppliedBody.authority.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {

    outlined init with copy of NavigationAuthority?(WeakValue, a1);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_18CD874C0;
    *(a1 + 16) = 0;
  }

  return result;
}

double NavigationStackReader.ChildEnvironment.inheritedAuthority.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {

    outlined init with copy of NavigationAuthority?(WeakValue, a1);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_18CD874C0;
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t outlined destroy of (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)(uint64_t a1)
{
  type metadata accessor for (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.processNavigationDestinations<A>(authority:processor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of NavigationAuthority?(a1, v9);
  outlined init with take of NavigationAuthority?(v9, v10);
  v7 = type metadata accessor for PositionedNavigationDestinationProcessor();
  MEMORY[0x18D00A570](v10, a3, v7, a5);
  return (*(*(v7 - 8) + 8))(v10, v7);
}

uint64_t initializeWithCopy for NavigationStackStyledCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  return a1;
}

double NavigationStackStyledCore.Child.authority.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for UInt32?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    _s7SwiftUI15NavigationStateVSgWOcTm_0(WeakValue, a1, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_18CD874C0;
    *(a1 + 16) = 0;
  }

  return result;
}

unint64_t protocol witness for Rule.value.getter in conformance NavigationStackStyledCore<A>.NavigationStateStructureSeed@<X0>(uint64_t a1@<X8>)
{
  result = NavigationStackStyledCore.NavigationStateStructureSeed.value.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t NavigationStackStyledCore.NavigationStateStructureSeed.value.getter()
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v1 = *WeakValue;
  }

  else
  {
    v1 = 0;
  }

  return v1 | ((WeakValue == 0) << 32);
}

uint64_t destroy for NavigationStackStyledCore.NavigationStackRepresentableRoot(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 31) & 0xFFFFFFFFFFFFFFF8;
  swift_weakDestroy();

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (v3 + *(v4 + 80) + 24) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t destroy for _NavigationStackStyleConfiguration()
{
}

uint64_t protocol witness for StyleableView.configuration.getter in conformance ResolvedNavigationStackStyle@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = *(v1 + 32);
  v3 = v8[0];
  *(v8 + 14) = *(v1 + 46);
  v4 = *(v8 + 14);
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 46) = v4;
  return outlined init with copy of _NavigationStackStyleConfiguration(v7, v6);
}

uint64_t NavigationStackStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  v12 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v12;
  v17[0] = *(a1 + 32);
  *(v17 + 14) = *(a1 + 46);
  (*(v3 + 24))(v16, v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = *(v6 + 8);
  v14(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v14)(v11, AssociatedTypeWitness);
}

uint64_t protocol witness for _NavigationStackStyle.makeBody(configuration:) in conformance _AutomaticNavigationStackStyle@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  return result;
}

uint64_t initializeWithTake for NavigationStackCore.NavigationStackRepresentableRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  swift_weakTakeInit();
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t destroy for NavigationStackCore.NavigationStackRepresentableRoot(uint64_t a1)
{
  swift_weakDestroy();

  if (*(a1 + 80))
  {
    return __swift_destroy_boxed_opaque_existential_1(a1 + 56);
  }

  return result;
}

uint64_t NavigationStackCore.NavigationStackRepresentableRoot.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  closure #1 in NavigationStackCore.NavigationStackRepresentableRoot.body(children:)(v2, a1, 1, a2);
  closure #1 in NavigationStackCore.NavigationStackRepresentableRoot.body(children:)(v2, a1, 0, a2 + 184);
  result = static Edge.Set.all.getter();
  *(a2 + 368) = -1;
  *(a2 + 376) = result;
  return result;
}

id protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance NavigationStackRepresentable@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 8);
  outlined init with copy of NavigationAuthority(v1 + 88, v9);
  type metadata accessor for NavigationStackCoordinator<NavigationStrategy_Phone>();
  v7 = objc_allocWithZone(v6);
  result = specialized NavigationStackCoordinator.init(context:navigationAuthority:)(v3, v5, v4, v9);
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationStrategy_Phone and conformance NavigationStrategy_Phone()
{
  result = lazy protocol witness table cache variable for type NavigationStrategy_Phone and conformance NavigationStrategy_Phone;
  if (!lazy protocol witness table cache variable for type NavigationStrategy_Phone and conformance NavigationStrategy_Phone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationStrategy_Phone and conformance NavigationStrategy_Phone);
  }

  return result;
}

UINavigationController *NavigationStackRepresentable.makeUIViewController(context:)(uint64_t *a1)
{
  v2 = v1;
  type metadata accessor for UINavigationPresentationAdaptor?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = *a1;
  v8 = a1[2];
  v9 = a1[3];
  static Log.navigation.getter();
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    outlined destroy of UINavigationPresentationAdaptor?(v6, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  }

  else
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_18BD4A000, v12, v13, "Creating stack navigation controller", v14, 2u);
      MEMORY[0x18D0110E0](v14, -1, -1);
    }

    (*(v11 + 8))(v6, v10);
  }

  _s7SwiftUI11PPTTestCaseVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_VariadicView_Children>, MEMORY[0x1E697FFD0], MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_18CD63400;
  outlined init with copy of _VariadicView_Children(v2 + 24, v15 + 32);
  v16 = *(v2 + 168);
  v17 = *(v2 + 176);

  v18 = specialized Environment.wrappedValue.getter(v16, v17);
  v19 = specialized NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:)(v8, v9, v18 & 1, v8, v9, v15);
  outlined init with copy of NavigationAuthority(v2 + 88, v33);
  v20 = *(v2 + 112);
  v21 = [objc_allocWithZone(type metadata accessor for UIKitNavigationController()) initWithRootViewController_];
  outlined init with copy of NavigationAuthority(v33, &v31);
  v22 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_navigationAuthority;
  swift_beginAccess();
  v23 = v21;
  outlined assign with take of NavigationState.StackContent?(&v31, v21 + v22, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  swift_endAccess();
  v23[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isSecure] = v20;
  *&v31 = v8;
  *(&v31 + 1) = v9;
  UIKitNavigationController.configure(environment:)(&v31);

  outlined destroy of NavigationAuthority(v33);
  outlined init with copy of Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>?(v2 + 128, &v31, &lazy cache variable for type metadata for UINavigationPresentationAdaptor?, type metadata accessor for UINavigationPresentationAdaptor);
  if (v32)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v31, v33);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v33, &v31);
    v24 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_platformNavigationPresentationStrategy;
    swift_beginAccess();
    outlined assign with take of UIKitNavigationController.PlatformNavigationRequestStrategy(&v31, &v23[v24]);
    swift_endAccess();
  }

  else
  {
    outlined destroy of UINavigationPresentationAdaptor?(&v31, &lazy cache variable for type metadata for UINavigationPresentationAdaptor?, type metadata accessor for UINavigationPresentationAdaptor);
  }

  v25 = *(v2 + 8);
  v26 = *(v2 + 16);
  v27 = &v23[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_context];
  *v27 = *v2;
  v27[1] = v25;
  v27[2] = v26;
  v28 = v23;
  [(UINavigationController *)v28 setDelegate:v7];
  specialized UIHostingController.prepareNavigationBar(in:navigationController:isRoot:)(v8, v9, v28, 1);

  return v28;
}

BOOL AnyNavigationPath.HeterogeneousBoxBase.isEmpty.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  if (!NavigationPath.Representation.isEmpty.getter())
  {
    return 0;
  }

  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == 0;
}

BOOL NavigationPath.Representation.isEmpty.getter()
{
  v1 = *v0;
  if (v0[3])
  {
    v4 = (v0 + 1);
    v3 = v0[1];
    v2 = v4[1];
    if (v1 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        return 0;
      }
    }

    else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 0;
    }

    if (*(v3 + 16))
    {
      return 0;
    }

    if (!(v2 >> 62))
    {
      v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      return v6 == 0;
    }

LABEL_13:
    v6 = __CocoaSet.count.getter();
    return v6 == 0;
  }

  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  return v6 == 0;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<NavigationStateSelectionSeed> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationStateSelectionSeed> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationStateSelectionSeed> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationStateSelectionSeed>, &type metadata for NavigationStateSelectionSeed, &protocol witness table for NavigationStateSelectionSeed, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationStateSelectionSeed> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t type metadata completion function for ToolbarItemGroup()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static ToolbarModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v98 = *MEMORY[0x1E69E9840];
  v10 = a2[3];
  v11 = a2[1];
  v89 = a2[2];
  v90 = v10;
  v12 = a2[3];
  v91 = a2[4];
  v13 = a2[1];
  v87 = *a2;
  v88 = v13;
  v84 = v89;
  v85[0] = v12;
  v85[1] = a2[4];
  v38 = *a1;
  v92 = *(a2 + 20);
  v86 = *(a2 + 20);
  v82 = v87;
  v83 = v11;
  outlined init with copy of _ViewInputs(&v87, v96);
  v14 = PreferenceKeys.add(_:)();
  v97 = v86;
  v96[3] = v85[0];
  v96[4] = v85[1];
  v96[1] = v83;
  v96[2] = v84;
  v96[0] = v82;
  a3(&v43, v14, &v82);
  *&v82 = v43;
  DWORD2(v82) = v44;

  v15 = PreferencesOutputs.subscript.getter();

  v93 = v87;
  v94 = v88;
  v95 = v89;
  v79 = v87;
  v80 = v88;
  v81 = v89;
  LOBYTE(v72[0]) = 1;
  outlined init with copy of _GraphInputs(&v93, &v82);
  outlined init with copy of _GraphInputs(&v93, &v82);
  PropertyList.subscript.setter();
  _GraphInputs.pushStyleContext<A>(_:)();
  outlined destroy of _GraphInputs(&v93);
  v16 = v94;
  swift_beginAccess();
  v17 = *MEMORY[0x1E698D3F8];
  if ((v15 & 0x100000000) == 0)
  {
    v17 = v15;
  }

  *&v82 = __PAIR64__(v17, *(v16 + 16));
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ToolbarGraphUtilities.MakeToolbarEnvironment and conformance ToolbarGraphUtilities.MakeToolbarEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  static ToolbarGraphUtilities.makePreferenceInputs()();
  v18 = v82;
  v19 = DWORD2(v82);
  type metadata accessor for PreferenceBridge();
  swift_allocObject();
  *&v82 = PreferenceBridge.init()();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ToolbarGraphUtilities.InvalidateBridge and conformance ToolbarGraphUtilities.InvalidateBridge();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  *v78 = v18;
  v74[0] = v79;
  v74[1] = v80;
  v74[2] = v81;
  v75 = v79;
  v76 = v80;
  v77 = v81;
  *&v78[8] = v19;
  *&v78[16] = 0;
  *&v78[24] = v20;
  v56 = a4;
  v57 = a5;
  v58 = a6;
  LODWORD(v66) = v38;
  outlined init with copy of _GraphInputs(v74, &v82);
  type metadata accessor for ToolbarModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v84 = v77;
  v85[0] = *v78;
  *(v85 + 12) = *&v78[12];
  v82 = v75;
  v83 = v76;
  (*(a6 + 32))(v72, &v60, &v82, a5, a6);
  v21 = *&v72[0];
  v22 = DWORD2(v72[0]);
  *&v82 = *&v72[0];
  DWORD2(v82) = DWORD2(v72[0]);
  if ((PreferencesOutputs.subscript.getter() & 0x100000000) == 0)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 20) = 1;
    v46 = v90;
    v47 = DWORD2(v90);
    *&v82 = v90;
    DWORD2(v82) = DWORD2(v90);
    MEMORY[0x1EEE9AC00](v23);
    outlined init with copy of PreferencesInputs(&v46, v72);
    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  *&v82 = v21;
  DWORD2(v82) = v22;
  v24 = PreferencesOutputs.subscript.getter();
  if ((v24 & 0x100000000) == 0)
  {
    v48 = v90;
    v49 = DWORD2(v90);
    *&v82 = v90;
    DWORD2(v82) = DWORD2(v90);
    MEMORY[0x1EEE9AC00](v24);
    outlined init with copy of PreferencesInputs(&v48, v72);
    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  *&v82 = v21;
  DWORD2(v82) = v22;
  v25 = PreferencesOutputs.subscript.getter();
  if ((v25 & 0x100000000) == 0)
  {
    v50 = v90;
    v51 = DWORD2(v90);
    *&v82 = v90;
    DWORD2(v82) = DWORD2(v90);
    MEMORY[0x1EEE9AC00](v25);
    outlined init with copy of PreferencesInputs(&v50, v72);
    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  }

  *&v82 = v21;
  DWORD2(v82) = v22;
  v26 = PreferencesOutputs.subscript.getter();

  if ((v26 & 0x100000000) == 0)
  {
    v52 = v90;
    v53 = DWORD2(v90);
    *&v82 = v90;
    DWORD2(v82) = DWORD2(v90);
    MEMORY[0x1EEE9AC00](v27);
    outlined init with copy of PreferencesInputs(&v52, v72);
    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  v68 = v89;
  v69 = v90;
  v70 = v91;
  v71 = v92;
  v66 = v87;
  v67 = v88;
  outlined init with copy of _ViewInputs(&v87, &v82);
  PreferenceKeys.remove(_:)();
  PreferenceKeys.remove(_:)();
  PreferenceKeys.remove(_:)();
  PreferencesOutputs.init()();
  v54 = v90;
  v55 = DWORD2(v90);
  LODWORD(v82) = DWORD2(v90);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ToolbarGraphUtilities.HostKeys and conformance ToolbarGraphUtilities.HostKeys();
  DWORD2(v69) = Attribute.init<A>(body:value:flags:update:)();
  v72[3] = v69;
  v72[4] = v70;
  v73 = v71;
  v72[0] = v66;
  v72[1] = v67;
  v72[2] = v68;
  v62 = v68;
  v63 = v69;
  v64 = v70;
  v65 = v71;
  v60 = v66;
  v61 = v67;
  outlined init with copy of _ViewInputs(v72, &v82);
  PreferenceBridge.wrapOutputs(_:inputs:)();
  v84 = v62;
  v85[0] = v63;
  v85[1] = v64;
  v86 = v65;
  v82 = v60;
  v83 = v61;
  outlined destroy of _ViewInputs(&v82);
  type metadata accessor for _ContiguousArrayStorage<PreferencesOutputs>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreferencesOutputs>, MEMORY[0x1E697F450], MEMORY[0x1E69E6F90]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_18CD63410;
  v29 = v44;
  *(v28 + 32) = v43;
  *(v28 + 40) = v29;
  *(v28 + 48) = v41;
  *(v28 + 56) = v42;

  PreferencesOutputs.init()();
  v39 = v60;
  v40 = DWORD2(v60);
  v30 = *(v54 + 16);
  if (v30)
  {
    outlined init with copy of PreferencesInputs(&v54, &v60);
    lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();
    v31 = -v30;
    v32 = 1;
    do
    {
      v33 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v33(&v60, 0);
      static PreferenceKey.visitKey<A>(_:)();
      ++v32;
    }

    while (v31 + v32 != 1);
    outlined destroy of _ToolbarInputs(&v75);
    outlined destroy of _ViewInputs(v96);
  }

  else
  {
    outlined init with copy of PreferencesInputs(&v54, &v60);
    outlined destroy of _ToolbarInputs(&v75);
    outlined destroy of _ViewInputs(v96);
  }

  v62 = v68;
  v63 = v69;
  v64 = v70;
  v65 = v71;
  v60 = v66;
  v61 = v67;
  outlined destroy of _ViewInputs(&v60);
  v59[0] = v79;
  v59[1] = v80;
  v59[2] = v81;
  outlined destroy of _GraphInputs(v59);

  v35 = v45;
  *a7 = v39;
  *(a7 + 8) = v40;
  *(a7 + 12) = v35;
  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarGraphUtilities.MakeToolbarEnvironment and conformance ToolbarGraphUtilities.MakeToolbarEnvironment()
{
  result = lazy protocol witness table cache variable for type ToolbarGraphUtilities.MakeToolbarEnvironment and conformance ToolbarGraphUtilities.MakeToolbarEnvironment;
  if (!lazy protocol witness table cache variable for type ToolbarGraphUtilities.MakeToolbarEnvironment and conformance ToolbarGraphUtilities.MakeToolbarEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarGraphUtilities.MakeToolbarEnvironment and conformance ToolbarGraphUtilities.MakeToolbarEnvironment);
  }

  return result;
}

uint64_t static ToolbarGraphUtilities.makePreferenceInputs()()
{
  PreferenceKeys.init()();
  Attribute.init<A>(body:value:flags:update:)();

  PreferencesInputs.init(hostKeys:)();
  PreferenceKeys.add(_:)();
  PreferenceKeys.add(_:)();
  PreferenceKeys.add(_:)();
  return PreferenceKeys.add(_:)();
}

unint64_t lazy protocol witness table accessor for type ToolbarGraphUtilities.InvalidateBridge and conformance ToolbarGraphUtilities.InvalidateBridge()
{
  result = lazy protocol witness table cache variable for type ToolbarGraphUtilities.InvalidateBridge and conformance ToolbarGraphUtilities.InvalidateBridge;
  if (!lazy protocol witness table cache variable for type ToolbarGraphUtilities.InvalidateBridge and conformance ToolbarGraphUtilities.InvalidateBridge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarGraphUtilities.InvalidateBridge and conformance ToolbarGraphUtilities.InvalidateBridge);
  }

  return result;
}

uint64_t closure #1 in static ToolbarModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ToolbarModifier();
  v6 = *(v5 + 44);
  v10[2] = v5;
  v10[3] = a3;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, partial apply for closure #1 in static PointerOffset.of(_:), v10, a3, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

uint64_t static TupleToolbarContent._makeToolbar(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a2;
  v36 = a2[1];
  v37 = v4;
  v38[0] = v5;
  *(v38 + 12) = *(a2 + 60);
  v7 = *a1;
  v35 = v6;
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA014ToolbarContentD0V_Tt1g5(a3, v33);
  *&v33[8] = v35;
  *&v33[68] = *(v38 + 12);
  *&v33[56] = v38[0];
  *&v33[40] = v37;
  v8 = *v33;
  *&v33[24] = v36;
  *&v33[88] = 0;
  *&v34 = 0;
  *(&v34 + 1) = MEMORY[0x1E69E7CC0];
  *v33 = v7;
  v9 = *(v8 + 16);
  if (v9)
  {
    outlined init with copy of _ToolbarInputs(&v35, v32);
    v10 = (v8 + 40);
    do
    {
      v11 = *v10;
      v10 = (v10 + 24);
      *&v33[88] = AGTupleElementOffset();
      v32[0] = v11;
      v12 = type metadata accessor for TupleToolbarContent.Visitor();
      TypeConformance<>.visitType<A>(visitor:)(v33, v12, &protocol witness table for TupleToolbarContent<A>.Visitor);
      --v9;
    }

    while (v9);

    v13 = *(&v34 + 1);
  }

  else
  {
    outlined init with copy of _ToolbarInputs(&v35, v32);

    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v13 + 16);
  if (v14)
  {
    *&v32[0] = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = *&v32[0];
    v16 = (v13 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      *&v32[0] = v15;
      v19 = *(v15 + 16);
      v20 = *(v15 + 24);

      if (v19 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v19 + 1, 1);
        v15 = *&v32[0];
      }

      v16 += 6;
      *(v15 + 16) = v19 + 1;
      v21 = v15 + 16 * v19;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      --v14;
    }

    while (v14);
  }

  PreferencesOutputs.init()();
  v30 = *&v32[0];
  v31 = DWORD2(v32[0]);
  v22 = *(*&v38[0] + 16);
  if (v22)
  {
    lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();

    v23 = 1;
    do
    {
      v24 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v24(v32, 0);
      static PreferenceKey.visitKey<A>(_:)();
      ++v23;
    }

    while (v23 - v22 != 1);
  }

  else
  {
  }

  v25 = (*(&v34 + 1) + 48);
  if (!*(*(&v34 + 1) + 16))
  {
    v25 = &v38[1];
  }

  v26 = *v25;

  *a4 = v30;
  *(a4 + 8) = v31;
  *(a4 + 16) = v26;
  v32[4] = *&v33[64];
  v32[5] = *&v33[80];
  v32[6] = v34;
  v32[0] = *v33;
  v32[1] = *&v33[16];
  v32[2] = *&v33[32];
  v32[3] = *&v33[48];
  v27 = type metadata accessor for TupleToolbarContent.Visitor();
  return (*(*(v27 - 8) + 8))(v32, v27);
}

uint64_t _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA014ToolbarContentD0V_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static ToolbarContentDescriptor.typeCache;
  if (*(static ToolbarContentDescriptor.typeCache + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    *a2 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    lazy protocol witness table accessor for type ToolbarContentDescriptor and conformance ToolbarContentDescriptor();
    TupleTypeDescription.init(_:)();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = static ToolbarContentDescriptor.typeCache;
    static ToolbarContentDescriptor.typeCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a1, isUniquelyReferenced_nonNull_native);
    static ToolbarContentDescriptor.typeCache = v9;
    result = swift_endAccess();
    *a2 = v10;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarContentDescriptor and conformance ToolbarContentDescriptor()
{
  result = lazy protocol witness table cache variable for type ToolbarContentDescriptor and conformance ToolbarContentDescriptor;
  if (!lazy protocol witness table cache variable for type ToolbarContentDescriptor and conformance ToolbarContentDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarContentDescriptor and conformance ToolbarContentDescriptor);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<ToolbarContentDescriptor>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<ToolbarContentDescriptor>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for TupleTypeDescription<ToolbarContentDescriptor>, lazy protocol witness table accessor for type ToolbarContentDescriptor and conformance ToolbarContentDescriptor, &type metadata for ToolbarContentDescriptor, MEMORY[0x1E697FAA8]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<ToolbarContentDescriptor>>);
    }
  }
}

uint64_t initializeWithCopy for _ToolbarInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

void type metadata accessor for Binding<Int>?()
{
  if (!lazy cache variable for type metadata for Binding<Int>?)
  {
    type metadata accessor for _ContiguousArrayStorage<PreferencesOutputs>(255, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<Int>?);
    }
  }
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TATm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(v4 + 16);
  v8 = *(v4 + 24);
  v10 = a3(0);
  return a4(a1, v10, v9, v8, a2);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TATm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(v4 + 16);
  v8 = *(v4 + 24);
  v10 = a3(0);
  return a4(a1, v10, v9, v8, a2);
}

unint64_t lazy protocol witness table accessor for type ToolbarGraphUtilities.HostKeys and conformance ToolbarGraphUtilities.HostKeys()
{
  result = lazy protocol witness table cache variable for type ToolbarGraphUtilities.HostKeys and conformance ToolbarGraphUtilities.HostKeys;
  if (!lazy protocol witness table cache variable for type ToolbarGraphUtilities.HostKeys and conformance ToolbarGraphUtilities.HostKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarGraphUtilities.HostKeys and conformance ToolbarGraphUtilities.HostKeys);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<PreferencesOutputs>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t TupleToolbarContent.Visitor.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v8 = v33;
  *&v35[12] = *(v4 + 68);
  v9 = *(v4 + 24);
  v10 = *(v4 + 56);
  v34 = *(v4 + 40);
  *v35 = v10;
  v33[0] = *(v4 + 8);
  v33[1] = v9;
  v29 = v33[0];
  v30 = v9;
  v31 = v34;
  v32 = v10;
  v11 = *(v4 + 11);
  v12 = *(v4 + 12);
  v13 = *&v35[16] + v12;
  if (__OFADD__(*&v35[16], v12))
  {
    __break(1u);
  }

  else
  {
    v6 = *&v35[24];
    outlined init with copy of _ToolbarInputs(v33, v38);
    type metadata accessor for TupleToolbarContent();
    type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    AGGraphCreateOffsetAttribute2();
    _GraphValue.init(_:)();
    v36[2] = v31;
    *v37 = v32;
    v36[0] = v29;
    v36[1] = v30;
    *&v37[16] = v13;
    *&v37[24] = v6;
    v23 = v31;
    *v24 = v32;
    *&v24[12] = *&v37[12];
    v21 = v29;
    v22 = v30;
    v16 = *(a4 + 32);
    outlined init with copy of _ToolbarInputs(v36, v38);
    v16(&v26, v25, &v21, a3, a4);
    v38[2] = v23;
    v39[0] = *v24;
    *(v39 + 12) = *&v24[12];
    v38[0] = v21;
    v38[1] = v22;
    outlined destroy of _ToolbarInputs(v38);
    v11 = v26;
    LODWORD(v8) = v27;
    v5 = v28;
    *(v4 + 12) = v28 + v12;
    v4 = *(v4 + 13);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
LABEL_3:
  v18 = *(v4 + 2);
  v17 = *(v4 + 3);
  if (v18 >= v17 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v4);
  }

  v21 = v29;
  v22 = v30;
  v23 = v31;
  *v24 = v32;
  *&v24[16] = v13;
  *&v24[24] = v6;
  result = outlined destroy of _ToolbarInputs(&v21);
  *(v4 + 2) = v18 + 1;
  v20 = &v4[24 * v18];
  *(v20 + 4) = v11;
  *(v20 + 10) = v8;
  *(v20 + 6) = v5;
  *(v7 + 13) = v4;
  return result;
}

uint64_t destroy for TupleNavigationDestination.Collector()
{
}

uint64_t *closure #1 in View.renderContainerBackgroundInHostingView<A>(_:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if (v3 < 0)
  {
    v4 = 0;
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v4 = *result;

    result = static Edge.Set.all.getter();
    v5 = result;
    v6 = -1;
  }

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 18) = v3 < 0;
  return result;
}

uint64_t storeEnumTagSinglePayload for VibrantColorForegroundStyle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18BE96E4C()
{
  type metadata accessor for _ViewModifier_Content<BarPocketModifier>();
  type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketElementInteractionRepresentable>();
  type metadata accessor for SceneList.Item?(255, &lazy cache variable for type metadata for BarMagicPocketStyle.Role?, &type metadata for BarMagicPocketStyle.Role, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type _ViewModifier_Content<BarPocketModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<BarPocketModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<BarPocketModifier>);
  lazy protocol witness table accessor for type _ViewModifier_Content<BarPocketModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type CoreInteractionRepresentableAdaptor<ScrollPocketElementInteractionRepresentable> and conformance CoreInteractionRepresentableAdaptor<A>, type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketElementInteractionRepresentable>);
  lazy protocol witness table accessor for type BarMagicPocketStyle.Role? and conformance <A> A?();
  return swift_getOpaqueTypeConformance2();
}

double one-time initialization function for navigationBarTrailing()
{
  static ToolbarItemPlacement.navigationBarTrailing = 10;
  result = 0.0;
  unk_1EAA0AC28 = 0u;
  unk_1EAA0AC38 = 0u;
  byte_1EAA0AC48 = 2;
  return result;
}

uint64_t initializeWithCopy for ToolbarMakeEntries(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v3 = *(a2 + 72);
  *(a1 + 72) = v3;
  *(a1 + 80) = *(a2 + 80);
  v4 = v3;
  return a1;
}

void type metadata accessor for StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>();
    lazy protocol witness table accessor for type DefaultToolbarBarPocketModifier and conformance DefaultToolbarBarPocketModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultToolbarBarPocketModifier and conformance DefaultToolbarBarPocketModifier()
{
  result = lazy protocol witness table cache variable for type DefaultToolbarBarPocketModifier and conformance DefaultToolbarBarPocketModifier;
  if (!lazy protocol witness table cache variable for type DefaultToolbarBarPocketModifier and conformance DefaultToolbarBarPocketModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultToolbarBarPocketModifier and conformance DefaultToolbarBarPocketModifier);
  }

  return result;
}

uint64_t static ToolbarContent.makeViewList<A>(placement:content:inputs:)(int a1, int *a2, __int128 *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3[1];
  v23 = *a3;
  v24 = v4;
  v6 = *a3;
  v5 = a3[1];
  v25 = a3[2];
  v7 = *a2;
  *v19 = v6;
  *&v19[16] = v5;
  *&v19[32] = a3[2];
  outlined init with copy of _GraphInputs(&v23, v21);
  _ViewListInputs.init(_:)();
  if ((~v22 & 0xC) != 0)
  {
    v22 |= 0xCuLL;
  }

  type metadata accessor for SubscriptionLifetime<ObservableObjectPublisher>(0, &lazy cache variable for type metadata for SubscriptionLifetime<ObservableObjectPublisher>, MEMORY[0x1E697FA78]);
  swift_allocObject();
  outlined init with copy of _GraphInputs(&v23, v19);
  v8 = SubscriptionLifetime.init()();
  v9 = Attribute.init<A>(body:value:flags:update:)();
  v14 = v23;
  v15 = v24;
  v16 = v25;
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  AGCreateWeakAttribute();
  type metadata accessor for SubscriptionLifetime<ObservableObjectPublisher>(0, &lazy cache variable for type metadata for AttributeInvalidatingSubscriber<ObservableObjectPublisher>, MEMORY[0x1E6980A48]);
  swift_allocObject();
  v10 = AttributeInvalidatingSubscriber.init(host:attribute:)();
  *v19 = a1;
  *&v19[4] = v9;
  *&v19[40] = v16;
  *&v19[24] = v15;
  *&v19[8] = v14;
  *&v19[56] = v10;
  v20 = v8;
  v16 = *&v19[32];
  v17 = *&v19[48];
  v18 = v8;
  v14 = *v19;
  v15 = *&v19[16];
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of ToolbarPlacementEnvironment(v19, v13);
  lazy protocol witness table accessor for type ToolbarPlacementEnvironment and conformance ToolbarPlacementEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ToolbarPlacementEnvironment(v19);
  _GraphInputs.environment.setter();
  v13[0] = v7;
  static View.makeDebuggableViewList(view:inputs:)();
  v11 = _ViewListOutputs.makeAttribute(inputs:)();
  outlined destroy of ToolbarPlacementEnvironment(v19);
  outlined destroy of _ViewListOutputs(&v14);
  outlined destroy of _ViewListInputs(v21);
  return v11;
}

void type metadata accessor for SubscriptionLifetime<ObservableObjectPublisher>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ObservableObjectPublisher();
    v7 = a3(a1, v6, MEMORY[0x1E695BFE0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t initializeWithCopy for ToolbarPlacementEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

unint64_t lazy protocol witness table accessor for type ToolbarPlacementEnvironment and conformance ToolbarPlacementEnvironment()
{
  result = lazy protocol witness table cache variable for type ToolbarPlacementEnvironment and conformance ToolbarPlacementEnvironment;
  if (!lazy protocol witness table cache variable for type ToolbarPlacementEnvironment and conformance ToolbarPlacementEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarPlacementEnvironment and conformance ToolbarPlacementEnvironment);
  }

  return result;
}

uint64_t destroy for ToolbarPlacementEnvironment()
{
}

uint64_t storeEnumTagSinglePayload for ToolbarItemPlacement.Role(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolbarItemPlacement.Role(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<DefaultToolbarBarPocketModifier>, BarPocketModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

void type metadata accessor for ModifiedContent<_ViewModifier_Content<DefaultToolbarBarPocketModifier>, BarPocketModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<DefaultToolbarBarPocketModifier>, BarPocketModifier>)
  {
    _s7SwiftUI26InvertedViewInputPredicateVyAA027CreatesToolbarSafeAreaInsetF0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<DefaultToolbarBarPocketModifier>, lazy protocol witness table accessor for type DefaultToolbarBarPocketModifier and conformance DefaultToolbarBarPocketModifier, &type metadata for DefaultToolbarBarPocketModifier, MEMORY[0x1E697FDE8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<DefaultToolbarBarPocketModifier>, BarPocketModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<DefaultToolbarBarPocketModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<DefaultToolbarBarPocketModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<DefaultToolbarBarPocketModifier> and conformance _ViewModifier_Content<A>)
  {
    _s7SwiftUI26InvertedViewInputPredicateVyAA027CreatesToolbarSafeAreaInsetF0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<DefaultToolbarBarPocketModifier>, lazy protocol witness table accessor for type DefaultToolbarBarPocketModifier and conformance DefaultToolbarBarPocketModifier, &type metadata for DefaultToolbarBarPocketModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<DefaultToolbarBarPocketModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BarPocketModifier and conformance BarPocketModifier()
{
  result = lazy protocol witness table cache variable for type BarPocketModifier and conformance BarPocketModifier;
  if (!lazy protocol witness table cache variable for type BarPocketModifier and conformance BarPocketModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BarPocketModifier and conformance BarPocketModifier);
  }

  return result;
}

uint64_t type metadata accessor for CoreInteractionRepresentableAdaptor()
{
  return __swift_instantiateGenericMetadata();
}

{
  return __swift_instantiateGenericMetadata();
}

uint64_t getEnumTagSinglePayload for VibrantColorForegroundStyle(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

void type metadata accessor for _ViewModifier_Content<BarPocketModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<BarPocketModifier>)
  {
    lazy protocol witness table accessor for type BarPocketModifier and conformance BarPocketModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<BarPocketModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarMakeEntries and conformance ToolbarMakeEntries()
{
  result = lazy protocol witness table cache variable for type ToolbarMakeEntries and conformance ToolbarMakeEntries;
  if (!lazy protocol witness table cache variable for type ToolbarMakeEntries and conformance ToolbarMakeEntries)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarMakeEntries and conformance ToolbarMakeEntries);
  }

  return result;
}

uint64_t implicit closure #1 in static ToolbarContent.makeToolbarOutputs(placement:entries:inputs:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type PreferenceTransform and conformance PreferenceTransform();
  return Attribute.init<A>(body:value:flags:update:)();
}

unint64_t lazy protocol witness table accessor for type PreferenceTransform and conformance PreferenceTransform()
{
  result = lazy protocol witness table cache variable for type PreferenceTransform and conformance PreferenceTransform;
  if (!lazy protocol witness table cache variable for type PreferenceTransform and conformance PreferenceTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferenceTransform and conformance PreferenceTransform);
  }

  return result;
}

uint64_t type metadata accessor for ToolbarButtonStyle.ResolvedBody()
{
  result = type metadata singleton initialization cache for ToolbarButtonStyle.ResolvedBody;
  if (!type metadata singleton initialization cache for ToolbarButtonStyle.ResolvedBody)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(255, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA08BordereddE0VGMaTm_0(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle, &type metadata for BorderedButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>);
    }
  }
}

void type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA08BordereddE0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for Binding<ToggleState>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860], MEMORY[0x1E69808E8]);
    v3 = type metadata accessor for StaticIf();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for Environment<ToolbarItemPlacement.Role>.Content(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type InterfaceIdiomPredicate<MacInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InterfaceIdiomPredicate<MacInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>;
  if (!lazy protocol witness table cache variable for type InterfaceIdiomPredicate<MacInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>)
  {
    type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InterfaceIdiomPredicate<MacInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>(255, a2);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI8StaticIfVyAA28StyleContextAcceptsPredicateVyAA07ToolbareF0VGAA0I21ButtonContentModifierVAA05EmptyL0VGACyxq_q0_GAA04ViewL0A2A0n5InputH0RzAaOR_AaOR0_rlWlTm_0(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>(255, a2);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey> and conformance _PreferenceTransformModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>, &type metadata for ToolbarItemBridgingPreferenceKey, &protocol witness table for ToolbarItemBridgingPreferenceKey, MEMORY[0x1E6980910]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IncludesStyledText and conformance IncludesStyledText()
{
  result = lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText;
  if (!lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText;
  if (!lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText;
  if (!lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText;
  if (!lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText;
  if (!lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText);
  }

  return result;
}

uint64_t outlined init with copy of NavigationAuthority?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NavigationState.StackContent.Key?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<AnyView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<AnyView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<AnyView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<AnyView>.HostViewGraph, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<AnyView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ReadDestinationsModifier<ResolvedNavigationDestinations>(255, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI27NavigationStackViewPositionV_AC010PositionedE11DestinationO7StorageV13SeededRequest33_EA42A490FE48784768DCEF705CD04CF4LLVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationStackViewPosition, PositionedNavigationDestination.Storage.SeededRequest>, lazy protocol witness table accessor for type NavigationStackViewPosition and conformance NavigationStackViewPosition);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 224)
    {
      outlined init with copy of (String, TabEntry)(i, &v21, &lazy cache variable for type metadata for (NavigationStackViewPosition, PositionedNavigationDestination.Storage.SeededRequest), &type metadata for NavigationStackViewPosition, &type metadata for PositionedNavigationDestination.Storage.SeededRequest, type metadata accessor for (Badge, Spacer));
      v24 = v21;
      v25[0] = v22[0];
      *(v25 + 9) = *(v22 + 9);
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v24);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 48 * result);
      v8 = v25[0];
      *v7 = v24;
      v7[1] = v8;
      *(v7 + 25) = *(v25 + 9);
      v9 = (v3[7] + 176 * result);
      v10 = v22[9];
      v11 = v22[10];
      v12 = v23[0];
      *(v9 + 156) = *(v23 + 12);
      v9[8] = v11;
      v9[9] = v12;
      v9[7] = v10;
      v13 = v22[5];
      v14 = v22[6];
      v15 = v22[8];
      v9[5] = v22[7];
      v9[6] = v15;
      v9[3] = v13;
      v9[4] = v14;
      v17 = v22[3];
      v16 = v22[4];
      *v9 = v22[2];
      v9[1] = v17;
      v9[2] = v16;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v3[2] = v20;
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

uint64_t specialized _UIHostingView.setWantsTransparentBackground(for:_:)(uint64_t result, char a2, uint64_t (*a3)(void))
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xA0);
  v5 = *(v3 + v4);
  v6 = v5 & result;
  if (a2)
  {
    if (v6 == result)
    {
      v7 = 0;
    }

    else
    {
      v7 = result;
    }

    v8 = v7 | v5;
    *(v3 + v4) = v8;
    if ((v5 != 0) == (v8 == 0))
    {
      return a3();
    }
  }

  else
  {
    if (v6)
    {
      v9 = ~result;
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v5;
    *(v3 + v4) = v10;
    if (v5)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      return a3();
    }
  }

  return result;
}

unsigned __int8 *ContainerBackgroundBridge.backgroundPlacement.didset(unsigned __int8 *result)
{
  v2 = v1;
  v3 = *result;
  v4 = *(v1 + 145);
  if (v3 != 5)
  {
    if (v3 == v4)
    {
      return result;
    }

LABEL_5:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(v1 + 64);
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 8);
      v9 = *(v8 + 8);
      v10 = Strong;
      v11 = v9(ObjectType, v8);

      if (*(v2 + 145) != 5)
      {
        ContainerBackgroundKind.Builtin.addPreference(to:)(v11);
      }

      v12 = *(v2 + 145);
      v13 = swift_getObjectType();
      v14 = v10;
      v9(v13, v8);

      if (v12 == 5)
      {
        GraphHost.removePreference<A>(_:)();

LABEL_11:
        v15 = *(v2 + 72);
        v16 = *(v2 + 80);
        v17 = *(v2 + 88);
        v18 = *(v2 + 96);
        *(v2 + 80) = 0;
        *(v2 + 88) = 0;
        *(v2 + 72) = 0;
        *(v2 + 96) = xmmword_18CD6A6D0;
        outlined consume of ContainerBackgroundValue?(v15, v16, v17, v18);
        ContainerBackgroundBridge.lastContainerBackground.didset();

        v19 = 1;
        result = swift_beginAccess();
        *(v2 + 48) = 0;
LABEL_14:
        *(v2 + 52) = v19;
        return result;
      }

      GraphHost.addPreference<A>(_:)();
    }

    else if (*(v1 + 145) == 5)
    {
      goto LABEL_11;
    }

    result = swift_beginAccess();
    v19 = 0;
    *(v2 + 48) = -1;
    goto LABEL_14;
  }

  if (v4 != 5)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t ContainerBackgroundKind.Builtin.addPreference(to:)(uint64_t a1)
{
  v3 = *v1;
  if (v3 <= 1)
  {
    v6 = &type metadata for ContainerBackgroundKeys.NavigationKey;
    v7 = &protocol witness table for ContainerBackgroundKeys.NavigationKey;
    v8 = v3 == 0;
    if (*v1)
    {
      v9 = &protocol witness table for ContainerBackgroundKeys.NavigationSplitViewKey;
    }

    else
    {
      v9 = &protocol witness table for ContainerBackgroundKeys.NavigationKey;
    }

    if (!v8)
    {
      v7 = &protocol witness table for ContainerBackgroundKeys.NavigationSplitViewKey;
      v6 = &type metadata for ContainerBackgroundKeys.NavigationSplitViewKey;
    }
  }

  else
  {
    if (v3 == 2 || v3 != 3)
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
      return outlined destroy of (ContainerBackgroundPlacementKey & HostPreferenceKey)?(&v16);
    }

    v6 = &type metadata for ContainerBackgroundKeys.PresentationKey;
    v7 = &protocol witness table for ContainerBackgroundKeys.PresentationKey;
    v9 = &protocol witness table for ContainerBackgroundKeys.PresentationKey;
  }

  v16 = 0uLL;
  *&v17 = 0;
  *(&v17 + 1) = v6;
  *&v18 = v7;
  *(&v18 + 1) = v9;
  outlined init with take of MutableCollection & RangeReplaceableCollection(&v16, &v19);
  v10 = v20;
  v11 = v21;
  v12 = v22;
  v13 = __swift_project_boxed_opaque_existential_1(&v19, v20);
  MEMORY[0x1EEE9AC00](v13);
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = v12;
  v15[5] = partial apply for closure #1 in ContainerBackgroundKind.Builtin.addPreference(to:);
  v15[6] = a1;
  static ContainerBackgroundKind.Builtin.apply<A, B>(key:_:)(v14, thunk for @callee_guaranteed (@unowned @thick ContainerBackgroundPlacementKey & HostPreferenceKey.Type) -> ()partial apply, v15, v10);
  return __swift_destroy_boxed_opaque_existential_1(&v19);
}

BOOL _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA0C6ValuesV020ToolbarUpdateContextD033_0E31079E853BF37F2F0477B683D77398LLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  outlined init with copy of AnyAccessibilityValue?(a1, v7, &lazy cache variable for type metadata for Toolbar.UpdateContext?);
  outlined init with copy of AnyAccessibilityValue?(a2, v9, &lazy cache variable for type metadata for Toolbar.UpdateContext?);
  if (!v8)
  {
    if (!v10)
    {
      outlined destroy of AnyAccessibilityValue?(v7, &lazy cache variable for type metadata for Toolbar.UpdateContext?);
      return 1;
    }

LABEL_7:
    outlined destroy of (Toolbar.UpdateContext?, Toolbar.UpdateContext?)(v7, &lazy cache variable for type metadata for (Toolbar.UpdateContext?, Toolbar.UpdateContext?), &lazy cache variable for type metadata for Toolbar.UpdateContext?);
    return 0;
  }

  outlined init with copy of AnyAccessibilityValue?(v7, v6, &lazy cache variable for type metadata for Toolbar.UpdateContext?);
  if (!v10)
  {
    outlined destroy of Toolbar.UpdateContext(v6);
    goto LABEL_7;
  }

  outlined init with take of Toolbar.UpdateContext(v9, v5);
  v3 = specialized static Toolbar.UpdateContext.== infix(_:_:)(v6, v5);
  outlined destroy of Toolbar.UpdateContext(v5);
  outlined destroy of Toolbar.UpdateContext(v6);
  outlined destroy of AnyAccessibilityValue?(v7, &lazy cache variable for type metadata for Toolbar.UpdateContext?);
  return v3;
}

uint64_t NavigationState.stackContent(for:)@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v8 = *(v4 + 24);
  if (a2 == 4)
  {
    __src[0] = *v5;
    *&__src[1] = *(v5 + 16);
    *(&__src[1] + 1) = v8;
    v9 = *(v5 + 112);
    __src[6] = *(v5 + 96);
    __src[7] = v9;
    __src[8] = *(v5 + 128);
    *(&__src[8] + 10) = *(v5 + 138);
    v10 = *(v5 + 48);
    __src[2] = *(v5 + 32);
    __src[3] = v10;
    v11 = *(v5 + 80);
    __src[4] = *(v5 + 64);
    __src[5] = v11;
    return NavigationState.mergedStackContent(for:columnCount:)(result, a3, a4);
  }

  if (*(v8 + 16))
  {
    v13 = result;
    result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2, a3);
    if (v14)
    {
      outlined init with copy of NavigationColumnState(*(v8 + 56) + 360 * result, __src);
      v15 = 0;
      if (a2 <= 1u)
      {
        if (a2)
        {
          v25 = 0u;
          v16 = 0;
          if (!*(v8 + 16))
          {
LABEL_18:
            v15 = 0;
            v18 = 0uLL;
            goto LABEL_19;
          }

LABEL_16:
          v19 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v16, a3);
          if (v20)
          {
            outlined init with copy of NavigationColumnState(*(v8 + 56) + 360 * v19, v33);
            v28 = v35;
            v29 = v36;
            v30 = v37;
            v31 = v38;
            v32 = v39;
            v27 = v34;
            outlined init with copy of ResolvedNavigationDestinations(&v27, v26);
            outlined destroy of NavigationColumnState(v33);
            v24 = v28;
            v25 = v27;
            v22 = v30;
            v23 = v29;
            v21 = v31;
            v15 = v32;
LABEL_20:
            result = memcpy(a4, __src, 0x163uLL);
            *(a4 + 360) = v25;
            *(a4 + 376) = v24;
            *(a4 + 392) = v23;
            *(a4 + 408) = v22;
            *(a4 + 424) = v21;
            *(a4 + 55) = v15;
            v17 = 1;
            goto LABEL_21;
          }

          goto LABEL_18;
        }
      }

      else
      {
        if (a2 == 2)
        {
          v25 = 0u;
          v16 = a3 == 3;
          if (!*(v8 + 16))
          {
            goto LABEL_18;
          }

          goto LABEL_16;
        }

        if (a2 != 3)
        {
          v25 = 0u;
          v16 = 2;
          if (!*(v8 + 16))
          {
            goto LABEL_18;
          }

          goto LABEL_16;
        }
      }

      v18 = 0uLL;
      v25 = 0u;
LABEL_19:
      v23 = v18;
      v24 = v18;
      v21 = v18;
      v22 = v18;
      goto LABEL_20;
    }
  }

  a4[26] = 0u;
  a4[27] = 0u;
  a4[24] = 0u;
  a4[25] = 0u;
  a4[22] = 0u;
  a4[23] = 0u;
  a4[20] = 0u;
  a4[21] = 0u;
  a4[18] = 0u;
  a4[19] = 0u;
  a4[16] = 0u;
  a4[17] = 0u;
  a4[14] = 0u;
  a4[15] = 0u;
  a4[12] = 0u;
  a4[13] = 0u;
  a4[10] = 0u;
  a4[11] = 0u;
  a4[8] = 0u;
  a4[9] = 0u;
  a4[6] = 0u;
  a4[7] = 0u;
  a4[4] = 0u;
  a4[5] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  v17 = -1;
LABEL_21:
  *(a4 + 448) = v17;
  return result;
}

uint64_t initializeWithCopy for NavigationState.Base(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 448);
  if (v4 >= 3)
  {
    v4 = *a2 + 3;
  }

  if (v4 == 2)
  {
    *a1 = *a2;
    v10 = (a1 + 8);
    v11 = *(a2 + 24);

    if (v11 == 1)
    {
      v12 = *(a2 + 24);
      v13 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v13;
      *(a1 + 72) = *(a2 + 72);
      *v10 = *(a2 + 8);
      *(a1 + 24) = v12;
LABEL_34:
      v14 = 2;
      goto LABEL_53;
    }

    *(a1 + 8) = *(a2 + 8);
    if (v11)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v11;
      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
    }

    v21 = *(a2 + 40);
    *(a1 + 33) = *(a2 + 33);
    if (v21)
    {
      v22 = *(a2 + 48);
      *(a1 + 40) = v21;
      *(a1 + 48) = v22;

      v23 = *(a2 + 64);
      if (v23)
      {
LABEL_30:
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = v23;
        *(a1 + 72) = *(a2 + 72);

LABEL_33:
        *(a1 + 73) = *(a2 + 73);
        goto LABEL_34;
      }
    }

    else
    {
      *(a1 + 40) = *(a2 + 40);
      v23 = *(a2 + 64);
      if (v23)
      {
        goto LABEL_30;
      }
    }

    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    goto LABEL_33;
  }

  if (v4 == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    v5 = *(a2 + 48);
    if (v5)
    {
      *(a1 + 40) = *(a2 + 40);
      v6 = *(a2 + 56);
      v7 = *(a2 + 64);
      *(a1 + 48) = v5;
      *(a1 + 56) = v6;
      v8 = *(a2 + 72);
      v9 = *(a2 + 80);
      *(a1 + 64) = v7;
      *(a1 + 72) = v8;
      *(a1 + 80) = v9;
      *(a1 + 88) = *(a2 + 88);
    }

    else
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
    }

    *(a1 + 92) = *(a2 + 92);
    v15 = *(a2 + 104);
    if (v15)
    {
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = v15;
      *(a1 + 112) = *(a2 + 112);
    }

    else
    {
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = *(a2 + 112);
    }

    v16 = *(a2 + 208);
    if (*(a2 + 240))
    {
      if (v16 == 255)
      {
        *(a1 + 152) = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 184) = *(a2 + 184);
        *(a1 + 193) = *(a2 + 193);
        *(a1 + 120) = *(a2 + 120);
        *(a1 + 136) = *(a2 + 136);
      }

      else if (v16)
      {
        *(a1 + 120) = *(a2 + 120);
        v17 = *(a2 + 152);

        if (v17)
        {
          v18 = *(a2 + 160);
          *(a1 + 152) = v17;
          *(a1 + 160) = v18;
          (**(v17 - 8))(a1 + 128, a2 + 128, v17);
        }

        else
        {
          v26 = *(a2 + 144);
          *(a1 + 128) = *(a2 + 128);
          *(a1 + 144) = v26;
          *(a1 + 160) = *(a2 + 160);
        }

        v27 = *(a2 + 176);
        if (v27 == 1)
        {
          *(a1 + 168) = *(a2 + 168);
        }

        else
        {
          *(a1 + 168) = *(a2 + 168);
          *(a1 + 176) = v27;
        }

        v28 = *(a2 + 192);
        v29 = *(a2 + 200);
        *(a1 + 184) = *(a2 + 184);
        *(a1 + 192) = v28;
        *(a1 + 200) = v29;
        *(a1 + 208) = 1;
      }

      else
      {
        v24 = *(a2 + 144);
        *(a1 + 144) = v24;
        (**(v24 - 8))(a1 + 120, a2 + 120);
        *(a1 + 208) = 0;
      }

      *(a1 + 240) = 1;
    }

    else
    {
      if (v16 == 255)
      {
        *(a1 + 152) = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 184) = *(a2 + 184);
        *(a1 + 193) = *(a2 + 193);
        *(a1 + 120) = *(a2 + 120);
        *(a1 + 136) = *(a2 + 136);
      }

      else if (v16)
      {
        *(a1 + 120) = *(a2 + 120);
        v19 = *(a2 + 152);

        if (v19)
        {
          v20 = *(a2 + 160);
          *(a1 + 152) = v19;
          *(a1 + 160) = v20;
          (**(v19 - 8))(a1 + 128, a2 + 128, v19);
        }

        else
        {
          v30 = *(a2 + 144);
          *(a1 + 128) = *(a2 + 128);
          *(a1 + 144) = v30;
          *(a1 + 160) = *(a2 + 160);
        }

        v31 = *(a2 + 176);
        if (v31 == 1)
        {
          *(a1 + 168) = *(a2 + 168);
        }

        else
        {
          *(a1 + 168) = *(a2 + 168);
          *(a1 + 176) = v31;
        }

        v32 = *(a2 + 192);
        v33 = *(a2 + 200);
        *(a1 + 184) = *(a2 + 184);
        *(a1 + 192) = v32;
        *(a1 + 200) = v33;
        *(a1 + 208) = 1;
      }

      else
      {
        v25 = *(a2 + 144);
        *(a1 + 144) = v25;
        (**(v25 - 8))(a1 + 120, a2 + 120);
        *(a1 + 208) = 0;
      }

      v34 = *(a2 + 224);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = v34;
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = 0;
    }

    v35 = *(a2 + 256);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 256) = v35;
    v36 = *(a2 + 272);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = v36;
    v37 = *(a2 + 288);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 288) = v37;
    v38 = *(a2 + 304);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 304) = v38;
    v39 = *(a2 + 312);
    *(a1 + 328) = *(a2 + 328);
    *(a1 + 312) = v39;
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 344) = *(a2 + 344);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 353) = *(a2 + 353);
    v40 = *(a2 + 360);

    if (v40)
    {
      v41 = *(a2 + 368);
      v42 = *(a2 + 376);
      *(a1 + 360) = v40;
      *(a1 + 368) = v41;
      v43 = *(a2 + 384);
      v44 = *(a2 + 392);
      *(a1 + 376) = v42;
      *(a1 + 384) = v43;
      v45 = *(a2 + 400);
      v46 = *(a2 + 408);
      *(a1 + 392) = v44;
      *(a1 + 400) = v45;
      v47 = *(a2 + 416);
      *(a1 + 408) = v46;
      *(a1 + 416) = v47;
      *(a1 + 440) = *(a2 + 440);
      *(a1 + 424) = *(a2 + 424);
    }

    else
    {
      v48 = *(a2 + 408);
      *(a1 + 392) = *(a2 + 392);
      *(a1 + 408) = v48;
      *(a1 + 424) = *(a2 + 424);
      *(a1 + 440) = *(a2 + 440);
      v49 = *(a2 + 376);
      *(a1 + 360) = *(a2 + 360);
      *(a1 + 376) = v49;
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

LABEL_53:
  *(a1 + 448) = v14;
  return a1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI7ToolbarO11BarLocationO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        outlined init with copy of Toolbar.BarLocation(v3, v8);
        outlined init with copy of Toolbar.BarLocation(v4, v7);
        v5 = specialized static Toolbar.BarLocation.== infix(_:_:)(v8, v7);
        outlined destroy of Toolbar.BarLocation(v7);
        outlined destroy of Toolbar.BarLocation(v8);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 40;
        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void type metadata accessor for PushTarget?()
{
  if (!lazy cache variable for type metadata for PushTarget?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PushTarget?);
    }
  }
}

uint64_t outlined destroy of (PushTarget?, PushTarget?)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for NavigationState.StackContent(uint64_t result)
{
  v1 = result;
  v2 = *(result + 448);
  if (v2 == 2)
  {

    v4 = *(v1 + 24);
    if (v4)
    {
      if (v4 == 1)
      {
        return result;
      }
    }

    if (*(v1 + 40))
    {
    }

    if (*(v1 + 64))
    {

LABEL_34:
    }
  }

  else if (v2 == 1)
  {
    if (*(result + 48))
    {
    }

    if (*(v1 + 104))
    {
    }

    v3 = *(v1 + 208);
    if (*(v1 + 240))
    {
      if (v3 != 255)
      {
        if (v3)
        {

          if (*(v1 + 152))
          {
            __swift_destroy_boxed_opaque_existential_1(v1 + 128);
          }

          if (*(v1 + 176) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v1 + 120);
        }
      }
    }

    else
    {
      if (v3 != 255)
      {
        if (v3)
        {

          if (*(v1 + 152))
          {
            __swift_destroy_boxed_opaque_existential_1(v1 + 128);
          }

          if (*(v1 + 176) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v1 + 120);
        }
      }
    }

    result = *(v1 + 360);
    if (result)
    {

      goto LABEL_34;
    }
  }

  return result;
}

id UIKitNavigationController.init(rootViewController:)(void *a1)
{
  v1[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isDataDriven] = 0;
  v3 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_update;
  type metadata accessor for PlatformBarUpdater();
  v4 = swift_allocObject();
  v4[2] = specialized InferredToolbarState.init()();
  v4[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ToolbarPlacementV4RoleO_AC0E23AppearanceConfigurationVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4[5] = 0;
  swift_unknownObjectWeakInit();
  v5 = MEMORY[0x1E69E7CD0];
  v4[7] = 0;
  v4[8] = 0;
  v4[6] = v5;
  *&v1[v3] = v4;
  v1[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isTransitioningToSize] = 0;
  v6 = &v1[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_navigationAuthority];
  *v6 = xmmword_18CD633F0;
  *(v6 + 2) = 0;
  v7 = &v1[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_context];
  *v7 = xmmword_18CD67BC0;
  *(v7 + 2) = 0;
  v8 = &v1[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_platformNavigationPresentationStrategy];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v1[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isSecure] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_allowsNavigationControllerMutations] = 0;
  *&v1[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_backgroundHost] = 0;
  type metadata accessor for UIKitNavigationBar();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for UIKitToolbar();
  v10 = swift_getObjCClassFromMetadata();
  v18.receiver = v1;
  v18.super_class = type metadata accessor for UIKitNavigationController();
  v11 = objc_msgSendSuper2(&v18, sel_initWithNavigationBarClass_toolbarClass_, ObjCClassFromMetadata, v10);
  if (a1)
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_18CD69590;
    *(v12 + 32) = a1;
  }

  type metadata accessor for UIViewController();
  v13 = v11;
  v14 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 _swiftui_setViewControllers_];

  v16 = [v13 navigationBar];
  [v16 setPrefersLargeTitles_];

  return v13;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>(255, a3, a4);
    _s7SwiftUI24ReadDestinationsModifier33_EA42A490FE48784768DCEF705CD04CF4LLVyAA018ResolvedNavigationD0VGMaTm_0(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<NavigationDestinationKey>, &type metadata for NavigationDestinationKey, &protocol witness table for NavigationDestinationKey, MEMORY[0x1E6980910]);
    v5 = type metadata accessor for ModifiedContent();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12VerticalEdgeO_SdTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<VerticalEdge, Double>, lazy protocol witness table accessor for type VerticalEdge and conformance VerticalEdge);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void type metadata accessor for ReadDestinationsModifier<ResolvedNavigationDestinations>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI24ReadDestinationsModifier33_EA42A490FE48784768DCEF705CD04CF4LLVyAA018ResolvedNavigationD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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