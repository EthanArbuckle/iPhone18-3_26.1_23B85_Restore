void *specialized closure #1 in DynamicBody.updateValue()(const void *a1, uint64_t a2, char *a3)
{
  v5 = v3;
  v34[70] = *MEMORY[0x1E69E9840];
  v34[0] = *(a2 + 8);
  v34[1] = *(a2 + 16);
  v33[0] = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v33) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for GeometryReader<GlassEntryView>, lazy protocol witness table accessor for type GlassEntryView and conformance GlassEntryView, &type metadata for GlassEntryView, type metadata accessor for GeometryReader), !AGGraphGetOutputValue()))
  {
    v9 = 1;
  }

  else
  {
    v9 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for GeometryReader<GlassEntryView>, lazy protocol witness table accessor for type GlassEntryView and conformance GlassEntryView, &type metadata for GlassEntryView, type metadata accessor for GeometryReader);
  OutputValue = AGGraphGetOutputValue();
  v14 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = v14;
    swift_once();
    v14 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v4 = v3;
    v5 = OutputValue;
    if (v12 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v14);
      v18 = &v30 - v17;
      v19 = 0;
      v20 = 0;
      v21 = 0;
LABEL_13:
      v22 = -v21;
      while ((v12 + v22) | v20)
      {
        if (!v10)
        {
          goto LABEL_38;
        }

        v24 = v10 + v20;
        if (v12 + v22 == 1)
        {
          v20 = 0;
        }

        else
        {
          v20 += *(v24 + 8);
        }

        v23 = *(v24 + 12);
        --v22;
        if (v23 < 0)
        {
          *&v18[8 * v19] = v23 & 0x7FFFFFFF;
          v21 = -v22;
          if (!__OFADD__(v19++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v19 < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = *(v16 + 616);
        if (*(v26 + 16) >= 0x45uLL)
        {
          if (*(v26 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v34[0] = v18;
            v34[1] = v19;
            LOBYTE(v34[2]) = v5 != 0;
            BYTE1(v34[2]) = v15;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v31 = v14;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v14 = v31;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v29 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v29, v12, v10, v11 | (v12 << 32), v5 != 0, v31, 7);
  if (v4)
  {

    result = MEMORY[0x193AC4820](v29, -1, -1);
    __break(1u);
    return result;
  }

  MEMORY[0x193AC4820](v29, -1, -1);
LABEL_28:
  result = memcpy(v33, a1, sizeof(v33));
  if (*a3)
  {
    memcpy(v34, a1, 0x230uLL);
    outlined init with copy of GlassEntryContainerView(v33, &v32);
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v34);
    return outlined destroy of GlassEntryContainerView(v33);
  }

  return result;
}

{
  v5 = v3;
  v35[48] = *MEMORY[0x1E69E9840];
  v35[0] = *(a2 + 8);
  v35[1] = *(a2 + 16);
  v34[0] = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v34) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, TranslationKickModifier<Int>>(), !AGGraphGetOutputValue()))
  {
    v9 = 1;
  }

  else
  {
    v9 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, TranslationKickModifier<Int>>();
  OutputValue = AGGraphGetOutputValue();
  v14 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = v14;
    swift_once();
    v14 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v4 = v3;
    v5 = OutputValue;
    if (v12 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v14);
      v18 = &v31 - v17;
      v19 = 0;
      v20 = 0;
      v21 = 0;
LABEL_13:
      v22 = -v21;
      while ((v12 + v22) | v20)
      {
        if (!v10)
        {
          goto LABEL_38;
        }

        v24 = v10 + v20;
        if (v12 + v22 == 1)
        {
          v20 = 0;
        }

        else
        {
          v20 += *(v24 + 8);
        }

        v23 = *(v24 + 12);
        --v22;
        if (v23 < 0)
        {
          *&v18[8 * v19] = v23 & 0x7FFFFFFF;
          v21 = -v22;
          if (!__OFADD__(v19++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v19 < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = *(v16 + 616);
        if (*(v26 + 16) >= 0x45uLL)
        {
          if (*(v26 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v35[0] = v18;
            v35[1] = v19;
            LOBYTE(v35[2]) = v5 != 0;
            BYTE1(v35[2]) = v15;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v32 = v14;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v14 = v32;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v30 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v30, v12, v10, v11 | (v12 << 32), v5 != 0, v32, 7);
  if (v4)
  {

    result = MEMORY[0x193AC4820](v30, -1, -1);
    __break(1u);
    return result;
  }

  MEMORY[0x193AC4820](v30, -1, -1);
LABEL_28:
  memcpy(v34, a1, sizeof(v34));
  v27 = *a3;
  result = memcpy(v35, a1, 0x180uLL);
  if (v27)
  {
    outlined init with copy of GlassTransitionStateModifier(v34, &v33);
    specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(v35);
    return outlined destroy of GlassTransitionStateModifier(v34);
  }

  return result;
}

{
  v5 = v3;
  v34[43] = *MEMORY[0x1E69E9840];
  v34[0] = *(a2 + 8);
  v34[1] = *(a2 + 16);
  v33[0] = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v33) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>>(), !AGGraphGetOutputValue()))
  {
    v9 = 1;
  }

  else
  {
    v9 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>>();
  OutputValue = AGGraphGetOutputValue();
  v14 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = v14;
    swift_once();
    v14 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v4 = v3;
    v5 = OutputValue;
    if (v12 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v14);
      v18 = &v31 - v17;
      v19 = 0;
      v20 = 0;
      v21 = 0;
LABEL_13:
      v22 = -v21;
      while ((v12 + v22) | v20)
      {
        if (!v10)
        {
          goto LABEL_38;
        }

        v24 = v10 + v20;
        if (v12 + v22 == 1)
        {
          v20 = 0;
        }

        else
        {
          v20 += *(v24 + 8);
        }

        v23 = *(v24 + 12);
        --v22;
        if (v23 < 0)
        {
          *&v18[8 * v19] = v23 & 0x7FFFFFFF;
          v21 = -v22;
          if (!__OFADD__(v19++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v19 < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = *(v16 + 616);
        if (*(v26 + 16) >= 0x45uLL)
        {
          if (*(v26 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v34[0] = v18;
            v34[1] = v19;
            LOBYTE(v34[2]) = v5 != 0;
            BYTE1(v34[2]) = v15;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  HIDWORD(v31) = v14;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v14 = HIDWORD(v31);
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v30 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v30, v12, v10, v11 | (v12 << 32), v5 != 0, HIDWORD(v31), 7);
  if (v4)
  {

    result = MEMORY[0x193AC4820](v30, -1, -1);
    __break(1u);
    return result;
  }

  MEMORY[0x193AC4820](v30, -1, -1);
LABEL_28:
  memcpy(v33, a1, 0x154uLL);
  v27 = *a3;
  result = memcpy(v34, a1, 0x154uLL);
  if (v27)
  {
    outlined init with copy of GlassEffectShapeModifier(v33, &v32);
    specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(v34);
    return outlined destroy of GlassEffectShapeModifier(v33);
  }

  return result;
}

{
  v5 = v3;
  v34[36] = *MEMORY[0x1E69E9840];
  v34[0] = *(a2 + 8);
  v34[1] = *(a2 + 16);
  v33[0] = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v33) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, &type metadata for GlassMaterialEffect, type metadata accessor for ModifiedContent), !AGGraphGetOutputValue()))
  {
    v9 = 1;
  }

  else
  {
    v9 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, &type metadata for GlassMaterialEffect, type metadata accessor for ModifiedContent);
  OutputValue = AGGraphGetOutputValue();
  v14 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = v14;
    swift_once();
    v14 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v4 = v3;
    v5 = OutputValue;
    if (v12 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v14);
      v18 = &v30 - v17;
      v19 = 0;
      v20 = 0;
      v21 = 0;
LABEL_13:
      v22 = -v21;
      while ((v12 + v22) | v20)
      {
        if (!v10)
        {
          goto LABEL_38;
        }

        v24 = v10 + v20;
        if (v12 + v22 == 1)
        {
          v20 = 0;
        }

        else
        {
          v20 += *(v24 + 8);
        }

        v23 = *(v24 + 12);
        --v22;
        if (v23 < 0)
        {
          *&v18[8 * v19] = v23 & 0x7FFFFFFF;
          v21 = -v22;
          if (!__OFADD__(v19++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v19 < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = *(v16 + 616);
        if (*(v26 + 16) >= 0x45uLL)
        {
          if (*(v26 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v34[0] = v18;
            v34[1] = v19;
            LOBYTE(v34[2]) = v5 != 0;
            BYTE1(v34[2]) = v15;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v31 = v14;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v14 = v31;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v29 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v29, v12, v10, v11 | (v12 << 32), v5 != 0, v31, 7);
  if (v4)
  {

    result = MEMORY[0x193AC4820](v29, -1, -1);
    __break(1u);
    return result;
  }

  MEMORY[0x193AC4820](v29, -1, -1);
LABEL_28:
  result = memcpy(v33, a1, 0x11CuLL);
  if (*a3)
  {
    memcpy(v34, a1, 0x11CuLL);
    outlined init with copy of GlassEffectView(v33, &v32);
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v34);
    return outlined destroy of GlassEffectView(v33);
  }

  return result;
}

{
  v5 = v3;
  v33[85] = *MEMORY[0x1E69E9840];
  v33[0] = *(a2 + 8);
  v33[1] = *(a2 + 16);
  v32[0] = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v32) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, ScheduledAnimationModifier<Int>>(), !AGGraphGetOutputValue()))
  {
    v9 = 1;
  }

  else
  {
    v9 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, ScheduledAnimationModifier<Int>>();
  OutputValue = AGGraphGetOutputValue();
  v14 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = v14;
    swift_once();
    v14 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v4 = v3;
    v5 = OutputValue;
    if (v12 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v14);
      v18 = &v30 - v17;
      v19 = 0;
      v20 = 0;
      v21 = 0;
LABEL_13:
      v22 = -v21;
      while ((v12 + v22) | v20)
      {
        if (!v10)
        {
          goto LABEL_38;
        }

        v24 = v10 + v20;
        if (v12 + v22 == 1)
        {
          v20 = 0;
        }

        else
        {
          v20 += *(v24 + 8);
        }

        v23 = *(v24 + 12);
        --v22;
        if (v23 < 0)
        {
          *&v18[8 * v19] = v23 & 0x7FFFFFFF;
          v21 = -v22;
          if (!__OFADD__(v19++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v19 < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = *(v16 + 616);
        if (*(v26 + 16) >= 0x45uLL)
        {
          if (*(v26 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v33[0] = v18;
            v33[1] = v19;
            LOBYTE(v33[2]) = v5 != 0;
            BYTE1(v33[2]) = v15;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  HIDWORD(v30) = v14;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v14 = HIDWORD(v30);
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v29 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v29, v12, v10, v11 | (v12 << 32), v5 != 0, HIDWORD(v30), 7);
  if (v4)
  {

    result = MEMORY[0x193AC4820](v29, -1, -1);
    __break(1u);
    return result;
  }

  MEMORY[0x193AC4820](v29, -1, -1);
LABEL_28:
  result = memcpy(v32, a1, sizeof(v32));
  if (*a3)
  {
    memcpy(v33, a1, 0x2A8uLL);
    outlined init with copy of GlassEntryView(v32, &v31);
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v33);
    return outlined destroy of GlassEntryView(v32);
  }

  return result;
}

{
  v5 = v3;
  v33[129] = *MEMORY[0x1E69E9840];
  v33[0] = *(a2 + 8);
  v33[1] = *(a2 + 16);
  v32[0] = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v32) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>), !AGGraphGetOutputValue()))
  {
    v9 = 1;
  }

  else
  {
    v9 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>);
  OutputValue = AGGraphGetOutputValue();
  v14 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = v14;
    swift_once();
    v14 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v4 = v3;
    v5 = OutputValue;
    if (v12 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v14);
      v18 = &v30 - v17;
      v19 = 0;
      v20 = 0;
      v21 = 0;
LABEL_13:
      v22 = -v21;
      while ((v12 + v22) | v20)
      {
        if (!v10)
        {
          goto LABEL_38;
        }

        v24 = v10 + v20;
        if (v12 + v22 == 1)
        {
          v20 = 0;
        }

        else
        {
          v20 += *(v24 + 8);
        }

        v23 = *(v24 + 12);
        --v22;
        if (v23 < 0)
        {
          *&v18[8 * v19] = v23 & 0x7FFFFFFF;
          v21 = -v22;
          if (!__OFADD__(v19++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v19 < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = *(v16 + 616);
        if (*(v26 + 16) >= 0x45uLL)
        {
          if (*(v26 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v33[0] = v18;
            v33[1] = v19;
            LOBYTE(v33[2]) = v5 != 0;
            BYTE1(v33[2]) = v15;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  HIDWORD(v30) = v14;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v14 = HIDWORD(v30);
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v29 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v29, v12, v10, v11 | (v12 << 32), v5 != 0, HIDWORD(v30), 7);
  if (v4)
  {

    result = MEMORY[0x193AC4820](v29, -1, -1);
    __break(1u);
    return result;
  }

  MEMORY[0x193AC4820](v29, -1, -1);
LABEL_28:
  result = memcpy(v32, a1, sizeof(v32));
  if (*a3)
  {
    memcpy(v33, a1, 0x408uLL);
    outlined init with copy of GlassItemView(v32, &v31);
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v33);
    return outlined destroy of GlassItemView(v32);
  }

  return result;
}

void specialized closure #1 in DynamicBody.updateValue()(uint64_t a1, uint64_t a2, char *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v30 = *(a2 + 8);
  v31 = *(a2 + 16);
  v29 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v29) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>(), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>();
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v24 = v12;
    swift_once();
    v12 = v24;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_38;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v27 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v18;
      while ((v10 + v19) | v17)
      {
        if (!v8)
        {
          goto LABEL_39;
        }

        v21 = v8 + v17;
        if (v10 + v19 == 1)
        {
          v17 = 0;
        }

        else
        {
          v17 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v16] = v20 & 0x7FFFFFFF;
          v18 = -v19;
          if (!__OFADD__(v16++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v16 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1)
        {
          if (static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v30 = v15;
            v31 = v16;
            v32 = OutputValue != 0;
            v33 = v13;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
            AGGraphAddTraceEvent();
          }
        }

LABEL_28:
        if ((*a3 & 1) == 0)
        {
          return;
        }

        goto LABEL_29;
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }
  }

  v28 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v28;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v27) = OutputValue != 0;
  v26 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v26, v10, v8, v9 | (v10 << 32), HIDWORD(v27), v28, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v26, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v26, -1, -1);
  if (*a3)
  {
LABEL_29:

    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v23);
  }
}

{
  v41 = *MEMORY[0x1E69E9840];
  v35 = *(a2 + 8);
  v34 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v34) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<_ViewModifier_Content<ScheduledAnimationModifier<Int>>, _ValueActionModifier2<Int>>(), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for ModifiedContent<_ViewModifier_Content<ScheduledAnimationModifier<Int>>, _ValueActionModifier2<Int>>();
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v29 = v12;
    swift_once();
    v12 = v29;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v32 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v18;
      while ((v10 + v19) | v17)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v17;
        if (v10 + v19 == 1)
        {
          v17 = 0;
        }

        else
        {
          v17 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v16] = v20 & 0x7FFFFFFF;
          v18 = -v19;
          if (!__OFADD__(v16++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v16 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          *&v35 = v15;
          *(&v35 + 1) = v16;
          LOBYTE(v36) = OutputValue != 0;
          BYTE1(v36) = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v33 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v33;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v32) = OutputValue != 0;
  v31 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v31, v10, v8, v9 | (v10 << 32), HIDWORD(v32), v33, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v31, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v31, -1, -1);
LABEL_28:
  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  v28 = *a3;
  v35 = *a1;
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  if (v28)
  {

    specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v35);
  }
}

{
  v5 = v3;
  v78 = *MEMORY[0x1E69E9840];
  v62 = *(a2 + 8);
  LODWORD(v47[0]) = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v47) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, ScheduledAnimationModifier<Int>>(), !AGGraphGetOutputValue()))
  {
    v9 = 1;
  }

  else
  {
    v9 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, ScheduledAnimationModifier<Int>>();
  OutputValue = AGGraphGetOutputValue();
  v14 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = v14;
    swift_once();
    v14 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v4 = a3;
    a3 = v3;
    v5 = OutputValue;
    if (v12 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v14);
      v18 = &v45 - v17;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      a3 = v4;
LABEL_13:
      v22 = -v21;
      while ((v12 + v22) | v20)
      {
        if (!v10)
        {
          goto LABEL_38;
        }

        v24 = v10 + v20;
        if (v12 + v22 == 1)
        {
          v20 = 0;
        }

        else
        {
          v20 += *(v24 + 8);
        }

        v23 = *(v24 + 12);
        --v22;
        if (v23 < 0)
        {
          *&v18[8 * v19] = v23 & 0x7FFFFFFF;
          v21 = -v22;
          if (!__OFADD__(v19++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v19 < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = *(v16 + 616);
        if (*(v26 + 16) >= 0x45uLL)
        {
          if (*(v26 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            *&v62 = v18;
            *(&v62 + 1) = v19;
            LOBYTE(v63) = v5 != 0;
            BYTE1(v63) = v15;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  HIDWORD(v45) = v14;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v14 = HIDWORD(v45);
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v44 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v44, v12, v10, v11 | (v12 << 32), v5 != 0, HIDWORD(v45), 7);
  if (a3)
  {

    MEMORY[0x193AC4820](v44, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v44, -1, -1);
  a3 = v4;
LABEL_28:
  v27 = *(a1 + 208);
  v28 = *(a1 + 176);
  v58 = *(a1 + 192);
  v59 = v27;
  v29 = *(a1 + 208);
  v60 = *(a1 + 224);
  v30 = *(a1 + 144);
  v31 = *(a1 + 112);
  v54 = *(a1 + 128);
  v55 = v30;
  v32 = *(a1 + 144);
  v33 = *(a1 + 176);
  v56 = *(a1 + 160);
  v57 = v33;
  v34 = *(a1 + 80);
  v35 = *(a1 + 48);
  v50 = *(a1 + 64);
  v51 = v34;
  v36 = *(a1 + 80);
  v37 = *(a1 + 112);
  v52 = *(a1 + 96);
  v53 = v37;
  v38 = *(a1 + 16);
  v47[0] = *a1;
  v47[1] = v38;
  v39 = *(a1 + 48);
  v41 = *a1;
  v40 = *(a1 + 16);
  v48 = *(a1 + 32);
  v49 = v39;
  v74 = v58;
  v75 = v29;
  v76 = *(a1 + 224);
  v70 = v54;
  v71 = v32;
  v72 = v56;
  v73 = v28;
  v66 = v50;
  v67 = v36;
  v68 = v52;
  v69 = v31;
  v62 = v41;
  v63 = v40;
  v61 = *(a1 + 240);
  v42 = *a3;
  v77 = *(a1 + 240);
  v64 = v48;
  v65 = v35;
  if (v42)
  {
    outlined init with copy of ScalePulseModifier<Int>(v47, &v46);
    specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v62);
    outlined destroy of ScalePulseModifier<Int>(v47);
  }
}

{
  v40 = *MEMORY[0x1E69E9840];
  v35 = *(a2 + 8);
  LODWORD(v33[0]) = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v33) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, &type metadata for GlassEffectContainerModifier, type metadata accessor for ModifiedContent), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, &type metadata for GlassEffectContainerModifier, type metadata accessor for ModifiedContent);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v27 = v12;
    swift_once();
    v12 = v27;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v30 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v18;
      while ((v10 + v19) | v17)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v17;
        if (v10 + v19 == 1)
        {
          v17 = 0;
        }

        else
        {
          v17 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v16] = v20 & 0x7FFFFFFF;
          v18 = -v19;
          if (!__OFADD__(v16++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v16 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          *&v35 = v15;
          *(&v35 + 1) = v16;
          LOBYTE(v36) = OutputValue != 0;
          BYTE1(v36) = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v31 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v31;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v30 = OutputValue != 0;
  v29 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v29, v10, v8, v9 | (v10 << 32), v30, v31, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v29, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v29, -1, -1);
LABEL_28:
  v23 = *(a1 + 48);
  v33[2] = *(a1 + 32);
  v33[3] = v23;
  v34 = *(a1 + 64);
  v24 = *(a1 + 16);
  v33[0] = *a1;
  v33[1] = v24;
  if (*a3)
  {
    v25 = *(a1 + 48);
    v37 = *(a1 + 32);
    v38 = v25;
    v39 = *(a1 + 64);
    v26 = *(a1 + 16);
    v35 = *a1;
    v36 = v26;
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v33, v32, type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>);
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v35);
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v33, type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>);
  }
}

{
  v35 = *MEMORY[0x1E69E9840];
  v32 = *(a2 + 8);
  v31 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v31) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<_ViewModifier_Content<FlexInteractionModifier>, FlexStateModifier>(), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for ModifiedContent<_ViewModifier_Content<FlexInteractionModifier>, FlexStateModifier>();
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v26 = v12;
    swift_once();
    v12 = v26;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v29 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v18;
      while ((v10 + v19) | v17)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v17;
        if (v10 + v19 == 1)
        {
          v17 = 0;
        }

        else
        {
          v17 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v16] = v20 & 0x7FFFFFFF;
          v18 = -v19;
          if (!__OFADD__(v16++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v16 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          *&v32 = v15;
          *(&v32 + 1) = v16;
          LOBYTE(v33) = OutputValue != 0;
          BYTE1(v33) = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v30 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v30;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v29) = OutputValue != 0;
  v28 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v28, v10, v8, v9 | (v10 << 32), HIDWORD(v29), v30, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v28, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v28, -1, -1);
LABEL_28:
  v23 = *(a1 + 32);
  v24 = *a3;
  v25 = *(a1 + 16);
  v32 = *a1;
  v33 = v25;
  v34 = v23;
  if (v24)
  {
    specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v32);
  }
}

{
  v35 = *MEMORY[0x1E69E9840];
  v31 = *(a2 + 8);
  v32 = *(a2 + 16);
  v30 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v30) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifierGesture<EventFilter<TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>>>(), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for ModifierGesture<EventFilter<TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>>>();
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v23 = v12;
    swift_once();
    v12 = v23;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_38;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v28 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v18;
      while ((v10 + v19) | v17)
      {
        if (!v8)
        {
          goto LABEL_39;
        }

        v21 = v8 + v17;
        if (v10 + v19 == 1)
        {
          v17 = 0;
        }

        else
        {
          v17 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v16] = v20 & 0x7FFFFFFF;
          v18 = -v19;
          if (!__OFADD__(v16++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v16 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1)
        {
          if (static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v31 = v15;
            v32 = v16;
            v33 = OutputValue != 0;
            v34 = v13;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
            AGGraphAddTraceEvent();
          }
        }

LABEL_28:
        if ((*a3 & 1) == 0)
        {
          return;
        }

        goto LABEL_29;
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }
  }

  v29 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v29;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v25 = v9;
  v26 = OutputValue != 0;
  v27 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v27, v10, v8, v25 | (v10 << 32), v26, v29, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v27, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v27, -1, -1);
  if (*a3)
  {
LABEL_29:
    specialized closure #1 in GestureBodyAccessor.updateBody(of:changed:)();
  }
}

{
  v36 = *MEMORY[0x1E69E9840];
  v32 = *(a2 + 8);
  v33 = *(a2 + 16);
  v31 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v31) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>(), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>();
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v26 = v12;
    swift_once();
    v12 = v26;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v29 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v32 = v15;
          v33 = v18;
          v34 = OutputValue != 0;
          v35 = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v30 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v30;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v29 = OutputValue != 0;
  v28 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v28, v10, v8, v9 | (v10 << 32), v29, v30, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v28, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v28, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    v23 = *(a1 + 8);
    v24 = *a1;
    v25 = *(a1 + 9);
    outlined copy of Environment<ButtonSizing>.Content(v24, v23);
    specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(v24, v23 | (v25 << 8));
    outlined consume of Environment<ButtonSizing>.Content(v24, v23);
  }
}

{
  v5 = v3;
  v45 = *MEMORY[0x1E69E9840];
  v39 = *(a2 + 8);
  LODWORD(v35[0]) = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v35) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>), !AGGraphGetOutputValue()))
  {
    v9 = 1;
  }

  else
  {
    v9 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>);
  OutputValue = AGGraphGetOutputValue();
  v14 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = v14;
    swift_once();
    v14 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v4 = v3;
    v5 = OutputValue;
    if (v12 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v14);
      v18 = &v33 - v17;
      v19 = 0;
      v20 = 0;
      v21 = 0;
