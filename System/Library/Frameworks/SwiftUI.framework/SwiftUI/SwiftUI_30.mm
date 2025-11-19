uint64_t sub_18BF602D0()
{

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t (*ToolbarModifier.TransformSearch.value.getter())(uint64_t a1)
{
  type metadata accessor for ToolbarStorage.SearchItem?(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  Value = AGGraphGetValue();
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_1(Value, v6, type metadata accessor for ToolbarStorage.SearchItem?);
  outlined init with take of ToolbarStorage.SearchItem?(v6, v3, type metadata accessor for ToolbarStorage.SearchItem?);
  v8 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v9 = swift_allocObject();
  outlined init with take of ToolbarStorage.SearchItem?(v3, v9 + v8, type metadata accessor for ToolbarStorage.SearchItem?);
  return partial apply for closure #1 in ToolbarModifier.TransformSearch.value.getter;
}

uint64_t sub_18BF604E0()
{
  type metadata accessor for ToolbarStorage.SearchItem?(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = type metadata accessor for ToolbarStorage.SearchItem(0);
  if (!(*(*(v3 - 1) + 48))(v2, 1, v3))
  {

    type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
    v5 = *(v4 + 32);
    v6 = v5 + *(type metadata accessor for SearchFieldState(0) + 36);
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);

    v8 = v2 + v3[6];
    v9 = *(v8 + 8);
    if (v9 != 255)
    {
      outlined consume of PlatformItemCollection.Storage(*v8, v9 & 1);
    }

    v10 = v2 + v3[7];
    v11 = *(v10 + 8);
    if (v11 != 255)
    {
      outlined consume of PlatformItemCollection.Storage(*v10, v11 & 1);
    }

    outlined consume of Text.Storage(*(v2 + v3[8]), *(v2 + v3[8] + 8), *(v2 + v3[8] + 16));

    v12 = v2 + v3[10];
    if (*v12)
    {
    }

    v13 = v2 + v3[11];
    if (*v13)
    {
    }

    v14 = v2 + v3[13];
    if (*v14)
    {
    }
  }

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type FocusableBoundsTransform and conformance FocusableBoundsTransform()
{
  result = lazy protocol witness table cache variable for type FocusableBoundsTransform and conformance FocusableBoundsTransform;
  if (!lazy protocol witness table cache variable for type FocusableBoundsTransform and conformance FocusableBoundsTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusableBoundsTransform and conformance FocusableBoundsTransform);
  }

  return result;
}

void destroy for ToolbarStorage.Entry(uint64_t a1)
{
  type metadata accessor for ToolbarStorage.Entry.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    if (*(a1 + 48) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 8);
    }

    return;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      return;
    }

    if (*(a1 + 88))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 64);
    }

    if (*(a1 + 152) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 112);
    }

    __swift_destroy_boxed_opaque_existential_1(a1 + 184);

    v3 = a1 + *(type metadata accessor for ToolbarStorage.Item(0) + 68);
    v4 = type metadata accessor for PlatformItemList.Item();
    if ((*(*(v4 - 8) + 48))(v3, 1, v4))
    {
      goto LABEL_47;
    }

    v5 = *(v3 + 192);
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v7 = *(v3 + 72);
      if (v7 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v3 + 64), v7);
        v5 = *(v3 + 192);
        v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v6 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v3 + 176), *(v3 + 184), v5);
      }

      swift_unknownObjectRelease();
    }

    if (*(v3 + 264))
    {

      v8 = *(v3 + 272);
      if (v8 >= 2)
      {
      }
    }

    v9 = *(v3 + 336);
    if (v9 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(v3 + 304), *(v3 + 312), *(v3 + 320), *(v3 + 328), v9, *(v3 + 344), *(v3 + 352), *(v3 + 360), *(v3 + 368), *(v3 + 376), *(v3 + 384), *(v3 + 392), *(v3 + 400));
    }

    v10 = *(v3 + 416);
    if (v10)
    {
      if (v10 == 1)
      {
        goto LABEL_28;
      }
    }

    if (*(v3 + 432))
    {
    }

    if (*(v3 + 448))
    {
    }

LABEL_28:

    if (*(v3 + 512))
    {
    }

    if (!*(v3 + 816))
    {
LABEL_38:
      v12 = *(v3 + 864);
      if (v12)
      {
        if (v12 == 1)
        {
LABEL_43:

          v13 = v3 + *(v4 + 112);
          v14 = type metadata accessor for CommandOperation();
          if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
          {
            v15 = v13 + *(v14 + 20);
            outlined consume of Text.Storage(*v15, *(v15 + 8), *(v15 + 16));

            v16 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v17 = type metadata accessor for UUID();
            (*(*(v17 - 8) + 8))(v15 + v16, v17);
            if (*(v13 + *(v14 + 24)))
            {
            }
          }

LABEL_47:

          swift_weakDestroy();
          return;
        }

        __swift_destroy_boxed_opaque_existential_1(v3 + 840);
      }

      if (*(v3 + 880))
      {
      }

      goto LABEL_43;
    }

    v11 = *(v3 + 624);
    if (v11)
    {
      if (v11 == 1)
      {
LABEL_35:
        if (*(v3 + 776) != 1)
        {
        }

        goto LABEL_38;
      }

      __swift_destroy_boxed_opaque_existential_1(v3 + 600);
    }

    goto LABEL_35;
  }

  if (*(a1 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 32);
  }

  if (*(a1 + 120) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 80);
  }

  v18 = a1 + *(type metadata accessor for ToolbarStorage.GroupItem(0) + 60);
  v19 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v18);

LABEL_101:
      v33 = *(v18 + *(v19 + 20));

      return;
    }

    v20 = *(v18 + 192);
    v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
    if ((v20 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v22 = *(v18 + 72);
      if (v22 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v18 + 64), v22);
        v20 = *(v18 + 192);
        v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v21 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v18 + 176), *(v18 + 184), v20);
      }

      swift_unknownObjectRelease();
    }

    if (*(v18 + 264))
    {

      v23 = *(v18 + 272);
      if (v23 >= 2)
      {
      }
    }

    v24 = *(v18 + 336);
    if (v24 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(v18 + 304), *(v18 + 312), *(v18 + 320), *(v18 + 328), v24, *(v18 + 344), *(v18 + 352), *(v18 + 360), *(v18 + 368), *(v18 + 376), *(v18 + 384), *(v18 + 392), *(v18 + 400));
    }

    v25 = *(v18 + 416);
    if (v25)
    {
      if (v25 == 1)
      {
        goto LABEL_81;
      }
    }

    if (*(v18 + 432))
    {
    }

    if (*(v18 + 448))
    {
    }

LABEL_81:

    if (*(v18 + 512))
    {
    }

    if (!*(v18 + 816))
    {
LABEL_91:
      v27 = *(v18 + 864);
      if (v27)
      {
        if (v27 == 1)
        {
LABEL_96:

          v28 = v18 + *(type metadata accessor for PlatformItemList.Item() + 112);
          v29 = type metadata accessor for CommandOperation();
          if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
          {
            v30 = v28 + *(v29 + 20);
            outlined consume of Text.Storage(*v30, *(v30 + 8), *(v30 + 16));

            v31 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v32 = type metadata accessor for UUID();
            (*(*(v32 - 8) + 8))(v30 + v31, v32);
            if (*(v28 + *(v29 + 24)))
            {
            }
          }

          goto LABEL_101;
        }

        __swift_destroy_boxed_opaque_existential_1(v18 + 840);
      }

      if (*(v18 + 880))
      {
      }

      goto LABEL_96;
    }

    v26 = *(v18 + 624);
    if (v26)
    {
      if (v26 == 1)
      {
LABEL_88:
        if (*(v18 + 776) != 1)
        {
        }

        goto LABEL_91;
      }

      __swift_destroy_boxed_opaque_existential_1(v18 + 600);
    }

    goto LABEL_88;
  }
}

uint64_t assignWithCopy for ContainerBackgroundValue(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of ContainerBackgroundValue.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of ContainerBackgroundValue.Content(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

Swift::Void __swiftcall UpdateNavigationEventHandlers.updateValue()()
{
  type metadata accessor for _EnvironmentKeyTransformModifier<NavigationEventHandlers>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  outlined init with copy of NavigationAuthority?(Value, &v6);
  if (v7 == 1)
  {
    outlined destroy of NavigationAuthority?(&v6);
  }

  else
  {
    outlined init with take of NavigationAuthority(&v6, v16);
    if (*(v0 + 28) != *AGGraphGetValue() >> 1)
    {
      *(v0 + 28) = *AGGraphGetValue() >> 1;
      *(v0 + 16) = 0xFFFFFFFFLL;
      *(v0 + 24) = 0;
    }

    if (UpdateCycleDetector.dispatch(label:isDebug:)())
    {
      v2 = AGGraphGetValue();
      v3 = v2[1];
      v4 = v2[2];
      v5 = v2[3];
      v6 = *v2;
      v7 = v3;
      v8 = v4;
      v9 = v5;
      v10 = 21;
      v12 = 0u;
      v11 = 0u;
      v13 = xmmword_18CD68310;
      v14 = 0;
      v15 = 0;
      outlined copy of AppIntentExecutor?(v6);
      outlined copy of AppIntentExecutor?(v4);
      NavigationAuthority.enqueueRequest(_:)(&v6);
      outlined destroy of NavigationRequest(&v6);
    }

    outlined destroy of NavigationAuthority(v16);
  }
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
  result = outlined init with copy of PositionedNavigationDestination.Storage.SeededRequest((a1 + 6), a2 + 48);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

{
  v2 = *a1;
  v3 = *(a1 + 9);
  v5 = *(a1 + 13);
  v17 = *(a1 + 11);
  v4 = v17;
  v18 = v5;
  v19 = *(a1 + 120);
  v12 = *(a1 + 1);
  v6 = v12;
  v8 = *(a1 + 5);
  v13 = *(a1 + 3);
  v7 = v13;
  v14 = v8;
  v15 = *(a1 + 7);
  v9 = v15;
  v16 = v3;
  *(a2 + 120) = v19;
  *(a2 + 104) = v5;
  *(a2 + 88) = v4;
  *(a2 + 72) = v3;
  *(a2 + 56) = v9;
  *(a2 + 40) = v8;
  *(a2 + 24) = v7;
  *(a2 + 8) = v6;
  *a2 = v2;
  return outlined init with copy of OrnamentPresentation(&v12, v11);
}

uint64_t ToolbarInputFeature.needsUpdate(graph:)(uint64_t a1)
{
  type metadata accessor for ToolbarContentDescription?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = *(v1 + 1);
  if (v1[18] == 1 && (v10 = *v1, v11 = *(v1 + 2), v12 = *(v1 + 3), v13 = v1[16], v33 = v1[17], swift_beginAccess(), swift_unknownObjectWeakLoadStrong()) && (v14 = *(a1 + 208), ObjectType = swift_getObjectType(), v16 = type metadata accessor for ToolbarInputFeatureDelegate(), (*(v14 + 16))(&v34, v16, v16, ObjectType, v14), swift_unknownObjectRelease(), v34))
  {
    swift_unknownObjectRelease();
    v17 = *MEMORY[0x1E698D3F8];
    if (v9 != *MEMORY[0x1E698D3F8] && (type metadata accessor for [ContentToolbarPlacement.Placement : ToolbarContentDescription](), Value = AGGraphGetValue(), v19 = *Value, *(*Value + 16)) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v21 & 1) != 0))
    {
      v22 = *(v19 + 56);
      v31 = v20;
      v32 = v22;
      v23 = type metadata accessor for ToolbarContentDescription(0);
      v24 = *(v23 - 8);
      outlined init with copy of ToolbarStorage.NavigationProperties?(v32 + *(v24 + 72) * v31, v8, type metadata accessor for ToolbarContentDescription);
      (*(v24 + 56))(v8, 0, 1, v23);
    }

    else
    {
      v23 = type metadata accessor for ToolbarContentDescription(0);
      (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    }

    outlined init with copy of ToolbarStorage.NavigationProperties?(v8, v5, type metadata accessor for ToolbarContentDescription?);
    type metadata accessor for ToolbarContentDescription(0);
    if ((*(*(v23 - 8) + 48))(v5, 1, v23) == 1)
    {
      outlined destroy of CommandOperation(v5, type metadata accessor for ToolbarContentDescription?);
      v25 = v13 ^ 1;
      if (v10 == 1)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v27 = *&v5[*(v23 + 28)];
      outlined destroy of CommandOperation(v5, type metadata accessor for ToolbarContentDescription);
      if (v13)
      {
        v25 = 1;
        if (v10 == 1)
        {
LABEL_28:
          outlined destroy of CommandOperation(v8, type metadata accessor for ToolbarContentDescription?);
          return v25 & 1;
        }
      }

      else
      {
        v25 = v27 == -1 || v12 == -1 || v27 != v12;
        if (v10 == 1)
        {
          goto LABEL_28;
        }
      }
    }

    if (v11 == v17)
    {
      outlined destroy of CommandOperation(v8, type metadata accessor for ToolbarContentDescription?);
      v25 |= v33 != 2;
    }

    else
    {
      v30 = *AGGraphGetValue();
      outlined destroy of CommandOperation(v8, type metadata accessor for ToolbarContentDescription?);
      if ((v33 == 2) | v25 & 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v30 ^ v33;
      }
    }
  }

  else
  {
    v25 = v9 != *MEMORY[0x1E698D3F8];
  }

  return v25 & 1;
}

double ScrollTransitionConfiguration.Threshold.Storage.resolve(targetLength:containerLength:)(unint64_t a1, __n128 a2, __n128 a3, double a4)
{
  v4 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    v5 = 0.0;
    if (v4 == 2)
    {
      v6 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v7 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v8 = a2.n128_u64[0];
      v9 = a3.n128_u64[0];
      v10 = ScrollTransitionConfiguration.Threshold.Storage.resolve(targetLength:containerLength:)(*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10), a2, a3, 0.0);
      v11.n128_u64[0] = v8;
      v12.n128_u64[0] = v9;
      return v10 + v7 * (ScrollTransitionConfiguration.Threshold.Storage.resolve(targetLength:containerLength:)(v6, v11, v12, v13) - v10);
    }
  }

  else if (v4)
  {
    v14 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v5 = ScrollTransitionConfiguration.Threshold.Storage.resolve(targetLength:containerLength:)(*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18), a2, a3, a4) - v14;
    if (v5 <= 0.0)
    {
      return 0.0;
    }
  }

  else
  {
    return a2.n128_f64[0] * 0.5 + a3.n128_f64[0] * 0.5 - *(a1 + 16) * a2.n128_f64[0];
  }

  return v5;
}

double protocol witness for EventType.timestamp.getter in conformance TouchEvent@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t initializeWithCopy for ScrollTransitionModifier.EffectApplicationModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

void type metadata accessor for _DictionaryStorage<String, ToolbarStorage.Entry>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, ToolbarStorage.Entry>)
  {
    type metadata accessor for ToolbarStorage.Entry(255);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, ToolbarStorage.Entry>);
    }
  }
}

