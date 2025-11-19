__n128 __swift_memcpy67_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for TableHeaderView(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      *a1 = *a2;

      *(a1 + 8) = v4;

      *(a1 + 16) = *(a2 + 16);

      if (a1 == a2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    outlined destroy of Binding<[SwiftUIAnySortComparator]>(a1, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  if (a1 != a2)
  {
LABEL_7:
    outlined destroy of TableColumnCollection.Backing(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 49) = *(a2 + 49);
  }

LABEL_8:
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 66) = *(a2 + 66);
  return a1;
}

uint64_t storeEnumTagSinglePayload for TableHeaderView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 67) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 67) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance TableHeaderView@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  outlined init with copy of TableColumnCollection(v1 + 24, a1 + 80);
  v6 = *(v1 + 65);
  v7 = *(v1 + 66);
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  *(a1 + 24) = KeyPath;
  *(a1 + 32) = 0;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 56) = v3;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  *(a1 + 121) = v6;
  *(a1 + 122) = v7;

  return outlined copy of Binding<[SwiftUIAnySortComparator]>?(v3, v4);
}

uint64_t TableHeaderViewCore.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  type metadata accessor for ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, type metadata accessor for ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - v9;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>();
  v40 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, StyleContextWriter<TableStyleContext>>();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = static VerticalAlignment.firstTextBaseline.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  type metadata accessor for _VariadicView.Tree<_HStackLayout, _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>();
  closure #1 in TableHeaderViewCore.body.getter(v2, &v6[*(v21 + 44)]);
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = &v6[*(v4 + 44)];
  *v24 = KeyPath;
  v24[8] = 0;
  *(v24 + 2) = v23;
  *(v24 + 12) = 0;
  specialized Environment.wrappedValue.getter(*(v2 + 16), *(v2 + 24));
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v6, v10, type metadata accessor for ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>);
  v33 = &v10[*(v8 + 36)];
  *v33 = 2;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  if (one-time initialization token for tableHeaderFont != -1)
  {
    swift_once();
  }

  v34 = static ListMetrics.tableHeaderFont;
  v35 = swift_getKeyPath();
  outlined init with take of ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(v10, v13);
  v36 = &v13[*(v40 + 36)];
  *v36 = v35;
  v36[1] = v34;
  v37 = swift_getKeyPath();
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v13, v17, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>);
  v38 = &v17[*(v15 + 36)];
  *v38 = v37;
  *(v38 + 1) = 1;
  v38[16] = 0;
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v17, v20, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>);
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v20, v41, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, StyleContextWriter<TableStyleContext>>);
}

uint64_t closure #1 in TableHeaderViewCore.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v122 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v118 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for StaticTableHeaderButton(0);
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for SortableTableHeaderButton(0);
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(0, &lazy cache variable for type metadata for _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>, type metadata accessor for SortableTableHeaderButton, type metadata accessor for StaticTableHeaderButton, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v114 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v121 = &v110 - v12;
  type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>();
  v128 = v13;
  v124 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v113 = (&v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v120 = &v110 - v16;
  type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v119 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v125 = &v110 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v110 - v22;
  type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v123 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TableColumnCollection.Entry?(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v110 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v110 - v33;
  v127 = type metadata accessor for TableColumnCollection.Entry(0);
  v35 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v117 = &v110 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v110 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v110 - v41;
  outlined init with copy of TableColumnCollection(a1 + 56, v144);
  specialized Collection.dropFirst(_:)(1, v161);
  v129 = a1;
  if (*(a1 + 97))
  {
    if (*(a1 + 97) == 1)
    {
      specialized Collection.first.getter(v34);
      v43 = v127;
      if ((*(v35 + 48))(v34, 1, v127) == 1)
      {
        outlined destroy of Binding<[SwiftUIAnySortComparator]>(v34, type metadata accessor for TableColumnCollection.Entry?);
        _s7SwiftUI15ModifiedContentVyACyAA5ColorVAA16_FlexFrameLayoutVGAA01_gH0VGSgWOi0_(&v150);
      }

      else
      {
        outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v34, v42, type metadata accessor for TableColumnCollection.Entry);
        v59 = static Color.clear.getter();
        v60 = &v42[*(v43 + 28)];
        v163 = v60[32];
        v61 = *(v60 + 1);
        v162[0] = *v60;
        v162[1] = v61;
        specialized View.tableColumnFrame(_:alignment:)(v162, v42[*(v43 + 36)], v59, v130);

        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        outlined destroy of Binding<[SwiftUIAnySortComparator]>(v42, type metadata accessor for TableColumnCollection.Entry);
        v144[8] = v130[8];
        v144[9] = v130[9];
        *&v144[10] = v131;
        v144[4] = v130[4];
        v144[5] = v130[5];
        v144[6] = v130[6];
        v144[7] = v130[7];
        v144[0] = v130[0];
        v144[1] = v130[1];
        v144[2] = v130[2];
        v144[3] = v130[3];
        destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v144, v62, v63, v64);
        v158 = v144[8];
        v159 = v144[9];
        v160 = *&v144[10];
        v154 = v144[4];
        v155 = v144[5];
        v157 = v144[7];
        v156 = v144[6];
        v150 = v144[0];
        v151 = v144[1];
        v153 = v144[3];
        v152 = v144[2];
      }

      v51 = v126;
      v65 = v123;
      outlined init with copy of Slice<TableColumnCollection>(v161, v148);
      outlined init with copy of TableHeaderViewCore(v129, v144);
      v66 = swift_allocObject();
      v67 = v144[5];
      *(v66 + 80) = v144[4];
      *(v66 + 96) = v67;
      *(v66 + 111) = *(&v144[5] + 15);
      v68 = v144[1];
      *(v66 + 16) = v144[0];
      *(v66 + 32) = v68;
      v69 = v144[3];
      *(v66 + 48) = v144[2];
      *(v66 + 64) = v69;
      type metadata accessor for VStack<TableHeaderViewCore>(0, &lazy cache variable for type metadata for Slice<TableColumnCollection>, lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection, &type metadata for TableColumnCollection, MEMORY[0x1E69E74D0]);
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type Slice<TableColumnCollection> and conformance <> Slice<A>();
      lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>> and conformance VStack<A>, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>);
      lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type TableColumnCollection.Entry and conformance TableColumnCollection.Entry, type metadata accessor for TableColumnCollection.Entry);
      ForEach<>.init(_:content:)();
      v141 = v158;
      v142 = v159;
      v143 = v160;
      v137 = v154;
      v138 = v155;
      v139 = v156;
      v140 = v157;
      v133 = v150;
      v134 = v151;
      v135 = v152;
      v136 = v153;
      outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v145, v132, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>);
      v146[8] = v141;
      v146[9] = v142;
      v146[4] = v137;
      v146[5] = v138;
      v146[7] = v140;
      v146[6] = v139;
      v146[0] = v133;
      v146[1] = v134;
      v146[3] = v136;
      v146[2] = v135;
      v144[8] = v141;
      v144[9] = v142;
      v144[4] = v137;
      v144[5] = v138;
      v144[6] = v139;
      v144[7] = v140;
      v144[0] = v133;
      v144[1] = v134;
      v147 = v143;
      *&v144[10] = v143;
      v144[2] = v135;
      v144[3] = v136;
      outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v132, &v144[10] + 8, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>);
      outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v146, v148, type metadata accessor for ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?);
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(v145, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>);
      outlined destroy of Slice<TableColumnCollection>(v161);
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(v132, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>);
      v148[8] = v141;
      v148[9] = v142;
      v149 = v143;
      v148[4] = v137;
      v148[5] = v138;
      v148[7] = v140;
      v148[6] = v139;
      v148[0] = v133;
      v148[1] = v134;
      v148[3] = v136;
      v148[2] = v135;
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(v148, type metadata accessor for ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?);
      memcpy(v65, v144, 0x110uLL);
      v70 = MEMORY[0x1E697F948];
      type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(0, &lazy cache variable for type metadata for _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>.Storage, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>, MEMORY[0x1E697F948]);
      swift_storeEnumTagMultiPayload();
      v71 = v65;
      goto LABEL_21;
    }

    v54 = v129;
    specialized Collection.first.getter(v28);
    v55 = v127;
    if ((*(v35 + 48))(v28, 1, v127) == 1)
    {
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(v28, type metadata accessor for TableColumnCollection.Entry?);
      v56 = 1;
      v57 = v126;
      v58 = v119;
LABEL_25:
      (*(v124 + 56))(v58, v56, 1, v128);
      outlined init with copy of Slice<TableColumnCollection>(v161, &v150);
      outlined init with copy of TableHeaderViewCore(v54, v144);
      v102 = swift_allocObject();
      v103 = v144[5];
      *(v102 + 80) = v144[4];
      *(v102 + 96) = v103;
      *(v102 + 111) = *(&v144[5] + 15);
      v104 = v144[1];
      *(v102 + 16) = v144[0];
      *(v102 + 32) = v104;
      v105 = v144[3];
      *(v102 + 48) = v144[2];
      *(v102 + 64) = v105;
      type metadata accessor for VStack<TableHeaderViewCore>(0, &lazy cache variable for type metadata for Slice<TableColumnCollection>, lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection, &type metadata for TableColumnCollection, MEMORY[0x1E69E74D0]);
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type Slice<TableColumnCollection> and conformance <> Slice<A>();
      lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>> and conformance VStack<A>, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>);
      lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type TableColumnCollection.Entry and conformance TableColumnCollection.Entry, type metadata accessor for TableColumnCollection.Entry);
      ForEach<>.init(_:content:)();
      v106 = v125;
      outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v58, v125, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?);
      outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v144, &v150, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>);
      v107 = v122;
      outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v106, v122, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?);
      type metadata accessor for (ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)(0, &lazy cache variable for type metadata for (VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>), type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>);
      outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(&v150, v107 + *(v108 + 48), type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>);
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(v144, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>);
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(v58, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?);
      outlined destroy of Slice<TableColumnCollection>(v161);
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(&v150, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>);
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(v106, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?);
      outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v107, v57, type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>);
      type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(0, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>.Storage, type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, MEMORY[0x1E697F948]);
      return swift_storeEnumTagMultiPayload();
    }

    v81 = v117;
    outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v28, v117, type metadata accessor for TableColumnCollection.Entry);
    v82 = specialized Environment.wrappedValue.getter(*v54, *(v54 + 8));
    v83 = static HorizontalAlignment.center.getter();
    v84 = v113;
    *v113 = v83;
    *(v84 + 8) = 0;
    *(v84 + 16) = 1;
    v85 = *(v54 + 40);
    v57 = v126;
    v58 = v119;
    if (v85)
    {
      v86 = *(v54 + 32);
      v87 = *(v54 + 48);
      outlined init with copy of SwiftUIAnySortComparator?(v81 + *(v55 + 44), v144, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      if (*(&v144[1] + 1))
      {

        outlined destroy of AccessibilityTableContext?(v144, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
        v88 = v81;
        v89 = v112;
        outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v88, v112, type metadata accessor for TableColumnCollection.Entry);
        v90 = v111;
        *(v89 + *(v111 + 20)) = v82;
        v91 = (v89 + *(v90 + 24));
        *v91 = v86;
        v91[1] = v85;
        v91[2] = v87;
        *(v89 + *(v90 + 28)) = 0;
        v92 = v89;
        v81 = v117;
        v93 = v114;
        outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v92, v114, type metadata accessor for SortableTableHeaderButton);
LABEL_24:
        type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(0, &lazy cache variable for type metadata for _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>.Storage, type metadata accessor for SortableTableHeaderButton, type metadata accessor for StaticTableHeaderButton, MEMORY[0x1E697F948]);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for _VariadicView.Tree<_VStackLayout, _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>();
        outlined init with take of _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>(v93, v84 + *(v101 + 44));
        outlined destroy of Binding<[SwiftUIAnySortComparator]>(v81, type metadata accessor for TableColumnCollection.Entry);
        outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v84, v58, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>);
        v56 = 0;
        goto LABEL_25;
      }

      outlined destroy of AccessibilityTableContext?(v144, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    }

    v99 = v116;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v81, v116, type metadata accessor for TableColumnCollection.Entry);
    v93 = v114;
    v100 = v115;
    *(v99 + *(v115 + 20)) = v82;
    *(v99 + *(v100 + 24)) = 0;
    outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v99, v93, type metadata accessor for StaticTableHeaderButton);
    goto LABEL_24;
  }

  v44 = v39;
  v45 = v120;
  v46 = v121;
  v47 = v23;
  v48 = v129;
  specialized Collection.first.getter(v31);
  v49 = v127;
  if ((*(v35 + 48))(v31, 1, v127) != 1)
  {
    v72 = v44;
    outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v31, v44, type metadata accessor for TableColumnCollection.Entry);
    v73 = specialized Environment.wrappedValue.getter(*v48, *(v48 + 8));
    v74 = v45;
    *v45 = static HorizontalAlignment.center.getter();
    *(v45 + 1) = 0;
    v45[16] = 1;
    v75 = *(v48 + 40);
    if (v75)
    {
      v76 = *(v48 + 32);
      v77 = *(v48 + 48);
      outlined init with copy of SwiftUIAnySortComparator?(v72 + *(v49 + 44), v144, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      if (*(&v144[1] + 1))
      {

        outlined destroy of AccessibilityTableContext?(v144, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
        v78 = v112;
        outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v72, v112, type metadata accessor for TableColumnCollection.Entry);
        v79 = v111;
        *(v78 + *(v111 + 20)) = v73;
        v80 = (v78 + *(v79 + 24));
        *v80 = v76;
        v80[1] = v75;
        v80[2] = v77;
        *(v78 + *(v79 + 28)) = 0;
        outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v78, v46, type metadata accessor for SortableTableHeaderButton);
LABEL_19:
        type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(0, &lazy cache variable for type metadata for _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>.Storage, type metadata accessor for SortableTableHeaderButton, type metadata accessor for StaticTableHeaderButton, MEMORY[0x1E697F948]);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for _VariadicView.Tree<_VStackLayout, _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>();
        outlined init with take of _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>(v46, v74 + *(v96 + 44));
        outlined destroy of Binding<[SwiftUIAnySortComparator]>(v72, type metadata accessor for TableColumnCollection.Entry);
        outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v74, v47, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>);
        v50 = 0;
        v52 = v123;
        v53 = v118;
        v51 = v126;
        goto LABEL_20;
      }

      outlined destroy of AccessibilityTableContext?(v144, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    }

    v94 = v116;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v72, v116, type metadata accessor for TableColumnCollection.Entry);
    v95 = v115;
    *(v94 + *(v115 + 20)) = v73;
    *(v94 + *(v95 + 24)) = 0;
    outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v94, v46, type metadata accessor for StaticTableHeaderButton);
    goto LABEL_19;
  }

  outlined destroy of Binding<[SwiftUIAnySortComparator]>(v31, type metadata accessor for TableColumnCollection.Entry?);
  v50 = 1;
  v51 = v126;
  v52 = v123;
  v53 = v118;
LABEL_20:
  (*(v124 + 56))(v47, v50, 1, v128);
  outlined init with copy of Slice<TableColumnCollection>(v161, &v150);
  type metadata accessor for VStack<TableHeaderViewCore>(0, &lazy cache variable for type metadata for Slice<TableColumnCollection>, lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection, &type metadata for TableColumnCollection, MEMORY[0x1E69E74D0]);
  type metadata accessor for UUID();
  type metadata accessor for ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>();
  lazy protocol witness table accessor for type Slice<TableColumnCollection> and conformance <> Slice<A>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>, lazy protocol witness table accessor for type ModifiedContent<Color, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type TableColumnCollection.Entry and conformance TableColumnCollection.Entry, type metadata accessor for TableColumnCollection.Entry);
  ForEach<>.init(_:content:)();
  v97 = v125;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v47, v125, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v144, &v150, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v97, v53, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?);
  type metadata accessor for (ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)(0, &lazy cache variable for type metadata for (VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>), type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(&v150, v53 + *(v98 + 48), type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>);
  outlined destroy of Binding<[SwiftUIAnySortComparator]>(v144, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>);
  outlined destroy of Binding<[SwiftUIAnySortComparator]>(v47, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?);
  outlined destroy of Slice<TableColumnCollection>(v161);
  outlined destroy of Binding<[SwiftUIAnySortComparator]>(&v150, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>);
  outlined destroy of Binding<[SwiftUIAnySortComparator]>(v97, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?);
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v53, v52, type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>);
  v70 = MEMORY[0x1E697F948];
  type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(0, &lazy cache variable for type metadata for _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>.Storage, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>, MEMORY[0x1E697F948]);
  swift_storeEnumTagMultiPayload();
  v71 = v52;
LABEL_21:
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v71, v51, type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>);
  type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(0, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>.Storage, type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, v70);
  return swift_storeEnumTagMultiPayload();
}

uint64_t specialized Collection.dropFirst(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v2;
    v4 = result;
    outlined init with copy of TableColumnCollection.Backing(v2, v19);
    if (v20)
    {
      v6 = *(*&v19[0] + 16);
    }

    else
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v19, v16);
      v7 = v17;
      v8 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v6 = (*(v8 + 8))(v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    v9 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);
    if (v4 && v9 < v4)
    {
      outlined init with copy of TableColumnCollection.Backing(v3, v19);
      if (v20)
      {
        v10 = *(*&v19[0] + 16);
      }

      else
      {
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v19, v16);
        v11 = v17;
        v12 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        v10 = (*(v12 + 8))(v11, v12);
        __swift_destroy_boxed_opaque_existential_1(v16);
      }
    }

    else
    {
      v10 = specialized RandomAccessCollection<>.index(_:offsetBy:)(0, v4);
    }

    outlined init with copy of TableColumnCollection.Backing(v3, v19);
    if (v20)
    {
      v13 = *(*&v19[0] + 16);
    }

    else
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v19, v16);
      v14 = v17;
      v15 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v13 = (*(v15 + 8))(v14, v15);
      result = __swift_destroy_boxed_opaque_existential_1(v16);
    }

    if (v13 >= v10)
    {
      specialized Collection<>.subscript.getter(v10, v13, a2);
      return outlined destroy of TableColumnCollection(v3);
    }
  }

  __break(1u);
  return result;
}

__n128 closure #2 in closure #1 in TableHeaderViewCore.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Color.clear.getter();
  v5 = type metadata accessor for TableColumnCollection.Entry(0);
  v6 = a1 + *(v5 + 28);
  v16 = *(v6 + 32);
  v7 = *(v6 + 16);
  v15[0] = *v6;
  v15[1] = v7;
  specialized View.tableColumnFrame(_:alignment:)(v15, *(a1 + *(v5 + 36)), v4, v13);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v8 = v13[9];
  *(a2 + 128) = v13[8];
  *(a2 + 144) = v8;
  *(a2 + 160) = v14;
  v9 = v13[5];
  *(a2 + 64) = v13[4];
  *(a2 + 80) = v9;
  v10 = v13[7];
  *(a2 + 96) = v13[6];
  *(a2 + 112) = v10;
  v11 = v13[1];
  *a2 = v13[0];
  *(a2 + 16) = v11;
  result = v13[3];
  *(a2 + 32) = v13[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t closure #1 in closure #1 in TableHeaderViewCore.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticTableHeaderButton(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SortableTableHeaderButton(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(0, &lazy cache variable for type metadata for _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>, type metadata accessor for SortableTableHeaderButton, type metadata accessor for StaticTableHeaderButton, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for TableColumnCollection.Entry(0);
  v24 = *(a1 + *(v15 + 24));
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v16 = a2[5];
  if (!v16)
  {
    goto LABEL_5;
  }

  v23 = a3;
  v17 = a2[4];
  v18 = a2[6];
  outlined init with copy of SwiftUIAnySortComparator?(a1 + *(v15 + 44), v25, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  if (!v26)
  {
    outlined destroy of AccessibilityTableContext?(v25, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    a3 = v23;
LABEL_5:
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(a1, v8, type metadata accessor for TableColumnCollection.Entry);
    *&v8[*(v6 + 20)] = 0;
    *&v8[*(v6 + 24)] = v24;
    outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v8, v14, type metadata accessor for StaticTableHeaderButton);
    goto LABEL_6;
  }

  outlined destroy of AccessibilityTableContext?(v25, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(a1, v11, type metadata accessor for TableColumnCollection.Entry);
  *&v11[v9[5]] = 0;
  v19 = &v11[v9[6]];
  *v19 = v17;
  *(v19 + 1) = v16;
  *(v19 + 2) = v18;
  *&v11[v9[7]] = v24;
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v11, v14, type metadata accessor for SortableTableHeaderButton);
  a3 = v23;
LABEL_6:
  type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(0, &lazy cache variable for type metadata for _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>.Storage, type metadata accessor for SortableTableHeaderButton, type metadata accessor for StaticTableHeaderButton, MEMORY[0x1E697F948]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _VariadicView.Tree<_VStackLayout, _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>();
  return outlined init with take of _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>(v14, a3 + *(v20 + 44));
}

uint64_t SortableTableHeaderButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = type metadata accessor for SortableTableHeaderButton(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SortableTableHeaderButton;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v2, v7, type metadata accessor for SortableTableHeaderButton);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v24 = type metadata accessor for SortableTableHeaderButton;
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v7, v13 + v12, type metadata accessor for SortableTableHeaderButton);
  *v11 = 4;
  v14 = &v11[*(v9 + 44)];
  *v14 = partial apply for closure #1 in SortableTableHeaderButton.sortableButton.getter;
  v14[1] = v13;
  v23 = type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  closure #2 in SortableTableHeaderButton.sortableButton.getter(v2, &v11[*(v9 + 48)]);
  v27[0] = *(v2 + *(v4 + 36));
  v15 = v27[0];
  v28 = 3;
  v16 = v26;
  specialized View.accessibilityTableContext(_:)(v27, v26);
  outlined destroy of AccessibilityTableContext?(v27, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
  outlined destroy of Binding<[SwiftUIAnySortComparator]>(v11, type metadata accessor for Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>);
  type metadata accessor for StaticIf<IsVisionEnabledPredicate, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>>();
  v22 = *(v17 + 44);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v2, v7, v25);
  v18 = swift_allocObject();
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v7, v18 + v12, v24);
  *v11 = 4;
  v19 = &v11[*(v9 + 44)];
  *v19 = closure #1 in SortableTableHeaderButton.sortableButton.getterpartial apply;
  v19[1] = v18;
  swift_storeEnumTagMultiPayload();
  closure #2 in SortableTableHeaderButton.sortableButton.getter(v2, &v11[*(v9 + 48)]);
  v27[0] = v15;
  v28 = 3;
  specialized View.accessibilityTableContext(_:)(v27, v16 + v22);
  outlined destroy of AccessibilityTableContext?(v27, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
  return outlined destroy of Binding<[SwiftUIAnySortComparator]>(v11, type metadata accessor for Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>);
}