LABEL_13:
      v22 = -v20;
      while ((v12 + v22) | v19)
      {
        if (!v10)
        {
          goto LABEL_38;
        }

        v24 = v10 + v19;
        if (v12 + v22 == 1)
        {
          v19 = 0;
        }

        else
        {
          v19 += *(v24 + 8);
        }

        v23 = *(v24 + 12);
        --v22;
        if (v23 < 0)
        {
          *&v18[8 * v21] = v23 & 0x7FFFFFFF;
          v20 = -v22;
          if (!__OFADD__(v21++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v21 < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = *(v16 + 616);
        if (*(v26 + 16) >= 0x45uLL)
        {
          if (*(v26 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            *&v39 = v18;
            *(&v39 + 1) = v21;
            LOBYTE(v40) = v5 != 0;
            BYTE1(v40) = v15;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  HIDWORD(v33) = v14;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v14 = HIDWORD(v33);
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v32 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v32, v12, v10, v11 | (v12 << 32), v5 != 0, HIDWORD(v33), 7);
  if (v4)
  {

    MEMORY[0x193AC4820](v32, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v32, -1, -1);
LABEL_28:
  v27 = *(a1 + 32);
  v28 = *(a1 + 64);
  v36 = *(a1 + 48);
  v37 = v28;
  v38 = *(a1 + 80);
  v29 = *(a1 + 16);
  v35[0] = *a1;
  v35[1] = v29;
  v35[2] = v27;
  v30 = *a3;
  v39 = v35[0];
  v40 = v29;
  v41 = v27;
  v42 = v36;
  v43 = v28;
  v44 = v38;
  if (v30 == 1)
  {
    outlined init with copy of SafeAreaPaddingModifier(v35, &v34);
    specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v39);
    outlined destroy of SafeAreaPaddingModifier(v35);
  }
}

{
  v34 = *MEMORY[0x1E69E9840];
  v30 = *(a2 + 8);
  v31 = *(a2 + 16);
  v29 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v29) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>(), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>();
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v24 = v12;
    swift_once();
    v12 = v24;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v27 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v30 = v15;
          v31 = v18;
          v32 = OutputValue != 0;
          v33 = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v28 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v28;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v27) = OutputValue != 0;
  v26 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v26, v10, v8, v9 | (v10 << 32), HIDWORD(v27), v28, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v26, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v26, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {

    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v23);
  }
}

{
  v39 = *MEMORY[0x1E69E9840];
  v34 = *(a2 + 8);
  v35 = *(a2 + 16);
  v33 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v33) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<Path, ForegroundStyle>(), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _ShapeView<Path, ForegroundStyle>();
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v28 = v12;
    swift_once();
    v12 = v28;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v31 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v34 = v15;
          v35 = v18;
          LOBYTE(v36) = OutputValue != 0;
          BYTE1(v36) = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v32 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v32;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v31) = OutputValue != 0;
  v30 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v30, v10, v8, v9 | (v10 << 32), HIDWORD(v31), v32, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v30, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v30, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    v24 = *(a1 + 16);
    v23 = *(a1 + 24);
    v25 = *(a1 + 8);
    v34 = *a1;
    v26 = v34;
    v35 = v25;
    v36 = v24;
    v37 = v23;
    v27 = *(a1 + 32);
    v38 = v27;
    outlined copy of Path.Storage(v34, v25, v24, v23, v27);
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v34);
    outlined consume of Path.Storage(v26, v25, v24, v23, v27);
  }
}

{
  v34 = *MEMORY[0x1E69E9840];
  v31 = *(a2 + 8);
  v30 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v30) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>(), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>();
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v25 = v12;
    swift_once();
    v12 = v25;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v28 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          *&v31 = v15;
          *(&v31 + 1) = v18;
          LOBYTE(v32) = OutputValue != 0;
          BYTE1(v32) = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v29 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v29;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v28) = OutputValue != 0;
  v27 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v27, v10, v8, v9 | (v10 << 32), HIDWORD(v28), v29, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v27, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v27, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    v23 = *(a1 + 32);
    v24 = *(a1 + 16);
    v31 = *a1;
    v32 = v24;
    v33 = v23;
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v31);
  }
}

{
  v36 = *MEMORY[0x1E69E9840];
  v32 = *(a2 + 8);
  v31 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v31) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>(), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>();
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v26 = v12;
    swift_once();
    v12 = v26;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v29 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          *&v32 = v15;
          *(&v32 + 1) = v18;
          LOBYTE(v33) = OutputValue != 0;
          BYTE1(v33) = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v30 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v30;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v29) = OutputValue != 0;
  v28 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v28, v10, v8, v9 | (v10 << 32), HIDWORD(v29), v30, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v28, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v28, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    v23 = *(a1 + 40);
    v24 = *(a1 + 32);
    v25 = *(a1 + 16);
    v32 = *a1;
    v33 = v25;
    v34 = v24;
    v35 = v23;
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v32);
  }
}

{
  v35 = *MEMORY[0x1E69E9840];
  v31 = *(a2 + 8);
  v32 = *(a2 + 16);
  v30 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v30) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>(), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>();
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v23 = v12;
    swift_once();
    v12 = v23;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v28 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v31 = v15;
          v32 = v18;
          v33 = OutputValue != 0;
          v34 = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v29 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v29;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v25 = v9;
  v26 = OutputValue != 0;
  v27 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v27, v10, v8, v25 | (v10 << 32), v26, v29, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v27, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v27, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)();
  }
}

{
  v38 = *MEMORY[0x1E69E9840];
  v34 = *(a2 + 8);
  v35 = *(a2 + 16);
  v33 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v33) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(0, &lazy cache variable for type metadata for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>, type metadata accessor for _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(0, &lazy cache variable for type metadata for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>, type metadata accessor for _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v28 = v12;
    swift_once();
    v12 = v28;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v31 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v34 = v15;
          v35 = v18;
          v36 = OutputValue != 0;
          v37 = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v32 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v32;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v31 = OutputValue != 0;
  v30 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v30, v10, v8, v9 | (v10 << 32), v31, v32, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v30, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v30, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    v23 = *(a1 + 24);
    v24 = *(a1 + 16);
    v27 = a1;
    v25 = *a1;
    v26 = *(v27 + 8);
    outlined copy of Text.Storage(v25, v26, v24);

    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v25, v26, v24, v23);
    outlined consume of Text.Storage(v25, v26, v24);
  }
}

{
  v33 = *MEMORY[0x1E69E9840];
  v29 = *(a2 + 8);
  v30 = *(a2 + 16);
  v28 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v28) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>(), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>();
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v23 = v12;
    swift_once();
    v12 = v23;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v26 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v29 = v15;
          v30 = v18;
          v31 = OutputValue != 0;
          v32 = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v27 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v27;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v26) = OutputValue != 0;
  v25 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v25, v10, v8, v9 | (v10 << 32), HIDWORD(v26), v27, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v25, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v25, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(*(a1 + 16), *a1, *(a1 + 8));
  }
}

{
  v33 = *MEMORY[0x1E69E9840];
  v29 = *(a2 + 8);
  v30 = *(a2 + 16);
  v28 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v28) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>(), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>();
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v23 = v12;
    swift_once();
    v12 = v23;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v26 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v29 = v15;
          v30 = v18;
          v31 = OutputValue != 0;
          v32 = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v27 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v27;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v26) = OutputValue != 0;
  v25 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v25, v10, v8, v9 | (v10 << 32), HIDWORD(v26), v27, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v25, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v25, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(*(a1 + 16), *a1, *(a1 + 8), *(a1 + 24));
  }
}

{
  v32 = *MEMORY[0x1E69E9840];
  v29 = *(a2 + 8);
  *&v30 = *(a2 + 16);
  v28 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v28) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<Rectangle, LinearGradient>(), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _ShapeView<Rectangle, LinearGradient>();
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v23 = v12;
    swift_once();
    v12 = v23;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v26 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v29 = v15;
          *&v30 = v18;
          BYTE8(v30) = OutputValue != 0;
          BYTE9(v30) = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v27 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v27;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v26) = OutputValue != 0;
  v25 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v25, v10, v8, v9 | (v10 << 32), HIDWORD(v26), v27, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v25, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v25, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    v29 = *a1;
    v30 = *(a1 + 8);
    v31 = *(a1 + 24);

    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v29);
  }
}

void specialized closure #1 in DynamicBody.updateValue()(double *a1, uint64_t a2, char *a3, void (*a4)(void), void (*a5)(void, double, double))
{
  v38 = *MEMORY[0x1E69E9840];
  v34 = *(a2 + 8);
  v35 = *(a2 + 16);
  v33 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v33) & 1) != 0 || (*a3 & 1) != 0 || (a4(0), !AGGraphGetOutputValue()))
  {
    v12 = 1;
  }

  else
  {
    v12 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v12;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 20);
  a4(0);
  OutputValue = AGGraphGetOutputValue();
  v17 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v6 = v17;
    swift_once();
    v17 = v6;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_38;
    }

    v6 = a5;
    if (v15 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v17);
      v20 = v31 - v19;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      a5 = v6;
LABEL_13:
      v24 = -v23;
      while ((v15 + v24) | v22)
      {
        if (!v13)
        {
          goto LABEL_39;
        }

        v26 = v13 + v22;
        if (v15 + v24 == 1)
        {
          v22 = 0;
        }

        else
        {
          v22 += *(v26 + 8);
        }

        v25 = *(v26 + 12);
        --v24;
        if (v25 < 0)
        {
          *&v20[8 * v21] = v25 & 0x7FFFFFFF;
          v23 = -v24;
          if (!__OFADD__(v21++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v21 < 0)
      {
        __break(1u);
      }

      else
      {
        v28 = *(v18 + 616);
        if (*(v28 + 16) >= 0x45uLL)
        {
          if (*(v28 + 100) == 1)
          {
            if (static CustomEventTrace.recorder)
            {
              *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
              v34 = v20;
              v35 = v21;
              v36 = OutputValue != 0;
              v37 = v17;
              type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
              v17 = AGGraphAddTraceEvent();
            }
          }

LABEL_28:
          if ((*a3 & 1) == 0)
          {
            return;
          }

          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }
  }

  v32 = v17;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v17 = v32;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v31[1] = OutputValue != 0;
  v30 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v30, v15, v13, v14 | (v15 << 32), OutputValue != 0, v32, 7);
  if (v5)
  {

    MEMORY[0x193AC4820](v30, -1, -1);
    __break(1u);
    return;
  }

  v17 = MEMORY[0x193AC4820](v30, -1, -1);
  a5 = v6;
  if (*a3)
  {
LABEL_29:
    a5(v17, *a1, a1[1]);
  }
}

uint64_t specialized closure #1 in DynamicBody.updateValue()(uint64_t a1, unsigned int *a2, char *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v39 = *(a2 + 4);
  v40 = *(a2 + 5);

  v7 = *AGGraphGetValue();

  v38 = v7;
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v38) & 1) != 0 || (*a3 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v8 = 1;
  }

  else
  {
    v8 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v8;
  v9 = *(a2 + 4);
  v10 = a2[10];
  v11 = a2[11];
  OutputValue = AGGraphGetOutputValue();
  v13 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v7 = v13;
    swift_once();
    v13 = v7;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
LABEL_28:
      v26 = *a2;
      v27 = *(a2 + 1);
      v28 = *(a2 + 16);
      v29 = *a1;
      v30 = *(a1 + 16);
      v31 = *a3;

      specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(v32, v30, v31, v29, v26, v27, v28);
    }

    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_35;
    }

    v7 = v3;
    if (v11 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v13);
      v17 = &v36 - v16;
      v18 = 0;
      v19 = 0;
      v20 = 0;
LABEL_13:
      v21 = -v20;
      while ((v11 + v21) | v19)
      {
        if (!v9)
        {
          goto LABEL_36;
        }

        v23 = v9 + v19;
        if (v11 + v21 == 1)
        {
          v19 = 0;
        }

        else
        {
          v19 += *(v23 + 8);
        }

        v22 = *(v23 + 12);
        --v21;
        if (v22 < 0)
        {
          *&v17[8 * v18] = v22 & 0x7FFFFFFF;
          v20 = -v21;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else
      {
        v25 = *(v15 + 616);
        if (*(v25 + 16) >= 0x45uLL)
        {
          if (*(v25 + 100) == 1)
          {
            if (static CustomEventTrace.recorder)
            {
              *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
              v39 = v17;
              v40 = v18;
              v41 = OutputValue != 0;
              v42 = v14;
              type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
              AGGraphAddTraceEvent();
            }
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }
  }

  v37 = v13;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v13 = v37;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v36) = OutputValue != 0;
  v35 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v35, v11, v9, v10 | (v11 << 32), HIDWORD(v36), v37, 7);
  if (!v7)
  {
    MEMORY[0x193AC4820](v35, -1, -1);
    goto LABEL_28;
  }

  result = MEMORY[0x193AC4820](v35, -1, -1);
  __break(1u);
  return result;
}

{
  v43 = *MEMORY[0x1E69E9840];
  v39 = *(a2 + 4);
  v40 = *(a2 + 5);

  v7 = *AGGraphGetValue();

  v38 = v7;
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v38) & 1) != 0 || (*a3 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v8 = 1;
  }

  else
  {
    v8 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v8;
  v9 = *(a2 + 4);
  v10 = a2[10];
  v11 = a2[11];
  OutputValue = AGGraphGetOutputValue();
  v13 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v7 = v13;
    swift_once();
    v13 = v7;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
LABEL_28:
      v26 = *a2;
      v27 = *(a2 + 1);
      v28 = *(a2 + 16);
      v29 = *(a1 + 8);
      v30 = *(a1 + 16);
      v31 = *a3;

      specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(v32, v31, v29, v30, v26, v27, v28);
    }

    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_35;
    }

    v7 = v3;
    if (v11 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v13);
      v17 = &v36 - v16;
      v18 = 0;
      v19 = 0;
      v20 = 0;
LABEL_13:
      v21 = -v19;
      while ((v11 + v21) | v18)
      {
        if (!v9)
        {
          goto LABEL_36;
        }

        v23 = v9 + v18;
        if (v11 + v21 == 1)
        {
          v18 = 0;
        }

        else
        {
          v18 += *(v23 + 8);
        }

        v22 = *(v23 + 12);
        --v21;
        if (v22 < 0)
        {
          *&v17[8 * v20] = v22 & 0x7FFFFFFF;
          v19 = -v21;
          if (!__OFADD__(v20++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v20 < 0)
      {
        __break(1u);
      }

      else
      {
        v25 = *(v15 + 616);
        if (*(v25 + 16) >= 0x45uLL)
        {
          if (*(v25 + 100) == 1)
          {
            if (static CustomEventTrace.recorder)
            {
              *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
              v39 = v17;
              v40 = v20;
              v41 = OutputValue != 0;
              v42 = v14;
              type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
              AGGraphAddTraceEvent();
            }
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }
  }

  v37 = v13;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v13 = v37;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v36) = OutputValue != 0;
  v35 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v35, v11, v9, v10 | (v11 << 32), HIDWORD(v36), v37, 7);
  if (!v7)
  {
    MEMORY[0x193AC4820](v35, -1, -1);
    goto LABEL_28;
  }

  result = MEMORY[0x193AC4820](v35, -1, -1);
  __break(1u);
  return result;
}

{
  v42 = *MEMORY[0x1E69E9840];
  v38 = *(a2 + 4);
  v39 = *(a2 + 5);

  v7 = *AGGraphGetValue();

  v37 = v7;
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v37) & 1) != 0 || (*a3 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v8 = 1;
  }

  else
  {
    v8 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v8;
  v9 = *(a2 + 4);
  v10 = a2[10];
  v11 = a2[11];
  OutputValue = AGGraphGetOutputValue();
  v13 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v7 = v13;
    swift_once();
    v13 = v7;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
LABEL_28:
      v26 = *a2;
      v27 = *(a2 + 1);
      v28 = *(a2 + 16);
      v29 = *(a1 + 8);
      v30 = *a3;

      specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(v31, v30, v29, v26, v27, v28);
    }

    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_35;
    }

    v7 = v3;
    if (v11 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v13);
      v17 = &v35 - v16;
      v18 = 0;
      v19 = 0;
      v20 = 0;