void outlined consume of OpenURLOptions?(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

char *specialized _UIHostingView.init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v178 = a1;
  v204 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UIHostingViewBase.Options();
  v172 = *(v4 - 8);
  v173 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v181 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v179 = &v169 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v176 = *(v8 - 8);
  v177 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v171 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v180 = &v169 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v174 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v186.receiver = v21;
  v186.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v186, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v185.receiver = v26;
  v185.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v185, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v169 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v170 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  v44 = outlined init with copy of BarItemView(v178, v2 + *((*v12 & *v2) + 0x60));
  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  (*(ObjectType + 1384))(&v189, v45);
  v46 = v189;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v187) = v46;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type BarItemView and conformance BarItemView();
  v175 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v47 = *(v175 + 88);

  v48 = v180;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v181;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v179;
  specialized OptionSet<>.insert(_:)(v179, v50);
  v53 = *(v172 + 8);
  v54 = v50;
  v55 = v173;
  v53(v54, v173);
  v53(v52, v55);
  v56 = v51(&v189, 0);
  v57 = (*(ObjectType + 1408))(v56);
  v58 = v48;
  if ((v57 & 1) == 0)
  {
    v59 = v181;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v172 = UIHostingViewBase.Configuration.options.modify();
    v60 = v179;
    specialized OptionSet<>.insert(_:)(v179, v59);
    v53(v59, v55);
    v53(v60, v55);
    (v172)(&v189, 0);
  }

  (*(v176 + 16))(v171, v58, v177);
  v61 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v62 = UIHostingViewBase.init(viewGraph:configuration:)();
  v63 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v62;

  *&v189 = specialized FocusViewGraph.init(graph:)(v64);
  *(&v189 + 1) = v65;
  LOWORD(v190) = v66 & 0x101;
  BYTE2(v190) = v67 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v189 = 0;
  WORD4(v189) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v68 = *MEMORY[0x1E698D3F8];
    v187 = 0uLL;
    *v188 = v68;
    memset(&v188[8], 0, 64);
    *&v188[72] = v169;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v192 = *&v188[32];
    v193 = *&v188[48];
    v194 = *&v188[64];
    v195 = *&v188[80];
    v189 = v187;
    v190 = *v188;
    v191 = *&v188[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v189);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BarItemView>.EnableVFDFeature, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<BarItemView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v69, &v187);
  aBlock = v187;
  v201 = *v188;
  v202 = *&v188[16];
  v203 = *&v188[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v189 = aBlock;
  v190 = v201;
  v191 = v202;
  *&v192 = v203;
  outlined destroy of AccessibilityViewGraph(&v189);
  v70 = *(v2 + v170);
  v71 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v72 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v70;
  DWORD2(aBlock) = v72;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v73 = MEMORY[0x1E69E7CC0];
  v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v201 + 1) = &type metadata for HoverEventDispatcher;
  *&v202 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v74;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v201 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v202 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v201 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v202 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v75 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v73);
  *(&v201 + 1) = &type metadata for KeyEventDispatcher;
  *&v202 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v75;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  *(v2 + *((*v63 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)();
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView);
  v184.receiver = v2;
  v184.super_class = v76;
  v77 = objc_msgSendSuper2(&v184, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BarItemView>.HostViewGraph, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<BarItemView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v78 = v77;
  ViewGraph.append<A>(feature:)();
  v79 = outlined destroy of _UIHostingView<BarItemView>.HostViewGraph(&aBlock);
  v179 = v77;
  (*((*v63 & *v78) + 0x5C0))(v79);
  v80 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v81 = aBlock;
  v181 = v47;
  if (aBlock != 1)
  {
    v82 = *(&aBlock + 1);
    v83 = v201;
    v84 = v202;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v85);
    }

    *&aBlock = v81;
    *(&aBlock + 1) = v82;
    v201 = v83;
    LOBYTE(v202) = v84 & 1;
    RepresentableContextValues.environment.getter();
    v198 = v199;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v81, v82, v83, *(&v83 + 1), v84);
    v47 = v181;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v86 = v78;

  v87 = *&v86[*((*v63 & *v86) + 0x150)];
  v88 = lazy protocol witness table accessor for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>();
  *(v87 + 40) = v88;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v174 = *((*v63 & *v86) + 0x188);
  *(*&v86[v174] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  v89 = *&v86[*((*v63 & *v86) + 0x100)];
  *(v89 + *((*v89 & *v63) + 0x60) + 8) = v88;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v90 = *&v86[*((*v63 & *v86) + 0x108)];
  *(v90 + *((*v90 & *v63) + 0x60) + 8) = v88;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v91 = specialized _UIHostingView.sheetBridge.getter();
  if (v91)
  {
    *&v91[direct field offset for SheetBridge.host + 8] = v88;
    v92 = v91;
    swift_unknownObjectWeakAssign();
  }

  v93 = *v63 & *v86;
  v94 = *&v86[*(v93 + 0x110)];
  if (v94)
  {
    v95 = *((*v94 & *v63) + 0x210);
    v96 = v94;
    v95(v47);
    outlined consume of SheetBridge<SheetPreference.Key>??(v94);
    v93 = *v63 & *v86;
  }

  v97 = *&v86[*(v93 + 280)];
  v98 = lazy protocol witness table accessor for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>();
  *(v97 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v97 + 40) = v98;
  swift_unknownObjectWeakAssign();

  v99 = FocusBridge.host.getter();
  if (v99)
  {
    v101 = v99;
    v102 = v100;
    v103 = swift_getObjectType();
    (*(*(*(v102 + 8) + 8) + 8))(v103);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v104 = *((*v63 & *v86) + 0x120);
  *(*&v86[v104] + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  v105 = *&v86[v104];
  v106 = &v105[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v107 = *(v106 + 1);
  v108 = swift_getObjectType();
  v109 = *(*(v107 + 16) + 8);
  v110 = v105;
  LOBYTE(v108) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v108, v109);
  swift_unknownObjectRelease();
  if (v108)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*&v86[*((*v63 & *v86) + 0x130)] + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  v111 = v86;
  GraphHost.addPreference<A>(_:)();
  *(*&v111[*((*v63 & *v111) + 0x138)] + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*&v111[*((*v63 & *v111) + 0x170)] + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v112 = *((*v63 & *v111) + 0x168);
  *(*&v111[v112] + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();

  v113 = *&v111[v112];
  v114 = &v113[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v115 = *(v114 + 1);
  v116 = swift_getObjectType();
  v117 = *(v115 + 8);
  v118 = *(v117 + 8);
  v119 = v113;
  v118(v116, v117);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v120 = [v111 traitCollection];

  v121 = [v120 userInterfaceIdiom];
  if (v121 == 1 || (v122 = [v111 traitCollection], v123 = objc_msgSend(v122, sel_userInterfaceIdiom), v122, v123 == 6))
  {
    v124 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v124[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v88;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v125 = *((*MEMORY[0x1E69E7D40] & *v111) + 0x178);
    v126 = *&v111[v125];
    *&v111[v125] = v124;
  }

  v127 = *&v86[v174];
  v128 = &v127[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v130 = v178;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v131 = *(v128 + 1);
  v132 = swift_getObjectType();
  v133 = *(*(v131 + 16) + 8);
  v134 = v127;
  LOBYTE(v132) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v132, v133);
  swift_unknownObjectRelease();
  v135 = v181;
  if (v132)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v136 = MEMORY[0x1E69E7D40];
  v137 = *((*MEMORY[0x1E69E7D40] & *v111) + 0x1A0);
  *(*&v111[v137] + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v88;
  v138 = swift_unknownObjectWeakAssign();
  v139 = *&v111[v137];
  MEMORY[0x1EEE9AC00](v138);
  *(&v169 - 2) = v139;
  *(&v169 - 1) = v135;
  v140 = v111;
  v141 = v139;
  static Update.ensure<A>(_:)();

  v142 = *((*v136 & *v140) + 0x78);
  v143 = *&v140[v142];
  v144 = lazy protocol witness table accessor for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v143 + 24) = v144;
  swift_unknownObjectWeakAssign();

  v145 = *&v140[v142];
  v146 = *((*v136 & *v140) + 0xE0);
  swift_beginAccess();
  *(v145 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v147 = *&v140[v146];
  v148 = *(v147 + 32);
  v149 = v180;

  if (v148)
  {
    [v140 addGestureRecognizer_];
  }

  [v140 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v150 = [v140 window];
    if (v150)
    {
      v151 = v150;
      v152 = [v150 rootViewController];

      if (v152)
      {
        v153 = [v152 viewIfLoaded];

        if (v153)
        {

          if (v153 == v140)
          {
            v196 = 0;
            v183 = 0;
            v154 = getpid();
            LODWORD(v174) = v154;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v182 = v154;
            v155 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v155);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v156 = static OS_dispatch_queue.main.getter();
            v157 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v202 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v202 + 1) = v157;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v201 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v201 + 1) = &block_descriptor_29;
            v158 = _Block_copy(&aBlock);

            v159 = String.utf8CString.getter();
            v149 = v180;

            notify_register_dispatch((v159 + 32), &v196, v156, v158);

            _Block_release(v158);

            v160 = static OS_dispatch_queue.main.getter();
            v161 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v162 = swift_allocObject();
            *(v162 + 16) = v174;
            *(v162 + 24) = v161;
            *&v202 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v202 + 1) = v162;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v201 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v201 + 1) = &block_descriptor_36;
            v163 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", &v183, v160, v163);
            _Block_release(v163);

            v164 = &v140[*((*MEMORY[0x1E69E7D40] & *v140) + 0xE8)];
            *v164 = v196 | (v183 << 32);
            v164[8] = 0;
          }
        }
      }
    }
  }

  v165 = [objc_opt_self() defaultCenter];
  [v165 addObserver:v140 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v166 = one-time initialization token for didUpdateListLayout;
  v167 = v140;
  if (v166 != -1)
  {
    swift_once();
  }

  [v165 addObserver:v167 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v197 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v196, v167);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v176 + 8))(v149, v177);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v176 + 8))(v149, v177);
  }

  static Update.end()();
  outlined destroy of BarItemView(v130);
  return v167;
}

{
  v2 = v1;
  v179 = a1;
  v205 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UIHostingViewBase.Options();
  v173 = *(v4 - 8);
  v174 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v181 = &v170 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v176 = &v170 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v177 = *(v8 - 8);
  v178 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v172 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v180 = &v170 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v175 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v187.receiver = v21;
  v187.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v187, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v186.receiver = v26;
  v186.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v186, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v170 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v171 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  v44 = outlined init with copy of ModifiedContent<TableRowView, CollectionViewCellModifier>(v179, v2 + *((*v12 & *v2) + 0x60), &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  (*(ObjectType + 1384))(&v190, v45);
  v46 = v190;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
  LOBYTE(v188) = v46;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type ModifiedContent<TableRowView, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>();
  v47 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v182 = *(v47 + 88);

  v48 = v180;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v181;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v176;
  specialized OptionSet<>.insert(_:)(v176, v50);
  v53 = *(v173 + 8);
  v54 = v50;
  v55 = v174;
  v53(v54, v174);
  v53(v52, v55);
  v56 = v51(&v190, 0);
  v57 = (*(ObjectType + 1408))(v56);
  v58 = v48;
  if ((v57 & 1) == 0)
  {
    v59 = v181;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v60 = UIHostingViewBase.Configuration.options.modify();
    v61 = v176;
    specialized OptionSet<>.insert(_:)(v176, v59);
    v53(v59, v55);
    v53(v61, v55);
    v60(&v190, 0);
    v58 = v180;
  }

  (*(v177 + 16))(v172, v58, v178);
  v62 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v174 = v47;
  v63 = UIHostingViewBase.init(viewGraph:configuration:)();
  v64 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v63;
  v65 = v182;

  *&v190 = specialized FocusViewGraph.init(graph:)(v66);
  *(&v190 + 1) = v67;
  LOWORD(v191) = v68 & 0x101;
  BYTE2(v191) = v69 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v190 = 0;
  WORD4(v190) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v70 = *MEMORY[0x1E698D3F8];
    v188 = 0uLL;
    *v189 = v70;
    memset(&v189[8], 0, 64);
    *&v189[72] = v170;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v193 = *&v189[32];
    v194 = *&v189[48];
    v195 = *&v189[64];
    v196 = *&v189[80];
    v190 = v188;
    v191 = *v189;
    v192 = *&v189[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v190);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.EnableVFDFeature, type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v71, &v188);
  aBlock = v188;
  v202 = *v189;
  v203 = *&v189[16];
  v204 = *&v189[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v190 = aBlock;
  v191 = v202;
  v192 = v203;
  *&v193 = v204;
  outlined destroy of AccessibilityViewGraph(&v190);
  v72 = *(v2 + v171);
  v73 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v74 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v72;
  DWORD2(aBlock) = v74;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v75 = MEMORY[0x1E69E7CC0];
  v76 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v202 + 1) = &type metadata for HoverEventDispatcher;
  *&v203 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v76;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v202 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v203 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v202 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v203 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v77 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v75);
  *(&v202 + 1) = &type metadata for KeyEventDispatcher;
  *&v203 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v77;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  *(v2 + *((*v64 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)();
  _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView);
  v185.receiver = v2;
  v185.super_class = v78;
  v79 = objc_msgSendSuper2(&v185, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.HostViewGraph, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v80 = v79;
  ViewGraph.append<A>(feature:)();
  v81 = outlined destroy of _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.HostViewGraph(&aBlock);
  (*((*v64 & *v80) + 0x5C0))(v81);
  v82 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v83 = aBlock;
  v181 = v79;
  if (aBlock != 1)
  {
    v84 = *(&aBlock + 1);
    v85 = v202;
    v86 = v203;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v87);
    }

    *&aBlock = v83;
    *(&aBlock + 1) = v84;
    v202 = v85;
    LOBYTE(v203) = v86 & 1;
    RepresentableContextValues.environment.getter();
    v199 = v200;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v83, v84, v85, *(&v85 + 1), v86);
    v65 = v182;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v88 = v80;

  v89 = *&v88[*((*v64 & *v88) + 0x150)];
  v90 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>();
  *(v89 + 40) = v90;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v176 = *((*v64 & *v88) + 0x188);
  *(*&v88[v176] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  v91 = *&v88[*((*v64 & *v88) + 0x100)];
  *(v91 + *((*v91 & *v64) + 0x60) + 8) = v90;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v92 = *&v88[*((*v64 & *v88) + 0x108)];
  *(v92 + *((*v92 & *v64) + 0x60) + 8) = v90;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v93 = specialized _UIHostingView.sheetBridge.getter();
  if (v93)
  {
    *&v93[direct field offset for SheetBridge.host + 8] = v90;
    v94 = v93;
    swift_unknownObjectWeakAssign();
  }

  v95 = *v64 & *v88;
  v96 = *&v88[*(v95 + 0x110)];
  if (v96)
  {
    v97 = *((*v96 & *v64) + 0x210);
    v98 = v96;
    v97(v65);
    outlined consume of SheetBridge<SheetPreference.Key>??(v96);
    v95 = *v64 & *v88;
  }

  v99 = *&v88[*(v95 + 280)];
  v100 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>();
  *(v99 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v99 + 40) = v100;
  swift_unknownObjectWeakAssign();

  v101 = FocusBridge.host.getter();
  if (v101)
  {
    v103 = v101;
    v104 = v102;
    v105 = swift_getObjectType();
    (*(*(*(v104 + 8) + 8) + 8))(v105);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v106 = *((*v64 & *v88) + 0x120);
  *(*&v88[v106] + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  v107 = *&v88[v106];
  v108 = &v107[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v109 = *(v108 + 1);
  v110 = swift_getObjectType();
  v111 = *(*(v109 + 16) + 8);
  v112 = v107;
  LOBYTE(v110) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v110, v111);
  swift_unknownObjectRelease();
  if (v110)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*&v88[*((*v64 & *v88) + 0x130)] + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  v113 = v88;
  GraphHost.addPreference<A>(_:)();
  *(*&v113[*((*v64 & *v113) + 0x138)] + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*&v113[*((*v64 & *v113) + 0x170)] + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v114 = *((*v64 & *v113) + 0x168);
  *(*&v113[v114] + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();

  v115 = *&v113[v114];
  v116 = &v115[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v117 = *(v116 + 1);
  v118 = swift_getObjectType();
  v119 = *(v117 + 8);
  v120 = *(v119 + 8);
  v121 = v115;
  v120(v118, v119);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v122 = [v113 traitCollection];

  v123 = [v122 userInterfaceIdiom];
  v124 = MEMORY[0x1E69E7D40];
  if (v123 == 1 || (v125 = [v113 traitCollection], v126 = objc_msgSend(v125, sel_userInterfaceIdiom), v125, v126 == 6))
  {
    v127 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v127[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v90;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v128 = *((*v124 & *v113) + 0x178);
    v129 = *&v113[v128];
    *&v113[v128] = v127;
  }

  v130 = *&v88[v176];
  v131 = &v130[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v133 = v179;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v134 = *(v131 + 1);
  v135 = swift_getObjectType();
  v136 = *(*(v134 + 16) + 8);
  v137 = v130;
  LOBYTE(v135) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v135, v136);
  swift_unknownObjectRelease();
  v138 = v182;
  if (v135)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v139 = *((*v124 & *v113) + 0x1A0);
  *(*&v113[v139] + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v90;
  v140 = swift_unknownObjectWeakAssign();
  v141 = *&v113[v139];
  MEMORY[0x1EEE9AC00](v140);
  *(&v170 - 2) = v141;
  *(&v170 - 1) = v138;
  v142 = v113;
  v143 = v141;
  static Update.ensure<A>(_:)();

  v144 = *((*v124 & *v142) + 0x78);
  v145 = *&v142[v144];
  v146 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v145 + 24) = v146;
  swift_unknownObjectWeakAssign();

  v147 = *&v142[v144];
  v148 = *((*v124 & *v142) + 0xE0);
  swift_beginAccess();
  *(v147 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v149 = *&v142[v148];
  v150 = *(v149 + 32);

  if (v150)
  {
    [v142 addGestureRecognizer_];
  }

  [v142 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v151 = [v142 window];
    if (v151)
    {
      v152 = v151;
      v153 = [v151 rootViewController];

      if (v153)
      {
        v154 = [v153 viewIfLoaded];

        if (v154)
        {

          if (v154 == v142)
          {
            v197 = 0;
            v184[0] = 0;
            v155 = getpid();
            LODWORD(v176) = v155;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v183 = v155;
            v156 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v156);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v157 = static OS_dispatch_queue.main.getter();
            v158 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v203 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v203 + 1) = v158;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v202 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v202 + 1) = &block_descriptor_15;
            v159 = _Block_copy(&aBlock);

            v160 = String.utf8CString.getter();

            notify_register_dispatch((v160 + 32), &v197, v157, v159);

            _Block_release(v159);

            v161 = static OS_dispatch_queue.main.getter();
            v162 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v163 = swift_allocObject();
            *(v163 + 16) = v176;
            *(v163 + 24) = v162;
            *&v203 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v203 + 1) = v163;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v202 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v202 + 1) = &block_descriptor_22;
            v164 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v184, v161, v164);
            _Block_release(v164);

            v165 = &v142[*((*v124 & *v142) + 0xE8)];
            *v165 = v197 | (v184[0] << 32);
            v165[8] = 0;
          }
        }
      }
    }
  }

  v166 = [objc_opt_self() defaultCenter];
  [v166 addObserver:v142 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v167 = one-time initialization token for didUpdateListLayout;
  v168 = v142;
  if (v167 != -1)
  {
    swift_once();
  }

  [v166 addObserver:v168 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v198 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v197, v168);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v177 + 8))(v180, v178);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v177 + 8))(v180, v178);
  }

  static Update.end()();
  outlined destroy of ModifiedContent<TableRowView, CollectionViewCellModifier>(v133);
  return v168;
}

