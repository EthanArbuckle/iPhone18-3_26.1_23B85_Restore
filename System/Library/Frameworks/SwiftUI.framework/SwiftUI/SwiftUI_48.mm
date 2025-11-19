uint64_t sub_18C0F5040()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C0F5078()
{
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = type metadata accessor for PlatformItemList.Item();
  if ((*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    goto LABEL_40;
  }

  v4 = *(v2 + 192);
  v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v6 = *(v2 + 72);
    if (v6 != 255)
    {
      outlined consume of GraphicsImage.Contents(*(v2 + 64), v6);
      v4 = *(v2 + 192);
      v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    }

    if (v5 != 0x1FFFFFFFELL)
    {
      outlined consume of AccessibilityImageLabel(*(v2 + 176), *(v2 + 184), v4);
    }

    swift_unknownObjectRelease();
  }

  if (*(v2 + 264))
  {

    v7 = *(v2 + 272);
    if (v7 >= 2)
    {
    }
  }

  v8 = *(v2 + 336);
  if (v8 >> 2 != 0xFFFFFFFF)
  {
    outlined consume of PlatformItemList.Item.SystemItem(*(v2 + 304), *(v2 + 312), *(v2 + 320), *(v2 + 328), v8, *(v2 + 344), *(v2 + 352), *(v2 + 360), *(v2 + 368), *(v2 + 376), *(v2 + 384), *(v2 + 392), *(v2 + 400));
  }

  v9 = *(v2 + 416);
  if (v9)
  {
    if (v9 == 1)
    {
      goto LABEL_21;
    }
  }

  if (*(v2 + 432))
  {
  }

  if (*(v2 + 448))
  {
  }

LABEL_21:

  if (*(v2 + 512))
  {
  }

  if (*(v2 + 816))
  {

    v10 = *(v2 + 624);
    if (v10)
    {
      if (v10 == 1)
      {
LABEL_28:
        if (*(v2 + 776) != 1)
        {
        }

        goto LABEL_31;
      }

      __swift_destroy_boxed_opaque_existential_1(v2 + 600);
    }

    goto LABEL_28;
  }

LABEL_31:
  v11 = *(v2 + 864);
  if (!v11)
  {
    goto LABEL_34;
  }

  if (v11 != 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 840);
LABEL_34:
    if (*(v2 + 880))
    {
    }
  }

  v12 = v2 + *(v3 + 112);
  v13 = type metadata accessor for CommandOperation();
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = v12 + *(v13 + 20);
    outlined consume of Text.Storage(*v14, *(v14 + 8), *(v14 + 16));

    v15 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 8))(v14 + v15, v16);
    if (*(v12 + *(v13 + 24)))
    {
    }
  }

LABEL_40:

  return swift_deallocObject();
}

uint64_t sub_18C0F5470@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_18C0F547C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