LABEL_13:
      v21 = -v19;
      while ((v11 + v21) | v18)
      {
        if (!v9)
        {
          goto LABEL_36;
        }

        v23 = v9 + v18;
        if (v11 + v21 == 1)
        {
          v18 = 0;
        }

        else
        {
          v18 += *(v23 + 8);
        }

        v22 = *(v23 + 12);
        --v21;
        if (v22 < 0)
        {
          *&v17[8 * v20] = v22 & 0x7FFFFFFF;
          v19 = -v21;
          if (!__OFADD__(v20++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v20 < 0)
      {
        __break(1u);
      }

      else
      {
        v25 = *(v15 + 616);
        if (*(v25 + 16) >= 0x45uLL)
        {
          if (*(v25 + 100) == 1)
          {
            if (static CustomEventTrace.recorder)
            {
              *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
              v38 = v17;
              v39 = v20;
              v40 = OutputValue != 0;
              v41 = v14;
              type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
              AGGraphAddTraceEvent();
            }
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }
  }

  v36 = v13;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v13 = v36;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v35) = OutputValue != 0;
  v34 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v34, v11, v9, v10 | (v11 << 32), HIDWORD(v35), v36, 7);
  if (!v7)
  {
    MEMORY[0x193AC4820](v34, -1, -1);
    goto LABEL_28;
  }

  result = MEMORY[0x193AC4820](v34, -1, -1);
  __break(1u);
  return result;
}

{
  v41 = *MEMORY[0x1E69E9840];
  v37 = *(a2 + 4);
  v38 = *(a2 + 5);

  v7 = *AGGraphGetValue();

  v36 = v7;
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v36) & 1) != 0 || (*a3 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v8 = 1;
  }

  else
  {
    v8 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v8;
  v9 = *(a2 + 4);
  v10 = a2[10];
  v11 = a2[11];
  OutputValue = AGGraphGetOutputValue();
  v13 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v7 = v13;
    swift_once();
    v13 = v7;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
LABEL_28:
      v26 = *a2;
      v27 = *(a2 + 1);
      v28 = *(a2 + 16);
      v29 = *a3;

      specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(v30, v29, v26, v27, v28);
    }

    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_35;
    }

    v7 = v3;
    if (v11 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v13);
      v17 = &v34 - v16;
      v18 = 0;
      v19 = 0;
      v20 = 0;
LABEL_13:
      v21 = -v19;
      while ((v11 + v21) | v18)
      {
        if (!v9)
        {
          goto LABEL_36;
        }

        v23 = v9 + v18;
        if (v11 + v21 == 1)
        {
          v18 = 0;
        }

        else
        {
          v18 += *(v23 + 8);
        }

        v22 = *(v23 + 12);
        --v21;
        if (v22 < 0)
        {
          *&v17[8 * v20] = v22 & 0x7FFFFFFF;
          v19 = -v21;
          if (!__OFADD__(v20++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v20 < 0)
      {
        __break(1u);
      }

      else
      {
        v25 = *(v15 + 616);
        if (*(v25 + 16) >= 0x45uLL)
        {
          if (*(v25 + 100) == 1)
          {
            if (static CustomEventTrace.recorder)
            {
              *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
              v37 = v17;
              v38 = v20;
              v39 = OutputValue != 0;
              v40 = v14;
              type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
              AGGraphAddTraceEvent();
            }
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }
  }

  v35 = v13;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v13 = v35;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v34) = OutputValue != 0;
  v33 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v33, v11, v9, v10 | (v11 << 32), HIDWORD(v34), v35, 7);
  if (!v7)
  {
    MEMORY[0x193AC4820](v33, -1, -1);
    goto LABEL_28;
  }

  result = MEMORY[0x193AC4820](v33, -1, -1);
  __break(1u);
  return result;
}

void specialized closure #1 in DynamicBody.updateValue()(unsigned __int8 *a1, uint64_t a2, char *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v29 = *(a2 + 8);
  v30 = *(a2 + 16);
  v28 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v28) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter>(), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter>();
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v23 = v12;
    swift_once();
    v12 = v23;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v26 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v29 = v15;
          v30 = v18;
          v31 = OutputValue != 0;
          v32 = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v27 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v27;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v26) = OutputValue != 0;
  v25 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v25, v10, v8, v9 | (v10 << 32), HIDWORD(v26), v27, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v25, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v25, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(*a1);
  }
}

{
  v37 = *MEMORY[0x1E69E9840];
  v33 = *(a2 + 8);
  v34 = *(a2 + 16);
  v32 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v32) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _EnvironmentKeyWritingModifier<Font?>>(), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _EnvironmentKeyWritingModifier<Font?>>();
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v27 = v12;
    swift_once();
    v12 = v27;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v30 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v33 = v15;
          v34 = v18;
          v35 = OutputValue != 0;
          v36 = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v31 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v31;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v30) = OutputValue != 0;
  v29 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v29, v10, v8, v9 | (v10 << 32), HIDWORD(v30), v31, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v29, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v29, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    v23 = *(a1 + 2);
    v24 = *a1;
    v25 = *(a1 + 1);
    v26 = v23;
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v24, v25, v26);
  }
}

void specialized closure #1 in DynamicBody.updateValue()(uint64_t a1, uint64_t a2, char *a3, void (*a4)(void), uint64_t a5, void (*a6)(void))
{
  v34 = a6;
  v40 = *MEMORY[0x1E69E9840];
  v36 = *(a2 + 8);
  v37 = *(a2 + 16);
  v35 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v35) & 1) != 0 || (*a3 & 1) != 0 || (a4(0), !AGGraphGetOutputValue()))
  {
    v12 = 1;
  }

  else
  {
    v12 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v12;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 20);
  a4(0);
  OutputValue = AGGraphGetOutputValue();
  v17 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v28 = v17;
    swift_once();
    v17 = v28;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v15 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v17);
      v20 = &v31 - v19;
      v21 = 0;
      v22 = 0;
      v23 = 0;