{
  v2 = v1;
  v180 = a1;
  v206 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UIHostingViewBase.Options();
  v174 = *(v4 - 8);
  v175 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v182 = &v171 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v177 = &v171 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v178 = *(v8 - 8);
  v179 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v173 = &v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v181 = &v171 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v176 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v188.receiver = v21;
  v188.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v188, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v187.receiver = v26;
  v187.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v187, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v171 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v172 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  v44 = sub_18C0A9F94(v180, v2 + *((*v12 & *v2) + 0x60));
  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  (*(ObjectType + 1384))(&v191, v45);
  v46 = v191;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>();
  LOBYTE(v189) = v46;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>, type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>);
  v47 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v183 = *(v47 + 88);

  v48 = v181;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v182;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v177;
  specialized OptionSet<>.insert(_:)(v177, v50);
  v53 = *(v174 + 8);
  v54 = v50;
  v55 = v175;
  v53(v54, v175);
  v53(v52, v55);
  v56 = v51(&v191, 0);
  v57 = (*(ObjectType + 1408))(v56);
  v58 = v48;
  if ((v57 & 1) == 0)
  {
    v59 = v182;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v60 = UIHostingViewBase.Configuration.options.modify();
    v61 = v177;
    specialized OptionSet<>.insert(_:)(v177, v59);
    v53(v59, v55);
    v53(v61, v55);
    v60(&v191, 0);
    v58 = v181;
  }

  (*(v178 + 16))(v173, v58, v179);
  v62 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v175 = v47;
  v63 = UIHostingViewBase.init(viewGraph:configuration:)();
  v64 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v63;
  v65 = v183;

  *&v191 = specialized FocusViewGraph.init(graph:)(v66);
  *(&v191 + 1) = v67;
  LOWORD(v192) = v68 & 0x101;
  BYTE2(v192) = v69 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v191 = 0;
  WORD4(v191) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v70 = *MEMORY[0x1E698D3F8];
    v189 = 0uLL;
    *v190 = v70;
    memset(&v190[8], 0, 64);
    *&v190[72] = v171;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v194 = *&v190[32];
    v195 = *&v190[48];
    v196 = *&v190[64];
    v197 = *&v190[80];
    v191 = v189;
    v192 = *v190;
    v193 = *&v190[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v191);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.EnableVFDFeature(0);
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.EnableVFDFeature);
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v71, &v189);
  aBlock = v189;
  v203 = *v190;
  v204 = *&v190[16];
  v205 = *&v190[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v191 = aBlock;
  v192 = v203;
  v193 = v204;
  *&v194 = v205;
  outlined destroy of AccessibilityViewGraph(&v191);
  v72 = *(v2 + v172);
  v73 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v74 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v72;
  DWORD2(aBlock) = v74;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v75 = MEMORY[0x1E69E7CC0];
  v76 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v203 + 1) = &type metadata for HoverEventDispatcher;
  *&v204 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v76;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v203 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v204 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v203 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v204 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v77 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v75);
  *(&v203 + 1) = &type metadata for KeyEventDispatcher;
  *&v204 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v77;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  *(v2 + *((*v64 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)();
  type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(0);
  v186.receiver = v2;
  v186.super_class = v78;
  v79 = objc_msgSendSuper2(&v186, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph(0);
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph);
  v80 = v79;
  ViewGraph.append<A>(feature:)();
  v81 = outlined destroy of _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph(&aBlock, type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph);
  (*((*v64 & *v80) + 0x5C0))(v81);
  v82 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v83 = aBlock;
  v182 = v79;
  if (aBlock != 1)
  {
    v84 = *(&aBlock + 1);
    v85 = v203;
    v86 = v204;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v87);
    }

    *&aBlock = v83;
    *(&aBlock + 1) = v84;
    v203 = v85;
    LOBYTE(v204) = v86 & 1;
    RepresentableContextValues.environment.getter();
    v200 = v201;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v83, v84, v85, *(&v85 + 1), v86);
    v65 = v183;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v88 = v80;

  v89 = *&v88[*((*v64 & *v88) + 0x150)];
  v90 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>);
  *(v89 + 40) = v90;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v177 = *((*v64 & *v88) + 0x188);
  *(*&v88[v177] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  v91 = *&v88[*((*v64 & *v88) + 0x100)];
  *(v91 + *((*v91 & *v64) + 0x60) + 8) = v90;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v92 = *&v88[*((*v64 & *v88) + 0x108)];
  *(v92 + *((*v92 & *v64) + 0x60) + 8) = v90;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v93 = specialized _UIHostingView.sheetBridge.getter();
  if (v93)
  {
    *&v93[direct field offset for SheetBridge.host + 8] = v90;
    v94 = v93;
    swift_unknownObjectWeakAssign();
  }

  v95 = *v64 & *v88;
  v96 = *&v88[*(v95 + 0x110)];
  if (v96)
  {
    v97 = *((*v96 & *v64) + 0x210);
    v98 = v96;
    v97(v65);
    outlined consume of SheetBridge<SheetPreference.Key>??(v96);
    v95 = *v64 & *v88;
  }

  v99 = *&v88[*(v95 + 280)];
  v100 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>);
  *(v99 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v99 + 40) = v100;
  swift_unknownObjectWeakAssign();

  v101 = FocusBridge.host.getter();
  if (v101)
  {
    v103 = v101;
    v104 = v102;
    v105 = swift_getObjectType();
    (*(*(*(v104 + 8) + 8) + 8))(v105);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v106 = *((*v64 & *v88) + 0x120);
  *(*&v88[v106] + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  v107 = *&v88[v106];
  v108 = &v107[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v109 = *(v108 + 1);
  v110 = swift_getObjectType();
  v111 = *(*(v109 + 16) + 8);
  v112 = v107;
  LOBYTE(v110) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v110, v111);
  swift_unknownObjectRelease();
  if (v110)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*&v88[*((*v64 & *v88) + 0x130)] + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  v113 = v88;
  GraphHost.addPreference<A>(_:)();
  *(*&v113[*((*v64 & *v113) + 0x138)] + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*&v113[*((*v64 & *v113) + 0x170)] + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v114 = *((*v64 & *v113) + 0x168);
  *(*&v113[v114] + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();

  v115 = *&v113[v114];
  v116 = &v115[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v117 = *(v116 + 1);
  v118 = swift_getObjectType();
  v119 = *(v117 + 8);
  v120 = *(v119 + 8);
  v121 = v115;
  v120(v118, v119);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v122 = [v113 traitCollection];

  v123 = [v122 userInterfaceIdiom];
  if (v123 == 1 || (v124 = [v113 traitCollection], v125 = objc_msgSend(v124, sel_userInterfaceIdiom), v124, v125 == 6))
  {
    v126 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v126[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v90;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v127 = *((*MEMORY[0x1E69E7D40] & *v113) + 0x178);
    v128 = *&v113[v127];
    *&v113[v127] = v126;
  }

  v129 = *&v88[v177];
  v130 = &v129[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v132 = v180;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v133 = *(v130 + 1);
  v134 = swift_getObjectType();
  v135 = *(*(v133 + 16) + 8);
  v136 = v129;
  LOBYTE(v134) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v134, v135);
  swift_unknownObjectRelease();
  v137 = v183;
  if (v134)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v138 = MEMORY[0x1E69E7D40];
  v139 = *((*MEMORY[0x1E69E7D40] & *v113) + 0x1A0);
  *(*&v113[v139] + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v90;
  v140 = swift_unknownObjectWeakAssign();
  v141 = *&v113[v139];
  MEMORY[0x1EEE9AC00](v140);
  *(&v171 - 2) = v141;
  *(&v171 - 1) = v137;
  v142 = v113;
  v143 = v141;
  static Update.ensure<A>(_:)();

  v144 = *((*v138 & *v142) + 0x78);
  v145 = *&v142[v144];
  v146 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>);
  swift_beginAccess();
  *(v145 + 24) = v146;
  swift_unknownObjectWeakAssign();

  v147 = *&v142[v144];
  v148 = *((*v138 & *v142) + 0xE0);
  swift_beginAccess();
  *(v147 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v149 = *&v142[v148];
  v150 = *(v149 + 32);

  if (v150)
  {
    [v142 addGestureRecognizer_];
  }

  [v142 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v151 = [v142 window];
    if (v151)
    {
      v152 = v151;
      v153 = [v151 rootViewController];

      if (v153)
      {
        v154 = [v153 viewIfLoaded];

        if (v154)
        {

          if (v154 == v142)
          {
            v198 = 0;
            v185[0] = 0;
            v155 = getpid();
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v184 = v155;
            v156 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v156);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v157 = static OS_dispatch_queue.main.getter();
            v158 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v204 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v204 + 1) = v158;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v203 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v203 + 1) = &block_descriptor_270;
            v159 = _Block_copy(&aBlock);

            v160 = String.utf8CString.getter();

            notify_register_dispatch((v160 + 32), &v198, v157, v159);

            _Block_release(v159);

            v161 = static OS_dispatch_queue.main.getter();
            v162 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v163 = swift_allocObject();
            *(v163 + 16) = v155;
            *(v163 + 24) = v162;
            *&v204 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v204 + 1) = v163;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v203 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v203 + 1) = &block_descriptor_277;
            v164 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v185, v161, v164);
            _Block_release(v164);

            v165 = &v142[*((*MEMORY[0x1E69E7D40] & *v142) + 0xE8)];
            *v165 = v198 | (v185[0] << 32);
            v165[8] = 0;
          }
        }
      }
    }
  }

  v166 = [objc_opt_self() defaultCenter];
  [v166 addObserver:v142 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v167 = one-time initialization token for didUpdateListLayout;
  v168 = v142;
  if (v167 != -1)
  {
    swift_once();
  }

  [v166 addObserver:v168 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v169 = v181;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v199 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v198, v168);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v178 + 8))(v169, v179);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v178 + 8))(v169, v179);
  }

  static Update.end()();
  outlined destroy of _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph(v132, type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>);
  return v168;
}

{
  v2 = v1;
  v210 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v187 = type metadata accessor for UIHostingViewBase.Options();
  v179 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v186 = &v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v181 = &v174 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v184 = *(v8 - 8);
  v185 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v178 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v183 = &v174 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v180 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v192.receiver = v21;
  v192.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v192, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v191.receiver = v26;
  v191.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v191, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v174 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v176 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  v44 = v2 + *((*v12 & *v2) + 0x60);
  v45 = *(a1 + 16);
  *v44 = *a1;
  *(v44 + 1) = v45;
  *(v44 + 10) = *(a1 + 80);
  v46 = *(a1 + 64);
  *(v44 + 3) = *(a1 + 48);
  *(v44 + 4) = v46;
  *(v44 + 2) = *(a1 + 32);
  v175 = a1;
  v47 = outlined init with copy of BoundInputsView(a1, &v195);
  MEMORY[0x18D00ABE0](v47);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v48 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v49 = *(ObjectType + 1384);
  v177 = ObjectType;
  v49(&v195, v48);
  v50 = v195;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v193) = v50;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  v182 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v51 = *(v182 + 88);

  v52 = v183;
  v53 = UIHostingViewBase.Configuration.init()();
  v54 = v186;
  MEMORY[0x18D001BC0](v53);
  v55 = UIHostingViewBase.Configuration.options.modify();
  v56 = v181;
  specialized OptionSet<>.insert(_:)(v181, v54);
  v57 = *(v179 + 8);
  v58 = v187;
  v57(v54, v187);
  v57(v56, v58);
  v59 = v55(&v195, 0);
  v60 = v52;
  if (((*(v177 + 1408))(v59) & 1) == 0)
  {
    v61 = v52;
    v62 = v186;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v63 = UIHostingViewBase.Configuration.options.modify();
    v64 = v181;
    specialized OptionSet<>.insert(_:)(v181, v62);
    v65 = v62;
    v60 = v61;
    v66 = v187;
    v57(v65, v187);
    v57(v64, v66);
    v63(&v195, 0);
  }

  (*(v184 + 16))(v178, v60, v185);
  v67 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = UIHostingViewBase.init(viewGraph:configuration:)();

  *&v195 = specialized FocusViewGraph.init(graph:)(v68);
  *(&v195 + 1) = v69;
  LOWORD(v196) = v70 & 0x101;
  BYTE2(v196) = v71 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v195 = 0;
  WORD4(v195) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v72 = *MEMORY[0x1E698D3F8];
    v193 = 0uLL;
    *v194 = v72;
    memset(&v194[8], 0, 64);
    *&v194[72] = v174;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v198 = *&v194[32];
    v199 = *&v194[48];
    v200 = *&v194[64];
    v201 = *&v194[80];
    v195 = v193;
    v196 = *v194;
    v197 = *&v194[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v195);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>.EnableVFDFeature, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<BoundInputsView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v73, &v193);
  aBlock = v193;
  v207 = *v194;
  v208 = *&v194[16];
  v209 = *&v194[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v195 = aBlock;
  v196 = v207;
  v197 = v208;
  *&v198 = v209;
  outlined destroy of AccessibilityViewGraph(&v195);
  v74 = *(v2 + v176);
  v75 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v76 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v74;
  DWORD2(aBlock) = v76;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v77 = MEMORY[0x1E69E7CC0];
  v78 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v207 + 1) = &type metadata for HoverEventDispatcher;
  *&v208 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v78;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v207 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v208 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v207 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v208 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v79 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v77);
  *(&v207 + 1) = &type metadata for KeyEventDispatcher;
  *&v208 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v79;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  v80 = UIKitEventBindingBridge.init(eventBindingManager:)();
  v81 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xE0)) = v80;
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
  v190.receiver = v2;
  v190.super_class = v82;
  v83 = v81;
  v84 = objc_msgSendSuper2(&v190, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>.HostViewGraph, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<BoundInputsView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v85 = v84;
  ViewGraph.append<A>(feature:)();
  v86 = outlined destroy of _UIHostingView<BoundInputsView>.HostViewGraph(&aBlock);
  (*((*v83 & *v85) + 0x5C0))(v86);
  v87 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v88 = aBlock;
  v186 = v84;
  v187 = v51;
  if (aBlock != 1)
  {
    v89 = *(&aBlock + 1);
    v90 = v207;
    v91 = v208;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v92);
    }

    *&aBlock = v88;
    *(&aBlock + 1) = v89;
    v207 = v90;
    LOBYTE(v208) = v91 & 1;
    RepresentableContextValues.environment.getter();
    v204 = v205;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v88, v89, v90, *(&v90 + 1), v91);
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v93 = v85;

  v94 = *&v93[*((*v83 & *v93) + 0x150)];
  v95 = lazy protocol witness table accessor for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>();
  *(v94 + 40) = v95;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v181 = *((*v83 & *v93) + 0x188);
  *(*&v93[v181] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v95;
  swift_unknownObjectWeakAssign();
  v96 = *&v93[*((*v83 & *v93) + 0x100)];
  *(v96 + *((*v96 & *v83) + 0x60) + 8) = v95;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v97 = *&v93[*((*v83 & *v93) + 0x108)];
  *(v97 + *((*v97 & *v83) + 0x60) + 8) = v95;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v98 = specialized _UIHostingView.sheetBridge.getter();
  if (v98)
  {
    *&v98[direct field offset for SheetBridge.host + 8] = v95;
    v99 = v98;
    swift_unknownObjectWeakAssign();
  }

  v100 = *v83 & *v93;
  v101 = *&v93[*(v100 + 0x110)];
  if (v101)
  {
    v102 = *((*v101 & *v83) + 0x210);
    v103 = v101;
    v102(v187);
    outlined consume of SheetBridge<SheetPreference.Key>??(v101);
    v100 = *v83 & *v93;
  }

  v104 = *&v93[*(v100 + 280)];
  v105 = lazy protocol witness table accessor for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>();
  *(v104 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v104 + 40) = v105;
  swift_unknownObjectWeakAssign();

  v106 = FocusBridge.host.getter();
  if (v106)
  {
    v108 = v106;
    v109 = v107;
    v110 = swift_getObjectType();
    (*(*(*(v109 + 8) + 8) + 8))(v110);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v111 = *((*v83 & *v93) + 0x120);
  *(*&v93[v111] + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v95;
  swift_unknownObjectWeakAssign();
  v112 = *&v93[v111];
  v113 = &v112[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v114 = *(v113 + 1);
  v115 = swift_getObjectType();
  v116 = *(*(v114 + 16) + 8);
  v117 = v112;
  LOBYTE(v115) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v115, v116);
  swift_unknownObjectRelease();
  if (v115)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*&v93[*((*v83 & *v93) + 0x130)] + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v95;
  swift_unknownObjectWeakAssign();
  v118 = v93;
  GraphHost.addPreference<A>(_:)();
  *(*&v118[*((*v83 & *v118) + 0x138)] + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v95;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*&v118[*((*v83 & *v118) + 0x170)] + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v95;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v119 = *((*v83 & *v118) + 0x168);
  *(*&v118[v119] + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v95;
  swift_unknownObjectWeakAssign();

  v120 = *&v118[v119];
  v121 = &v120[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v122 = *(v121 + 1);
  v123 = swift_getObjectType();
  v124 = *(v122 + 8);
  v125 = *(v124 + 8);
  v126 = v120;
  v125(v123, v124);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v127 = [v118 traitCollection];

  v128 = [v127 userInterfaceIdiom];
  v129 = MEMORY[0x1E69E7D40];
  if (v128 == 1 || (v130 = [v118 traitCollection], v131 = objc_msgSend(v130, sel_userInterfaceIdiom), v130, v131 == 6))
  {
    v132 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v132[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v95;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v133 = *((*v129 & *v118) + 0x178);
    v134 = *&v118[v133];
    *&v118[v133] = v132;
  }

  v135 = *&v93[v181];
  v136 = &v135[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_47:
    __break(1u);
  }

  v137 = *(v136 + 1);
  v138 = v135;
  outlined destroy of BoundInputsView(v175);
  v139 = swift_getObjectType();
  v140 = ViewGraphDelegate.shouldCreateUIInteractions.getter(v139, *(*(v137 + 16) + 8));
  swift_unknownObjectRelease();
  v141 = v187;
  if (v140)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v142 = *((*v129 & *v118) + 0x1A0);
  *(*&v118[v142] + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v95;
  v143 = swift_unknownObjectWeakAssign();
  v144 = *&v118[v142];
  MEMORY[0x1EEE9AC00](v143);
  *(&v174 - 2) = v144;
  *(&v174 - 1) = v141;
  v145 = v118;
  v146 = v144;
  static Update.ensure<A>(_:)();

  v147 = *((*v129 & *v145) + 0x78);
  v148 = *&v145[v147];
  v149 = lazy protocol witness table accessor for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v148 + 24) = v149;
  swift_unknownObjectWeakAssign();

  v150 = *&v145[v147];
  v151 = *((*v129 & *v145) + 0xE0);
  swift_beginAccess();
  *(v150 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v152 = *&v145[v151];
  v153 = *(v152 + 32);

  if (v153)
  {
    [v145 addGestureRecognizer_];
  }

  [v145 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v154 = [v145 window];
    if (v154)
    {
      v155 = v154;
      v156 = [v154 rootViewController];

      if (v156)
      {
        v157 = [v156 viewIfLoaded];

        if (v157)
        {

          if (v157 == v145)
          {
            v202 = 0;
            v189[0] = 0;
            v158 = getpid();
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v188 = v158;
            v159 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v159);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v160 = static OS_dispatch_queue.main.getter();
            v161 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v208 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v208 + 1) = v161;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v207 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v207 + 1) = &block_descriptor_169;
            v162 = _Block_copy(&aBlock);

            v163 = String.utf8CString.getter();

            notify_register_dispatch((v163 + 32), &v202, v160, v162);

            _Block_release(v162);

            v164 = static OS_dispatch_queue.main.getter();
            v165 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v166 = swift_allocObject();
            *(v166 + 16) = v158;
            *(v166 + 24) = v165;
            *&v208 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v208 + 1) = v166;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v207 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v207 + 1) = &block_descriptor_176;
            v167 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v189, v164, v167);
            _Block_release(v167);

            v168 = &v145[*((*v129 & *v145) + 0xE8)];
            *v168 = v202 | (v189[0] << 32);
            v168[8] = 0;
          }
        }
      }
    }
  }

  v169 = [objc_opt_self() defaultCenter];
  [v169 addObserver:v145 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v170 = one-time initialization token for didUpdateListLayout;
  v171 = v145;
  if (v170 != -1)
  {
    swift_once();
  }

  [v169 addObserver:v171 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v172 = v183;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v203 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v202, v171);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v184 + 8))(v172, v185);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v184 + 8))(v172, v185);
  }

  static Update.end()();
  return v171;
}