__n128 sub_18C0F54CC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0F5598()
{
  type metadata accessor for _OverlayModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F5744()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F579C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0F5888()
{
  v3 = *(v0 + 24);
  v1 = type metadata accessor for AccessibilityPickerStyle.Body.AccessibilityPickerButton();
  (*(*(v3 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80)) + *(v1 + 52));

  return swift_deallocObject();
}

uint64_t sub_18C0F59A0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C0F5AA8()
{
  type metadata accessor for ModifiedContent();
  _s7SwiftUI7BindingVySbGMaTm_11(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F5B7C()
{
  v6 = *(v0 + 24);
  v1 = (type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody() - 8);
  v2 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));
  __swift_destroy_boxed_opaque_existential_1(v2);

  v3 = v2 + v1[15];
  v4 = type metadata accessor for Binding();
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {

    (*(*(v6 - 8) + 8))(v3 + *(v4 + 32), v6);
  }

  return swift_deallocObject();
}

uint64_t sub_18C0F5CFC()
{
  type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListCellModifier();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  type metadata accessor for ForEach();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F5E94()
{
  type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListCellModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F5FBC()
{
  type metadata accessor for ListPicker();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _EnvironmentKeyTransformModifier<Font?>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for LabeledContent();
  type metadata accessor for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>(255, &lazy cache variable for type metadata for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>, lazy protocol witness table accessor for type AdaptiveLeadingTrailingLabeledContentStyle and conformance AdaptiveLeadingTrailingLabeledContentStyle, &type metadata for AdaptiveLeadingTrailingLabeledContentStyle, type metadata accessor for _LabeledContentStyleModifier);
  type metadata accessor for ModifiedContent();
  type metadata accessor for NavigationPickerButton.DetailView();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Font?> and conformance _EnvironmentKeyTransformModifier<A>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for NavigationLink();
  type metadata accessor for AccessibilityProxyTransformModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for ViewInputsBinding();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F62A4()
{
  v1 = *(v0 + 32);
  v6 = *(v0 + 40);
  v2 = (type metadata accessor for NavigationPickerButton.DetailView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 80) & ~*(*v2 + 80));

  v4 = type metadata accessor for Binding();
  (*(*(v1 - 8) + 8))(v3 + *(v4 + 32), v1);
  (*(*(v6 - 8) + 8))(v3 + v2[23]);
  outlined consume of Environment<DismissAction>.Content(*(v3 + v2[24]), *(v3 + v2[24] + 8), *(v3 + v2[24] + 16), *(v3 + v2[24] + 17));
  return swift_deallocObject();
}

uint64_t sub_18C0F6418()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 64) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_18C0F64B0()
{
  type metadata accessor for _BindingActionModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F6548()
{
  type metadata accessor for PickerContentView();
  swift_getWitnessTable();
  type metadata accessor for List();
  type metadata accessor for StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  type metadata accessor for ModifiedContent();
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  type metadata accessor for ModifiedContent();
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier>, lazy protocol witness table accessor for type ListPickerStyleIsGroupedPredicate and conformance ListPickerStyleIsGroupedPredicate);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>, lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AnyFormStyleContext> and conformance StyleContextAcceptsPredicate<A>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for PlatformItemListReader();
  type metadata accessor for StaticIf();
  lazy protocol witness table accessor for type ListPickerStyleIsGroupedPredicate and conformance ListPickerStyleIsGroupedPredicate();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F6900@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_18C0F696C()
{
  if (*(v0 + 16))
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_18C0F69B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModi, type metadata accessor for SwipeActionsModifier<AnyView?>, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18C0F6A58(uint64_t a1)
{
  type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModi, type metadata accessor for SwipeActionsModifier<AnyView?>, MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18C0F6B10()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    if (!*(v0 + 72))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(v0 + 72))
  {
LABEL_5:
  }

LABEL_6:

  return swift_deallocObject();
}

uint64_t sub_18C0F6B84()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  if (*(v0 + 112))
  {
  }

  outlined consume of Environment<Selector?>.Content(*(v0 + 128), *(v0 + 136));
  outlined consume of Environment<Selector?>.Content(*(v0 + 144), *(v0 + 152));
  outlined consume of Environment<Selector?>.Content(*(v0 + 160), *(v0 + 168));
  v1 = *(v0 + 251);
  if (v1 == 2)
  {

    if (*(v0 + 192))
    {
    }

    if (*(v0 + 248))
    {

      goto LABEL_15;
    }

    v2 = v0 + 208;
  }

  else if (v1 == 1)
  {

    if (*(v0 + 224))
    {
      goto LABEL_15;
    }

    v2 = v0 + 184;
  }

  else
  {
    if (*(v0 + 251))
    {
      goto LABEL_15;
    }

    v2 = v0 + 200;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_15:

  return swift_deallocObject();
}

uint64_t sub_18C0F6C8C()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0F6D30()
{
  type metadata accessor for BadgedViewStyleModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F6DA0()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t _s7SwiftUI22PlatformItemCollectionVwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of PlatformItemCollection.Storage(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t _s7SwiftUI22PlatformItemCollectionVSkAASk5index_8offsetBy5IndexQzAG_SitFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2, *v3, *(v3 + 8));
  *a3 = result;
  return result;
}

uint64_t _s7SwiftUI22PlatformItemCollectionVwta_0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of PlatformItemCollection.Storage(v5, v6);
  return a1;
}

uint64_t sub_18C0F6F6C()
{
  type metadata accessor for ViewDestinationNavigationDestinationModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F7000()
{
  type metadata accessor for ItemNavigationLinkModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F70A4()
{
  type metadata accessor for ViewDestinationNavigationDestinationModifier<EmptyView>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ViewDestinationNavigationDestinationModifier<EmptyView> and conformance ViewDestinationNavigationDestinationModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F7110()
{
  type metadata accessor for ItemNavigationLinkModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F71C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = EnvironmentValues.accessibilityQuickActionsEnabled.getter(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18C0F7218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = EnvironmentValues.accessibilityQuickActionsEnabled.getter(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18C0F7258()
{
  type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(255, &lazy cache variable for type metadata for StyleContextWriter<AccessibilityQuickActionStyleContext>, MEMORY[0x1E6980BE8], MEMORY[0x1E6980BE0], MEMORY[0x1E697F4C8]);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type StyleContextWriter<AccessibilityQuickActionStyleContext> and conformance StyleContextWriter<A>();
  swift_getWitnessTable();
  type metadata accessor for AccessibilityQuickActionModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F7348()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F7388()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F751C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F7554()
{
  type metadata accessor for KeyPressModifier(255);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F75C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyPress.Handler(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0F762C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyPress.Handler(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0F769C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for KeyPress.Handler.Subject(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18C0F7758(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for KeyPress.Handler.Subject(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18C0F7820()
{
  type metadata accessor for SystemTabView.BodyContent();

  return swift_getWitnessTable();
}

uint64_t sub_18C0F786C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Date?();
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
    v12 = *(a1 + *(a3 + 24) + 8);
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

void sub_18C0F793C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for Date?();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }
}

uint64_t sub_18C0F7A3C()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<TextInputValidation?>(255);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextInputValidation?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextInputValidation?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<TextInputValidation?>);
  return swift_getWitnessTable();
}

double sub_18C0F7AD8@<D0>(_OWORD *a1@<X8>)
{
  lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();
  PropertyList.subscript.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_18C0F7B78@<D0>(_OWORD *a1@<X8>)
{
  lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();
  PropertyList.subscript.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_18C0F7C8C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F7D04@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.textCase.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_18C0F7D80()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for HeaderFooterVisitor.HeaderContent() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  outlined consume of Environment<Selector?>.Content(*v3, *(v3 + 8));
  outlined consume of Environment<HeaderFooterConfiguration>.Content(*(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88));
  outlined consume of Environment<Selector?>.Content(*(v3 + 96), *(v3 + 104));
  (*(*(v1 - 8) + 8))(v3 + v2[18], v1);
  v4 = v3 + v2[19];
  v5 = *(v4 + 70);
  if (*(v4 + 70))
  {
    if (v5 == 1)
    {
      goto LABEL_7;
    }

    if (v5 != 2)
    {
      goto LABEL_8;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_7:

LABEL_8:

  return swift_deallocObject();
}

uint64_t sub_18C0F7F50()
{
  type metadata accessor for _EnvironmentKeyTransformModifier<Font?>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Text.Case?>, &lazy cache variable for type metadata for Text.Case?, MEMORY[0x1E6980FE8], MEMORY[0x1E6980B20]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, HeaderFooterVisitor.IOSMultiColumnModifier, HeaderFooterVisitor.LegacyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for [Sections.Item](255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<HeaderFooterConfiguration>, &type metadata for HeaderFooterConfiguration, MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Text.Case?> and conformance _EnvironmentKeyTransformModifier<A>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v2>, HeaderFooterVisitor.IOSMultiColumnModifier, HeaderFooterVisitor.LegacyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<HeaderFooterConfiguration> and conformance _EnvironmentKeyWritingModifier<A>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F8108()
{
  outlined consume of Environment<HeaderFooterConfiguration>.Content(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  outlined consume of Environment<Selector?>.Content(*(v0 + 96), *(v0 + 104));
  outlined consume of Environment<Selector?>.Content(*(v0 + 112), *(v0 + 120));

  return swift_deallocObject();
}

uint64_t sub_18C0F81D0()
{
  type metadata accessor for ResolvedDatePickerStyle(255);
  lazy protocol witness table accessor for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ResolvedDatePickerStyle and conformance ResolvedDatePickerStyle(&lazy protocol witness table cache variable for type ResolvedDatePickerStyle and conformance ResolvedDatePickerStyle, type metadata accessor for ResolvedDatePickerStyle);
  return swift_getWitnessTable();
}

uint64_t sub_18C0F830C()
{
  type metadata accessor for ChartDescriptorModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F83B8()
{
  if (*(v0 + 40))
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0F8514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TextSelection.Indices(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18C0F85CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TextSelection.Indices(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_18C0F8684()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<TextSelectionAffinity>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextSelectionAffinity> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextSelectionAffinity> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<TextSelectionAffinity>);
  return swift_getWitnessTable();
}

uint64_t sub_18C0F87AC()
{
  type metadata accessor for Optional();
  type metadata accessor for FocusedValueModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F8834()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for UIKitButtonAdaptor();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));
  outlined consume of Environment<Selector?>.Content(*(v3 + 16), *(v3 + 24));
  outlined consume of Environment<Color?>.Content(*(v3 + 32), *(v3 + 40));
  outlined consume of Environment<Selector?>.Content(*(v3 + 48), *(v3 + 56));
  outlined consume of Environment<Selector?>.Content(*(v3 + 64), *(v3 + 72));
  outlined consume of Environment<Selector?>.Content(*(v3 + 80), *(v3 + 88));
  outlined consume of Environment<Selector?>.Content(*(v3 + 96), *(v3 + 104));
  outlined consume of Environment<Selector?>.Content(*(v3 + 112), *(v3 + 120));
  if (*(v3 + 128))
  {
  }

  (*(*(v1 - 8) + 8))(v3 + *(v2 + 88), v1);
  if (*(v3 + *(v2 + 96)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0F89AC()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0F89E4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F8A54@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_18C0F8ACC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F8B8C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F8BD8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18C0F8C10()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_18C0F8C9C()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<(Color, Color)?>(255);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<(Color, Color)?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<(Color, Color)?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<(Color, Color)?>);
  return swift_getWitnessTable();
}

uint64_t sub_18C0F8D38()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0F8D80()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F8DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
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
    type metadata accessor for UICellConfigurationState?(0);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_18C0F8E70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    type metadata accessor for UICellConfigurationState?(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18C0F8F48()
{
  type metadata accessor for TableStyleModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F8FD0()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C0F9044()
{
  type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardShortcut?>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<KeyboardShortcut?> and conformance _EnvironmentKeyWritingModifier<A>();
  swift_getWitnessTable();
  type metadata accessor for ModifierKeyAlternateModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F917C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0F91BC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F91F4()
{
  if (*(v0 + 40) >= 5uLL)
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  if (*(v0 + 72) >= 3uLL)
  {
    outlined consume of Text.Storage(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  if (*(v0 + 104))
  {
    outlined consume of Text.Storage(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0F9294()
{
  type metadata accessor for StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content();
  lazy protocol witness table accessor for type StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ResolvedBadgedView and conformance ResolvedBadgedView();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F9378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for Binding<TextSelection?>?(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_18C0F9424(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    type metadata accessor for Binding<TextSelection?>?(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18C0F94C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextEditorStyleConfiguration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0F9534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextEditorStyleConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0F95B4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F95F0()
{
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  type metadata accessor for Binding<TextSelection?>(0);
  v7 = v6;
  v8 = *(*(v6 - 8) + 80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
    (*(*(v9 - 8) + 8))(v0 + v4, v9);
  }

  v10 = (v5 + v3 + v8) & ~v8;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
    (*(*(v11 - 8) + 8))(v0 + v5, v11);
  }

  v12 = *(v7 + 32);
  v13 = type metadata accessor for TextSelection(0);
  if (!(*(*(v13 - 8) + 48))(v0 + v10 + v12, 1, v13))
  {
    type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v14 - 8) + 8))(v0 + v10 + v12, v14);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_18C0F990C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F994C()
{
  type metadata accessor for GaugeStyleModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F99BC()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C0F9A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0F9A9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_18C0F9B1C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_18C0F9B28()
{
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F9BA8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F9BE0()
{
  lazy protocol witness table accessor for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type StepperBody and conformance StepperBody();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C0F9D10()
{
  outlined consume of Path.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_18C0F9D58()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility?>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnHeadersVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Visibility?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Visibility?>);
  return swift_getWitnessTable();
}

uint64_t _s7SwiftUI14FetchedResultsVyxGSlAASl5index_8offsetBy5IndexQzAH_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s7SwiftUI14FetchedResultsVyxGSlAASl5index_8offsetBy07limitedG05IndexQzSgAI_SiAItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69818](a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_18C0F9F00()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F9FEC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FetchRequest.Configuration();
  result = FetchRequest.Configuration<>.sortDescriptors.getter(v2);
  *a1 = result;
  return result;
}

uint64_t sub_18C0FA048@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FetchedResults();
  result = FetchedResults<>.sortDescriptors.getter(v2);
  *a1 = result;
  return result;
}

id sub_18C0FA0CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 completedUnitCount];
  *a2 = result;
  return result;
}

id sub_18C0FA114@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 totalUnitCount];
  *a2 = result;
  return result;
}

uint64_t sub_18C0FA1DC()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_18C0FA214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CombineIdentifier();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18C0FA2C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CombineIdentifier();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18C0FA374()
{
  v1 = type metadata accessor for NSProgress.UIStateSubscriber();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);

  if (*(v0 + v2 + 40))
  {
  }

  v3 = *(v1 + 20);
  v4 = type metadata accessor for CombineIdentifier();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_18C0FA4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FileImportOperation(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_18C0FA56C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FileImportOperation(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

unint64_t sub_18C0FA638@<X0>(uint64_t *a1@<X1>, _WORD *a2@<X8>)
{
  result = TabViewCustomization.subscript.getter(*a1, a1[1], &v4);
  *a2 = v4;
  return result;
}

uint64_t sub_18C0FA68C@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  result = TabViewCustomization.subscript.getter(*a1, a1[1], &v4);
  *a2 = v4;
  return result;
}

uint64_t sub_18C0FA6F8@<X0>(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  result = TabViewCustomization.subscript.getter(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_18C0FA73C@<X0>(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  result = TabViewCustomization.subscript.getter(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_18C0FA798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18C0FA854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18C0FA914()
{
  type metadata accessor for CoreInteractionRepresentableAdaptor();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18C0FA9AC()
{
  type metadata accessor for _PreferenceTransformModifier<NavigationTitleKey>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _PreferenceTransformModifier<NavigationTitleKey> and conformance _PreferenceTransformModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C0FAA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_18C0FAAF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 44);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18C0FAC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 88);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 72);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_18C0FAD00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 88) = (a2 - 1);
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 72);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18C0FADD4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18C0FAE0C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FAE44()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FAE7C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FB394()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FB3D4()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_18C0FB454()
{
  type metadata accessor for BadgedView();

  return swift_getWitnessTable();
}

uint64_t sub_18C0FB49C()
{
  type metadata accessor for BadgedView();

  return swift_getWitnessTable();
}

uint64_t sub_18C0FB4E8()
{
  type metadata accessor for _PreferenceWritingModifier<BadgePreferenceKey>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0FB554()
{
  type metadata accessor for _PreferenceWritingModifier<BadgePreferenceKey>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0FB5C4()
{
  type metadata accessor for ControlGroupStyleModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0FB684()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C0FB70C()
{
  v1 = *(v0 + 16);
  v8 = *(v0 + 24);
  v2 = type metadata accessor for LegacyNavigationLinkButton();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);
  v4 = v3 + *(v2 + 52);
  (*(*(v8 - 8) + 8))(v4, v8);
  v5 = type metadata accessor for NavigationDestinationPayload();
  v6 = v4 + v5[7];
  if (*(v6 + 24) >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  outlined consume of StateOrBinding<Bool>(*(v4 + v5[10]), *(v4 + v5[10] + 8), *(v4 + v5[10] + 16), *(v4 + v5[10] + 17));
  if (*(v4 + v5[11] + 8) != 1)
  {
    swift_weakDestroy();
  }

  return swift_deallocObject();
}

uint64_t sub_18C0FB8CC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FB90C()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for NavigationDestinationPayload();
  v3 = (*(*(v2 - 1) + 80) + 120) & ~*(*(v2 - 1) + 80);
  swift_weakDestroy();

  v4 = v0 + v3;
  (*(*(v1 - 8) + 8))(v0 + v3, v1);
  v5 = v0 + v3 + v2[7];
  if (*(v5 + 24) >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  outlined consume of StateOrBinding<Bool>(*(v4 + v2[10]), *(v4 + v2[10] + 8), *(v4 + v2[10] + 16), *(v4 + v2[10] + 17));
  if (*(v4 + v2[11] + 8) != 1)
  {
    swift_weakDestroy();
  }

  return swift_deallocObject();
}

uint64_t sub_18C0FBA74()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for NavigationDestinationPayload();
  v3 = (*(*(v2 - 1) + 80) + 177) & ~*(*(v2 - 1) + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  v4 = v0 + v3;
  (*(*(v1 - 8) + 8))(v0 + v3, v1);
  v5 = v0 + v3 + v2[7];
  if (*(v5 + 24) >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  outlined consume of StateOrBinding<Bool>(*(v4 + v2[10]), *(v4 + v2[10] + 8), *(v4 + v2[10] + 16), *(v4 + v2[10] + 17));
  if (*(v4 + v2[11] + 8) != 1)
  {
    swift_weakDestroy();
  }

  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18C0FBBE8()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for NavigationDestinationPayload();
  v3 = (*(*(v2 - 1) + 80) + 168) & ~*(*(v2 - 1) + 80);
  swift_weakDestroy();

  v4 = v0 + v3;
  (*(*(v1 - 8) + 8))(v0 + v3, v1);
  v5 = v0 + v3 + v2[7];
  if (*(v5 + 24) >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  outlined consume of StateOrBinding<Bool>(*(v4 + v2[10]), *(v4 + v2[10] + 8), *(v4 + v2[10] + 16), *(v4 + v2[10] + 17));
  if (*(v4 + v2[11] + 8) != 1)
  {
    swift_weakDestroy();
  }

  return swift_deallocObject();
}

uint64_t sub_18C0FBD44()
{
  lazy protocol witness table accessor for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  type metadata accessor for LegacyNavigationLinkModifier();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ResolvedNavigationLink and conformance ResolvedNavigationLink();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C0FBE40()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardShortcut?>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ViewInputFlagModifier<HasKeyboardShortcut>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>, &type metadata for KeyboardShortcutPickerOptionTraitKey, &protocol witness table for KeyboardShortcutPickerOptionTraitKey, MEMORY[0x1E697FDB8]);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ViewInputFlagModifier<HasKeyboardShortcut> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<KeyboardShortcut?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardShortcut?>);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ViewInputFlagModifier<HasKeyboardShortcut> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<HasKeyboardShortcut> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<HasKeyboardShortcut>);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C0FC044()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FC0C0()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FC11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18C0FC1C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18C0FC26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_18C0FC2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_18C0FC410()
{
  _ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_18C0FC530()
{

  return swift_deallocObject();
}

void *_s7SwiftUI21TextFormattingControlVwcp_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = *(a2 + 16);
  v5 = v3;
  v6 = v4;
  return a1;
}

uint64_t sub_18C0FC5C8()
{
  outlined consume of Environment<Binding<Visibility>?>.Content(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 33));

  return swift_deallocObject();
}

uint64_t sub_18C0FC608@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.effectiveTintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18C0FC68C()
{
  type metadata accessor for PrintedViewModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for FocusedValueModifier<Bool?>();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C0FC760()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  swift_weakDestroy();

  outlined consume of Environment<Selector?>.Content(*(v0 + 144), *(v0 + 152));

  return swift_deallocObject();
}

uint64_t sub_18C0FC7E4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityPrefersCrossFadeTransitions.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18C0FC890()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 488);
  if (v1 == 2)
  {

    v3 = *(v0 + 64);
    if (v3)
    {
      if (v3 == 1)
      {
        goto LABEL_35;
      }
    }

    if (*(v0 + 80))
    {
    }

    if (*(v0 + 104))
    {

LABEL_34:
    }
  }

  else if (v1 == 1)
  {
    if (*(v0 + 88))
    {
    }

    if (*(v0 + 144))
    {
    }

    v2 = *(v0 + 248);
    if (*(v0 + 280))
    {
      if (v2 != 255)
      {
        if (v2)
        {

          if (*(v0 + 192))
          {
            __swift_destroy_boxed_opaque_existential_1(v0 + 168);
          }

          if (*(v0 + 216) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v0 + 160);
        }
      }
    }

    else
    {
      if (v2 != 255)
      {
        if (v2)
        {

          if (*(v0 + 192))
          {
            __swift_destroy_boxed_opaque_existential_1(v0 + 168);
          }

          if (*(v0 + 216) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v0 + 160);
        }
      }
    }

    if (*(v0 + 400))
    {

      goto LABEL_34;
    }
  }

LABEL_35:
  swift_weakDestroy();

  outlined consume of Environment<Selector?>.Content(*(v0 + 552), *(v0 + 560));
  outlined consume of Environment<NSManagedObjectContext>.Content(*(v0 + 568), *(v0 + 576));

  return swift_deallocObject();
}

uint64_t sub_18C0FCBC0()
{

  v1 = *(v0 + 56);
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_7;
    }

    outlined consume of Text.Storage(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  }

  if (*(v0 + 64) != 1)
  {
  }

LABEL_7:

  return swift_deallocObject();
}

uint64_t sub_18C0FCC34()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FCCB8@<X0>(_BYTE *a1@<X8>)
{
  result = Transaction.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_18C0FCD58()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_18C0FCDD8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FCE10()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FCE58()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18C0FCE90()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FCEC8()
{

  return swift_deallocObject();
}

__n128 sub_18C0FCF54(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_18C0FCFE0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0FCFEC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FD028()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type MatchedTransitionSourceModifier and conformance MatchedTransitionSourceModifier();
  return swift_getWitnessTable();
}

void _sSo11UITextFieldC7SwiftUI20UIKitTextInputTraitsA2cDP02uiF11ContentTypeSo0ajK0aSgvsTW_0(void *a1)
{
  [v1 setTextContentType_];
}

id _sSo11UITextFieldC7SwiftUI14UIKitTextInputA2cDP012uiAttributedF0So18NSAttributedStringCSgvgTW_0()
{
  v1 = [v0 attributedText];

  return v1;
}

id _sSo11UITextFieldC7SwiftUI14UIKitTextInputA2cDP02uiG13AccessoryViewSo6UIViewCSgvgTW_0()
{
  v1 = [v0 inputAccessoryView];

  return v1;
}

void _sSo11UITextFieldC7SwiftUI14UIKitTextInputA2cDP02uiG13AccessoryViewSo6UIViewCSgvsTW_0(void *a1)
{
  [v1 setInputAccessoryView_];
}

uint64_t sub_18C0FD270()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0FD2A8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FD2E8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FD32C()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for AllowsIncompleteEventSequences();
  swift_getWitnessTable();
  type metadata accessor for ModifierGesture();
  return swift_getWitnessTable();
}

uint64_t sub_18C0FD3DC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0FD474(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0FD528()
{
  lazy protocol witness table accessor for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ResolvedNavigationViewStyle and conformance ResolvedNavigationViewStyle();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type NavigationCommonModifier and conformance NavigationCommonModifier();
  return swift_getWitnessTable();
}

uint64_t sub_18C0FD61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for ArchivableScrapedItem.Content(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_18C0FD694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for ArchivableScrapedItem.Content(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_18C0FD740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0FD7AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0FD81C()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 64) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_18C0FD89C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FD8DC()
{
  if (*(v0 + 184) == 1)
  {
  }

  else if (!*(v0 + 184))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);

    if (*(v0 + 136))
    {
    }

    if (*(v0 + 176))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 152);
    }
  }

  return swift_deallocObject();
}

__n128 sub_18C0FD9FC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0FDA6C()
{
  type metadata accessor for AccessibilityFocusStoreListModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0FDADC()
{
  type metadata accessor for AccessibilityFocusBindingModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C0FDB70()
{
  type metadata accessor for AccessibilityFocusBindingModifier<Bool>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type AccessibilityFocusBindingModifier<Bool> and conformance AccessibilityFocusBindingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C0FDCD0()
{
  type metadata accessor for GroupBoxStyleModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0FDD88()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C0FDDFC()
{
  type metadata accessor for WrappedButtonStyle();
  swift_getWitnessTable();
  type metadata accessor for ButtonStyleModifier();
  swift_getWitnessTable();
  type metadata accessor for AutomaticStyleOverrideModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C0FDEF8()
{
  type metadata accessor for ButtonStyleModifier();
  swift_getWitnessTable();
  type metadata accessor for AutomaticStyleOverrideModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C0FDFCC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.defaultForegroundStyle.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18C0FE034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = MEMORY[0x18D0065B0](a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18C0FE09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18C0FE158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_18C0FE218()
{
  v1 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  type metadata accessor for ButtonAction();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v2, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined consume of Environment<OpenURLAction>.Content(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 34));
      outlined consume of Environment<OpenURLAction>.Content(*(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 74));
      v4 = *(type metadata accessor for LinkDestination() + 24);
      v5 = type metadata accessor for URL();
      (*(*(v5 - 8) + 8))(v2 + v4, v5);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }
  }

LABEL_8:

  return swift_deallocObject();
}

uint64_t sub_18C0FE38C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundStyle.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18C0FE448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0FE4B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0FE5A0()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FE67C()
{
  lazy protocol witness table accessor for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _TraitWritingModifier<SectionActionsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<SectionActionsTraitKey>, &type metadata for SectionActionsTraitKey, &protocol witness table for SectionActionsTraitKey, MEMORY[0x1E697FDB8]);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _TraitWritingModifier<SectionActionsTraitKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable();
}

void _s7SwiftUI14_UIHostingViewC29accessibilityBooleanDidChange33_FAF0B683EB49BE9BABC9009857940A1ELLyySo14NSNotificationCFTo_0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  _UIHostingView.focusedValues.didset();
}

uint64_t sub_18C0FE86C()
{
  v1 = *(v0 + 16);
  if (v1 != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0FE8AC()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0FE8F4@<X0>(uint64_t *a1@<X8>)
{
  result = _UIHostingView.safeAreaRegions.getter();
  *a1 = result;
  return result;
}

__n128 sub_18C0FE954(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0FE960@<X0>(_BYTE *a1@<X8>)
{
  result = _UIHostingView.accessibilityEnabled.getter();
  *a1 = result & 1;
  return result;
}

double sub_18C0FE9C4@<D0>(uint64_t a1@<X8>)
{
  _UIHostingView._rendererConfiguration.getter();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_18C0FEA7C@<X0>(_BYTE *a1@<X8>)
{
  result = _UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18C0FEAE0@<X0>(_BYTE *a1@<X8>)
{
  result = _UIHostingView.addsKeyboardToSafeAreaInsets.getter();
  *a1 = result & 1;
  return result;
}

double sub_18C0FEB44@<D0>(_OWORD *a1@<X8>)
{
  _UIHostingView.environmentOverride.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_18C0FEB80(void *a1)
{
  v1 = a1[1];
  *&v3 = *a1;
  *(&v3 + 1) = v1;
  outlined copy of EnvironmentValues?(v3);
  return _UIHostingView.environmentOverride.setter(&v3);
}

uint64_t sub_18C0FEBD0@<X0>(_BYTE *a1@<X8>)
{
  result = _UIHostingView.isHiddenForReuse.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18C0FEC34()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FECA0()
{
  type metadata accessor for _PreferenceWritingModifier<ExtendedLaunchTestNameKey>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0FED24@<X0>(_BYTE *a1@<X8>)
{
  result = UIHostingController.centersRootView.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_18C0FED88(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0FED94@<X0>(_BYTE *a1@<X8>)
{
  result = UIHostingController.isHiddenForReuse.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18C0FEE4C@<X0>(void *a1@<X8>)
{
  result = UIHostingController.sizingOptions.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_18C0FEECC@<X0>(_BYTE *a1@<X8>)
{
  result = UIHostingController._disableSafeArea.getter();
  *a1 = result & 1;
  return result;
}

double sub_18C0FEF30@<D0>(uint64_t a1@<X8>)
{
  UIHostingController._rendererConfiguration.getter();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_18C0FEF94()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t _s7SwiftUI7ForEachVA2A15TableRowContentR0_rlE011SynthesizedcdF3IDs33_A17C426D23F0B43C60B49C06279CF203LLVyxq_q0__GSlAASl5index_8offsetBy5IndexQzAL_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s7SwiftUI7ForEachVA2A15TableRowContentR0_rlE011SynthesizedcdF3IDs33_A17C426D23F0B43C60B49C06279CF203LLVyxq_q0__GSlAASl5index_8offsetBy07limitedU05IndexQzSgAM_SiAMtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69818](a1, a2, a3, a4, WitnessTable);
}

uint64_t _s7SwiftUI7ForEachVA2A15TableRowContentR0_rlE011SynthesizedcdF3IDs33_A17C426D23F0B43C60B49C06279CF203LLVyxq_q0__GSlAASl8distance4from2toSi5IndexQz_AMtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_18C0FF160()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI7ForEachVyxq_q0_GAA24PrimitiveTableRowContentA2A0fgH0R0_rlWI_0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 sub_18C0FF1F8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_18C0FF250()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FF288()
{

  return swift_deallocObject();
}

void *_s7SwiftUI18PresentationDetentV7ContextVwcp_0(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t sub_18C0FF358()
{
  type metadata accessor for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>, &type metadata for PresentationOptionsPreferenceKey, &protocol witness table for PresentationOptionsPreferenceKey, MEMORY[0x1E6980910]);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _PreferenceTransformModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceTransformModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C0FF3F8()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool?> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable();
}

void *_s7SwiftUI27PresentationDimmingBehaviorOwcp_0(void *result, void **a2)
{
  v2 = *a2;
  if (*a2 >= 0xFFFFFFFF)
  {
    v3 = result;
    v4 = v2;
    result = v3;
  }

  *result = v2;
  return result;
}

uint64_t sub_18C0FF4E8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FF52C()
{
  type metadata accessor for ModifiedTabContent();
  lazy protocol witness table accessor for type TabPlacementModifier and conformance TabPlacementModifier();
  return swift_getWitnessTable();
}

uint64_t sub_18C0FF5A0()
{
  type metadata accessor for _ViewModifier_Content<TabPlacementModifier>();
  lazy protocol witness table accessor for type _ViewModifier_Content<TabPlacementModifier> and conformance _ViewModifier_Content<A>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18C0FF61C()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<ButtonRepeatBehavior>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ViewInputFlagModifier<ButtonRepeatBehavior.HasCustomRepeatBehavior>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ButtonRepeatBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ButtonRepeatBehavior> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<ButtonRepeatBehavior>);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ButtonRepeatBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<ButtonRepeatBehavior.HasCustomRepeatBehavior> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<ButtonRepeatBehavior.HasCustomRepeatBehavior>);
  return swift_getWitnessTable();
}

uint64_t sub_18C0FF774@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @callee_guaranteed () -> ();
  a2[1] = v5;
}

uint64_t sub_18C0FF7F0()
{
  type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(255, &lazy cache variable for type metadata for ButtonActionModifier<_ButtonGesture>, &type metadata for _ButtonGesture, &protocol witness table for _ButtonGesture, type metadata accessor for ButtonActionModifier);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0FF888()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat?>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat?>);
  return swift_getWitnessTable();
}

uint64_t sub_18C0FF928()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0FF968()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0FFA08()
{
  if (*(v0 + 32) != 255)
  {
    outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
  }

  return swift_deallocObject();
}

uint64_t sub_18C0FFA58()
{
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
  if (*(v0 + 56) != 255)
  {
    outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
  }

  return swift_deallocObject();
}

uint64_t sub_18C0FFAF4()
{
  type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>();
  lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18C0FFBF0()
{
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  type metadata accessor for TextSelection?(0);
  v5 = (v2 + v3 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v6 = v0 + v2;

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_4(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v8 = *(v7 + 32);
  v9 = type metadata accessor for TextSelection(0);
  v10 = *(*(v9 - 8) + 48);
  if (!v10(v6 + v8, 1, v9))
  {
    type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SwiftUI15SelectionRangesOySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E7BE0]);
      (*(*(v11 - 8) + 8))(v6 + v8, v11);
    }
  }

  if (!v10(v0 + v5, 1, v9))
  {
    type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SwiftUI15SelectionRangesOySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E7BE0]);
      (*(*(v12 - 8) + 8))(v0 + v5, v12);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_18C0FFEAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFieldConfiguration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0FFF18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFieldConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0FFF88()
{
  v1 = *(type metadata accessor for UIKitSearchFieldAdaptor(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  type metadata accessor for Binding<SearchFieldState>(0);
  v4 = *(v3 + 32);
  v5 = v4 + *(type metadata accessor for SearchFieldState(0) + 36);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  v7 = type metadata accessor for SearchFieldConfiguration(0);
  v8 = v2 + *(v7 + 24);
  v9 = *(v8 + 8);
  if (v9 != 255)
  {
    outlined consume of PlatformItemCollection.Storage(*v8, v9 & 1);
  }

  outlined consume of Text.Storage(*(v2 + *(v7 + 32)), *(v2 + *(v7 + 32) + 8), *(v2 + *(v7 + 32) + 16));

  return swift_deallocObject();
}

uint64_t sub_18C1000D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_18C1001A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for Binding<SearchFieldState>(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }
}

uint64_t sub_18C1002B4()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C1002F4()
{
  type metadata accessor for ModifierGesture<MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, EventListener<PhysicalButtonEvent>>();
  _s7SwiftUI13_EndedGestureVyAA019PhysicalButtonPressD0VGACyxGAA0D0AAWlTm_0(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, EventListener<PhysicalButtonEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, EventListener<PhysicalButtonEvent>>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18C100398()
{

  return swift_deallocObject();
}

uint64_t sub_18C1003D0()
{

  return swift_deallocObject();
}

uint64_t sub_18C100408()
{
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  type metadata accessor for ModifiedContent();
  _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_2(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>);
  swift_getWitnessTable();
  type metadata accessor for SelectionMenuModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for SelectionActionModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C100564()
{
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  type metadata accessor for ModifiedContent();
  _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_2(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>);
  swift_getWitnessTable();
  type metadata accessor for SelectionMenuModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

__n128 sub_18C1006CC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C1006D8()
{

  return swift_deallocObject();
}

uint64_t sub_18C100724()
{
  type metadata accessor for SelectionMenuModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for SelectionMenuModifierCore();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  return swift_getWitnessTable();
}

uint64_t sub_18C100854()
{

  return swift_deallocObject();
}

uint64_t sub_18C1008C8()
{
  type metadata accessor for NavigationLinkStyleModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C100940()
{
  type metadata accessor for GestureRecognizerModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C1009B0()
{
  type metadata accessor for MenuButtonStyleWriter();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C100A20()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<ControlSize>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, MEMORY[0x1E697DC38], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C100AB8()
{

  return swift_deallocObject();
}

uint64_t sub_18C100AF0()
{

  return swift_deallocObject();
}

uint64_t sub_18C100B50()
{

  return swift_deallocObject();
}

uint64_t sub_18C100BF4()
{
  type metadata accessor for _PreferenceWritingModifier<FileExportOperation.Key>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _PreferenceWritingModifier<FileExportOperation.Key> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type _PreferenceWritingModifier<FileExportOperation.Key> and conformance _PreferenceWritingModifier<A>, type metadata accessor for _PreferenceWritingModifier<FileExportOperation.Key>);
  return swift_getWitnessTable();
}

uint64_t sub_18C100C90()
{
  type metadata accessor for FileDialogConfiguration<FileExportOperation.Key, FileExportOperation>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _PreferenceWritingModifier<FileExportOperation.Key> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type FileDialogConfiguration<FileExportOperation.Key, FileExportOperation> and conformance FileDialogConfiguration<A, B>, type metadata accessor for FileDialogConfiguration<FileExportOperation.Key, FileExportOperation>);
  return swift_getWitnessTable();
}

uint64_t sub_18C100D3C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C100D74()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_18C100DC4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DatePickerStyleConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>, MEMORY[0x1E6969770], MEMORY[0x1E697DCC0]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC0]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCC0]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_18C100FDC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for DatePickerStyleConfiguration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>, MEMORY[0x1E6969770], MEMORY[0x1E697DCC0]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC0]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCC0]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_18C101200(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DatePickerStyleConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Locale();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for Calendar();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = type metadata accessor for TimeZone();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_18C101388(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for DatePickerStyleConfiguration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Locale();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = type metadata accessor for Calendar();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = type metadata accessor for TimeZone();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_18C10154C()
{
  type metadata accessor for UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>();
  type metadata accessor for UIKitButtonStyleModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C1015DC()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C101680()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C1016C0()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    outlined consume of Result<(), Error>(*(v0 + 16), v1 & 1);
  }

  return swift_deallocObject();
}

uint64_t sub_18C101718()
{

  return swift_deallocObject();
}

uint64_t sub_18C101758()
{

  return swift_deallocObject();
}

__n128 sub_18C1017A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C1017B0()
{
  if (*(v0 + 184) == 1)
  {
  }

  else if (!*(v0 + 184))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);

    if (*(v0 + 136))
    {
    }

    if (*(v0 + 176))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 152);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_18C101840()
{
  type metadata accessor for ItemNavigationLinkModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>, &type metadata for NavigationDestinationsKey, &protocol witness table for NavigationDestinationsKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  type metadata accessor for ModifiedContent();
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>(255, &lazy cache variable for type metadata for RelationshipModifier<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], type metadata accessor for RelationshipModifier);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C101A48()
{
  type metadata accessor for Binding<ScrollPosition>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ScrollAnchorStorage>, MEMORY[0x1E697F798], MEMORY[0x1E6980B20]);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollAnchorStorage> and conformance _EnvironmentKeyTransformModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C101AD8()
{
  type metadata accessor for TabViewCustomizationModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C101B44(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<TabViewCustomization>?(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C101BB0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<TabViewCustomization>?(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C101C20@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *a1;
  result = EnvironmentValues.focusEffect.getter(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_18C101DB8()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ViewInputFlagModifier<LabelVisibilityConfigured>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<LabelVisibilityConfigured> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<LabelVisibilityConfigured>);
  return swift_getWitnessTable();
}

uint64_t sub_18C101EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18C101FA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = a2 + 2;
  }

  return result;
}

uint64_t sub_18C102064()
{
  if (*(v0 + 64) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_18C1020A8()
{

  return swift_deallocObject();
}

uint64_t sub_18C1020E8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.backgroundProminence.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_18C102164@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.appearsActive.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18C1021D8()
{
  type metadata accessor for HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>();
  lazy protocol witness table accessor for type _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule> and conformance _InsettableBackgroundShapeModifier<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18C102260()
{
  type metadata accessor for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, type metadata accessor for Font?, MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _TraitWritingModifier<LayoutPriorityTraitKey>(255, &lazy cache variable for type metadata for _ForegroundStyleModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980480]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule> and conformance _InsettableBackgroundShapeModifier<A, B>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule> and conformance _InsettableBackgroundShapeModifier<A, B>, type metadata accessor for _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule>);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C1024B4()
{

  return swift_deallocObject();
}

uint64_t sub_18C102508()
{
  type metadata accessor for ContextMenuPreviewModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ContextMenuPreviewModifierCore();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>, type metadata accessor for _SemanticFeature<Semantics_v5>);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>, type metadata accessor for InvertedViewInputPredicate<IsSharingPickerHost>);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  return swift_getWitnessTable();
}

uint64_t sub_18C102744()
{
  type metadata accessor for ContextMenuPreviewDestinationModifier.Transform();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ContextMenuPreviewModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for UpdateViewDestinationViewModifier();
  type metadata accessor for UpdateViewDestinationRequestProcessor();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C102920()
{

  return swift_deallocObject();
}

uint64_t sub_18C102958()
{

  return swift_deallocObject();
}

uint64_t sub_18C102A04()
{
  type metadata accessor for ModifiedCompositorContent();
  lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier();
  return swift_getWitnessTable();
}

uint64_t sub_18C102ACC()
{
  type metadata accessor for _ValueActionModifier2();
  type metadata accessor for ModifiedCompositorContent();
  type metadata accessor for ModifiedCompositorContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C102B98()
{
  type metadata accessor for ViewInputFlagModifier<AccessibilityShowsLabelIcon>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for PlatformItemTraitWriter();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C102D7C()
{
  type metadata accessor for _PreferenceWritingModifier<ToolbarRoleKey>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _PreferenceWritingModifier<ToolbarRoleKey> and conformance _PreferenceWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C102DE8()
{

  return swift_deallocObject();
}

uint64_t sub_18C102E28()
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>>, _AnimationModifier<Bool>>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>>, _AnimationModifier<Bool>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18C102ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackButton.Configuration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C102F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackButton.Configuration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C102FA8()
{
  type metadata accessor for ViewInputFlagModifier<MenuItemSupportsAttributedTitle>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ViewInputFlagModifier<MenuItemSupportsAttributedTitle> and conformance ViewInputFlagModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C103020()
{
  type metadata accessor for FileDialogConfiguration<FileExportOperation.Key, FileExportOperation>();
  type metadata accessor for ModifiedContent();
  _s22UniformTypeIdentifiers6UTTypeVACSQAAWlTm_0(&lazy protocol witness table cache variable for type FileDialogConfiguration<FileExportOperation.Key, FileExportOperation> and conformance FileDialogConfiguration<A, B>, type metadata accessor for FileDialogConfiguration<FileExportOperation.Key, FileExportOperation>);
  return swift_getWitnessTable();
}

uint64_t sub_18C103150()
{
  type metadata accessor for _TraitWritingModifier<NavigationSplitViewExtraWidePrimaryColumnTraitKey>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _TraitWritingModifier<NavigationSplitViewExtraWidePrimaryColumnTraitKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C1031C0@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.defaultPadding.getter();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_18C10322C()
{
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _BackgroundModifier<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _BackgroundModifier<ModifiedContent<ModifiedContent<ModifiedContent<Color, _PaddingLayout>, _FrameLayout>, _AlignmentLayout>>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ContentShapeModifier<Rectangle>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AddGestureModifier<_ButtonGesture, DefaultGestureCombiner>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  _s7SwiftUI5StateVySbGMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<EdgeInsets>, MEMORY[0x1E697DA60], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _BackgroundModifier<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>> and conformance _BackgroundModifier<A>, type metadata accessor for _BackgroundModifier<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>>);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _BackgroundModifier<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<ModifiedContent<ModifiedContent<Color, _PaddingLayout>, _FrameLayout>, _AlignmentLayout>> and conformance _BackgroundModifier<A>, type metadata accessor for _BackgroundModifier<ModifiedContent<ModifiedContent<ModifiedContent<Color, _PaddingLayout>, _FrameLayout>, _AlignmentLayout>>);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _BackgroundModifier<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, type metadata accessor for _ContentShapeModifier<Rectangle>);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _BackgroundModifier<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type AddGestureModifier<_ButtonGesture, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>, type metadata accessor for AddGestureModifier<_ButtonGesture, DefaultGestureCombiner>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<EdgeInsets> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C103540()
{
  v5 = *(v0 + 16);
  v1 = type metadata accessor for DocumentLaunchView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80));

  (*(*(v5 - 8) + 8))(v2 + v1[13]);

  if (*(v2 + v1[15]))
  {
  }

  v3 = v2 + v1[16];
  if (*(v3 + 24))
  {
    outlined consume of Text.Storage(*v3, *(v3 + 8), *(v3 + 16));
  }

  if (*(v2 + v1[18]))
  {
  }

  if (*(v2 + v1[19]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C1036C4()
{
  type metadata accessor for ResolvedDocumentLaunchView();
  type metadata accessor for _EnvironmentKeyWritingModifier<BackgroundContext>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<BackgroundContext> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<BackgroundContext> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<BackgroundContext>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type NavigationCommonModifier and conformance NavigationCommonModifier();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<BackgroundContext> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>, type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>);
  swift_getWitnessTable();
  type metadata accessor for PlatformItemsReader();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  type metadata accessor for _BackgroundModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C103948()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C103980()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C103A44()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C103A7C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18C103ACC()
{
  v1 = type metadata accessor for UTType();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_18C103B54()
{

  return swift_deallocObject();
}

uint64_t sub_18C103BCC()
{
  lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  type metadata accessor for _ShapeView();
  return swift_getWitnessTable();
}

uint64_t sub_18C103C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = MEMORY[0x18D0060E0](a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18C103C98()
{

  return swift_deallocObject();
}

uint64_t sub_18C103D30()
{
  type metadata accessor for PlatformItemListBadge();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C103DA0()
{
  v1 = v0[6];
  if (v1 >> 1 != 0xFFFFFFFF)
  {
    outlined consume of BadgeLabel(v0[4], v0[5], v1);
  }

  return swift_deallocObject();
}

uint64_t sub_18C103E08()
{
  type metadata accessor for _PreferenceWritingModifier<OrnamentBillboardingBehavior.Key>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<InteractiveDismissDisabledKey>);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _PreferenceWritingModifier<OrnamentBillboardingBehavior.Key> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type _PreferenceWritingModifier<InteractiveDismissDisabledKey> and conformance _PreferenceWritingModifier<A>, &lazy cache variable for type metadata for _PreferenceWritingModifier<InteractiveDismissDisabledKey>);
  return swift_getWitnessTable();
}

uint64_t sub_18C103EBC()
{
  type metadata accessor for _PreferenceWritingModifier<OrnamentBillboardingBehavior.Key>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<InteractiveDismissDisabledKey>);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceWritingModifier<OrnamentBillboardingBehavior.Key>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<InteractiveDismissAttemptKey>);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _PreferenceWritingModifier<OrnamentBillboardingBehavior.Key> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type _PreferenceWritingModifier<InteractiveDismissDisabledKey> and conformance _PreferenceWritingModifier<A>, &lazy cache variable for type metadata for _PreferenceWritingModifier<InteractiveDismissDisabledKey>);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _PreferenceWritingModifier<OrnamentBillboardingBehavior.Key> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type _PreferenceWritingModifier<InteractiveDismissAttemptKey> and conformance _PreferenceWritingModifier<A>, &lazy cache variable for type metadata for _PreferenceWritingModifier<InteractiveDismissAttemptKey>);
  return swift_getWitnessTable();
}

uint64_t _s7SwiftUI21SectionedFetchResultsV7SectionVyxq__GSlAASl5index_8offsetBy5IndexQzAJ_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s7SwiftUI21SectionedFetchResultsV7SectionVyxq__GSlAASl5index_8offsetBy07limitedI05IndexQzSgAK_SiAKtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69818](a1, a2, a3, a4, WitnessTable);
}

uint64_t _s7SwiftUI21SectionedFetchResultsV7SectionVyxq__GSlAASl8distance4from2toSi5IndexQz_AKtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s7SwiftUI21SectionedFetchResultsVyxq_GSlAASl5index_8offsetBy5IndexQzAH_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s7SwiftUI21SectionedFetchResultsVyxq_GSlAASl5index_8offsetBy07limitedH05IndexQzSgAI_SiAItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69818](a1, a2, a3, a4, WitnessTable);
}

uint64_t _s7SwiftUI21SectionedFetchResultsVyxq_GSlAASl8distance4from2toSi5IndexQz_AItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_18C1042F8()
{

  return swift_deallocObject();
}

uint64_t sub_18C104340()
{

  return swift_deallocObject();
}

uint64_t sub_18C104378()
{

  return swift_deallocObject();
}

__n128 sub_18C1043CC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

void *_s7SwiftUI19BridgedPresentationV11ContentHostOwcp_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of BridgedPresentation.ContentHost(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t sub_18C1044E4()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_18C104570()
{
  v1 = *(v0 + 16);
  if (v1 != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C1045D8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_18C104618()
{

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  }

  v1 = *(v0 + 112);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    outlined consume of BridgedPresentation.ContentHost(*(v0 + 104), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_18C104688()
{

  return swift_deallocObject();
}

uint64_t sub_18C1046C8()
{

  return swift_deallocObject();
}

uint64_t sub_18C104710()
{
  MEMORY[0x18D011290](v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_18C104760()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18C104798()
{

  return swift_deallocObject();
}

uint64_t sub_18C1047D0()
{

  return swift_deallocObject();
}

uint64_t sub_18C104818()
{
  MEMORY[0x18D011290](v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_18C104878()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C1048B4()
{

  return swift_deallocObject();
}

id sub_18C1048FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredPrimaryColumnWidthFraction];
  *a2 = v4;
  return result;
}

id sub_18C104944@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredSupplementaryColumnWidthFraction];
  *a2 = v4;
  return result;
}

uint64_t sub_18C104998()
{

  return swift_deallocObject();
}

uint64_t sub_18C1049E8()
{
  type metadata accessor for _LabeledContentStyleModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C104A68()
{

  return swift_deallocObject();
}

uint64_t sub_18C104AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFieldConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C104B1C()
{
  v1 = *(v0 + 48);
  if (v1 >> 2 != 0xFFFFFFFF)
  {
    outlined consume of PlatformItemList.Item.SystemItem(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1, *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  }

  return swift_deallocObject();
}

uint64_t sub_18C104BA0()
{
  type metadata accessor for AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>(&lazy protocol witness table cache variable for type AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>, type metadata accessor for AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner>);
  return swift_getWitnessTable();
}

uint64_t sub_18C104C3C()
{
  type metadata accessor for AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>(&lazy protocol witness table cache variable for type AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>, type metadata accessor for AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner>);
  return swift_getWitnessTable();
}

uint64_t sub_18C104CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_18C104DA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_18C104E68()
{

  return swift_deallocObject();
}

uint64_t sub_18C104EA0()
{
  type metadata accessor for _EnvironmentKeyTransformModifier<String?>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<String?> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<String?> and conformance _EnvironmentKeyTransformModifier<A>, type metadata accessor for _EnvironmentKeyTransformModifier<String?>);
  return swift_getWitnessTable();
}

uint64_t sub_18C104F3C(uint64_t a1)
{
  type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18C104F9C()
{
  outlined consume of SceneList.Namespace(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_18C104FE0()
{
  type metadata accessor for OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf();
  lazy protocol witness table accessor for type OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>> and conformance OrOperationViewInputPredicate<A, B>();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C105114()
{
  type metadata accessor for OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf();
  lazy protocol witness table accessor for type OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>> and conformance OrOperationViewInputPredicate<A, B>();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C1051DC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C105228()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for RenameButton() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  (*(*(v1 - 8) + 8))(v3, v1);
  outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(*(v3 + v2[11]), *(v3 + v2[11] + 8), *(v3 + v2[11] + 16));
  outlined consume of Environment<Selector?>.Content(*(v3 + v2[12]), *(v3 + v2[12] + 8));

  return swift_deallocObject();
}

uint64_t sub_18C105334()
{

  return swift_deallocObject();
}

uint64_t sub_18C105374()
{
  type metadata accessor for Button();
  type metadata accessor for _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>, &type metadata for SelectionPlatformItemListFlags, &protocol witness table for SelectionPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C1054A0()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<RenameAction?>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<RenameAction?> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C10550C()
{
  _ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_18C10563C()
{
  v1 = *(type metadata accessor for BindingStorage(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v29 = type metadata accessor for AttributedTextSelection(0);
  v28 = (v6 + v7 + *(*(v29 - 8) + 80)) & ~*(*(v29 - 8) + 80);
  type metadata accessor for BindingStorage.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  _s7SwiftUI21ExclusivelyAccessibleVyAA21AttributedTextStorageVyAA08Platformf10ViewEditorG0VGGMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v10 = *(v5 + 8);
  v10(v0 + v2 + *(v9 + 32), v4);
  if (EnumCaseMultiPayload == 1)
  {
    _s7SwiftUI7BindingVy10Foundation16AttributedStringVG_ACyAA0E13TextSelectionVGtMaTm_0(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), &lazy cache variable for type metadata for MutableBox<AttributedTextSelection>, MEMORY[0x1E697DAC0]);
  }

  else
  {
    v11 = MEMORY[0x1E6981948];
    _s7SwiftUI7BindingVy10Foundation16AttributedStringVG_ACyAA0E13TextSelectionVGtMaTm_0(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), &lazy cache variable for type metadata for Binding<AttributedTextSelection>, MEMORY[0x1E6981948]);
    v13 = v0 + v2 + *(v12 + 48);

    _s7SwiftUI21ExclusivelyAccessibleVyAA21AttributedTextStorageVyAA08Platformf10ViewEditorG0VGGMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>, type metadata accessor for AttributedTextSelection, v11);
    v15 = v13 + *(v14 + 32);
    v16 = type metadata accessor for AttributedTextSelection.Indices(0);
    if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
      }

      else
      {
        v17 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v17 - 8) + 8))(v15, v17);
    }

    v18 = *(v29 + 20);
    v19 = type metadata accessor for AttributeContainer();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v15 + v18, 1, v19))
    {
      (*(v20 + 8))(v15 + v18, v19);
    }
  }

  v10(v0 + v6, v4);
  v21 = v0 + v28;
  v22 = type metadata accessor for AttributedTextSelection.Indices(0);
  if (!(*(*(v22 - 8) + 48))(v0 + v28, 1, v22))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
    }

    else
    {
      v23 = type metadata accessor for AttributedString.Index();
    }

    (*(*(v23 - 8) + 8))(v21, v23);
  }

  v24 = *(v29 + 20);
  v25 = type metadata accessor for AttributeContainer();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v21 + v24, 1, v25))
  {
    (*(v26 + 8))(v21 + v24, v25);
  }

  return swift_deallocObject();
}

uint64_t sub_18C105BB8()
{

  return swift_deallocObject();
}

uint64_t sub_18C105D20()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat?>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C105DA0()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<AppIntentExecutor?>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AppIntentExecutor?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AppIntentExecutor?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<AppIntentExecutor?>);
  return swift_getWitnessTable();
}

__n128 sub_18C105EA4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_18C105EB0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_18C105F20()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<BadgeProminence>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<BadgeProminence.Key> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<BadgeProminence> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<BadgeProminence>);
  return swift_getWitnessTable();
}

uint64_t sub_18C105FC0()
{

  return swift_deallocObject();
}

uint64_t sub_18C106000()
{

  return swift_deallocObject();
}

uint64_t sub_18C106084()
{
  swift_weakDestroy();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t _s7SwiftUI17SubviewCollectionVSkAASk5index_8offsetBy07limitedG05IndexQzSgAH_SiAHtFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_18C1061B8()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI19ResolvedTableRowIDsV7StorageOwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of ResolvedTableRowIDs.Storage(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_18C106254()
{
  type metadata accessor for ViewDestinationNavigationDestinationModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for BaseModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C106334()
{
  type metadata accessor for BaseModifier.Transform();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for UpdateViewDestinationViewModifier();
  type metadata accessor for UpdateViewDestinationRequestProcessor();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C106478@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.controlSize.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_18C1064FC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.placementTint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18C106564@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.effectiveFont.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18C1065A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 0xB)
  {
    return v5 - 10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18C106614(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 10);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_18C1066A8()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<AdaptableTabBarPlacement>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AdaptableTabBarPlacement> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AdaptableTabBarPlacement> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<AdaptableTabBarPlacement>);
  return swift_getWitnessTable();
}

uint64_t sub_18C1067AC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C1067E4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

id sub_18C10681C@<X0>(void *a1@<X8>)
{
  type metadata accessor for UIColor();

  result = UIColor.init(_:)(v2);
  *a1 = result;
  return result;
}

uint64_t sub_18C10686C()
{
  lazy protocol witness table accessor for type ColorPickerStyleConfiguration.Label and conformance ColorPickerStyleConfiguration.Label();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ResolvedColorPickerStyle and conformance ResolvedColorPickerStyle();
  return swift_getWitnessTable();
}

uint64_t sub_18C1068FC()
{

  return swift_deallocObject();
}

uint64_t sub_18C106AD0()
{

  return swift_deallocObject();
}

uint64_t sub_18C106B18()
{

  return swift_deallocObject();
}

uint64_t sub_18C106B68()
{

  return swift_deallocObject();
}

uint64_t sub_18C106BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Measurement();
  v6 = type metadata accessor for Binding();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Measurement<>.FormatStyle();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = *(a3 + 44);
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v8 = *(a3 + 16);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v12 = *(*(a3 + 16) - 8);
    v13 = *(a3 + 48);
    goto LABEL_9;
  }

  swift_getWitnessTable();
  type metadata accessor for ClosedRange();
  v14 = type metadata accessor for Optional();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = *(a3 + 52);
    goto LABEL_9;
  }

  v16 = *(a1 + *(a3 + 56));
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_18C106D8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for Measurement();
  v8 = type metadata accessor for Binding();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for Measurement<>.FormatStyle();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = *(a4 + 44);
    }

    else
    {
      v10 = *(a4 + 16);
      if (*(*(v10 - 8) + 84) == a3)
      {
        v14 = *(*(a4 + 16) - 8);
        v15 = *(a4 + 48);
      }

      else
      {
        swift_getWitnessTable();
        type metadata accessor for ClosedRange();
        result = type metadata accessor for Optional();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + *(a4 + 56)) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = *(a4 + 52);
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_18C106F74()
{
  type metadata accessor for HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Stepper<EmptyView>, LabelsHiddenModifier>, AccessibilityAttachmentModifier>)>>();
  type metadata accessor for LabeledContent();
  type metadata accessor for FloatingPointFormatStyle<Double>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, MEMORY[0x1E697FD28]);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Stepper<EmptyView>, LabelsHiddenModifier>, AccessibilityAttachmentModifier>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Stepper<EmptyView>, LabelsHiddenModifier>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Stepper<EmptyView>, LabelsHiddenModifier>, AccessibilityAttachmentModifier>)>>);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C10709C@<X0>(void *a1@<X8>)
{
  type metadata accessor for Measurement();
  result = Measurement.value.getter();
  *a1 = v3;
  return result;
}

__n128 sub_18C107128(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_18C10713C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for MeasurementView();
  v11 = (*(*(v2 - 1) + 80) + 40) & ~*(*(v2 - 1) + 80);

  v3 = type metadata accessor for Measurement();
  v4 = type metadata accessor for Binding();
  v5 = *(*(v3 - 8) + 8);
  v5(v0 + v11 + *(v4 + 32), v3);
  v6 = v2[11];
  v7 = type metadata accessor for Measurement<>.FormatStyle();
  (*(*(v7 - 8) + 8))(v0 + v11 + v6, v7);
  (*(*(v1 - 8) + 8))(v0 + v11 + v2[12], v1);
  v8 = v0 + v11 + v2[13];
  swift_getWitnessTable();
  v9 = type metadata accessor for ClosedRange();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v5(v8, v3);
    v5(v8 + *(v9 + 36), v3);
  }

  return swift_deallocObject();
}

uint64_t sub_18C1073B0()
{
  type metadata accessor for Optional();
  type metadata accessor for FocusedValueModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C107490()
{

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 80))
  {
    outlined consume of Text.Storage(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  swift_weakDestroy();
  swift_weakDestroy();
  swift_weakDestroy();
  if (*(v0 + 200))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  }

  v1 = *(v0 + 240);
  if (v1 != 255)
  {
    outlined consume of SceneID(*(v0 + 224), *(v0 + 232), v1 & 1);
  }

  return swift_deallocObject();
}

uint64_t sub_18C10757C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.backgroundContext.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_18C1075F8()
{

  return swift_deallocObject();
}

uint64_t sub_18C107630()
{

  return swift_deallocObject();
}

uint64_t sub_18C1076C8()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type DragItemGroupModifier and conformance DragItemGroupModifier();
  return swift_getWitnessTable();
}

uint64_t sub_18C10776C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18C107828(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18C1078E0()
{
  v5 = *(v0 + 32);
  v1 = (type metadata accessor for TableColumn() - 8);
  v2 = v0 + ((*(*v1 + 80) + 80) & ~*(*v1 + 80));
  (*(*(v5 - 8) + 8))(v2);

  v3 = v2 + v1[25];
  if (*(v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    __swift_destroy_boxed_opaque_existential_1(v3 + 32);
  }

  return swift_deallocObject();
}

uint64_t sub_18C107A1C()
{
  type metadata accessor for PopoverConditionalStateProvider();
  swift_getWitnessTable();
  type metadata accessor for PopoverPresentationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type SearchPopoverAnchorModifier and conformance SearchPopoverAnchorModifier();
  return swift_getWitnessTable();
}

uint64_t sub_18C107B00()
{
  type metadata accessor for PopoverItemStateProvider();
  swift_getWitnessTable();
  type metadata accessor for PopoverPresentationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type SearchPopoverAnchorModifier and conformance SearchPopoverAnchorModifier();
  return swift_getWitnessTable();
}

uint64_t sub_18C107BF8()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_18C107C4C()
{
  type metadata accessor for AccessibilityProxyTransformModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C107CD8()
{
  type metadata accessor for AccessibilityProxyTransformModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C107D64()
{
  if (*(v0 + 40) >= 6uLL)
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  return swift_deallocObject();
}

uint64_t sub_18C107DBC()
{
  if (*(v0 + 40) >= 5uLL)
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  if (*(v0 + 72) >= 3uLL)
  {
    outlined consume of Text.Storage(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  if (*(v0 + 104))
  {
    outlined consume of Text.Storage(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  }

  return swift_deallocObject();
}

uint64_t sub_18C107E78()
{
  outlined consume of SharingPickerSource(v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11], v0[12], v0[13], v0[14], v0[15], v0[16], v0[17], v0[18], v0[19]);

  return swift_deallocObject();
}

uint64_t sub_18C107EE4()
{
  outlined consume of SharingPickerSource(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11], v0[12], v0[13], v0[14], v0[15], v0[16], v0[17], v0[18]);

  return swift_deallocObject();
}

uint64_t sub_18C107F48()
{

  return swift_deallocObject();
}

uint64_t sub_18C107FCC()
{

  return swift_deallocObject();
}

uint64_t sub_18C108010()
{
  type metadata accessor for HelpView();

  return swift_getWitnessTable();
}

uint64_t sub_18C108058()
{
  type metadata accessor for HelpView();

  return swift_getWitnessTable();
}

uint64_t sub_18C1080B0()
{
  type metadata accessor for _TraitWritingModifier<ListRowBackgroundTraitKey>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C10812C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18C1081E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProgressViewStyleConfiguration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t _s7SwiftUI22_ScrollableLayoutProxyV7StorageVwcp_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_18C1085D8()
{
  type metadata accessor for LabelStyleWritingModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C108670()
{

  return swift_deallocObject();
}

uint64_t sub_18C1086C0()
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  type metadata accessor for Drag.LazyItem.State();
  return type metadata accessor for Mutex();
}

uint64_t sub_18C108770()
{
  type metadata accessor for DraggingPreviewModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C1088D0()
{
  type metadata accessor for DraggingPreviewModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C108940()
{
  _s7SwiftUI4DragV7PayloadVy_SOGMaTm_0(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<DragItemTimings.Key>, &type metadata for DragItemTimings.Key, &protocol witness table for DragItemTimings.Key, MEMORY[0x1E6980750]);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _PreferenceWritingModifier<DragItemTimings.Key> and conformance _PreferenceWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C1089F4()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool?> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C108A7C()
{

  return swift_deallocObject();
}

uint64_t sub_18C108AB4()
{

  return swift_deallocObject();
}

uint64_t sub_18C108B6C()
{

  return swift_deallocObject();
}

uint64_t sub_18C108BB4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C108BEC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C108C3C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18C108C7C()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI28ResponderBasedHitTestTracing33_DB5E6F06E13FF0259F656B4E03BE4F79LLOwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of ResponderBasedHitTestTracing(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_18C108D74()
{

  return swift_deallocObject();
}

uint64_t sub_18C108DAC()
{

  return swift_deallocObject();
}

__n128 sub_18C108DE4@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = v3[4];
  *a2 = result;
  return result;
}

__n128 sub_18C108E9C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C108ED4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 49) & ~*(v2 + 80);
  outlined consume of SceneList.Namespace(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C108FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_18C109110(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 24);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_18C109244()
{
  type metadata accessor for DatePickerStyleModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C1092B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatePickerStyleConfiguration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C109320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatePickerStyleConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C1093D8()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C10944C()
{

  return swift_deallocObject();
}

uint64_t sub_18C109484()
{

  return swift_deallocObject();
}

uint64_t sub_18C1094BC()
{

  return swift_deallocObject();
}

uint64_t sub_18C1094F4()
{

  return swift_deallocObject();
}

uint64_t storeEnumTagSinglePayload for SPRotation3D(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void protocol witness for Hashable._rawHashValue(seed:) in conformance CapsuleSlider<A>.ScrollState.Orientation()
{
  Hasher.init(_seed:)();
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

_OWORD *assignWithTake for AlertTransformModifier(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

double protocol witness for static Rule.initialValue.getter in conformance LazyPlatformItemWriter<A, B, C>.UpdateEnvironment@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_18CD6A6D0;
  return result;
}

uint64_t getEnumTagSinglePayload for AlertTransformModifier.Transform(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AlertTransformModifier.Transform(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 28) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LazyPlatformItemWriter.UpdateEnvironment(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LazyPlatformItemWriter.UpdateEnvironment(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NSDecimal(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NSDecimal(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

uint64_t assignWithTake for NavigationDestinationModifier.SeededResolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

void *assignWithTake for WindowVisibilityButton(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for ListRowInsetTransformerModifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ListRowInsetTransformerModifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

_DWORD *assignWithCopy for RemoteSheetContainerVCWriter(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  swift_weakCopyAssign();
  return a1;
}

void *assignWithTake for PreviewModifierTrait(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithCopy for PreviewModifierTrait(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void CapsuleSlider.ScrollState.__deallocating_deinit()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void *protocol witness for Collection.index(after:) in conformance ListBatchUpdates<A>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance ListBatchUpdates<A>(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t _s7SwiftUI27ScrollableCollectionSubviewVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTag for ResolvedNavigationDestinations.ChangeRequest(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for ResolvedNavigationDestinations.ChangeRequest(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance FlipForRTLTransform@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

uint64_t *assignWithCopy for AccessibilityRelationshipScope.Key(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  a1[5] = a2[5];
  return a1;
}

uint64_t assignWithTake for AccessibilityRelationshipScope.Key(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  return a1;
}

uint64_t storeEnumTagSinglePayload for ScrollableItemGeometry(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ScrollableItemGeometry(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance SceneBridge@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t assignWithTake for FocusEventProxyResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

double protocol witness for static _ViewTraitKey.defaultValue.getter in conformance ListRowInsetsTraitKey@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

double protocol witness for UIKitButtonAdaptorContent._identifiedViewTree(in:) in conformance PlatformItemContent@<D0>(uint64_t a1@<X8>)
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
  *(a1 + 168) = 2;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance PreviewDevice@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

unint64_t *assignWithCopy for _HoverEffectActivationBehavior(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  outlined copy of HoverEffectPhaseOverride.Storage(*a2);
  v4 = *a1;
  *a1 = v3;
  outlined consume of HoverEffectPhaseOverride.Storage(v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for OrnamentBillboardingAllowedRotation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OrnamentBillboardingAllowedRotation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CircularPercentageGauge(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 11))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CircularPercentageGauge(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 11) = v3;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance BridgedAttachment@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t destroy for _ResolvedMatchedTransitionSourceConfiguration()
{
}

uint64_t assignWithTake for FileExportOperation.BatchStorage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t assignWithCopy for SafeAreaTransitionStateKey.Value(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakCopyAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

void *assignWithCopy for DropSession.LocalSession(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t assignWithTake for SafeAreaTransitionStateKey.Value(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithTake for InsetListLabelStyle.StyleView(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of Environment<Selector?>.Content(v5, v6);
  return a1;
}

uint64_t assignWithTake for _CommandsOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

unint64_t *assignWithTake for _HoverEffectActivationBehavior(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  outlined consume of HoverEffectPhaseOverride.Storage(v3);
  return a1;
}

BOOL _AXSwiftUIIsAnyStringEmpty(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [v1 string];
        v2 = [v4 length] == 0;

        goto LABEL_4;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = [v1 length] == 0;
        goto LABEL_4;
      }
    }
  }

  v2 = 1;
LABEL_4:

  return v2;
}

id _AXSwiftUIGetObjectFromSelectorAsAny(void *a1, const char *a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    v4 = NSStringFromSelector(a2);
    v5 = [v3 valueForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id AXAttributedStringCreate(void *a1)
{
  v1 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getAXCreateAXAttributedStringFromCFAttributedStringSymbolLoc_ptr;
  v11 = getAXCreateAXAttributedStringFromCFAttributedStringSymbolLoc_ptr;
  if (!getAXCreateAXAttributedStringFromCFAttributedStringSymbolLoc_ptr)
  {
    v3 = AXRuntimeLibrary();
    v9[3] = dlsym(v3, "AXCreateAXAttributedStringFromCFAttributedString");
    getAXCreateAXAttributedStringFromCFAttributedStringSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    cold_1 = AXAttributedStringCreate_cold_1();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(cold_1);
  }

  v4 = v2(v1);
  v5 = v4;

  return v4;
}

id AXSwiftUIMoveToElementNotificationKeyElement()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMoveToElementNotificationKeyElementSymbolLoc_ptr;
  v8 = getkAXMoveToElementNotificationKeyElementSymbolLoc_ptr;
  if (!getkAXMoveToElementNotificationKeyElementSymbolLoc_ptr)
  {
    v1 = AXRuntimeLibrary();
    v6[3] = dlsym(v1, "kAXMoveToElementNotificationKeyElement");
    getkAXMoveToElementNotificationKeyElementSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    cold_1 = AXAttributedStringCreate_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(cold_1);
  }

  v2 = *v0;

  return v2;
}

id AXSwiftUIPerformElementUpdateImmediatelyToken()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXPerformElementUpdateImmediatelyTokenSymbolLoc_ptr;
  v8 = getkAXPerformElementUpdateImmediatelyTokenSymbolLoc_ptr;
  if (!getkAXPerformElementUpdateImmediatelyTokenSymbolLoc_ptr)
  {
    v1 = AXRuntimeLibrary();
    v6[3] = dlsym(v1, "kAXPerformElementUpdateImmediatelyToken");
    getkAXPerformElementUpdateImmediatelyTokenSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    cold_1 = AXAttributedStringCreate_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(cold_1);
  }

  v2 = *v0;

  return v2;
}

BOOL AXIsVoiceControlMakingRequest()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAXRequestingClientSymbolLoc_ptr;
  v8 = getAXRequestingClientSymbolLoc_ptr;
  if (!getAXRequestingClientSymbolLoc_ptr)
  {
    v1 = AXRuntimeLibrary();
    v6[3] = dlsym(v1, "AXRequestingClient");
    getAXRequestingClientSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    cold_1 = AXAttributedStringCreate_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(cold_1);
  }

  v2 = v0();
  if (v2 == 5)
  {
    return 1;
  }

  if (v2 == 7)
  {
    return _AXSCommandAndControlEnabled() != 0;
  }

  return 0;
}

void *__getAXCreateAXAttributedStringFromCFAttributedStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXRuntimeLibrary();
  result = dlsym(v2, "AXCreateAXAttributedStringFromCFAttributedString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXCreateAXAttributedStringFromCFAttributedStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AXRuntimeLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AXRuntimeLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AXRuntimeLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7237598;
    v5 = 0;
    AXRuntimeLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AXRuntimeLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!AXRuntimeLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AXRuntimeLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AXRuntimeLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkAXMoveToElementNotificationKeyElementSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXRuntimeLibrary();
  result = dlsym(v2, "kAXMoveToElementNotificationKeyElement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMoveToElementNotificationKeyElementSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXPerformElementUpdateImmediatelyTokenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXRuntimeLibrary();
  result = dlsym(v2, "kAXPerformElementUpdateImmediatelyToken");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXPerformElementUpdateImmediatelyTokenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXRequestingClientSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXRuntimeLibrary();
  result = dlsym(v2, "AXRequestingClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXRequestingClientSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id _makeSafariViewController(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getSFSafariViewControllerClass_softClass;
  v10 = getSFSafariViewControllerClass_softClass;
  if (!getSFSafariViewControllerClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getSFSafariViewControllerClass_block_invoke;
    v6[3] = &unk_1E7237578;
    v6[4] = &v7;
    __getSFSafariViewControllerClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [[v2 alloc] initWithURL:v1];

  return v4;
}

void sub_18C10B22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSFSafariViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SafariServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E72375D0;
    v6 = 0;
    SafariServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SafariServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SFSafariViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFSafariViewControllerClass_block_invoke_cold_1();
  }

  getSFSafariViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SafariServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SafariServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_18C10B754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBGTaskSchedulerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!BackgroundTasksLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __BackgroundTasksLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E72375E8;
    v6 = 0;
    BackgroundTasksLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (BackgroundTasksLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BGTaskScheduler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBGTaskSchedulerClass_block_invoke_cold_1();
  }

  getBGTaskSchedulerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BackgroundTasksLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BackgroundTasksLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_18C10C030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _SwizzleMethods(objc_class *a1, const char *a2, const char *a3)
{
  InstanceMethod = class_getInstanceMethod(a1, a2);
  v7 = class_getInstanceMethod(a1, a3);
  Implementation = method_getImplementation(v7);
  TypeEncoding = method_getTypeEncoding(v7);
  if (class_addMethod(a1, a2, Implementation, TypeEncoding))
  {
    v10 = method_getImplementation(InstanceMethod);
    v11 = method_getTypeEncoding(InstanceMethod);

    class_replaceMethod(a1, a3, v10, v11);
  }

  else
  {

    method_exchangeImplementations(InstanceMethod, v7);
  }
}

void _PerformTestingSwizzles()
{
  if (_PerformTestingSwizzles_onceToken != -1)
  {
    _PerformTestingSwizzles_cold_1();
  }
}

Class __getLPLinkMetadataClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!LinkPresentationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __LinkPresentationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7237620;
    v6 = 0;
    LinkPresentationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (LinkPresentationLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("LPLinkMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLPLinkMetadataClass_block_invoke_cold_1();
  }

  getLPLinkMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __LinkPresentationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  LinkPresentationLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t closure #1 in SidebarListBody.CollectionViewBody.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  type metadata accessor for CollectionViewListRoot();
  type metadata accessor for _DUIPreviewMode(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E6980A08]);
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  v17 = AnyShapeStyle.init<A>(_:)();
  View.environment<A>(_:_:)();

  v12 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle> and conformance _EnvironmentKeyWritingModifier<A>();
  v16[0] = &protocol witness table for CollectionViewListRoot<A, B>;
  v16[1] = v12;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v8, v5, WitnessTable);
  v14 = *(v6 + 8);
  v14(v8, v5);
  static ViewBuilder.buildExpression<A>(_:)(v11, v5, WitnessTable);
  return (v14)(v11, v5);
}

uint64_t key path getter for EnvironmentValues.listLabelIconStyle : EnvironmentValues@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for _SemanticFeature<Semantics_v4>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle>, &type metadata for EnvironmentValues.__Key_listLabelIconStyle, &protocol witness table for EnvironmentValues.__Key_listLabelIconStyle, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _SemanticFeature<Semantics_v4>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle>, &type metadata for EnvironmentValues.__Key_listLabelIconStyle, &protocol witness table for EnvironmentValues.__Key_listLabelIconStyle, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.listLabelIconStyle : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _SemanticFeature<Semantics_v4>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle>, &type metadata for EnvironmentValues.__Key_listLabelIconStyle, &protocol witness table for EnvironmentValues.__Key_listLabelIconStyle, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t SidebarListBody.TableViewRoot.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = *(a2 + 24);
  v29 = a2;
  type metadata accessor for Binding();
  v7 = type metadata accessor for Optional();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v30 = v26 - v8;
  v9 = *(a2 + 40);
  v26[2] = swift_getAssociatedTypeWitness();
  v26[1] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for TableViewListDataSource();
  WitnessTable = swift_getWitnessTable();
  v36[0] = v10;
  v36[1] = v5;
  v36[2] = WitnessTable;
  v36[3] = v9;
  v11 = type metadata accessor for TableViewListCore();
  v28 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v26 - v15;
  outlined init with copy of _VariadicView_Children(a1, v35);
  v17 = specialized Environment.wrappedValue.getter(*v3, *(v3 + 8) | (*(v3 + 9) << 8));
  v19 = v18;
  v20 = COERCE_DOUBLE(specialized Environment.wrappedValue.getter(*(v3 + 16), *(v3 + 24) | (*(v3 + 25) << 8)));
  if (v21)
  {
    v20 = 44.0;
  }

  TableViewListDataSource.init(_:style:minRowHeight:minHeaderHeight:)(v35, 0, v17, v19 & 1, v36, v20);
  v22 = v30;
  (*(v31 + 16))(v30, v3 + *(v29 + 60), v32);
  v23 = specialized Environment.wrappedValue.getter(*(v3 + 32), *(v3 + 40));
  static TableViewListCore.Configuration.sidebar(isInExpandedSplitView:)(v23 & 1, v34);
  TableViewListCore.init(dataSource:selection:configuration:)(v36, v22, v34, v10, v13);
  static ViewBuilder.buildExpression<A>(_:)(v13, v11, &protocol witness table for TableViewListCore<A, B>);
  v24 = *(v28 + 8);
  v24(v13, v11);
  static ViewBuilder.buildExpression<A>(_:)(v16, v11, &protocol witness table for TableViewListCore<A, B>);
  return (v24)(v16, v11);
}

uint64_t key path getter for EnvironmentValues._defaultMinListRowHeight : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for _SemanticFeature<Semantics_v4>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListRowHeightKey>, &type metadata for DefaultMinListRowHeightKey, &protocol witness table for DefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _SemanticFeature<Semantics_v4>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListRowHeightKey>, &type metadata for DefaultMinListRowHeightKey, &protocol witness table for DefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues._defaultMinListRowHeight : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _SemanticFeature<Semantics_v4>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListRowHeightKey>, &type metadata for DefaultMinListRowHeightKey, &protocol witness table for DefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance SidebarListBody<A, B>.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance EquatableView<A>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ScrollViewBoundsModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ScrollViewBoundsModifier2<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for Layout.makeCache(subviews:) in conformance _GridLayout@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  *(a2 + 72) = 0x7FF8000000000000;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v12 = MEMORY[0x1E69E7CC0];
  *(a2 + 104) = MEMORY[0x1E69E7CC0];
  *(a2 + 112) = v12;
  *(a2 + 120) = v12;
  *(a2 + 128) = v12;
  v13 = MEMORY[0x1E69E7CC8];
  *(a2 + 136) = v12;
  *(a2 + 144) = v13;
  *a2 = *v2;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v4;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  *(a2 + 65) = v7;

  GridLayout.Cache.assignSubviews()();
  GridLayout.Cache.assignSpacing(in:)(0);
  return GridLayout.Cache.assignSpacing(in:)(1);
}

uint64_t protocol witness for Layout.updateCache(_:subviews:) in conformance _GridLayout(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  *a1 = *v2;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;

  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 65) = v7;
  *(a1 + 88) = 0x7FF8000000000000;
  *(a1 + 96) = 0;
  GridLayout.Cache.assignSubviews()();
  GridLayout.Cache.assignSpacing(in:)(0);
  return GridLayout.Cache.assignSpacing(in:)(1);
}

uint64_t protocol witness for Layout.spacing(subviews:cache:) in conformance _GridLayout@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 112);
  v4 = *(a1 + 80);
  v27 = *(a1 + 96);
  v28 = v3;
  v5 = *(a1 + 112);
  v29 = *(a1 + 128);
  v6 = *(a1 + 48);
  v7 = *(a1 + 16);
  v23 = *(a1 + 32);
  v24 = v6;
  v8 = *(a1 + 48);
  v9 = *(a1 + 80);
  v25 = *(a1 + 64);
  v26 = v9;
  v10 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v10;
  v18 = v27;
  v19 = v5;
  v20 = *(a1 + 128);
  v14 = v23;
  v15 = v8;
  v16 = v25;
  v17 = v4;
  v30 = *(a1 + 144);
  v21 = *(a1 + 144);
  v12 = v22[0];
  v13 = v7;
  outlined init with copy of GridLayout.Cache(v22, v31);
  GridLayout.Cache.spacing()(a2);
  v31[6] = v18;
  v31[7] = v19;
  v31[8] = v20;
  v32 = v21;
  v31[2] = v14;
  v31[3] = v15;
  v31[4] = v16;
  v31[5] = v17;
  v31[0] = v12;
  v31[1] = v13;
  return outlined destroy of GridLayout.Cache(v31);
}

uint64_t protocol witness for Layout.sizeThatFits(proposal:subviews:cache:) in conformance _GridLayout()
{
  lazy protocol witness table accessor for type _GridLayout and conformance _GridLayout();

  return DerivedLayout.sizeThatFits(proposal:subviews:cache:)();
}

uint64_t protocol witness for Layout.placeSubviews(in:proposal:subviews:cache:) in conformance _GridLayout()
{
  lazy protocol witness table accessor for type _GridLayout and conformance _GridLayout();

  return DerivedLayout.placeSubviews(in:proposal:subviews:cache:)();
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance _GridLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance _GridLayout(a1, a2, a9, a10, a11, a12, a3, a4, a5, a6, a7, a8, a13, MEMORY[0x1E697E0F0]);
}

{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance _GridLayout(a1, a2, a9, a10, a11, a12, a3, a4, a5, a6, a7, a8, a13, MEMORY[0x1E697E0F8]);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _IdentifiedModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance _ShadowView<A>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance AGAttribute(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x18D00F7C0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance AGAttribute(uint64_t a1, uint64_t a2)
{
  v3 = static UInt32._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance AGAttribute@<X0>(_DWORD *a1@<X8>)
{
  result = static UInt32._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance AXSwiftUITraits(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x18D00F800](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance AXSwiftUITraits(uint64_t a1, uint64_t a2)
{
  v3 = static UInt64._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSAttributedStringKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x18D00C850](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CTFontRef()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UIKeyboardHIDUsage()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UIKeyboardHIDUsage()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance UIRectEdge@<X0>(uint64_t *a1@<X8>)
{
  v2 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a1 = v2;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AGAttribute()
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type AGAttribute and conformance AGAttribute, type metadata accessor for AGAttribute);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type AGAttribute and conformance AGAttribute, type metadata accessor for AGAttribute);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey()
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance _UIImageNamedColorStyle()
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type _UIImageNamedColorStyle and conformance _UIImageNamedColorStyle, type metadata accessor for _UIImageNamedColorStyle);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type _UIImageNamedColorStyle and conformance _UIImageNamedColorStyle, type metadata accessor for _UIImageNamedColorStyle);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringDocumentReadingOptionKey()
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSAttributedStringDocumentReadingOptionKey and conformance NSAttributedStringDocumentReadingOptionKey, type metadata accessor for NSAttributedStringDocumentReadingOptionKey);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSAttributedStringDocumentReadingOptionKey and conformance NSAttributedStringDocumentReadingOptionKey, type metadata accessor for NSAttributedStringDocumentReadingOptionKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIApplicationLaunchOptionsKey()
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIApplicationLaunchOptionsKey and conformance UIApplicationLaunchOptionsKey, type metadata accessor for UIApplicationLaunchOptionsKey);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIApplicationLaunchOptionsKey and conformance UIApplicationLaunchOptionsKey, type metadata accessor for UIApplicationLaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringDocumentType()
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSAttributedStringDocumentType and conformance NSAttributedStringDocumentType, type metadata accessor for NSAttributedStringDocumentType);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSAttributedStringDocumentType and conformance NSAttributedStringDocumentType, type metadata accessor for NSAttributedStringDocumentType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringDocumentAttributeKey()
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSAttributedStringDocumentAttributeKey and conformance NSAttributedStringDocumentAttributeKey, type metadata accessor for NSAttributedStringDocumentAttributeKey);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSAttributedStringDocumentAttributeKey and conformance NSAttributedStringDocumentAttributeKey, type metadata accessor for NSAttributedStringDocumentAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSKeyValueChangeKey()
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIMenuIdentifier()
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIMenuIdentifier and conformance UIMenuIdentifier, type metadata accessor for UIMenuIdentifier);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIMenuIdentifier and conformance UIMenuIdentifier, type metadata accessor for UIMenuIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AXSwiftUITraits()
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type AXSwiftUITraits and conformance AXSwiftUITraits, type metadata accessor for AXSwiftUITraits);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type AXSwiftUITraits and conformance AXSwiftUITraits, type metadata accessor for AXSwiftUITraits);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIActivityType()
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIActivityType and conformance UIActivityType, type metadata accessor for UIActivityType);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIActivityType and conformance UIActivityType, type metadata accessor for UIActivityType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSRunLoopMode()
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSRunLoopMode and conformance NSRunLoopMode, type metadata accessor for NSRunLoopMode);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSRunLoopMode and conformance NSRunLoopMode, type metadata accessor for NSRunLoopMode);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIPasteboardName()
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIPasteboardName and conformance UIPasteboardName, type metadata accessor for UIPasteboardName);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIPasteboardName and conformance UIPasteboardName, type metadata accessor for UIPasteboardName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIApplicationOpenExternalURLOptionsKey()
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIAccessibilityTraits()
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIAccessibilityTraits and conformance UIAccessibilityTraits, type metadata accessor for UIAccessibilityTraits);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIAccessibilityTraits and conformance UIAccessibilityTraits, type metadata accessor for UIAccessibilityTraits);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLResourceKey()
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UIMenuIdentifier@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x18D00C850](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIAccessibilityTextualContext()
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIAccessibilityTextualContext and conformance UIAccessibilityTextualContext, type metadata accessor for UIAccessibilityTextualContext);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIAccessibilityTextualContext and conformance UIAccessibilityTextualContext, type metadata accessor for UIAccessibilityTextualContext);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UITextFormattingViewControllerComponentKey()
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UITextFormattingViewControllerComponentKey and conformance UITextFormattingViewControllerComponentKey, type metadata accessor for UITextFormattingViewControllerComponentKey);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UITextFormattingViewControllerComponentKey and conformance UITextFormattingViewControllerComponentKey, type metadata accessor for UITextFormattingViewControllerComponentKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UISheetPresentationControllerDetentIdentifier()
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UISheetPresentationControllerDetentIdentifier and conformance UISheetPresentationControllerDetentIdentifier, type metadata accessor for UISheetPresentationControllerDetentIdentifier);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UISheetPresentationControllerDetentIdentifier and conformance UISheetPresentationControllerDetentIdentifier, type metadata accessor for UISheetPresentationControllerDetentIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CTFontRef()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSAttributedStringKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x18D00CA50](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSAttributedStringKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

_DWORD *protocol witness for SetAlgebra.remove(_:) in conformance AGAttributeTypeFlags@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *protocol witness for SetAlgebra.update(with:) in conformance AGAttributeTypeFlags@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance AGAttributeTypeFlags@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

void specialized PrimitiveGesture.body.getter()
{
  _StringGuts.grow(_:)(32);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type _GridLayout and conformance _GridLayout()
{
  result = lazy protocol witness table cache variable for type _GridLayout and conformance _GridLayout;
  if (!lazy protocol witness table cache variable for type _GridLayout and conformance _GridLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GridLayout and conformance _GridLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _GridLayout and conformance _GridLayout;
  if (!lazy protocol witness table cache variable for type _GridLayout and conformance _GridLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GridLayout and conformance _GridLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _GridLayout and conformance _GridLayout;
  if (!lazy protocol witness table cache variable for type _GridLayout and conformance _GridLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GridLayout and conformance _GridLayout);
  }

  return result;
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CGAffineTransform(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGAffineTransform(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

void *initializeBufferWithCopyOfBuffer for SidebarListBody(void *__dst, void *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v7 + 64);
  v10 = *(v5 - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 64) + 7;
  if ((v11 | v8) <= 7 && ((*(v10 + 80) | *(v7 + 80)) & 0x100000) == 0 && ((v12 + ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 9 <= 0x18)
  {
    v16 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v7 + 84) & 0x80000000) != 0)
    {
      if ((*(v7 + 48))(v16 + 1))
      {
LABEL_14:
        memcpy(__dst, __src, v9);
LABEL_17:
        v20 = ((__dst + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
        v21 = ((__src + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
        v22 = *v21++;
        *v20++ = v22;
        (*(v10 + 16))(v20, v21, v5);
        v23 = (v20 + v12) & 0xFFFFFFFFFFFFFFF8;
        v24 = (v21 + v12) & 0xFFFFFFFFFFFFFFF8;
        v25 = *v24;
        v26 = *(v24 + 8);
        outlined copy of Environment<Selector?>.Content(*v24, v26);
        *v23 = v25;
        *(v23 + 8) = v26;
        return __dst;
      }
    }

    else
    {
      v17 = *v16;
      if (*v16 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      if (v17 != -1)
      {
        goto LABEL_14;
      }
    }

    *__dst = *__src;
    v18 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v16;
    v19 = *(v7 + 16);

    v19(v18 + 1, v16 + 1, v6);
    goto LABEL_17;
  }

  v15 = *__src;
  *__dst = *__src;
  __dst = (v15 + (((v11 | v8) & 0xF8 ^ 0x1F8) & ((v11 | v8) + 16)));

  return __dst;
}

void *assignWithCopy for SidebarListBody(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  v11 = ((v9 + 16) & ~v9) + v10;
  v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v38 = ~v9;
  if ((v8 & 0x80000000) != 0)
  {
    v36 = ((v9 + 16) & ~v9) + v10;
    v34 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
    v17 = *(v7 + 48);
    v33 = v17((v12 + v9 + 8) & ~v9, v8, v6);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v11 = v36;
    v12 = v34;
    v15 = v17((v13 + v9 + 8) & ~v9, v8, v6);
    v4 = a2;
    v5 = a1;
    v3 = a3;
    if (!v33)
    {
LABEL_5:
      if (!v15)
      {
        *v5 = *v4;

        *v12 = *v13;

        (*(v7 + 24))((v12 + v9 + 8) & v38, (v13 + v9 + 8) & v38, v6);
        goto LABEL_12;
      }

      (*(v7 + 8))((v12 + v9 + 8) & v38, v6);
      goto LABEL_9;
    }
  }

  else
  {
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v14 = *v13;
    if (*v13 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 + 1;
    if (*v12 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v15)
  {
    *v5 = *v4;
    *v12 = *v13;
    v18 = *(v7 + 16);

    v18((v12 + v9 + 8) & v38, (v13 + v9 + 8) & v38, v6);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v5, v4, v11);
LABEL_12:
  v19 = ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = *(*(v3 + 16) - 8);
  v22 = v21 + 24;
  v23 = *(v21 + 80);
  v24 = (v19 + v23 + 8) & ~v23;
  v25 = (v20 + v23 + 8) & ~v23;
  (*(v21 + 24))(v24, v25);
  v26 = *(v22 + 40) + 7;
  v27 = (v26 + v24) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v26 + v25) & 0xFFFFFFFFFFFFFFF8;
  v29 = *v28;
  LOBYTE(v25) = *(v28 + 8);
  outlined copy of Environment<Selector?>.Content(*v28, v25);
  v30 = *v27;
  v31 = *(v27 + 8);
  *v27 = v29;
  *(v27 + 8) = v25;
  outlined consume of Environment<Selector?>.Content(v30, v31);
  return v5;
}

void *initializeWithTake for SidebarListBody(void *__dst, void *__src, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ~v8;
  v10 = (v8 + 16) & ~v8;
  v11 = *(v7 + 64);
  v12 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v7 + 84) & 0x80000000) == 0)
  {
    v13 = *v12;
    if (*v12 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v10 + v11;
    if (v13 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *__dst = *__src;
    v15 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v12;
    (*(v7 + 32))((v15 + v8 + 8) & v9, (v12 + v8 + 8) & v9, v6);
    goto LABEL_8;
  }

  v14 = v10 + v11;
  if (!(*(v7 + 48))((v12 + v8 + 8) & v9))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(__dst, __src, v14);
LABEL_8:
  v16 = ((__dst + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((__src + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = *(*(a3 + 16) - 8);
  v19 = v18 + 32;
  v20 = *(v18 + 80);
  v21 = (v16 + v20 + 8) & ~v20;
  v22 = (v17 + v20 + 8) & ~v20;
  (*(v18 + 32))(v21, v22);
  v23 = *(v19 + 32) + 7;
  v24 = (v23 + v21) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v23 + v22) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 8);
  *v24 = *v25;
  *(v24 + 8) = v26;
  return __dst;
}

void *assignWithTake for SidebarListBody(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  v10 = ((v8 + 16) & ~v8) + v9;
  v11 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v40 = ~v8;
  if ((v7 & 0x80000000) != 0)
  {
    v38 = ((v8 + 16) & ~v8) + v9;
    v16 = *(v6 + 48);
    v17 = *(a3 + 24);
    v18 = v16((v11 + v8 + 8) & ~v8, v7, v17);
    v19 = v16;
    v36 = v18;
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v20 = v7;
    v12 = v17;
    v21 = v17;
    v5 = a1;
    v10 = v38;
    v15 = v19((v13 + v8 + 8) & ~v8, v20, v21);
    v3 = a3;
    if (!v36)
    {
LABEL_5:
      if (!v15)
      {
        *v5 = *a2;

        *v11 = *v13;

        (*(v6 + 40))((v11 + v8 + 8) & v40, (v13 + v8 + 8) & v40, v12);
        goto LABEL_12;
      }

      (*(v6 + 8))((v11 + v8 + 8) & v40, v12);
      goto LABEL_9;
    }
  }

  else
  {
    v12 = *(a3 + 24);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v14 = *v13;
    if (*v13 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 + 1;
    if (*v11 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v15)
  {
    *v5 = *a2;
    *v11 = *v13;
    (*(v6 + 32))((v11 + v8 + 8) & v40, (v13 + v8 + 8) & v40, v12);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v5, a2, v10);
LABEL_12:
  v22 = ((v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = *(*(v3 + 16) - 8);
  v25 = v24 + 40;
  v26 = *(v24 + 80);
  v27 = (v22 + v26 + 8) & ~v26;
  v28 = (v23 + v26 + 8) & ~v26;
  (*(v24 + 40))(v27, v28);
  v29 = *(v25 + 24) + 7;
  v30 = (v29 + v27) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v29 + v28) & 0xFFFFFFFFFFFFFFF8;
  v32 = *v31;
  LOBYTE(v31) = *(v31 + 8);
  v33 = *v30;
  v34 = *(v30 + 8);
  *v30 = v32;
  *(v30 + 8) = v31;
  outlined consume of Environment<Selector?>.Content(v33, v34);
  return v5;
}

uint64_t getEnumTagSinglePayload for SidebarListBody(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 1;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v5 + 80);
  v13 = *(v10 + 80);
  if (v11 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = ((v12 + 16) & ~v12) + *(*(*(a3 + 24) - 8) + 64);
  v16 = v13 + 8;
  if (v14 >= a2)
  {
    goto LABEL_31;
  }

  v17 = ((*(*(v9 - 8) + 64) + ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v18 = (a2 - v14 + 255) >> 8;
  if (v17 <= 3)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 2;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *&a1[v17];
      if (!*&a1[v17])
      {
        goto LABEL_31;
      }
    }

    else
    {
      v22 = *&a1[v17];
      if (!v22)
      {
        goto LABEL_31;
      }
    }

LABEL_27:
    v24 = (v22 - 1) << (8 * v17);
    if (v17 <= 3)
    {
      v25 = *a1;
    }

    else
    {
      v24 = 0;
      v25 = *a1;
    }

    return v14 + (v25 | v24) + 1;
  }

  if (v21)
  {
    v22 = a1[v17];
    if (a1[v17])
    {
      goto LABEL_27;
    }
  }

LABEL_31:
  if (v8 >= v11)
  {
    v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      v31 = (*(v5 + 48))((v29 + v12 + 8) & ~v12);
    }

    else
    {
      v30 = *v29;
      if (v30 >= 0xFFFFFFFF)
      {
        LODWORD(v30) = -1;
      }

      v31 = v30 + 1;
    }

    if (v31 >= 2)
    {
      return v31 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v26 = ~v13;
    v27 = *(v10 + 48);
    v28 = (v16 + (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8)) & v26;

    return v27(v28, v11, v9);
  }
}

void storeEnumTagSinglePayload for SidebarListBody(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(*(a4 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 80);
  v12 = *(v9 + 80);
  v13 = v8 - 1;
  if (v10 <= v8 - 1)
  {
    v14 = v8 - 1;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  v15 = ((v11 + 16) & ~v11) + *(*(*(a4 + 24) - 8) + 64);
  v16 = ((*(v9 + 64) + ((v12 + 8 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v14 >= a3)
  {
    v20 = 0;
    if (v14 >= a2)
    {
      goto LABEL_20;
    }

LABEL_25:
    v21 = ~v14 + a2;
    bzero(a1, v16);
    if (v16 <= 3)
    {
      v22 = (v21 >> 8) + 1;
    }

    else
    {
      v22 = 1;
    }

    if (v16 <= 3)
    {
      *a1 = v21;
      if (v20 > 1)
      {
LABEL_30:
        if (v20 == 2)
        {
          *&a1[v16] = v22;
        }

        else
        {
          *&a1[v16] = v22;
        }

        return;
      }
    }

    else
    {
      *a1 = v21;
      if (v20 > 1)
      {
        goto LABEL_30;
      }
    }

    if (v20)
    {
      a1[v16] = v22;
    }

    return;
  }

  v17 = (a3 - v14 + 255) >> 8;
  if (v16 <= 3)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v14 < a2)
  {
    goto LABEL_25;
  }

LABEL_20:
  if (v20 <= 1)
  {
    if (v20)
    {
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

LABEL_34:
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (v20 == 2)
  {
    *&a1[v16] = 0;
    goto LABEL_34;
  }

  *&a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v13 < v10)
  {
    v23 = *(v9 + 56);

    v23((v12 + 8 + (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v12);
    return;
  }

  if (v13 >= a2)
  {
    if (a2 >= v8)
    {
      if (v15 <= 3)
      {
        v29 = ~(-1 << (8 * v15));
      }

      else
      {
        v29 = -1;
      }

      if (v15)
      {
        v25 = v29 & (a2 - v8);
        if (v15 <= 3)
        {
          v26 = v15;
        }

        else
        {
          v26 = 4;
        }

        bzero(a1, v15);
        if (v26 <= 2)
        {
          if (v26 == 1)
          {
            goto LABEL_52;
          }

          goto LABEL_69;
        }

LABEL_70:
        if (v26 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else
        {
          *a1 = v25;
        }
      }
    }

    else
    {
      v27 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v30 = *(v6 + 56);
        v31 = a2 + 1;

        v30((v27 + v11 + 8) & ~v11, v31);
      }

      else
      {
        if (((a2 + 1) & 0x80000000) != 0)
        {
          v28 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v28 = a2;
        }

        *v27 = v28;
      }
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v24 = ~(-1 << (8 * v15));
    }

    else
    {
      v24 = -1;
    }

    if (v15)
    {
      v25 = v24 & (a2 - v8);
      if (v15 <= 3)
      {
        v26 = v15;
      }

      else
      {
        v26 = 4;
      }

      bzero(a1, v15);
      if (v26 <= 2)
      {
        if (v26 == 1)
        {
LABEL_52:
          *a1 = v25;
          return;
        }

LABEL_69:
        *a1 = v25;
        return;
      }

      goto LABEL_70;
    }
  }
}

unint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>()
{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v4>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>)
  {
    type metadata accessor for HStack<UIKitButtonConfiguration.Label>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>)
  {
    type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SidebarListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ((v7 + 16) & ~v7) + *(v5 + 64);
  if (v7 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-42 - (v7 | 7)) | v7 | 7) - v8 >= 0xFFFFFFFFFFFFFFE7)
  {
    v12 = *a2;
    v13 = *(a2 + 9);
    v14 = *(a2 + 8);
    outlined copy of Environment<CGFloat?>.Content(*a2, v14, v13);
    *a1 = v12;
    *(a1 + 8) = v14;
    *(a1 + 9) = v13;
    v16 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
    v17 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
    v18 = *v17;
    v19 = *(v17 + 9);
    v20 = *(v17 + 8);
    outlined copy of Environment<CGFloat?>.Content(*v17, v20, v19);
    *v16 = v18;
    *(v16 + 8) = v20;
    *(v16 + 9) = v19;
    v21 = (v16 + 17) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v17 + 17) & 0xFFFFFFFFFFFFFFF8;
    v23 = *v22;
    v24 = *(v22 + 8);
    outlined copy of Environment<Selector?>.Content(*v22, v24);
    *v21 = v23;
    *(v21 + 8) = v24;
    v25 = v16 + 33;
    v26 = ((v17 + 33) & 0xFFFFFFFFFFFFFFF8);
    v27 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      v30 = (*(v5 + 48))(v27 + 1, v6, v4);
      v29 = (v25 & 0xFFFFFFFFFFFFFFF8);
      if (v30)
      {
LABEL_13:
        memcpy(v29, ((v17 + 33) & 0xFFFFFFFFFFFFFFF8), v8);
        return a1;
      }
    }

    else
    {
      v28 = *v27;
      if (*v27 >= 0xFFFFFFFF)
      {
        LODWORD(v28) = -1;
      }

      v29 = (v25 & 0xFFFFFFFFFFFFFFF8);
      if (v28 != -1)
      {
        goto LABEL_13;
      }
    }

    *v29 = *v26;
    v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v27;
    v32 = *(v5 + 16);

    v32(v31 + 1, v27 + 1, v4);
    return a1;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = v11 + ((v7 + 16) & ~(v7 | 7));

  return a1;
}

uint64_t assignWithCopy for SidebarListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 9);
  v8 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v8, v7);
  v9 = *a1;
  v10 = *(a1 + 9);
  *a1 = v6;
  v11 = *(a1 + 8);
  *(a1 + 8) = v8;
  *(a1 + 9) = v7;
  outlined consume of Environment<CGFloat?>.Content(v9, v11, v10);
  v12 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  v13 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  LOBYTE(v6) = *(v13 + 9);
  v15 = *(v13 + 8);
  outlined copy of Environment<CGFloat?>.Content(*v13, v15, v6);
  v16 = *v12;
  v17 = *(v12 + 9);
  *v12 = v14;
  v18 = *(v12 + 8);
  *(v12 + 8) = v15;
  *(v12 + 9) = v6;
  outlined consume of Environment<CGFloat?>.Content(v16, v18, v17);
  v19 = (v12 + 17) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v13 + 17) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  LOBYTE(v6) = *(v20 + 8);
  outlined copy of Environment<Selector?>.Content(*v20, v6);
  v22 = *v19;
  v23 = *(v19 + 8);
  *v19 = v21;
  *(v19 + 8) = v6;
  outlined consume of Environment<Selector?>.Content(v22, v23);
  v24 = *(a3 + 24);
  v25 = *(v24 - 8);
  v26 = *(v25 + 80);
  v27 = (v26 | 7) + 9;
  v28 = ((v27 + v19) & ~(v26 | 7));
  v29 = v27 + v20;
  v30 = (v29 & ~(v26 | 7));
  v31 = *(v25 + 84);
  v32 = ~v26;
  v33 = (v26 + 16) & ~v26;
  v34 = *(v25 + 64);
  v35 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v31 & 0x80000000) != 0)
  {
    v50 = v29 & ~(v26 | 7);
    v43 = *(v25 + 48);
    v49 = *(*(v24 - 8) + 64);
    v48 = v43((v35 + v26 + 8) & ~v26, v31, v24);
    v36 = ((v50 + 15) & 0xFFFFFFFFFFFFFFF8);
    v32 = ~v26;
    v38 = v43((v36 + v26 + 8) & ~v26, v31, v24);
    v34 = v49;
    v33 = (v26 + 16) & ~v26;
    v35 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
    v30 = v50;
    if (!v48)
    {
LABEL_5:
      v39 = v35;
      if (!v38)
      {
        *v28 = *v30;

        *v39 = *v36;

        (*(v25 + 24))((v39 + v26 + 8) & v32, (v36 + v26 + 8) & v32, v24);
        return a1;
      }

      v40 = v33;
      v41 = v34;

      (*(v25 + 8))((v39 + v26 + 8) & v32, v24);
      v42 = v40 + v41;
      goto LABEL_10;
    }
  }

  else
  {
    v36 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
    v37 = *v36;
    if (*v36 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v37) = -1;
    }

    v38 = v37 + 1;
    if (*v35 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v38)
  {
    *v28 = *v30;
    *v35 = *v36;
    v44 = v24;
    v45 = v35 + v26 + 8;
    v46 = *(v25 + 16);

    v46(v45 & v32, (v36 + v26 + 8) & v32, v44);
    return a1;
  }

  v42 = v33 + v34;
LABEL_10:
  memcpy(v28, v30, v42);
  return a1;
}

uint64_t initializeWithTake for SidebarListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  *(v4 + 8) = *(v5 + 8);
  *v4 = v6;
  v7 = (v4 + 17) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v5 + 17) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  v10 = *(a3 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v12 | 7) + 9;
  v14 = ((v13 + v7) & ~(v12 | 7));
  v15 = ((v13 + v8) & ~(v12 | 7));
  v16 = ~v12;
  v17 = *(v11 + 64);
  v18 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v11 + 84) & 0x80000000) == 0)
  {
    v19 = *v18;
    if (*v18 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    if (v19 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v14 = *v15;
    v20 = (v14 + 15);
    *(v20 & 0xFFFFFFFFFFFFFFF8) = *v18;
    (*(v11 + 32))((v12 + 8 + (v20 & 0xFFFFFFFFFFFFFFF8)) & v16, (v18 + v12 + 8) & v16, v10);
    return a1;
  }

  if (!(*(v11 + 48))((v18 + v12 + 8) & v16))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v14, v15, ((v12 + 16) & ~v12) + v17);
  return a1;
}

uint64_t assignWithTake for SidebarListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  v8 = *a1;
  v9 = *(a1 + 9);
  *a1 = *a2;
  v10 = *(a1 + 8);
  *(a1 + 8) = v6;
  *(a1 + 9) = v7;
  outlined consume of Environment<CGFloat?>.Content(v8, v10, v9);
  v11 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  v12 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 8);
  v14 = *(v12 + 9);
  v15 = *v11;
  v16 = *(v11 + 9);
  *v11 = *v12;
  v17 = *(v11 + 8);
  *(v11 + 8) = v13;
  *(v11 + 9) = v14;
  outlined consume of Environment<CGFloat?>.Content(v15, v17, v16);
  v18 = (v11 + 17) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v12 + 17) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v19 + 8);
  v21 = *v18;
  v22 = *(v18 + 8);
  *v18 = *v19;
  *(v18 + 8) = v20;
  outlined consume of Environment<Selector?>.Content(v21, v22);
  v23 = *(a3 + 24);
  v24 = *(v23 - 8);
  v25 = *(v24 + 80);
  v26 = (v25 | 7) + 9;
  v27 = ((v26 + v18) & ~(v25 | 7));
  v28 = v26 + v19;
  v29 = (v28 & ~(v25 | 7));
  v30 = *(v24 + 84);
  v31 = ~v25;
  v32 = (v25 + 16) & ~v25;
  v33 = *(v24 + 64);
  v34 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v30 & 0x80000000) != 0)
  {
    v46 = v28 & ~(v25 | 7);
    v45 = v27;
    v41 = *(v24 + 48);
    v44 = *(v24 + 64);
    v43 = v41((v34 + v25 + 8) & ~v25, v30, v23);
    v35 = ((v46 + 15) & 0xFFFFFFFFFFFFFFF8);
    v31 = ~v25;
    v37 = v41((v35 + v25 + 8) & ~v25, v30, v23);
    v33 = v44;
    v32 = (v25 + 16) & ~v25;
    v27 = v45;
    v29 = v46;
    if (!v43)
    {
LABEL_5:
      if (!v37)
      {
        *v27 = *v29;

        *v34 = *v35;

        (*(v24 + 40))((v34 + v25 + 8) & v31, (v35 + v25 + 8) & v31, v23);
        return a1;
      }

      v38 = v32;
      v39 = v33;

      (*(v24 + 8))((v34 + v25 + 8) & v31, v23);
      v40 = v38 + v39;
      goto LABEL_10;
    }
  }

  else
  {
    v35 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
    v36 = *v35;
    if (*v35 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v36) = -1;
    }

    v37 = v36 + 1;
    if (*v34 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v37)
  {
    *v27 = *v29;
    *v34 = *v35;
    (*(v24 + 32))((v34 + v25 + 8) & v31, (v35 + v25 + 8) & v31, v23);
    return a1;
  }

  v40 = v32 + v33;
LABEL_10:
  memcpy(v27, v29, v40);
  return a1;
}

uint64_t getEnumTagSinglePayload for SidebarListBody.TableViewRoot(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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
  if (v7 - 1 >= a2)
  {
    goto LABEL_28;
  }

  v9 = *(*(*(a3 + 24) - 8) + 64) - ((-17 - v6) | v6) - ((-42 - v8) | v8) - 2;
  v10 = 8 * v9;
  if (v9 > 3)
  {
    goto LABEL_7;
  }

  v13 = (((1 << v10) + a2 - v7) >> v10) + 1;
  if (HIWORD(v13))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_15;
    }

LABEL_28:
    v17 = ((((((((a1 + 17) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + v8 + 9) & ~v8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      v19 = (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    else
    {
      v18 = *v17;
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      v19 = v18 + 1;
    }

    if (v19 >= 2)
    {
      return v19 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v13 > 0xFF)
  {
    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  if (v13 < 2)
  {
    goto LABEL_28;
  }

LABEL_7:
  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_28;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (*(*(*(a3 + 24) - 8) + 64) - ((-17 - v6) | v6) - ((-42 - v8) | v8) == 2)
  {
    v16 = 0;
  }

  else
  {
    if (v9 <= 3)
    {
      v15 = *(*(*(a3 + 24) - 8) + 64) - ((-17 - v6) | v6) - ((-42 - v8) | v8) - 2;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v16 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v16 = *a1;
      }
    }

    else if (v15 == 1)
    {
      v16 = *a1;
    }

    else
    {
      v16 = *a1;
    }
  }

  return (v16 | v14) + v7;
}

void storeEnumTagSinglePayload for SidebarListBody.TableViewRoot(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = v8 - 1;
  v10 = *(v6 + 80);
  v11 = -2 - (((-42 - (v10 | 7)) | v10 | 7) + ((-17 - v10) | v10) - *(*(*(a4 + 24) - 8) + 64));
  if (v8 - 1 >= a3)
  {
    v12 = 0;
LABEL_16:
    if (v9 >= a2)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v12 = 1;
  if (v11 > 3)
  {
    goto LABEL_16;
  }

  v13 = (((1 << (8 * v11)) + a3 - v8) >> (8 * v11)) + 1;
  if (HIWORD(v13))
  {
    v12 = 4;
    if (v9 >= a2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    if (v9 >= a2)
    {
LABEL_26:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v11] = 0;
      }

      else if (v12)
      {
        a1[v11] = 0;
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
      v18 = ((((((((a1 + 17) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + (v10 | 7) + 9) & ~(v10 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v19 = *(v6 + 56);
        v20 = a2 + 1;

        v19((v18 + v10 + 8) & ~v10, v20);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v18 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v18 = a2;
      }

      return;
    }
  }

LABEL_17:
  v15 = a2 - v8;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v15;
    v16 = 1;
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v16 = (v15 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_43:
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v17 = v15 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v17;
    a1[2] = BYTE2(v17);
    goto LABEL_43;
  }

  if (v11 == 2)
  {
    *a1 = v17;
    if (v12 > 1)
    {
LABEL_47:
      if (v12 == 2)
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
    if (v12 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v12)
  {
    a1[v11] = v16;
  }
}

unint64_t initializeBufferWithCopyOfBuffer for SidebarListBody.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 80);
  v7 = *(v4 - 8);
  v8 = *(v7 + 80);
  if ((v8 | v6) <= 7 && ((*(v7 + 80) | *(v5 + 80)) & 0x100000) == 0 && ((((-115 - v6) | v6) - (*(*(*(a3 + 16) - 8) + 64) + (v8 | 7))) | v8 | 7) - (((v8 + 16) & ~v8) + *(*(v4 - 8) + 64)) >= 0xFFFFFFFFFFFFFFE7)
  {
    __n = ((v8 + 16) & ~v8) + *(*(v4 - 8) + 64);
    v53 = *(v4 - 8);
    v54 = *(a3 + 24);
    v13 = *a2;
    v14 = *(a2 + 8);
    v49 = *(*(a3 + 16) - 8);
    v50 = *(a3 + 16);
    v15 = a2;
    v52 = *(v7 + 84);
    v51 = *(v49 + 64);
    outlined copy of Environment<Selector?>.Content(*a2, v14);
    *a1 = v13;
    *(a1 + 8) = v14;
    v55 = a1;
    v16 = a1 & 0xFFFFFFFFFFFFFFF8;
    v15 &= 0xFFFFFFFFFFFFFFF8;
    v17 = *(v15 + 16);
    v18 = *(v15 + 25);
    v19 = *(v15 + 24);
    outlined copy of Environment<CGFloat?>.Content(v17, v19, v18);
    *(v16 + 16) = v17;
    *(v16 + 24) = v19;
    *(v16 + 25) = v18;
    v20 = (v16 + 33) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v15 + 33) & 0xFFFFFFFFFFFFFFF8;
    v22 = *v21;
    v23 = *(v21 + 8);
    outlined copy of Environment<Selector?>.Content(*v21, v23);
    *v20 = v22;
    *(v20 + 8) = v23;
    v24 = (v16 + 49) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v15 + 49) & 0xFFFFFFFFFFFFFFF8;
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    v29 = *(v25 + 24);
    v31 = *(v25 + 32);
    v30 = *(v25 + 40);
    v32 = *(v25 + 56);
    v46 = *(v25 + 48);
    v47 = *(v25 + 64);
    v48 = *(v25 + 65);
    outlined copy of Environment<ListPadding>.Content(*v25, v27, v28, v29, v31, v30, v46, v32, v47, v48);
    *v24 = v26;
    *(v24 + 8) = v27;
    *(v24 + 16) = v28;
    *(v24 + 24) = v29;
    *(v24 + 32) = v31;
    *(v24 + 40) = v30;
    *(v24 + 48) = v46;
    *(v24 + 56) = v32;
    *(v24 + 64) = v47;
    *(v24 + 65) = v48;
    v33 = (v25 + v6 + 66) & ~v6;
    (*(v49 + 16))((v24 + v6 + 66) & ~v6, v33, v50);
    v34 = v51 + 7 + ((v24 + v6 + 66) & ~v6);
    v35 = ((v51 + 7 + v33) & 0xFFFFFFFFFFFFFFF8);
    v36 = ((v35 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v52 < 0)
    {
      v39 = v53;
      v38 = v54;
      v41 = (*(v53 + 48))(v36 + 1);
      v40 = (v34 & 0xFFFFFFFFFFFFFFF8);
      if (v41)
      {
LABEL_13:
        memcpy(v40, v35, __n);
        return v55;
      }
    }

    else
    {
      v37 = *v36;
      if (*v36 >= 0xFFFFFFFF)
      {
        LODWORD(v37) = -1;
      }

      v39 = v53;
      v38 = v54;
      v40 = (v34 & 0xFFFFFFFFFFFFFFF8);
      if (v37 != -1)
      {
        goto LABEL_13;
      }
    }

    *v40 = *v35;
    v42 = ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v42 = *v36;
    v43 = *(v39 + 16);

    v43(v42 + 1, v36 + 1, v38);
    return v55;
  }

  v11 = *a2;
  *a1 = *a2;
  v12 = v11 + (((v8 | v6) & 0xF8 ^ 0x1F8) & ((v8 | v6) + 16));

  return v12;
}

uint64_t assignWithCopy for SidebarListBody.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v6;
  outlined consume of Environment<Selector?>.Content(v7, v8);
  v68 = a1;
  a1 &= 0xFFFFFFFFFFFFFFF8;
  v9 = a2 & 0xFFFFFFFFFFFFFFF8;
  v10 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  LOBYTE(v5) = *(v9 + 25);
  v11 = *(v9 + 24);
  outlined copy of Environment<CGFloat?>.Content(v10, v11, v5);
  v12 = *(a1 + 16);
  v13 = *(a1 + 25);
  *(a1 + 16) = v10;
  v14 = *(a1 + 24);
  *(a1 + 24) = v11;
  *(a1 + 25) = v5;
  outlined consume of Environment<CGFloat?>.Content(v12, v14, v13);
  v15 = (a1 + 33) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v9 + 33) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  LOBYTE(v5) = *(v16 + 8);
  outlined copy of Environment<Selector?>.Content(*v16, v5);
  v18 = *v15;
  v19 = *(v15 + 8);
  *v15 = v17;
  *(v15 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v18, v19);
  v20 = (v9 + 49) & 0xFFFFFFFFFFFFFFF8;
  v65 = *(v20 + 8);
  v66 = *v20;
  v21 = (a1 + 49) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v20 + 16);
  v23 = *(v20 + 24);
  v24 = *(v20 + 32);
  v25 = *(v20 + 40);
  v26 = *(v20 + 48);
  v27 = *(v20 + 56);
  LOBYTE(v17) = *(v20 + 64);
  LOBYTE(v5) = *(v20 + 65);
  outlined copy of Environment<ListPadding>.Content(*v20, v65, v22, v23, v24, v25, v26, v27, v17, v5);
  v28 = *v21;
  v29 = *(v21 + 8);
  v30 = *(v21 + 16);
  v31 = *(v21 + 24);
  v32 = *(v21 + 32);
  v33 = *(v21 + 40);
  v34 = *(v21 + 48);
  v35 = *(v21 + 56);
  v36 = *(v21 + 64);
  v37 = *(v21 + 65);
  *v21 = v66;
  *(v21 + 8) = v65;
  *(v21 + 16) = v22;
  *(v21 + 24) = v23;
  *(v21 + 32) = v24;
  *(v21 + 40) = v25;
  *(v21 + 48) = v26;
  *(v21 + 56) = v27;
  *(v21 + 64) = v17;
  *(v21 + 65) = v5;
  outlined consume of Environment<ListPadding>.Content(v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  v38 = *(*(a3 + 16) - 8);
  v39 = v38 + 24;
  v40 = *(v38 + 80);
  v41 = (v40 + 66 + v21) & ~v40;
  v42 = (v40 + 66 + v20) & ~v40;
  (*(v38 + 24))(v41, v42);
  v43 = *(a3 + 24);
  v44 = *(v43 - 8);
  v45 = *(v44 + 80);
  v46 = (v45 | 7) + *(v39 + 40);
  v47 = ((v46 + v41) & ~(v45 | 7));
  v48 = ((v46 + v42) & ~(v45 | 7));
  v49 = *(v44 + 84);
  v50 = ~v45;
  v51 = (v45 + 16) & ~v45;
  v52 = *(v44 + 64);
  v53 = ((v47 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v49 & 0x80000000) != 0)
  {
    v64 = *(v44 + 64);
    v59 = v48;
    v60 = *(v44 + 48);
    v63 = v60((v53 + v45 + 8) & ~v45, v49, v43);
    v54 = ((v59 + 15) & 0xFFFFFFFFFFFFFFF8);
    v50 = ~v45;
    v56 = v60((v54 + v45 + 8) & ~v45, v49, v43);
    v53 = ((v47 + 15) & 0xFFFFFFFFFFFFFFF8);
    v48 = v59;
    v52 = v64;
    v51 = (v45 + 16) & ~v45;
    if (!v63)
    {
LABEL_5:
      if (!v56)
      {
        *v47 = *v48;

        *v53 = *v54;

        (*(v44 + 24))((v53 + v45 + 8) & v50, (v54 + v45 + 8) & v50, v43);
        return v68;
      }

      v57 = v52;

      (*(v44 + 8))((v53 + v45 + 8) & v50, v43);
      v58 = v51 + v57;
      goto LABEL_10;
    }
  }

  else
  {
    v54 = ((v48 + 15) & 0xFFFFFFFFFFFFFFF8);
    v55 = *v54;
    if (*v54 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v55) = -1;
    }

    v56 = v55 + 1;
    if (*v53 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v56)
  {
    *v47 = *v48;
    *v53 = *v54;
    v61 = *(v44 + 16);

    v61((v53 + v45 + 8) & v50, (v54 + v45 + 8) & v50, v43);
    return v68;
  }

  v58 = v51 + v52;
LABEL_10:
  memcpy(v47, v48, v58);
  return v68;
}

uint64_t initializeWithTake for SidebarListBody.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v5 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v5 + 16) = v6;
  v7 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v8 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  v10 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8;
  v11 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v11 + 32);
  v12 = *(v11 + 48);
  v14 = *(v11 + 16);
  *(v10 + 64) = *(v11 + 64);
  *(v10 + 32) = v13;
  *(v10 + 48) = v12;
  *(v10 + 16) = v14;
  *v10 = *v11;
  v15 = *(*(a3 + 16) - 8);
  v16 = v15 + 32;
  v17 = *(v15 + 80);
  v18 = (v17 + 66 + v10) & ~v17;
  v19 = (v17 + 66 + v11) & ~v17;
  (*(v15 + 32))(v18, v19);
  v20 = *(a3 + 24);
  v21 = *(v16 + 32);
  v22 = *(v20 - 8);
  v23 = *(v22 + 80);
  v24 = (v23 | 7) + v21;
  v25 = ((v24 + v18) & ~(v23 | 7));
  v26 = ((v24 + v19) & ~(v23 | 7));
  v27 = ~v23;
  v28 = *(v22 + 64);
  v29 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v22 + 84) & 0x80000000) == 0)
  {
    v30 = *v29;
    if (*v29 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    if (v30 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v25 = *v26;
    v31 = (v25 + 15);
    *(v31 & 0xFFFFFFFFFFFFFFF8) = *v29;
    (*(v22 + 32))((v23 + 8 + (v31 & 0xFFFFFFFFFFFFFFF8)) & v27, (v29 + v23 + 8) & v27, v20);
    return a1;
  }

  if (!(*(v22 + 48))((v29 + v23 + 8) & v27))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v25, v26, ((v23 + 16) & ~v23) + v28);
  return a1;
}

uint64_t assignWithTake for SidebarListBody.CollectionViewBody(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  v10 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = (v4 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v4 + 24);
  v12 = *(v4 + 25);
  v13 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  v14 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 25);
  *(v10 + 16) = v4[2];
  v15 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v10 + 24) = v11;
  *(v10 + 25) = v12;
  outlined consume of Environment<CGFloat?>.Content(v13, v15, v14);
  v16 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v4 + 33) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  LOBYTE(v17) = *(v17 + 8);
  v19 = *v16;
  v20 = *(v16 + 8);
  *v16 = v18;
  *(v16 + 8) = v17;
  outlined consume of Environment<Selector?>.Content(v19, v20);
  v21 = (v4 + 49) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v21 + 64);
  v23 = *(v21 + 65);
  v24 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8;
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  v28 = *(v24 + 24);
  v29 = *(v24 + 32);
  v30 = *(v24 + 40);
  v31 = *(v24 + 48);
  v32 = *(v24 + 56);
  v33 = *(v24 + 64);
  v34 = *(v24 + 65);
  v35 = *(v21 + 16);
  v36 = *(v21 + 32);
  v37 = *(v21 + 48);
  *v24 = *v21;
  *(v24 + 16) = v35;
  *(v24 + 32) = v36;
  *(v24 + 48) = v37;
  *(v24 + 64) = v22;
  *(v24 + 65) = v23;
  outlined consume of Environment<ListPadding>.Content(v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  v38 = *(*(a3 + 16) - 8);
  v39 = v38 + 40;
  v40 = *(v38 + 80);
  v41 = (v40 + 66 + v24) & ~v40;
  v42 = (v40 + 66 + v21) & ~v40;
  (*(v38 + 40))(v41, v42);
  v43 = *(a3 + 24);
  v44 = *(v43 - 8);
  v45 = *(v44 + 80);
  v46 = (v45 | 7) + *(v39 + 24);
  v47 = ((v46 + v41) & ~(v45 | 7));
  v48 = ((v46 + v42) & ~(v45 | 7));
  v49 = *(v44 + 84);
  v50 = (v45 + 16) & ~v45;
  v51 = *(v44 + 64);
  v52 = ((v47 + 15) & 0xFFFFFFFFFFFFFFF8);
  v63 = ~v45;
  if ((v49 & 0x80000000) != 0)
  {
    v62 = v48;
    v58 = *(v44 + 48);
    v61 = *(v44 + 64);
    v60 = v58((v52 + v45 + 8) & ~v45, v49, v43);
    v53 = ((v62 + 15) & 0xFFFFFFFFFFFFFFF8);
    v55 = v58((v53 + v45 + 8) & ~v45, v49, v43);
    v51 = v61;
    v50 = (v45 + 16) & ~v45;
    v48 = v62;
    if (!v60)
    {
LABEL_5:
      if (!v55)
      {
        *v47 = *v48;

        *v52 = *v53;

        (*(v44 + 40))((v52 + v45 + 8) & v63, (v53 + v45 + 8) & v63, v43);
        return a1;
      }

      v56 = v51;

      (*(v44 + 8))((v52 + v45 + 8) & v63, v43);
      v57 = v50 + v56;
      goto LABEL_10;
    }
  }

  else
  {
    v53 = ((v48 + 15) & 0xFFFFFFFFFFFFFFF8);
    v54 = *v53;
    if (*v53 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v54) = -1;
    }

    v55 = v54 + 1;
    if (*v52 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v55)
  {
    *v47 = *v48;
    *v52 = *v53;
    (*(v44 + 32))((v52 + v45 + 8) & v63, (v53 + v45 + 8) & v63, v43);
    return a1;
  }

  v57 = v50 + v51;
LABEL_10:
  memcpy(v47, v48, v57);
  return a1;
}

uint64_t getEnumTagSinglePayload for SidebarListBody.CollectionViewBody(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = v11 - 1;
  v13 = *(v6 + 80);
  v14 = *(*(v5 - 8) + 64);
  v15 = *(v8 + 80);
  if (v7 <= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = *(v6 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v15 | 7;
  v18 = a2 - v16;
  if (a2 <= v16)
  {
    goto LABEL_31;
  }

  v19 = *(*(*(a3 + 24) - 8) + 64) - ((-17 - v15) | v15) - ((((-115 - v13) | v13) - (v14 + v17)) | v17) - 2;
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((v18 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v23 < 2)
    {
LABEL_31:
      v27 = ((((a1 & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + v13 + 66) & ~v13;
      if (v7 >= v12)
      {
        v31 = *(v6 + 48);

        return v31(v27, v7, v5);
      }

      else
      {
        v28 = ((((v27 + v14 + v17) & ~v17) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v10 & 0x80000000) != 0)
        {
          v30 = (*(v9 + 48))((v28 + v15 + 8) & ~v15);
        }

        else
        {
          v29 = *v28;
          if (v29 >= 0xFFFFFFFF)
          {
            LODWORD(v29) = -1;
          }

          v30 = v29 + 1;
        }

        if (v30 >= 2)
        {
          return v30 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_31;
  }

LABEL_18:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (*(*(*(a3 + 24) - 8) + 64) - ((-17 - v15) | v15) - ((((-115 - v13) | v13) - (v14 + v17)) | v17) == 2)
  {
    v26 = 0;
  }

  else
  {
    if (v19 <= 3)
    {
      v25 = *(*(*(a3 + 24) - 8) + 64) - ((-17 - v15) | v15) - ((((-115 - v13) | v13) - (v14 + v17)) | v17) - 2;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  return v16 + (v26 | v24) + 1;
}

void storeEnumTagSinglePayload for SidebarListBody.CollectionViewBody(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v9 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v8 + 84);
  }

  v14 = v13 - 1;
  if (v7 <= v13 - 1)
  {
    v15 = v13 - 1;
  }

  else
  {
    v15 = *(v6 + 84);
  }

  v16 = v12 | 7;
  v17 = ((v12 + 16) & ~v12) + *(v8 + 64);
  v18 = (((v12 | 7) + v11 + ((v10 + 114) & ~v10)) & ~(v12 | 7)) + v17;
  v19 = a3 >= v15;
  v20 = a3 - v15;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v24 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v24))
      {
        v21 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v21 = v25;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v15 < a2)
  {
    v22 = ~v15 + a2;
    if (v18 >= 4)
    {
      bzero(a1, v18);
      *a1 = v22;
      v23 = 1;
      if (v21 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_60;
    }

    v23 = (v22 >> (8 * v18)) + 1;
    if (v18)
    {
      v26 = v22 & ~(-1 << (8 * v18));
      bzero(a1, v18);
      if (v18 != 3)
      {
        if (v18 == 2)
        {
          *a1 = v26;
          if (v21 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v22;
          if (v21 > 1)
          {
LABEL_14:
            if (v21 == 2)
            {
              *(a1 + v18) = v23;
            }

            else
            {
              *(a1 + v18) = v23;
            }

            return;
          }
        }

LABEL_60:
        if (v21)
        {
          *(a1 + v18) = v23;
        }

        return;
      }

      *a1 = v26;
      *(a1 + 2) = BYTE2(v26);
    }

    if (v21 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_60;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *(a1 + v18) = 0;
  }

  else if (v21)
  {
    *(a1 + v18) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  v27 = ((((a1 & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + v10 + 66) & ~v10;
  if (v7 >= v14)
  {
    v32 = *(v6 + 56);

    v32(v27);
  }

  else
  {
    v28 = (v27 + v11 + v16) & ~v16;
    if (v14 >= a2)
    {
      if (a2 >= v13)
      {
        if (v17 <= 3)
        {
          v34 = ~(-1 << (8 * v17));
        }

        else
        {
          v34 = -1;
        }

        if (v17)
        {
          v30 = v34 & (a2 - v13);
          if (v17 <= 3)
          {
            v31 = v17;
          }

          else
          {
            v31 = 4;
          }

          bzero(((v27 + v11 + v16) & ~v16), v17);
          if (v31 <= 2)
          {
            if (v31 == 1)
            {
              goto LABEL_46;
            }

            goto LABEL_74;
          }

LABEL_75:
          if (v31 == 3)
          {
            *v28 = v30;
            *(v28 + 2) = BYTE2(v30);
          }

          else
          {
            *v28 = v30;
          }
        }
      }

      else
      {
        v33 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v9 & 0x80000000) != 0)
        {
          v35 = *(v8 + 56);
          v36 = a2 + 1;

          v35((v33 + v12 + 8) & ~v12, v36);
        }

        else if (((a2 + 1) & 0x80000000) != 0)
        {
          *v33 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v33 = a2;
        }
      }
    }

    else
    {
      if (v17 <= 3)
      {
        v29 = ~(-1 << (8 * v17));
      }

      else
      {
        v29 = -1;
      }

      if (v17)
      {
        v30 = v29 & (a2 - v13);
        if (v17 <= 3)
        {
          v31 = v17;
        }

        else
        {
          v31 = 4;
        }

        bzero(((v27 + v11 + v16) & ~v16), v17);
        if (v31 <= 2)
        {
          if (v31 == 1)
          {
LABEL_46:
            *v28 = v30;
            return;
          }

LABEL_74:
          *v28 = v30;
          return;
        }

        goto LABEL_75;
      }
    }
  }
}

uint64_t instantiation function for generic protocol witness table for SidebarListBody<A, B>.TableViewRoot(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>()
{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v4>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v7>, MEMORY[0x1E697DF70], MEMORY[0x1E697DF68], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>)
  {
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v7>, MEMORY[0x1E697DF70], MEMORY[0x1E697DF68], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _DUIPreviewMode(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for _SemanticFeature<Semantics_v4>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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