LABEL_13:
      v24 = -v22;
      while ((v15 + v24) | v21)
      {
        if (!v13)
        {
          goto LABEL_38;
        }

        v26 = v13 + v21;
        if (v15 + v24 == 1)
        {
          v21 = 0;
        }

        else
        {
          v21 += *(v26 + 8);
        }

        v25 = *(v26 + 12);
        --v24;
        if (v25 < 0)
        {
          *&v20[8 * v23] = v25 & 0x7FFFFFFF;
          v22 = -v24;
          if (!__OFADD__(v23++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v36 = v20;
          v37 = v23;
          v38 = OutputValue != 0;
          v39 = v18;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v33 = v17;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v17 = v33;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v32 = OutputValue != 0;
  v30 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v30, v15, v13, v14 | (v15 << 32), v32, v33, 7);
  if (v6)
  {

    MEMORY[0x193AC4820](v30, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v30, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(a5, v34);
  }
}

void specialized closure #1 in DynamicBody.updateValue()(double *a1, uint64_t a2, char *a3, void (*a4)(void), uint64_t a5, double *a6)
{
  v36 = a5;
  v42 = *MEMORY[0x1E69E9840];
  v38 = *(a2 + 8);
  v39 = *(a2 + 16);
  v37 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v37) & 1) != 0 || (*a3 & 1) != 0 || (a4(0), !AGGraphGetOutputValue()))
  {
    v13 = 1;
  }

  else
  {
    v13 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v13;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 20);
  a4(0);
  OutputValue = AGGraphGetOutputValue();
  v18 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v7 = v18;
    swift_once();
    v18 = v7;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v7 = a1;
    a1 = a6;
    if (v16 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v18);
      v22 = &v33 - v21;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      a6 = a1;
      a1 = v7;
LABEL_13:
      v26 = -v24;
      while ((v16 + v26) | v23)
      {
        if (!v14)
        {
          goto LABEL_38;
        }

        v28 = v14 + v23;
        if (v16 + v26 == 1)
        {
          v23 = 0;
        }

        else
        {
          v23 += *(v28 + 8);
        }

        v27 = *(v28 + 12);
        --v26;
        if (v27 < 0)
        {
          *&v22[8 * v25] = v27 & 0x7FFFFFFF;
          v24 = -v26;
          if (!__OFADD__(v25++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v25 < 0)
      {
        __break(1u);
      }

      else
      {
        v30 = *(v20 + 616);
        if (*(v30 + 16) >= 0x45uLL)
        {
          if (*(v30 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v38 = v22;
            v39 = v25;
            v40 = OutputValue != 0;
            v41 = v19;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v35 = v18;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v18 = v35;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v34 = OutputValue != 0;
  v32 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v32, v16, v14, v15 | (v16 << 32), v34, v35, 7);
  if (v6)
  {

    MEMORY[0x193AC4820](v32, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v32, -1, -1);
  a6 = a1;
  a1 = v7;
LABEL_28:
  if (*a3 == 1)
  {
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(*a1, v36, a6);
  }
}

void specialized closure #1 in DynamicBody.updateValue()(uint64_t *a1, uint64_t a2, char *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v34 = *(a2 + 8);
  v35 = *(a2 + 16);
  v33 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v33) & 1) != 0 || (*a3 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v28 = v12;
    swift_once();
    v12 = v28;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v31 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v34 = v15;
          v35 = v18;
          v36 = OutputValue != 0;
          v37 = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v32 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v32;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v31) = OutputValue != 0;
  v30 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v30, v10, v8, v9 | (v10 << 32), HIDWORD(v31), v32, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v30, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v30, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    v23 = a1[2];
    v24 = a1[3];
    v27 = a1;
    v25 = *a1;
    v26 = v27[1];

    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v25, v26, v23, v24);
  }
}

void specialized closure #1 in DynamicBody.updateValue()(__int128 *a1, uint64_t a2, char *a3)
{
  v5 = v3;
  v54 = *MEMORY[0x1E69E9840];
  v39 = *(a2 + 8);
  v38 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v38) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>(), !AGGraphGetOutputValue()))
  {
    v9 = 1;
  }

  else
  {
    v9 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>();
  OutputValue = AGGraphGetOutputValue();
  v14 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = v14;
    swift_once();
    v14 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v4 = v3;
    v5 = OutputValue;
    if (v12 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v14);
      v18 = &v36 - v17;
      v19 = 0;
      v20 = 0;
      v21 = 0;
LABEL_13:
      v22 = -v20;
      while ((v12 + v22) | v19)
      {
        if (!v10)
        {
          goto LABEL_38;
        }

        v24 = v10 + v19;
        if (v12 + v22 == 1)
        {
          v19 = 0;
        }

        else
        {
          v19 += *(v24 + 8);
        }

        v23 = *(v24 + 12);
        --v22;
        if (v23 < 0)
        {
          *&v18[8 * v21] = v23 & 0x7FFFFFFF;
          v20 = -v22;
          if (!__OFADD__(v21++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v21 < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = *(v16 + 616);
        if (*(v26 + 16) >= 0x45uLL)
        {
          if (*(v26 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            *&v39 = v18;
            *(&v39 + 1) = v21;
            LOBYTE(v40) = v5 != 0;
            BYTE1(v40) = v15;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v37 = v14;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v14 = v37;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v35 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v35, v12, v10, v11 | (v12 << 32), v5 != 0, v37, 7);
  if (v4)
  {

    MEMORY[0x193AC4820](v35, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v35, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    v27 = a1[13];
    v51 = a1[12];
    v52 = v27;
    v53 = a1[14];
    v28 = a1[9];
    v47 = a1[8];
    v48 = v28;
    v29 = a1[11];
    v49 = a1[10];
    v50 = v29;
    v30 = a1[5];
    v43 = a1[4];
    v44 = v30;
    v31 = a1[7];
    v45 = a1[6];
    v46 = v31;
    v32 = a1[1];
    v39 = *a1;
    v40 = v32;
    v33 = a1[3];
    v41 = a1[2];
    v42 = v33;
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v39);
  }
}

void specialized closure #1 in DynamicBody.updateValue()(unsigned __int8 *a1, uint64_t a2, char *a3, void (*a4)(void), unsigned __int8 *a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v36 = *(a2 + 8);
  v37 = *(a2 + 16);
  v35 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v35) & 1) != 0 || (*a3 & 1) != 0 || (a4(0), !AGGraphGetOutputValue()))
  {
    v12 = 1;
  }

  else
  {
    v12 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v12;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 20);
  a4(0);
  OutputValue = AGGraphGetOutputValue();
  v17 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v6 = v17;
    swift_once();
    v17 = v6;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v6 = a1;
    a1 = a5;
    if (v15 < 129)
    {
LABEL_12:
      v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
      v22 = v33 - v21;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      a5 = a1;
      a1 = v6;
LABEL_13:
      v26 = -v24;
      while ((v15 + v26) | v23)
      {
        if (!v13)
        {
          goto LABEL_38;
        }

        v28 = v13 + v23;
        if (v15 + v26 == 1)
        {
          v23 = 0;
        }

        else
        {
          v23 += *(v28 + 8);
        }

        v27 = *(v28 + 12);
        --v26;
        if (v27 < 0)
        {
          *&v22[8 * v25] = v27 & 0x7FFFFFFF;
          v24 = -v26;
          if (!__OFADD__(v25++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v25 < 0)
      {
        __break(1u);
      }

      else
      {
        v30 = *(v20 + 616);
        if (*(v30 + 16) >= 0x45uLL)
        {
          if (*(v30 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v36 = v22;
            v37 = v25;
            v38 = OutputValue != 0;
            v39 = v19;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v34 = v17;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v17 = v34;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v33[1] = OutputValue != 0;
  v32 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v32, v15, v13, v14 | (v15 << 32), OutputValue != 0, v34, 7);
  if (v5)
  {

    MEMORY[0x193AC4820](v32, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v32, -1, -1);
  a5 = a1;
  a1 = v6;
LABEL_28:
  if (*a3 == 1)
  {
    (a5)(*a1, v18);
  }
}

void specialized closure #1 in DynamicBody.updateValue()(const void *a1, uint64_t a2, char *a3)
{
  v30[48] = *MEMORY[0x1E69E9840];
  v30[0] = *(a2 + 8);
  v30[1] = *(a2 + 16);
  v29 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v29) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>(), !AGGraphGetOutputValue()))
  {
    v6 = 1;
  }

  else
  {
    v6 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v6;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>();
  OutputValue = AGGraphGetOutputValue();
  v11 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v22 = v11;
    swift_once();
    v11 = v22;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v9 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v11);
      v14 = &v25 - v13;
      v15 = 0;
      v16 = 0;
      v17 = 0;
LABEL_13:
      v18 = -v16;
      while ((v9 + v18) | v15)
      {
        if (!v7)
        {
          goto LABEL_38;
        }

        v20 = v7 + v15;
        if (v9 + v18 == 1)
        {
          v15 = 0;
        }

        else
        {
          v15 += *(v20 + 8);
        }

        v19 = *(v20 + 12);
        --v18;
        if (v19 < 0)
        {
          *&v14[8 * v17] = v19 & 0x7FFFFFFF;
          v16 = -v18;
          if (!__OFADD__(v17++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v17 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v30[0] = v14;
          v30[1] = v17;
          LOBYTE(v30[2]) = OutputValue != 0;
          BYTE1(v30[2]) = v12;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v27 = v11;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v11 = v27;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v26 = OutputValue != 0;
  v24 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v24, v9, v7, v8 | (v9 << 32), v26, v27, 7);
  if (v28)
  {

    MEMORY[0x193AC4820](v24, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v24, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    memcpy(v30, a1, 0x180uLL);
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v30);
  }
}

void specialized closure #1 in DynamicBody.updateValue()(uint64_t a1, uint64_t a2, char *a3, void (*a4)(void), uint64_t a5, unint64_t *a6, void (*a7)(void))
{
  v37 = a5;
  v38 = a6;
  v43 = *MEMORY[0x1E69E9840];
  v40 = *(a2 + 8);
  *&v41 = *(a2 + 16);
  v39 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v39) & 1) != 0 || (*a3 & 1) != 0 || (a4(0), !AGGraphGetOutputValue()))
  {
    v13 = 1;
  }

  else
  {
    v13 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v13;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 20);
  a4(0);
  OutputValue = AGGraphGetOutputValue();
  v18 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v29 = a7;
    v30 = v18;
    swift_once();
    v18 = v30;
    a7 = v29;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v36 = a7;
    if (v16 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v18);
      v21 = &v34 - v20;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      a7 = v36;
LABEL_13:
      v25 = -v23;
      while ((v16 + v25) | v22)
      {
        if (!v14)
        {
          goto LABEL_38;
        }

        v27 = v14 + v22;
        if (v16 + v25 == 1)
        {
          v22 = 0;
        }

        else
        {
          v22 += *(v27 + 8);
        }

        v26 = *(v27 + 12);
        --v25;
        if (v26 < 0)
        {
          *&v21[8 * v24] = v26 & 0x7FFFFFFF;
          v23 = -v25;
          if (!__OFADD__(v24++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v24 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v40 = v21;
          *&v41 = v24;
          BYTE8(v41) = OutputValue != 0;
          BYTE9(v41) = v19;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          a7 = v36;
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v35 = v18;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v18 = v35;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v32 = OutputValue != 0;
  v33 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v33, v16, v14, v15 | (v16 << 32), v32, v35, 7);
  if (v7)
  {

    MEMORY[0x193AC4820](v33, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v33, -1, -1);
  a7 = v36;
LABEL_28:
  if (*a3 == 1)
  {
    v40 = *a1;
    v41 = *(a1 + 8);
    v42 = *(a1 + 24);

    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v40, v37, v38, a7);
  }
}

uint64_t specialized closure #1 in DynamicBody.updateValue()(double *a1, unsigned int *a2, char *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v40 = *(a2 + 4);
  v41 = *(a2 + 5);

  v7 = *AGGraphGetValue();

  v39 = v7;
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v39) & 1) != 0 || (*a3 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v8 = 1;
  }

  else
  {
    v8 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v8;
  v9 = *(a2 + 4);
  v10 = a2[10];
  v11 = a2[11];
  OutputValue = AGGraphGetOutputValue();
  v13 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v7 = v13;
    swift_once();
    v13 = v7;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
LABEL_28:
      v26 = *a2;
      v27 = *(a2 + 1);
      v28 = *(a2 + 16);
      v29 = a1[1];
      v30 = a1[2];
      v31 = a1[3];
      v32 = *a3;

      specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(v33, v32, v29, v30, v31, v26, v27, v28);
    }

    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_35;
    }

    v7 = v3;
    if (v11 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v13);
      v17 = &v37 - v16;
      v18 = 0;
      v19 = 0;
      v20 = 0;
LABEL_13:
      v21 = -v19;
      while ((v11 + v21) | v18)
      {
        if (!v9)
        {
          goto LABEL_36;
        }

        v23 = v9 + v18;
        if (v11 + v21 == 1)
        {
          v18 = 0;
        }

        else
        {
          v18 += *(v23 + 8);
        }

        v22 = *(v23 + 12);
        --v21;
        if (v22 < 0)
        {
          *&v17[8 * v20] = v22 & 0x7FFFFFFF;
          v19 = -v21;
          if (!__OFADD__(v20++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v20 < 0)
      {
        __break(1u);
      }

      else
      {
        v25 = *(v15 + 616);
        if (*(v25 + 16) >= 0x45uLL)
        {
          if (*(v25 + 100) == 1)
          {
            if (static CustomEventTrace.recorder)
            {
              *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
              v40 = v17;
              v41 = v20;
              v42 = OutputValue != 0;
              v43 = v14;
              type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
              AGGraphAddTraceEvent();
            }
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }
  }

  v38 = v13;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v13 = v38;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v37) = OutputValue != 0;
  v36 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v36, v11, v9, v10 | (v11 << 32), HIDWORD(v37), v38, 7);
  if (!v7)
  {
    MEMORY[0x193AC4820](v36, -1, -1);
    goto LABEL_28;
  }

  result = MEMORY[0x193AC4820](v36, -1, -1);
  __break(1u);
  return result;
}

uint64_t specialized LazyLayoutComputer.updateValue()()
{
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = *(v0 + 4);
    v4 = *(v0 + 12);
    Value = AGGraphGetValue();
    v6 = *(Value + 8);
    v17 = *Value;
    v16 = v6;
    v7 = *(Value + 16);
    HIDWORD(v15) = *(Value + 20);
    type metadata accessor for LazyLayoutViewCache();
    v8 = *AGGraphGetValue();

    v9 = AGGraphGetValue();
    v18 = &v15;
    v10 = *(*v9 + 320);
    v11 = *(*v9 + 328);
    v19 = 1;
    v20 = v7;
    v21 = v17;
    v22 = v6;
    v23 = v7;
    v12 = HIDWORD(v15);
    v24 = HIDWORD(v15);
    v25 = v2;
    v26 = v2;
    v27 = v3;
    v28 = v4;
    v29 = v8;
    v30 = v10;
    v31 = v11;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 1;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 1;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    v43 = 1;
    MEMORY[0x1EEE9AC00](v9);
    MEMORY[0x1EEE9AC00](v13);
    specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v14, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
    v21 = v17;
    v22 = v16;
    v23 = v7;
    v24 = v12;
    v25 = v2;
    v26 = v2;
    v27 = v3;
    v28 = v4;
    v29 = v8;
    v30 = v10;
    v31 = v11;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 1;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 1;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 1;
    return outlined destroy of LazyLayoutComputer<LazyHStackLayout>.Engine(&v21);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = *(v0 + 4);
    v4 = *(v0 + 12);
    Value = AGGraphGetValue();
    v6 = *(Value + 8);
    v17 = *Value;
    v16 = v6;
    v7 = *(Value + 16);
    HIDWORD(v15) = *(Value + 20);
    type metadata accessor for LazyLayoutViewCache();
    v8 = *AGGraphGetValue();

    v9 = AGGraphGetValue();
    v18 = &v15;
    v10 = *(*v9 + 320);
    v11 = *(*v9 + 328);
    v19 = 1;
    v20 = v7;
    v21 = v17;
    v22 = v6;
    v23 = v7;
    v12 = HIDWORD(v15);
    v24 = HIDWORD(v15);
    v25 = v2;
    v26 = v2;
    v27 = v3;
    v28 = v4;
    v29 = v8;
    v30 = v10;
    v31 = v11;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 1;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 1;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    v43 = 1;
    MEMORY[0x1EEE9AC00](v9);
    MEMORY[0x1EEE9AC00](v13);
    specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v14, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
    v21 = v17;
    v22 = v16;
    v23 = v7;
    v24 = v12;
    v25 = v2;
    v26 = v2;
    v27 = v3;
    v28 = v4;
    v29 = v8;
    v30 = v10;
    v31 = v11;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 1;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 1;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 1;
    return outlined destroy of LazyLayoutComputer<LazyVStackLayout>.Engine(&v21);
  }

  return result;
}

uint64_t specialized LazySubviewPlacements.allowsContentOffsetAdjustments.getter()
{
  AGGraphClearUpdate();
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Scrollable);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of AnyTrackedValue(WeakValue, &v5);
  }

  else
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
  }

  AGGraphSetUpdate();
  v1 = *(&v6 + 1);
  if (*(&v6 + 1))
  {
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(&v5, *(&v6 + 1));
    v3 = (*(v2 + 24))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(&v5);
  }

  else
  {
    outlined destroy of ViewList?(&v5, &lazy cache variable for type metadata for Scrollable?, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t specialized LazySubviewPlacements.updateValue()()
{
  v9 = v0;
  v221 = *MEMORY[0x1E69E9840];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue() || !AGGraphHasDeadlinePassed())
  {
    type metadata accessor for LazyLayoutViewCache();
    v10 = *AGGraphGetValue();
    swift_beginAccess();
    v11 = *AGGraphGetValue() >> 1;
    LODWORD(v168) = *(v9 + 452);
    if (LODWORD(v168) != v11)
    {
      *(v9 + 452) = v11;
      LOBYTE(v10) = 1;
      LOBYTE(v197) = 1;
      v12 = *(v9 + 408);
      *&v210[80] = *(v9 + 392);
      *&v210[96] = v12;
      *&v210[112] = *(v9 + 424);
      *&v210[121] = *(v9 + 433);
      v13 = *(v9 + 344);
      *&v210[16] = *(v9 + 328);
      *&v210[32] = v13;
      v14 = *(v9 + 376);
      *&v210[48] = *(v9 + 360);
      *&v210[64] = v14;
      v15 = *(v9 + 280);
      v207 = *(v9 + 264);
      v208 = v15;
      v16 = *(v9 + 312);
      v209 = *(v9 + 296);
      *v210 = v16;
      outlined destroy of PositionState(&v207);
      *(v9 + 264) = 0;
      *(v9 + 272) = 0u;
      *(v9 + 288) = 0u;
      *(v9 + 304) = 0u;
      *(v9 + 320) = 0u;
      *(v9 + 336) = 0u;
      *(v9 + 352) = 0u;
      *(v9 + 368) = 0u;
      *(v9 + 384) = 0u;
      *(v9 + 400) = 0u;
      *(v9 + 416) = 0u;
      *(v9 + 432) = 0u;
      *(v9 + 448) = 1;
      v1 = *MEMORY[0x1E695F050];
      v2 = *(MEMORY[0x1E695F050] + 8);
      v3 = *(MEMORY[0x1E695F050] + 16);
      v4 = *(MEMORY[0x1E695F050] + 24);
      v17 = *(v9 + 96);
      v18 = *(v9 + 112);
      v19 = *(v9 + 144);
      v199 = *(v9 + 128);
      v200 = v19;
      v197 = v17;
      v198 = v18;
      v20 = *(v9 + 160);
      v21 = *(v9 + 176);
      v22 = *(v9 + 192);
      LODWORD(v203) = *(v9 + 208);
      r1.origin = v21;
      r1.size = v22;
      v201 = v20;
      outlined destroy of PlacementState(&v197);
      v23 = MEMORY[0x1E69E7CC0];
      *(v9 + 96) = MEMORY[0x1E69E7CC0];
      *(v9 + 104) = v23;
      *(v9 + 112) = v1;
      *(v9 + 120) = v2;
      *(v9 + 128) = v3;
      *(v9 + 136) = v4;
      *(v9 + 144) = v1;
      *(v9 + 152) = v2;
      *(v9 + 160) = v3;
      *(v9 + 168) = v4;
      *(v9 + 176) = v1;
      *(v9 + 184) = v2;
      *(v9 + 192) = v3;
      *(v9 + 200) = v4;
      *(v9 + 208) = 0;

      *(v9 + 256) = 0;
      *(v9 + 216) = 0u;
      *(v9 + 232) = 0u;
      *(v9 + 248) = 0;
    }

    Value = AGGraphGetValue();
    v25 = 0;
    if (*(*Value + 341) == 1)
    {
      v25 = *(AGGraphGetValue() + 20);
    }

    v166 = v25;
    HIDWORD(v137) = *(v9 + 12);
    v26 = AGGraphGetValue();
    v167 = v27;
    v29 = *v26;
    v28 = *(v26 + 8);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
    }

    else
    {
      v31 = CurrentAttribute;
      v165 = v11;
      v138 = *MEMORY[0x1E698D3F8];
      v33 = *(v26 + 32);
      v32 = *(v26 + 40);
      v35 = *(v26 + 16);
      v34 = *(v26 + 24);
      v36 = *(v9 + 16);
      v163 = *(v9 + 36);
      v37 = *(v9 + 8);
      type metadata accessor for CGPoint(0);

      LODWORD(v137) = v37;
      v38 = AGGraphGetValue();
      v174 = *v38;
      v171 = v38[1];
      v39 = AGGraphGetValue();
      r2 = *v39;
      limit = v39[1];

      AGGraphGetValue();

      v40 = *AGGraphGetValue();

      v41 = *(AGGraphGetValue() + 20);
      AGGraphGetValue();

      v42 = *AGGraphGetValue();

      v43 = v33 - (v174 - v35);
      v207 = 0u;
      v208 = 0u;
      v44 = v32 - (v171 - v34);
      v209 = 0u;
      memset(v210, 0, 64);
      v210[64] = 1;
      *&v197 = v29;
      *(&v197 + 1) = v28;
      *&v198 = v174;
      *(&v198 + 1) = v171;
      *&v199 = v43;
      *(&v199 + 1) = v44;
      specialized ViewTransform.forEach(inverted:_:)(0, &v197, &v207);
      v45 = *&v208;
      if (v210[64])
      {
        v45 = r2;
      }

      v156 = v45;
      if (v210[64])
      {
        v46 = limit;
      }

      else
      {
        v46 = *(&v208 + 1);
      }

      v155 = v46;
      v47 = 0.0;
      if (v210[64])
      {
        v48 = 0.0;
      }

      else
      {
        v48 = *&v209;
      }

      if (v210[64])
      {
        v49 = 0.0;
      }

      else
      {
        v49 = *(&v209 + 1);
      }

      v152 = v49;
      v153 = v48;
      if (v210[64])
      {
        v50 = 0.0;
      }

      else
      {
        v50 = *v210;
      }

      if (v210[64])
      {
        v51 = 0.0;
      }

      else
      {
        v51 = *&v210[8];
      }

      v150 = v51;
      v151 = v50;
      if (v210[64])
      {
        v52 = r2;
      }

      else
      {
        v52 = *&v210[48];
      }

      if (v210[64])
      {
        v53 = limit;
      }

      else
      {
        v53 = *&v210[56];
      }

      recta = v53;
      v161 = v52;
      if (v210[64])
      {
        v54 = 0.0;
      }

      else
      {
        v54 = *&v210[40];
      }

      if (v210[64])
      {
        v55 = 0.0;
      }

      else
      {
        v55 = *&v210[32];
      }

      if (v210[64])
      {
        v56 = r2;
      }

      else
      {
        v56 = *&v210[16];
      }

      if (v210[64])
      {
        v57 = limit;
      }

      else
      {
        v57 = *&v210[24];
      }

      if (v210[64])
      {
        v58 = 0.0;
      }

      else
      {
        v58 = *&v207;
      }

      if (v210[64])
      {
        v59 = 0.0;
      }

      else
      {
        v59 = *(&v207 + 1);
      }

      v147 = v57;
      v148 = v56;
      v146 = v59;
      if (v40 == 1)
      {
        v60 = v58;
        v61 = v59;
        v62 = r2 - CGRectGetMaxX(*(&v56 - 2));
        v149 = v55 + v62 - v58;
        v154 = v54 + v59 - v59;
        v58 = v62;
      }

      else
      {
        v149 = v55;
        v154 = v54;
      }

      memset(v210, 0, 64);
      v209 = 0u;
      v208 = 0u;
      v207 = 0u;
      v210[64] = 1;
      *&v197 = v29;
      *(&v197 + 1) = v28;
      *&v198 = v174;
      *(&v198 + 1) = v171;
      *&v199 = v43;
      *(&v199 + 1) = v44;
      specialized ViewTransform.forEach(inverted:_:)(0, &v197, &v207);
      v63 = *&v208;
      if (v210[64])
      {
        v63 = r2;
      }

      v143 = v63;
      if (v210[64])
      {
        v64 = limit;
      }

      else
      {
        v64 = *(&v208 + 1);
      }

      if (v210[64])
      {
        v65 = 0.0;
      }

      else
      {
        v65 = *&v209;
      }

      if (v210[64])
      {
        v66 = 0.0;
      }

      else
      {
        v66 = *(&v209 + 1);
      }

      v141 = v66;
      v142 = v65;
      if (v210[64])
      {
        v67 = 0.0;
      }

      else
      {
        v67 = *v210;
      }

      if (v210[64])
      {
        v68 = 0.0;
      }

      else
      {
        v68 = *&v210[8];
      }

      v139 = v68;
      v140 = v67;
      if (v210[64])
      {
        v69 = r2;
      }

      else
      {
        v69 = *&v210[48];
      }

      if (v210[64])
      {
        v70 = limit;
      }

      else
      {
        v70 = *&v210[56];
      }

      v144 = v70;
      v145 = v69;
      if (v210[64])
      {
        v71 = 0.0;
      }

      else
      {
        v71 = *&v210[40];
      }

      if (v210[64])
      {
        v72 = 0.0;
      }

      else
      {
        v72 = *&v210[32];
      }

      if (v210[64])
      {
        v73 = r2;
      }

      else
      {
        v73 = *&v210[16];
      }

      if (v210[64])
      {
        v74 = limit;
      }

      else
      {
        v74 = *&v210[24];
      }

      if (v210[64])
      {
        v75 = 0.0;
      }

      else
      {
        v75 = *&v207;
      }

      if ((v210[64] & 1) == 0)
      {
        v47 = *(&v207 + 1);
      }

      if (v40)
      {
        v223.origin.x = v75;
        v223.origin.y = v47;
        v223.size.width = v73;
        v223.size.height = v74;
        v76 = r2 - CGRectGetMaxX(v223);
        v72 = v72 + v76 - v75;
        v71 = v71 + v47 - v47;
        v75 = v76;
      }

      LODWORD(v207) = v31;
      *(&v207 + 4) = __PAIR64__(v36, v31);
      HIDWORD(v207) = v163;
      *&v77 = v174;
      *(&v77 + 1) = v171;
      v78 = r2;
      *&v79 = r2;
      *(&v79 + 1) = limit;
      v209 = v79;
      v208 = v77;
      *v210 = v41;
      *&v210[8] = v58;
      *&v210[16] = v146;
      *&v210[24] = v156;
      *&v210[32] = v155;
      *&v210[40] = v153;
      *&v210[48] = v152;
      *&v210[56] = v151;
      *&v210[64] = v150;
      *&v210[72] = v148;
      *&v210[80] = v147;
      *&v210[88] = v149;
      *&v210[96] = v154;
      *&v210[104] = v161;
      *&v210[112] = recta;
      *&v210[120] = v75;
      *&v210[128] = v47;
      *&v210[136] = v143;
      v211 = v64;
      v212 = v142;
      v213 = v141;
      v214 = v140;
      v215 = v139;
      v216 = v73;
      v217 = v74;
      v218.origin.x = v72;
      v218.origin.y = v71;
      v218.size.width = v145;
      v218.size.height = v144;
      v219 = __PAIR128__(*&limit, *&r2);
      v220 = v42;
      v182 = v218;
      v187 = *&v210[72];
      v188 = *&v210[88];
      v183 = *&v210[8];
      v184 = *&v210[24];
      v185 = *&v210[40];
      v186 = *&v210[56];
      v201 = *&v210[72];
      r1 = *&v210[88];
      v197 = *&v210[8];
      v198 = *&v210[24];
      v199 = *&v210[40];
      v200 = *&v210[56];
      if (v42)
      {
        ScrollGeometry.outsetForAX(limit:)(__PAIR128__(*&limit, *&r2));
        v78 = r2;
      }

      x = r1.origin.x;
      y = r1.origin.y;
      width = r1.size.width;
      height = r1.size.height;
      v181 = r1;
      v201 = *&v210[72];
      r1 = *&v210[88];
      v197 = *&v210[8];
      v198 = *&v210[24];
      v199 = *&v210[40];
      v200 = *&v210[56];
      if (v42)
      {
        ScrollGeometry.outsetForAX(limit:)(__PAIR128__(*&limit, *&v78));
        v78 = r2;
      }

      v84 = 0;
      v85 = 0;
      v86 = limit;
      v224 = CGRectIntersection(r1, *(&v78 - 2));
      v170 = v224.origin.x;
      v173 = v224.origin.y;
      v87 = v224.size.width;
      v88 = v224.size.height;
      OutputValue = AGGraphGetOutputValue();
      if (LODWORD(v168) != v165 || !OutputValue)
      {
        size = v218.size;
        *(v9 + 272) = v218.origin;
        *(v9 + 288) = size;
        *(v9 + 304) = x;
        *(v9 + 312) = y;
        *(v9 + 320) = width;
        *(v9 + 328) = height;
        v91 = *&v210[104];
        *(v9 + 336) = *&v210[88];
        *(v9 + 352) = v91;
      }

      v164 = v88;
      v168 = v87;
      if (LOBYTE(v167))
      {
        *(v9 + 456) = 0;
        *(v9 + 464) = 0;
        *(v9 + 472) = 1;
      }

      v238.origin.x = 0.0;
      v238.origin.y = 0.0;
      v238.size.width = 0.0;
      v238.size.height = 0.0;
      v225.origin.x = x;
      v225.origin.y = y;
      v225.size.width = width;
      v225.size.height = height;
      LOBYTE(v10) = CGRectEqualToRect(v225, v238);
      v28 = (v9 + 112);
      v167 = *(v9 + 112);
      v162 = *(v9 + 120);
      v160 = *(v9 + 128);
      v1 = *(v9 + 144);
      rect = *(v9 + 136);
      v2 = *(v9 + 152);
      v3 = *(v9 + 160);
      v4 = *(v9 + 168);
      v5 = *(v9 + 176);
      v6 = *(v9 + 184);
      v7 = *(v9 + 192);
      v8 = *(v9 + 200);
      if (one-time initialization token for v7 == -1)
      {
LABEL_104:
        v92 = (v28 - 1);
        v93 = static Semantics.v7;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C == 1)
        {
          if ((dyld_program_sdk_at_least() & 1) == 0)
          {
LABEL_108:
            v226.origin.x = v5;
            v226.origin.y = v6;
            v226.size.width = v7;
            v226.size.height = v8;
            IsNull = CGRectIsNull(v226);
            goto LABEL_114;
          }
        }

        else if (static Semantics.forced < v93)
        {
          goto LABEL_108;
        }

        v227.origin.x = v1;
        v227.origin.y = v2;
        v227.size.width = v3;
        v227.size.height = v4;
        if (CGRectIsNull(v227))
        {
          v95 = 0;
          v96 = v173;
          v97 = v170;
          if (v10)
          {
            goto LABEL_117;
          }

          goto LABEL_133;
        }

        v228.origin.x = v167;
        v228.size.width = v160;
        v228.origin.y = v162;
        v228.size.height = rect;
        IsNull = CGRectIsNull(v228);
LABEL_114:
        v96 = v173;
        v97 = v170;
        if (IsNull || (*&v197 = v137, (AGGraphAnyInputsChanged() & 1) != 0))
        {
LABEL_116:
          v95 = 0;
          if (v10)
          {
LABEL_117:
            v98 = v166;
            goto LABEL_141;
          }

          goto LABEL_133;
        }

        v239.size.width = *(v9 + 400);
        v239.size.height = *(v9 + 408);
        v239.origin.x = 0.0;
        v239.origin.y = 0.0;
        v229 = CGRectIntersection(*(v9 + 304), v239);
        v99 = v229.origin.x;
        v100 = v229.origin.y;
        v101 = v229.size.width;
        v102 = v229.size.height;
        LOBYTE(v192) = 2;
        v229.origin.x = v170;
        v229.origin.y = v173;
        v229.size.width = v168;
        v229.size.height = v164;
        if (!CGRectIsEmpty(v229))
        {
          if ((specialized getter of needsToPlace #1 in LazySubviewPlacements.updateValue()(&v192, v9, 1, v170, v173, v168, v164, v99, v100, v101, v102) & 1) == 0)
          {
            v230.origin.x = v170;
            v230.origin.y = v173;
            v230.size.width = v168;
            v230.size.height = v164;
            limita = CGRectGetMinX(v230);
            v231.origin.x = v167;
            v231.origin.y = v162;
            v231.size.width = v160;
            v231.size.height = rect;
            r2a = CGRectGetMinX(v231);
            v232.origin.x = v167;
            v232.origin.y = v162;
            v232.size.width = v160;
            v232.size.height = rect;
            MaxX = CGRectGetMaxX(v232);
            v233.origin.x = v170;
            v233.origin.y = v96;
            v233.size.width = v168;
            v233.size.height = v164;
            v169 = CGRectGetMaxX(v233);
            v234.origin.x = v170;
            v234.origin.y = v96;
            v234.size.width = v168;
            v234.size.height = v164;
            MinY = CGRectGetMinY(v234);
            v235.origin.x = v167;
            v235.origin.y = v162;
            v235.size.width = v160;
            v235.size.height = rect;
            v157 = CGRectGetMinY(v235);
            v236.origin.x = v167;
            v236.origin.y = v162;
            v236.size.width = v160;
            v236.size.height = rect;
            MaxY = CGRectGetMaxY(v236);
            v104 = v97;
            v105 = MaxY;
            v237.origin.x = v104;
            v237.origin.y = v96;
            v237.size.width = v168;
            v237.size.height = v164;
            v106 = CGRectGetMaxY(v237);
            v107 = *(**AGGraphGetValue() + 360);

            v109 = v107(v108);

            if (v109)
            {
              v110 = v164 / 3.0;
              if (MaxX - v169 < v168 / 3.0)
              {
                v111 = (2 * (limita - r2a < v168 / 3.0)) | 8;
              }

              else
              {
                v111 = 2 * (limita - r2a < v168 / 3.0);
              }

              if (MinY - v157 < v110)
              {
                ++v111;
              }

              if (v105 - v106 < v110)
              {
                v112 = v111 | 4;
              }

              else
              {
                v112 = v111;
              }

              LOBYTE(v95) = 0;
              *(*AGGraphGetValue() + 312) = v112;
            }

            else
            {
              LOBYTE(v95) = 0;
            }

            v98 = v166;
LABEL_141:
            *&v192 = *v92;

            if (*(*AGGraphGetValue() + 341) == 1 && v98)
            {
              v201 = v187;
              r1 = v188;
              v197 = v183;
              v198 = v184;
              v199 = v185;
              v200 = v186;
              Array<A>.pinSectionHeadersAndFooters(in:headerAxes:footerAxes:)(&v197, v98 & 1, (v98 >> 1) & 1);
              AGGraphGetValue();

              LazyLayoutViewCache.updatePrefetchPhases()();
            }

            else
            {
              AGGraphGetValue();

              LazyLayoutViewCache.updatePrefetchPhases()();

              if ((v95 & 1) == 0 && AGGraphGetOutputValue())
              {
                goto LABEL_147;
              }
            }

            *&v197 = v192;
            AGGraphSetOutputValue();
LABEL_147:

            specialized $defer #1 <A>() in LazySubviewPlacements.updateValue()(v9, &v182, &v181, &v207, outlined init with copy of LazySubviewPlacements<LazyHStackLayout>, outlined destroy of LazySubviewPlacements<LazyHStackLayout>);
          }

          goto LABEL_116;
        }

        if (v10)
        {
          LOBYTE(v95) = 0;
          v98 = v166;
          goto LABEL_141;
        }

        v95 = 1;
LABEL_133:
        v113 = AGGraphGetValue();
        v114 = *(MEMORY[0x1E695F050] + 16);
        *&v189[8] = *MEMORY[0x1E695F050];
        ++*(*v113 + 228);
        *v189 = MEMORY[0x1E69E7CC0];
        *&v189[24] = v114;
        v189[40] = 0;
        v190 = 0uLL;
        v191 = 0;
        if (v95)
        {
          v28[4] = 0u;
          v28[5] = 0u;
          v28[2] = 0u;
          v28[3] = 0u;
          *v28 = 0u;
          v28[1] = 0u;
          *(*AGGraphGetValue() + 312) = 0;
        }

        else
        {
          specialized LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:)(&v207, v189, &v182, &v181);
        }

        v98 = v166;
        AGGraphGetValue();
        v115 = AGGraphGetCurrentAttribute();
        if (v115 == v138)
        {
          __break(1u);
        }

        v116 = v115;
        v117 = v191;
        v118 = *v92;
        v119 = v182.size;

        LazyLayoutViewCache.commitPlacedSubviews(from:to:wasCancelled:context:containingSize:)(v118, v189, v117, v116, v119.width, v119.height);

        if (v95)
        {
          v199 = *&v189[32];
          v200 = v190;
          LOBYTE(v201) = v191;
          v121 = *v189;
          v120 = *&v189[16];
        }

        else
        {
          v122 = DWORD2(v207);
          KeyPath = swift_getKeyPath();
          LODWORD(v192) = v122;
          *(&v192 + 1) = KeyPath;
          type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LazySubviewMinorSizingConfiguration>, &type metadata for LazySubviewMinorSizingConfiguration, type metadata accessor for EnvironmentFetch);
          Hasher.init(_seed:)();
          Hasher._combine(_:)(v122);
          v180 = KeyPath;
          type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LazySubviewMinorSizingConfiguration>, &type metadata for EnvironmentValues, &type metadata for LazySubviewMinorSizingConfiguration, MEMORY[0x1E69E77A8]);

          dispatch thunk of Hashable.hash(into:)();
          Hasher._finalize()();
          lazy protocol witness table accessor for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>();
          lazy protocol witness table accessor for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>();
          LOBYTE(v197) = 0;
          v124 = static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();
          v125 = *(v124 + 1);
          v126 = *v124;

          LOWORD(v197) = 257;
          SizingState.prepare(minorSizing:properties:viewSize:)(v126, v125, &v197, r2, limit);

          v194 = *&v189[32];
          v195 = v190;
          v196 = v191;
          v192 = *v189;
          v193 = *&v189[16];
          LODWORD(v180) = v166;
          PlacementState.update(placements:visibleRect:pinnedSubviews:sizingState:)(&v192, &v180, v97, v96, v168, v164);
          v199 = v194;
          v200 = v195;
          LOBYTE(v201) = v196;
          v121 = v192;
          v120 = v193;
        }

        v197 = v121;
        v198 = v120;
        outlined destroy of _LazyLayout_Placements(&v197);
        v127 = *(v9 + 408);
        v204 = *(v9 + 392);
        v205 = v127;
        v206[0] = *(v9 + 424);
        *(v206 + 9) = *(v9 + 433);
        v128 = *(v9 + 344);
        v201 = *(v9 + 328);
        r1.origin = v128;
        v129 = *(v9 + 376);
        r1.size = *(v9 + 360);
        v203 = v129;
        v130 = *(v9 + 280);
        v197 = *(v9 + 264);
        v198 = v130;
        v131 = *(v9 + 312);
        v199 = *(v9 + 296);
        v200 = v131;
        v132 = *(v9 + 96);
        outlined init with copy of PositionState(&v197, &v192);
        AGGraphGetValue();
        _s7SwiftUI13PositionState33_3D73F7C05789F75EB77CBB3485F8A0F0LLV6mainID8subviews7context6layoutAA010_ViewList_O0VSgSayAA25_LazyLayout_PlacedSubviewVG_AA01_uV17_PlacementContextVxtAA0uV0RzlFAA0u6HStackV0V_Tt2t3B5(v132, &v207, &v192);
        outlined destroy of PositionState(&v197);
        v133 = v192;

        *(v9 + 416) = v133;
        v134 = *AGGraphGetValue();
        v135 = *(v9 + 128);
        *(v134 + 232) = *(v9 + 112);
        *(v134 + 248) = v135;
        LOBYTE(v95) = 1;
        goto LABEL_141;
      }
    }

    swift_once();
    goto LABEL_104;
  }

  return AGGraphCancelUpdate();
}

{
  v9 = v0;
  v221 = *MEMORY[0x1E69E9840];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue() || !AGGraphHasDeadlinePassed())
  {
    type metadata accessor for LazyLayoutViewCache();
    v10 = *AGGraphGetValue();
    swift_beginAccess();
    v11 = *AGGraphGetValue() >> 1;
    LODWORD(v168) = *(v9 + 452);
    if (LODWORD(v168) != v11)
    {
      *(v9 + 452) = v11;
      LOBYTE(v10) = 1;
      LOBYTE(v197) = 1;
      v12 = *(v9 + 408);
      *&v210[80] = *(v9 + 392);
      *&v210[96] = v12;
      *&v210[112] = *(v9 + 424);
      *&v210[121] = *(v9 + 433);
      v13 = *(v9 + 344);
      *&v210[16] = *(v9 + 328);
      *&v210[32] = v13;
      v14 = *(v9 + 376);
      *&v210[48] = *(v9 + 360);
      *&v210[64] = v14;
      v15 = *(v9 + 280);
      v207 = *(v9 + 264);
      v208 = v15;
      v16 = *(v9 + 312);
      v209 = *(v9 + 296);
      *v210 = v16;
      outlined destroy of PositionState(&v207);
      *(v9 + 264) = 0;
      *(v9 + 272) = 0u;
      *(v9 + 288) = 0u;
      *(v9 + 304) = 0u;
      *(v9 + 320) = 0u;
      *(v9 + 336) = 0u;
      *(v9 + 352) = 0u;
      *(v9 + 368) = 0u;
      *(v9 + 384) = 0u;
      *(v9 + 400) = 0u;
      *(v9 + 416) = 0u;
      *(v9 + 432) = 0u;
      *(v9 + 448) = 1;
      v1 = *MEMORY[0x1E695F050];
      v2 = *(MEMORY[0x1E695F050] + 8);
      v3 = *(MEMORY[0x1E695F050] + 16);
      v4 = *(MEMORY[0x1E695F050] + 24);
      v17 = *(v9 + 96);
      v18 = *(v9 + 112);
      v19 = *(v9 + 144);
      v199 = *(v9 + 128);
      v200 = v19;
      v197 = v17;
      v198 = v18;
      v20 = *(v9 + 160);
      v21 = *(v9 + 176);
      v22 = *(v9 + 192);
      LODWORD(v203) = *(v9 + 208);
      r1.origin = v21;
      r1.size = v22;
      v201 = v20;
      outlined destroy of PlacementState(&v197);
      v23 = MEMORY[0x1E69E7CC0];
      *(v9 + 96) = MEMORY[0x1E69E7CC0];
      *(v9 + 104) = v23;
      *(v9 + 112) = v1;
      *(v9 + 120) = v2;
      *(v9 + 128) = v3;
      *(v9 + 136) = v4;
      *(v9 + 144) = v1;
      *(v9 + 152) = v2;
      *(v9 + 160) = v3;
      *(v9 + 168) = v4;
      *(v9 + 176) = v1;
      *(v9 + 184) = v2;
      *(v9 + 192) = v3;
      *(v9 + 200) = v4;
      *(v9 + 208) = 0;

      *(v9 + 256) = 0;
      *(v9 + 216) = 0u;
      *(v9 + 232) = 0u;
      *(v9 + 248) = 0;
    }

    Value = AGGraphGetValue();
    v25 = 0;
    if (*(*Value + 341) == 1)
    {
      v25 = *(AGGraphGetValue() + 20);
    }

    v166 = v25;
    HIDWORD(v137) = *(v9 + 12);
    v26 = AGGraphGetValue();
    v167 = v27;
    v29 = *v26;
    v28 = *(v26 + 8);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
    }

    else
    {
      v31 = CurrentAttribute;
      v165 = v11;
      v138 = *MEMORY[0x1E698D3F8];
      v33 = *(v26 + 32);
      v32 = *(v26 + 40);
      v35 = *(v26 + 16);
      v34 = *(v26 + 24);
      v36 = *(v9 + 16);
      v163 = *(v9 + 36);
      v37 = *(v9 + 8);
      type metadata accessor for CGPoint(0);

      LODWORD(v137) = v37;
      v38 = AGGraphGetValue();
      v174 = *v38;
      v171 = v38[1];
      v39 = AGGraphGetValue();
      r2 = *v39;
      limit = v39[1];

      AGGraphGetValue();

      v40 = *AGGraphGetValue();

      v41 = *(AGGraphGetValue() + 20);
      AGGraphGetValue();

      v42 = *AGGraphGetValue();

      v43 = v33 - (v174 - v35);
      v207 = 0u;
      v208 = 0u;
      v44 = v32 - (v171 - v34);
      v209 = 0u;
      memset(v210, 0, 64);
      v210[64] = 1;
      *&v197 = v29;
      *(&v197 + 1) = v28;
      *&v198 = v174;
      *(&v198 + 1) = v171;
      *&v199 = v43;
      *(&v199 + 1) = v44;
      specialized ViewTransform.forEach(inverted:_:)(0, &v197, &v207);
      v45 = *&v208;
      if (v210[64])
      {
        v45 = r2;
      }

      v156 = v45;
      if (v210[64])
      {
        v46 = limit;
      }

      else
      {
        v46 = *(&v208 + 1);
      }

      v155 = v46;
      v47 = 0.0;
      if (v210[64])
      {
        v48 = 0.0;
      }

      else
      {
        v48 = *&v209;
      }

      if (v210[64])
      {
        v49 = 0.0;
      }

      else
      {
        v49 = *(&v209 + 1);
      }

      v152 = v49;
      v153 = v48;
      if (v210[64])
      {
        v50 = 0.0;
      }

      else
      {
        v50 = *v210;
      }

      if (v210[64])
      {
        v51 = 0.0;
      }

      else
      {
        v51 = *&v210[8];
      }

      v150 = v51;
      v151 = v50;
      if (v210[64])
      {
        v52 = r2;
      }

      else
      {
        v52 = *&v210[48];
      }

      if (v210[64])
      {
        v53 = limit;
      }

      else
      {
        v53 = *&v210[56];
      }

      recta = v53;
      v161 = v52;
      if (v210[64])
      {
        v54 = 0.0;
      }

      else
      {
        v54 = *&v210[40];
      }

      if (v210[64])
      {
        v55 = 0.0;
      }

      else
      {
        v55 = *&v210[32];
      }

      if (v210[64])
      {
        v56 = r2;
      }

      else
      {
        v56 = *&v210[16];
      }

      if (v210[64])
      {
        v57 = limit;
      }

      else
      {
        v57 = *&v210[24];
      }

      if (v210[64])
      {
        v58 = 0.0;
      }

      else
      {
        v58 = *&v207;
      }

      if (v210[64])
      {
        v59 = 0.0;
      }

      else
      {
        v59 = *(&v207 + 1);
      }

      v147 = v57;
      v148 = v56;
      v146 = v59;
      if (v40 == 1)
      {
        v60 = v58;
        v61 = v59;
        v62 = r2 - CGRectGetMaxX(*(&v56 - 2));
        v149 = v55 + v62 - v58;
        v154 = v54 + v59 - v59;
        v58 = v62;
      }

      else
      {
        v149 = v55;
        v154 = v54;
      }

      memset(v210, 0, 64);
      v209 = 0u;
      v208 = 0u;
      v207 = 0u;
      v210[64] = 1;
      *&v197 = v29;
      *(&v197 + 1) = v28;
      *&v198 = v174;
      *(&v198 + 1) = v171;
      *&v199 = v43;
      *(&v199 + 1) = v44;
      specialized ViewTransform.forEach(inverted:_:)(0, &v197, &v207);
      v63 = *&v208;
      if (v210[64])
      {
        v63 = r2;
      }

      v143 = v63;
      if (v210[64])
      {
        v64 = limit;
      }

      else
      {
        v64 = *(&v208 + 1);
      }

      if (v210[64])
      {
        v65 = 0.0;
      }

      else
      {
        v65 = *&v209;
      }

      if (v210[64])
      {
        v66 = 0.0;
      }

      else
      {
        v66 = *(&v209 + 1);
      }

      v141 = v66;
      v142 = v65;
      if (v210[64])
      {
        v67 = 0.0;
      }

      else
      {
        v67 = *v210;
      }

      if (v210[64])
      {
        v68 = 0.0;
      }

      else
      {
        v68 = *&v210[8];
      }

      v139 = v68;
      v140 = v67;
      if (v210[64])
      {
        v69 = r2;
      }

      else
      {
        v69 = *&v210[48];
      }

      if (v210[64])
      {
        v70 = limit;
      }

      else
      {
        v70 = *&v210[56];
      }

      v144 = v70;
      v145 = v69;
      if (v210[64])
      {
        v71 = 0.0;
      }

      else
      {
        v71 = *&v210[40];
      }

      if (v210[64])
      {
        v72 = 0.0;
      }

      else
      {
        v72 = *&v210[32];
      }

      if (v210[64])
      {
        v73 = r2;
      }

      else
      {
        v73 = *&v210[16];
      }

      if (v210[64])
      {
        v74 = limit;
      }

      else
      {
        v74 = *&v210[24];
      }

      if (v210[64])
      {
        v75 = 0.0;
      }

      else
      {
        v75 = *&v207;
      }

      if ((v210[64] & 1) == 0)
      {
        v47 = *(&v207 + 1);
      }

      if (v40)
      {
        v223.origin.x = v75;
        v223.origin.y = v47;
        v223.size.width = v73;
        v223.size.height = v74;
        v76 = r2 - CGRectGetMaxX(v223);
        v72 = v72 + v76 - v75;
        v71 = v71 + v47 - v47;
        v75 = v76;
      }

      LODWORD(v207) = v31;
      *(&v207 + 4) = __PAIR64__(v36, v31);
      HIDWORD(v207) = v163;
      *&v77 = v174;
      *(&v77 + 1) = v171;
      v78 = r2;
      *&v79 = r2;
      *(&v79 + 1) = limit;
      v209 = v79;
      v208 = v77;
      *v210 = v41;
      *&v210[8] = v58;
      *&v210[16] = v146;
      *&v210[24] = v156;
      *&v210[32] = v155;
      *&v210[40] = v153;
      *&v210[48] = v152;
      *&v210[56] = v151;
      *&v210[64] = v150;
      *&v210[72] = v148;
      *&v210[80] = v147;
      *&v210[88] = v149;
      *&v210[96] = v154;
      *&v210[104] = v161;
      *&v210[112] = recta;
      *&v210[120] = v75;
      *&v210[128] = v47;
      *&v210[136] = v143;
      v211 = v64;
      v212 = v142;
      v213 = v141;
      v214 = v140;
      v215 = v139;
      v216 = v73;
      v217 = v74;
      v218.origin.x = v72;
      v218.origin.y = v71;
      v218.size.width = v145;
      v218.size.height = v144;
      v219 = __PAIR128__(*&limit, *&r2);
      v220 = v42;
      v182 = v218;
      v187 = *&v210[72];
      v188 = *&v210[88];
      v183 = *&v210[8];
      v184 = *&v210[24];
      v185 = *&v210[40];
      v186 = *&v210[56];
      v201 = *&v210[72];
      r1 = *&v210[88];
      v197 = *&v210[8];
      v198 = *&v210[24];
      v199 = *&v210[40];
      v200 = *&v210[56];
      if (v42)
      {
        ScrollGeometry.outsetForAX(limit:)(__PAIR128__(*&limit, *&r2));
        v78 = r2;
      }

      x = r1.origin.x;
      y = r1.origin.y;
      width = r1.size.width;
      height = r1.size.height;
      v181 = r1;
      v201 = *&v210[72];
      r1 = *&v210[88];
      v197 = *&v210[8];
      v198 = *&v210[24];
      v199 = *&v210[40];
      v200 = *&v210[56];
      if (v42)
      {
        ScrollGeometry.outsetForAX(limit:)(__PAIR128__(*&limit, *&v78));
        v78 = r2;
      }

      v84 = 0;
      v85 = 0;
      v86 = limit;
      v224 = CGRectIntersection(r1, *(&v78 - 2));
      v170 = v224.origin.x;
      v173 = v224.origin.y;
      v87 = v224.size.width;
      v88 = v224.size.height;
      OutputValue = AGGraphGetOutputValue();
      if (LODWORD(v168) != v165 || !OutputValue)
      {
        size = v218.size;
        *(v9 + 272) = v218.origin;
        *(v9 + 288) = size;
        *(v9 + 304) = x;
        *(v9 + 312) = y;
        *(v9 + 320) = width;
        *(v9 + 328) = height;
        v91 = *&v210[104];
        *(v9 + 336) = *&v210[88];
        *(v9 + 352) = v91;
      }

      v164 = v88;
      v168 = v87;
      if (LOBYTE(v167))
      {
        *(v9 + 456) = 0;
        *(v9 + 464) = 0;
        *(v9 + 472) = 1;
      }

      v238.origin.x = 0.0;
      v238.origin.y = 0.0;
      v238.size.width = 0.0;
      v238.size.height = 0.0;
      v225.origin.x = x;
      v225.origin.y = y;
      v225.size.width = width;
      v225.size.height = height;
      LOBYTE(v10) = CGRectEqualToRect(v225, v238);
      v28 = (v9 + 112);
      v167 = *(v9 + 112);
      v162 = *(v9 + 120);
      v160 = *(v9 + 128);
      v1 = *(v9 + 144);
      rect = *(v9 + 136);
      v2 = *(v9 + 152);
      v3 = *(v9 + 160);
      v4 = *(v9 + 168);
      v5 = *(v9 + 176);
      v6 = *(v9 + 184);
      v7 = *(v9 + 192);
      v8 = *(v9 + 200);
      if (one-time initialization token for v7 == -1)
      {
LABEL_104:
        v92 = (v28 - 1);
        v93 = static Semantics.v7;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C == 1)
        {
          if ((dyld_program_sdk_at_least() & 1) == 0)
          {
LABEL_108:
            v226.origin.x = v5;
            v226.origin.y = v6;
            v226.size.width = v7;
            v226.size.height = v8;
            IsNull = CGRectIsNull(v226);
            goto LABEL_114;
          }
        }

        else if (static Semantics.forced < v93)
        {
          goto LABEL_108;
        }

        v227.origin.x = v1;
        v227.origin.y = v2;
        v227.size.width = v3;
        v227.size.height = v4;
        if (CGRectIsNull(v227))
        {
          v95 = 0;
          v96 = v173;
          v97 = v170;
          if (v10)
          {
            goto LABEL_117;
          }

          goto LABEL_133;
        }

        v228.origin.x = v167;
        v228.size.width = v160;
        v228.origin.y = v162;
        v228.size.height = rect;
        IsNull = CGRectIsNull(v228);
LABEL_114:
        v96 = v173;
        v97 = v170;
        if (IsNull || (*&v197 = v137, (AGGraphAnyInputsChanged() & 1) != 0))
        {
LABEL_116:
          v95 = 0;
          if (v10)
          {
LABEL_117:
            v98 = v166;
            goto LABEL_141;
          }

          goto LABEL_133;
        }

        v239.size.width = *(v9 + 400);
        v239.size.height = *(v9 + 408);
        v239.origin.x = 0.0;
        v239.origin.y = 0.0;
        v229 = CGRectIntersection(*(v9 + 304), v239);
        v99 = v229.origin.x;
        v100 = v229.origin.y;
        v101 = v229.size.width;
        v102 = v229.size.height;
        LOBYTE(v192) = 2;
        v229.origin.x = v170;
        v229.origin.y = v173;
        v229.size.width = v168;
        v229.size.height = v164;
        if (!CGRectIsEmpty(v229))
        {
          if ((specialized getter of needsToPlace #1 in LazySubviewPlacements.updateValue()(&v192, v9, 2, v170, v173, v168, v164, v99, v100, v101, v102) & 1) == 0)
          {
            v230.origin.x = v170;
            v230.origin.y = v173;
            v230.size.width = v168;
            v230.size.height = v164;
            limita = CGRectGetMinX(v230);
            v231.origin.x = v167;
            v231.origin.y = v162;
            v231.size.width = v160;
            v231.size.height = rect;
            r2a = CGRectGetMinX(v231);
            v232.origin.x = v167;
            v232.origin.y = v162;
            v232.size.width = v160;
            v232.size.height = rect;
            MaxX = CGRectGetMaxX(v232);
            v233.origin.x = v170;
            v233.origin.y = v96;
            v233.size.width = v168;
            v233.size.height = v164;
            v169 = CGRectGetMaxX(v233);
            v234.origin.x = v170;
            v234.origin.y = v96;
            v234.size.width = v168;
            v234.size.height = v164;
            MinY = CGRectGetMinY(v234);
            v235.origin.x = v167;
            v235.origin.y = v162;
            v235.size.width = v160;
            v235.size.height = rect;
            v157 = CGRectGetMinY(v235);
            v236.origin.x = v167;
            v236.origin.y = v162;
            v236.size.width = v160;
            v236.size.height = rect;
            MaxY = CGRectGetMaxY(v236);
            v104 = v97;
            v105 = MaxY;
            v237.origin.x = v104;
            v237.origin.y = v96;
            v237.size.width = v168;
            v237.size.height = v164;
            v106 = CGRectGetMaxY(v237);
            v107 = *(**AGGraphGetValue() + 360);

            v109 = v107(v108);

            if (v109)
            {
              v110 = v164 / 3.0;
              if (MaxX - v169 < v168 / 3.0)
              {
                v111 = (2 * (limita - r2a < v168 / 3.0)) | 8;
              }

              else
              {
                v111 = 2 * (limita - r2a < v168 / 3.0);
              }

              if (MinY - v157 < v110)
              {
                ++v111;
              }

              if (v105 - v106 < v110)
              {
                v112 = v111 | 4;
              }

              else
              {
                v112 = v111;
              }

              LOBYTE(v95) = 0;
              *(*AGGraphGetValue() + 312) = v112;
            }

            else
            {
              LOBYTE(v95) = 0;
            }

            v98 = v166;
LABEL_141:
            *&v192 = *v92;

            if (*(*AGGraphGetValue() + 341) == 1 && v98)
            {
              v201 = v187;
              r1 = v188;
              v197 = v183;
              v198 = v184;
              v199 = v185;
              v200 = v186;
              Array<A>.pinSectionHeadersAndFooters(in:headerAxes:footerAxes:)(&v197, 2 * (v98 & 1u), v98 & 2);
              AGGraphGetValue();

              LazyLayoutViewCache.updatePrefetchPhases()();
            }

            else
            {
              AGGraphGetValue();

              LazyLayoutViewCache.updatePrefetchPhases()();

              if ((v95 & 1) == 0 && AGGraphGetOutputValue())
              {
                goto LABEL_147;
              }
            }

            *&v197 = v192;
            AGGraphSetOutputValue();
LABEL_147:

            specialized $defer #1 <A>() in LazySubviewPlacements.updateValue()(v9, &v182, &v181, &v207, outlined init with copy of LazySubviewPlacements<LazyVStackLayout>, outlined destroy of LazySubviewPlacements<LazyVStackLayout>);
          }

          goto LABEL_116;
        }

        if (v10)
        {
          LOBYTE(v95) = 0;
          v98 = v166;
          goto LABEL_141;
        }

        v95 = 1;
LABEL_133:
        v113 = AGGraphGetValue();
        v114 = *(MEMORY[0x1E695F050] + 16);
        *&v189[8] = *MEMORY[0x1E695F050];
        ++*(*v113 + 228);
        *v189 = MEMORY[0x1E69E7CC0];
        *&v189[24] = v114;
        v189[40] = 0;
        v190 = 0uLL;
        v191 = 0;
        if (v95)
        {
          v28[4] = 0u;
          v28[5] = 0u;
          v28[2] = 0u;
          v28[3] = 0u;
          *v28 = 0u;
          v28[1] = 0u;
          *(*AGGraphGetValue() + 312) = 0;
        }

        else
        {
          specialized LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:)(&v207, v189, &v182, &v181);
        }

        v98 = v166;
        AGGraphGetValue();
        v115 = AGGraphGetCurrentAttribute();
        if (v115 == v138)
        {
          __break(1u);
        }

        v116 = v115;
        v117 = v191;
        v118 = *v92;
        v119 = v182.size;

        LazyLayoutViewCache.commitPlacedSubviews(from:to:wasCancelled:context:containingSize:)(v118, v189, v117, v116, v119.width, v119.height);

        if (v95)
        {
          v199 = *&v189[32];
          v200 = v190;
          LOBYTE(v201) = v191;
          v121 = *v189;
          v120 = *&v189[16];
        }

        else
        {
          v122 = DWORD2(v207);
          KeyPath = swift_getKeyPath();
          LODWORD(v192) = v122;
          *(&v192 + 1) = KeyPath;
          type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LazySubviewMinorSizingConfiguration>, &type metadata for LazySubviewMinorSizingConfiguration, type metadata accessor for EnvironmentFetch);
          Hasher.init(_seed:)();
          Hasher._combine(_:)(v122);
          v180 = KeyPath;
          type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LazySubviewMinorSizingConfiguration>, &type metadata for EnvironmentValues, &type metadata for LazySubviewMinorSizingConfiguration, MEMORY[0x1E69E77A8]);

          dispatch thunk of Hashable.hash(into:)();
          Hasher._finalize()();
          lazy protocol witness table accessor for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>();
          lazy protocol witness table accessor for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>();
          LOBYTE(v197) = 0;
          v124 = static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();
          v125 = *(v124 + 1);
          v126 = *v124;

          LOWORD(v197) = 514;
          SizingState.prepare(minorSizing:properties:viewSize:)(v126, v125, &v197, r2, limit);

          v194 = *&v189[32];
          v195 = v190;
          v196 = v191;
          v192 = *v189;
          v193 = *&v189[16];
          LODWORD(v180) = v166;
          PlacementState.update(placements:visibleRect:pinnedSubviews:sizingState:)(&v192, &v180, v97, v96, v168, v164);
          v199 = v194;
          v200 = v195;
          LOBYTE(v201) = v196;
          v121 = v192;
          v120 = v193;
        }

        v197 = v121;
        v198 = v120;
        outlined destroy of _LazyLayout_Placements(&v197);
        v127 = *(v9 + 408);
        v204 = *(v9 + 392);
        v205 = v127;
        v206[0] = *(v9 + 424);
        *(v206 + 9) = *(v9 + 433);
        v128 = *(v9 + 344);
        v201 = *(v9 + 328);
        r1.origin = v128;
        v129 = *(v9 + 376);
        r1.size = *(v9 + 360);
        v203 = v129;
        v130 = *(v9 + 280);
        v197 = *(v9 + 264);
        v198 = v130;
        v131 = *(v9 + 312);
        v199 = *(v9 + 296);
        v200 = v131;
        v132 = *(v9 + 96);
        outlined init with copy of PositionState(&v197, &v192);
        AGGraphGetValue();
        _s7SwiftUI13PositionState33_3D73F7C05789F75EB77CBB3485F8A0F0LLV6mainID8subviews7context6layoutAA010_ViewList_O0VSgSayAA25_LazyLayout_PlacedSubviewVG_AA01_uV17_PlacementContextVxtAA0uV0RzlFAA0u6VStackV0V_Tt2t3B5(v132, &v207, &v192);
        outlined destroy of PositionState(&v197);
        v133 = v192;

        *(v9 + 416) = v133;
        v134 = *AGGraphGetValue();
        v135 = *(v9 + 128);
        *(v134 + 232) = *(v9 + 112);
        *(v134 + 248) = v135;
        LOBYTE(v95) = 1;
        goto LABEL_141;
      }
    }

    swift_once();
    goto LABEL_104;
  }

  return AGGraphCancelUpdate();
}