{
  v2 = v1;
  v178 = a1;
  v204 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UIHostingViewBase.Options();
  v172 = *(v4 - 8);
  v173 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v181 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v179 = &v169 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v176 = *(v8 - 8);
  v177 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v171 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v180 = &v169 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v174 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v186.receiver = v21;
  v186.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v186, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v185.receiver = v26;
  v185.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v185, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v169 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v170 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  v44 = outlined init with copy of TabItem.RootView(v178, v2 + *((*v12 & *v2) + 0x60));
  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  (*(ObjectType + 1384))(&v189, v45);
  v46 = v189;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v187) = v46;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView();
  v175 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v47 = *(v175 + 88);

  v48 = v180;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v181;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v179;
  specialized OptionSet<>.insert(_:)(v179, v50);
  v53 = *(v172 + 8);
  v54 = v50;
  v55 = v173;
  v53(v54, v173);
  v53(v52, v55);
  v56 = v51(&v189, 0);
  v57 = (*(ObjectType + 1408))(v56);
  v58 = v48;
  if ((v57 & 1) == 0)
  {
    v59 = v181;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v172 = UIHostingViewBase.Configuration.options.modify();
    v60 = v179;
    specialized OptionSet<>.insert(_:)(v179, v59);
    v53(v59, v55);
    v53(v60, v55);
    (v172)(&v189, 0);
  }

  (*(v176 + 16))(v171, v58, v177);
  v61 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v62 = UIHostingViewBase.init(viewGraph:configuration:)();
  v63 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v62;

  *&v189 = specialized FocusViewGraph.init(graph:)(v64);
  *(&v189 + 1) = v65;
  LOWORD(v190) = v66 & 0x101;
  BYTE2(v190) = v67 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v189 = 0;
  WORD4(v189) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v68 = *MEMORY[0x1E698D3F8];
    v187 = 0uLL;
    *v188 = v68;
    memset(&v188[8], 0, 64);
    *&v188[72] = v169;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v192 = *&v188[32];
    v193 = *&v188[48];
    v194 = *&v188[64];
    v195 = *&v188[80];
    v189 = v187;
    v190 = *v188;
    v191 = *&v188[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v189);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>.EnableVFDFeature, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v69, &v187);
  aBlock = v187;
  v201 = *v188;
  v202 = *&v188[16];
  v203 = *&v188[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v189 = aBlock;
  v190 = v201;
  v191 = v202;
  *&v192 = v203;
  outlined destroy of AccessibilityViewGraph(&v189);
  v70 = *(v2 + v170);
  v71 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v72 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v70;
  DWORD2(aBlock) = v72;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v73 = MEMORY[0x1E69E7CC0];
  v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v201 + 1) = &type metadata for HoverEventDispatcher;
  *&v202 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v74;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v201 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v202 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v201 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v202 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v75 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v73);
  *(&v201 + 1) = &type metadata for KeyEventDispatcher;
  *&v202 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v75;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  *(v2 + *((*v63 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)();
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView);
  v184.receiver = v2;
  v184.super_class = v76;
  v77 = objc_msgSendSuper2(&v184, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>.HostViewGraph, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v78 = v77;
  ViewGraph.append<A>(feature:)();
  v79 = outlined destroy of _UIHostingView<TabItem.RootView>.HostViewGraph(&aBlock);
  v179 = v77;
  (*((*v63 & *v78) + 0x5C0))(v79);
  v80 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v81 = aBlock;
  v181 = v47;
  if (aBlock != 1)
  {
    v82 = *(&aBlock + 1);
    v83 = v201;
    v84 = v202;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v85);
    }

    *&aBlock = v81;
    *(&aBlock + 1) = v82;
    v201 = v83;
    LOBYTE(v202) = v84 & 1;
    RepresentableContextValues.environment.getter();
    v198 = v199;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v81, v82, v83, *(&v83 + 1), v84);
    v47 = v181;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v86 = v78;

  v87 = *&v86[*((*v63 & *v86) + 0x150)];
  v88 = lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>();
  *(v87 + 40) = v88;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v174 = *((*v63 & *v86) + 0x188);
  *(*&v86[v174] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  v89 = *&v86[*((*v63 & *v86) + 0x100)];
  *(v89 + *((*v89 & *v63) + 0x60) + 8) = v88;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v90 = *&v86[*((*v63 & *v86) + 0x108)];
  *(v90 + *((*v90 & *v63) + 0x60) + 8) = v88;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v91 = specialized _UIHostingView.sheetBridge.getter();
  if (v91)
  {
    *&v91[direct field offset for SheetBridge.host + 8] = v88;
    v92 = v91;
    swift_unknownObjectWeakAssign();
  }

  v93 = *v63 & *v86;
  v94 = *&v86[*(v93 + 0x110)];
  if (v94)
  {
    v95 = *((*v94 & *v63) + 0x210);
    v96 = v94;
    v95(v47);
    outlined consume of SheetBridge<SheetPreference.Key>??(v94);
    v93 = *v63 & *v86;
  }

  v97 = *&v86[*(v93 + 280)];
  v98 = lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>();
  *(v97 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v97 + 40) = v98;
  swift_unknownObjectWeakAssign();

  v99 = FocusBridge.host.getter();
  if (v99)
  {
    v101 = v99;
    v102 = v100;
    v103 = swift_getObjectType();
    (*(*(*(v102 + 8) + 8) + 8))(v103);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v104 = *((*v63 & *v86) + 0x120);
  *(*&v86[v104] + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  v105 = *&v86[v104];
  v106 = &v105[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v107 = *(v106 + 1);
  v108 = swift_getObjectType();
  v109 = *(*(v107 + 16) + 8);
  v110 = v105;
  LOBYTE(v108) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v108, v109);
  swift_unknownObjectRelease();
  if (v108)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*&v86[*((*v63 & *v86) + 0x130)] + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  v111 = v86;
  GraphHost.addPreference<A>(_:)();
  *(*&v111[*((*v63 & *v111) + 0x138)] + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*&v111[*((*v63 & *v111) + 0x170)] + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v112 = *((*v63 & *v111) + 0x168);
  *(*&v111[v112] + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();

  v113 = *&v111[v112];
  v114 = &v113[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v115 = *(v114 + 1);
  v116 = swift_getObjectType();
  v117 = *(v115 + 8);
  v118 = *(v117 + 8);
  v119 = v113;
  v118(v116, v117);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v120 = [v111 traitCollection];

  v121 = [v120 userInterfaceIdiom];
  if (v121 == 1 || (v122 = [v111 traitCollection], v123 = objc_msgSend(v122, sel_userInterfaceIdiom), v122, v123 == 6))
  {
    v124 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v124[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v88;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v125 = *((*MEMORY[0x1E69E7D40] & *v111) + 0x178);
    v126 = *&v111[v125];
    *&v111[v125] = v124;
  }

  v127 = *&v86[v174];
  v128 = &v127[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v130 = v178;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v131 = *(v128 + 1);
  v132 = swift_getObjectType();
  v133 = *(*(v131 + 16) + 8);
  v134 = v127;
  LOBYTE(v132) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v132, v133);
  swift_unknownObjectRelease();
  v135 = v181;
  if (v132)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v136 = MEMORY[0x1E69E7D40];
  v137 = *((*MEMORY[0x1E69E7D40] & *v111) + 0x1A0);
  *(*&v111[v137] + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v88;
  v138 = swift_unknownObjectWeakAssign();
  v139 = *&v111[v137];
  MEMORY[0x1EEE9AC00](v138);
  *(&v169 - 2) = v139;
  *(&v169 - 1) = v135;
  v140 = v111;
  v141 = v139;
  static Update.ensure<A>(_:)();

  v142 = *((*v136 & *v140) + 0x78);
  v143 = *&v140[v142];
  v144 = lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v143 + 24) = v144;
  swift_unknownObjectWeakAssign();

  v145 = *&v140[v142];
  v146 = *((*v136 & *v140) + 0xE0);
  swift_beginAccess();
  *(v145 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v147 = *&v140[v146];
  v148 = *(v147 + 32);
  v149 = v180;

  if (v148)
  {
    [v140 addGestureRecognizer_];
  }

  [v140 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v150 = [v140 window];
    if (v150)
    {
      v151 = v150;
      v152 = [v150 rootViewController];

      if (v152)
      {
        v153 = [v152 viewIfLoaded];

        if (v153)
        {

          if (v153 == v140)
          {
            v196 = 0;
            v183 = 0;
            v154 = getpid();
            LODWORD(v174) = v154;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v182 = v154;
            v155 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v155);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v156 = static OS_dispatch_queue.main.getter();
            v157 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v202 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v202 + 1) = v157;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v201 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v201 + 1) = &block_descriptor_141;
            v158 = _Block_copy(&aBlock);

            v159 = String.utf8CString.getter();
            v149 = v180;

            notify_register_dispatch((v159 + 32), &v196, v156, v158);

            _Block_release(v158);

            v160 = static OS_dispatch_queue.main.getter();
            v161 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v162 = swift_allocObject();
            *(v162 + 16) = v174;
            *(v162 + 24) = v161;
            *&v202 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v202 + 1) = v162;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v201 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v201 + 1) = &block_descriptor_148;
            v163 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", &v183, v160, v163);
            _Block_release(v163);

            v164 = &v140[*((*MEMORY[0x1E69E7D40] & *v140) + 0xE8)];
            *v164 = v196 | (v183 << 32);
            v164[8] = 0;
          }
        }
      }
    }
  }

  v165 = [objc_opt_self() defaultCenter];
  [v165 addObserver:v140 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v166 = one-time initialization token for didUpdateListLayout;
  v167 = v140;
  if (v166 != -1)
  {
    swift_once();
  }

  [v165 addObserver:v167 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v197 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v196, v167);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v176 + 8))(v149, v177);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v176 + 8))(v149, v177);
  }

  static Update.end()();
  outlined destroy of TabItem.RootView(v130);
  return v167;
}

{
  v2 = v1;
  v178 = a1;
  v204 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UIHostingViewBase.Options();
  v172 = *(v4 - 8);
  v173 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v181 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v179 = &v169 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v176 = *(v8 - 8);
  v177 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v171 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v180 = &v169 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v174 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v186.receiver = v21;
  v186.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v186, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v185.receiver = v26;
  v185.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v185, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v169 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v170 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  v44 = outlined init with copy of DocumentGroupsIntroRootView(v178, v2 + *((*v12 & *v2) + 0x60));
  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  (*(ObjectType + 1384))(&v189, v45);
  v46 = v189;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v187) = v46;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView();
  v175 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v47 = *(v175 + 88);

  v48 = v180;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v181;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v179;
  specialized OptionSet<>.insert(_:)(v179, v50);
  v53 = *(v172 + 8);
  v54 = v50;
  v55 = v173;
  v53(v54, v173);
  v53(v52, v55);
  v56 = v51(&v189, 0);
  v57 = (*(ObjectType + 1408))(v56);
  v58 = v48;
  if ((v57 & 1) == 0)
  {
    v59 = v181;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v172 = UIHostingViewBase.Configuration.options.modify();
    v60 = v179;
    specialized OptionSet<>.insert(_:)(v179, v59);
    v53(v59, v55);
    v53(v60, v55);
    (v172)(&v189, 0);
  }

  (*(v176 + 16))(v171, v58, v177);
  v61 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v62 = UIHostingViewBase.init(viewGraph:configuration:)();
  v63 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v62;

  *&v189 = specialized FocusViewGraph.init(graph:)(v64);
  *(&v189 + 1) = v65;
  LOWORD(v190) = v66 & 0x101;
  BYTE2(v190) = v67 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v189 = 0;
  WORD4(v189) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v68 = *MEMORY[0x1E698D3F8];
    v187 = 0uLL;
    *v188 = v68;
    memset(&v188[8], 0, 64);
    *&v188[72] = v169;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v192 = *&v188[32];
    v193 = *&v188[48];
    v194 = *&v188[64];
    v195 = *&v188[80];
    v189 = v187;
    v190 = *v188;
    v191 = *&v188[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v189);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>.EnableVFDFeature, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v69, &v187);
  aBlock = v187;
  v201 = *v188;
  v202 = *&v188[16];
  v203 = *&v188[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v189 = aBlock;
  v190 = v201;
  v191 = v202;
  *&v192 = v203;
  outlined destroy of AccessibilityViewGraph(&v189);
  v70 = *(v2 + v170);
  v71 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v72 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v70;
  DWORD2(aBlock) = v72;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v73 = MEMORY[0x1E69E7CC0];
  v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v201 + 1) = &type metadata for HoverEventDispatcher;
  *&v202 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v74;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v201 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v202 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v201 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v202 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v75 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v73);
  *(&v201 + 1) = &type metadata for KeyEventDispatcher;
  *&v202 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v75;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  *(v2 + *((*v63 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)();
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView);
  v184.receiver = v2;
  v184.super_class = v76;
  v77 = objc_msgSendSuper2(&v184, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>.HostViewGraph, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v78 = v77;
  ViewGraph.append<A>(feature:)();
  v79 = outlined destroy of _UIHostingView<DocumentGroupsIntroRootView>.HostViewGraph(&aBlock);
  v179 = v77;
  (*((*v63 & *v78) + 0x5C0))(v79);
  v80 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v81 = aBlock;
  v181 = v47;
  if (aBlock != 1)
  {
    v82 = *(&aBlock + 1);
    v83 = v201;
    v84 = v202;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v85);
    }

    *&aBlock = v81;
    *(&aBlock + 1) = v82;
    v201 = v83;
    LOBYTE(v202) = v84 & 1;
    RepresentableContextValues.environment.getter();
    v198 = v199;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v81, v82, v83, *(&v83 + 1), v84);
    v47 = v181;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v86 = v78;

  v87 = *&v86[*((*v63 & *v86) + 0x150)];
  v88 = lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>();
  *(v87 + 40) = v88;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v174 = *((*v63 & *v86) + 0x188);
  *(*&v86[v174] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  v89 = *&v86[*((*v63 & *v86) + 0x100)];
  *(v89 + *((*v89 & *v63) + 0x60) + 8) = v88;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v90 = *&v86[*((*v63 & *v86) + 0x108)];
  *(v90 + *((*v90 & *v63) + 0x60) + 8) = v88;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v91 = specialized _UIHostingView.sheetBridge.getter();
  if (v91)
  {
    *&v91[direct field offset for SheetBridge.host + 8] = v88;
    v92 = v91;
    swift_unknownObjectWeakAssign();
  }

  v93 = *v63 & *v86;
  v94 = *&v86[*(v93 + 0x110)];
  if (v94)
  {
    v95 = *((*v94 & *v63) + 0x210);
    v96 = v94;
    v95(v47);
    outlined consume of SheetBridge<SheetPreference.Key>??(v94);
    v93 = *v63 & *v86;
  }

  v97 = *&v86[*(v93 + 280)];
  v98 = lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>();
  *(v97 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v97 + 40) = v98;
  swift_unknownObjectWeakAssign();

  v99 = FocusBridge.host.getter();
  if (v99)
  {
    v101 = v99;
    v102 = v100;
    v103 = swift_getObjectType();
    (*(*(*(v102 + 8) + 8) + 8))(v103);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v104 = *((*v63 & *v86) + 0x120);
  *(*&v86[v104] + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  v105 = *&v86[v104];
  v106 = &v105[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v107 = *(v106 + 1);
  v108 = swift_getObjectType();
  v109 = *(*(v107 + 16) + 8);
  v110 = v105;
  LOBYTE(v108) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v108, v109);
  swift_unknownObjectRelease();
  if (v108)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*&v86[*((*v63 & *v86) + 0x130)] + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  v111 = v86;
  GraphHost.addPreference<A>(_:)();
  *(*&v111[*((*v63 & *v111) + 0x138)] + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*&v111[*((*v63 & *v111) + 0x170)] + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v112 = *((*v63 & *v111) + 0x168);
  *(*&v111[v112] + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();

  v113 = *&v111[v112];
  v114 = &v113[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v115 = *(v114 + 1);
  v116 = swift_getObjectType();
  v117 = *(v115 + 8);
  v118 = *(v117 + 8);
  v119 = v113;
  v118(v116, v117);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v120 = [v111 traitCollection];

  v121 = [v120 userInterfaceIdiom];
  if (v121 == 1 || (v122 = [v111 traitCollection], v123 = objc_msgSend(v122, sel_userInterfaceIdiom), v122, v123 == 6))
  {
    v124 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v124[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v88;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v125 = *((*MEMORY[0x1E69E7D40] & *v111) + 0x178);
    v126 = *&v111[v125];
    *&v111[v125] = v124;
  }

  v127 = *&v86[v174];
  v128 = &v127[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v130 = v178;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v131 = *(v128 + 1);
  v132 = swift_getObjectType();
  v133 = *(*(v131 + 16) + 8);
  v134 = v127;
  LOBYTE(v132) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v132, v133);
  swift_unknownObjectRelease();
  v135 = v181;
  if (v132)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v136 = MEMORY[0x1E69E7D40];
  v137 = *((*MEMORY[0x1E69E7D40] & *v111) + 0x1A0);
  *(*&v111[v137] + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v88;
  v138 = swift_unknownObjectWeakAssign();
  v139 = *&v111[v137];
  MEMORY[0x1EEE9AC00](v138);
  *(&v169 - 2) = v139;
  *(&v169 - 1) = v135;
  v140 = v111;
  v141 = v139;
  static Update.ensure<A>(_:)();

  v142 = *((*v136 & *v140) + 0x78);
  v143 = *&v140[v142];
  v144 = lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v143 + 24) = v144;
  swift_unknownObjectWeakAssign();

  v145 = *&v140[v142];
  v146 = *((*v136 & *v140) + 0xE0);
  swift_beginAccess();
  *(v145 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v147 = *&v140[v146];
  v148 = *(v147 + 32);
  v149 = v180;

  if (v148)
  {
    [v140 addGestureRecognizer_];
  }

  [v140 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v150 = [v140 window];
    if (v150)
    {
      v151 = v150;
      v152 = [v150 rootViewController];

      if (v152)
      {
        v153 = [v152 viewIfLoaded];

        if (v153)
        {

          if (v153 == v140)
          {
            v196 = 0;
            v183 = 0;
            v154 = getpid();
            LODWORD(v174) = v154;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v182 = v154;
            v155 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v155);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v156 = static OS_dispatch_queue.main.getter();
            v157 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v202 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v202 + 1) = v157;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v201 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v201 + 1) = &block_descriptor_85;
            v158 = _Block_copy(&aBlock);

            v159 = String.utf8CString.getter();
            v149 = v180;

            notify_register_dispatch((v159 + 32), &v196, v156, v158);

            _Block_release(v158);

            v160 = static OS_dispatch_queue.main.getter();
            v161 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v162 = swift_allocObject();
            *(v162 + 16) = v174;
            *(v162 + 24) = v161;
            *&v202 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v202 + 1) = v162;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v201 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v201 + 1) = &block_descriptor_92;
            v163 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", &v183, v160, v163);
            _Block_release(v163);

            v164 = &v140[*((*MEMORY[0x1E69E7D40] & *v140) + 0xE8)];
            *v164 = v196 | (v183 << 32);
            v164[8] = 0;
          }
        }
      }
    }
  }

  v165 = [objc_opt_self() defaultCenter];
  [v165 addObserver:v140 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v166 = one-time initialization token for didUpdateListLayout;
  v167 = v140;
  if (v166 != -1)
  {
    swift_once();
  }

  [v165 addObserver:v167 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v197 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v196, v167);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v176 + 8))(v149, v177);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v176 + 8))(v149, v177);
  }

  static Update.end()();
  outlined destroy of DocumentGroupsIntroRootView(v130);
  return v167;
}