uint64_t closure #1 in SortableTableHeaderButton.sortableButton.getter(uint64_t a1)
{
  v2 = a1 + *(type metadata accessor for SortableTableHeaderButton(0) + 24);
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = type metadata accessor for TableColumnCollection.Entry(0);
  result = outlined init with copy of SwiftUIAnySortComparator?(a1 + *(v6 + 44), v8, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  if (v9)
  {
    sort(_:comparator:)(v3, v4, v5, v8);
    return outlined destroy of SwiftUIAnySortComparator(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sort(_:comparator:)(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return result;
  }

  v7 = result;
  v61[1] = result;
  v61[2] = a2;
  v61[3] = a3;
  type metadata accessor for Binding<[SwiftUIAnySortComparator]>();
  v9 = v8;

  MEMORY[0x18D00ACC0](v61, v9);
  if (*(v61[0] + 16))
  {
    outlined init with copy of SwiftUIAnySortComparator(v61[0] + 32, &v53);
  }

  else
  {

    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
  }

  outlined init with copy of SwiftUIAnySortComparator(a4, &v50);
  outlined init with copy of SwiftUIAnySortComparator?(&v53, &v36, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  outlined init with copy of SwiftUIAnySortComparator?(&v50, &v42, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  if (*(&v37 + 1))
  {
    outlined init with copy of SwiftUIAnySortComparator?(&v36, v34, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    if (*(&v43 + 1))
    {
      v32[2] = v46;
      v32[3] = v47;
      v32[4] = v48;
      v33 = v49;
      v31[0] = v42;
      v31[1] = v43;
      v32[0] = v44;
      v32[1] = v45;
      v10 = MEMORY[0x18D00E7E0](&v35, v32);
      outlined destroy of SwiftUIAnySortComparator(v31);
      outlined destroy of AccessibilityTableContext?(&v50, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      outlined destroy of AccessibilityTableContext?(&v53, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      outlined destroy of SwiftUIAnySortComparator(v34);
      outlined destroy of AccessibilityTableContext?(&v36, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      if ((v10 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_11:
      *&v53 = v7;
      *(&v53 + 1) = a2;
      *&v54 = a3;
      MEMORY[0x18D00ACC0](&v50, v9);
      specialized Array.remove(at:)(0, &v36);
      outlined destroy of SwiftUIAnySortComparator(&v36);
      v34[0] = v50;
      dispatch thunk of AnyLocation.set(_:transaction:)();

      outlined init with copy of SwiftUIAnySortComparator(a4, &v36);
      v11 = (*(a4 + 104))(a4);
      (*(&v39 + 1))(&v53, &v36, (v11 & 1) == 0);
      outlined assign with take of AnyHashable(&v53, v38);
      v50 = v7;
      v51 = a2;
      v52 = a3;
      MEMORY[0x18D00ACC0](v34, v9);
      v57 = v38[2];
      v58 = v39;
      v59 = v40;
      v60 = v41;
      v53 = v36;
      v54 = v37;
      v55 = v38[0];
      v56 = v38[1];
      v12 = v34[0];
      v13 = *(v34[0] + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34[0] = v12;
      if (!isUniquelyReferenced_nonNull_native || v13 >= *(v12 + 3) >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v13 + 1, 1, v12);
        v34[0] = v12;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, &v53);
      *&v53 = v12;
      goto LABEL_35;
    }

    outlined destroy of AccessibilityTableContext?(&v50, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    outlined destroy of AccessibilityTableContext?(&v53, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    outlined destroy of SwiftUIAnySortComparator(v34);
  }

  else
  {
    outlined destroy of AccessibilityTableContext?(&v50, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    outlined destroy of AccessibilityTableContext?(&v53, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    if (!*(&v43 + 1))
    {
      outlined destroy of AccessibilityTableContext?(&v36, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      goto LABEL_11;
    }
  }

  outlined destroy of Binding<[SwiftUIAnySortComparator]>(&v36, type metadata accessor for (SwiftUIAnySortComparator?, SwiftUIAnySortComparator?));
LABEL_17:
  *&v53 = v7;
  *(&v53 + 1) = a2;
  *&v54 = a3;
  v30 = v9;
  result = MEMORY[0x18D00ACC0](&v50, v9);
  v15 = v50;
  v16 = *(v50 + 2);
  if (v16)
  {
    v17 = 0;
    v18 = (v50 + 32);
    while (1)
    {
      if (v17 >= *(v15 + 2))
      {
        __break(1u);
        goto LABEL_38;
      }

      outlined init with copy of SwiftUIAnySortComparator(v18, &v36);
      v19 = MEMORY[0x18D00E7E0](v38, a4 + 32);
      result = outlined destroy of SwiftUIAnySortComparator(&v36);
      if (v19)
      {
        break;
      }

      ++v17;
      v18 += 120;
      if (v16 == v17)
      {
        goto LABEL_22;
      }
    }

    *&v53 = v7;
    *(&v53 + 1) = a2;
    *&v54 = a3;
    MEMORY[0x18D00ACC0](&v50, v9);
    v26 = v17;
LABEL_30:
    specialized Array.remove(at:)(v26, &v36);
    outlined destroy of SwiftUIAnySortComparator(&v36);
    v34[0] = v50;
    dispatch thunk of AnyLocation.set(_:transaction:)();

    goto LABEL_31;
  }

LABEL_22:

  v50 = v7;
  v51 = a2;
  v52 = a3;
  MEMORY[0x18D00ACC0](v34, v9);
  v20 = v34[0];
  outlined init with copy of SwiftUIAnySortComparator(a4, &v36);
  v21 = (*(a4 + 104))(a4);
  (*(&v39 + 1))(&v53, &v36, (v21 & 1) == 0);
  result = outlined assign with take of AnyHashable(&v53, v38);
  v22 = *(v20 + 16);
  if (!v22)
  {
LABEL_27:

    outlined destroy of SwiftUIAnySortComparator(&v36);
    v9 = v30;
LABEL_31:
    *&v53 = v7;
    *(&v53 + 1) = a2;
    *&v54 = a3;
    MEMORY[0x18D00ACC0](&v50, v9);
    outlined init with copy of SwiftUIAnySortComparator(a4, &v36);
    v27 = v50;
    v28 = *(v50 + 2);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v27;
    if (!v29 || v28 >= *(v27 + 3) >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29, v28 + 1, 1, v27);
      v50 = v27;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, &v36);
    *&v36 = v27;
LABEL_35:
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  v23 = 0;
  v24 = v20 + 32;
  while (v23 < *(v20 + 16))
  {
    outlined init with copy of SwiftUIAnySortComparator(v24, &v53);
    v25 = MEMORY[0x18D00E7E0](&v55, v38);
    result = outlined destroy of SwiftUIAnySortComparator(&v53);
    if (v25)
    {

      outlined destroy of SwiftUIAnySortComparator(&v36);
      *&v53 = v7;
      *(&v53 + 1) = a2;
      v9 = v30;
      *&v54 = a3;
      MEMORY[0x18D00ACC0](&v50, v30);
      v26 = v23;
      goto LABEL_30;
    }

    ++v23;
    v24 += 120;
    if (v22 == v23)
    {
      goto LABEL_27;
    }
  }

LABEL_38:
  __break(1u);
  return result;
}

__n128 closure #2 in SortableTableHeaderButton.sortableButton.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  closure #1 in closure #2 in SortableTableHeaderButton.sortableButton.getter(a1, &v38);
  v5 = v38;
  v6 = v39;
  v7 = BYTE8(v39);
  KeyPath = swift_getKeyPath();
  LOBYTE(v38) = 1;
  type metadata accessor for SortableTableHeaderButton(0);
  EdgeInsets.init(_all:)();
  v25[0] = v4;
  v25[1] = 0;
  v26 = 1;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v30 = KeyPath;
  v31 = 0;
  v32 = 2;
  v33 = v9;
  v34 = v10;
  v35 = v11;
  v36 = v12;
  v37 = 0;
  v13 = type metadata accessor for TableColumnCollection.Entry(0);
  v14 = a1 + *(v13 + 28);
  v24 = *(v14 + 32);
  v15 = *(v14 + 16);
  v23[0] = *v14;
  v23[1] = v15;
  specialized View.tableColumnFrame(_:alignment:)(v23, *(a1 + *(v13 + 36)), &v38);
  outlined destroy of Binding<[SwiftUIAnySortComparator]>(v25, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>);
  v16 = v51;
  *(a2 + 192) = v50;
  *(a2 + 208) = v16;
  *(a2 + 224) = v52;
  v17 = v47;
  *(a2 + 128) = v46;
  *(a2 + 144) = v17;
  v18 = v49;
  *(a2 + 160) = v48;
  *(a2 + 176) = v18;
  v19 = v43;
  *(a2 + 64) = v42;
  *(a2 + 80) = v19;
  v20 = v45;
  *(a2 + 96) = v44;
  *(a2 + 112) = v20;
  v21 = v39;
  *a2 = v38;
  *(a2 + 16) = v21;
  result = v41;
  *(a2 + 32) = v40;
  *(a2 + 48) = result;
  return result;
}

uint64_t closure #1 in closure #2 in SortableTableHeaderButton.sortableButton.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for TableColumnCollection.Entry(0);
  v4 = *(a1 + *(v3 + 48));
  v5 = (a1 + *(type metadata accessor for SortableTableHeaderButton(0) + 24));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v63 = *v5;
  v64 = v7;
  v65 = v8;
  type metadata accessor for Binding<[SwiftUIAnySortComparator]>();
  v10 = v9;

  MEMORY[0x18D00ACC0](&v62, v10);
  if (*(v62 + 16))
  {
    outlined init with copy of SwiftUIAnySortComparator(v62 + 32, &v54);
  }

  else
  {

    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
  }

  v11 = *(v3 + 44);
  result = outlined init with copy of SwiftUIAnySortComparator?(a1 + v11, &v41, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  if (!*(&v42 + 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  v50[2] = v45;
  v51 = v46;
  v52 = v47;
  v53 = v48;
  v49[0] = v41;
  v49[1] = v42;
  v50[0] = v43;
  v50[1] = v44;
  outlined init with copy of SwiftUIAnySortComparator?(&v54, v31, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  outlined init with copy of SwiftUIAnySortComparator?(v49, &v33, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  if (!v32)
  {
    outlined destroy of AccessibilityTableContext?(v49, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    outlined destroy of AccessibilityTableContext?(&v54, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    if (!*(&v34 + 1))
    {
      outlined destroy of AccessibilityTableContext?(v31, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      goto LABEL_11;
    }

LABEL_13:
    outlined destroy of Binding<[SwiftUIAnySortComparator]>(v31, type metadata accessor for (SwiftUIAnySortComparator?, SwiftUIAnySortComparator?));
    goto LABEL_14;
  }

  outlined init with copy of SwiftUIAnySortComparator?(v31, v29, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  if (!*(&v34 + 1))
  {
    outlined destroy of AccessibilityTableContext?(v49, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    outlined destroy of AccessibilityTableContext?(&v54, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    outlined destroy of SwiftUIAnySortComparator(v29);
    goto LABEL_13;
  }

  v25 = v37;
  v26 = v38;
  v27 = v39;
  v28 = v40;
  v21 = v33;
  v22 = v34;
  v23 = v35;
  v24 = v36;
  v13 = MEMORY[0x18D00E7E0](v30, &v23);
  outlined destroy of SwiftUIAnySortComparator(&v21);
  outlined destroy of AccessibilityTableContext?(v49, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  outlined destroy of AccessibilityTableContext?(&v54, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  outlined destroy of SwiftUIAnySortComparator(v29);
  outlined destroy of AccessibilityTableContext?(v31, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  if (v13)
  {
LABEL_11:
    specialized Image.init(systemName:)(0x2E6E6F7276656863, 0xEA00000000007075);
    v15 = v14;

    v16 = 0;
LABEL_28:

    outlined copy of _ConditionalContent<Image, Image>?(v15, v16);
    outlined consume of _ConditionalContent<Image, Image>?(v15, v16);
    *a2 = v4;
    *(a2 + 8) = 0x3FF0000000000000;
    *(a2 + 16) = v15;
    *(a2 + 24) = v16;
    outlined consume of _ConditionalContent<Image, Image>?(v15, v16);
  }

LABEL_14:
  v63 = v6;
  v64 = v7;
  v65 = v8;
  MEMORY[0x18D00ACC0](&v62, v10);
  if (*(v62 + 16))
  {
    outlined init with copy of SwiftUIAnySortComparator(v62 + 32, &v54);
  }

  else
  {

    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
  }

  result = outlined init with copy of SwiftUIAnySortComparator?(a1 + v11, &v41, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  if (*(&v42 + 1))
  {
    outlined init with copy of SwiftUIAnySortComparator(&v41, v49);
    v17 = (*(&v47 + 1))(&v41);
    (*(&v51 + 1))(v31, v49, (v17 & 1) == 0);
    outlined assign with take of AnyHashable(v31, v50);
    outlined destroy of SwiftUIAnySortComparator(&v41);
    outlined init with copy of SwiftUIAnySortComparator?(&v54, v31, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    outlined init with copy of SwiftUIAnySortComparator?(v49, &v33, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    if (v32)
    {
      outlined init with copy of SwiftUIAnySortComparator?(v31, v29, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      if (*(&v34 + 1))
      {
        v25 = v37;
        v26 = v38;
        v27 = v39;
        v28 = v40;
        v21 = v33;
        v22 = v34;
        v23 = v35;
        v24 = v36;
        v18 = MEMORY[0x18D00E7E0](v30, &v23);
        outlined destroy of SwiftUIAnySortComparator(&v21);
        outlined destroy of AccessibilityTableContext?(&v54, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
        outlined destroy of AccessibilityTableContext?(v49, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
        outlined destroy of SwiftUIAnySortComparator(v29);
        outlined destroy of AccessibilityTableContext?(v31, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
        if ((v18 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      outlined destroy of AccessibilityTableContext?(&v54, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      outlined destroy of AccessibilityTableContext?(v49, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      outlined destroy of SwiftUIAnySortComparator(v29);
    }

    else
    {
      outlined destroy of AccessibilityTableContext?(&v54, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      outlined destroy of AccessibilityTableContext?(v49, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      if (!*(&v34 + 1))
      {
        outlined destroy of AccessibilityTableContext?(v31, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
LABEL_24:
        specialized Image.init(systemName:)(0x2E6E6F7276656863, 0xEC0000006E776F64);
        v15 = v19;

        v16 = 1;
        goto LABEL_28;
      }
    }

    outlined destroy of Binding<[SwiftUIAnySortComparator]>(v31, type metadata accessor for (SwiftUIAnySortComparator?, SwiftUIAnySortComparator?));
LABEL_27:
    v15 = 0;
    v16 = -1;
    goto LABEL_28;
  }

LABEL_30:
  __break(1u);
  return result;
}

void specialized View.accessibilityTableContext(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 40) == 255)
  {

    specialized View.accessibility()(a2);
  }

  else
  {
    outlined init with copy of SwiftUIAnySortComparator?(a1, &v8, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
    if (v9[24] == 255)
    {
      __break(1u);
    }

    else
    {
      v7[0] = v8;
      v7[1] = *v9;
      *(&v7[1] + 9) = *&v9[9];
      lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();
      AccessibilityProperties.init<A>(_:_:)();
      static AccessibilityAttachment.properties(_:)();
      outlined destroy of AccessibilityProperties(v10);
      type metadata accessor for [SwiftUIAnySortComparator](0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
      v4 = swift_allocObject();
      memcpy((v4 + 16), v7, 0x128uLL);
      outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v2, a2, type metadata accessor for Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>);
      type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(0, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, type metadata accessor for Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>);
      v6 = (a2 + *(v5 + 36));
      *v6 = v4;
      v6[1] = 0;
    }
  }
}

uint64_t StaticTableHeaderButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static VerticalAlignment.center.getter();
  v5 = type metadata accessor for TableColumnCollection.Entry(0);
  v6 = *(v2 + v5[12]);

  v7 = AnyShapeStyle.init<A>(_:)();
  v8 = type metadata accessor for StaticTableHeaderButton(0);
  EdgeInsets.init(_all:)();
  LOBYTE(__src[0]) = 1;
  LOBYTE(v34[0]) = 0;
  v55[0] = v4;
  v55[1] = 0;
  v56 = 1;
  v57 = v6;
  v58 = v7;
  v59 = 2;
  v60 = v9;
  v61 = v10;
  v62 = v11;
  v63 = v12;
  v64 = 0;
  v13 = (v2 + v5[7]);
  v14 = *v13;
  v53[1] = v13[1];
  v54 = *(v13 + 32);
  v53[0] = v14;
  specialized View.tableColumnFrame(_:alignment:)(v53, *(v2 + v5[9]), v51);
  outlined destroy of Binding<[SwiftUIAnySortComparator]>(v55, type metadata accessor for ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>);
  v74 = v51[9];
  v75 = v51[10];
  v76 = v51[11];
  v70 = v51[5];
  v71 = v51[6];
  v72 = v51[7];
  v73 = v51[8];
  v66 = v51[1];
  v67 = v51[2];
  v68 = v51[3];
  v69 = v51[4];
  v77 = v52;
  v65 = v51[0];
  type metadata accessor for VStack<TableHeaderViewCore>(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, type metadata accessor for AccessibilityChildBehaviorBox);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v34);
  type metadata accessor for [SwiftUIAnySortComparator](0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v16 = swift_allocObject();
  memcpy((v16 + 16), __src, 0x128uLL);
  v50 = v77;
  v48 = v75;
  v49 = v76;
  v44 = v71;
  v45 = v72;
  v46 = v73;
  v47 = v74;
  v40 = v67;
  v41 = v68;
  v42 = v69;
  v43 = v70;
  v38 = v65;
  v39 = v66;
  __src[10] = v75;
  __src[11] = v76;
  __src[6] = v71;
  __src[7] = v72;
  __src[8] = v73;
  __src[9] = v74;
  __src[2] = v67;
  __src[3] = v68;
  __src[4] = v69;
  __src[5] = v70;
  __src[0] = v65;
  __src[1] = v66;
  *&__src[12] = v77;
  *(&__src[12] + 1) = v16;
  *&__src[13] = v15;
  type metadata accessor for [SwiftUIAnySortComparator](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityTraitSet>, MEMORY[0x1E697FB88], MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(&v65, v34, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>);
  AccessibilityTraitSet.init(traits:)();
  v18 = *(v17 + 32);
  swift_setDeallocating();
  swift_deallocClassInstance();
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v16 + 16, 0, v18);
  v34[10] = v48;
  v34[11] = v49;
  v34[6] = v44;
  v34[7] = v45;
  v34[8] = v46;
  v34[9] = v47;
  v34[2] = v40;
  v34[3] = v41;
  v34[4] = v42;
  v34[5] = v43;
  v34[0] = v38;
  v34[1] = v39;
  v35 = v50;
  v36 = v16;
  v37 = v15;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(__src, v31, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>);
  outlined destroy of Binding<[SwiftUIAnySortComparator]>(v34, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>);
  closure #1 in ModifiedContent<>.accessibilityVisibility(_:)(v16 + 16, 0x4000000040uLL);
  outlined destroy of Binding<[SwiftUIAnySortComparator]>(&v65, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>);
  v31[0] = *(v2 + *(v8 + 24));
  v32 = 3;
  result = outlined init with copy of SwiftUIAnySortComparator?(v31, &v27, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
  if (v28[24] == 255)
  {
    __break(1u);
  }

  else
  {
    v29 = v27;
    v30[0] = *v28;
    *(v30 + 9) = *&v28[9];
    swift_beginAccess();
    outlined init with copy of SwiftUIAnySortComparator?(&v29, v26, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
    lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();

    AccessibilityProperties.subscript.setter();
    swift_endAccess();
    outlined destroy of AccessibilityTableContext?(&v29, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);

    result = outlined destroy of AccessibilityTableContext?(v31, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
    v20 = __src[11];
    *(a1 + 160) = __src[10];
    *(a1 + 176) = v20;
    *(a1 + 192) = __src[12];
    *(a1 + 208) = *&__src[13];
    v21 = __src[7];
    *(a1 + 96) = __src[6];
    *(a1 + 112) = v21;
    v22 = __src[9];
    *(a1 + 128) = __src[8];
    *(a1 + 144) = v22;
    v23 = __src[3];
    *(a1 + 32) = __src[2];
    *(a1 + 48) = v23;
    v24 = __src[5];
    *(a1 + 64) = __src[4];
    *(a1 + 80) = v24;
    v25 = __src[1];
    *a1 = __src[0];
    *(a1 + 16) = v25;
  }

  return result;
}

uint64_t TableSectionHeaderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  specialized Environment.wrappedValue.getter(v6, v7);
  specialized Environment.wrappedValue.getter(*v1, *(v1 + 8));
  EdgeInsets.init(_all:)();
  v51 = 0;
  v50 = 0;
  *&v44 = v3;
  *(&v44 + 1) = KeyPath;
  LOBYTE(v45) = 0;
  *(&v45 + 1) = v5;
  LOWORD(v46) = 0;
  BYTE8(v46) = 2;
  *&v47 = v8;
  *(&v47 + 1) = v9;
  *&v48 = v10;
  *(&v48 + 1) = v11;
  v49 = 0;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v43 = -1;
  outlined destroy of AccessibilityTableContext?(&v40, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
  v40 = 0u;
  v41 = 0u;
  v42 = 0;
  v43 = 4;
  type metadata accessor for VStack<TableHeaderViewCore>(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, type metadata accessor for AccessibilityChildBehaviorBox);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v30);
  type metadata accessor for [SwiftUIAnySortComparator](0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v13 = swift_allocObject();
  memcpy((v13 + 16), __src, 0x128uLL);
  LOBYTE(v39) = v49;
  v37 = v47;
  v38 = v48;
  v35 = v45;
  v36 = v46;
  v34 = v44;
  __src[2] = v46;
  __src[3] = v47;
  __src[4] = v48;
  __src[0] = v44;
  __src[1] = v45;
  *&__src[5] = v39;
  *(&__src[5] + 1) = v13;
  *&__src[6] = v12;
  type metadata accessor for [SwiftUIAnySortComparator](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityTraitSet>, MEMORY[0x1E697FB88], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(&v44, v30, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>);
  AccessibilityTraitSet.init(traits:)();
  v15 = *(v14 + 32);
  swift_setDeallocating();
  swift_deallocClassInstance();
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v13 + 16, 0, v15);
  v30[2] = v36;
  v30[3] = v37;
  v30[4] = v38;
  v30[0] = v34;
  v30[1] = v35;
  v31 = v39;
  v32 = v13;
  v33 = v12;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(__src, &v25, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, AccessibilityAttachmentModifier>);
  outlined destroy of Binding<[SwiftUIAnySortComparator]>(v30, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, AccessibilityAttachmentModifier>);
  closure #1 in ModifiedContent<>.accessibilityVisibility(_:)(v13 + 16, 0x4000000040uLL);
  if (v43 == 255)
  {
    goto LABEL_4;
  }

  result = outlined init with copy of SwiftUIAnySortComparator?(&v40, &v20, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
  if (v21[24] != 255)
  {
    v25 = v20;
    v26[0] = *v21;
    *(v26 + 9) = *&v21[9];
    swift_beginAccess();
    outlined init with copy of SwiftUIAnySortComparator?(&v25, v27, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
    lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();

    AccessibilityProperties.subscript.setter();
    swift_endAccess();
    outlined destroy of AccessibilityTableContext?(&v25, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);

LABEL_4:
    v27[2] = __src[2];
    v27[3] = __src[3];
    v27[4] = __src[4];
    v28 = __src[5];
    v27[0] = __src[0];
    v27[1] = __src[1];
    *&v21[16] = __src[2];
    v22 = __src[3];
    v23 = __src[4];
    LOBYTE(v24) = __src[5];
    v20 = __src[0];
    *v21 = __src[1];
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(__src, &v25, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, AccessibilityAttachmentModifier>);
    outlined destroy of Binding<[SwiftUIAnySortComparator]>(&v44, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>);
    outlined destroy of Binding<[SwiftUIAnySortComparator]>(&v40, type metadata accessor for AccessibilityTableCellModifier<ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>>);
    result = outlined destroy of Binding<[SwiftUIAnySortComparator]>(__src, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, AccessibilityAttachmentModifier>);
    v17 = v22;
    *(a1 + 32) = *&v21[16];
    *(a1 + 48) = v17;
    *(a1 + 64) = v23;
    v18 = v24;
    v19 = *v21;
    *a1 = v20;
    *(a1 + 16) = v19;
    *(a1 + 80) = v18;
    *(a1 + 88) = v13;
    *(a1 + 96) = v12;
    return result;
  }

  __break(1u);
  return result;
}

double EnvironmentValues.tableHeaderLeadingMargin.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>, &type metadata for TableHeaderLeadingMarginKey, &protocol witness table for TableHeaderLeadingMarginKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>, &type metadata for TableHeaderLeadingMarginKey, &protocol witness table for TableHeaderLeadingMarginKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

__n128 TableHeaderLabelStyle.makeBody(configuration:)@<Q0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, __int16 a4@<W4>, __n128 *a5@<X8>)
{
  v10 = static VerticalAlignment.firstTextLineCenter.getter();
  v11 = specialized Environment.wrappedValue.getter(a3, a4 & 0x1FF);
  if (v12)
  {
    static _GraphInputs.defaultInterfaceIdiom.getter();
    if (static Solarium.isEnabled(for:)())
    {
      v13 = 0x4028000000000000;
    }

    else
    {
      v13 = 0x4024000000000000;
    }
  }

  else
  {
    v13 = v11;
  }

  LOBYTE(v17[0]) = a2 & 1;
  closure #1 in TableHeaderLabelStyle.makeBody(configuration:)(a1, a2 & 1, v17);
  v14 = v17[0];
  v15 = v17[3];
  result = *&v17[1];
  a5->n128_u64[0] = v10;
  a5->n128_u64[1] = v13;
  a5[1].n128_u8[0] = 0;
  a5[1].n128_u64[1] = v14;
  a5[2] = result;
  a5[3].n128_u64[0] = v15;
  return result;
}

__n128 closure #1 in TableHeaderLabelStyle.makeBody(configuration:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((specialized Environment.wrappedValue.getter(a1, a2 & 1) & 1) == 0)
  {
    LODWORD(v5) = 1;
  }

  AnyShapeStyle.init<A>(_:)();
  static Font.Weight.regular.getter();
  type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>();
  lazy protocol witness table accessor for type ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, lazy protocol witness table accessor for type _DefaultForegroundStyleModifier<AnyShapeStyle> and conformance _DefaultForegroundStyleModifier<A>);
  View.fontWeight(_:)();

  result = v6;
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 24) = v7;
  return result;
}

void specialized View.accessibility()(uint64_t a1@<X8>)
{
  AccessibilityProperties.init()();
  outlined init with copy of AccessibilityProperties(v8, v6);
  AccessibilityAttachment.init(properties:)();
  outlined destroy of AccessibilityProperties(v8);
  type metadata accessor for [SwiftUIAnySortComparator](0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v3 = swift_allocObject();
  memcpy((v3 + 16), __src, 0x128uLL);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v1, a1, type metadata accessor for Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>);
  type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(0, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, type metadata accessor for Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>);
  v5 = (a1 + *(v4 + 36));
  *v5 = v3;
  v5[1] = 0;
}

double key path getter for EnvironmentValues.tableHeaderLeadingMargin : EnvironmentValues@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>, &type metadata for TableHeaderLeadingMarginKey, &protocol witness table for TableHeaderLeadingMarginKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>, &type metadata for TableHeaderLeadingMarginKey, &protocol witness table for TableHeaderLeadingMarginKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.tableHeaderLeadingMargin : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>, &type metadata for TableHeaderLeadingMarginKey, &protocol witness table for TableHeaderLeadingMarginKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>, &type metadata for TableHeaderLeadingMarginKey, &protocol witness table for TableHeaderLeadingMarginKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined destroy of AccessibilityTableContext?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for [SwiftUIAnySortComparator](0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Binding<[SwiftUIAnySortComparator]>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (SwiftUIAnySortComparator?, SwiftUIAnySortComparator?)()
{
  if (!lazy cache variable for type metadata for (SwiftUIAnySortComparator?, SwiftUIAnySortComparator?))
  {
    type metadata accessor for [SwiftUIAnySortComparator](255, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (SwiftUIAnySortComparator?, SwiftUIAnySortComparator?));
    }
  }
}

uint64_t destroy for TableHeaderViewCore(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  if (*(a1 + 40))
  {
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1 + 56);
  }
}

uint64_t initializeWithCopy for TableHeaderViewCore(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 40);
  if (!v8)
  {
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    v9 = *(a2 + 96);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = *(a2 + 80);
    *(a1 + 80) = v10;
    (**(v10 - 8))(a1 + 56, a2 + 56);
    goto LABEL_6;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;
  *(a1 + 48) = *(a2 + 48);

  v9 = *(a2 + 96);
  if ((v9 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(a1 + 56) = *(a2 + 56);

LABEL_6:
  *(a1 + 96) = v9;
  *(a1 + 97) = *(a2 + 97);
  return a1;
}

uint64_t assignWithCopy for TableHeaderViewCore(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (v12)
    {
      *(a1 + 32) = *(a2 + 32);

      *(a1 + 40) = *(a2 + 40);

      *(a1 + 48) = *(a2 + 48);

      if (a1 == a2)
      {
        goto LABEL_14;
      }
    }

    else
    {
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(a1 + 32, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
      v13 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v13;
      if (a1 == a2)
      {
        goto LABEL_14;
      }
    }
  }

  else if (v12)
  {
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);

    if (a1 == a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v14 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v14;
    if (a1 == a2)
    {
      goto LABEL_14;
    }
  }

  outlined destroy of TableColumnCollection.Backing(a1 + 56);
  if (*(a2 + 96))
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 96) = 1;
  }

  else
  {
    v15 = *(a2 + 80);
    *(a1 + 80) = v15;
    *(a1 + 88) = *(a2 + 88);
    (**(v15 - 8))(a1 + 56, a2 + 56);
    *(a1 + 96) = 0;
  }

LABEL_14:
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  return a1;
}

__n128 __swift_memcpy99_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 95) = *(a2 + 95);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for TableHeaderViewCore(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  if (*(a1 + 40))
  {
    v11 = a2[5];
    if (v11)
    {
      *(a1 + 32) = a2[4];

      *(a1 + 40) = v11;

      *(a1 + 48) = a2[6];

      if (a1 == a2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    outlined destroy of Binding<[SwiftUIAnySortComparator]>(a1 + 32, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
  }

  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = a2[6];
  if (a1 != a2)
  {
LABEL_7:
    outlined destroy of TableColumnCollection.Backing(a1 + 56);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 81) = *(a2 + 81);
  }

LABEL_8:
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  return a1;
}

uint64_t getEnumTagSinglePayload for TableHeaderViewCore(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 99))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for TableHeaderViewCore(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 98) = 0;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 99) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 99) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t destroy for TableSectionHeaderView(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<Selector?>.Content(*(a1 + 32), *(a1 + 40));
}

uint64_t initializeWithCopy for TableSectionHeaderView(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for TableSectionHeaderView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  outlined copy of Environment<Selector?>.Content(v12, v13);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  outlined consume of Environment<Selector?>.Content(v14, v15);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for TableSectionHeaderView(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = *(a2 + 40);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v11;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  *(a1 + 48) = a2[6];

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for TableSectionHeaderView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TableSectionHeaderView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VStack<TableHeaderViewCore> and conformance VStack<A>()
{
  result = lazy protocol witness table cache variable for type VStack<TableHeaderViewCore> and conformance VStack<A>;
  if (!lazy protocol witness table cache variable for type VStack<TableHeaderViewCore> and conformance VStack<A>)
  {
    type metadata accessor for VStack<TableHeaderViewCore>(255, &lazy cache variable for type metadata for VStack<TableHeaderViewCore>, lazy protocol witness table accessor for type TableHeaderViewCore and conformance TableHeaderViewCore, &unk_1EFF8F378, MEMORY[0x1E6981860]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VStack<TableHeaderViewCore> and conformance VStack<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableHeaderViewCore and conformance TableHeaderViewCore()
{
  result = lazy protocol witness table cache variable for type TableHeaderViewCore and conformance TableHeaderViewCore;
  if (!lazy protocol witness table cache variable for type TableHeaderViewCore and conformance TableHeaderViewCore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableHeaderViewCore and conformance TableHeaderViewCore);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableHeaderView.ColumnDisplayMode and conformance TableHeaderView.ColumnDisplayMode()
{
  result = lazy protocol witness table cache variable for type TableHeaderView.ColumnDisplayMode and conformance TableHeaderView.ColumnDisplayMode;
  if (!lazy protocol witness table cache variable for type TableHeaderView.ColumnDisplayMode and conformance TableHeaderView.ColumnDisplayMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableHeaderView.ColumnDisplayMode and conformance TableHeaderView.ColumnDisplayMode);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>)
  {
    type metadata accessor for VStack<TableHeaderViewCore>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<TableHeaderLabelStyle>, lazy protocol witness table accessor for type TableHeaderLabelStyle and conformance TableHeaderLabelStyle, &type metadata for TableHeaderLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TableHeaderLabelStyle and conformance TableHeaderLabelStyle()
{
  result = lazy protocol witness table cache variable for type TableHeaderLabelStyle and conformance TableHeaderLabelStyle;
  if (!lazy protocol witness table cache variable for type TableHeaderLabelStyle and conformance TableHeaderLabelStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableHeaderLabelStyle and conformance TableHeaderLabelStyle);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for AccessibilityTableCellModifier<ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>>()
{
  if (!lazy cache variable for type metadata for AccessibilityTableCellModifier<ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for AccessibilityTableCellModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityTableCellModifier<ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(255);
    lazy protocol witness table accessor for type ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, lazy protocol witness table accessor for type LabelStyleWritingModifier<TableHeaderLabelStyle> and conformance LabelStyleWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LabelStyleWritingModifier<TableHeaderLabelStyle> and conformance LabelStyleWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type LabelStyleWritingModifier<TableHeaderLabelStyle> and conformance LabelStyleWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type LabelStyleWritingModifier<TableHeaderLabelStyle> and conformance LabelStyleWritingModifier<A>)
  {
    type metadata accessor for VStack<TableHeaderViewCore>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<TableHeaderLabelStyle>, lazy protocol witness table accessor for type TableHeaderLabelStyle and conformance TableHeaderLabelStyle, &type metadata for TableHeaderLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LabelStyleWritingModifier<TableHeaderLabelStyle> and conformance LabelStyleWritingModifier<A>);
  }

  return result;
}

uint64_t outlined init with copy of SwiftUIAnySortComparator?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for [SwiftUIAnySortComparator](0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>)
  {
    type metadata accessor for HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>();
    type metadata accessor for VStack<TableHeaderViewCore>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<TableHeaderLabelStyle>, lazy protocol witness table accessor for type TableHeaderLabelStyle and conformance TableHeaderLabelStyle, &type metadata for TableHeaderLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>);
    }
  }
}

void type metadata accessor for HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>()
{
  if (!lazy cache variable for type metadata for HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(255, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>, type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>> and conformance <> _ConditionalContent<A, B>();
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>)
  {
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(255, &lazy cache variable for type metadata for ModifiedContent<Color, _FlexFrameLayout>, MEMORY[0x1E69815C0], MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection()
{
  result = lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection;
  if (!lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection;
  if (!lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection;
  if (!lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection;
  if (!lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection);
  }

  return result;
}

void type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>()
{
  if (!lazy cache variable for type metadata for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(255, &lazy cache variable for type metadata for _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>, type metadata accessor for SortableTableHeaderButton, type metadata accessor for StaticTableHeaderButton, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton> and conformance <> _ConditionalContent<A, B>();
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(255, &lazy cache variable for type metadata for _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>, type metadata accessor for SortableTableHeaderButton, type metadata accessor for StaticTableHeaderButton, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type SortableTableHeaderButton and conformance SortableTableHeaderButton, type metadata accessor for SortableTableHeaderButton);
    lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type StaticTableHeaderButton and conformance StaticTableHeaderButton, type metadata accessor for StaticTableHeaderButton);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Slice<TableColumnCollection> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<TableColumnCollection> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<TableColumnCollection> and conformance <> Slice<A>)
  {
    type metadata accessor for VStack<TableHeaderViewCore>(255, &lazy cache variable for type metadata for Slice<TableColumnCollection>, lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection, &type metadata for TableColumnCollection, MEMORY[0x1E69E74D0]);
    lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<TableColumnCollection> and conformance <> Slice<A>);
  }

  return result;
}

void type metadata accessor for (ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for VStack<TableHeaderViewCore>(255, &lazy cache variable for type metadata for Slice<TableColumnCollection>, lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection, &type metadata for TableColumnCollection, MEMORY[0x1E69E74D0]);
    type metadata accessor for UUID();
    a3(255);
    lazy protocol witness table accessor for type Slice<TableColumnCollection> and conformance <> Slice<A>();
    lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v5 = type metadata accessor for ForEach();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(255, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>, type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>(255);
    lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>);
    lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, type metadata accessor for ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>);
    type metadata accessor for _EnvironmentKeyWritingModifier<Font?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>();
    type metadata accessor for _EnvironmentKeyWritingModifier<Font?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, StyleContextWriter<TableStyleContext>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, StyleContextWriter<TableStyleContext>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>();
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(255, &lazy cache variable for type metadata for StyleContextWriter<TableStyleContext>, MEMORY[0x1E697F2C8], MEMORY[0x1E697F2C0], MEMORY[0x1E697F4C8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, StyleContextWriter<TableStyleContext>>);
    }
  }
}

void type metadata accessor for _VariadicView.Tree<_HStackLayout, _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_HStackLayout, _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(255, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>, type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, MEMORY[0x1E697F960]);
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<_HStackLayout, _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>);
    }
  }
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, type metadata accessor for ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Slice<TableColumnCollection>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for VStack<TableHeaderViewCore>(0, &lazy cache variable for type metadata for Slice<TableColumnCollection>, lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection, &type metadata for TableColumnCollection, MEMORY[0x1E69E74D0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Slice<TableColumnCollection>(uint64_t a1)
{
  type metadata accessor for VStack<TableHeaderViewCore>(0, &lazy cache variable for type metadata for Slice<TableColumnCollection>, lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection, &type metadata for TableColumnCollection, MEMORY[0x1E69E74D0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _VariadicView.Tree<_VStackLayout, _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(255, &lazy cache variable for type metadata for _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>, type metadata accessor for SortableTableHeaderButton, type metadata accessor for StaticTableHeaderButton, MEMORY[0x1E697F960]);
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>);
    }
  }
}

uint64_t outlined init with take of _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(0, &lazy cache variable for type metadata for _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>, type metadata accessor for SortableTableHeaderButton, type metadata accessor for StaticTableHeaderButton, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Color, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Color, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Color, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(255, &lazy cache variable for type metadata for ModifiedContent<Color, _FlexFrameLayout>, MEMORY[0x1E69815C0], MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Color, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double _s7SwiftUI15ModifiedContentVyACyAA5ColorVAA16_FlexFrameLayoutVGAA01_gH0VGSgWOi0_(uint64_t a1)
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
  return result;
}

uint64_t destroy for TableHeaderLabelStyle(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  v2 = *(a1 + 16);
  v3 = *(a1 + 25);
  v4 = *(a1 + 24);

  return outlined consume of Environment<CGFloat?>.Content(v2, v4, v3);
}

uint64_t initializeWithCopy for TableHeaderLabelStyle(uint64_t a1, uint64_t a2)
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
  return a1;
}

uint64_t assignWithCopy for TableHeaderLabelStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 25);
  v10 = *(a2 + 24);
  outlined copy of Environment<CGFloat?>.Content(v8, v10, v9);
  v11 = *(a1 + 16);
  v12 = *(a1 + 25);
  *(a1 + 16) = v8;
  v13 = *(a1 + 24);
  *(a1 + 24) = v10;
  *(a1 + 25) = v9;
  outlined consume of Environment<CGFloat?>.Content(v11, v13, v12);
  return a1;
}

uint64_t assignWithTake for TableHeaderLabelStyle(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a2 + 25);
  v10 = *(a1 + 16);
  v11 = *(a1 + 25);
  *(a1 + 16) = a2[2];
  v12 = *(a1 + 24);
  *(a1 + 24) = v8;
  *(a1 + 25) = v9;
  outlined consume of Environment<CGFloat?>.Content(v10, v12, v11);
  return a1;
}

uint64_t getEnumTagSinglePayload for TableHeaderLabelStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for TableHeaderLabelStyle(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for StaticTableHeaderButton(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v28 = *a2;
    *a1 = *a2;
    a1 = (v28 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = type metadata accessor for TableColumnCollection.Entry(0);
    v9 = v8[5];
    v10 = a1 + v9;
    v11 = a2 + v9;
    v12 = *v11;
    v13 = *(v11 + 1);
    v14 = *(v11 + 2);
    v15 = *(v11 + 3);
    v16 = v11[32];
    outlined copy of TableColumnCustomizationID.Base(*v11, v13, v14, v15, v16);
    *v10 = v12;
    *(v10 + 1) = v13;
    *(v10 + 2) = v14;
    *(v10 + 3) = v15;
    v10[32] = v16;
    *(a1 + v8[6]) = *(a2 + v8[6]);
    v17 = v8[7];
    v18 = a1 + v17;
    v19 = a2 + v17;
    v20 = *(v19 + 1);
    *v18 = *v19;
    *(v18 + 1) = v20;
    v18[32] = v19[32];
    *(a1 + v8[8]) = *(a2 + v8[8]);
    *(a1 + v8[9]) = *(a2 + v8[9]);
    *(a1 + v8[10]) = *(a2 + v8[10]);
    v21 = v8[11];
    v22 = a1 + v21;
    v23 = a2 + v21;
    v24 = *(a2 + v21 + 24);
    if (v24)
    {
      *(v22 + 3) = v24;
      (**(v24 - 8))(v22, v23);
      v25 = *(v23 + 56);
      *(v22 + 56) = v25;
      (**(v25 - 8))((v22 + 32), (v23 + 32));
      *(v22 + 9) = *(v23 + 9);
      v26 = *(v23 + 14);
      v27 = *(v23 + 6);
      *(v22 + 5) = *(v23 + 5);
      *(v22 + 6) = v27;
      *(v22 + 14) = v26;
    }

    else
    {
      v29 = *(v23 + 5);
      *(v22 + 4) = *(v23 + 4);
      *(v22 + 5) = v29;
      *(v22 + 6) = *(v23 + 6);
      *(v22 + 14) = *(v23 + 14);
      v30 = *(v23 + 1);
      *v22 = *v23;
      *(v22 + 1) = v30;
      v31 = *(v23 + 3);
      *(v22 + 2) = *(v23 + 2);
      *(v22 + 3) = v31;
    }

    *(a1 + v8[12]) = *(a2 + v8[12]);
    v32 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    *(a1 + v32) = *(a2 + v32);
  }

  return a1;
}

uint64_t destroy for StaticTableHeaderButton(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(a1, v2);
  v3 = type metadata accessor for TableColumnCollection.Entry(0);
  v4 = a1 + *(v3 + 20);
  outlined consume of TableColumnCustomizationID.Base(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32));
  v5 = a1 + *(v3 + 44);
  if (*(v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + *(v3 + 44));
    __swift_destroy_boxed_opaque_existential_1(v5 + 32);
  }
}

uint64_t outlined consume of TableColumnCustomizationID.Base(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

uint64_t initializeWithCopy for StaticTableHeaderButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = type metadata accessor for TableColumnCollection.Entry(0);
  v8 = v7[5];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = *(v10 + 24);
  v15 = *(v10 + 32);
  outlined copy of TableColumnCustomizationID.Base(*v10, v12, v13, v14, v15);
  *v9 = v11;
  *(v9 + 8) = v12;
  *(v9 + 16) = v13;
  *(v9 + 24) = v14;
  *(v9 + 32) = v15;
  *(a1 + v7[6]) = *(a2 + v7[6]);
  v16 = v7[7];
  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = *(v18 + 16);
  *v17 = *v18;
  *(v17 + 16) = v19;
  *(v17 + 32) = *(v18 + 32);
  *(a1 + v7[8]) = *(a2 + v7[8]);
  *(a1 + v7[9]) = *(a2 + v7[9]);
  *(a1 + v7[10]) = *(a2 + v7[10]);
  v20 = v7[11];
  v21 = a1 + v20;
  v22 = a2 + v20;
  v23 = *(a2 + v20 + 24);
  if (v23)
  {
    *(v21 + 24) = v23;
    (**(v23 - 8))(v21, v22);
    v24 = *(v22 + 56);
    *(v21 + 56) = v24;
    (**(v24 - 8))(v21 + 32, v22 + 32);
    *(v21 + 72) = *(v22 + 72);
    v25 = *(v22 + 112);
    v26 = *(v22 + 96);
    *(v21 + 80) = *(v22 + 80);
    *(v21 + 96) = v26;
    *(v21 + 112) = v25;
  }

  else
  {
    v27 = *(v22 + 80);
    *(v21 + 64) = *(v22 + 64);
    *(v21 + 80) = v27;
    *(v21 + 96) = *(v22 + 96);
    *(v21 + 112) = *(v22 + 112);
    v28 = *(v22 + 16);
    *v21 = *v22;
    *(v21 + 16) = v28;
    v29 = *(v22 + 48);
    *(v21 + 32) = *(v22 + 32);
    *(v21 + 48) = v29;
  }

  *(a1 + v7[12]) = *(a2 + v7[12]);
  v30 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v30) = *(a2 + v30);

  return a1;
}

uint64_t assignWithCopy for StaticTableHeaderButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = type metadata accessor for TableColumnCollection.Entry(0);
  v8 = v7[5];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = *(v10 + 24);
  v15 = *(v10 + 32);
  outlined copy of TableColumnCustomizationID.Base(*v10, v12, v13, v14, v15);
  v16 = *v9;
  v17 = *(v9 + 8);
  v18 = *(v9 + 16);
  v19 = *(v9 + 24);
  v20 = *(v9 + 32);
  *v9 = v11;
  *(v9 + 8) = v12;
  *(v9 + 16) = v13;
  *(v9 + 24) = v14;
  *(v9 + 32) = v15;
  outlined consume of TableColumnCustomizationID.Base(v16, v17, v18, v19, v20);
  *(a1 + v7[6]) = *(a2 + v7[6]);
  v21 = v7[7];
  v22 = a1 + v21;
  v23 = a2 + v21;
  v24 = *(v23 + 32);
  v25 = *(v23 + 16);
  *v22 = *v23;
  *(v22 + 16) = v25;
  *(v22 + 32) = v24;
  *(a1 + v7[8]) = *(a2 + v7[8]);
  *(a1 + v7[9]) = *(a2 + v7[9]);
  *(a1 + v7[10]) = *(a2 + v7[10]);
  v26 = v7[11];
  v27 = a1 + v26;
  v28 = (a2 + v26);
  v29 = *(a2 + v26 + 24);
  if (*(a1 + v26 + 24))
  {
    if (v29)
    {
      __swift_assign_boxed_opaque_existential_0(v27, v28);
      __swift_assign_boxed_opaque_existential_1((v27 + 32), v28 + 4);
      v30 = v28[10];
      *(v27 + 72) = v28[9];
      *(v27 + 80) = v30;

      v31 = v28[12];
      *(v27 + 88) = v28[11];
      *(v27 + 96) = v31;

      v32 = v28[14];
      *(v27 + 104) = v28[13];
      *(v27 + 112) = v32;
    }

    else
    {
      outlined destroy of SwiftUIAnySortComparator(v27);
      v38 = *(v28 + 3);
      v40 = *v28;
      v39 = *(v28 + 1);
      *(v27 + 32) = *(v28 + 2);
      *(v27 + 48) = v38;
      *v27 = v40;
      *(v27 + 16) = v39;
      v42 = *(v28 + 5);
      v41 = *(v28 + 6);
      v43 = *(v28 + 4);
      *(v27 + 112) = v28[14];
      *(v27 + 80) = v42;
      *(v27 + 96) = v41;
      *(v27 + 64) = v43;
    }
  }

  else if (v29)
  {
    *(v27 + 24) = v29;
    (**(v29 - 8))(v27, v28);
    v33 = v28[7];
    *(v27 + 56) = v33;
    *(v27 + 64) = v28[8];
    (**(v33 - 8))(v27 + 32, (v28 + 4));
    v34 = v28[10];
    *(v27 + 72) = v28[9];
    *(v27 + 80) = v34;
    v35 = v28[12];
    *(v27 + 88) = v28[11];
    *(v27 + 96) = v35;
    v36 = v28[13];
    v37 = v28[14];
    *(v27 + 104) = v36;
    *(v27 + 112) = v37;
  }

  else
  {
    v44 = *v28;
    v45 = *(v28 + 1);
    v46 = *(v28 + 3);
    *(v27 + 32) = *(v28 + 2);
    *(v27 + 48) = v46;
    *v27 = v44;
    *(v27 + 16) = v45;
    v47 = *(v28 + 4);
    v48 = *(v28 + 5);
    v49 = *(v28 + 6);
    *(v27 + 112) = v28[14];
    *(v27 + 80) = v48;
    *(v27 + 96) = v49;
    *(v27 + 64) = v47;
  }

  *(a1 + v7[12]) = *(a2 + v7[12]);

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t *__swift_assign_boxed_opaque_existential_0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t initializeWithTake for StaticTableHeaderButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = type metadata accessor for TableColumnCollection.Entry(0);
  v8 = v7[5];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v11;
  *(v9 + 32) = *(v10 + 32);
  *(a1 + v7[6]) = *(a2 + v7[6]);
  v12 = v7[7];
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v14 + 16);
  *v13 = *v14;
  *(v13 + 16) = v15;
  *(v13 + 32) = *(v14 + 32);
  *(a1 + v7[8]) = *(a2 + v7[8]);
  *(a1 + v7[9]) = *(a2 + v7[9]);
  *(a1 + v7[10]) = *(a2 + v7[10]);
  v16 = v7[11];
  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = *(v18 + 16);
  *v17 = *v18;
  *(v17 + 16) = v19;
  v20 = *(v18 + 48);
  *(v17 + 32) = *(v18 + 32);
  *(v17 + 48) = v20;
  *(v17 + 112) = *(v18 + 112);
  v21 = *(v18 + 96);
  *(v17 + 80) = *(v18 + 80);
  *(v17 + 96) = v21;
  *(v17 + 64) = *(v18 + 64);
  *(a1 + v7[12]) = *(a2 + v7[12]);
  v22 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v22) = *(a2 + v22);
  return a1;
}

uint64_t assignWithTake for StaticTableHeaderButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = type metadata accessor for TableColumnCollection.Entry(0);
  v8 = v7[5];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = *(v10 + 32);
  v12 = *v9;
  v13 = *(v9 + 8);
  v14 = *(v9 + 16);
  v15 = *(v9 + 24);
  v16 = *(v9 + 32);
  v17 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v17;
  *(v9 + 32) = v11;
  outlined consume of TableColumnCustomizationID.Base(v12, v13, v14, v15, v16);
  *(a1 + v7[6]) = *(a2 + v7[6]);
  v18 = v7[7];
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = *(v20 + 16);
  *v19 = *v20;
  *(v19 + 16) = v21;
  *(v19 + 32) = *(v20 + 32);
  *(a1 + v7[8]) = *(a2 + v7[8]);
  *(a1 + v7[9]) = *(a2 + v7[9]);
  *(a1 + v7[10]) = *(a2 + v7[10]);
  v22 = v7[11];
  v23 = a1 + v22;
  v24 = a2 + v22;
  if (!*(a1 + v22 + 24))
  {
    goto LABEL_5;
  }

  if (!*(v24 + 24))
  {
    outlined destroy of SwiftUIAnySortComparator(v23);
LABEL_5:
    v27 = *(v24 + 80);
    *(v23 + 64) = *(v24 + 64);
    *(v23 + 80) = v27;
    *(v23 + 96) = *(v24 + 96);
    *(v23 + 112) = *(v24 + 112);
    v28 = *(v24 + 16);
    *v23 = *v24;
    *(v23 + 16) = v28;
    v29 = *(v24 + 48);
    *(v23 + 32) = *(v24 + 32);
    *(v23 + 48) = v29;
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  v25 = *(v24 + 16);
  *v23 = *v24;
  *(v23 + 16) = v25;
  __swift_destroy_boxed_opaque_existential_1(v23 + 32);
  v26 = *(v24 + 48);
  *(v23 + 32) = *(v24 + 32);
  *(v23 + 48) = v26;
  *(v23 + 64) = *(v24 + 64);
  *(v23 + 72) = *(v24 + 72);

  *(v23 + 88) = *(v24 + 88);

  *(v23 + 104) = *(v24 + 104);

LABEL_6:
  *(a1 + v7[12]) = *(a2 + v7[12]);

  v30 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v30) = *(a2 + v30);
  return a1;
}

uint64_t type metadata completion function for StaticTableHeaderButton()
{
  result = type metadata accessor for TableColumnCollection.Entry(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for SortableTableHeaderButton(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v28 = *a2;
    *a1 = *a2;
    a1 = (v28 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = type metadata accessor for TableColumnCollection.Entry(0);
    v9 = v8[5];
    v10 = a1 + v9;
    v11 = a2 + v9;
    v12 = *v11;
    v13 = *(v11 + 1);
    v14 = *(v11 + 2);
    v15 = *(v11 + 3);
    v16 = v11[32];
    outlined copy of TableColumnCustomizationID.Base(*v11, v13, v14, v15, v16);
    *v10 = v12;
    *(v10 + 1) = v13;
    *(v10 + 2) = v14;
    *(v10 + 3) = v15;
    v10[32] = v16;
    *(a1 + v8[6]) = *(a2 + v8[6]);
    v17 = v8[7];
    v18 = a1 + v17;
    v19 = a2 + v17;
    v20 = *(v19 + 1);
    *v18 = *v19;
    *(v18 + 1) = v20;
    v18[32] = v19[32];
    *(a1 + v8[8]) = *(a2 + v8[8]);
    *(a1 + v8[9]) = *(a2 + v8[9]);
    *(a1 + v8[10]) = *(a2 + v8[10]);
    v21 = v8[11];
    v22 = a1 + v21;
    v23 = a2 + v21;
    v24 = *(a2 + v21 + 24);
    if (v24)
    {
      *(v22 + 3) = v24;
      (**(v24 - 8))(v22, v23);
      v25 = *(v23 + 56);
      *(v22 + 56) = v25;
      (**(v25 - 8))((v22 + 32), (v23 + 32));
      *(v22 + 9) = *(v23 + 9);
      v26 = *(v23 + 14);
      v27 = *(v23 + 6);
      *(v22 + 5) = *(v23 + 5);
      *(v22 + 6) = v27;
      *(v22 + 14) = v26;
    }

    else
    {
      v29 = *(v23 + 5);
      *(v22 + 4) = *(v23 + 4);
      *(v22 + 5) = v29;
      *(v22 + 6) = *(v23 + 6);
      *(v22 + 14) = *(v23 + 14);
      v30 = *(v23 + 1);
      *v22 = *v23;
      *(v22 + 1) = v30;
      v31 = *(v23 + 3);
      *(v22 + 2) = *(v23 + 2);
      *(v22 + 3) = v31;
    }

    *(a1 + v8[12]) = *(a2 + v8[12]);
    v32 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    v33 = (a1 + v32);
    v34 = (a2 + v32);
    v35 = v34[1];
    *v33 = *v34;
    v33[1] = v35;
    v33[2] = v34[2];
    *(a1 + a3[7]) = *(a2 + a3[7]);
  }

  return a1;
}

uint64_t destroy for SortableTableHeaderButton(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(a1, v2);
  v3 = type metadata accessor for TableColumnCollection.Entry(0);
  v4 = a1 + *(v3 + 20);
  outlined consume of TableColumnCustomizationID.Base(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32));
  v5 = a1 + *(v3 + 44);
  if (*(v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + *(v3 + 44));
    __swift_destroy_boxed_opaque_existential_1(v5 + 32);
  }
}

uint64_t initializeWithCopy for SortableTableHeaderButton(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = type metadata accessor for TableColumnCollection.Entry(0);
  v8 = v7[5];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = *(v10 + 24);
  v15 = *(v10 + 32);
  outlined copy of TableColumnCustomizationID.Base(*v10, v12, v13, v14, v15);
  *v9 = v11;
  *(v9 + 8) = v12;
  *(v9 + 16) = v13;
  *(v9 + 24) = v14;
  *(v9 + 32) = v15;
  *(a1 + v7[6]) = *(a2 + v7[6]);
  v16 = v7[7];
  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = *(v18 + 16);
  *v17 = *v18;
  *(v17 + 16) = v19;
  *(v17 + 32) = *(v18 + 32);
  *(a1 + v7[8]) = *(a2 + v7[8]);
  *(a1 + v7[9]) = *(a2 + v7[9]);
  *(a1 + v7[10]) = *(a2 + v7[10]);
  v20 = v7[11];
  v21 = a1 + v20;
  v22 = a2 + v20;
  v23 = *(a2 + v20 + 24);
  if (v23)
  {
    *(v21 + 24) = v23;
    (**(v23 - 8))(v21, v22);
    v24 = *(v22 + 56);
    *(v21 + 56) = v24;
    (**(v24 - 8))(v21 + 32, v22 + 32);
    *(v21 + 72) = *(v22 + 72);
    v25 = *(v22 + 112);
    v26 = *(v22 + 96);
    *(v21 + 80) = *(v22 + 80);
    *(v21 + 96) = v26;
    *(v21 + 112) = v25;
  }

  else
  {
    v27 = *(v22 + 80);
    *(v21 + 64) = *(v22 + 64);
    *(v21 + 80) = v27;
    *(v21 + 96) = *(v22 + 96);
    *(v21 + 112) = *(v22 + 112);
    v28 = *(v22 + 16);
    *v21 = *v22;
    *(v21 + 16) = v28;
    v29 = *(v22 + 48);
    *(v21 + 32) = *(v22 + 32);
    *(v21 + 48) = v29;
  }

  *(a1 + v7[12]) = *(a2 + v7[12]);
  v30 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v31 = (a1 + v30);
  v32 = (a2 + v30);
  v33 = v32[1];
  *v31 = *v32;
  v31[1] = v33;
  v31[2] = v32[2];
  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t assignWithCopy for SortableTableHeaderButton(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = type metadata accessor for TableColumnCollection.Entry(0);
  v8 = v7[5];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = *(v10 + 24);
  v15 = *(v10 + 32);
  outlined copy of TableColumnCustomizationID.Base(*v10, v12, v13, v14, v15);
  v16 = *v9;
  v17 = *(v9 + 8);
  v18 = *(v9 + 16);
  v19 = *(v9 + 24);
  v20 = *(v9 + 32);
  *v9 = v11;
  *(v9 + 8) = v12;
  *(v9 + 16) = v13;
  *(v9 + 24) = v14;
  *(v9 + 32) = v15;
  outlined consume of TableColumnCustomizationID.Base(v16, v17, v18, v19, v20);
  *(a1 + v7[6]) = *(a2 + v7[6]);
  v21 = v7[7];
  v22 = a1 + v21;
  v23 = a2 + v21;
  v24 = *(v23 + 32);
  v25 = *(v23 + 16);
  *v22 = *v23;
  *(v22 + 16) = v25;
  *(v22 + 32) = v24;
  *(a1 + v7[8]) = *(a2 + v7[8]);
  *(a1 + v7[9]) = *(a2 + v7[9]);
  *(a1 + v7[10]) = *(a2 + v7[10]);
  v26 = v7[11];
  v27 = a1 + v26;
  v28 = (a2 + v26);
  v29 = *(a2 + v26 + 24);
  if (*(a1 + v26 + 24))
  {
    if (v29)
    {
      __swift_assign_boxed_opaque_existential_0(v27, v28);
      __swift_assign_boxed_opaque_existential_1((v27 + 32), v28 + 4);
      v30 = v28[10];
      *(v27 + 72) = v28[9];
      *(v27 + 80) = v30;

      v31 = v28[12];
      *(v27 + 88) = v28[11];
      *(v27 + 96) = v31;

      v32 = v28[14];
      *(v27 + 104) = v28[13];
      *(v27 + 112) = v32;
    }

    else
    {
      outlined destroy of SwiftUIAnySortComparator(v27);
      v38 = *(v28 + 3);
      v40 = *v28;
      v39 = *(v28 + 1);
      *(v27 + 32) = *(v28 + 2);
      *(v27 + 48) = v38;
      *v27 = v40;
      *(v27 + 16) = v39;
      v42 = *(v28 + 5);
      v41 = *(v28 + 6);
      v43 = *(v28 + 4);
      *(v27 + 112) = v28[14];
      *(v27 + 80) = v42;
      *(v27 + 96) = v41;
      *(v27 + 64) = v43;
    }
  }

  else if (v29)
  {
    *(v27 + 24) = v29;
    (**(v29 - 8))(v27, v28);
    v33 = v28[7];
    *(v27 + 56) = v33;
    *(v27 + 64) = v28[8];
    (**(v33 - 8))(v27 + 32, (v28 + 4));
    v34 = v28[10];
    *(v27 + 72) = v28[9];
    *(v27 + 80) = v34;
    v35 = v28[12];
    *(v27 + 88) = v28[11];
    *(v27 + 96) = v35;
    v36 = v28[13];
    v37 = v28[14];
    *(v27 + 104) = v36;
    *(v27 + 112) = v37;
  }

  else
  {
    v44 = *v28;
    v45 = *(v28 + 1);
    v46 = *(v28 + 3);
    *(v27 + 32) = *(v28 + 2);
    *(v27 + 48) = v46;
    *v27 = v44;
    *(v27 + 16) = v45;
    v47 = *(v28 + 4);
    v48 = *(v28 + 5);
    v49 = *(v28 + 6);
    *(v27 + 112) = v28[14];
    *(v27 + 80) = v48;
    *(v27 + 96) = v49;
    *(v27 + 64) = v47;
  }

  *(a1 + v7[12]) = *(a2 + v7[12]);

  *(a1 + a3[5]) = *(a2 + a3[5]);
  v50 = a3[6];
  v51 = a1 + v50;
  v52 = a2 + v50;
  *(a1 + v50) = *(a2 + v50);

  *(v51 + 8) = *(v52 + 8);

  *(v51 + 16) = *(v52 + 16);

  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t initializeWithTake for SortableTableHeaderButton(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = type metadata accessor for TableColumnCollection.Entry(0);
  v8 = v7[5];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v11;
  *(v9 + 32) = *(v10 + 32);
  *(a1 + v7[6]) = *(a2 + v7[6]);
  v12 = v7[7];
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v14 + 16);
  *v13 = *v14;
  *(v13 + 16) = v15;
  *(v13 + 32) = *(v14 + 32);
  *(a1 + v7[8]) = *(a2 + v7[8]);
  *(a1 + v7[9]) = *(a2 + v7[9]);
  *(a1 + v7[10]) = *(a2 + v7[10]);
  v16 = v7[11];
  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = *(v18 + 16);
  *v17 = *v18;
  *(v17 + 16) = v19;
  v20 = *(v18 + 48);
  *(v17 + 32) = *(v18 + 32);
  *(v17 + 48) = v20;
  *(v17 + 112) = *(v18 + 112);
  v21 = *(v18 + 96);
  *(v17 + 80) = *(v18 + 80);
  *(v17 + 96) = v21;
  *(v17 + 64) = *(v18 + 64);
  *(a1 + v7[12]) = *(a2 + v7[12]);
  v22 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v23 = a1 + v22;
  v24 = a2 + v22;
  *v23 = *v24;
  *(v23 + 16) = *(v24 + 16);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t assignWithTake for SortableTableHeaderButton(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = type metadata accessor for TableColumnCollection.Entry(0);
  v8 = v7[5];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = *(v10 + 32);
  v12 = *v9;
  v13 = *(v9 + 8);
  v14 = *(v9 + 16);
  v15 = *(v9 + 24);
  v16 = *(v9 + 32);
  v17 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v17;
  *(v9 + 32) = v11;
  outlined consume of TableColumnCustomizationID.Base(v12, v13, v14, v15, v16);
  *(a1 + v7[6]) = *(a2 + v7[6]);
  v18 = v7[7];
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = *(v20 + 16);
  *v19 = *v20;
  *(v19 + 16) = v21;
  *(v19 + 32) = *(v20 + 32);
  *(a1 + v7[8]) = *(a2 + v7[8]);
  *(a1 + v7[9]) = *(a2 + v7[9]);
  *(a1 + v7[10]) = *(a2 + v7[10]);
  v22 = v7[11];
  v23 = a1 + v22;
  v24 = a2 + v22;
  if (!*(a1 + v22 + 24))
  {
    goto LABEL_5;
  }

  if (!*(v24 + 24))
  {
    outlined destroy of SwiftUIAnySortComparator(v23);
LABEL_5:
    v27 = *(v24 + 80);
    *(v23 + 64) = *(v24 + 64);
    *(v23 + 80) = v27;
    *(v23 + 96) = *(v24 + 96);
    *(v23 + 112) = *(v24 + 112);
    v28 = *(v24 + 16);
    *v23 = *v24;
    *(v23 + 16) = v28;
    v29 = *(v24 + 48);
    *(v23 + 32) = *(v24 + 32);
    *(v23 + 48) = v29;
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  v25 = *(v24 + 16);
  *v23 = *v24;
  *(v23 + 16) = v25;
  __swift_destroy_boxed_opaque_existential_1(v23 + 32);
  v26 = *(v24 + 48);
  *(v23 + 32) = *(v24 + 32);
  *(v23 + 48) = v26;
  *(v23 + 64) = *(v24 + 64);
  *(v23 + 72) = *(v24 + 72);

  *(v23 + 88) = *(v24 + 88);

  *(v23 + 104) = *(v24 + 104);

LABEL_6:
  *(a1 + v7[12]) = *(a2 + v7[12]);

  v30 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v31 = a1 + v30;
  v32 = a2 + v30;
  *(a1 + v30) = *(a2 + v30);

  *(v31 + 8) = *(v32 + 8);

  *(v31 + 16) = *(v32 + 16);

  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t type metadata completion function for SortableTableHeaderButton()
{
  result = type metadata accessor for TableColumnCollection.Entry(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, type metadata accessor for ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>);
    lazy protocol witness table accessor for type ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>();
    lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>> and conformance HStack<A>, type metadata accessor for HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>);
    lazy protocol witness table accessor for type LabelStyleWritingModifier<TableHeaderLabelStyle> and conformance LabelStyleWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Font?>(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<TableStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<TableStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<TableStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(255, &lazy cache variable for type metadata for StyleContextWriter<TableStyleContext>, MEMORY[0x1E697F2C8], MEMORY[0x1E697F2C0], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<TableStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>)
  {
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(255, &lazy cache variable for type metadata for _DefaultForegroundStyleModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980AB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void type metadata accessor for Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>()
{
  if (!lazy cache variable for type metadata for Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for Button();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>);
    }
  }
}

void type metadata accessor for ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>)
  {
    type metadata accessor for HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>(255);
    type metadata accessor for [SwiftUIAnySortComparator](255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Image.Scale>, MEMORY[0x1E69816F0], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>);
    }
  }
}

void type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for (ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)(255, a3, a4, a5);
    v6 = type metadata accessor for TupleView();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<LayoutPriorityTraitKey>, MEMORY[0x1E697FEB0], MEMORY[0x1E697FEA0], MEMORY[0x1E697FDB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<Image, Image>?()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<Image, Image>?)
  {
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(255, &lazy cache variable for type metadata for _ConditionalContent<Image, Image>, MEMORY[0x1E6981748], MEMORY[0x1E6981748], MEMORY[0x1E697F960]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<Image, Image>?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>();
    lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for StaticIf<IsVisionEnabledPredicate, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>>()
{
  if (!lazy cache variable for type metadata for StaticIf<IsVisionEnabledPredicate, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>();
    type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, type metadata accessor for Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<IsVisionEnabledPredicate, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, type metadata accessor for Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>);
    type metadata accessor for VStack<TableHeaderViewCore>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle, &type metadata for PlainButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>);
    }
  }
}

uint64_t objectdestroy_40Tm()
{
  v1 = *(type metadata accessor for SortableTableHeaderButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = type metadata accessor for TableColumnCollection.Entry(0);
  v5 = v2 + *(v4 + 20);
  outlined consume of TableColumnCustomizationID.Base(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32));
  v6 = v2 + *(v4 + 44);
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + *(v4 + 44));
    __swift_destroy_boxed_opaque_existential_1(v6 + 32);
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in SortableTableHeaderButton.sortableButton.getter()
{
  v1 = *(type metadata accessor for SortableTableHeaderButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in SortableTableHeaderButton.sortableButton.getter(v2);
}

uint64_t outlined copy of _ConditionalContent<Image, Image>?(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t outlined consume of _ConditionalContent<Image, Image>?(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

void type metadata accessor for ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>)
  {
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(255, &lazy cache variable for type metadata for HStack<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], MEMORY[0x1E69817F0]);
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(255, &lazy cache variable for type metadata for _DefaultForegroundStyleModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980AB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(a4, a5);
    v8 = type metadata accessor for HStack();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, LabelStyleConfiguration.Title)()
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, LabelStyleConfiguration.Title))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, type metadata accessor for _EnvironmentKeyTransformModifier<[AnyFontModifier]>, MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, LabelStyleConfiguration.Title));
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<IsVisionEnabledPredicate, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<IsVisionEnabledPredicate, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<IsVisionEnabledPredicate, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<IsVisionEnabledPredicate, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, StyleContextWriter<TableStyleContext>> and conformanc(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
    lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<IsVisionEnabledPredicate, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, type metadata accessor for Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>);
    lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>, type metadata accessor for Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, StyleContextWriter<TableStyleContext>> and conformanc(&lazy protocol witness table cache variable for type ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, lazy protocol witness table accessor for type HStack<AnyView> and conformance HStack<A>, lazy protocol witness table accessor for type _DefaultForegroundStyleModifier<AnyShapeStyle> and conformance _DefaultForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, StyleContextWriter<TableStyleContext>> and conformanc(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type HStack<AnyView> and conformance HStack<A>()
{
  result = lazy protocol witness table cache variable for type HStack<AnyView> and conformance HStack<A>;
  if (!lazy protocol witness table cache variable for type HStack<AnyView> and conformance HStack<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(255, &lazy cache variable for type metadata for HStack<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], MEMORY[0x1E69817F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HStack<AnyView> and conformance HStack<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpacerSizing.Kind and conformance SpacerSizing.Kind()
{
  result = lazy protocol witness table cache variable for type SpacerSizing.Kind and conformance SpacerSizing.Kind;
  if (!lazy protocol witness table cache variable for type SpacerSizing.Kind and conformance SpacerSizing.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpacerSizing.Kind and conformance SpacerSizing.Kind);
  }

  return result;
}

SwiftUI::CarouselTabViewStyle __swiftcall CarouselTabViewStyle.init()()
{
  v0 = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return v0;
}

uint64_t getEnumTagSinglePayload for CarouselTabViewStyle(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for CarouselTabViewStyle(_WORD *result, unsigned int a2, unsigned int a3)
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
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
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
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CarouselTabViewStyle.CrownIndicatorMode.CarouselCrownIndicatorMode and conformance CarouselTabViewStyle.CrownIndicatorMode.CarouselCrownIndicatorMode()
{
  result = lazy protocol witness table cache variable for type CarouselTabViewStyle.CrownIndicatorMode.CarouselCrownIndicatorMode and conformance CarouselTabViewStyle.CrownIndicatorMode.CarouselCrownIndicatorMode;
  if (!lazy protocol witness table cache variable for type CarouselTabViewStyle.CrownIndicatorMode.CarouselCrownIndicatorMode and conformance CarouselTabViewStyle.CrownIndicatorMode.CarouselCrownIndicatorMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CarouselTabViewStyle.CrownIndicatorMode.CarouselCrownIndicatorMode and conformance CarouselTabViewStyle.CrownIndicatorMode.CarouselCrownIndicatorMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CarouselTabViewStyle.PagingStyle.Backing and conformance CarouselTabViewStyle.PagingStyle.Backing()
{
  result = lazy protocol witness table cache variable for type CarouselTabViewStyle.PagingStyle.Backing and conformance CarouselTabViewStyle.PagingStyle.Backing;
  if (!lazy protocol witness table cache variable for type CarouselTabViewStyle.PagingStyle.Backing and conformance CarouselTabViewStyle.PagingStyle.Backing)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CarouselTabViewStyle.PagingStyle.Backing and conformance CarouselTabViewStyle.PagingStyle.Backing);
  }

  return result;
}

char *PlatformDocument.init(fileURL:documentBoxType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v35 - v10;
  *&v4[OBJC_IVAR____TtC7SwiftUI16PlatformDocument_notificationObserver] = 0;
  v12 = (*(a3 + 16))(a2, a3, v9);
  v13 = &v4[OBJC_IVAR____TtC7SwiftUI16PlatformDocument_documentBox];
  v13->super.isa = v12;
  v13->_urlString = a3;
  v36 = a1;
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v16 = type metadata accessor for PlatformDocument();
  v38.receiver = v4;
  v38.super_class = v16;
  v17 = objc_msgSendSuper2(&v38, sel_initWithFileURL_, v15);

  v18 = &v17[OBJC_IVAR____TtC7SwiftUI16PlatformDocument_documentBox];
  v19 = *&v17[OBJC_IVAR____TtC7SwiftUI16PlatformDocument_documentBox + 8];
  ObjectType = swift_getObjectType();
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v11, a1, v21);
  (*(v22 + 56))(v11, 0, 1, v21);
  v23 = *(v19 + 64);
  v24 = v17;
  swift_unknownObjectRetain();
  v23(v11, ObjectType, v19);
  swift_unknownObjectRelease();
  v25 = *(v18 + 1);
  v26 = swift_getObjectType();
  swift_unknownObjectRetain();
  (*(v25 + 88))([v24 documentState] == 0, v26, v25);
  swift_unknownObjectRelease();
  v27 = *(v18 + 1);
  v28 = swift_getObjectType();
  swift_unknownObjectRetain();
  (*(v27 + 112))([v24 undoManager], v28, v27);
  swift_unknownObjectRelease();
  v29 = [objc_opt_self() defaultCenter];
  v30 = *MEMORY[0x1E69DDCD8];
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in PlatformDocument.init(fileURL:documentBoxType:);
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  aBlock[3] = &block_descriptor;
  v32 = _Block_copy(aBlock);

  v33 = [v29 addObserverForName:v30 object:v24 queue:0 usingBlock:v32];
  _Block_release(v32);

  (*(v22 + 8))(v36, v21);
  *&v24[OBJC_IVAR____TtC7SwiftUI16PlatformDocument_notificationObserver] = v33;

  swift_unknownObjectRelease();
  return v24;
}

uint64_t closure #1 in PlatformDocument.init(fileURL:documentBoxType:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC7SwiftUI16PlatformDocument_documentBox + 8);
    v2 = result;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    (*(v1 + 88))([v2 documentState] == 0, ObjectType, v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

id PlatformDocument.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC7SwiftUI16PlatformDocument_notificationObserver];
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];
    swift_unknownObjectRelease();
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for PlatformDocument();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id PlatformDocument.__allocating_init(fileURL:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v7 = [v3 initWithFileURL_];

  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t FileWrapperPlatformDocument.contents(forType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v29 = a3;
  v7 = type metadata accessor for URL();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for UTType();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  UTType.init(_:)();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of UTType?(v12);
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(122);
    MEMORY[0x18D00C9B0](0x20746E65746E6F43, 0xED00002065707974);
    MEMORY[0x18D00C9B0](a1, a2);
    MEMORY[0x18D00C9B0](0xD00000000000006BLL, 0x800000018CD3D800);
    MEMORY[0x18D009810](v27, v28);

    specialized static DocumentUtils.contentTypeNotRegisteredError()();
    return swift_willThrow();
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    ObjectType = swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (result)
    {
      v19 = (*(result + 24))(v16, ObjectType, result);
      if (!v4)
      {
        v20 = v19;
        if (v19)
        {
          v21 = [v3 fileURL];
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v22 = objc_allocWithZone(MEMORY[0x1E696AC38]);
          v23 = @nonobjc NSFileWrapper.init(url:options:)(v9, 0);
          v24 = v20(v23);
          v25 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSFileWrapper);
          v26 = v29;
          v29[3] = v25;
          outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v20);

          *v26 = v24;
        }

        else
        {
          MEMORY[0x18D009810](0xD000000000000036, 0x800000018CD3D870);
          specialized static DocumentUtils.serializationFailed.getter();
          swift_willThrow();
        }
      }

      return (*(v14 + 8))(v16, v13);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t FileWrapperPlatformDocument.read(from:)(uint64_t a1)
{
  v2 = type metadata accessor for CocoaError.Code();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CocoaError();
  v43 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for UTType();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v38 - v17;
  if (URL.isFileURL.getter())
  {
    URL.swiftUI_contentType.getter();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      v18 = outlined destroy of UTType?(v12);
      MEMORY[0x18CFFF130](v18);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type CocoaError and conformance CocoaError, MEMORY[0x1E6967E98]);
      _BridgedStoredNSError.init(_:userInfo:)();
      CocoaError._nsError.getter();
      (*(v43 + 8))(v6, v4);
      return swift_willThrow();
    }

    else
    {
      v20 = v45;
      v43 = *(v14 + 32);
      (v43)(v45, v12, v13);
      (*(v40 + 16))(v9, a1, v41);
      v21 = objc_allocWithZone(MEMORY[0x1E696AC38]);
      v22 = v44;
      v23 = @nonobjc NSFileWrapper.init(url:options:)(v9, 1);
      if (v22)
      {
        return (*(v14 + 8))(v20, v13);
      }

      else
      {
        v24 = v23;
        v52 = 0;
        v44 = v14;
        v25 = v38;
        (*(v14 + 16))(v38, v20, v13);
        v26 = (*(v14 + 80) + 32) & ~*(v14 + 80);
        v27 = (v15 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
        v28 = swift_allocObject();
        v29 = v39;
        *(v28 + 16) = v39;
        *(v28 + 24) = v24;
        (v43)(v28 + v26, v25, v13);
        *(v28 + v27) = &v52;
        v30 = swift_allocObject();
        *(v30 + 16) = partial apply for closure #1 in FileWrapperPlatformDocument.read(from:);
        *(v30 + 24) = v28;
        v50 = partial apply for thunk for @callee_guaranteed () -> ();
        v51 = v30;
        aBlock = MEMORY[0x1E69E9820];
        v47 = 1107296256;
        v48 = thunk for @escaping @callee_guaranteed () -> ();
        v49 = &block_descriptor_18;
        v31 = _Block_copy(&aBlock);
        v32 = v29;
        v33 = v24;

        v34 = [v32 _fileOpeningQueue];
        if (!v34)
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
          v34 = static OS_dispatch_queue.main.getter();
        }

        [v32 _performBlock_synchronouslyOnQueue_];
        _Block_release(v31);

        v35 = v52;
        if (v52)
        {
          swift_willThrow();
          v36 = v35;

          (*(v44 + 8))(v45, v13);
        }

        else
        {
          (*(v44 + 8))(v45, v13);
        }
      }
    }
  }

  else
  {
    aBlock = 0;
    v47 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    MEMORY[0x18D00C9B0](0xD000000000000039, 0x800000018CD3D7C0);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v37);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in FileWrapperPlatformDocument.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    return (*(result + 16))(a2, a3, ObjectType, result);
  }

  __break(1u);
  return result;
}

char *FileWrapperPlatformDocument.__allocating_init(fileURL:documentBoxType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v3);
  (*(v8 + 16))(v10, a1, v7);
  v12 = PlatformDocument.init(fileURL:documentBoxType:)(v10, a2, a3);
  (*(v8 + 8))(a1, v7);
  return v12;
}

id FileWrapperPlatformDocument.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id @nonobjc NSFileWrapper.init(url:options:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v17 = *MEMORY[0x1E69E9840];
  URL._bridgeToObjectiveC()(v17);
  v7 = v6;
  v16 = 0;
  v8 = [v3 initWithURL:v6 options:a2 error:&v16];

  v9 = v16;
  if (v8)
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 8);
    v12 = v9;
    v11(a1, v10);
  }

  else
  {
    v13 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  return v8;
}

uint64_t outlined destroy of UTType?(uint64_t a1)
{
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, Any>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t partial apply for closure #1 in FileWrapperPlatformDocument.read(from:)()
{
  v1 = *(type metadata accessor for UTType() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return closure #1 in FileWrapperPlatformDocument.read(from:)(v2, v3, v4);
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (String, Any)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (String, Any)()
{
  if (!lazy cache variable for type metadata for (String, Any))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, Any));
    }
  }
}

double static MapKitDynamicPropertyCache.fields(of:)@<D0>(uint64_t a1@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  return result;
}

uint64_t MapKitBodyAccessor.makeBody(container:inputs:fields:)(_DWORD *a1, void *a2, int *a3, __int128 *a4, uint64_t *a5, uint64_t a6)
{
  v33 = a1;
  v34 = a2;
  v10 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Transformer();
  v32 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29[-v14];
  v30 = *a3;
  v17 = *a5;
  v16 = a5[1];
  v18 = *(a5 + 16);
  LODWORD(a5) = *(a5 + 5);
  v19 = a4[1];
  v44 = *a4;
  v45 = v19;
  v46 = a4[2];
  (*(v10 + 16))(v12, v31, a6);
  (*(v10 + 32))(v15, v12, a6);
  v39 = v30;
  v35 = v17;
  v36 = v16;
  v37 = v18;
  v38 = a5;
  outlined copy of DynamicPropertyCache.Fields.Layout();
  swift_getWitnessTable();
  BodyAccessor.makeBody(container:inputs:fields:)();
  outlined consume of DynamicPropertyCache.Fields.Layout();
  result = (*(v32 + 8))(v15, v13);
  v21 = v43;
  v22 = v40;
  v23 = v41;
  v24 = v42;
  v25 = v45;
  *a4 = v44;
  a4[1] = v25;
  a4[2] = v46;
  *v33 = v21;
  if (v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = v22;
  }

  if (v24)
  {
    v27 = 0;
  }

  else
  {
    v27 = v23;
  }

  v28 = v34;
  *v34 = v26;
  v28[1] = v27;
  *(v28 + 16) = v24;
  return result;
}

uint64_t MapKitBodyAccessor.setBody(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Transformer();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  (*(v5 + 16))(v7, v3, a3, v10);
  (*(v5 + 32))(v12, v7, a3);
  swift_getWitnessTable();
  BodyAccessor.setBody(_:)();
  return (*(v9 + 8))(v12, v8);
}

uint64_t MapKitDynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)()
{
  outlined copy of DynamicPropertyCache.Fields.Layout();
  _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();

  return outlined consume of DynamicPropertyCache.Fields.Layout();
}

uint64_t initializeBufferWithCopyOfBuffer for MapKitDynamicPropertyCache.Fields(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  outlined copy of DynamicPropertyCache.Fields.Layout();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 20) = *(a2 + 5);
  return a1;
}

uint64_t assignWithCopy for MapKitDynamicPropertyCache.Fields(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  outlined copy of DynamicPropertyCache.Fields.Layout();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of DynamicPropertyCache.Fields.Layout();
  *(a1 + 20) = *(a2 + 5);
  return a1;
}

uint64_t assignWithTake for MapKitDynamicPropertyCache.Fields(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of DynamicPropertyCache.Fields.Layout();
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t getEnumTagSinglePayload for MapKitDynamicPropertyCache.Fields(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for MapKitDynamicPropertyCache.Fields(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t UIHostingController.safeAreaRegions.getter()
{
  v0 = specialized UIHostingController.host.getter();
  v1 = _UIHostingView.safeAreaRegions.getter();

  return v1;
}

void (*UIHostingController.safeAreaRegions.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = UIHostingController.safeAreaRegions.getter();
  return UIHostingController.safeAreaRegions.modify;
}

void type metadata accessor for _TraitWritingModifier<NavigationSplitViewColumnWidth.TraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<NavigationSplitViewColumnWidth.TraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<NavigationSplitViewColumnWidth.TraitKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<NavigationSplitViewColumnWidth.TraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<NavigationSplitViewColumnWidth.TraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<NavigationSplitViewColumnWidth.TraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<NavigationSplitViewColumnWidth.TraitKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<NavigationSplitViewColumnWidth.TraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationSplitViewColumnWidth(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for NavigationSplitViewColumnWidth(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for NavigationSplitViewColumnWidth(uint64_t result, char a2)
{
  v2 = *(result + 32) & 1 | (a2 << 7);
  *(result + 8) &= 1uLL;
  *(result + 32) = v2;
  return result;
}

double protocol witness for static _ViewTraitKey.defaultValue.getter in conformance NavigationSplitViewColumnWidth.TraitKey@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18CD647F0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance NavigationSplitViewColumnWidth(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return specialized static NavigationSplitViewColumnWidth.== infix(_:_:)(v5, v7);
}

BOOL specialized static NavigationSplitViewColumnWidth.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 32);
  if ((v3 & 0x80000000) == 0)
  {
    if ((*(a2 + 32) & 0x80000000) == 0)
    {
      return *a2 == v2;
    }

    return 0;
  }

  v5 = *(a2 + 32);
  if ((v5 & 0x80000000) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a2 + 16);
  if (*(a1 + 8))
  {
    result = 0;
    if ((*(a2 + 8) & 1) == 0 || v7 != v8)
    {
      return result;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    if (*a2 != v2 || v7 != v8)
    {
      return 0;
    }
  }

  if (v3)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v5 & 1) != 0 || v6 != *(a2 + 24))
  {
    return 0;
  }

  return 1;
}

uint64_t Table.init(columns:rows:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  *&v8 = a4;
  *(&v8 + 1) = a5;
  return Table.init(of:selection:columnCustomization:columns:rows:)(v10, v9, a1, a2, a3, a7, v8, a6);
}

uint64_t Table.init(selection:columns:rows:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, AssociatedConformanceWitness, v15, v16);
  type metadata accessor for Optional();
  v17 = type metadata accessor for Binding();
  type metadata accessor for OptionalToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  memset(v22, 0, sizeof(v22));
  *&v19 = a5;
  *(&v19 + 1) = a6;
  Table.init(of:selection:columnCustomization:columns:rows:)(v23, v22, a2, a3, a4, a7, v19, a8);
  return (*(*(v17 - 8) + 8))(a1, v17);
}

uint64_t Table.init(selection:columns:rows:)@<X0>(void (*a1)(uint64_t)@<X3>, uint64_t (*a2)(uint64_t)@<X5>, uint64_t a3@<X7>, uint64_t a4@<X8>, __int128 a5, uint64_t a6)
{
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, AssociatedConformanceWitness, v9, v10);
  type metadata accessor for Set();
  type metadata accessor for Binding();
  type metadata accessor for SetToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  memset(v15, 0, sizeof(v15));
  Table.init(of:selection:columnCustomization:columns:rows:)(v16, v15, a1, a2, a3, a4, a5, a6);
}

Swift::Int AccessibilityLabeledPairRole.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1 & 1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AccessibilityLabeledPairRole and conformance AccessibilityLabeledPairRole()
{
  result = lazy protocol witness table cache variable for type AccessibilityLabeledPairRole and conformance AccessibilityLabeledPairRole;
  if (!lazy protocol witness table cache variable for type AccessibilityLabeledPairRole and conformance AccessibilityLabeledPairRole)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityLabeledPairRole and conformance AccessibilityLabeledPairRole);
  }

  return result;
}

uint64_t RelationshipModifier.description.getter()
{
  _StringGuts.grow(_:)(70);
  MEMORY[0x18D00C9B0](0xD000000000000030, 0x800000018CD3D940);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](543451424, 0xE400000000000000);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x18D00C9B0](0x617073656D616E20, 0xEC000000203A6563);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

BOOL static RelationshipModifier.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *a2;
  switch(v4)
  {
    case 2:
      if (v5 != 2)
      {
        return 0;
      }

      break;
    case 3:
      if (v5 != 3)
      {
        return 0;
      }

      break;
    case 4:
      if (v5 != 4)
      {
        return 0;
      }

      break;
    default:
      if (v5 - 2) < 3 || ((v5 ^ v4))
      {
        return 0;
      }

      break;
  }

  v6 = type metadata accessor for RelationshipModifier();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return *&a1[*(v6 + 40)] == *&a2[*(v6 + 40)];
  }

  return 0;
}

Swift::Int static Transform.State.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (!static RelationshipModifier.== infix(_:_:)(a1, a2))
  {
    return 0;
  }

  v4 = *(type metadata accessor for Transform.State() + 36);
  v5 = *&a1[v4];
  v6 = *&a2[v4];

  return _sSh2eeoiySbShyxG_ABtFZ7SwiftUI8UniqueIDV_Tt1g5(v5, v6);
}

uint64_t Transform.State.init(modifier:nodeIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RelationshipModifier();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for Transform.State();
  *(a3 + *(result + 36)) = a2;
  return result;
}

uint64_t Transform.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RelationshipModifier();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t Transform.updateValue()(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*AGGraphGetValue() == 1 && (*(v1 + *(a1 + 56)) & 1) == 0)
  {
    v6 = *(v1 + 12);
    if (v6 == *MEMORY[0x1E698D3F8])
    {
      CurrentAttribute = AGGraphGetCurrentAttribute();
      if (CurrentAttribute == v6)
      {
        __break(1u);
      }

      *(v1 + 12) = CurrentAttribute;
    }

    Value = AGGraphGetValue();
    v10 = v9;
    v11 = *Value;
    v12 = Value[1];
    v14 = *Value;
    v15 = v12;

    if (Transform.updateScope(nodeList:changed:)(&v14, v10 & 1, a1))
    {
      DisplayList.Version.init(forUpdate:)();
      v12 = v14;
    }

    v14 = v11;
    v15 = v12;
    AGGraphSetOutputValue();
  }

  else
  {
    v3 = AGGraphGetValue();
    v4 = *v3;
    v5 = v3[1];

    v14 = v4;
    v15 = v5;
    AGGraphSetOutputValue();
  }
}

uint64_t Transform.updateScope(nodeList:changed:)(unint64_t *a1, int a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = type metadata accessor for Transform.State();
  v10 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v92 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v96 = v10;
  v97 = &v78 - v11;
  v104 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v100 = &v78 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v78 - v17;
  v102 = v8;
  v103 = v7;
  v90 = type metadata accessor for RelationshipModifier();
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v87 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v89 = &v78 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v85 = &v78 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v25 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v79 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v106 = &v78 - v29;
  v30 = *a1;
  v95 = v31;
  v98 = a3;
  v99 = v3;
  Transform.modifier.getter(v31);
  v86 = v30 >> 62;
  if (v30 >> 62)
  {
    v32 = __CocoaSet.count.getter();
  }

  else
  {
    v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = MEMORY[0x1E69E7CC0];
  v107 = v9;
  v105 = v25;
  v34 = v18;
  v93 = a2;
  if (v32)
  {
    v108 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32 & ~(v32 >> 63), 0);
    if (v32 < 0)
    {
      __break(1u);
      goto LABEL_40;
    }

    v36 = 0;
    v33 = v108;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x18D00E9C0](v36, v30);
      }

      else
      {
        v37 = *(v30 + 8 * v36 + 32);
      }

      v38 = *&v37[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id];

      v108 = v33;
      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      if (v40 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
        v33 = v108;
      }

      ++v36;
      *(v33 + 16) = v40 + 1;
      *(v33 + 8 * v40 + 32) = v38;
    }

    while (v32 != v36);
    v18 = v34;
    v9 = v107;
    v25 = v105;
  }

  v41 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI8UniqueIDV_SayAFGTt0g5Tf4g_n(v33);

  v42 = v106;
  Transform.State.init(modifier:nodeIDs:)(v95, v41, v106);
  v43 = v25[2];
  v84 = v25 + 2;
  v82 = v43;
  v43(v18, v42, v9);
  v44 = v25[7];
  v83 = v25 + 7;
  v81 = v44;
  v44(v18, 0, 1, v9);
  v45 = *(v104 + 16);
  v80 = *(v98 + 52);
  v46 = v100;
  v47 = v96;
  (v45)(v100, v99 + v80, v96);
  v48 = *(TupleTypeMetadata2 + 48);
  v91 = v18;
  v49 = v97;
  v45();
  v95 = v48;
  (v45)(&v48[v49], v46, v47);
  v50 = v25[6];
  if (v50(v49, 1, v9) == 1)
  {
    v51 = *(v104 + 8);
    v51(v46, v47);
    v51(v91, v47);
    v52 = v107;
    if (v50(&v95[v49], 1, v107) == 1)
    {
      v51(v49, v47);
      v53 = 0;
LABEL_34:
      v57 = v105;
      goto LABEL_37;
    }

    v57 = v105;
  }

  else
  {
    v54 = v94;
    (v45)(v94, v49, v47);
    v55 = v95;
    v56 = v50(&v95[v49], 1, v107);
    v57 = v105;
    v58 = (v105 + 1);
    if (v56 != 1)
    {
      v59 = &v55[v49];
      v60 = v79;
      v61 = v107;
      (v105[4])(v79, v59, v107);
      LODWORD(TupleTypeMetadata2) = static Transform.State.== infix(_:_:)(v54, v60);
      v95 = v57[1];
      (v95)(v60, v61);
      v51 = *(v104 + 8);
      v51(v100, v47);
      v51(v34, v47);
      (v95)(v94, v61);
      v51(v49, v47);
      v53 = 0;
      if (TupleTypeMetadata2)
      {
        v52 = v107;
        goto LABEL_37;
      }

      v52 = v107;
      if ((v93 & 1) == 0)
      {
LABEL_37:
        (v57[1])(v106, v52);
        return v53;
      }

      goto LABEL_23;
    }

    v51 = *(v104 + 8);
    v51(v100, v47);
    v51(v34, v47);
    v52 = v107;
    (*v58)(v54, v107);
  }

  (*(v92 + 8))(v49, TupleTypeMetadata2);
  if ((v93 & 1) == 0)
  {
    v53 = 0;
    goto LABEL_37;
  }

LABEL_23:
  v62 = v47;
  v63 = v99;
  v64 = v80;
  v51((v99 + v80), v62);
  v82(v63 + v64, v106, v52);
  v81(v63 + v64, 0, 1, v52);
  v65 = *(v63 + 16);
  LODWORD(v104) = *(v63 + 12);
  AccessibilityRelationshipScope.clear(from:)(v104);
  v66 = v85;
  Transform.modifier.getter(v85);
  v67 = *(v88 + 8);
  LODWORD(TupleTypeMetadata2) = *v66;
  v68 = v90;
  v67(v66, v90);
  v69 = v89;
  Transform.modifier.getter(v89);
  v100 = *(v68 + 36);
  v70 = v87;
  Transform.modifier.getter(v87);
  v71 = *(v70 + *(v68 + 40));
  v67(v70, v68);
  v72 = v100;
  v73 = v103;
  AccessibilityRelationshipScope.update<A>(_:nodes:identifier:in:from:)(TupleTypeMetadata2, v30, &v100[v69], v71, v104, v103);
  result = (*(*(v73 - 8) + 8))(&v72[v69], v73);
  if (v86)
  {
    result = __CocoaSet.count.getter();
    v74 = result;
  }

  else
  {
    v74 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = v107;
  v57 = v105;
  if (!v74)
  {
    v53 = 1;
    goto LABEL_37;
  }

  if (v74 >= 1)
  {
    v75 = 0;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v76 = MEMORY[0x18D00E9C0](v75, v30);
      }

      else
      {
        v76 = *(v30 + 8 * v75 + 32);
      }

      v77 = v76;
      ++v75;
      *&v76[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_relationshipScope] = v65;
    }

    while (v74 != v75);
    v53 = 1;
    v52 = v107;
    goto LABEL_34;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t AccessibilityRelationshipScope.clear(from:)(unsigned int a1)
{
  v3 = v1;
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1, &v26);
  swift_endAccess();
  if (!*(&v27 + 1))
  {
    return outlined destroy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])?(&v26);
  }

  v30[0] = v26;
  v30[1] = v27;
  v30[2] = v28;
  v30[3] = v29;
  outlined init with copy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])(v30, &v26);

  v25[0] = v26;
  v25[1] = v27;
  v25[2] = v28;
  v24 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  outlined init with copy of AccessibilityRelationshipScope.Key(v25, &v26);
  v23 = *(v1 + 16);
  v6 = v23;
  *(v3 + 16) = 0x8000000000000000;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(&v26);
  v9 = v6[2];
  v10 = (v7 & 1) == 0;
  v11 = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
LABEL_12:
    specialized _NativeDictionary.copy()();
    if (v2)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v2 = v7;
  if (v6[3] < v11)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v11, isUniquelyReferenced_nonNull_native);
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(&v26);
    if ((v2 & 1) != (v13 & 1))
    {
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v8 = v12;
    if ((v2 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_10:
    v15 = *(v23[7] + 8 * v8);
    goto LABEL_14;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    goto LABEL_10;
  }

LABEL_13:
  v15 = 0;
LABEL_14:
  v22 = v15;
  specialized updateRelatedNodesByKey #1 (_:) in AccessibilityRelationshipScope.clear(from:)(&v22, v30, &v24);
  v16 = v22;
  if (v22)
  {
    v17 = v23;
    if (v2)
    {
      *(v23[7] + 8 * v8) = v22;
    }

    else
    {
      outlined init with copy of AccessibilityRelationshipScope.Key(&v26, v21);
      specialized _NativeDictionary._insert(at:key:value:)(v8, v21, v16, v17);
    }
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      outlined destroy of AccessibilityRelationshipScope.Key(&v26);
      v17 = v23;
      goto LABEL_21;
    }

    v17 = v23;
    outlined destroy of AccessibilityRelationshipScope.Key(v23[6] + 48 * v8);
    specialized _NativeDictionary._delete(at:)(v8, v17);
  }

  outlined destroy of AccessibilityRelationshipScope.Key(&v26);
LABEL_21:
  *(v3 + 16) = v17;
  v18 = swift_endAccess();
  MEMORY[0x1EEE9AC00](v18);
  v20[2] = &v24;
  v20[3] = v25;
  v20[4] = v3;
  specialized Sequence.forEach(_:)(partial apply for closure #1 in AccessibilityRelationshipScope.clear(from:), v20, v19);

  outlined destroy of AccessibilityRelationshipScope.Key(v25);
  return outlined destroy of (AccessibilityRelationshipScope.Key?, AccessibilityRelationshipScope.Key?)(v30, type metadata accessor for (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode]));
}

uint64_t AccessibilityRelationshipScope.update<A>(_:nodes:identifier:in:from:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v11 = a1;
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, v17, v12);
  v18 = a6;
  v19 = v6;
  AccessibilityRelationshipScope.Key.init<A>(identifier:in:)(v14, a4, v18, v90);
  outlined init with copy of AccessibilityRelationshipScope.Key(v90, v88);
  v76 = v11;
  v88[48] = v11;
  v89 = a2;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v6 + 24);
  v79 = v21;
  *(v19 + 24) = 0x8000000000000000;
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(a5);
  v24 = v21[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
LABEL_10:
    specialized _NativeDictionary.copy()();
    if (v14)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  LOBYTE(v14) = v22;
  v27 = v21[3];
  v77 = v19;
  if (v27 < v26)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(a5);
    if ((v14 & 1) != (v29 & 1))
    {
LABEL_58:
      type metadata accessor for AGAttribute(0);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_59;
    }

    v23 = v28;
    if ((v14 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    v30 = (v79[7] + (v23 << 6));
    v31 = v30[1];
    v84 = *v30;
    v85 = v31;
    v32 = v30[3];
    v86 = v30[2];
    v87 = v32;
    goto LABEL_12;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v22)
  {
    goto LABEL_8;
  }

LABEL_11:
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
LABEL_12:
  v33 = updateRecordsByAttribute #1 <A>(_:) in AccessibilityRelationshipScope.update<A>(_:nodes:identifier:in:from:)(&v84, v88);
  v80 = v84;
  v81 = v85;
  v82 = v86;
  v83 = v87;
  if (*(&v85 + 1))
  {
    v34 = v79;
    if (v14)
    {
      v35 = (v79[7] + (v23 << 6));
      v36 = v85;
      *v35 = v84;
      v35[1] = v36;
      v37 = v87;
      v35[2] = v86;
      v35[3] = v37;
    }

    else
    {
      v80 = v84;
      v81 = v85;
      v82 = v86;
      v83 = v87;
      specialized _NativeDictionary._insert(at:key:value:)(v23, a5, &v80, v79);
    }
  }

  else
  {
    outlined destroy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])?(&v80);
    v34 = v79;
    if (v14)
    {
      specialized _NativeDictionary._delete(at:)(v23, v79);
    }
  }

  v38 = v77;
  *(v77 + 24) = v34;
  swift_endAccess();
  if (v33)
  {
    swift_beginAccess();
    v39 = swift_isUniquelyReferenced_nonNull_native();
    *&v80 = *(v38 + 16);
    v40 = v80;
    *(v38 + 16) = 0x8000000000000000;
    v42 = specialized __RawDictionaryStorage.find<A>(_:)(v90);
    v43 = v40[2];
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_51;
    }

    v46 = v41;
    if (v40[3] >= v45)
    {
      if (v39)
      {
        *(v38 + 16) = v40;
        if (v41)
        {
LABEL_28:
          updateRelatedNodesByKey #1 <A>(_:) in AccessibilityRelationshipScope.update<A>(_:nodes:identifier:in:from:)((v40[7] + 8 * v42), a2, v76);
          swift_endAccess();
          if (a2 >> 62)
          {
            goto LABEL_52;
          }

          for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
          {
            v52 = 0;
            v53 = 0;
            v74 = a2 & 0xFFFFFFFFFFFFFF8;
            v75 = a2 & 0xC000000000000001;
            while (1)
            {
              if (v75)
              {
                v54 = MEMORY[0x18D00E9C0](v52, a2);
              }

              else
              {
                if (v52 >= *(v74 + 16))
                {
                  goto LABEL_50;
                }

                v54 = *(a2 + 8 * v52 + 32);
              }

              v55 = v54;
              v56 = v52 + 1;
              if (__OFADD__(v52, 1))
              {
                break;
              }

              v57 = a2;
              v58 = *&v54[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id];
              a2 = v77;
              swift_beginAccess();
              outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v53);
              v59 = swift_isUniquelyReferenced_nonNull_native();
              *&v80 = *(a2 + 32);
              v60 = v80;
              *(a2 + 32) = 0x8000000000000000;
              v61 = specialized __RawDictionaryStorage.find<A>(_:)(v58, v76);
              v63 = v60[2];
              v64 = (v62 & 1) == 0;
              v65 = __OFADD__(v63, v64);
              v66 = v63 + v64;
              if (v65)
              {
                goto LABEL_48;
              }

              a2 = v62;
              if (v60[3] >= v66)
              {
                if ((v59 & 1) == 0)
                {
                  v71 = v61;
                  specialized _NativeDictionary.copy()();
                  v61 = v71;
                  v60 = v80;
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v66, v59);
                v60 = v80;
                v61 = specialized __RawDictionaryStorage.find<A>(_:)(v58, v76);
                if ((a2 & 1) != (v67 & 1))
                {
                  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
                  goto LABEL_58;
                }
              }

              *(v77 + 32) = v60;
              if ((a2 & 1) == 0)
              {
                v60[(v61 >> 6) + 8] |= 1 << v61;
                v68 = v60[6] + 16 * v61;
                *v68 = v58;
                *(v68 + 8) = v76;
                *(v60[7] + 8 * v61) = MEMORY[0x1E69E7CD0];
                v69 = v60[2];
                v65 = __OFADD__(v69, 1);
                v70 = v69 + 1;
                if (v65)
                {
                  goto LABEL_49;
                }

                v60[2] = v70;
              }

              outlined init with copy of AccessibilityRelationshipScope.Key(v90, v78);
              specialized Set._Variant.insert(_:)(&v80, v78);
              outlined destroy of AccessibilityRelationshipScope.Key(&v80);
              swift_endAccess();

              ++v52;
              v53 = specialized thunk for @callee_guaranteed () -> (@owned Set<AccessibilityRelationshipScope.Key>);
              a2 = v57;
              if (v56 == i)
              {
                v49 = specialized thunk for @callee_guaranteed () -> (@owned [AccessibilityRelationshipScope.Relationship : [AccessibilityNode]]);
                goto LABEL_55;
              }
            }

            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            ;
          }

          v49 = specialized thunk for @callee_guaranteed () -> (@owned [AccessibilityRelationshipScope.Relationship : [AccessibilityNode]]);
          goto LABEL_54;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v40 = v80;
        *(v38 + 16) = v80;
        if (v46)
        {
          goto LABEL_28;
        }
      }

LABEL_27:
      v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityRelationshipScopeC0F0O_SayAC0E4NodeCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      outlined init with copy of AccessibilityRelationshipScope.Key(v90, &v80);
      specialized _NativeDictionary._insert(at:key:value:)(v42, &v80, v50, v40);
      goto LABEL_28;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, v39);
    v40 = v80;
    v47 = specialized __RawDictionaryStorage.find<A>(_:)(v90);
    if ((v46 & 1) == (v48 & 1))
    {
      v42 = v47;
      *(v38 + 16) = v40;
      if (v46)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_59:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v49 = 0;
LABEL_54:
  v53 = 0;
LABEL_55:
  outlined destroy of (AccessibilityRelationshipScope.Key?, AccessibilityRelationshipScope.Key?)(v88, type metadata accessor for (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode]));
  outlined destroy of AccessibilityRelationshipScope.Key(v90);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v49);
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v53);
}

uint64_t static Transform.willRemove(attribute:)()
{
  AGGraphGetAttributeInfo();
  v1 = v0;
  *(v0 + *(type metadata accessor for Transform() + 56)) = 1;
  return AccessibilityRelationshipScope.clear(from:)(*(v1 + 12));
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AccessibilityRelationshipScope.Relationship()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if ((v1 - 2) >= 3)
  {
    MEMORY[0x18D00F6F0](0);
    v2 = v1 & 1;
  }

  else
  {
    v2 = v1 - 1;
  }

  MEMORY[0x18D00F6F0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AccessibilityRelationshipScope.Relationship()
{
  v1 = *v0;
  if ((v1 - 2) >= 3)
  {
    MEMORY[0x18D00F6F0](0);
    v2 = v1 & 1;
  }

  else
  {
    v2 = v1 - 1;
  }

  return MEMORY[0x18D00F6F0](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AccessibilityRelationshipScope.Relationship()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if ((v1 - 2) >= 3)
  {
    MEMORY[0x18D00F6F0](0);
    v2 = v1 & 1;
  }

  else
  {
    v2 = v1 - 1;
  }

  MEMORY[0x18D00F6F0](v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AccessibilityRelationshipScope.Relationship(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 - 2;
  v5 = v3 == 2;
  v6 = v3 == 3;
  v7 = v3 == 4;
  v8 = ((v3 ^ v2) & 1) == 0;
  if (v4 < 3)
  {
    v8 = 0;
  }

  if (v2 == 4)
  {
    v8 = v7;
  }

  if (v2 == 3)
  {
    v8 = v6;
  }

  if (v2 == 2)
  {
    return v5;
  }

  else
  {
    return v8;
  }
}

uint64_t AccessibilityRelationshipScope.Key.init<A>(identifier:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  AnyHashable.init<A>(_:)();
  result = (*(v8 + 8))(a1, a3);
  *(a4 + 40) = a2;
  return result;
}

Swift::Int AccessibilityRelationshipScope.NodeRelation.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  if ((v2 - 2) >= 3)
  {
    MEMORY[0x18D00F6F0](0);
    v3 = v2 & 1;
  }

  else
  {
    v3 = v2 - 1;
  }

  MEMORY[0x18D00F6F0](v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AccessibilityRelationshipScope.Key()
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  MEMORY[0x18D00F6F0](*(v0 + 40));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AccessibilityRelationshipScope.Key()
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  MEMORY[0x18D00F6F0](*(v0 + 40));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AccessibilityRelationshipScope.NodeRelation()
{
  v1 = *(v0 + 8);
  MEMORY[0x18D00F6F0](*v0);
  if ((v1 - 2) >= 3)
  {
    MEMORY[0x18D00F6F0](0);
    v2 = v1 & 1;
  }

  else
  {
    v2 = v1 - 1;
  }

  return MEMORY[0x18D00F6F0](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AccessibilityRelationshipScope.NodeRelation()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  if ((v2 - 2) >= 3)
  {
    MEMORY[0x18D00F6F0](0);
    v3 = v2 & 1;
  }

  else
  {
    v3 = v2 - 1;
  }

  MEMORY[0x18D00F6F0](v3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AccessibilityRelationshipScope.NodeRelation(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v2 != 4)
  {
    return (v3 - 2) >= 3 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 4;
}

uint64_t updateRecordsByAttribute #1 <A>(_:) in AccessibilityRelationshipScope.update<A>(_:nodes:identifier:in:from:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])(a2, v23);

  v24[0] = v23[0];
  v24[1] = v23[1];
  v24[2] = v23[2];
  if (*(a1 + 24))
  {
    outlined init with copy of AccessibilityRelationshipScope.Key(a1, v22);
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  outlined init with copy of AccessibilityRelationshipScope.Key?(v24, v17);
  outlined init with copy of AccessibilityRelationshipScope.Key?(v22, &v19);
  if (!v18)
  {
    outlined destroy of AccessibilityRelationshipScope.Key?(v22);
    outlined destroy of AccessibilityRelationshipScope.Key?(v24);
    if (!*(&v20 + 1))
    {
      outlined destroy of AccessibilityRelationshipScope.Key?(v17);
      goto LABEL_11;
    }

LABEL_18:
    outlined destroy of (AccessibilityRelationshipScope.Key?, AccessibilityRelationshipScope.Key?)(v17, type metadata accessor for (AccessibilityRelationshipScope.Key?, AccessibilityRelationshipScope.Key?));
    goto LABEL_31;
  }

  outlined init with copy of AccessibilityRelationshipScope.Key?(v17, v15);
  if (!*(&v20 + 1))
  {
    outlined destroy of AccessibilityRelationshipScope.Key?(v22);
    outlined destroy of AccessibilityRelationshipScope.Key?(v24);
    outlined destroy of AccessibilityRelationshipScope.Key(v15);
    goto LABEL_18;
  }

  v13[0] = v19;
  v13[1] = v20;
  v14 = v21;
  v4 = MEMORY[0x18D00E7E0](v15, v13);
  outlined destroy of AccessibilityRelationshipScope.Key?(v22);
  outlined destroy of AccessibilityRelationshipScope.Key?(v24);
  if ((v4 & 1) == 0)
  {
    outlined destroy of AccessibilityRelationshipScope.Key(v13);
    outlined destroy of AccessibilityRelationshipScope.Key(v15);
    outlined destroy of AccessibilityRelationshipScope.Key?(v17);
    goto LABEL_31;
  }

  v5 = v16;
  v6 = *(&v14 + 1);
  outlined destroy of AccessibilityRelationshipScope.Key(v13);
  outlined destroy of AccessibilityRelationshipScope.Key(v15);
  outlined destroy of AccessibilityRelationshipScope.Key?(v17);
  if (v5 != v6)
  {
    goto LABEL_31;
  }

LABEL_11:
  outlined init with copy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])(a2, v17);
  v7 = v19;

  if (!*(a1 + 24))
  {
LABEL_30:
    outlined destroy of AccessibilityRelationshipScope.Key(v17);
    goto LABEL_31;
  }

  v8 = *(a1 + 48);
  switch(v7)
  {
    case 2:
      if (v8 != 2)
      {
        goto LABEL_30;
      }

      break;
    case 3:
      if (v8 != 3)
      {
        goto LABEL_30;
      }

      break;
    case 4:
      if (v8 != 4)
      {
        goto LABEL_30;
      }

      break;
    default:
      if (v8 - 2) < 3 || ((v8 ^ v7))
      {
        goto LABEL_30;
      }

      break;
  }

  outlined destroy of AccessibilityRelationshipScope.Key(v17);
  outlined init with copy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])(a2, v17);
  v9 = *(&v19 + 1);
  if (!*(a1 + 24))
  {

    goto LABEL_30;
  }

  v10 = *(a1 + 56);

  v11 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI17AccessibilityNodeC_Tt1g5(v9, v10);

  outlined destroy of AccessibilityRelationshipScope.Key(v17);
  if (v11)
  {
    return 0;
  }

LABEL_31:
  outlined destroy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])?(a1);
  outlined init with copy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])(a2, a1);
  return 1;
}

void updateRelatedNodesByKey #1 <A>(_:) in AccessibilityRelationshipScope.update<A>(_:nodes:identifier:in:from:)(void **a1, unint64_t a2, char a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  v19 = *a1;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v3 = v10;
    if (v8[3] < v14)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, isUniquelyReferenced_nonNull_native);
      v8 = v19;
      v9 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
      if ((v3 & 1) == (v15 & 1))
      {
        goto LABEL_6;
      }

      v9 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_6:
      *a1 = v8;
      if (v3)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  v18 = v9;
  specialized _NativeDictionary.copy()();
  v9 = v18;
  v8 = v19;
  *a1 = v19;
  if ((v3 & 1) == 0)
  {
LABEL_7:
    v16 = v9;
    specialized _NativeDictionary._insert(at:key:value:)(v9, a3, MEMORY[0x1E69E7CC0], v8);
    v9 = v16;
  }

LABEL_8:
  v17 = (v8[7] + 8 * v9);

  updateRelatedNodes #1 <A>(_:) in updateRelatedNodesByKey #1 <A>(_:) in AccessibilityRelationshipScope.update<A>(_:nodes:identifier:in:from:)(v17, a2);
}

void updateRelatedNodes #1 <A>(_:) in updateRelatedNodesByKey #1 <A>(_:) in AccessibilityRelationshipScope.update<A>(_:nodes:identifier:in:from:)(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x18D00E9C0](i, a2);
      }

      else
      {
        v6 = *(a2 + 8 * i + 32);
      }

      v7 = v6;
      v11 = v6;
      MEMORY[0x1EEE9AC00](v6);
      v10[2] = &v11;
      if ((specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v10, v8) & 1) == 0)
      {
        v9 = v7;
        MEMORY[0x18D00CC30]();
        if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }
  }
}

uint64_t *specialized updateRelatedNodesByKey #1 (_:) in AccessibilityRelationshipScope.clear(from:)(uint64_t *result, uint64_t a2, char **a3)
{
  v3 = *result;
  if (!*result)
  {
    return result;
  }

  v31 = result;
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_10:
    v10 = *(*(v3 + 48) + (__clz(__rbit64(v6)) | (v8 << 6)));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
    v14 = *(v3 + 16);
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_36;
    }

    v17 = v12;
    if (*(v3 + 24) >= v16)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v12)
        {
          goto LABEL_17;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v17)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_38;
      }

      v13 = v18;
      if (v17)
      {
LABEL_17:
        v20 = *(*(v3 + 56) + 8 * v13);
        goto LABEL_20;
      }
    }

    v20 = 0;
LABEL_20:
    v34 = v20;
    v21 = updateRelatedNodes #1 (removing:from:) in updateRelatedNodesByKey #1 (_:) in AccessibilityRelationshipScope.clear(from:)(v10, &v34, a2);
    v22 = v34;
    if (v34)
    {
      if (v17)
      {
        *(*(v3 + 56) + 8 * v13) = v34;
      }

      else
      {
        *(v3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
        *(*(v3 + 48) + v13) = v10;
        *(*(v3 + 56) + 8 * v13) = v22;
        v24 = *(v3 + 16);
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_37;
        }

        *(v3 + 16) = v26;
      }
    }

    else if (v17)
    {
      v23 = v21;
      specialized _NativeDictionary._delete(at:)(v13, v3);
      v21 = v23;
    }

    v6 &= v6 - 1;
    if (v21)
    {
      swift_beginAccess();
      v27 = *a3;
      v28 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v27;
      if ((v28 & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
        *a3 = v27;
      }

      v30 = *(v27 + 2);
      v29 = *(v27 + 3);
      if (v30 >= v29 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v27);
        *a3 = v27;
      }

      *(v27 + 2) = v30 + 1;
      v27[v30 + 32] = v10;
      swift_endAccess();
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      *v31 = v3;
      return result;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t updateRelatedNodes #1 (removing:from:) in updateRelatedNodesByKey #1 (_:) in AccessibilityRelationshipScope.clear(from:)(unsigned __int8 a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v26 = *a2;
  v6 = *(a3 + 48);
  if (a1 == 2)
  {
    if (v6 != 2)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (a1 == 3)
  {
    if (v6 != 3)
    {
      goto LABEL_15;
    }

LABEL_13:
    outlined init with copy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])(a3, v24);
    v7 = v25;

    v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI17AccessibilityNodeC_Tt1g5(v8, v7);

    outlined destroy of AccessibilityRelationshipScope.Key(v24);
    if (v9)
    {
      swift_bridgeObjectRelease_n();
      *a2 = 0;
      return 1;
    }

    goto LABEL_16;
  }

  if (a1 != 4)
  {
    if (v6 - 2) < 3 || ((v6 ^ a1))
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6 == 4)
  {
    goto LABEL_13;
  }

LABEL_15:

LABEL_16:
  v23 = a3;
  outlined init with copy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])(a3, v24);
  v10 = v25;
  outlined destroy of AccessibilityRelationshipScope.Key(v24);
  v22 = a2;
  if (v10 >> 62)
  {
LABEL_35:
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v11 != i; ++i)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x18D00E9C0](i, v10);
    }

    else
    {
      if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v13 = *(v10 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v24[0] = v13;
    MEMORY[0x1EEE9AC00](v13);
    v21 = v24;
    v15 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v20, v3);

    if ((v15 & 1) == 0)
    {

      return 0;
    }
  }

  MEMORY[0x1EEE9AC00](v16);
  v21 = v23;
  v17 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(partial apply for closure #1 in updateRelatedNodes #1 (removing:from:) in updateRelatedNodesByKey #1 (_:) in AccessibilityRelationshipScope.clear(from:), v20);

  if (v26 >> 62)
  {
    result = __CocoaSet.count.getter();
    v19 = result;
    if (result >= v17)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v19 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19 >= v17)
    {
LABEL_29:
      specialized Array.replaceSubrange<A>(_:with:)(v17, v19);
      *v22 = v26;
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in AccessibilityRelationshipScope.clear(from:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v26 = *a1;
  result = swift_beginAccess();
  v7 = *a2;
  v25 = *(*a2 + 16);
  if (!v25)
  {
    return result;
  }

  v24 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id;

  v8 = 0;
  while (v8 < *(v7 + 16))
  {
    v10 = *(v7 + v8 + 32);
    v11 = *(v26 + v24);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(a4 + 32);
    v13 = v29;
    *(a4 + 32) = 0x8000000000000000;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v10);
    v15 = v13[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_21;
    }

    v19 = v14;
    if (v13[3] < v18)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
      v13 = v29;
      v9 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v10);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v22 = v9;
    specialized _NativeDictionary.copy()();
    v9 = v22;
    v13 = v29;
    if ((v19 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (*(v13[7] + 8 * v9))
    {
      v21 = v9;
      v28 = *(v13[7] + 8 * v9);
      specialized Set._Variant.remove(_:)(a3, v27);
      outlined destroy of AccessibilityRelationshipScope.Key?(v27);
      if (*(v28 + 16))
      {
        *(v13[7] + 8 * v21) = v28;
        goto LABEL_5;
      }

      v9 = v21;
    }

    specialized _NativeDictionary._delete(at:)(v9, v13);
LABEL_5:
    ++v8;
    *(a4 + 32) = v13;
    swift_endAccess();
    if (v25 == v8)
    {
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t AccessibilityRelationshipScope.nodes(for:of:returning:)(unsigned __int8 a1, uint64_t a2, int a3)
{
  v4 = v3;
  v7 = *(a2 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id);
  swift_beginAccess();
  v8 = *(v3 + 32);
  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7, a1), (v10 & 1) == 0))
  {
    swift_endAccess();
    return MEMORY[0x1E69E7CC0];
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 56);
  v15 = (v12 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  while (v14)
  {
LABEL_13:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    outlined init with copy of AccessibilityRelationshipScope.Key(*(v11 + 48) + 48 * (v20 | (v17 << 6)), v55);
    swift_beginAccess();
    v21 = *(v4 + 16);
    if (!*(v21 + 16) || (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v55), (v23 & 1) == 0))
    {
      swift_endAccess();
      goto LABEL_7;
    }

    v24 = *(*(v21 + 56) + 8 * v22);
    swift_endAccess();
    if (*(v24 + 16) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(a3), (v26 & 1) != 0))
    {
      v27 = *(*(v24 + 56) + 8 * v25);
      v28 = v27 >> 62;
      v53 = v27;
      if (v27 >> 62)
      {
        v29 = __CocoaSet.count.getter();
      }

      else
      {
        v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v30 = v18 >> 62;
      v48 = a3;
      if (v18 >> 62)
      {
        v46 = v29;
        result = __CocoaSet.count.getter();
        v29 = v46;
      }

      else
      {
        result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v49 = v29;
      v31 = result + v29;
      if (__OFADD__(result, v29))
      {
        goto LABEL_51;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v30)
        {
LABEL_27:
          __CocoaSet.count.getter();
        }

LABEL_28:
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v32 = v18 & 0xFFFFFFFFFFFFFF8;
        goto LABEL_29;
      }

      if (v30)
      {
        goto LABEL_27;
      }

      v32 = v18 & 0xFFFFFFFFFFFFFF8;
      if (v31 > *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_28;
      }

LABEL_29:
      v33 = *(v32 + 16);
      v34 = *(v32 + 24);
      if (v28)
      {
        v52 = v28;
        v35 = v32;
        result = __CocoaSet.count.getter();
        v32 = v35;
        v28 = v52;
      }

      else
      {
        result = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (result)
      {
        if (((v34 >> 1) - v33) < v49)
        {
          goto LABEL_53;
        }

        v47 = v32;
        if (v28)
        {
          if (result < 1)
          {
            goto LABEL_55;
          }

          v37 = v32 + 8 * v33 + 32;
          v38 = result;
          type metadata accessor for [AccessibilityNode](0, &lazy cache variable for type metadata for [AccessibilityNode], 255, type metadata accessor for AccessibilityNode, MEMORY[0x1E69E62F8]);
          v51 = v38;
          lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A]();
          v39 = 0;
          v50 = v37;
          do
          {
            v40 = specialized protocol witness for Collection.subscript.read in conformance [A](v54, v39, v53);
            v42 = *v41;
            (v40)(v54, 0);
            *(v50 + 8 * v39++) = v42;
          }

          while (v51 != v39);

          result = outlined destroy of AccessibilityRelationshipScope.Key(v55);
          v36 = v49;
        }

        else
        {
          v36 = v49;
          type metadata accessor for AccessibilityNode();
          swift_arrayInitWithCopy();
          outlined destroy of AccessibilityRelationshipScope.Key(v55);
        }

        a3 = v48;
        if (v36 > 0)
        {
          v43 = *(v47 + 16);
          v44 = __OFADD__(v43, v36);
          v45 = v43 + v36;
          if (v44)
          {
            goto LABEL_54;
          }

          *(v47 + 16) = v45;
        }
      }

      else
      {
        outlined destroy of AccessibilityRelationshipScope.Key(v55);

        a3 = v48;
        if (v49 > 0)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
LABEL_7:
      result = outlined destroy of AccessibilityRelationshipScope.Key(v55);
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return v18;
    }

    v14 = *(v11 + 56 + 8 * v19);
    ++v17;
    if (v14)
    {
      v17 = v19;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t AccessibilityRelationshipScope.linkedNodes(for:)(uint64_t a1)
{
  v2 = AccessibilityRelationshipScope.nodes(for:of:returning:)(2u, a1, 2);
  v3 = v2;
  v13 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v6 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id;
    v7 = v3 & 0xC000000000000001;
    v12 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id;
    while (1)
    {
      if (v7)
      {
        v8 = MEMORY[0x18D00E9C0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (*&v8[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id] == *(a1 + v6))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v6 = v12;
        v7 = v3 & 0xC000000000000001;
      }

      ++v5;
      if (v9 == i)
      {
        v10 = v13;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return v10;
}

uint64_t getEnumTagSinglePayload for AccessibilityRelationshipScope.NodeRelation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = v4 - 5;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityRelationshipScope.NodeRelation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityRelationshipScope.Relationship(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
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

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t initializeWithCopy for AccessibilityRelationshipScope.Key(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for RelationshipModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + 7;
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((v6 + ((v5 + 1) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v10 = (a1 + v5 + 1) & ~v5;
    v11 = (a2 + v5 + 1) & ~v5;
    (*(v4 + 16))(v10, v11);
    *((v6 + v10) & 0xFFFFFFFFFFFFFFF8) = *((v6 + v11) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

_BYTE *assignWithCopy for RelationshipModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 24;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 24))(v7, v8);
  *((*(v5 + 40) + 7 + v7) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + v8) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_BYTE *initializeWithTake for RelationshipModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 32))(v7, v8);
  *((*(v5 + 32) + 7 + v7) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + v8) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_BYTE *assignWithTake for RelationshipModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 40;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 40))(v7, v8);
  *((*(v5 + 24) + 7 + v7) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + v8) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for RelationshipModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFB)
  {
    v7 = 251;
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

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 1) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (v5 > 0xFB)
    {
      return (*(v4 + 48))((a1 + v6 + 1) & ~v6);
    }

    v17 = *a1;
    if (v17 >= 2)
    {
      v18 = v17 - 1;
    }

    else
    {
      v18 = 0;
    }

    if (v18 >= 4)
    {
      return v18 - 3;
    }

    else
    {
      return 0;
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

_BYTE *storeEnumTagSinglePayload for RelationshipModifier(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 1) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 1) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
      if (v6 > 0xFB)
      {
        v18 = *(v5 + 56);
        v19 = &result[v8 + 1] & ~v8;

        return v18(v19);
      }

      else
      {
        *result = a2 + 4;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 1) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 1) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
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

unint64_t lazy protocol witness table accessor for type AccessibilityRelationshipScope.Key and conformance AccessibilityRelationshipScope.Key()
{
  result = lazy protocol witness table cache variable for type AccessibilityRelationshipScope.Key and conformance AccessibilityRelationshipScope.Key;
  if (!lazy protocol witness table cache variable for type AccessibilityRelationshipScope.Key and conformance AccessibilityRelationshipScope.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityRelationshipScope.Key and conformance AccessibilityRelationshipScope.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityRelationshipScope.Key and conformance AccessibilityRelationshipScope.Key;
  if (!lazy protocol witness table cache variable for type AccessibilityRelationshipScope.Key and conformance AccessibilityRelationshipScope.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityRelationshipScope.Key and conformance AccessibilityRelationshipScope.Key);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityRelationshipScope.Relationship and conformance AccessibilityRelationshipScope.Relationship()
{
  result = lazy protocol witness table cache variable for type AccessibilityRelationshipScope.Relationship and conformance AccessibilityRelationshipScope.Relationship;
  if (!lazy protocol witness table cache variable for type AccessibilityRelationshipScope.Relationship and conformance AccessibilityRelationshipScope.Relationship)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityRelationshipScope.Relationship and conformance AccessibilityRelationshipScope.Relationship);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityRelationshipScope.Relationship and conformance AccessibilityRelationshipScope.Relationship;
  if (!lazy protocol witness table cache variable for type AccessibilityRelationshipScope.Relationship and conformance AccessibilityRelationshipScope.Relationship)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityRelationshipScope.Relationship and conformance AccessibilityRelationshipScope.Relationship);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityRelationshipScope.NodeRelation and conformance AccessibilityRelationshipScope.NodeRelation()
{
  result = lazy protocol witness table cache variable for type AccessibilityRelationshipScope.NodeRelation and conformance AccessibilityRelationshipScope.NodeRelation;
  if (!lazy protocol witness table cache variable for type AccessibilityRelationshipScope.NodeRelation and conformance AccessibilityRelationshipScope.NodeRelation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityRelationshipScope.NodeRelation and conformance AccessibilityRelationshipScope.NodeRelation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityRelationshipScope.NodeRelation and conformance AccessibilityRelationshipScope.NodeRelation;
  if (!lazy protocol witness table cache variable for type AccessibilityRelationshipScope.NodeRelation and conformance AccessibilityRelationshipScope.NodeRelation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityRelationshipScope.NodeRelation and conformance AccessibilityRelationshipScope.NodeRelation);
  }

  return result;
}

uint64_t outlined init with copy of AccessibilityRelationshipScope.Key(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  (**(v4 - 8))(a2, a1);
  *(a2 + 40) = *(a1 + 40);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AccessibilityNode] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AccessibilityNode] and conformance [A])
  {
    type metadata accessor for [AccessibilityNode](255, &lazy cache variable for type metadata for [AccessibilityNode], 255, type metadata accessor for AccessibilityNode, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AccessibilityNode] and conformance [A]);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for Transform(_DWORD *a1, int *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64) + 7;
  v8 = (v7 + ((v6 + 1) & ~v6)) & 0xFFFFFFFFFFFFFFF8;
  v9 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((((-25 - v6) | v6 | 7) - v9) & 0xFFFFFFFFFFFFFFFELL) >= 0xFFFFFFFFFFFFFFE7)
  {
    v14 = *a2;
    v13 = a2 + 7;
    v31 = v8 + 8;
    v32 = *(a3 + 16);
    *a1 = v14;
    v15 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v15 = *(v13 & 0xFFFFFFFFFFFFFFFCLL);
    v16 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = (((v13 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v16 = *v17;
    v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v19 = (v17 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *v19;
    v19 += 11;
    *v18 = v20;
    v21 = ((v18 + 11) & 0xFFFFFFFFFFFFFFF8);
    v22 = (v19 & 0xFFFFFFFFFFFFFFF8) + 15;
    *v21 = *(v19 & 0xFFFFFFFFFFFFFFF8);
    v23 = v21 + 15;
    __dst = (v23 & 0xFFFFFFFFFFFFFFF8);
    v24 = (v22 & 0xFFFFFFFFFFFFFFF8);

    if (v5 < 0x7FFFFFFF)
    {
      v28 = *((v31 + v22) & 0xFFFFFFFFFFFFFFF8);
      if (v28 >= 0xFFFFFFFF)
      {
        LODWORD(v28) = -1;
      }

      v26 = v31;
      if (v28 != -1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v25 = (*(v4 + 48))(&v24[v6 + 1] & ~v6, v5, v32);
      v26 = v31;
      if (v25)
      {
LABEL_11:
        v27 = v23 & 0xFFFFFFFFFFFFFFF8;
        memcpy(__dst, (v22 & 0xFFFFFFFFFFFFFFF8), v9);
LABEL_16:
        *(v9 + v27) = v24[v9];
        return v3;
      }
    }

    v27 = v23 & 0xFFFFFFFFFFFFFFF8;
    *__dst = *v24;
    v29 = v26;
    (*(v4 + 16))();
    *((v7 + (&__dst[v6 + 1] & ~v6)) & 0xFFFFFFFFFFFFFFF8) = *((v7 + (&v24[v6 + 1] & ~v6)) & 0xFFFFFFFFFFFFFFF8);
    *((v29 + v23) & 0xFFFFFFFFFFFFFFF8) = *((v29 + v22) & 0xFFFFFFFFFFFFFFF8);

    goto LABEL_16;
  }

  v12 = *a2;
  *v3 = *a2;
  v3 = (v12 + ((v6 + 16) & ~(v6 | 7)));

  return v3;
}

_DWORD *assignWithCopy for Transform(_DWORD *a1, int *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2 + 7;
  *a1 = v6;
  v7 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = (((v5 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = ((v10 + 11) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;

  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 84);
  v17 = *(v15 + 80);
  v18 = *(v15 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v19 = ((v12 + v17 + 8) & v18);
  v20 = ((v13 + v17 + 8) & v18);
  v21 = ~v17;
  v22 = v17 + 1;
  v35 = *(v15 + 64) + 7;
  v36 = v14;
  v23 = (v35 + ((v17 + 1) & ~v17)) & 0xFFFFFFFFFFFFFFF8;
  v24 = v23 + 8;
  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 >= 0x7FFFFFFF)
  {
    v34 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v26 = *(v15 + 48);
    v27 = v23 + 8;
    v28 = v14;
    v33 = v26(&v19[v22] & v21, v16, v14);
    v29 = v28;
    v24 = v27;
    v30 = v26(&v20[v22] & v21, v16, v29);
    v25 = v34;
    if (v33)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (!v30)
    {
      *v19 = *v20;
      (*(v15 + 24))(&v19[v22] & v21, &v20[v22] & v21, v36);
      *((v35 + (&v19[v22] & v21)) & 0xFFFFFFFFFFFFFFF8) = *((v35 + (&v20[v22] & v21)) & 0xFFFFFFFFFFFFFFF8);
      *&v19[v24] = *&v20[v24];

      goto LABEL_12;
    }

    (*(v15 + 8))(&v19[v22] & v21, v36);

    goto LABEL_10;
  }

  v31 = *&v20[v24];
  if (v31 >= 0xFFFFFFFF)
  {
    LODWORD(v31) = -1;
  }

  v30 = v31 + 1;
  if (*&v19[v24] >= 0xFFFFFFFFuLL)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v30)
  {
LABEL_10:
    memcpy(v19, v20, v25);
    goto LABEL_12;
  }

  *v19 = *v20;
  (*(v15 + 16))(&v19[v22] & v21, &v20[v22] & v21, v36);
  *((v35 + (&v19[v22] & v21)) & 0xFFFFFFFFFFFFFFF8) = *((v35 + (&v20[v22] & v21)) & 0xFFFFFFFFFFFFFFF8);
  *&v19[v24] = *&v20[v24];

LABEL_12:
  v19[v25] = v20[v25];
  return a1;
}

_DWORD *initializeWithTake for Transform(_DWORD *a1, int *a2, uint64_t a3)
{
  v3 = a1;
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 11) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v17 = ((v11 + v15 + 8) & v16);
  v18 = ((v12 + v15 + 8) & v16);
  v19 = ~v15;
  v20 = v15 + 1;
  v21 = *(v14 + 64) + 7;
  v22 = (v21 + ((v15 + 1) & ~v15)) & 0xFFFFFFFFFFFFFFF8;
  v23 = v22 + 8;
  v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (*(v14 + 84) < 0x7FFFFFFFu)
  {
    v26 = *&v18[v23];
    if (v26 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    v25 = v24 + 8;
    if (v26 != -1)
    {
      goto LABEL_3;
    }

LABEL_7:
    *v17 = *v18;
    v31 = v3;
    v27 = &v17[v20] & v19;
    v28 = &v18[v20] & v19;
    (*(v14 + 32))(v27, v28, v13);
    v29 = v21 + v27;
    v3 = v31;
    *(v29 & 0xFFFFFFFFFFFFFFF8) = *((v21 + v28) & 0xFFFFFFFFFFFFFFF8);
    *&v17[v23] = *&v18[v23];
    goto LABEL_8;
  }

  v25 = v24 + 8;
  if (!(*(v14 + 48))(&v18[v20] & v19))
  {
    goto LABEL_7;
  }

LABEL_3:
  memcpy(v17, v18, v25);
LABEL_8:
  v17[v25] = v18[v25];
  return v3;
}

_DWORD *assignWithTake for Transform(_DWORD *a1, int *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2 + 7;
  *a1 = v6;
  v7 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = (((v5 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = ((v10 + 11) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;

  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 84);
  v17 = *(v15 + 80);
  v18 = *(v15 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v19 = ((v12 + v17 + 8) & v18);
  v20 = ((v13 + v17 + 8) & v18);
  v21 = ~v17;
  v22 = v17 + 1;
  v33 = *(v15 + 64) + 7;
  v23 = (v33 + ((v17 + 1) & ~v17)) & 0xFFFFFFFFFFFFFFF8;
  v24 = v23 + 8;
  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 >= 0x7FFFFFFF)
  {
    v32 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v26 = v23 + 8;
    v27 = *(v15 + 48);
    v31 = v27(&v19[v22] & v21, v16, v14);
    v28 = v27(&v20[v22] & v21, v16, v14);
    v24 = v26;
    v25 = v32;
    if (v31)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (!v28)
    {
      *v19 = *v20;
      (*(v15 + 40))(&v19[v22] & v21, &v20[v22] & v21, v14);
      *((v33 + (&v19[v22] & v21)) & 0xFFFFFFFFFFFFFFF8) = *((v33 + (&v20[v22] & v21)) & 0xFFFFFFFFFFFFFFF8);
      *&v19[v24] = *&v20[v24];

      goto LABEL_12;
    }

    (*(v15 + 8))(&v19[v22] & v21, v14);

    goto LABEL_10;
  }

  v29 = *&v20[v24];
  if (v29 >= 0xFFFFFFFF)
  {
    LODWORD(v29) = -1;
  }

  v28 = v29 + 1;
  if (*&v19[v24] >= 0xFFFFFFFFuLL)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v28)
  {
LABEL_10:
    memcpy(v19, v20, v25);
    goto LABEL_12;
  }

  *v19 = *v20;
  (*(v15 + 32))(&v19[v22] & v21, &v20[v22] & v21, v14);
  *((v33 + (&v19[v22] & v21)) & 0xFFFFFFFFFFFFFFF8) = *((v33 + (&v20[v22] & v21)) & 0xFFFFFFFFFFFFFFF8);
  *&v19[v24] = *&v20[v24];
LABEL_12:
  v19[v25] = v20[v25];
  return a1;
}

uint64_t getEnumTagSinglePayload for Transform(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = v7 - 1;
  v9 = *(v4 + 80);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  v12 = (*(*(*(a3 + 16) - 8) + 64) + ((v9 + 1) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_26;
  }

  v14 = ((v9 + 24) & ~v11) + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v15 = 8 * v14;
  if (v14 > 3)
  {
    goto LABEL_10;
  }

  v18 = (v13 + ~(-1 << v15)) >> v15;
  if (v18 > 0xFFFE)
  {
    v16 = *&a1[v14];
    if (!v16)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  if (v18 > 0xFE)
  {
    v16 = *&a1[v14];
    if (!*&a1[v14])
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  if (v18)
  {
LABEL_10:
    v16 = a1[v14];
    if (!a1[v14])
    {
      goto LABEL_26;
    }

LABEL_18:
    v19 = v14 > 3;
    if (v14 <= 3)
    {
      v20 = (v16 - 1) << v15;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }

    return v10 + (v21 | v20) + 1;
  }

LABEL_26:
  v22 = ((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
  if ((v8 & 0x80000000) != 0)
  {
    v24 = (v22 + v11 + 8) & ~v11;
    if (v6 < 0x7FFFFFFF)
    {
      v26 = *(v24 + v12 + 8);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      v25 = v26 + 1;
    }

    else
    {
      v25 = (*(v5 + 48))((v9 + 1 + v24) & ~v9);
    }

    if (v25 >= 2)
    {
      return v25 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v23 = *v22;
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }
}

void storeEnumTagSinglePayload for Transform(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8 <= 0xFB)
  {
    v9 = 251;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = v10 - 1;
  if ((v10 - 1) <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10 - 1;
  }

  v13 = *(v6 + 80);
  v14 = (*(*(*(a4 + 16) - 8) + 64) + ((v13 + 1) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = (v15 + ((v13 + 24) & ~(v13 | 7))) | 1;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v16 <= 3)
    {
      v22 = (v18 + ~(-1 << (8 * v16))) >> (8 * v16);
      if (v22 > 0xFFFE)
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0xFF)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22)
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

  if (v12 >= a2)
  {
    if (v19 > 1)
    {
      if (v19 != 2)
      {
        *&a1[v16] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      *&a1[v16] = 0;
    }

    else if (v19)
    {
      a1[v16] = 0;
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
    v24 = ((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
    if ((v11 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        v25 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v25 = a2 - 1;
      }

      *v24 = v25;
      return;
    }

    v26 = ((v24 + (v13 | 7) + 8) & ~(v13 | 7));
    if (v11 >= a2)
    {
      v15 = v14 + 8;
      if (v8 < 0x7FFFFFFF)
      {
        if (((a2 + 1) & 0x80000000) != 0)
        {
          *(v26 + v15) = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(v26 + v15) = a2;
        }

        return;
      }

      v27 = a2 - v9;
      if (a2 < v9)
      {
        v28 = *(v7 + 56);
        v29 = a2 + 1;

        v28((v26 + v13 + 1) & ~v13, v29);
        return;
      }

      if (v14 == -8)
      {
        return;
      }
    }

    else
    {
      if (((v14 + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
      {
        return;
      }

      v27 = a2 - v10;
    }

    bzero(v26, v15);
    *v26 = v27;
    return;
  }

  v20 = ~v12 + a2;
  if (v16 <= 3)
  {
    v21 = (v20 >> (8 * v16)) + 1;
    bzero(a1, v16);
    *a1 = v20 & ~(-1 << (8 * v16));
    if (v19 > 1)
    {
LABEL_17:
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
    bzero(a1, v16);
    *a1 = v20;
    v21 = 1;
    if (v19 > 1)
    {
      goto LABEL_17;
    }
  }

  if (v19)
  {
    a1[v16] = v21;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for Transform.State(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + 7;
  v7 = ((v6 + ((v5 + 1) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 15;
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || (v7 & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v11 = (a1 + v5 + 1) & ~v5;
    v12 = (a2 + v5 + 1) & ~v5;
    (*(v4 + 16))(v11, v12);
    *((v6 + v11) & 0xFFFFFFFFFFFFFFF8) = *((v6 + v12) & 0xFFFFFFFFFFFFFFF8);
    *((v3 + v7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t destroy for Transform.State(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))((*(*(*(a2 + 16) - 8) + 80) + 1 + a1) & ~*(*(*(a2 + 16) - 8) + 80));
}

_BYTE *initializeWithCopy for Transform.State(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 16;
  v7 = *(v5 + 80);
  v8 = &a1[v7 + 1] & ~v7;
  v9 = &a2[v7 + 1] & ~v7;
  (*(v5 + 16))(v8, v9);
  v10 = *(v6 + 48) + 7;
  *((v10 + v8) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v9) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v10 + ((v7 + 1) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15;
  *(&a1[v11] & 0xFFFFFFFFFFFFFFF8) = *(&a2[v11] & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

_BYTE *assignWithCopy for Transform.State(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 24;
  v7 = *(v5 + 80);
  v8 = &a1[v7 + 1] & ~v7;
  v9 = &a2[v7 + 1] & ~v7;
  (*(v5 + 24))(v8, v9);
  v10 = *(v6 + 40) + 7;
  *((v10 + v8) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v9) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v10 + ((v7 + 1) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15;
  *(&a1[v11] & 0xFFFFFFFFFFFFFFF8) = *(&a2[v11] & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

_BYTE *initializeWithTake for Transform.State(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 32;
  v7 = *(v5 + 80);
  v8 = &a1[v7 + 1] & ~v7;
  v9 = &a2[v7 + 1] & ~v7;
  (*(v5 + 32))(v8, v9);
  v10 = *(v6 + 32) + 7;
  *((v10 + v8) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v9) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v10 + ((v7 + 1) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15;
  *(&a1[v11] & 0xFFFFFFFFFFFFFFF8) = *(&a2[v11] & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_BYTE *assignWithTake for Transform.State(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 40;
  v7 = *(v5 + 80);
  v8 = &a1[v7 + 1] & ~v7;
  v9 = &a2[v7 + 1] & ~v7;
  (*(v5 + 40))(v8, v9);
  v10 = *(v6 + 24) + 7;
  *((v10 + v8) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v9) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v10 + ((v7 + 1) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15;
  *(&a1[v11] & 0xFFFFFFFFFFFFFFF8) = *(&a2[v11] & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for Transform.State(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = (*(*(*(a3 + 16) - 8) + 64) + ((v6 + 1) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))((a1 + v6 + 1) & ~v6);
    }

    v18 = *((a1 + v8 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

uint64_t outlined destroy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])?(uint64_t a1)
{
  type metadata accessor for [AccessibilityNode](0, &lazy cache variable for type metadata for (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])?, 255, type metadata accessor for (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode]), MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])()
{
  if (!lazy cache variable for type metadata for (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode]))
  {
    type metadata accessor for [AccessibilityNode](255, &lazy cache variable for type metadata for [AccessibilityNode], 255, type metadata accessor for AccessibilityNode, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode]));
    }
  }
}

uint64_t outlined destroy of (AccessibilityRelationshipScope.Key?, AccessibilityRelationshipScope.Key?)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of AccessibilityRelationshipScope.Key?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Attribute<AccessibilityNodeList>(0, &lazy cache variable for type metadata for AccessibilityRelationshipScope.Key?, &type metadata for AccessibilityRelationshipScope.Key, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AccessibilityRelationshipScope.Key?(uint64_t a1)
{
  type metadata accessor for Attribute<AccessibilityNodeList>(0, &lazy cache variable for type metadata for AccessibilityRelationshipScope.Key?, &type metadata for AccessibilityRelationshipScope.Key, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (AccessibilityRelationshipScope.Key?, AccessibilityRelationshipScope.Key?)()
{
  if (!lazy cache variable for type metadata for (AccessibilityRelationshipScope.Key?, AccessibilityRelationshipScope.Key?))
  {
    type metadata accessor for Attribute<AccessibilityNodeList>(255, &lazy cache variable for type metadata for AccessibilityRelationshipScope.Key?, &type metadata for AccessibilityRelationshipScope.Key, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AccessibilityRelationshipScope.Key?, AccessibilityRelationshipScope.Key?));
    }
  }
}

uint64_t partial apply for closure #1 in updateRelatedNodes #1 (removing:from:) in updateRelatedNodesByKey #1 (_:) in AccessibilityRelationshipScope.clear(from:)(uint64_t *a1)
{
  v2 = *(*(v1 + 16) + 56);
  v5 = *a1;
  v4[2] = &v5;
  return specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v4, v2) & 1;
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply()
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySo16UIViewControllerCG_TG5TA_0() & 1;
}

uint64_t static Tuple<>.== infix(_:_:)()
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Tuple();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int Tuple<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> Tuple<A, B>()
{
  Hasher.init(_seed:)();
  Tuple<>.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type EmptyTuple and conformance EmptyTuple()
{
  result = lazy protocol witness table cache variable for type EmptyTuple and conformance EmptyTuple;
  if (!lazy protocol witness table cache variable for type EmptyTuple and conformance EmptyTuple)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyTuple and conformance EmptyTuple);
  }

  return result;
}

void MenuButton<>.init(_:content:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type _MenuButtonStyleConfiguration.Label and conformance _MenuButtonStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type _MenuButtonStyleConfiguration.Label and conformance _MenuButtonStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type _MenuButtonStyleConfiguration.Label and conformance _MenuButtonStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _MenuButtonStyleConfiguration.Label and conformance _MenuButtonStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _MenuButtonStyleConfiguration.Label and conformance _MenuButtonStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type _MenuButtonStyleConfiguration.Label and conformance _MenuButtonStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _MenuButtonStyleConfiguration.Label and conformance _MenuButtonStyleConfiguration.Label);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _MenuButtonStyleConfiguration.Content and conformance _MenuButtonStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type _MenuButtonStyleConfiguration.Content and conformance _MenuButtonStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type _MenuButtonStyleConfiguration.Content and conformance _MenuButtonStyleConfiguration.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _MenuButtonStyleConfiguration.Content and conformance _MenuButtonStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _MenuButtonStyleConfiguration.Content and conformance _MenuButtonStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type _MenuButtonStyleConfiguration.Content and conformance _MenuButtonStyleConfiguration.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _MenuButtonStyleConfiguration.Content and conformance _MenuButtonStyleConfiguration.Content);
  }

  return result;
}

uint64_t LimitedAvailabilityTableColumnContent.init<A>(erasing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = specialized LimitedAvailabilityTableColumnContent.init<A>(erasing:)(a1, a2, a3, a4);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v6;
}

uint64_t LimitedAvailabilityTableColumnContentStorage.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 144) - 8) + 32))(v2 + *(*v2 + 160), a1);
  return v2;
}

uint64_t static LimitedAvailabilityTableColumnContent._makeContent(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v26 = a7;
  v57 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = a2[3];
  v53 = a2[2];
  v54 = v12;
  v55 = a2[4];
  v56 = *(a2 + 20);
  v13 = a2[1];
  v51 = *a2;
  v52 = v13;
  *&v29 = v12;
  DWORD2(v29) = DWORD2(v12);

  PreferencesInputs.makeIndirectOutputs()();

  v14 = v37;
  v15 = DWORD2(v37);
  v28 = v11;
  *&v37 = a3;
  *(&v37 + 1) = a4;
  *&v38 = a5;
  *(&v38 + 1) = a6;
  type metadata accessor for LimitedAvailabilityTableColumnContent();
  type metadata accessor for _GraphValue();
  v16 = _GraphValue.value.getter();
  v47 = v53;
  v48 = v54;
  v49 = v55;
  v50 = v56;
  v45 = v51;
  v46 = v52;
  v17 = AGSubgraphGetCurrent();
  if (!v17)
  {
    __break(1u);
  }

  v25 = &v25;
  LODWORD(v35) = v50;
  v32 = v47;
  v33 = v48;
  v34 = v49;
  v30 = v45;
  v31 = v46;
  LODWORD(v29) = v16;
  *(&v29 + 1) = v17;
  *(&v35 + 1) = v14;
  LODWORD(v36) = v15;
  *(&v36 + 1) = 0;
  MEMORY[0x1EEE9AC00](v17);
  *&v37 = a3;
  *(&v37 + 1) = a4;
  *&v38 = a5;
  *(&v38 + 1) = a6;
  v18 = type metadata accessor for LimitedAvailabilityTableColumnContent.IndirectOutputs();
  v24[2] = v18;
  v24[3] = swift_getWitnessTable();
  outlined init with copy of _TableColumnInputs(&v51, &v37);
  type metadata accessor for Attribute<()>(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
  v20 = v19;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v29, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_1, v24, v18, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
  v41 = v33;
  v42 = v34;
  v43 = v35;
  v44 = v36;
  v37 = v29;
  v38 = v30;
  v39 = v31;
  v40 = v32;
  (*(*(v18 - 8) + 8))(&v37, v18);
  *&v29 = v14;
  DWORD2(v29) = v15;

  v27 = 0;
  PreferencesOutputs.setIndirectDependency(_:)();

  v23 = v26;
  *v26 = v14;
  *(v23 + 2) = v15;
  return result;
}

void LimitedAvailabilityTableColumnContent.IndirectOutputs.updateValue()(uint64_t *a1)
{
  if (!*(v1 + 120))
  {
    v3 = AGSubgraphGetGraph();
    v4 = AGSubgraphCreate();

    *(v1 + 120) = v4;
    v6 = v4;
    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v5 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in LimitedAvailabilityTableColumnContent.IndirectOutputs.updateValue()(v1, a1[2], a1[3], a1[4], a1[5]);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }
}

uint64_t closure #1 in LimitedAvailabilityTableColumnContent.IndirectOutputs.updateValue()(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[4];
  v53[2] = a1[3];
  v53[3] = v10;
  v11 = a1[4];
  v53[4] = a1[5];
  v54 = *(a1 + 24);
  v12 = a1[2];
  v53[0] = a1[1];
  v53[1] = v12;
  v52 = v53[0];
  v13 = v12;
  v14 = *(a1 + 40);
  v51 = *(a1 + 7);
  v50 = v14;
  v15 = a1[5];
  v49 = *(a1 + 24);
  v47 = v11;
  v48 = v15;
  v55 = a1[1];
  v16 = *(a1 + 40);
  v17 = *(a1 + 7);
  v56 = v12;
  v58 = v17;
  v57 = v16;
  v62 = v53[0];
  v18 = *(a1 + 40);
  v61 = *(a1 + 7);
  v60 = v18;
  swift_beginAccess();
  v19 = v13[3];
  v59[1] = v13[2];
  v59[2] = v19;
  v20 = v13[5];
  v59[3] = v13[4];
  v59[4] = v20;
  v59[0] = v13[1];
  type metadata accessor for Attribute<()>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, MEMORY[0x1E697ECC0], MEMORY[0x1E697DAC0]);
  v21 = swift_allocObject();
  memmove((v21 + 16), v13 + 1, 0x50uLL);
  outlined init with copy of _TableColumnInputs(v53, &v38);
  outlined init with copy of _GraphInputs(&v55, &v38);
  outlined init with copy of CachedEnvironment(v59, &v38);

  v63 = v52;
  v65 = v50;
  v64 = v13;
  v66 = v51;
  outlined destroy of _GraphInputs(&v63);
  v52 = v62;
  v50 = v60;
  v51 = v61;
  v22 = *(a1 + 13);
  v23 = *(a1 + 28);
  v24 = a1[5];
  v41 = a1[4];
  v42 = v24;
  v25 = a1[7];
  v43 = a1[6];
  v44 = v25;
  v26 = a1[1];
  v38 = *a1;
  *v39 = v26;
  v27 = a1[3];
  *&v39[16] = a1[2];
  v40 = v27;

  *&v72 = a2;
  *(&v72 + 1) = a3;
  *&v73 = a4;
  *(&v73 + 1) = a5;
  type metadata accessor for LimitedAvailabilityTableColumnContent.IndirectOutputs();
  v28 = specialized LimitedAvailabilityTableColumnContent.IndirectOutputs.content.getter();

  *&v72 = a2;
  *(&v72 + 1) = a3;
  *&v73 = a4;
  *(&v73 + 1) = a5;
  type metadata accessor for LimitedAvailabilityTableColumnContent();
  _GraphValue.init(_:)();
  v67 = v52;
  *&v68[8] = v50;
  *v68 = v21;
  *&v68[24] = v51;
  v71 = v49;
  v69 = v47;
  v70 = v48;
  v33 = *&v68[16];
  v34 = v47;
  v35 = v48;
  v36 = v49;
  v31 = v52;
  v32 = *v68;
  v29 = *(*v28 + 112);
  outlined init with copy of _TableColumnInputs(&v67, &v72);
  v29(&v45, v37, &v31);

  v74 = v33;
  v75 = v34;
  v76 = v35;
  v77 = v36;
  v72 = v31;
  v73 = v32;
  outlined destroy of _TableColumnInputs(&v72);
  *&v38 = v22;
  DWORD2(v38) = v23;
  *&v31 = v45;
  DWORD2(v31) = v46;
  PreferencesOutputs.attachIndirectOutputs(to:)();

  v38 = v52;
  *v39 = v21;
  *&v39[8] = v50;
  *&v39[24] = v51;
  v40 = v47;
  v41 = v48;
  LODWORD(v42) = v49;
  return outlined destroy of _TableColumnInputs(&v38);
}

uint64_t LimitedAvailabilityTableColumnContentStorage.makeContent(content:inputs:)(int *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *a1;
  v5 = *(a2 + 48);
  v14[2] = *(a2 + 32);
  v14[3] = v5;
  v14[4] = *(a2 + 64);
  v15 = *(a2 + 80);
  v6 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v6;
  v7 = v3[18];
  v13 = v4;
  v8 = v3[16];
  v9 = v3[17];
  v10 = v3[19];
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LimitedAvailabilityTableColumnContent();
  type metadata accessor for _GraphValue();
  v13 = _GraphValue.value.getter();
  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v7;
  v12[3] = v10;
  type metadata accessor for LimitedAvailabilityTableColumnContentStorage.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  return (*(v10 + 64))(v12, v14, v7, v10);
}

uint64_t LimitedAvailabilityTableColumnContentStorage.Child.value.getter@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  specialized LimitedAvailabilityTableColumnContentStorage.Child.content.getter();
  type metadata accessor for LimitedAvailabilityTableColumnContentStorage();
  v4 = swift_dynamicCastClassUnconditional();
  return (*(*(a1 - 8) + 16))(a2, v4 + *(*v4 + 160), a1);
}

uint64_t LimitedAvailabilityTableColumnContentStorage.__deallocating_deinit()
{
  (*(*(*(*v0 + 144) - 8) + 8))(v0 + *(*v0 + 160));

  return swift_deallocClassInstance();
}

uint64_t specialized LimitedAvailabilityTableColumnContent.init<A>(erasing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = v9;
  v14[1] = v10;
  v14[2] = v11;
  v14[3] = v12;
  type metadata accessor for LimitedAvailabilityTableColumnContentStorage();
  (*(v6 + 16))(v8, a1, a4);
  return LimitedAvailabilityTableColumnContentStorage.__allocating_init(_:)(v8);
}

uint64_t instantiation function for generic protocol witness table for LimitedAvailabilityTableColumnContent<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for LimitedAvailabilityTableColumnContentStorage()
{
  result = swift_checkMetadataState();
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

void destroy for LimitedAvailabilityTableColumnContent.IndirectOutputs(uint64_t a1)
{

  v2 = *(a1 + 120);
}

uint64_t initializeWithCopy for LimitedAvailabilityTableColumnContent.IndirectOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  v7 = v3;

  v8 = v6;
  return a1;
}

uint64_t assignWithCopy for LimitedAvailabilityTableColumnContent.IndirectOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  v6 = v4;

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
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  v7 = *(a1 + 120);
  v8 = *(a2 + 120);
  *(a1 + 120) = v8;
  v9 = v8;

  return a1;
}

uint64_t assignWithTake for LimitedAvailabilityTableColumnContent.IndirectOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  v4 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t getEnumTagSinglePayload for LimitedAvailabilityTableColumnContent.IndirectOutputs(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for LimitedAvailabilityTableColumnContent.IndirectOutputs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for Attribute<()>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t (*partial apply for closure #1 in closure #1 in Attribute.init<A>(_:)())()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 24);
  *(v2 + 24) = v3;
  *(v2 + 40) = v3;
  return partial apply for implicit closure #1 in closure #1 in closure #1 in Attribute.init<A>(_:);
}

uint64_t specialized LimitedAvailabilityTableColumnContentStorage.Child.content.getter()
{
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LimitedAvailabilityTableColumnContent();
  return *AGGraphGetValue();
}

unint64_t lazy protocol witness table accessor for type _DigitalCrownDecelerationRate and conformance _DigitalCrownDecelerationRate()
{
  result = lazy protocol witness table cache variable for type _DigitalCrownDecelerationRate and conformance _DigitalCrownDecelerationRate;
  if (!lazy protocol witness table cache variable for type _DigitalCrownDecelerationRate and conformance _DigitalCrownDecelerationRate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DigitalCrownDecelerationRate and conformance _DigitalCrownDecelerationRate);
  }

  return result;
}

uint64_t outlined copy of _CrownHapticsConfiguration(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  if (a3 == 2 || a3 == 1)
  {
  }

  return result;
}

uint64_t destroy for _DigitalCrownConfiguration(uint64_t result)
{
  v1 = *(result + 80);
  if (v1 != 255)
  {
    return outlined consume of _CrownHapticsConfiguration(*(result + 64), *(result + 72), v1);
  }

  return result;
}

uint64_t outlined consume of _CrownHapticsConfiguration(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  if (a3 == 2 || a3 == 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for _DigitalCrownConfiguration(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = *(a2 + 40);
  *(result + 41) = *(a2 + 41);
  *(result + 45) = *(a2 + 45);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 57) = *(a2 + 57);
  v3 = *(a2 + 80);
  if (v3 == 255)
  {
    *(result + 64) = *(a2 + 64);
    *(result + 80) = *(a2 + 80);
  }

  else
  {
    v4 = *(a2 + 64);
    v5 = *(a2 + 72);
    v6 = result;
    outlined copy of _CrownHapticsConfiguration(v4, v5, v3);
    result = v6;
    *(v6 + 64) = v4;
    *(v6 + 72) = v5;
    *(v6 + 80) = v3;
  }

  *(result + 81) = *(a2 + 81);
  *(result + 85) = *(a2 + 85);
  return result;
}

uint64_t assignWithCopy for _DigitalCrownConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  *(a1 + 25) = *(a2 + 25);
  v5 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  v6 = *(a2 + 80);
  if (*(a1 + 80) == 255)
  {
    if (v6 == 255)
    {
      v15 = *(a2 + 64);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 64) = v15;
    }

    else
    {
      v12 = *(a2 + 64);
      v13 = *(a2 + 72);
      outlined copy of _CrownHapticsConfiguration(v12, v13, v6);
      *(a1 + 64) = v12;
      *(a1 + 72) = v13;
      *(a1 + 80) = v6;
    }
  }

  else if (v6 == 255)
  {
    outlined destroy of _CrownHapticsConfiguration(a1 + 64);
    v14 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v14;
  }

  else
  {
    v7 = *(a2 + 64);
    v8 = *(a2 + 72);
    outlined copy of _CrownHapticsConfiguration(v7, v8, v6);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    *(a1 + 64) = v7;
    *(a1 + 72) = v8;
    v11 = *(a1 + 80);
    *(a1 + 80) = v6;
    outlined consume of _CrownHapticsConfiguration(v9, v10, v11);
  }

  *(a1 + 81) = *(a2 + 81);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 83) = *(a2 + 83);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 85) = *(a2 + 85);
  return a1;
}