uint64_t specialized $defer #1 <A>() in LazySubviewPlacements.updateValue()(unsigned int *__src, _OWORD *a2, _OWORD *a3, uint64_t a4, void (*a5)(_DWORD *, uint64_t *), void (*a6)(_DWORD *))
{
  v10 = a2[1];
  *(__src + 17) = *a2;
  *(__src + 18) = v10;
  v11 = a3[1];
  *(__src + 19) = *a3;
  *(__src + 20) = v11;
  v12 = *(a4 + 12);
  v13 = *(a4 + 152);
  *(__src + 21) = *(a4 + 136);
  *(__src + 22) = v13;
  v14 = *MEMORY[0x1E698D3F8];
  v15 = 0uLL;
  if (v12 != *MEMORY[0x1E698D3F8])
  {
    v15 = *AGGraphGetValue();
  }

  v16 = *(a4 + 16);
  v17 = *(a4 + 32);
  *(__src + 23) = v15;
  *(__src + 24) = v16;
  *(__src + 25) = v17;
  memcpy(__dst, __src, 0x1D9uLL);
  type metadata accessor for LazyLayoutViewCache();
  a5(__dst, &v21);
  v18 = *AGGraphGetValue();

  a6(__dst);
  v19 = __src[10];
  *(v18 + 320) = *(__src + 58);
  if (*(__src + 249) == 1 && v19 != v14)
  {
    LazyLayoutViewCache.invalidateSize(layoutComputer:animation:)(v19, *(__src + 32));
  }

  *(__src + 249) = 0;
  return result;
}