{
  v2 = v1;
  v180 = a1;
  v206 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UIHostingViewBase.Options();
  v174 = *(v4 - 8);
  v175 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v183 = &v171 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v181 = &v171 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v178 = *(v8 - 8);
  v179 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v173 = &v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v182 = &v171 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v176 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v188.receiver = v21;
  v188.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v188, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v187.receiver = v26;
  v187.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v187, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v171 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v172 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  v44 = outlined init with copy of _ViewList_View(v180, v2 + *((*v12 & *v2) + 0x60));
  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  (*(ObjectType + 1384))(&v191, v45);
  v46 = v191;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v189) = v46;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  v177 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v47 = *(v177 + 88);

  v48 = v182;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v183;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v181;
  specialized OptionSet<>.insert(_:)(v181, v50);
  v53 = *(v174 + 8);
  v54 = v50;
  v55 = v175;
  v53(v54, v175);
  v53(v52, v55);
  v56 = v51(&v191, 0);
  v57 = (*(ObjectType + 1408))(v56);
  v58 = v48;
  if ((v57 & 1) == 0)
  {
    v59 = v183;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v174 = UIHostingViewBase.Configuration.options.modify();
    v60 = v181;
    specialized OptionSet<>.insert(_:)(v181, v59);
    v53(v59, v55);
    v53(v60, v55);
    (v174)(&v191, 0);
  }

  (*(v178 + 16))(v173, v58, v179);
  v61 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v62 = UIHostingViewBase.init(viewGraph:configuration:)();
  v63 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v62;

  *&v191 = specialized FocusViewGraph.init(graph:)(v64);
  *(&v191 + 1) = v65;
  LOWORD(v192) = v66 & 0x101;
  BYTE2(v192) = v67 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v191 = 0;
  WORD4(v191) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v68 = *MEMORY[0x1E698D3F8];
    v189 = 0uLL;
    *v190 = v68;
    memset(&v190[8], 0, 64);
    *&v190[72] = v171;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v194 = *&v190[32];
    v195 = *&v190[48];
    v196 = *&v190[64];
    v197 = *&v190[80];
    v191 = v189;
    v192 = *v190;
    v193 = *&v190[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v191);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>.EnableVFDFeature, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<_ViewList_View>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v69, &v189);
  aBlock = v189;
  v203 = *v190;
  v204 = *&v190[16];
  v205 = *&v190[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v191 = aBlock;
  v192 = v203;
  v193 = v204;
  *&v194 = v205;
  outlined destroy of AccessibilityViewGraph(&v191);
  v70 = *(v2 + v172);
  v71 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v72 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v70;
  DWORD2(aBlock) = v72;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v73 = MEMORY[0x1E69E7CC0];
  v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v203 + 1) = &type metadata for HoverEventDispatcher;
  *&v204 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v74;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v203 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v204 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v203 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v204 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v75 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v73);
  *(&v203 + 1) = &type metadata for KeyEventDispatcher;
  *&v204 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v75;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  *(v2 + *((*v63 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)();
  v76 = MEMORY[0x1E697D9F0];
  v77 = MEMORY[0x1E697D9E8];
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
  v186.receiver = v2;
  v186.super_class = v78;
  v79 = objc_msgSendSuper2(&v186, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>.HostViewGraph, v76, v77, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<_ViewList_View>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v80 = v79;
  ViewGraph.append<A>(feature:)();
  v81 = outlined destroy of _UIHostingView<_ViewList_View>.HostViewGraph(&aBlock);
  v181 = v79;
  (*((*v63 & *v80) + 0x5C0))(v81);
  v82 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v83 = aBlock;
  v183 = v47;
  if (aBlock != 1)
  {
    v84 = *(&aBlock + 1);
    v85 = v203;
    v86 = v204;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v87);
    }

    *&aBlock = v83;
    *(&aBlock + 1) = v84;
    v203 = v85;
    LOBYTE(v204) = v86 & 1;
    RepresentableContextValues.environment.getter();
    v200 = v201;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v83, v84, v85, *(&v85 + 1), v86);
    v47 = v183;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v88 = v80;

  v89 = *&v88[*((*v63 & *v88) + 0x150)];
  v90 = lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>();
  *(v89 + 40) = v90;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v176 = *((*v63 & *v88) + 0x188);
  *(*&v88[v176] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  v91 = *&v88[*((*v63 & *v88) + 0x100)];
  *(v91 + *((*v91 & *v63) + 0x60) + 8) = v90;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v92 = *&v88[*((*v63 & *v88) + 0x108)];
  *(v92 + *((*v92 & *v63) + 0x60) + 8) = v90;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v93 = specialized _UIHostingView.sheetBridge.getter();
  if (v93)
  {
    *&v93[direct field offset for SheetBridge.host + 8] = v90;
    v94 = v93;
    swift_unknownObjectWeakAssign();
  }

  v95 = *v63 & *v88;
  v96 = *&v88[*(v95 + 0x110)];
  if (v96)
  {
    v97 = *((*v96 & *v63) + 0x210);
    v98 = v96;
    v97(v47);
    outlined consume of SheetBridge<SheetPreference.Key>??(v96);
    v95 = *v63 & *v88;
  }

  v99 = *&v88[*(v95 + 280)];
  v100 = lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>();
  *(v99 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v99 + 40) = v100;
  swift_unknownObjectWeakAssign();

  v101 = FocusBridge.host.getter();
  if (v101)
  {
    v103 = v101;
    v104 = v102;
    v105 = swift_getObjectType();
    (*(*(*(v104 + 8) + 8) + 8))(v105);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v106 = *((*v63 & *v88) + 0x120);
  *(*&v88[v106] + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  v107 = *&v88[v106];
  v108 = &v107[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v109 = *(v108 + 1);
  v110 = swift_getObjectType();
  v111 = *(*(v109 + 16) + 8);
  v112 = v107;
  LOBYTE(v110) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v110, v111);
  swift_unknownObjectRelease();
  if (v110)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*&v88[*((*v63 & *v88) + 0x130)] + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  v113 = v88;
  GraphHost.addPreference<A>(_:)();
  *(*&v113[*((*v63 & *v113) + 0x138)] + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*&v113[*((*v63 & *v113) + 0x170)] + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v114 = *((*v63 & *v113) + 0x168);
  *(*&v113[v114] + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();

  v115 = *&v113[v114];
  v116 = &v115[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v117 = *(v116 + 1);
  v118 = swift_getObjectType();
  v119 = *(v117 + 8);
  v120 = *(v119 + 8);
  v121 = v115;
  v120(v118, v119);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v122 = [v113 traitCollection];

  v123 = [v122 userInterfaceIdiom];
  if (v123 == 1 || (v124 = [v113 traitCollection], v125 = objc_msgSend(v124, sel_userInterfaceIdiom), v124, v125 == 6))
  {
    v126 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v126[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v90;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v127 = *((*MEMORY[0x1E69E7D40] & *v113) + 0x178);
    v128 = *&v113[v127];
    *&v113[v127] = v126;
  }

  v129 = *&v88[v176];
  v130 = &v129[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v132 = v180;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v133 = *(v130 + 1);
  v134 = swift_getObjectType();
  v135 = *(*(v133 + 16) + 8);
  v136 = v129;
  LOBYTE(v134) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v134, v135);
  swift_unknownObjectRelease();
  v137 = v183;
  if (v134)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v138 = MEMORY[0x1E69E7D40];
  v139 = *((*MEMORY[0x1E69E7D40] & *v113) + 0x1A0);
  *(*&v113[v139] + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v90;
  v140 = swift_unknownObjectWeakAssign();
  v141 = *&v113[v139];
  MEMORY[0x1EEE9AC00](v140);
  *(&v171 - 2) = v141;
  *(&v171 - 1) = v137;
  v142 = v113;
  v143 = v141;
  static Update.ensure<A>(_:)();

  v144 = *((*v138 & *v142) + 0x78);
  v145 = *&v142[v144];
  v146 = lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v145 + 24) = v146;
  swift_unknownObjectWeakAssign();

  v147 = *&v142[v144];
  v148 = *((*v138 & *v142) + 0xE0);
  swift_beginAccess();
  *(v147 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v149 = *&v142[v148];
  v150 = *(v149 + 32);
  v151 = v182;

  if (v150)
  {
    [v142 addGestureRecognizer_];
  }

  [v142 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v152 = [v142 window];
    if (v152)
    {
      v153 = v152;
      v154 = [v152 rootViewController];

      if (v154)
      {
        v155 = [v154 viewIfLoaded];

        if (v155)
        {

          if (v155 == v142)
          {
            v198 = 0;
            v185 = 0;
            v156 = getpid();
            LODWORD(v176) = v156;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v184 = v156;
            v157 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v157);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v158 = static OS_dispatch_queue.main.getter();
            v159 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v204 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v204 + 1) = v159;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v203 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v203 + 1) = &block_descriptor_183;
            v160 = _Block_copy(&aBlock);

            v161 = String.utf8CString.getter();
            v151 = v182;

            notify_register_dispatch((v161 + 32), &v198, v158, v160);

            _Block_release(v160);

            v162 = static OS_dispatch_queue.main.getter();
            v163 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v164 = swift_allocObject();
            *(v164 + 16) = v176;
            *(v164 + 24) = v163;
            *&v204 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v204 + 1) = v164;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v203 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v203 + 1) = &block_descriptor_190;
            v165 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", &v185, v162, v165);
            _Block_release(v165);

            v166 = &v142[*((*MEMORY[0x1E69E7D40] & *v142) + 0xE8)];
            *v166 = v198 | (v185 << 32);
            v166[8] = 0;
          }
        }
      }
    }
  }

  v167 = [objc_opt_self() defaultCenter];
  [v167 addObserver:v142 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v168 = one-time initialization token for didUpdateListLayout;
  v169 = v142;
  if (v168 != -1)
  {
    swift_once();
  }

  [v167 addObserver:v169 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v199 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v198, v169);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v178 + 8))(v151, v179);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v178 + 8))(v151, v179);
  }

  static Update.end()();
  outlined destroy of _ViewList_View(v132);
  return v169;
}

{
  v2 = v1;
  v178 = a1;
  v204 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UIHostingViewBase.Options();
  v172 = *(v4 - 8);
  v173 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v181 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v179 = &v169 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v176 = *(v8 - 8);
  v177 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v171 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v180 = &v169 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v174 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v186.receiver = v21;
  v186.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v186, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v185.receiver = v26;
  v185.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v185, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v169 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v170 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  v44 = outlined init with copy of BridgedNavigationView.RootView(v178, v2 + *((*v12 & *v2) + 0x60));
  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  (*(ObjectType + 1384))(&v189, v45);
  v46 = v189;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v187) = v46;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView();
  v175 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v47 = *(v175 + 88);

  v48 = v180;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v181;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v179;
  specialized OptionSet<>.insert(_:)(v179, v50);
  v53 = *(v172 + 8);
  v54 = v50;
  v55 = v173;
  v53(v54, v173);
  v53(v52, v55);
  v56 = v51(&v189, 0);
  v57 = (*(ObjectType + 1408))(v56);
  v58 = v48;
  if ((v57 & 1) == 0)
  {
    v59 = v181;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v172 = UIHostingViewBase.Configuration.options.modify();
    v60 = v179;
    specialized OptionSet<>.insert(_:)(v179, v59);
    v53(v59, v55);
    v53(v60, v55);
    (v172)(&v189, 0);
  }

  (*(v176 + 16))(v171, v58, v177);
  v61 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v62 = UIHostingViewBase.init(viewGraph:configuration:)();
  v63 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v62;

  *&v189 = specialized FocusViewGraph.init(graph:)(v64);
  *(&v189 + 1) = v65;
  LOWORD(v190) = v66 & 0x101;
  BYTE2(v190) = v67 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v189 = 0;
  WORD4(v189) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v68 = *MEMORY[0x1E698D3F8];
    v187 = 0uLL;
    *v188 = v68;
    memset(&v188[8], 0, 64);
    *&v188[72] = v169;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v192 = *&v188[32];
    v193 = *&v188[48];
    v194 = *&v188[64];
    v195 = *&v188[80];
    v189 = v187;
    v190 = *v188;
    v191 = *&v188[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v189);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>.EnableVFDFeature, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v69, &v187);
  aBlock = v187;
  v201 = *v188;
  v202 = *&v188[16];
  v203 = *&v188[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v189 = aBlock;
  v190 = v201;
  v191 = v202;
  *&v192 = v203;
  outlined destroy of AccessibilityViewGraph(&v189);
  v70 = *(v2 + v170);
  v71 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v72 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v70;
  DWORD2(aBlock) = v72;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v73 = MEMORY[0x1E69E7CC0];
  v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v201 + 1) = &type metadata for HoverEventDispatcher;
  *&v202 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v74;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v201 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v202 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v201 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v202 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v75 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v73);
  *(&v201 + 1) = &type metadata for KeyEventDispatcher;
  *&v202 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v75;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  *(v2 + *((*v63 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)();
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView);
  v184.receiver = v2;
  v184.super_class = v76;
  v77 = objc_msgSendSuper2(&v184, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>.HostViewGraph, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v78 = v77;
  ViewGraph.append<A>(feature:)();
  v79 = outlined destroy of _UIHostingView<BridgedNavigationView.RootView>.HostViewGraph(&aBlock);
  v179 = v77;
  (*((*v63 & *v78) + 0x5C0))(v79);
  v80 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v81 = aBlock;
  v181 = v47;
  if (aBlock != 1)
  {
    v82 = *(&aBlock + 1);
    v83 = v201;
    v84 = v202;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v85);
    }

    *&aBlock = v81;
    *(&aBlock + 1) = v82;
    v201 = v83;
    LOBYTE(v202) = v84 & 1;
    RepresentableContextValues.environment.getter();
    v198 = v199;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v81, v82, v83, *(&v83 + 1), v84);
    v47 = v181;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v86 = v78;

  v87 = *&v86[*((*v63 & *v86) + 0x150)];
  v88 = lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>();
  *(v87 + 40) = v88;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v174 = *((*v63 & *v86) + 0x188);
  *(*&v86[v174] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  v89 = *&v86[*((*v63 & *v86) + 0x100)];
  *(v89 + *((*v89 & *v63) + 0x60) + 8) = v88;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v90 = *&v86[*((*v63 & *v86) + 0x108)];
  *(v90 + *((*v90 & *v63) + 0x60) + 8) = v88;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v91 = specialized _UIHostingView.sheetBridge.getter();
  if (v91)
  {
    *&v91[direct field offset for SheetBridge.host + 8] = v88;
    v92 = v91;
    swift_unknownObjectWeakAssign();
  }

  v93 = *v63 & *v86;
  v94 = *&v86[*(v93 + 0x110)];
  if (v94)
  {
    v95 = *((*v94 & *v63) + 0x210);
    v96 = v94;
    v95(v47);
    outlined consume of SheetBridge<SheetPreference.Key>??(v94);
    v93 = *v63 & *v86;
  }

  v97 = *&v86[*(v93 + 280)];
  v98 = lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>();
  *(v97 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v97 + 40) = v98;
  swift_unknownObjectWeakAssign();

  v99 = FocusBridge.host.getter();
  if (v99)
  {
    v101 = v99;
    v102 = v100;
    v103 = swift_getObjectType();
    (*(*(*(v102 + 8) + 8) + 8))(v103);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v104 = *((*v63 & *v86) + 0x120);
  *(*&v86[v104] + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  v105 = *&v86[v104];
  v106 = &v105[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v107 = *(v106 + 1);
  v108 = swift_getObjectType();
  v109 = *(*(v107 + 16) + 8);
  v110 = v105;
  LOBYTE(v108) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v108, v109);
  swift_unknownObjectRelease();
  if (v108)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*&v86[*((*v63 & *v86) + 0x130)] + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  v111 = v86;
  GraphHost.addPreference<A>(_:)();
  *(*&v111[*((*v63 & *v111) + 0x138)] + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*&v111[*((*v63 & *v111) + 0x170)] + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v112 = *((*v63 & *v111) + 0x168);
  *(*&v111[v112] + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();

  v113 = *&v111[v112];
  v114 = &v113[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v115 = *(v114 + 1);
  v116 = swift_getObjectType();
  v117 = *(v115 + 8);
  v118 = *(v117 + 8);
  v119 = v113;
  v118(v116, v117);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v120 = [v111 traitCollection];

  v121 = [v120 userInterfaceIdiom];
  if (v121 == 1 || (v122 = [v111 traitCollection], v123 = objc_msgSend(v122, sel_userInterfaceIdiom), v122, v123 == 6))
  {
    v124 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v124[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v88;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v125 = *((*MEMORY[0x1E69E7D40] & *v111) + 0x178);
    v126 = *&v111[v125];
    *&v111[v125] = v124;
  }

  v127 = *&v86[v174];
  v128 = &v127[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v130 = v178;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v131 = *(v128 + 1);
  v132 = swift_getObjectType();
  v133 = *(*(v131 + 16) + 8);
  v134 = v127;
  LOBYTE(v132) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v132, v133);
  swift_unknownObjectRelease();
  v135 = v181;
  if (v132)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v136 = MEMORY[0x1E69E7D40];
  v137 = *((*MEMORY[0x1E69E7D40] & *v111) + 0x1A0);
  *(*&v111[v137] + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v88;
  v138 = swift_unknownObjectWeakAssign();
  v139 = *&v111[v137];
  MEMORY[0x1EEE9AC00](v138);
  *(&v169 - 2) = v139;
  *(&v169 - 1) = v135;
  v140 = v111;
  v141 = v139;
  static Update.ensure<A>(_:)();

  v142 = *((*v136 & *v140) + 0x78);
  v143 = *&v140[v142];
  v144 = lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v143 + 24) = v144;
  swift_unknownObjectWeakAssign();

  v145 = *&v140[v142];
  v146 = *((*v136 & *v140) + 0xE0);
  swift_beginAccess();
  *(v145 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v147 = *&v140[v146];
  v148 = *(v147 + 32);
  v149 = v180;

  if (v148)
  {
    [v140 addGestureRecognizer_];
  }

  [v140 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v150 = [v140 window];
    if (v150)
    {
      v151 = v150;
      v152 = [v150 rootViewController];

      if (v152)
      {
        v153 = [v152 viewIfLoaded];

        if (v153)
        {

          if (v153 == v140)
          {
            v196 = 0;
            v183 = 0;
            v154 = getpid();
            LODWORD(v174) = v154;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v182 = v154;
            v155 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v155);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v156 = static OS_dispatch_queue.main.getter();
            v157 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v202 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v202 + 1) = v157;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v201 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v201 + 1) = &block_descriptor_284;
            v158 = _Block_copy(&aBlock);

            v159 = String.utf8CString.getter();
            v149 = v180;

            notify_register_dispatch((v159 + 32), &v196, v156, v158);

            _Block_release(v158);

            v160 = static OS_dispatch_queue.main.getter();
            v161 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v162 = swift_allocObject();
            *(v162 + 16) = v174;
            *(v162 + 24) = v161;
            *&v202 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v202 + 1) = v162;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v201 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v201 + 1) = &block_descriptor_291;
            v163 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", &v183, v160, v163);
            _Block_release(v163);

            v164 = &v140[*((*MEMORY[0x1E69E7D40] & *v140) + 0xE8)];
            *v164 = v196 | (v183 << 32);
            v164[8] = 0;
          }
        }
      }
    }
  }

  v165 = [objc_opt_self() defaultCenter];
  [v165 addObserver:v140 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v166 = one-time initialization token for didUpdateListLayout;
  v167 = v140;
  if (v166 != -1)
  {
    swift_once();
  }

  [v165 addObserver:v167 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v197 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v196, v167);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v176 + 8))(v149, v177);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v176 + 8))(v149, v177);
  }

  static Update.end()();
  outlined destroy of BridgedNavigationView.RootView(v130);
  return v167;
}