uint64_t specialized getter of needsToPlace #1 in LazySubviewPlacements.updateValue()(_BYTE *a1, uint64_t a2, char a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  v11 = *a1;
  if (v11 == 2)
  {
    v14 = *(a2 + 176);
    v15 = *(a2 + 144);
    v41 = *(a2 + 160);
    v42 = v14;
    v16 = *(a2 + 176);
    v43 = *(a2 + 192);
    v17 = *(a2 + 112);
    v38[0] = *(a2 + 96);
    v38[1] = v17;
    v18 = *(a2 + 144);
    v20 = *(a2 + 96);
    v19 = *(a2 + 112);
    v39 = *(a2 + 128);
    v40 = v18;
    v34 = v41;
    v35 = v16;
    v36 = *(a2 + 192);
    v30 = v20;
    v31 = v19;
    v44 = *(a2 + 208);
    v37 = *(a2 + 208);
    v32 = v39;
    v33 = v15;
    outlined init with copy of PlacementState(v38, v45);
    LOBYTE(v11) = PlacementState.needsToPlace(newVisibleRect:oldVisibleRect:axes:)(a3, a4, a5, a6, a7, a8, a9, a10, a11);
    v45[4] = v34;
    v45[5] = v35;
    v45[6] = v36;
    v46 = v37;
    v45[0] = v30;
    v45[1] = v31;
    v45[2] = v32;
    v45[3] = v33;
    outlined destroy of PlacementState(v45);
    swift_beginAccess();
    *a1 = v11 & 1;
  }

  return v11 & 1;
}

uint64_t specialized LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:)(uint64_t a1, uint64_t a2, CGRect *a3, CGRect *a4)
{
  v5 = v4;
  v55 = a3;
  v56 = a4;
  specialized LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:)(a1, specialized LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:matchingID:), v67);
  memcpy(v69, v67, sizeof(v69));
  v8 = v67[35];
  v9 = v67[36];
  v10 = v67[37];
  memcpy(v70, v69, sizeof(v70));
  v71 = v67[35];
  v72 = v67[36];
  v73 = v67[37];
  v54 = a1;
  if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(v70) == 1)
  {
    v11 = *(a1 + 280);
    v12 = *(a1 + 288);
    memcpy(v67, a1, 0x129uLL);
    if (*(v5 + 472))
    {
      goto LABEL_7;
    }
  }

  else
  {
    memcpy(v67, v69, 0x118uLL);
    v67[35] = v8;
    v67[36] = v9;
    v11 = v8;
    v12 = v9;
    LOBYTE(v67[37]) = v10;
    if (*(v5 + 472))
    {
      goto LABEL_7;
    }
  }

  v14 = *(v5 + 456);
  v13 = *(v5 + 464);
  memcpy(v63, v69, 0x118uLL);
  *&v63[280] = v8;
  *&v63[288] = v9;
  v63[296] = v10;
  if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(v63) == 1)
  {
    ScrollGeometry.translate(by:limit:)(__PAIR128__(v13, v14), __PAIR128__(v12, v11));
    ScrollGeometry.translate(by:limit:)(__PAIR128__(v13, v14), __PAIR128__(v12, v11));
  }

LABEL_7:
  memcpy(v68, v67, 0x129uLL);
  type metadata accessor for LazyLayoutViewCache();
  v15 = *AGGraphGetValue();
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v53[2] = v5;
  v53[3] = v68;
  v53[4] = a2;
  v18 = *(*v15 + 408);

  v18(v17, partial apply for specialized closure #1 in LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:), v53, v17, MEMORY[0x1E69E7CA8] + 8);

  if (*(a2 + 40) == 1)
  {
    v19 = *(v5 + 40);
    if (v19 != *MEMORY[0x1E698D3F8])
    {
      AGGraphGetValue();

      LazyLayoutViewCache.invalidateSize(layoutComputer:animation:)(v19, 0);
    }
  }

  AGGraphClearUpdate();
  AGGraphGetValue();
  swift_beginAccess();
  v20 = *AGGraphGetValue();

  AGGraphSetUpdate();
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v21);
  v22 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V031ScrollContentAdjustmentBehaviorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(v20, v67[0]);
  if (v22)
  {
    v23 = *(v22 + 72) == 2;
  }

  else
  {
    v23 = 0;
  }

  AGGraphGetValue();

  v24 = *AGGraphGetValue();

  result = AGGraphGetValue();
  v64[0] = 5;
  v26 = 0.0;
  if (*(v5 + 448))
  {
    v27 = 0.0;
  }

  else
  {
    v28 = *(v5 + 432);
    v29 = *(v5 + 440);
    v30 = v28 == 0.0;
    if (v29 != 0.0)
    {
      v30 = 0;
    }

    v27 = 0.0;
    if (!v30 && !v23)
    {
      v64[0] = 1;
      v26 = v29;
      v27 = v28;
    }
  }

  v31 = *(a2 + 48);
  v32 = *(a2 + 56);
  v33 = v31 == 0.0;
  if (v32 != 0.0)
  {
    v33 = 0;
  }

  if (!v33 && !v23)
  {
    v27 = v27 + v31;
    v26 = v26 + v32;
    v64[0] = 0;
  }

  v34 = v27 != 0.0;
  if (v26 != 0.0)
  {
    v34 = 1;
  }

  if (!v34 && !v23)
  {
    memcpy(v67, v5, 0x1D9uLL);
    v35 = *(a2 + 48);
    v65[2] = *(a2 + 32);
    v65[3] = v35;
    v66 = *(a2 + 64);
    v36 = *(a2 + 16);
    v65[0] = *a2;
    v65[1] = v36;
    outlined init with copy of LazySubviewPlacements<LazyHStackLayout>(v67, v63);
    outlined init with copy of _LazyLayout_Placements(v65, v63);
    *&v37 = COERCE_DOUBLE(specialized LazySubviewPlacements.makeAnchorTranslationIfNeeded(placements:context:newSize:reason:)(v65, v54, v64, 1, closure #1 in LazySubviewPlacements.placedAnchorTranslation(axes:placementContext:placements:)partial apply, outlined init with copy of LazySubviewPlacements<LazyHStackLayout>, outlined destroy of LazySubviewPlacements<LazyHStackLayout>, _s7SwiftUI21LazySubviewPlacementsV26notPlacedAnchorTranslation33_3D73F7C05789F75EB77CBB3485F8A0F003oldD00S5Index4axes16placementContext10placementsSo6CGSizeVSgAA01_c7Layout_gD0V_SiAA4AxisO3SetVAA01_cz10_PlacementW0VAA01_cz1_E0VtFAA0c6HStackZ0V_Tt3B5));
    v39 = v38;
    v41 = v40;
    outlined destroy of _LazyLayout_Placements(v65);
    result = outlined destroy of LazySubviewPlacements<LazyHStackLayout>(v67);
    if ((v41 & 1) == 0)
    {
      v27 = *&v37;
      v26 = v39;
    }
  }

  if ((v24 & (v27 != 0.0)) != 0)
  {
    v42 = -v27;
  }

  else
  {
    v42 = v27;
  }

  if (v26 != 0.0 || v27 != 0.0)
  {
    v44 = v64[0];
    if (v64[0] != 5)
    {
      _s7SwiftUI21LazySubviewPlacementsV14logTranslation33_3D73F7C05789F75EB77CBB3485F8A0F0LL_6reasonySo6CGSizeV_AA0G6ReasonAELLOtFAA0C12HStackLayoutV_Tt1g5Tm(v64[0], v42, v26);
      v45 = v55;
      *v45 = CGRectOffset(*v55, v42, v26);
      v46 = v56;
      *v46 = CGRectOffset(*v56, v42, v26);
      *(v5 + 456) = v42;
      *(v5 + 464) = v26;
      *(v5 + 472) = 0;
      AGGraphClearUpdate();
      memcpy(v63, v5, sizeof(v63));
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Scrollable);
      outlined init with copy of LazySubviewPlacements<LazyHStackLayout>(v63, v58);
      WeakValue = AGGraphGetWeakValue();
      if (WeakValue)
      {
        outlined init with copy of AnyTrackedValue(WeakValue, v61);
      }

      else
      {
        v62 = 0;
        memset(v61, 0, sizeof(v61));
      }

      outlined destroy of LazySubviewPlacements<LazyHStackLayout>(v63);
      AGGraphSetUpdate();
      if (v44)
      {
        v48 = *&v63[32];
        AGGraphClearUpdate();
        v49 = v48 == *MEMORY[0x1E698D3F8] || *AGGraphGetValue() == 0;
        AGGraphSetUpdate();
        v50 = v44 == 1 || v49;
      }

      else
      {
        v50 = 0;
      }

      outlined init with copy of Scrollable?(v61, v58, &lazy cache variable for type metadata for Scrollable?, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
      v51 = v59;
      if (v59)
      {
        v52 = v60;
        __swift_project_boxed_opaque_existential_1(v58, v59);
        v57 = v50;
        (*(v52 + 32))(&v57, v51, v52, v42, v26);
        outlined destroy of ViewList?(v61, &lazy cache variable for type metadata for Scrollable?, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
        result = __swift_destroy_boxed_opaque_existential_1(v58);
      }

      else
      {
        outlined destroy of ViewList?(v61, &lazy cache variable for type metadata for Scrollable?, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
        result = outlined destroy of ViewList?(v58, &lazy cache variable for type metadata for Scrollable?, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
      }
    }
  }

  *(v5 + 432) = 0;
  *(v5 + 440) = 0;
  *(v5 + 448) = 1;
  return result;
}

{
  v5 = v4;
  v55 = a3;
  v56 = a4;
  specialized LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:)(a1, specialized LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:matchingID:), v67);
  memcpy(v69, v67, sizeof(v69));
  v8 = v67[35];
  v9 = v67[36];
  v10 = v67[37];
  memcpy(v70, v69, sizeof(v70));
  v71 = v67[35];
  v72 = v67[36];
  v73 = v67[37];
  v54 = a1;
  if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(v70) == 1)
  {
    v11 = *(a1 + 280);
    v12 = *(a1 + 288);
    memcpy(v67, a1, 0x129uLL);
    if (*(v5 + 472))
    {
      goto LABEL_7;
    }
  }

  else
  {
    memcpy(v67, v69, 0x118uLL);
    v67[35] = v8;
    v67[36] = v9;
    v11 = v8;
    v12 = v9;
    LOBYTE(v67[37]) = v10;
    if (*(v5 + 472))
    {
      goto LABEL_7;
    }
  }

  v14 = *(v5 + 456);
  v13 = *(v5 + 464);
  memcpy(v63, v69, 0x118uLL);
  *&v63[280] = v8;
  *&v63[288] = v9;
  v63[296] = v10;
  if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(v63) == 1)
  {
    ScrollGeometry.translate(by:limit:)(__PAIR128__(v13, v14), __PAIR128__(v12, v11));
    ScrollGeometry.translate(by:limit:)(__PAIR128__(v13, v14), __PAIR128__(v12, v11));
  }

LABEL_7:
  memcpy(v68, v67, 0x129uLL);
  type metadata accessor for LazyLayoutViewCache();
  v15 = *AGGraphGetValue();
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v53[2] = v5;
  v53[3] = v68;
  v53[4] = a2;
  v18 = *(*v15 + 408);

  v18(v17, partial apply for specialized closure #1 in LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:), v53, v17, MEMORY[0x1E69E7CA8] + 8);

  if (*(a2 + 40) == 1)
  {
    v19 = *(v5 + 40);
    if (v19 != *MEMORY[0x1E698D3F8])
    {
      AGGraphGetValue();

      LazyLayoutViewCache.invalidateSize(layoutComputer:animation:)(v19, 0);
    }
  }

  AGGraphClearUpdate();
  AGGraphGetValue();
  swift_beginAccess();
  v20 = *AGGraphGetValue();

  AGGraphSetUpdate();
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v21);
  v22 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V031ScrollContentAdjustmentBehaviorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(v20, v67[0]);
  if (v22)
  {
    v23 = *(v22 + 72) == 2;
  }

  else
  {
    v23 = 0;
  }

  AGGraphGetValue();

  v24 = *AGGraphGetValue();

  result = AGGraphGetValue();
  v64[0] = 5;
  v26 = 0.0;
  if (*(v5 + 448))
  {
    v27 = 0.0;
  }

  else
  {
    v28 = *(v5 + 432);
    v29 = *(v5 + 440);
    v30 = v28 == 0.0;
    if (v29 != 0.0)
    {
      v30 = 0;
    }

    v27 = 0.0;
    if (!v30 && !v23)
    {
      v64[0] = 1;
      v26 = v29;
      v27 = v28;
    }
  }

  v31 = *(a2 + 48);
  v32 = *(a2 + 56);
  v33 = v31 == 0.0;
  if (v32 != 0.0)
  {
    v33 = 0;
  }

  if (!v33 && !v23)
  {
    v27 = v27 + v31;
    v26 = v26 + v32;
    v64[0] = 0;
  }

  v34 = v27 != 0.0;
  if (v26 != 0.0)
  {
    v34 = 1;
  }

  if (!v34 && !v23)
  {
    memcpy(v67, v5, 0x1D9uLL);
    v35 = *(a2 + 48);
    v65[2] = *(a2 + 32);
    v65[3] = v35;
    v66 = *(a2 + 64);
    v36 = *(a2 + 16);
    v65[0] = *a2;
    v65[1] = v36;
    outlined init with copy of LazySubviewPlacements<LazyVStackLayout>(v67, v63);
    outlined init with copy of _LazyLayout_Placements(v65, v63);
    *&v37 = COERCE_DOUBLE(specialized LazySubviewPlacements.makeAnchorTranslationIfNeeded(placements:context:newSize:reason:)(v65, v54, v64, 2, partial apply for closure #1 in LazySubviewPlacements.placedAnchorTranslation(axes:placementContext:placements:), outlined init with copy of LazySubviewPlacements<LazyVStackLayout>, outlined destroy of LazySubviewPlacements<LazyVStackLayout>, _s7SwiftUI21LazySubviewPlacementsV26notPlacedAnchorTranslation33_3D73F7C05789F75EB77CBB3485F8A0F003oldD00S5Index4axes16placementContext10placementsSo6CGSizeVSgAA01_c7Layout_gD0V_SiAA4AxisO3SetVAA01_cz10_PlacementW0VAA01_cz1_E0VtFAA0c6VStackZ0V_Tt3B5));
    v39 = v38;
    v41 = v40;
    outlined destroy of _LazyLayout_Placements(v65);
    result = outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v67);
    if ((v41 & 1) == 0)
    {
      v27 = *&v37;
      v26 = v39;
    }
  }

  if ((v24 & (v27 != 0.0)) != 0)
  {
    v42 = -v27;
  }

  else
  {
    v42 = v27;
  }

  if (v26 != 0.0 || v27 != 0.0)
  {
    v44 = v64[0];
    if (v64[0] != 5)
    {
      _s7SwiftUI21LazySubviewPlacementsV14logTranslation33_3D73F7C05789F75EB77CBB3485F8A0F0LL_6reasonySo6CGSizeV_AA0G6ReasonAELLOtFAA0C12HStackLayoutV_Tt1g5Tm(v64[0], v42, v26);
      v45 = v55;
      *v45 = CGRectOffset(*v55, v42, v26);
      v46 = v56;
      *v46 = CGRectOffset(*v56, v42, v26);
      *(v5 + 456) = v42;
      *(v5 + 464) = v26;
      *(v5 + 472) = 0;
      AGGraphClearUpdate();
      memcpy(v63, v5, sizeof(v63));
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Scrollable);
      outlined init with copy of LazySubviewPlacements<LazyVStackLayout>(v63, v58);
      WeakValue = AGGraphGetWeakValue();
      if (WeakValue)
      {
        outlined init with copy of AnyTrackedValue(WeakValue, v61);
      }

      else
      {
        v62 = 0;
        memset(v61, 0, sizeof(v61));
      }

      outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v63);
      AGGraphSetUpdate();
      if (v44)
      {
        v48 = *&v63[32];
        AGGraphClearUpdate();
        v49 = v48 == *MEMORY[0x1E698D3F8] || *AGGraphGetValue() == 0;
        AGGraphSetUpdate();
        v50 = v44 == 1 || v49;
      }

      else
      {
        v50 = 0;
      }

      outlined init with copy of Scrollable?(v61, v58, &lazy cache variable for type metadata for Scrollable?, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
      v51 = v59;
      if (v59)
      {
        v52 = v60;
        __swift_project_boxed_opaque_existential_1(v58, v59);
        v57 = v50;
        (*(v52 + 32))(&v57, v51, v52, v42, v26);
        outlined destroy of ViewList?(v61, &lazy cache variable for type metadata for Scrollable?, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
        result = __swift_destroy_boxed_opaque_existential_1(v58);
      }

      else
      {
        outlined destroy of ViewList?(v61, &lazy cache variable for type metadata for Scrollable?, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
        result = outlined destroy of ViewList?(v58, &lazy cache variable for type metadata for Scrollable?, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
      }
    }
  }

  *(v5 + 432) = 0;
  *(v5 + 440) = 0;
  *(v5 + 448) = 1;
  return result;
}

uint64_t _s7SwiftUI13PositionState33_3D73F7C05789F75EB77CBB3485F8A0F0LLV6mainID8subviews7context6layoutAA010_ViewList_O0VSgSayAA25_LazyLayout_PlacedSubviewVG_AA01_uV17_PlacementContextVxtAA0uV0RzlFAA0u6HStackV0V_Tt2t3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 208);
  v6 = *(a2 + 280);
  v7 = *(a2 + 288);
  v8 = *(a2 + 296);
  v9 = *(a2 + 104);
  v10 = *(a2 + 136);
  v16[4] = *(a2 + 120);
  v17 = v10;
  v18 = *(a2 + 152);
  v11 = *(a2 + 72);
  v16[0] = *(a2 + 56);
  v16[1] = v11;
  v16[2] = *(a2 + 88);
  v16[3] = v9;
  if (v8)
  {
    ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v7, v6));
  }

  v12 = swift_allocObject();
  v13 = *(&v18 + 1);
  *(v12 + 16) = v17;
  *(v12 + 32) = v5;
  *(v12 + 40) = v13;

  specialized Sequence.min(by:)(a1, v12, v16);
  if (*&v16[0])
  {
    v14 = *(*&v16[0] + 152);
    *a3 = *(*&v16[0] + 144);

    outlined destroy of GlassEntryView?(v16, &lazy cache variable for type metadata for _LazyLayout_PlacedSubview?, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6720]);
  }

  else
  {

    v14 = 0;
    *a3 = 0;
  }

  a3[1] = v14;
  return result;
}

uint64_t _s7SwiftUI13PositionState33_3D73F7C05789F75EB77CBB3485F8A0F0LLV6mainID8subviews7context6layoutAA010_ViewList_O0VSgSayAA25_LazyLayout_PlacedSubviewVG_AA01_uV17_PlacementContextVxtAA0uV0RzlFAA0u6VStackV0V_Tt2t3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 200);
  v6 = *(a2 + 280);
  v7 = *(a2 + 288);
  v8 = *(a2 + 296);
  v9 = *(a2 + 104);
  v10 = *(a2 + 136);
  v16[4] = *(a2 + 120);
  v17 = v10;
  v18 = *(a2 + 152);
  v11 = *(a2 + 72);
  v16[0] = *(a2 + 56);
  v16[1] = v11;
  v16[2] = *(a2 + 88);
  v16[3] = v9;
  if (v8)
  {
    ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v7, v6));
  }

  v12 = swift_allocObject();
  v13 = v18;
  *(v12 + 16) = v17;
  *(v12 + 32) = v13;
  *(v12 + 40) = v5;

  specialized Sequence.min(by:)(a1, v12, v16);
  if (*&v16[0])
  {
    v14 = *(*&v16[0] + 152);
    *a3 = *(*&v16[0] + 144);

    outlined destroy of GlassEntryView?(v16, &lazy cache variable for type metadata for _LazyLayout_PlacedSubview?, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6720]);
  }

  else
  {

    v14 = 0;
    *a3 = 0;
  }

  a3[1] = v14;
  return result;
}

uint64_t specialized closure #1 in LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, void (*a5)(_DWORD *, _DWORD *), uint64_t a6, void (*a7)(_DWORD *), void (*a8)(_DWORD *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t))
{
  memcpy(__dst, a2, 0x1D9uLL);
  a5(__dst, v23);
  Value = AGGraphGetValue();
  v14 = *Value;
  v15 = *(Value + 8);
  v16 = *(Value + 16);
  v17 = *(Value + 20);
  a7(__dst);
  memcpy(v23, a2, 0x1D9uLL);
  type metadata accessor for LazyLayoutViewCache();
  a5(v23, v21);
  AGGraphGetValue();

  a7(v23);
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    LazyLayoutViewCache.subviews(context:)(result, v21);

    a8(v21, a3, a1, a4, v14, v15, v16 | (v17 << 32));
    return outlined destroy of _LazyLayout_Subviews(v21);
  }

  return result;
}

uint64_t _s7SwiftUI21LazySubviewPlacementsV14logTranslation33_3D73F7C05789F75EB77CBB3485F8A0F0LL_6reasonySo6CGSizeV_AA0G6ReasonAELLOtFAA0C12HStackLayoutV_Tt1g5Tm(unsigned __int8 a1, double a2, double a3)
{
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  if (one-time initialization token for scroll != -1)
  {
    v25 = v7;
    swift_once();
    v7 = v25;
  }

  v10 = __swift_project_value_buffer(v7, static Log.scroll);
  outlined init with copy of ObservationTracking._AccessList?(v10, v9, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    return outlined destroy of ObservationTracking._AccessList?(v9, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 134218498;
    *(v16 + 4) = a2;
    *(v16 + 12) = 2048;
    *(v16 + 14) = a3;
    v18 = 0xD000000000000013;
    *(v16 + 22) = 2080;
    v19 = 0x800000018DD759D0;
    if (a1 == 3)
    {
      v19 = 0x800000018DD759F0;
    }

    else
    {
      v18 = 0xD000000000000015;
    }

    if (a1 == 2)
    {
      v18 = 0x7377656976627573;
      v19 = 0xEF65676E61686320;
    }

    v20 = 0xD000000000000013;
    v21 = 0x800000018DD75A30;
    if (a1)
    {
      v20 = 0xD00000000000001CLL;
      v21 = 0x800000018DD75A10;
    }

    if (a1 <= 1u)
    {
      v22 = v20;
    }

    else
    {
      v22 = v18;
    }

    if (a1 <= 1u)
    {
      v23 = v21;
    }

    else
    {
      v23 = v19;
    }

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v27);

    *(v16 + 24) = v24;
    _os_log_impl(&dword_18D018000, v14, v15, "Adjusting content offset by %f, %f for reason: %s.", v16, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x193AC4820](v17, -1, -1);
    MEMORY[0x193AC4820](v16, -1, -1);
  }

  return (*(v12 + 8))(v9, v11);
}

void *specialized LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, unint64_t, uint64_t)@<X1>, void *a3@<X8>)
{
  v7 = *(v3 + 48);
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionKey);
  v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v7, __src[0]);
  if (!v8 || *(v8 + 76) == 255 || _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v7) == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_11;
  }

  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for ScrollTargetRole.Role?, &type metadata for ScrollTargetRole.Role, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v10 = (*Value & 0xFE) != 2 && (*Value & 1) == 0;
  if (!v10 || *(a1 + 32) == 0.0 || *(a1 + 40) == 0.0)
  {
    goto LABEL_11;
  }

  v12 = *(v3 + 96);
  if (*(v12 + 16))
  {
    v13 = *(v12 + 32);
    v14 = *(v13 + 144);
    v15 = *(v13 + 148);
    v16 = *(v13 + 152);

LABEL_15:
    a2(a1, v14 | (v15 << 32), v16);
  }

  type metadata accessor for LazyLayoutViewCache();
  AGGraphGetValue();
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);

  v17 = AGGraphGetValue();
  outlined init with copy of AnyTrackedValue(v17, __src);

  v18 = __src[3];
  v19 = __src[4];
  __swift_project_boxed_opaque_existential_1(__src, __src[3]);
  v20 = (*(v19 + 40))(v18, v19);
  if (v20)
  {
    v21 = v20;
    if ((*(*v20 + 88))(v20))
    {
      (*(*v21 + 96))(v22, 0);

      v14 = v22[0];
      v15 = HIDWORD(v22[0]);
      v16 = v22[1];
      __swift_destroy_boxed_opaque_existential_1(__src);
      goto LABEL_15;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(__src);
LABEL_11:
  _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(__src);
  return memcpy(a3, __src, 0x129uLL);
}

uint64_t specialized LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:matchingID:)@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  AGGraphClearUpdate();
  type metadata accessor for LazyLayoutViewCache();
  AGGraphGetValue();
  swift_beginAccess();
  v10 = *AGGraphGetValue();

  AGGraphSetUpdate();
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v11);
  v12 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V031ScrollContentAdjustmentBehaviorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(v10, __src[0]);
  if (v12)
  {
    v13 = *(v12 + 72);

    if (v13 == 2)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v60 = a1;
  Value = AGGraphGetValue();
  v15 = *MEMORY[0x1E698D3F8];
  if (*(*Value + 164) == *MEMORY[0x1E698D3F8])
  {
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    *&v90 = 0;
    outlined destroy of GlassEntryView?(&v85, &lazy cache variable for type metadata for ScrollPosition?, &type metadata for ScrollPosition, MEMORY[0x1E69E6720]);
LABEL_7:
    _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(__src);
    v16 = a4;
    goto LABEL_8;
  }

  v58 = a2;
  v59 = a3;
  v18 = a4;
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);

  v19 = AGGraphGetValue();
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v19, __src, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock) && static Update.dispatchDepth < static Update.depth)
  {
    (*(*__src[1] + 104))(1);
    outlined init with copy of ScrollPosition(&__src[2], &v85);
  }

  else
  {
    (*(*__src[1] + 120))(&v85);
  }

  outlined destroy of GlassEntryView?(__src, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
  v100[2] = v87;
  v100[3] = v88;
  v100[4] = v89;
  v101 = v90;
  v100[0] = v85;
  v100[1] = v86;
  v20 = *(v5 + 32);
  AGGraphClearUpdate();
  if (v20 == v15)
  {
    AGGraphSetUpdate();
    v99 = 0;
    v21 = v60;
  }

  else
  {
    v22 = *AGGraphGetValue();
    AGGraphSetUpdate();
    v99 = 0;
    v21 = v60;
    if (v22)
    {
      goto LABEL_31;
    }
  }

  v23 = (v5 + 264);
  v24 = *(v5 + 408);
  v25 = *(v5 + 376);
  v80 = *(v5 + 392);
  v81 = v24;
  v26 = *(v5 + 408);
  v82[0] = *(v5 + 424);
  *(v82 + 9) = *(v5 + 433);
  v27 = *(v5 + 344);
  v28 = *(v5 + 312);
  v76 = *(v5 + 328);
  v77 = v27;
  v29 = *(v5 + 344);
  v30 = *(v5 + 376);
  v78 = *(v5 + 360);
  v79 = v30;
  v31 = *(v5 + 280);
  v73[0] = *(v5 + 264);
  v73[1] = v31;
  v32 = *(v5 + 312);
  v34 = *(v5 + 264);
  v33 = *(v5 + 280);
  v74 = *(v5 + 296);
  v75 = v32;
  v93 = v80;
  v94 = v26;
  v95[0] = *(v5 + 424);
  *(v95 + 9) = *(v5 + 433);
  v89 = v76;
  v90 = v29;
  v91 = v78;
  v92 = v25;
  v85 = v34;
  v86 = v33;
  v87 = v74;
  v88 = v28;
  memcpy(__src, v21, 0x129uLL);
  outlined init with copy of PositionState(v73, __dst);
  v35 = PositionState.dispatchContainerSizeChange(context:axes:allowedAxes:)(__src, &v99);
  v83[8] = v93;
  v83[9] = v94;
  v84[0] = v95[0];
  *(v84 + 9) = *(v95 + 9);
  v83[4] = v89;
  v83[5] = v90;
  v83[6] = v91;
  v83[7] = v92;
  v83[0] = v85;
  v83[1] = v86;
  v83[2] = v87;
  v83[3] = v88;
  outlined destroy of PositionState(v83);
  if (v35)
  {
    specialized LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)(v21, v100, v58, v59, v96);
    memcpy(__src, v5, 0x1D9uLL);
    memcpy(__dst, v96, 0x129uLL);
    if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(__dst) != 1)
    {
      v36 = "for new view content size";
      outlined init with copy of LazySubviewPlacements<LazyHStackLayout>(__src, &v85);
      v37 = 0xD000000000000014;
LABEL_25:
      v50 = v36 | 0x8000000000000000;
LABEL_26:
      _s7SwiftUI21LazySubviewPlacementsV19logDefaultPlacement33_3D73F7C05789F75EB77CBB3485F8A0F0LLyySSFAA0C12HStackLayoutV_Tt0g5(v37, v50);
      outlined destroy of LazySubviewPlacements<LazyHStackLayout>(__src);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v38 = *(v5 + 408);
  v39 = *(v5 + 376);
  v68 = *(v5 + 392);
  v69 = v38;
  v40 = *(v5 + 408);
  v70[0] = *(v5 + 424);
  *(v70 + 9) = *(v5 + 433);
  v41 = *(v5 + 344);
  v42 = *(v5 + 312);
  v64 = *(v5 + 328);
  v65 = v41;
  v43 = *(v5 + 344);
  v44 = *(v5 + 376);
  v66 = *(v5 + 360);
  v67 = v44;
  v45 = *(v5 + 280);
  v61[0] = *v23;
  v61[1] = v45;
  v46 = *(v5 + 312);
  v48 = *v23;
  v47 = *(v5 + 280);
  v62 = *(v5 + 296);
  v63 = v46;
  v93 = v68;
  v94 = v40;
  v95[0] = *(v5 + 424);
  *(v95 + 9) = *(v5 + 433);
  v89 = v64;
  v90 = v43;
  v91 = v66;
  v92 = v39;
  v85 = v48;
  v86 = v47;
  v87 = v62;
  v88 = v42;
  memcpy(__src, v21, 0x129uLL);
  v49 = PositionState.dispatchViewSizeChange(context:axes:allowedAxes:)(__src, &v99);
  v71[8] = v93;
  v71[9] = v94;
  v72[0] = v95[0];
  *(v72 + 9) = *(v95 + 9);
  v71[4] = v89;
  v71[5] = v90;
  v71[6] = v91;
  v71[7] = v92;
  v71[0] = v85;
  v71[1] = v86;
  v71[2] = v87;
  v71[3] = v88;
  outlined init with copy of PositionState(v61, __dst);
  outlined destroy of PositionState(v71);
  if (!v49)
  {
    v51 = AGGraphGetValue();
    v52 = *v51;
    v53 = *(v51 + 8);
    v54 = *(v51 + 16);
    v55 = *(v51 + 20);
    v56 = *AGGraphGetValue();

    LOBYTE(__src[0]) = v54;
    v57 = v54 | (v55 << 32);
    v21 = v60;
    LOBYTE(v52) = specialized PositionState.dispatchSubviewsChange<A>(context:layout:cache:)(v60, v52, v53, v57, v56);

    if (v52)
    {
      specialized LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)(v60, v100, v58, v59, v96);
      memcpy(__src, v5, 0x1D9uLL);
      memcpy(__dst, v96, 0x129uLL);
      if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(__dst) == 1)
      {
        goto LABEL_27;
      }

      outlined init with copy of LazySubviewPlacements<LazyHStackLayout>(__src, &v85);
      v37 = 0x2077656E20726F66;
      v50 = 0xEF6469206E69616DLL;
      goto LABEL_26;
    }