{
  v2 = v1;
  v207 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v184 = type metadata accessor for UIHostingViewBase.Options();
  v176 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v178 = &v171 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v183 = &v171 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v181 = *(v8 - 8);
  v182 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v175 = &v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v180 = &v171 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v177 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v189.receiver = v21;
  v189.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v189, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v188.receiver = v26;
  v188.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v188, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v171 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v173 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  *(v2 + *((*v12 & *v2) + 0x60)) = a1;
  v172 = a1;

  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v46 = *(ObjectType + 1384);
  v174 = ObjectType;
  v46(&v192, v45);
  v47 = v192;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>, &type metadata for TableViewListHeaderFooterContent, MEMORY[0x1E697E108], MEMORY[0x1E697E830]);
  LOBYTE(v190) = v47;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier> and conformance <> ModifiedContent<A, B>();
  v179 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v48 = *(v179 + 88);

  v49 = v180;
  v50 = UIHostingViewBase.Configuration.init()();
  v51 = v178;
  MEMORY[0x18D001BC0](v50);
  v52 = UIHostingViewBase.Configuration.options.modify();
  v53 = v183;
  specialized OptionSet<>.insert(_:)(v183, v51);
  v54 = *(v176 + 8);
  v55 = v184;
  v54(v51, v184);
  v54(v53, v55);
  v56 = v52(&v192, 0);
  v57 = v49;
  if (((*(v174 + 1408))(v56) & 1) == 0)
  {
    v58 = v178;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v59 = UIHostingViewBase.Configuration.options.modify();
    v60 = v57;
    v61 = v183;
    specialized OptionSet<>.insert(_:)(v183, v58);
    v62 = v184;
    v54(v58, v184);
    v63 = v61;
    v57 = v60;
    v54(v63, v62);
    v59(&v192, 0);
  }

  (*(v181 + 16))(v175, v57, v182);
  v64 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = UIHostingViewBase.init(viewGraph:configuration:)();

  *&v192 = specialized FocusViewGraph.init(graph:)(v65);
  *(&v192 + 1) = v66;
  LOWORD(v193) = v67 & 0x101;
  BYTE2(v193) = v68 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v192 = 0;
  WORD4(v192) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v69 = *MEMORY[0x1E698D3F8];
    v190 = 0uLL;
    *v191 = v69;
    memset(&v191[8], 0, 64);
    *&v191[72] = v171;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v195 = *&v191[32];
    v196 = *&v191[48];
    v197 = *&v191[64];
    v198 = *&v191[80];
    v192 = v190;
    v193 = *v191;
    v194 = *&v191[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v192);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.EnableVFDFeature();
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.EnableVFDFeature);
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v70, &v190);
  aBlock = v190;
  v204 = *v191;
  v205 = *&v191[16];
  v206 = *&v191[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v192 = aBlock;
  v193 = v204;
  v194 = v205;
  *&v195 = v206;
  outlined destroy of AccessibilityViewGraph(&v192);
  v71 = *(v2 + v173);
  v72 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v73 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v71;
  DWORD2(aBlock) = v73;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v74 = MEMORY[0x1E69E7CC0];
  v75 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v204 + 1) = &type metadata for HoverEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v75;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v204 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v204 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v76 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v74);
  *(&v204 + 1) = &type metadata for KeyEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v76;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  v77 = UIKitEventBindingBridge.init(eventBindingManager:)();
  v78 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xE0)) = v77;
  type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>();
  v187.receiver = v2;
  v187.super_class = v79;
  v80 = v78;
  v81 = objc_msgSendSuper2(&v187, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.HostViewGraph();
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.HostViewGraph);
  v82 = v81;
  ViewGraph.append<A>(feature:)();
  v83 = outlined destroy of _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph(&aBlock, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.HostViewGraph);
  (*((*v78 & *v82) + 0x5C0))(v83);
  v84 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v85 = aBlock;
  v183 = v81;
  v184 = v48;
  if (aBlock != 1)
  {
    v86 = *(&aBlock + 1);
    v87 = v204;
    v88 = v205;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v89);
    }

    *&aBlock = v85;
    *(&aBlock + 1) = v86;
    v204 = v87;
    LOBYTE(v205) = v88 & 1;
    RepresentableContextValues.environment.getter();
    v201 = v202;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v85, v86, v87, *(&v87 + 1), v88);
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v90 = v82;

  v91 = *&v90[*((*v80 & *v90) + 0x150)];
  v92 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>);
  *(v91 + 40) = v92;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v178 = *((*v80 & *v90) + 0x188);
  *(*&v178[v90] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  v93 = *&v90[*((*v80 & *v90) + 0x100)];
  *(v93 + *((*v93 & *v80) + 0x60) + 8) = v92;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v94 = *&v90[*((*v80 & *v90) + 0x108)];
  *(v94 + *((*v94 & *v80) + 0x60) + 8) = v92;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v95 = specialized _UIHostingView.sheetBridge.getter();
  if (v95)
  {
    *&v95[direct field offset for SheetBridge.host + 8] = v92;
    v96 = v95;
    swift_unknownObjectWeakAssign();
  }

  v97 = *v80 & *v90;
  v98 = *&v90[*(v97 + 0x110)];
  if (v98)
  {
    v99 = *((*v98 & *v80) + 0x210);
    v100 = v98;
    v99(v184);
    outlined consume of SheetBridge<SheetPreference.Key>??(v98);
    v97 = *v80 & *v90;
  }

  v101 = *&v90[*(v97 + 280)];
  v102 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>);
  *(v101 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v101 + 40) = v102;
  swift_unknownObjectWeakAssign();

  v103 = FocusBridge.host.getter();
  if (v103)
  {
    v105 = v103;
    v106 = v104;
    v107 = swift_getObjectType();
    (*(*(*(v106 + 8) + 8) + 8))(v107);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v108 = *((*v80 & *v90) + 0x120);
  *(*&v90[v108] + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  v109 = *&v90[v108];
  v110 = &v109[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v111 = *(v110 + 1);
  v112 = swift_getObjectType();
  v113 = *(*(v111 + 16) + 8);
  v114 = v109;
  LOBYTE(v112) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v112, v113);
  swift_unknownObjectRelease();
  if (v112)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*&v90[*((*v80 & *v90) + 0x130)] + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  v115 = v90;
  GraphHost.addPreference<A>(_:)();
  *(*&v115[*((*v80 & *v115) + 0x138)] + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*&v115[*((*v80 & *v115) + 0x170)] + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v116 = *((*v80 & *v115) + 0x168);
  *(*&v115[v116] + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();

  v117 = *&v115[v116];
  v118 = &v117[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v119 = *(v118 + 1);
  v120 = swift_getObjectType();
  v121 = *(v119 + 8);
  v122 = *(v121 + 8);
  v123 = v117;
  v122(v120, v121);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v124 = [v115 traitCollection];

  v125 = [v124 userInterfaceIdiom];
  v126 = MEMORY[0x1E69E7D40];
  if (v125 == 1 || (v127 = [v115 traitCollection], v128 = objc_msgSend(v127, sel_userInterfaceIdiom), v127, v128 == 6))
  {
    v129 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v129[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v92;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v130 = *((*v126 & *v115) + 0x178);
    v131 = *&v115[v130];
    *&v115[v130] = v129;
  }

  v132 = *&v178[v90];
  v133 = &v132[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_47:
    __break(1u);
  }

  v134 = *(v133 + 1);
  v135 = v132;

  v136 = swift_getObjectType();
  v137 = ViewGraphDelegate.shouldCreateUIInteractions.getter(v136, *(*(v134 + 16) + 8));
  swift_unknownObjectRelease();
  v138 = v184;
  if (v137)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v139 = *((*v126 & *v115) + 0x1A0);
  *(*&v115[v139] + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v92;
  v140 = swift_unknownObjectWeakAssign();
  v141 = *&v115[v139];
  MEMORY[0x1EEE9AC00](v140);
  *(&v171 - 2) = v141;
  *(&v171 - 1) = v138;
  v142 = v115;
  v143 = v141;
  static Update.ensure<A>(_:)();

  v144 = *((*v126 & *v142) + 0x78);
  v145 = *&v142[v144];
  v146 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>);
  swift_beginAccess();
  *(v145 + 24) = v146;
  swift_unknownObjectWeakAssign();

  v147 = *&v142[v144];
  v148 = *((*v126 & *v142) + 0xE0);
  swift_beginAccess();
  *(v147 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v149 = *&v142[v148];
  v150 = *(v149 + 32);

  if (v150)
  {
    [v142 addGestureRecognizer_];
  }

  [v142 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v151 = [v142 window];
    if (v151)
    {
      v152 = v151;
      v153 = [v151 rootViewController];

      if (v153)
      {
        v154 = [v153 viewIfLoaded];

        if (v154)
        {

          if (v154 == v142)
          {
            v199 = 0;
            v186 = 0;
            v155 = getpid();
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v185 = v155;
            v156 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v156);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v157 = static OS_dispatch_queue.main.getter();
            v158 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v205 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v205 + 1) = v158;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v204 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v204 + 1) = &block_descriptor_326;
            v159 = _Block_copy(&aBlock);

            v160 = String.utf8CString.getter();

            notify_register_dispatch((v160 + 32), &v199, v157, v159);

            _Block_release(v159);

            v161 = static OS_dispatch_queue.main.getter();
            v162 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v163 = swift_allocObject();
            *(v163 + 16) = v155;
            *(v163 + 24) = v162;
            *&v205 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v205 + 1) = v163;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v204 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v204 + 1) = &block_descriptor_333;
            v164 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", &v186, v161, v164);
            _Block_release(v164);

            v165 = &v142[*((*v126 & *v142) + 0xE8)];
            *v165 = v199 | (v186 << 32);
            v165[8] = 0;
          }
        }
      }
    }
  }

  v166 = [objc_opt_self() defaultCenter];
  [v166 addObserver:v142 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v167 = one-time initialization token for didUpdateListLayout;
  v168 = v142;
  if (v167 != -1)
  {
    swift_once();
  }

  [v166 addObserver:v168 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v169 = v180;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v200 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v199, v168);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v181 + 8))(v169, v182);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v181 + 8))(v169, v182);
  }

  static Update.end()();
  return v168;
}

_BYTE *partial apply for closure #1 in ScrollViewChildTransform.value.getter@<X0>(_BYTE *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

uint64_t partial apply for specialized closure #1 in AlertTransformModifier.Transform.updateValue()(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v8 = *(v1 + 48);
  return v2(a1, &v8, v3, v4, v5, v6);
}

uint64_t outlined init with copy of ToolbarStorage.SearchItem?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ToolbarStorage.SearchItem?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *__swift_memcpy13_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarViewListVisitor and conformance ToolbarViewListVisitor()
{
  result = lazy protocol witness table cache variable for type ToolbarViewListVisitor and conformance ToolbarViewListVisitor;
  if (!lazy protocol witness table cache variable for type ToolbarViewListVisitor and conformance ToolbarViewListVisitor)
  {
    type metadata accessor for ToolbarViewListVisitor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarViewListVisitor and conformance ToolbarViewListVisitor);
  }

  return result;
}

uint64_t outlined init with take of ToolbarStorage.GroupItem(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void destroy for ToolbarStorage.Entry.Kind(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    if (*(a1 + 48) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 8);
    }

    return;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      return;
    }

    if (*(a1 + 88))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 64);
    }

    if (*(a1 + 152) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 112);
    }

    __swift_destroy_boxed_opaque_existential_1(a1 + 184);

    v3 = a1 + *(type metadata accessor for ToolbarStorage.Item(0) + 68);
    v4 = type metadata accessor for PlatformItemList.Item();
    if ((*(*(v4 - 8) + 48))(v3, 1, v4))
    {
      goto LABEL_47;
    }

    v5 = *(v3 + 192);
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v7 = *(v3 + 72);
      if (v7 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v3 + 64), v7);
        v5 = *(v3 + 192);
        v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v6 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v3 + 176), *(v3 + 184), v5);
      }

      swift_unknownObjectRelease();
    }

    if (*(v3 + 264))
    {

      v8 = *(v3 + 272);
      if (v8 >= 2)
      {
      }
    }

    v9 = *(v3 + 336);
    if (v9 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(v3 + 304), *(v3 + 312), *(v3 + 320), *(v3 + 328), v9, *(v3 + 344), *(v3 + 352), *(v3 + 360), *(v3 + 368), *(v3 + 376), *(v3 + 384), *(v3 + 392), *(v3 + 400));
    }

    v10 = *(v3 + 416);
    if (v10)
    {
      if (v10 == 1)
      {
        goto LABEL_28;
      }
    }

    if (*(v3 + 432))
    {
    }

    if (*(v3 + 448))
    {
    }

LABEL_28:

    if (*(v3 + 512))
    {
    }

    if (!*(v3 + 816))
    {
LABEL_38:
      v12 = *(v3 + 864);
      if (v12)
      {
        if (v12 == 1)
        {
LABEL_43:

          v13 = v3 + *(v4 + 112);
          v14 = type metadata accessor for CommandOperation();
          if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
          {
            v15 = v13 + *(v14 + 20);
            outlined consume of Text.Storage(*v15, *(v15 + 8), *(v15 + 16));

            v16 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v17 = type metadata accessor for UUID();
            (*(*(v17 - 8) + 8))(v15 + v16, v17);
            if (*(v13 + *(v14 + 24)))
            {
            }
          }

LABEL_47:

          swift_weakDestroy();
          return;
        }

        __swift_destroy_boxed_opaque_existential_1(v3 + 840);
      }

      if (*(v3 + 880))
      {
      }

      goto LABEL_43;
    }

    v11 = *(v3 + 624);
    if (v11)
    {
      if (v11 == 1)
      {
LABEL_35:
        if (*(v3 + 776) != 1)
        {
        }

        goto LABEL_38;
      }

      __swift_destroy_boxed_opaque_existential_1(v3 + 600);
    }

    goto LABEL_35;
  }

  if (*(a1 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 32);
  }

  if (*(a1 + 120) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 80);
  }

  v18 = a1 + *(type metadata accessor for ToolbarStorage.GroupItem(0) + 60);
  v19 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v18);

LABEL_101:
      v33 = *(v18 + *(v19 + 20));

      return;
    }

    v20 = *(v18 + 192);
    v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
    if ((v20 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v22 = *(v18 + 72);
      if (v22 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v18 + 64), v22);
        v20 = *(v18 + 192);
        v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v21 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v18 + 176), *(v18 + 184), v20);
      }

      swift_unknownObjectRelease();
    }

    if (*(v18 + 264))
    {

      v23 = *(v18 + 272);
      if (v23 >= 2)
      {
      }
    }

    v24 = *(v18 + 336);
    if (v24 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(v18 + 304), *(v18 + 312), *(v18 + 320), *(v18 + 328), v24, *(v18 + 344), *(v18 + 352), *(v18 + 360), *(v18 + 368), *(v18 + 376), *(v18 + 384), *(v18 + 392), *(v18 + 400));
    }

    v25 = *(v18 + 416);
    if (v25)
    {
      if (v25 == 1)
      {
        goto LABEL_81;
      }
    }

    if (*(v18 + 432))
    {
    }

    if (*(v18 + 448))
    {
    }

LABEL_81:

    if (*(v18 + 512))
    {
    }

    if (!*(v18 + 816))
    {
LABEL_91:
      v27 = *(v18 + 864);
      if (v27)
      {
        if (v27 == 1)
        {
LABEL_96:

          v28 = v18 + *(type metadata accessor for PlatformItemList.Item() + 112);
          v29 = type metadata accessor for CommandOperation();
          if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
          {
            v30 = v28 + *(v29 + 20);
            outlined consume of Text.Storage(*v30, *(v30 + 8), *(v30 + 16));

            v31 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v32 = type metadata accessor for UUID();
            (*(*(v32 - 8) + 8))(v30 + v31, v32);
            if (*(v28 + *(v29 + 24)))
            {
            }
          }

          goto LABEL_101;
        }

        __swift_destroy_boxed_opaque_existential_1(v18 + 840);
      }

      if (*(v18 + 880))
      {
      }

      goto LABEL_96;
    }

    v26 = *(v18 + 624);
    if (v26)
    {
      if (v26 == 1)
      {
LABEL_88:
        if (*(v18 + 776) != 1)
        {
        }

        goto LABEL_91;
      }

      __swift_destroy_boxed_opaque_existential_1(v18 + 600);
    }

    goto LABEL_88;
  }
}

unint64_t specialized Dictionary.subscript.setter(uint64_t a1, _OWORD *a2)
{
  v3 = v2;
  if (*(a1 + 136) >> 1 == 0xFFFFFFFFLL)
  {
    outlined destroy of TabEntry?(a1, &lazy cache variable for type metadata for PositionedNavigationDestination.Storage.SeededRequest?, &type metadata for PositionedNavigationDestination.Storage.SeededRequest, MEMORY[0x1E69E6720]);
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v9 = v26;
      }

      v10 = (*(v9 + 56) + 176 * v7);
      v12 = v10[1];
      v11 = v10[2];
      v28 = *v10;
      v29 = v12;
      v30 = v11;
      v13 = v10[3];
      v14 = v10[4];
      v15 = v10[6];
      v33 = v10[5];
      v34 = v15;
      v31 = v13;
      v32 = v14;
      v16 = v10[7];
      v17 = v10[8];
      v18 = v10[9];
      *(v37 + 12) = *(v10 + 156);
      v36 = v17;
      v37[0] = v18;
      v35 = v16;
      specialized _NativeDictionary._delete(at:)(v7, v9);
      *v3 = v9;
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      *&v36 = 0;
      *(&v36 + 1) = 0x1FFFFFFFELL;
      memset(v37, 0, 28);
    }

    return outlined destroy of TabEntry?(&v28, &lazy cache variable for type metadata for PositionedNavigationDestination.Storage.SeededRequest?, &type metadata for PositionedNavigationDestination.Storage.SeededRequest, MEMORY[0x1E69E6720]);
  }

  else
  {
    v19 = *(a1 + 144);
    v36 = *(a1 + 128);
    v37[0] = v19;
    *(v37 + 12) = *(a1 + 156);
    v20 = *(a1 + 80);
    v32 = *(a1 + 64);
    v33 = v20;
    v21 = *(a1 + 112);
    v34 = *(a1 + 96);
    v35 = v21;
    v22 = *(a1 + 16);
    v28 = *a1;
    v29 = v22;
    v23 = *(a1 + 48);
    v30 = *(a1 + 32);
    v31 = v23;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v28, a2, v24);
    *v2 = v27;
  }

  return result;
}

{
  v3 = v2;
  if (*(a1 + 8))
  {
    v5 = *(a1 + 48);
    v22 = *(a1 + 32);
    v23 = v5;
    v24 = *(a1 + 64);
    v6 = *(a1 + 16);
    v20 = *a1;
    v21 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v20, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v18;
  }

  else
  {
    outlined destroy of TabEntry?(a1, &lazy cache variable for type metadata for NavigationListState.Selection?, &type metadata for NavigationListState.Selection, MEMORY[0x1E69E6720]);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v19 = *v3;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v19;
      }

      v14 = *(v13 + 56) + 72 * v11;
      v20 = *v14;
      v16 = *(v14 + 32);
      v15 = *(v14 + 48);
      v17 = *(v14 + 64);
      v21 = *(v14 + 16);
      v22 = v16;
      v24 = v17;
      v23 = v15;
      specialized _NativeDictionary._delete(at:)(v11, v13);
      *v3 = v13;
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
    }

    return outlined destroy of TabEntry?(&v20, &lazy cache variable for type metadata for NavigationListState.Selection?, &type metadata for NavigationListState.Selection, MEMORY[0x1E69E6720]);
  }

  return result;
}

{
  v3 = v2;
  if (*(a1 + 24))
  {
    v5 = *(a1 + 16);
    v18 = *a1;
    v19 = v5;
    v20 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v18, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v16;
  }

  else
  {
    outlined destroy of TabEntry?(a1, &lazy cache variable for type metadata for AnyListSelection?, &type metadata for AnyListSelection, MEMORY[0x1E69E6720]);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v17 = *v3;
      if (!v11)
      {
        specialized _NativeDictionary.copy()();
        v12 = v17;
      }

      v13 = *(v12 + 56) + 40 * v10;
      v14 = *(v13 + 32);
      v15 = *(v13 + 16);
      v18 = *v13;
      v19 = v15;
      v20 = v14;
      specialized _NativeDictionary._delete(at:)(v10, v12);
      *v3 = v12;
    }

    else
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
    }

    return outlined destroy of TabEntry?(&v18, &lazy cache variable for type metadata for AnyListSelection?, &type metadata for AnyListSelection, MEMORY[0x1E69E6720]);
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      result = specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI20ContentScrollViewBoxV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    goto LABEL_26;
  }

  if (!v2 || a1 == a2)
  {
    v12 = 1;
    return v12 & 1;
  }

  v3 = a1 + 32;
  v4 = a2 + 32;
  while (1)
  {
    outlined init with copy of ContentScrollViewBox(v3, v15);
    outlined init with copy of ContentScrollViewBox(v4, v14);
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = swift_unknownObjectWeakLoadStrong();
    v7 = v6;
    if (Strong)
    {
      if (!v6)
      {
        goto LABEL_23;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScrollView);
      v8 = static NSObject.== infix(_:_:)();

      if ((v8 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (v6)
    {
      goto LABEL_24;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v9 = swift_unknownObjectWeakLoadStrong();
    v7 = v9;
    if (Strong)
    {
      break;
    }

    if (v9)
    {
      goto LABEL_24;
    }

LABEL_15:
    if (v15[16] != v14[16])
    {
      goto LABEL_25;
    }

    type metadata accessor for CGPoint(0);
    if ((static WeakAttribute.== infix(_:_:)() & 1) == 0 || (static WeakAttribute.== infix(_:_:)() & 1) == 0 || (static WeakAttribute.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_25;
    }

    v11 = v15[44] ^ v14[44];
    outlined destroy of ContentScrollViewBox(v14);
    outlined destroy of ContentScrollViewBox(v15);
    if ((v11 & 1) == 0)
    {
      v4 += 48;
      v3 += 48;
      if (--v2)
      {
        continue;
      }
    }

    v12 = v11 ^ 1;
    return v12 & 1;
  }

  if (v9)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
    v10 = static NSObject.== infix(_:_:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

LABEL_23:
  v7 = Strong;
LABEL_24:

LABEL_25:
  outlined destroy of ContentScrollViewBox(v14);
  outlined destroy of ContentScrollViewBox(v15);
LABEL_26:
  v12 = 0;
  return v12 & 1;
}

uint64_t ModifiedContent<>.accessibilityInputLabels<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = a1;
  v11[2] = *(a2 + 16);
  v11[3] = a3;
  v11[4] = a4;
  v7 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ModifiedContent<>.accessibilityInputLabels<A>(_:), v11, v7, MEMORY[0x1E6981148], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);
  ModifiedContent<>.update<A>(_:replacing:isEnabled:)(MEMORY[0x1E6980030], &v12, 1, a2, a5);
}

uint64_t static UIItemHostingView.defaultViewGraphOutputs.getter@<X0>(_BYTE *a1@<X8>)
{
  result = static ViewGraph.Outputs.defaults.getter();
  *a1 = v3 | 2;
  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BarItemView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BarItemView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BarItemView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BarItemView>.HostViewGraph, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BarItemView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

Swift::Void __swiftcall UIKitBarItemHost.appendViewGraphFeatures()()
{
  _UIHostingView.viewGraph.getter();
  lazy protocol witness table accessor for type BarItemViewGraph and conformance BarItemViewGraph();
  ViewGraph.append<A>(feature:)();
}

void type metadata accessor for ToolbarStorage.Item?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined assign with take of PlatformItemList.Item?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 40))(a2, a1, v8);
  return a2;
}

void UIKitBarButtonItem.initialize(rootView:context:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v49 = a2;
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v46 - v6;
  v8 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host;
  v9 = MEMORY[0x1E69E7D40];
  *(*&v3[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host] + *((*MEMORY[0x1E69E7D40] & **&v3[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host]) + 0x1C0) + 8) = &protocol witness table for UIKitBarButtonItem;
  swift_unknownObjectWeakAssign();
  v10 = *&v3[v8];
  outlined init with copy of BarItemView(a1, v51);
  outlined init with copy of BarItemView(v51, v50);
  v11 = *((*v9 & *v10) + 0x60);
  swift_beginAccess();
  v12 = v10;
  outlined assign with take of BarItemView(v50, v10 + v11);
  swift_endAccess();
  _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>();
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

  outlined destroy of BarItemView(v51);
  v13 = *&v3[v8];
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();

  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    v14 = *&v3[v8];
    UIHostingViewBase.viewGraph.getter();

    GraphHost.addPreference<A>(_:)();
  }

  v15 = &v3[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_item];
  swift_beginAccess();
  v16 = type metadata accessor for ToolbarStorage.Item(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v48 = v16;
  v47 = v18;
  v46[1] = v17 + 48;
  if (!(v18)(v15, 1))
  {
    v19 = v15[170];
    if (v19 >= 2)
    {
      if (v19 != 2)
      {
        goto LABEL_9;
      }

      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    [v3 _setPrefersNoPlatter_];
  }

LABEL_9:
  v21 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem;
  swift_beginAccess();
  v22 = MEMORY[0x1E69E6720];
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(&v3[v21], v7, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  v23 = type metadata accessor for PlatformItemList.Item();
  LODWORD(v21) = (*(*(v23 - 8) + 48))(v7, 1, v23);
  _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v7, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, v22, type metadata accessor for ToolbarStorage.Item?);
  if (v21 != 1)
  {
    v24 = UIKitBarButtonItem.allowsBridging()();
    UIKitBarButtonItem.updateStyleAndTint(isBridged:role:buttonTint:)(v24 & 1, v24 >> 8, 0);
  }

  static Semantics.v7.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    v25 = UIKitBarButtonItem.allowsBridging()();
    if ((v25 & 0x100) != 0)
    {
      [v3 _initializeSystemItem_];
    }
  }

  v26 = [objc_allocWithZone(type metadata accessor for UIKitPopoverBridge()) init];
  v27 = lazy protocol witness table accessor for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>();
  *&v26[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_host + 8] = v27;
  swift_unknownObjectWeakAssign();
  v28 = *&v3[v8];
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();

  v29 = v49;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v30 = &v26[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_overrideArrowDirections];
  *v30 = 3;
  v30[8] = 0;
  v31 = *&v3[v8];
  v32 = *((*v9 & *v31) + 0x128);
  v33 = v9;
  v34 = *(v31 + v32);
  *(v31 + v32) = v26;
  v35 = v29;
  v36 = v31;
  v49 = v26;

  type metadata accessor for SharingActivityPickerBridge();
  swift_allocObject();
  v37 = SharingActivityPickerBridge.init()();
  *(v37 + 24) = v27;
  swift_unknownObjectWeakAssign();
  v38 = *&v3[v8];
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();

  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *(v37 + 32) = 3;
  *(v37 + 40) = 0;
  v39 = *&v3[v8];
  *(v39 + *((*v33 & *v39) + 0x140)) = v37;
  v40 = v39;

  v41 = *&v3[v8];
  v42 = specialized _UIHostingView.sheetBridge.getter();

  if (v42)
  {
    swift_unknownObjectWeakAssign();
  }

  if (v47(v15, 1, v48))
  {
    v43 = 0;
  }

  else
  {
    v44 = *(v15 + 7);
    if (v44)
    {
      v45 = *(v15 + 6);
    }

    else
    {
      v45 = *(v15 + 4);
      v44 = *(v15 + 5);

      if (!v44)
      {
        v43 = 0;
        goto LABEL_23;
      }
    }

    v43 = MEMORY[0x18D00C850](v45, v44);
  }

LABEL_23:
  [v3 setIdentifier_];
}

uint64_t sub_18BF65F00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t outlined destroy of PlatformItemList.Item(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VWOhTm_3(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VWOhTm_4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of PlatformItemList.Item(uint64_t a1)
{
  v2 = type metadata accessor for PlatformItemList.Item();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

size_t closure #1 in View.platformItemButtonRole(_:)(size_t result, unsigned int a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    if (v3 > v2[2])
    {
      __break(1u);
      return result;
    }

    v6 = type metadata accessor for PlatformItemList.Item();
    v7 = 0;
    v8 = *(v6 - 8);
    result = v6 - 8;
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = *(v8 + 72);
    if (v3 < 8 || v10 != 1)
    {
LABEL_19:
      v19 = v3 - v7;
      v20 = v2 + v9 + v7 * v10 + 528;
      do
      {
        *v20 = a2;
        v20 += v10;
        --v19;
      }

      while (v19);
LABEL_21:
      *v5 = v2;
      return result;
    }

    if (v3 >= 0x20)
    {
      v7 = v3 & 0x7FFFFFFFFFFFFFE0;
      v12 = vdupq_n_s8(a2);
      v13 = (v2 + v9 + 544);
      v14 = v3 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v13[-1] = v12;
        *v13 = v12;
        v13 += 2;
        v14 -= 32;
      }

      while (v14);
      if (v3 == v7)
      {
        goto LABEL_21;
      }

      if ((v3 & 0x18) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v7 = 0;
    }

    v15 = v7;
    v7 = v3 & 0x7FFFFFFFFFFFFFF8;
    v16 = vdup_n_s8(a2);
    v17 = (v2 + v15 + v9 + 528);
    v18 = v15 - (v3 & 0x7FFFFFFFFFFFFFF8);
    do
    {
      *v17++ = v16;
      v18 += 8;
    }

    while (v18);
    if (v3 == v7)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  return result;
}

void UIKitBarButtonItem.updateRepresentation()()
{
  v1 = v0;
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v57 - v6;
  v8 = type metadata accessor for PlatformItemList.Item();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v57 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  v16 = &v0[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem];
  swift_beginAccess();
  v62 = *(v9 + 48);
  if (!v62(v16, 1, v8) && ((v18 = v16[112]) != 0 || (v18 = *v16) != 0))
  {
    v19 = [v18 string];
    v20 = v4;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v16;
    v59 = v1;
    v22 = v8;
    v24 = v23;

    v25 = v21;
    v4 = v20;
    v17 = MEMORY[0x18D00C850](v25, v24);
    v8 = v22;
    v16 = v58;
    v1 = v59;
  }

  else
  {
    v17 = 0;
  }

  [v1 setTitle_];

  if (v62(v16, 1, v8))
  {
    v26 = 0;
  }

  else
  {
    v59 = v7;
    v27 = v8;
    outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v16, v15, type metadata accessor for PlatformItemList.Item);
    v28 = *(v15 + 13);
    v29 = *(v15 + 11);
    v78 = *(v15 + 12);
    v79 = v28;
    v30 = *(v15 + 13);
    v80[0] = *(v15 + 14);
    *(v80 + 11) = *(v15 + 235);
    v31 = *(v15 + 9);
    v32 = *(v15 + 7);
    v74 = *(v15 + 8);
    v75 = v31;
    v33 = *(v15 + 9);
    v34 = *(v15 + 11);
    v76 = *(v15 + 10);
    v77 = v34;
    v35 = *(v15 + 5);
    v71[0] = *(v15 + 4);
    v71[1] = v35;
    v36 = *(v15 + 7);
    v38 = *(v15 + 4);
    v37 = *(v15 + 5);
    v72 = *(v15 + 6);
    v73 = v36;
    v86[3] = v78;
    v87 = v30;
    v88[0] = *(v15 + 14);
    *(v88 + 11) = *(v15 + 235);
    v85 = v74;
    v86[0] = v33;
    v86[1] = v76;
    v86[2] = v29;
    v81 = v38;
    v82 = v37;
    v83 = v72;
    v84 = v32;
    if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v81) == 1)
    {
      v26 = 0;
    }

    else if (v87)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v26 = swift_dynamicCastObjCClassUnconditional();
    }

    else
    {
      v69 = v85;
      v70[0] = v86[0];
      *(v70 + 12) = *(v86 + 12);
      v65 = v81;
      v66 = v82;
      v67 = v83;
      v68 = v84;
      v39 = *(v15 + 6);
      v58 = v4;
      v40 = MEMORY[0x1E69E6720];
      _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(v71, v63, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730], MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
      outlined init with copy of GraphicsImage(&v81, v63);
      v26 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, v39);
      v41 = v40;
      v4 = v58;
      _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v71, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730], v41, _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
      v63[4] = v69;
      v64[0] = v70[0];
      *(v64 + 12) = *(v70 + 12);
      v63[0] = v65;
      v63[1] = v66;
      v63[2] = v67;
      v63[3] = v68;
      outlined destroy of GraphicsImage(v63);
    }

    _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v15, type metadata accessor for PlatformItemList.Item);
    v8 = v27;
    v7 = v59;
  }

  [v1 setImage_];

  v42 = v62(v16, 1, v8);
  v43 = v61;
  if (v42 || v16[52] < 2)
  {
    [v1 setAction_];
    [v1 setTarget_];
  }

  else
  {
    [v1 setAction_];
    [v1 setTarget_];
  }

  *&v1[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_cachedMenuRepresentation] = 0;

  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(v16, v7, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  if (v62(v7, 1, v8) != 1)
  {
    _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v7, v43, type metadata accessor for PlatformItemList.Item);
    if (*v43)
    {
      v44 = v43[117];
      if (v44)
      {
        LODWORD(v44) = *(v44 + 16) != 0;
      }
    }

    else
    {
      v45 = v43[112];
      v44 = v43[117];
      if (v44)
      {
        LODWORD(v44) = *(v44 + 16) != 0;
        if (!v45)
        {
LABEL_29:
          if (v44)
          {
            goto LABEL_30;
          }

LABEL_31:
          _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v43, type metadata accessor for PlatformItemList.Item);
          goto LABEL_32;
        }
      }

      else
      {
        if (!v45)
        {
          goto LABEL_31;
        }

        LODWORD(v44) = 0;
      }
    }

    if (v43[52] != 1)
    {
LABEL_30:
      v46 = objc_opt_self();
      v47 = v8;
      v48 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v83 = partial apply for closure #1 in UIKitBarButtonItem.updateRepresentation();
      *(&v83 + 1) = v48;
      *&v81 = MEMORY[0x1E69E9820];
      *(&v81 + 1) = 1107296256;
      *&v82 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
      *(&v82 + 1) = &block_descriptor_20_1;
      v49 = _Block_copy(&v81);

      v50 = [v46 elementWithUncachedProvider_];
      v51 = v49;
      v8 = v47;
      _Block_release(v51);
      _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v43, type metadata accessor for PlatformItemList.Item);
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v7, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
LABEL_32:
  v50 = 0;
LABEL_33:
  v52 = [v1 menuRepresentation];
  if (!v52)
  {
    if (!v50)
    {
      v54 = 0;
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v53 = v52;
  if (!v50)
  {
    v55 = 0;

    goto LABEL_40;
  }

  if (v53 != v50)
  {
LABEL_40:
    [v1 setMenuRepresentation_];
  }

LABEL_41:
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(v16, v4, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  if (v62(v4, 1, v8) == 1)
  {

    _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v4, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  }

  else
  {
    v56 = v60;
    _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v4, v60, type metadata accessor for PlatformItemList.Item);
    if ([v1 isEnabled] == *(v56 + 56))
    {
      _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v56, type metadata accessor for PlatformItemList.Item);
    }

    else
    {
      [v1 setEnabled_];

      _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v56, type metadata accessor for PlatformItemList.Item);
    }
  }
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  v6 = (a4[7] + 80 * result);
  *(v6 + 57) = *(a3 + 57);
  v7 = a3[3];
  v6[2] = a3[2];
  v6[3] = v7;
  v8 = a3[1];
  *v6 = *a3;
  v6[1] = v8;
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = (a4[7] + 48 * result);
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  v4[2] = a3[2];
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = (a4[7] + 80 * result);
  *(v4 + 57) = *(a3 + 57);
  v5 = a3[3];
  v4[2] = a3[2];
  v4[3] = v5;
  v6 = a3[1];
  *v4 = *a3;
  v4[1] = v6;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = (a4[7] + 96 * result);
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  *(v4 + 73) = *(a3 + 73);
  v6 = a3[4];
  v4[3] = a3[3];
  v4[4] = v6;
  v4[2] = a3[2];
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