LABEL_31:
    if (*(v5 + 264) != 1)
    {
      specialized LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)(v21, v100, v58, v59, v96);
      memcpy(__src, v5, 0x1D9uLL);
      memcpy(__dst, v96, 0x129uLL);
      if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(__dst) != 1)
      {
        outlined init with copy of LazySubviewPlacements<LazyHStackLayout>(__src, &v85);
        _s7SwiftUI21LazySubviewPlacementsV19logDefaultPlacement33_3D73F7C05789F75EB77CBB3485F8A0F0LLyySSFAA0C12HStackLayoutV_Tt0g5(0xD000000000000011, 0x800000018DD75A50);
        outlined destroy of LazySubviewPlacements<LazyHStackLayout>(__src);
      }

      memcpy(v18, v96, 0x129uLL);
      result = outlined destroy of ScrollPosition(v100);
      goto LABEL_9;
    }

    outlined destroy of ScrollPosition(v100);
    _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(__src);
    v16 = v18;
LABEL_8:
    result = memcpy(v16, __src, 0x129uLL);
LABEL_9:
    *(v5 + 264) = 1;
    return result;
  }

  specialized LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)(v21, v100, v58, v59, v96);
  memcpy(__src, v5, 0x1D9uLL);
  memcpy(__dst, v96, 0x129uLL);
  if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(__dst) != 1)
  {
    v36 = "for initial state";
    outlined init with copy of LazySubviewPlacements<LazyHStackLayout>(__src, &v85);
    v37 = 0xD000000000000019;
    goto LABEL_25;
  }

LABEL_27:
  memcpy(v18, v96, 0x129uLL);
  result = outlined destroy of ScrollPosition(v100);
  *v23 = 1;
  return result;
}

{
  v5 = v4;
  AGGraphClearUpdate();
  type metadata accessor for LazyLayoutViewCache();
  AGGraphGetValue();
  swift_beginAccess();
  v10 = *AGGraphGetValue();

  AGGraphSetUpdate();
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v11);
  v12 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V031ScrollContentAdjustmentBehaviorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(v10, __src[0]);
  if (v12)
  {
    v13 = *(v12 + 72);

    if (v13 == 2)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v60 = a1;
  Value = AGGraphGetValue();
  v15 = *MEMORY[0x1E698D3F8];
  if (*(*Value + 164) == *MEMORY[0x1E698D3F8])
  {
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    *&v90 = 0;
    outlined destroy of GlassEntryView?(&v85, &lazy cache variable for type metadata for ScrollPosition?, &type metadata for ScrollPosition, MEMORY[0x1E69E6720]);
LABEL_7:
    _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(__src);
    v16 = a4;
    goto LABEL_8;
  }

  v58 = a2;
  v59 = a3;
  v18 = a4;
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);

  v19 = AGGraphGetValue();
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v19, __src, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock) && static Update.dispatchDepth < static Update.depth)
  {
    (*(*__src[1] + 104))(1);
    outlined init with copy of ScrollPosition(&__src[2], &v85);
  }

  else
  {
    (*(*__src[1] + 120))(&v85);
  }

  outlined destroy of GlassEntryView?(__src, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
  v100[2] = v87;
  v100[3] = v88;
  v100[4] = v89;
  v101 = v90;
  v100[0] = v85;
  v100[1] = v86;
  v20 = *(v5 + 32);
  AGGraphClearUpdate();
  if (v20 == v15)
  {
    AGGraphSetUpdate();
    v99 = 0;
    v21 = v60;
  }

  else
  {
    v22 = *AGGraphGetValue();
    AGGraphSetUpdate();
    v99 = 0;
    v21 = v60;
    if (v22)
    {
      goto LABEL_31;
    }
  }

  v23 = (v5 + 264);
  v24 = *(v5 + 408);
  v25 = *(v5 + 376);
  v80 = *(v5 + 392);
  v81 = v24;
  v26 = *(v5 + 408);
  v82[0] = *(v5 + 424);
  *(v82 + 9) = *(v5 + 433);
  v27 = *(v5 + 344);
  v28 = *(v5 + 312);
  v76 = *(v5 + 328);
  v77 = v27;
  v29 = *(v5 + 344);
  v30 = *(v5 + 376);
  v78 = *(v5 + 360);
  v79 = v30;
  v31 = *(v5 + 280);
  v73[0] = *(v5 + 264);
  v73[1] = v31;
  v32 = *(v5 + 312);
  v34 = *(v5 + 264);
  v33 = *(v5 + 280);
  v74 = *(v5 + 296);
  v75 = v32;
  v93 = v80;
  v94 = v26;
  v95[0] = *(v5 + 424);
  *(v95 + 9) = *(v5 + 433);
  v89 = v76;
  v90 = v29;
  v91 = v78;
  v92 = v25;
  v85 = v34;
  v86 = v33;
  v87 = v74;
  v88 = v28;
  memcpy(__src, v21, 0x129uLL);
  outlined init with copy of PositionState(v73, __dst);
  v35 = PositionState.dispatchContainerSizeChange(context:axes:allowedAxes:)(__src, &v99);
  v83[8] = v93;
  v83[9] = v94;
  v84[0] = v95[0];
  *(v84 + 9) = *(v95 + 9);
  v83[4] = v89;
  v83[5] = v90;
  v83[6] = v91;
  v83[7] = v92;
  v83[0] = v85;
  v83[1] = v86;
  v83[2] = v87;
  v83[3] = v88;
  outlined destroy of PositionState(v83);
  if (v35)
  {
    specialized LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)(v21, v100, v58, v59, v96);
    memcpy(__src, v5, 0x1D9uLL);
    memcpy(__dst, v96, 0x129uLL);
    if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(__dst) != 1)
    {
      v36 = "for new view content size";
      outlined init with copy of LazySubviewPlacements<LazyVStackLayout>(__src, &v85);
      v37 = 0xD000000000000014;
LABEL_25:
      v50 = v36 | 0x8000000000000000;
LABEL_26:
      _s7SwiftUI21LazySubviewPlacementsV19logDefaultPlacement33_3D73F7C05789F75EB77CBB3485F8A0F0LLyySSFAA0C12VStackLayoutV_Tt0g5(v37, v50);
      outlined destroy of LazySubviewPlacements<LazyVStackLayout>(__src);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v38 = *(v5 + 408);
  v39 = *(v5 + 376);
  v68 = *(v5 + 392);
  v69 = v38;
  v40 = *(v5 + 408);
  v70[0] = *(v5 + 424);
  *(v70 + 9) = *(v5 + 433);
  v41 = *(v5 + 344);
  v42 = *(v5 + 312);
  v64 = *(v5 + 328);
  v65 = v41;
  v43 = *(v5 + 344);
  v44 = *(v5 + 376);
  v66 = *(v5 + 360);
  v67 = v44;
  v45 = *(v5 + 280);
  v61[0] = *v23;
  v61[1] = v45;
  v46 = *(v5 + 312);
  v48 = *v23;
  v47 = *(v5 + 280);
  v62 = *(v5 + 296);
  v63 = v46;
  v93 = v68;
  v94 = v40;
  v95[0] = *(v5 + 424);
  *(v95 + 9) = *(v5 + 433);
  v89 = v64;
  v90 = v43;
  v91 = v66;
  v92 = v39;
  v85 = v48;
  v86 = v47;
  v87 = v62;
  v88 = v42;
  memcpy(__src, v21, 0x129uLL);
  v49 = PositionState.dispatchViewSizeChange(context:axes:allowedAxes:)(__src, &v99);
  v71[8] = v93;
  v71[9] = v94;
  v72[0] = v95[0];
  *(v72 + 9) = *(v95 + 9);
  v71[4] = v89;
  v71[5] = v90;
  v71[6] = v91;
  v71[7] = v92;
  v71[0] = v85;
  v71[1] = v86;
  v71[2] = v87;
  v71[3] = v88;
  outlined init with copy of PositionState(v61, __dst);
  outlined destroy of PositionState(v71);
  if (!v49)
  {
    v51 = AGGraphGetValue();
    v52 = *v51;
    v53 = *(v51 + 8);
    v54 = *(v51 + 16);
    v55 = *(v51 + 20);
    v56 = *AGGraphGetValue();

    LOBYTE(__src[0]) = v54;
    v57 = v54 | (v55 << 32);
    v21 = v60;
    LOBYTE(v52) = specialized PositionState.dispatchSubviewsChange<A>(context:layout:cache:)(v60, v52, v53, v57, v56);

    if (v52)
    {
      specialized LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)(v60, v100, v58, v59, v96);
      memcpy(__src, v5, 0x1D9uLL);
      memcpy(__dst, v96, 0x129uLL);
      if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(__dst) == 1)
      {
        goto LABEL_27;
      }

      outlined init with copy of LazySubviewPlacements<LazyVStackLayout>(__src, &v85);
      v37 = 0x2077656E20726F66;
      v50 = 0xEF6469206E69616DLL;
      goto LABEL_26;
    }

LABEL_31:
    if (*(v5 + 264) != 1)
    {
      specialized LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)(v21, v100, v58, v59, v96);
      memcpy(__src, v5, 0x1D9uLL);
      memcpy(__dst, v96, 0x129uLL);
      if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(__dst) != 1)
      {
        outlined init with copy of LazySubviewPlacements<LazyVStackLayout>(__src, &v85);
        _s7SwiftUI21LazySubviewPlacementsV19logDefaultPlacement33_3D73F7C05789F75EB77CBB3485F8A0F0LLyySSFAA0C12VStackLayoutV_Tt0g5(0xD000000000000011, 0x800000018DD75A50);
        outlined destroy of LazySubviewPlacements<LazyVStackLayout>(__src);
      }

      memcpy(v18, v96, 0x129uLL);
      result = outlined destroy of ScrollPosition(v100);
      goto LABEL_9;
    }

    outlined destroy of ScrollPosition(v100);
    _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(__src);
    v16 = v18;
LABEL_8:
    result = memcpy(v16, __src, 0x129uLL);
LABEL_9:
    *(v5 + 264) = 1;
    return result;
  }

  specialized LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)(v21, v100, v58, v59, v96);
  memcpy(__src, v5, 0x1D9uLL);
  memcpy(__dst, v96, 0x129uLL);
  if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(__dst) != 1)
  {
    v36 = "for initial state";
    outlined init with copy of LazySubviewPlacements<LazyVStackLayout>(__src, &v85);
    v37 = 0xD000000000000019;
    goto LABEL_25;
  }

LABEL_27:
  memcpy(v18, v96, 0x129uLL);
  result = outlined destroy of ScrollPosition(v100);
  *v23 = 1;
  return result;
}

void *specialized LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v9 = a1;
  v12 = *(a1 + 11);
  v11 = *(a1 + 12);
  v13 = *(a1 + 31);
  v14 = *(a1 + 32);
  v15 = *(a1 + 35);
  v16 = *(a1 + 36);
  outlined init with copy of ScrollPosition.Storage(a2, edge);
  v17 = *edge;
  if (v56 > 2u)
  {
    if (v56 == 3)
    {
      v21 = *edge - v13;
      v22 = v12 - v14;
      goto LABEL_19;
    }

    if (v56 == 4)
    {
      v21 = v11 - v13;
      v22 = *edge - v14;
      goto LABEL_19;
    }

LABEL_29:
    _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(v57);
    v41 = v57;
    return memcpy(a5, v41, 0x129uLL);
  }

  if (v56)
  {
    if (v56 == 1)
    {
      v18 = *(v9 + 184);
      v19 = *(v9 + 216);
      v57[2] = *(v9 + 200);
      v57[3] = v19;
      v57[4] = *(v9 + 232);
      v20 = *(v9 + 168);
      v57[1] = v18;
      v57[0] = v20;
      v57[6] = *(v9 + 264);
      *&v57[5] = v13;
      *(&v57[5] + 1) = v14;
      *&v17 = ScrollGeometry.targetRect(edge:)(edge[0]);
    }

    else
    {
      v58.origin.y = *&edge[8];
    }

    v21 = v17 - v13;
    v22 = v58.origin.y - v14;
    goto LABEL_19;
  }

  v49 = *edge;
  v50 = v54;
  *v51 = *v55;
  *&v51[9] = *&v55[9];
  *&v57[0] = a3;
  *(&v57[0] + 1) = a4;
  v23 = _ViewList_ID.allExplicitIDs.getter();
  v24 = *(v23 + 16);
  if (!v24)
  {

    outlined destroy of ScrollPosition.ViewID(&v49);
    goto LABEL_29;
  }

  v43 = v9;
  __src = v6;
  v25 = 0;
  v26 = 0.0;
  v27 = 1;
  v28 = 32;
  do
  {
    v29 = v23;
    (*(**(v23 + v28) + 104))(v57);
    __swift_project_boxed_opaque_existential_1(v57, *(&v57[1] + 1));
    v30 = ScrollPosition.matches<A>(id:)();

    __swift_destroy_boxed_opaque_existential_1(v57);
    if (v30)
    {
      if (v27)
      {
        v31 = *(&v50 + 1);
        v45 = *v51;
        v32 = __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
        memcpy(__dst, __src, 0x1D9uLL);
        memcpy(v47, __src, sizeof(v47));
        memcpy(v46, v43, 0x129uLL);
        v33 = *&v51[8];
        v34 = *&v51[16];
        v35 = v51[24];
        outlined init with copy of LazySubviewPlacements<LazyHStackLayout>(__dst, v57);
        type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for LazySubviewPlacements<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazySubviewPlacements);
        v25 = LazySubviewPlacements.makeViewIDTranslation<A>(_:viewID:anchor:)(v46, v32, v33, v34, v35, v36, v31, v45);
        v26 = v37;
        v27 = v38;

        memcpy(v57, v47, 0x1D9uLL);
        outlined destroy of LazySubviewPlacements<LazyHStackLayout>(v57);
      }

      else
      {

        v27 = 0;
      }
    }

    else
    {
    }

    v28 += 8;
    --v24;
    v23 = v29;
  }

  while (v24);

  outlined destroy of ScrollPosition.ViewID(&v49);
  if (v27)
  {
    goto LABEL_29;
  }

  *&v21 = v25;
  v22 = v26;
  v9 = v43;
  v6 = __src;
LABEL_19:
  if (fabs(v21) < 0.01 && fabs(v22) < 0.01)
  {
    goto LABEL_29;
  }

  memcpy(v57, v6, 0x1D9uLL);
  if (specialized LazySubviewPlacements.allowsContentOffsetAdjustments.getter())
  {
    memcpy(v52, v9, 0x129uLL);
    ScrollGeometry.translate(by:limit:)(__PAIR128__(*&v22, *&v21), __PAIR128__(v16, v15));
    ScrollGeometry.translate(by:limit:)(__PAIR128__(*&v22, *&v21), __PAIR128__(v16, v15));
    v39 = v52[32] - v14;
    *(v6 + 54) = v52[31] - v13;
    *(v6 + 55) = v39;
    *(v6 + 448) = 0;
    memcpy(__dst, v52, 0x129uLL);
    _ViewInputs.base.modify(__dst, v40);
  }

  else
  {
    _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(__dst);
  }

  v41 = __dst;
  return memcpy(a5, v41, 0x129uLL);
}

{
  v6 = v5;
  v9 = a1;
  v12 = *(a1 + 11);
  v11 = *(a1 + 12);
  v13 = *(a1 + 31);
  v14 = *(a1 + 32);
  v15 = *(a1 + 35);
  v16 = *(a1 + 36);
  outlined init with copy of ScrollPosition.Storage(a2, edge);
  v17 = *edge;
  if (v56 > 2u)
  {
    if (v56 == 3)
    {
      v21 = *edge - v13;
      v22 = v12 - v14;
      goto LABEL_19;
    }

    if (v56 == 4)
    {
      v21 = v11 - v13;
      v22 = *edge - v14;
      goto LABEL_19;
    }

LABEL_29:
    _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(v57);
    v41 = v57;
    return memcpy(a5, v41, 0x129uLL);
  }

  if (v56)
  {
    if (v56 == 1)
    {
      v18 = *(v9 + 184);
      v19 = *(v9 + 216);
      v57[2] = *(v9 + 200);
      v57[3] = v19;
      v57[4] = *(v9 + 232);
      v20 = *(v9 + 168);
      v57[1] = v18;
      v57[0] = v20;
      v57[6] = *(v9 + 264);
      *&v57[5] = v13;
      *(&v57[5] + 1) = v14;
      *&v17 = ScrollGeometry.targetRect(edge:)(edge[0]);
    }

    else
    {
      v58.origin.y = *&edge[8];
    }

    v21 = v17 - v13;
    v22 = v58.origin.y - v14;
    goto LABEL_19;
  }

  v49 = *edge;
  v50 = v54;
  *v51 = *v55;
  *&v51[9] = *&v55[9];
  *&v57[0] = a3;
  *(&v57[0] + 1) = a4;
  v23 = _ViewList_ID.allExplicitIDs.getter();
  v24 = *(v23 + 16);
  if (!v24)
  {

    outlined destroy of ScrollPosition.ViewID(&v49);
    goto LABEL_29;
  }

  v43 = v9;
  __src = v6;
  v25 = 0;
  v26 = 0.0;
  v27 = 1;
  v28 = 32;
  do
  {
    v29 = v23;
    (*(**(v23 + v28) + 104))(v57);
    __swift_project_boxed_opaque_existential_1(v57, *(&v57[1] + 1));
    v30 = ScrollPosition.matches<A>(id:)();

    __swift_destroy_boxed_opaque_existential_1(v57);
    if (v30)
    {
      if (v27)
      {
        v31 = *(&v50 + 1);
        v45 = *v51;
        v32 = __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
        memcpy(__dst, __src, 0x1D9uLL);
        memcpy(v47, __src, sizeof(v47));
        memcpy(v46, v43, 0x129uLL);
        v33 = *&v51[8];
        v34 = *&v51[16];
        v35 = v51[24];
        outlined init with copy of LazySubviewPlacements<LazyVStackLayout>(__dst, v57);
        type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for LazySubviewPlacements<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazySubviewPlacements);
        v25 = LazySubviewPlacements.makeViewIDTranslation<A>(_:viewID:anchor:)(v46, v32, v33, v34, v35, v36, v31, v45);
        v26 = v37;
        v27 = v38;

        memcpy(v57, v47, 0x1D9uLL);
        outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v57);
      }

      else
      {

        v27 = 0;
      }
    }

    else
    {
    }

    v28 += 8;
    --v24;
    v23 = v29;
  }

  while (v24);

  outlined destroy of ScrollPosition.ViewID(&v49);
  if (v27)
  {
    goto LABEL_29;
  }

  *&v21 = v25;
  v22 = v26;
  v9 = v43;
  v6 = __src;
LABEL_19:
  if (fabs(v21) < 0.01 && fabs(v22) < 0.01)
  {
    goto LABEL_29;
  }

  memcpy(v57, v6, 0x1D9uLL);
  if (specialized LazySubviewPlacements.allowsContentOffsetAdjustments.getter())
  {
    memcpy(v52, v9, 0x129uLL);
    ScrollGeometry.translate(by:limit:)(__PAIR128__(*&v22, *&v21), __PAIR128__(v16, v15));
    ScrollGeometry.translate(by:limit:)(__PAIR128__(*&v22, *&v21), __PAIR128__(v16, v15));
    v39 = v52[32] - v14;
    *(v6 + 54) = v52[31] - v13;
    *(v6 + 55) = v39;
    *(v6 + 448) = 0;
    memcpy(__dst, v52, 0x129uLL);
    _ViewInputs.base.modify(__dst, v40);
  }

  else
  {
    _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(__dst);
  }

  v41 = __dst;
  return memcpy(a5, v41, 0x129uLL);
}