uint64_t PlatformBarUpdater.updateIfNeeded(role:)(uint64_t a1)
{
  outlined init with copy of ToolbarPlacement.Role(a1, &v15);
  if (*(&v16 + 1) >= 7uLL)
  {
    outlined destroy of ToolbarPlacement.Role(&v15);
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 0x78u >> SBYTE8(v16);
  }

  swift_beginAccess();
  v4 = *(v1 + 24);
  if (!*(v4 + 16) || (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) == 0))
  {
    swift_endAccess();
    return 0;
  }

  v7 = (*(v4 + 56) + 80 * v5);
  v19 = *v7;
  v9 = v7[2];
  v8 = v7[3];
  v10 = *(v7 + 57);
  v20 = v7[1];
  v21 = v9;
  *&v22[9] = v10;
  *v22 = v8;
  swift_endAccess();
  if ((v19 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of ToolbarAppearanceConfiguration(&v19, &v15);
  PlatformBarUpdater.scrollGeometry(edge:)(v3 & 1, &v15);
  swift_beginAccess();
  InferredToolbarState.update(edge:to:)(v3 & 1);
  swift_endAccess();
  v17 = v21;
  v18[0] = *v22;
  *(v18 + 9) = *&v22[9];
  v15 = v19;
  v16 = v20;
  PlatformBarUpdater.updateBackgroundHost(role:configuration:)(a1, &v15);
  if (*&v22[16])
  {
    outlined init with copy of ToolbarPlacement.Role(a1, &v15);
    swift_beginAccess();
    v12 = specialized Dictionary.subscript.modify(v14, &v15);
    if (*(v11 + 8) == 1)
    {
      (v12)(v14, 0);
      swift_endAccess();
    }

    else
    {
      *(v11 + 64) = 0;
      (v12)(v14, 0);
      swift_endAccess();
    }

    outlined destroy of ToolbarAppearanceConfiguration(&v19);
    outlined destroy of ToolbarPlacement.Role(&v15);
    return 1;
  }

  else
  {
    outlined destroy of ToolbarAppearanceConfiguration(&v19);
    return 1;
  }
}

void PlatformBarUpdater.updateBackgroundHost(role:configuration:)(uint64_t a1, _OWORD *a2)
{
  v4 = a2[3];
  v18[2] = a2[2];
  v19[0] = v4;
  *(v19 + 9) = *(a2 + 57);
  v5 = a2[1];
  v18[0] = *a2;
  v18[1] = v5;
  outlined init with copy of ToolbarPlacement.Role(a1, v16);
  if (v17 <= 6)
  {
    if (((1 << v17) & 0x56) != 0)
    {
      return;
    }

    if (v17 == 3)
    {
      v13 = *(v2 + 56);
      if (v13)
      {
        v14 = [v13 toolbar];
        if (v14)
        {
          v8 = v14;
          type metadata accessor for UIKitToolbar();
          v15 = swift_dynamicCastClass();
          if (v15)
          {
            specialized PlatformBarUpdater.updateBackgroundHost<A>(host:role:configuration:)(v15, a1, v18);
          }

          goto LABEL_11;
        }
      }

      return;
    }

    if (v17 == 5)
    {
      v6 = *(v2 + 64);
      if (!v6)
      {
        return;
      }

      v7 = v6;
      v8 = v7;
      v9 = &selRef_tabBar;
      v10 = a1;
      v11 = 1;
LABEL_10:
      specialized PlatformBarUpdater.updateBackgroundHost<A>(host:role:configuration:)(v7, v10, v18, v11, v9);
LABEL_11:

      return;
    }
  }

  if (!v17)
  {
    v12 = *(v2 + 56);
    if (!v12)
    {
      return;
    }

    v7 = v12;
    v8 = v7;
    v9 = &selRef_navigationBar;
    v10 = a1;
    v11 = 0;
    goto LABEL_10;
  }

  outlined destroy of ToolbarPlacement.Role(v16);
}

void specialized PlatformBarBackgroundHost.update(configuration:barState:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, SEL *a4@<X3>, char *a5@<X8>)
{
  v8 = v5;
  v12 = *(a1 + 24);

  Transaction.animation.setter();
  if ((v12 - 1) < 2)
  {

    v13 = *(a1 + 57);
    v14 = 1;
    if (v13 != 2)
    {
      if (v13)
      {
LABEL_4:
        v15 = [v5 *a4];
        v16 = [objc_opt_self() whiteColor];
        [v15 setTintColor_];

        v17 = 0;
        v18 = 1;
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_27;
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  if ((v20 & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v21 = *(*(a2 + 56) + 8 * v19);

  if (v21 >= 1.0)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v22 = *(a1 + 57);
  if (v22 == 2)
  {
    goto LABEL_16;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_28;
  }

  v23 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  if ((v24 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    return;
  }

  if (*(*(a2 + 56) + 8 * v23) > 0.5)
  {
    if (v22)
    {
      goto LABEL_4;
    }

LABEL_15:
    v25 = [v5 *a4];
    v16 = [objc_opt_self() blackColor];
    [v25 setTintColor_];

    v17 = 0;
    v18 = 0;
    goto LABEL_17;
  }

LABEL_16:
  v16 = [v5 *a4];
  [v16 setTintColor_];
  v18 = 2;
  v17 = 1;
LABEL_17:

  v26 = [objc_opt_self() currentDevice];
  v27 = [v26 userInterfaceIdiom];

  if (v27 == 6 || (static _GraphInputs.defaultInterfaceIdiom.getter(), (static Solarium.isEnabled(for:)() & 1) == 0))
  {
    v28 = [v8 *a4];
    v29 = v28;
    v30 = 1;
    if (v18)
    {
      v30 = 2;
    }

    if (v17)
    {
      v31 = 0;
    }

    else
    {
      v31 = v30;
    }

    [v28 setOverrideUserInterfaceStyle_];
  }

  *a5 = v14;
  a5[1] = v18;
}

uint64_t outlined destroy of BarAppearanceBridge.UpdateContext?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for BarAppearanceBridge.UpdateContext?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t View.accessibilityShowsLargeContentViewer<A, B>(_:largeContentView:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v34 = a7;
  v32 = a8;
  v33 = a4;
  v30 = a3;
  v31 = a2;
  v29 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v19;
  v36 = v18;
  v37 = a9;
  v38 = v20;
  v21 = type metadata accessor for AccessibilityLargeContentViewModifier();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v28 - v24;
  v26 = (*(v14 + 16))(v17, v29, a6, v23);
  v31(v26);
  AccessibilityLargeContentViewModifier.init(flags:largeContentView:)(v17, v12, a6, a5, v25);
  MEMORY[0x18D00A570](v25, v33, v21, v34);
  return (*(v22 + 8))(v25, v21);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonOutsetKey>, &unk_1F000EC68, &protocol witness table for ButtonOutsetKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t BarEdgeReader.MakeView.value.getter(uint64_t a1, char a2)
{
  type metadata accessor for BarEdgeReader();
  v3 = *AGGraphGetValue();

  if (a2)
  {
    v4 = 2;
  }

  else
  {
    type metadata accessor for ToolbarStorage?(0, &lazy cache variable for type metadata for HorizontalEdge?, MEMORY[0x1E697E390], MEMORY[0x1E69E6720]);
    v4 = *AGGraphGetValue();
  }

  v3(v4);
}

uint64_t destroy for UIKitSystemButtonConfigurationModifier(uint64_t a1)
{
  v2 = type metadata accessor for UIButton.Configuration();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t protocol witness for Rule.value.getter in conformance ScrollBehaviorModifier<A>.LayoutRoleFilter@<X0>(uint64_t *a1@<X8>)
{
  result = ScrollBehaviorModifier.LayoutRoleFilter.value.getter();
  *a1 = result;
  return result;
}

void @objc UIKitBarItemHost.willMove(toSuperview:)(void *a1, uint64_t a2, UIView_optional *a3)
{
  v5 = a3;
  v6 = a1;
  UIKitBarItemHost.willMove(toSuperview:)(a3);
}

Swift::Void __swiftcall UIKitBarItemHost.willMove(toSuperview:)(UIView_optional *toSuperview)
{
  ObjectType = swift_getObjectType();
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  [(UIView_optional *)&v7 willMoveToSuperview:toSuperview];
  if (toSuperview)
  {
    UIKitBarItemHost.initializeSize()();
    _UIHostingView.viewGraph.getter();
    static _ProposedSize.unspecified.getter();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = *(v4 + 1792);
    v6[3] = *(v4 + 1800);
    v6[4] = v5;
    swift_beginAccess();
    _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(0, &lazy cache variable for type metadata for ViewGraphGeometryObservers<SizeThatFitsMeasurer>, lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer, MEMORY[0x1E697FA70], MEMORY[0x1E6980718]);
    ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
    swift_endAccess();
  }

  else
  {
    _UIHostingView.viewGraph.getter();
    swift_beginAccess();
    _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(0, &lazy cache variable for type metadata for ViewGraphGeometryObservers<SizeThatFitsMeasurer>, lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer, MEMORY[0x1E697FA70], MEMORY[0x1E6980718]);
    ViewGraphGeometryObservers.removeAll()();
    swift_endAccess();
  }
}

uint64_t sub_18BF67BC0()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BF67BF8()
{

  return swift_deallocObject();
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a2, v21);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return outlined init with take of Any(a1, v17);
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
      _s7SwiftUI15HashableWeakBoxVySo16UIViewControllerCGMaTm_0(0, &lazy cache variable for type metadata for PartialKeyPath<UISplitViewController>, &lazy cache variable for type metadata for UISplitViewController, 0x1E69DCF78, MEMORY[0x1E69E6B88]);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return outlined init with take of Any(a1, v20);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

{
  v7 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a2);
  MEMORY[0x18D00F6F0](a3);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      if (v12[1] == a3 && *v12 == a2)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
    a2 = *v12;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v16;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t View.accessibilityRepresentation<A>(representation:)(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AccessibilityRepresentationModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  a1(v13);
  (*(v8 + 32))(v15, v10, a4);
  MEMORY[0x18D00A570](v15, a3, v11, v17);
  return (*(v12 + 8))(v15, v11);
}

uint64_t static UITraitBridgedEnvironmentResolver.write<A, B>(bridgedKey:to:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v20 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  (*(v18 + 16))(&v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a5, v16);
  swift_dynamicCast();
  EnvironmentValues.setBridgedValue<A>(value:for:)(v14, a1, a4, a6);
  return (*(v12 + 8))(v14, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for OnScrollVisibilityGeometryAction(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

unint64_t getEnumTag for AnyNavigationPath.Error(void *a1)
{
  v1 = a1[1];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

void *destructiveInjectEnumTag for AnyNavigationPath.Error(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    *result &= 0xFFFFFFFFFFFFFF8uLL;
    result[1] = v2;
  }

  else
  {
    *result = 8 * (a2 - 2);
    result[1] = 0x8000000000000000;
  }

  return result;
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>)
  {
    type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>();
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<TextAlignment>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA0C6ValuesV02__D24_defaultPresentationSize33_363B9ACC7D2AD49920A01960A63412D3LLV_Tt1g5(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = a3 & a6;
  v7 = *&a1 == *&a4;
  if (*&a2 != *&a5)
  {
    v7 = 0;
  }

  if (a6)
  {
    v7 = a3 & a6;
  }

  if ((a3 & 1) == 0)
  {
    v6 = v7;
  }

  return v6 & 1;
}

uint64_t destructiveInjectEnumTag for HandGestureShortcutInteractiveControl.BorderShape(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [ToolbarStorage.Entry] and conformance [A](unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for View.body.getter in conformance BarItemView@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  closure #1 in BarItemView.body.getter(v1, a1 + 24);
  result = swift_getKeyPath();
  *(a1 + 184) = result;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  return result;
}

uint64_t closure #1 in BarItemView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of _ViewList_View(a1, v18);
  v4 = *(a1 + 96);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(a1 + 104, &v19, type metadata accessor for WeakBox<UIBarButtonItem>);
  v18[96] = v4;
  v5 = *(a1 + 97);
  if (v5 == 1)
  {
    v6 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = v6;
  }

  else
  {
    v15 = 0;
    v8 = 0;
    v10 = 0;
    v12 = 0;
    v14 = 0;
  }

  outlined init with copy of ToolbarStorage?(v18, v17, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, type metadata accessor for ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, &unk_1EFF88310, type metadata accessor for ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>);
  outlined init with copy of ToolbarStorage?(v17, a2, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, type metadata accessor for ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, &unk_1EFF88310, type metadata accessor for ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>);
  *(a2 + 112) = v15;
  *(a2 + 120) = v8;
  *(a2 + 128) = v10;
  *(a2 + 136) = v12;
  *(a2 + 144) = v14;
  *(a2 + 152) = 0;
  *(a2 + 153) = v5 ^ 1;
  outlined destroy of ToolbarStorage?(v18, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, type metadata accessor for ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, &unk_1EFF88310, type metadata accessor for ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>);
  return outlined destroy of ToolbarStorage?(v17, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, type metadata accessor for ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, &unk_1EFF88310, type metadata accessor for ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>);
}

uint64_t implicit closure #2 in static AccessibilityLargeContentViewBehaviorModifier._makeView(modifier:inputs:body:)(char a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in static AccessibilityLargeContentViewBehaviorModifier.makeTransform(behavior:);
  *(v3 + 24) = v2;
  type metadata accessor for (_:)();
  v4 = Attribute.init<A>(body:value:flags:update:)();

  return v4;
}

uint64_t sub_18BF68798()
{

  return swift_deallocObject();
}

uint64_t implicit closure #1 in static BarItemModifier._makeView(modifier:inputs:body:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type BarItemModifier.Transform and conformance BarItemModifier.Transform();
  return Attribute.init<A>(body:value:flags:update:)();
}

unint64_t lazy protocol witness table accessor for type BarItemModifier.Transform and conformance BarItemModifier.Transform()
{
  result = lazy protocol witness table cache variable for type BarItemModifier.Transform and conformance BarItemModifier.Transform;
  if (!lazy protocol witness table cache variable for type BarItemModifier.Transform and conformance BarItemModifier.Transform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BarItemModifier.Transform and conformance BarItemModifier.Transform);
  }

  return result;
}

uint64_t static CoreInteractionRepresentableAdaptor.appendFeature(to:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, v1, v2, v3);
  type metadata accessor for UIInteractionRepresentableFeature();
  swift_getWitnessTable();
  return CoreInteractionRepresentableFeatureBufferProxy.append<A>(_:)();
}

{
  swift_getAssociatedTypeWitness();
  type metadata accessor for UIInteractionRepresentableFeature();
  swift_getWitnessTable();
  return CoreInteractionRepresentableFeatureBufferProxy.append<A>(_:)();
}

double static PlatformItemEnabledModifier._makeView(modifier:inputs:body:)@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
{
  v6 = *(a2 + 6);
  v7 = *(a2 + 14);
  v8 = a2[1];
  v13 = *a2;
  v14 = v8;
  v15 = a2[2];
  v16 = v6;
  v17 = v7;
  v18 = *(a2 + 60);
  v19 = *(a2 + 76);
  a3(&v20, a1, &v13);
  *&v13 = v6;
  DWORD2(v13) = v7;
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v9 = a2[1];
    v13 = *a2;
    v14 = v9;
    v15 = a2[2];
    v16 = v6;
    v17 = v7;
    v18 = *(a2 + 60);
    v19 = *(a2 + 76);
    v10 = _ViewInputs.isEnabled.getter();
    MEMORY[0x1EEE9AC00](v10);
    *&v13 = v6;
    DWORD2(v13) = v7;
    MEMORY[0x1EEE9AC00](v11);

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  *a4 = v20;
  result = v21;
  a4[1] = v21;
  return result;
}

void type metadata accessor for _ViewModifier_Content<PlatformItemTintModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<PlatformItemTintModifier>)
  {
    lazy protocol witness table accessor for type PlatformItemTintModifier and conformance PlatformItemTintModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<PlatformItemTintModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PlatformItemTintModifier>, PlatformItemListTransformModifier<LabelPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PlatformItemTintModifier>, PlatformItemListTransformModifier<LabelPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PlatformItemTintModifier>, PlatformItemListTransformModifier<LabelPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<PlatformItemTintModifier>, PlatformItemListTransformModifier<LabelPlatformItemListFlags>>();
    lazy protocol witness table accessor for type _ViewModifier_Content<PlatformItemTintModifier> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PlatformItemTintModifier>, PlatformItemListTransformModifier<LabelPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for PlatformItemListTransformModifier<LabelPlatformItemListFlags>()
{
  if (!lazy cache variable for type metadata for PlatformItemListTransformModifier<LabelPlatformItemListFlags>)
  {
    v0 = type metadata accessor for PlatformItemListTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformItemListTransformModifier<LabelPlatformItemListFlags>);
    }
  }
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance UIKitButtonStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t lazy protocol witness table accessor for type ToolbarButtonHoverShape and conformance ToolbarButtonHoverShape()
{
  result = lazy protocol witness table cache variable for type ToolbarButtonHoverShape and conformance ToolbarButtonHoverShape;
  if (!lazy protocol witness table cache variable for type ToolbarButtonHoverShape and conformance ToolbarButtonHoverShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarButtonHoverShape and conformance ToolbarButtonHoverShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarButtonHoverShape and conformance ToolbarButtonHoverShape;
  if (!lazy protocol witness table cache variable for type ToolbarButtonHoverShape and conformance ToolbarButtonHoverShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarButtonHoverShape and conformance ToolbarButtonHoverShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarButtonHoverShape and conformance ToolbarButtonHoverShape;
  if (!lazy protocol witness table cache variable for type ToolbarButtonHoverShape and conformance ToolbarButtonHoverShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarButtonHoverShape and conformance ToolbarButtonHoverShape);
  }

  return result;
}

uint64_t implicit closure #1 in static PlatformItemEnabledModifier._makeView(modifier:inputs:body:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type PlatformItemEnabledModifier.PlatformItemListTransform and conformance PlatformItemEnabledModifier.PlatformItemListTransform();
  return Attribute.init<A>(body:value:flags:update:)();
}

unint64_t lazy protocol witness table accessor for type PlatformItemEnabledModifier.PlatformItemListTransform and conformance PlatformItemEnabledModifier.PlatformItemListTransform()
{
  result = lazy protocol witness table cache variable for type PlatformItemEnabledModifier.PlatformItemListTransform and conformance PlatformItemEnabledModifier.PlatformItemListTransform;
  if (!lazy protocol witness table cache variable for type PlatformItemEnabledModifier.PlatformItemListTransform and conformance PlatformItemEnabledModifier.PlatformItemListTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemEnabledModifier.PlatformItemListTransform and conformance PlatformItemEnabledModifier.PlatformItemListTransform);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for AccessibilityBridgedInteraction<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA08BordereddE0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<ToolbarButtonContentModifier>, lazy protocol witness table accessor for type ToolbarButtonContentModifier and conformance ToolbarButtonContentModifier, &type metadata for ToolbarButtonContentModifier, MEMORY[0x1E697FDE8]);
    type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>, &lazy cache variable for type metadata for ToolbarButtonHoverShape?, &type metadata for ToolbarButtonHoverShape);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>();
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA08BordereddE0VGMaTm_0(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, UIKitSystemButtonConfigurationModifier, UIKitButtonStyleModifier<BorderlessButtonStyleBase>>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, UIKitSystemButtonConfigurationModifier, UIKitButtonStyleModifier<BorderlessButtonStyleBase>>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
    type metadata accessor for UIKitSystemButtonConfigurationModifier(255);
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA08BordereddE0VGMaTm_0(255, &lazy cache variable for type metadata for UIKitButtonStyleModifier<BorderlessButtonStyleBase>, lazy protocol witness table accessor for type BorderlessButtonStyleBase and conformance BorderlessButtonStyleBase, &type metadata for BorderlessButtonStyleBase, type metadata accessor for UIKitButtonStyleModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, UIKitSystemButtonConfigurationModifier, UIKitButtonStyleModifier<BorderlessButtonStyleBase>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AutomaticHoverEffect and conformance AutomaticHoverEffect()
{
  result = lazy protocol witness table cache variable for type AutomaticHoverEffect and conformance AutomaticHoverEffect;
  if (!lazy protocol witness table cache variable for type AutomaticHoverEffect and conformance AutomaticHoverEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticHoverEffect and conformance AutomaticHoverEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomaticHoverEffect and conformance AutomaticHoverEffect;
  if (!lazy protocol witness table cache variable for type AutomaticHoverEffect and conformance AutomaticHoverEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticHoverEffect and conformance AutomaticHoverEffect);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ToolbarButtonDefaultForegroundModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
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
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

unint64_t lazy protocol witness table accessor for type ToolbarButtonDefaultForegroundModifier.ChildEnvironment and conformance ToolbarButtonDefaultForegroundModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type ToolbarButtonDefaultForegroundModifier.ChildEnvironment and conformance ToolbarButtonDefaultForegroundModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type ToolbarButtonDefaultForegroundModifier.ChildEnvironment and conformance ToolbarButtonDefaultForegroundModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarButtonDefaultForegroundModifier.ChildEnvironment and conformance ToolbarButtonDefaultForegroundModifier.ChildEnvironment);
  }

  return result;
}

uint64_t implicit closure #2 in static ButtonActionModifier._makeView(modifier:inputs:body:)(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a2;
  v9 = type metadata accessor for ButtonActionModifier.PlatformSelectionBehavior();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for _ContiguousArrayStorage<PlatformItemList.Item>(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v6, closure #1 in Attribute.init<A>(_:)partial apply, v8, v9, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v5;
}

uint64_t protocol witness for static PlatformImageRepresentable.makeRepresentation(inputs:context:outputs:) in conformance PlatformItemListImageRepresentable(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *, ValueMetadata *, uint64_t, void *, ValueMetadata *, _UNKNOWN **))
{
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v15 = a2;
  v16 = v10;
  v17 = v11;
  v13[2] = a6;
  v13[3] = &v14;

  a8(&v16, &type metadata for PlatformItemList.Key, a7, v13, &type metadata for PlatformItemList.Key, &protocol witness table for PlatformItemList.Key);
}

void type metadata completion function for MenuVisitor()
{
  type metadata accessor for HashableCommandGroupPlacementWrapper?(319, &lazy cache variable for type metadata for HashableCommandGroupPlacementWrapper?, type metadata accessor for HashableCommandGroupPlacementWrapper, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t type metadata completion function for HashableCommandGroupPlacementWrapper()
{
  result = type metadata accessor for CommandGroupPlacement(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static PlatformSpacerRepresentable.makeRepresentation(inputs:outputs:) in conformance PlatformItemListSpacerRepresentable()
{
  return protocol witness for static PlatformSpacerRepresentable.makeRepresentation(inputs:outputs:) in conformance PlatformItemListSpacerRepresentable();
}

{

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
}

void outlined consume of PlatformItemList.Item.SystemItem(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  if (a5 >> 62 == 2)
  {
    outlined consume of AnyShareConfiguration.Storage(a1, a2, a3, a4, a5);
    outlined consume of Text?(a6, a7, a8, a9);

    outlined consume of Text?(a10, a11, a12, a13);
  }

  else if (a5 >> 62 == 1)
  {
  }
}

void @objc UIKitBarItemHost.__ivar_destroyer(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  v3 = *(a1 + *((*v2 & *a1) + 0x718));
}

__n128 initializeWithCopy for ToolbarItemPlacement.Role(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2 >= 2)
  {
    v2 = *a2 + 2;
  }

  if (v2 == 1)
  {
    v3 = *(a2 + 24);
    *(a1 + 24) = v3;
    (**(v3 - 8))();
    *(a1 + 40) = 1;
  }

  else if (v2)
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t _ConditionalContent<>.ToolbarProvider.makeChildInputs()@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[3];
  v14 = v1[2];
  v15[0] = v3;
  *(v15 + 12) = *(v1 + 60);
  v4 = *(v15 + 12);
  v5 = v1[1];
  v13[0] = *v1;
  v6 = v13[0];
  v13[1] = v5;
  v7 = v5;
  a1[2] = v14;
  a1[3] = v3;
  *(a1 + 60) = v4;
  *a1 = v6;
  a1[1] = v5;
  swift_beginAccess();
  v8 = v7[3];
  v16[1] = v7[2];
  v16[2] = v8;
  v9 = v7[5];
  v16[3] = v7[4];
  v16[4] = v9;
  v16[0] = v7[1];
  type metadata accessor for MutableBox<CachedEnvironment>();
  v10 = swift_allocObject();
  memmove((v10 + 16), v7 + 1, 0x50uLL);
  outlined init with copy of _ToolbarInputs(v13, v12);
  outlined init with copy of CachedEnvironment(v16, v12);

  *(a1 + 2) = v10;
  return result;
}

uint64_t _ConditionalContent<>.ToolbarProvider.makeTrueOutputs(child:inputs:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[3];
  v8[2] = a2[2];
  *v9 = v4;
  *&v9[12] = *(a2 + 60);
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  v6 = *(a3 + 16);
  _GraphValue.init(_:)();
  return (*(*(a3 + 32) + 32))(v10, v8, v6);
}

uint64_t initializeWithCopy for DefaultToolbarBarPocketModifier(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 41))
  {
    if (*(a2 + 40) == 1)
    {
      v4 = *(a2 + 24);
      *(a1 + 24) = v4;
      (**(v4 - 8))(a1, a2);
      *(a1 + 40) = 1;
    }

    else
    {
      v5 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v5;
      *(a1 + 25) = *(a2 + 25);
    }

    *(a1 + 41) = 1;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 41) = 0;
  }

  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  return a1;
}