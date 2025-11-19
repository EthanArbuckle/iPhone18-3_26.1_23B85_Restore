uint64_t assignWithTake for _TypeSelectEquivalentTableRowModifier(uint64_t result, uint64_t a2)
{
  if (*(result + 24))
  {
    v2 = *(a2 + 24);
    if (v2)
    {
      v3 = *(a2 + 16);
      v4 = *result;
      v5 = *(result + 8);
      v6 = *(result + 16);
      *result = *a2;
      *(result + 16) = v3;
      v7 = result;
      outlined consume of Text.Storage(v4, v5, v6);
      *(v7 + 24) = v2;

      return v7;
    }

    else
    {
      v9 = result;
      outlined destroy of Text(result);
      v11 = *(a2 + 16);
      *v9 = *a2;
      v9[1] = v11;
      return v9;
    }
  }

  else
  {
    v8 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v8;
  }

  return result;
}

uint64_t type metadata completion function for TypeSelectHost()
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

void type metadata accessor for _TraitWritingModifier<TypeSelectEquivalentKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<TypeSelectEquivalentKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<TypeSelectEquivalentKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<TypeSelectEquivalentKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<TypeSelectEquivalentKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<TypeSelectEquivalentKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<TypeSelectEquivalentKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<TypeSelectEquivalentKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t PhoneIdiomGroupBoxStyle.makeBody(configuration:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = static HorizontalAlignment.center.getter();
  v6 = static Font.headline.getter();
  KeyPath = swift_getKeyPath();
  if (specialized Environment.wrappedValue.getter(a2, a3 & 1))
  {
    v8 = 0;
  }

  else
  {
    v8 = static Edge.Set.all.getter();
  }

  v22 = 1;
  v21 = 1;
  LOBYTE(v15) = 1;
  WORD4(v15) = 768;
  *&v16 = KeyPath;
  *(&v16 + 1) = v6;
  v17[0] = v8;
  memset(&v17[8], 0, 32);
  v17[40] = 1;
  __asm { FMOV            V0.2D, #8.0 }

  *v18 = _Q0;
  *&v18[16] = 1;
  v18[18] = 1;
  Spacing.init()();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>> and conformance <> ModifiedContent<A, B>();
  View.spacing(_:)();

  v19[4] = *&v17[16];
  v19[5] = *&v17[32];
  v20[0] = *v18;
  *(v20 + 15) = *&v18[15];
  v19[0] = v5;
  v19[1] = v15;
  v19[2] = v16;
  v19[3] = *v17;
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>>(v19);
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>();
    type metadata accessor for ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>(255, &lazy cache variable for type metadata for StyleContextWriter<ContainerStyleContext>, MEMORY[0x1E697FBF0], MEMORY[0x1E697FBE8], MEMORY[0x1E697F4C8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>)
  {
    type metadata accessor for ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>();
    type metadata accessor for _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>)
  {
    type metadata accessor for VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>);
    }
  }
}

void type metadata accessor for VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>()
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>, type metadata accessor for (ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content), MEMORY[0x1E6981F40]);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)> and conformance TupleView<A>();
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>);
    }
  }
}

void type metadata accessor for (ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)()
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>(255, &lazy cache variable for type metadata for ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, &type metadata for GroupBoxStyleConfiguration.Label, MEMORY[0x1E697EBB0], MEMORY[0x1E697E830]);
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, type metadata accessor for Font?, MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for Font?()
{
  if (!lazy cache variable for type metadata for Font?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Font?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>, type metadata accessor for (ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content), MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)> and conformance TupleView<A>);
  }

  return result;
}

void type metadata accessor for _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>()
{
  if (!lazy cache variable for type metadata for _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>)
  {
    lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle();
    v0 = type metadata accessor for _InsettableBackgroundShapeModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>);
    }
  }
}

void type metadata accessor for ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type StyleContextWriter<ContainerStyleContext> and conformance StyleContextWriter<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>();
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle> and conformance _InsettableBackgroundShapeModifier<A, B>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle> and conformance _InsettableBackgroundShapeModifier<A, B>, type metadata accessor for _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>();
    lazy protocol witness table accessor for type _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle> and conformance _InsettableBackgroundShapeModifier<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>> and conformance VStack<A>, type metadata accessor for VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle> and conformance _InsettableBackgroundShapeModifier<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t destroy for AccessibilityStepperModifier(uint64_t a1)
{
  if (*a1)
  {
  }

  if (*(a1 + 40))
  {
  }

  if (*(a1 + 56))
  {
  }
}

uint64_t initializeWithCopy for AccessibilityStepperModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    *a1 = v4;
    *(a1 + 8) = v5;
    v7 = *(a2 + 24);
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = v7;
  }

  else
  {
    v12 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v12;
  }

  v13 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  if (v13)
  {
    v14 = *(a2 + 48);
    *(a1 + 40) = v13;
    *(a1 + 48) = v14;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
  }

  v15 = *(a2 + 56);
  if (v15)
  {
    v16 = *(a2 + 64);
    *(a1 + 56) = v15;
    *(a1 + 64) = v16;
  }

  else
  {
    *(a1 + 56) = *(a2 + 56);
  }

  *(a1 + 72) = *(a2 + 72);
  v17 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v17;

  return a1;
}

uint64_t assignWithCopy for AccessibilityStepperModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (v5)
    {
      *a1 = v5;
      v6 = v5;

      v7 = *(a1 + 8);
      v8 = *(a2 + 8);
      *(a1 + 8) = v8;
      v9 = v8;

      v10 = *(a1 + 16);
      v11 = *(a2 + 16);
      *(a1 + 16) = v11;
      v12 = v11;

      v13 = *(a1 + 24);
      v14 = *(a2 + 24);
      *(a1 + 24) = v14;
      v15 = v14;
    }

    else
    {
      outlined destroy of AccessibilityStepperValue(a1);
      v23 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v23;
    }
  }

  else if (v5)
  {
    *a1 = v5;
    v16 = *(a2 + 8);
    *(a1 + 8) = v16;
    v17 = *(a2 + 16);
    *(a1 + 16) = v17;
    v18 = *(a2 + 24);
    *(a1 + 24) = v18;
    v19 = v5;
    v20 = v16;
    v21 = v17;
    v22 = v18;
  }

  else
  {
    v24 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v24;
  }

  v25 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  v26 = *(a2 + 40);
  if (v25)
  {
    if (v26)
    {
      v27 = *(a2 + 48);
      *(a1 + 40) = v26;
      *(a1 + 48) = v27;

      goto LABEL_15;
    }
  }

  else if (v26)
  {
    v28 = *(a2 + 48);
    *(a1 + 40) = v26;
    *(a1 + 48) = v28;

    goto LABEL_15;
  }

  *(a1 + 40) = *(a2 + 40);
LABEL_15:
  v29 = *(a2 + 56);
  if (!*(a1 + 56))
  {
    if (v29)
    {
      v31 = *(a2 + 64);
      *(a1 + 56) = v29;
      *(a1 + 64) = v31;

      goto LABEL_22;
    }

LABEL_21:
    *(a1 + 56) = *(a2 + 56);
    goto LABEL_22;
  }

  if (!v29)
  {

    goto LABEL_21;
  }

  v30 = *(a2 + 64);
  *(a1 + 56) = v29;
  *(a1 + 64) = v30;

LABEL_22:
  v32 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v32;

  v33 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v33;

  return a1;
}

uint64_t assignWithTake for AccessibilityStepperModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (*a2)
    {
      *a1 = *a2;

      v5 = *(a1 + 8);
      *(a1 + 8) = *(a2 + 8);

      v6 = *(a1 + 16);
      *(a1 + 16) = *(a2 + 16);

      v7 = *(a1 + 24);
      *(a1 + 24) = *(a2 + 24);

      goto LABEL_6;
    }

    outlined destroy of AccessibilityStepperValue(a1);
  }

  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
LABEL_6:
  v9 = *(a2 + 40);
  v10 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  if (v10)
  {
    if (v9)
    {
      v11 = *(a2 + 48);
      *(a1 + 40) = v9;
      *(a1 + 48) = v11;

      goto LABEL_13;
    }
  }

  else if (v9)
  {
    v12 = *(a2 + 48);
    *(a1 + 40) = v9;
    *(a1 + 48) = v12;
    goto LABEL_13;
  }

  *(a1 + 40) = *(a2 + 40);
LABEL_13:
  v13 = *(a2 + 56);
  if (!*(a1 + 56))
  {
    if (v13)
    {
      v15 = *(a2 + 64);
      *(a1 + 56) = v13;
      *(a1 + 64) = v15;
      goto LABEL_20;
    }

LABEL_19:
    *(a1 + 56) = *(a2 + 56);
    goto LABEL_20;
  }

  if (!v13)
  {

    goto LABEL_19;
  }

  v14 = *(a2 + 64);
  *(a1 + 56) = v13;
  *(a1 + 64) = v14;

LABEL_20:
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityStepperModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityStepperModifier(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

unint64_t initializeBufferWithCopyOfBuffer for AccessibilityLinkModifier(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkDestination();
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v24 = *a2;
    *a1 = *a2;
    a1 = v24 + ((v5 + 16) & ~v5);
  }

  else
  {
    v6 = v4;
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    v11 = *(a2 + 34);
    v12 = *(a2 + 32);
    outlined copy of Environment<OpenURLAction>.Content(*a2, v8, v9, v10, v12, v11);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    *(a1 + 32) = v12;
    *(a1 + 34) = v11;
    v13 = *(a2 + 40);
    v14 = *(a2 + 48);
    v15 = *(a2 + 56);
    v16 = *(a2 + 64);
    v17 = *(a2 + 74);
    v18 = *(a2 + 72);
    outlined copy of Environment<OpenURLAction>.Content(v13, v14, v15, v16, v18, v17);
    *(a1 + 40) = v13;
    *(a1 + 48) = v14;
    *(a1 + 56) = v15;
    *(a1 + 64) = v16;
    *(a1 + 72) = v18;
    *(a1 + 74) = v17;
    v19 = *(v6 + 24);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v22 = type metadata accessor for URL();
    (*(*(v22 - 8) + 16))(v20, v21, v22);
    v23 = type metadata accessor for LinkDestination.Configuration();
    *(v20 + *(v23 + 20)) = *(v21 + *(v23 + 20));
  }

  return a1;
}

uint64_t assignWithCopy for AccessibilityLinkModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 34);
  v9 = *(a2 + 32);
  outlined copy of Environment<OpenURLAction>.Content(*a2, v5, v6, v7, v9, v8);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 34);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v15 = *(a1 + 32);
  *(a1 + 32) = v9;
  *(a1 + 34) = v8;
  outlined consume of Environment<OpenURLAction>.Content(v10, v11, v12, v13, v15, v14);
  v16 = *(a2 + 40);
  v17 = *(a2 + 48);
  v18 = *(a2 + 56);
  v19 = *(a2 + 64);
  v20 = *(a2 + 74);
  v21 = *(a2 + 72);
  outlined copy of Environment<OpenURLAction>.Content(v16, v17, v18, v19, v21, v20);
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  v24 = *(a1 + 56);
  v25 = *(a1 + 64);
  v26 = *(a1 + 74);
  *(a1 + 40) = v16;
  *(a1 + 48) = v17;
  *(a1 + 56) = v18;
  *(a1 + 64) = v19;
  v27 = *(a1 + 72);
  *(a1 + 72) = v21;
  *(a1 + 74) = v20;
  outlined consume of Environment<OpenURLAction>.Content(v22, v23, v24, v25, v27, v26);
  v28 = *(type metadata accessor for LinkDestination() + 24);
  v29 = a1 + v28;
  v30 = a2 + v28;
  v31 = type metadata accessor for URL();
  (*(*(v31 - 8) + 24))(v29, v30, v31);
  v32 = type metadata accessor for LinkDestination.Configuration();
  *(v29 + *(v32 + 20)) = *(v30 + *(v32 + 20));
  return a1;
}

uint64_t initializeWithTake for AccessibilityLinkModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 31) = *(a2 + 31);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  v5 = *(type metadata accessor for LinkDestination() + 24);
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 32))(v6, v7, v8);
  v9 = type metadata accessor for LinkDestination.Configuration();
  *(v6 + *(v9 + 20)) = *(v7 + *(v9 + 20));
  return a1;
}

uint64_t assignWithTake for AccessibilityLinkModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 34);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 34);
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  v12 = *(a1 + 32);
  *(a1 + 32) = v4;
  *(a1 + 34) = v5;
  outlined consume of Environment<OpenURLAction>.Content(v6, v7, v8, v9, v12, v10);
  v13 = *(a2 + 72);
  v14 = *(a2 + 74);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v19 = *(a1 + 74);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v20 = *(a1 + 72);
  *(a1 + 72) = v13;
  *(a1 + 74) = v14;
  outlined consume of Environment<OpenURLAction>.Content(v15, v16, v17, v18, v20, v19);
  v21 = *(type metadata accessor for LinkDestination() + 24);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v24 = type metadata accessor for URL();
  (*(*(v24 - 8) + 40))(v22, v23, v24);
  v25 = type metadata accessor for LinkDestination.Configuration();
  *(v22 + *(v25 + 20)) = *(v23 + *(v25 + 20));
  return a1;
}

uint64_t type metadata completion function for AccessibilityAdjustableModifier.Configuration()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeWithCopy for AccessibilityAdjustableModifier.Configuration(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    v7 = *(v6 + 84);
    v8 = *(v6 + 64);
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    memcpy(a1, a2, v9);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    v11 = *(v6 + 56);
    v10 = v6 + 56;
    v11(a1, 0, 1, v5);
    v7 = *(v10 + 28);
    v8 = *(v10 + 8);
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  v13 = &a1[v12];
  v14 = &a2[v12];
  *v13 = *v14;
  v15 = v13 & 0xFFFFFFFFFFFFFFF8;
  v16 = v14 & 0xFFFFFFFFFFFFFFF8;
  v14 &= 0xFFFFFFFFFFFFFFF8;
  v19 = *(v14 + 8);
  v17 = (v14 + 8);
  v18 = v19;
  if (v19 < 0xFFFFFFFF)
  {
    *(v15 + 8) = *v17;
  }

  else
  {
    v20 = *(v17 + 1);
    *(v15 + 8) = v18;
    *(v15 + 16) = v20;
  }

  v21 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v16 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*v22 < 0xFFFFFFFFuLL)
  {
    *v21 = *v22;
  }

  else
  {
    v23 = *(v22 + 8);
    *v21 = *v22;
    *(v21 + 8) = v23;
  }

  v24 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
  v26 = v25[1];
  *v24 = *v25;
  v24[1] = v26;
  v27 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  v29 = v28[1];
  *v27 = *v28;
  v27[1] = v29;

  return a1;
}

char *assignWithCopy for AccessibilityAdjustableModifier.Configuration(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 24))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = &a1[v13];
  v15 = &a2[v13];
  *v14 = *v15;
  v16 = v14 & 0xFFFFFFFFFFFFFFF8;
  v17 = ((v14 & 0xFFFFFFFFFFFFFFF8) + 8);
  v18 = v15 & 0xFFFFFFFFFFFFFFF8;
  v20 = ((v15 & 0xFFFFFFFFFFFFFFF8) + 8);
  v19 = *v20;
  if (*v17 < 0xFFFFFFFF)
  {
    if (v19 >= 0xFFFFFFFF)
    {
      v22 = v20[1];
      *v17 = v19;
      *((v14 & 0xFFFFFFFFFFFFFFF8) + 16) = v22;

      goto LABEL_22;
    }
  }

  else
  {
    if (v19 >= 0xFFFFFFFF)
    {
      v21 = v20[1];
      *v17 = v19;
      *((v14 & 0xFFFFFFFFFFFFFFF8) + 16) = v21;

      goto LABEL_22;
    }
  }

  *v17 = *v20;
LABEL_22:
  v23 = ((v16 + 31) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v18 + 31) & 0xFFFFFFFFFFFFFFF8);
  v25 = *v24;
  if (*v23 < 0xFFFFFFFFuLL)
  {
    if (v25 >= 0xFFFFFFFF)
    {
      v27 = v24[1];
      *v23 = v25;
      v23[1] = v27;

      goto LABEL_29;
    }

LABEL_28:
    *v23 = *v24;
    goto LABEL_29;
  }

  if (v25 < 0xFFFFFFFF)
  {

    goto LABEL_28;
  }

  v26 = v24[1];
  *v23 = v25;
  v23[1] = v26;

LABEL_29:
  v28 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  v30 = v29[1];
  *v28 = *v29;
  v28[1] = v30;

  v31 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v29 + 23) & 0xFFFFFFFFFFFFFFF8);
  v33 = v32[1];
  *v31 = *v32;
  v31[1] = v33;

  return a1;
}

void *initializeWithTake for AccessibilityAdjustableModifier.Configuration(void *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    v7 = *(v6 + 84);
    v8 = *(v6 + 64);
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    memcpy(a1, a2, v9);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    v11 = *(v6 + 56);
    v10 = v6 + 56;
    v11(a1, 0, 1, v5);
    v7 = *(v10 + 28);
    v8 = *(v10 + 8);
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  v13 = &a2[v12];
  *(a1 + v12) = a2[v12];
  v14 = (a1 + v12) & 0xFFFFFFFFFFFFFFF8;
  v15 = v13 & 0xFFFFFFFFFFFFFFF8;
  v13 &= 0xFFFFFFFFFFFFFFF8;
  v18 = *(v13 + 8);
  v16 = (v13 + 8);
  v17 = v18;
  if (v18 < 0xFFFFFFFF)
  {
    *(v14 + 8) = *v16;
  }

  else
  {
    v19 = *(v16 + 1);
    *(v14 + 8) = v17;
    *(v14 + 16) = v19;
  }

  v20 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*v21 < 0xFFFFFFFFuLL)
  {
    *v20 = *v21;
  }

  else
  {
    v22 = *(v21 + 8);
    *v20 = *v21;
    *(v20 + 8) = v22;
  }

  v23 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  *((v23 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

char *assignWithTake for AccessibilityAdjustableModifier.Configuration(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 32))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 40))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = &a1[v13];
  v15 = &a2[v13];
  *v14 = *v15;
  v16 = v14 & 0xFFFFFFFFFFFFFFF8;
  v17 = ((v14 & 0xFFFFFFFFFFFFFFF8) + 8);
  v18 = v15 & 0xFFFFFFFFFFFFFFF8;
  v20 = ((v15 & 0xFFFFFFFFFFFFFFF8) + 8);
  v19 = *v20;
  if (*v17 < 0xFFFFFFFF)
  {
    if (v19 >= 0xFFFFFFFF)
    {
      v22 = v20[1];
      *v17 = v19;
      v17[1] = v22;
      goto LABEL_22;
    }
  }

  else
  {
    if (v19 >= 0xFFFFFFFF)
    {
      v21 = v20[1];
      *v17 = v19;
      v17[1] = v21;

      goto LABEL_22;
    }
  }

  *v17 = *v20;
LABEL_22:
  v23 = ((v16 + 31) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v18 + 31) & 0xFFFFFFFFFFFFFFF8);
  v25 = *v24;
  if (*v23 < 0xFFFFFFFFuLL)
  {
    if (v25 >= 0xFFFFFFFF)
    {
      v27 = v24[1];
      *v23 = v25;
      v23[1] = v27;
      goto LABEL_29;
    }

LABEL_28:
    *v23 = *v24;
    goto LABEL_29;
  }

  if (v25 < 0xFFFFFFFF)
  {

    goto LABEL_28;
  }

  v26 = v24[1];
  *v23 = v25;
  v23[1] = v26;

LABEL_29:
  v28 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v29;

  *((v28 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v29 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityAdjustableModifier.Configuration(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = (((((((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((((((a1 + v8) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void storeEnumTagSinglePayload for AccessibilityAdjustableModifier.Configuration(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(*(a4 + 24) - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = (((((((v10 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v12 = a3 - v9;
    if ((((((((v10 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if ((((((((v10 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if ((((((((v10 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v9 + a2;
      v17 = a1;
      bzero(a1, v11);
      a1 = v17;
      *v17 = v16;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v11) = v15;
      }

      else
      {
        *(a1 + v11) = v15;
      }
    }

    else if (v5)
    {
      *(a1 + v11) = v15;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v11) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v11) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 < 0x7FFFFFFF)
  {
    v22 = ((((((a1 + v10) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v22 = a2 & 0x7FFFFFFF;
      v22[1] = 0;
    }

    else
    {
      *v22 = a2 - 1;
    }
  }

  else if (v8 >= a2)
  {
    v23 = *(v6 + 56);

    v23();
  }

  else
  {
    if (v10 <= 3)
    {
      v18 = ~(-1 << (8 * v10));
    }

    else
    {
      v18 = -1;
    }

    if (v10)
    {
      v19 = v18 & (~v8 + a2);
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v10);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

uint64_t View.accessibilityCombinedElement(options:ignoredTraits:)@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v18 - v13;
  type metadata accessor for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, type metadata accessor for AccessibilityChildBehaviorBox);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  v19 = v15;
  View._accessibilityElement(children:)(&v19, a2, a3);

  ModifiedContent<>.accessibilityRemoveTraits(_:)(v8, v14);
  v16 = *(v9 + 8);
  v16(v11, v8);
  v18[1] = 64;
  ModifiedContent<>.accessibilityAddVisibility(_:)(v8, a4);
  return (v16)(v14, v8);
}

uint64_t AccessibilityDefaultActionRepresentableConfiguration.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v4 = *(a1 + 16);
  type metadata accessor for AccessibilityProxyTransformModifier<Never, PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for AccessibilityProxyTransformModifier<Never, PrimitiveButtonStyleConfiguration.Label>);
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  v12 = v2[1];
  v24[0] = *v2;
  v24[1] = v12;
  v13 = v2[3];
  v24[2] = v2[2];
  v24[3] = v13;
  v14 = swift_allocObject();
  v15 = *(a1 + 24);
  *(v14 + 16) = v4;
  *(v14 + 24) = v15;
  v16 = v2[1];
  *(v14 + 32) = *v2;
  *(v14 + 48) = v16;
  v17 = v2[3];
  *(v14 + 64) = v2[2];
  *(v14 + 80) = v17;
  v18 = (*(*(a1 - 8) + 16))(v23, v24, a1);
  View.accessibilityAttachment<A>(content:_:)(v18, partial apply for closure #1 in AccessibilityDefaultActionRepresentableConfiguration.body(content:), v14, v4, &type metadata for PrimitiveButtonStyleConfiguration.Label, v15, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, v8);

  v22[2] = v15;
  v22[3] = &protocol witness table for AccessibilityProxyTransformModifier<A, B>;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v8, v5, WitnessTable);
  v20 = *(v6 + 8);
  v20(v8, v5);
  static ViewBuilder.buildExpression<A>(_:)(v11, v5, WitnessTable);
  return (v20)(v11, v5);
}

uint64_t closure #1 in AccessibilityDefaultActionRepresentableConfiguration.body(content:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  AccessibilityAttachment.Tree.attachment.getter(&v36);
  outlined destroy of AccessibilityAttachment.Tree(a1);
  if (v38)
  {
    outlined init with copy of AccessibilityProperties(&v36, v39);
    outlined destroy of AccessibilityAttachment(&v36);
  }

  else
  {
    _s7SwiftUI21AnyAccessibilityValueVSgWOhTm_0(&v36, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
    memset(v39, 0, sizeof(v39));
  }

  outlined init with copy of AppIntentAction?(v39, &v36, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
  if (v38)
  {
    v7 = v37;

    outlined destroy of AccessibilityProperties(&v36);
    if (v7)
    {
      if (*(v7 + 16))
      {
        v8 = *(v7 + 32);
        v9 = *(v7 + 40);
        v10 = *(v7 + 48);
        v11 = *(v7 + 56);
        outlined copy of Text.Storage(v8, v9, *(v7 + 48));

        goto LABEL_11;
      }
    }
  }

  else
  {
    _s7SwiftUI21AnyAccessibilityValueVSgWOhTm_0(&v36, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
LABEL_11:
  outlined init with copy of AppIntentAction?(v39, &v36, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
  if (v38)
  {
    v12 = AccessibilityProperties.images.getter();
    outlined destroy of AccessibilityProperties(&v36);
    if (*(v12 + 16))
    {
      v13 = *(v12 + 32);

      goto LABEL_17;
    }
  }

  else
  {
    _s7SwiftUI21AnyAccessibilityValueVSgWOhTm_0(&v36, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
  }

  v13 = 0;
LABEL_17:
  v14 = a2[2];
  v40[0] = a2[1];
  v40[1] = v14;
  v40[2] = a2[3];
  v15 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
    type metadata accessor for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>(0, &lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>, lazy protocol witness table accessor for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler, &type metadata for AccessibilityAppIntentHandler, type metadata accessor for AnyAccessibilityAction.ConcreteBase);
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0u;
    *(v18 + 48) = a2[1];
    *(v18 + 64) = *(a2 + 4);
    *(v18 + 72) = v15;
    *(v18 + 80) = a2[3];
    *(v18 + 96) = 0;
    *(v18 + 104) = 0;
    *(v18 + 112) = 0;
    *(v18 + 120) = 2;
    *(v18 + 128) = v8;
    *(v18 + 136) = v9;
    *(v18 + 144) = v10;
    *(v18 + 152) = v11;
    *(v18 + 160) = v13;
    v19 = 1;
    *(v18 + 168) = 1;
  }

  else
  {
    v20 = swift_allocObject();
    *(v20 + 16) = a3;
    *(v20 + 24) = a4;
    v21 = a2[1];
    *(v20 + 32) = *a2;
    *(v20 + 48) = v21;
    v22 = a2[3];
    *(v20 + 64) = a2[2];
    *(v20 + 80) = v22;
    v23 = swift_allocObject();
    *(v23 + 16) = partial apply for closure #1 in closure #1 in AccessibilityDefaultActionRepresentableConfiguration.body(content:);
    *(v23 + 24) = v20;
    v29 = a1;
    v24 = AccessibilityActionHandlerSeed++;
    type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>();
    v17 = v25;
    v18 = swift_allocObject();
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0u;
    *(v18 + 48) = 0u;
    *(v18 + 64) = 0;
    *(v18 + 72) = 2;
    *(v18 + 80) = v8;
    *(v18 + 88) = v9;
    *(v18 + 96) = v10;
    *(v18 + 104) = v11;
    *(v18 + 112) = v13;
    *(v18 + 120) = thunk for @escaping @callee_guaranteed () -> (@out AccessibilityActionResult)partial apply;
    *(v18 + 128) = v23;
    *(v18 + 136) = v24;
    a1 = v29;
    v26 = type metadata accessor for AccessibilityDefaultActionRepresentableConfiguration();
    (*(*(v26 - 8) + 16))(&v36, a2, v26);
    v19 = 0;
  }

  v31 = v18;
  v32 = v36;
  v33 = v17;
  v34 = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
  v35 = v19;
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_18CD63400;
  outlined init with copy of AnyAccessibilityAction(&v31, v27 + 32);
  outlined copy of Text?(v8, v9, v10, v11);

  outlined init with copy of AppIntentAction?(v40, &v36, &lazy cache variable for type metadata for AppIntentAction?, &type metadata for AppIntentAction);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.init<A>(_:_:)();
  AccessibilityAttachment.init(properties:)();

  outlined consume of Text?(v8, v9, v10, v11);
  outlined destroy of AnyAccessibilityAction(&v31);
  result = _s7SwiftUI21AnyAccessibilityValueVSgWOhTm_0(v39, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
  *(a1 + 296) = 0;
  return result;
}

uint64_t AccessibilityButtonModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v32 = a3;
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18], MEMORY[0x1E69808E8]);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  type metadata accessor for AccessibilityButtonModifier.Representable();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for StaticIf();
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v26 = &v25 - v8;
  type metadata accessor for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>(255, &lazy cache variable for type metadata for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>);
  v9 = type metadata accessor for ModifiedContent();
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v27 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v25 - v12;
  v13 = v3[1];
  v34[0] = *v3;
  v34[1] = v13;
  v14 = v3[3];
  v34[2] = v3[2];
  v34[3] = v14;
  v33[14] = v5;
  v33[15] = v6;
  v33[16] = v34;
  v33[8] = v5;
  v33[9] = v6;
  v33[10] = v34;
  WitnessTable = swift_getWitnessTable();
  v33[24] = v6;
  v33[25] = WitnessTable;
  v16 = swift_getWitnessTable();
  v33[22] = v6;
  v33[23] = &protocol witness table for AccessibilityAttachmentModifier;
  v17 = swift_getWitnessTable();
  v18 = v26;
  View.staticIf<A, B, C>(context:trueModifier:falseModifier:)();
  v33[2] = v5;
  v33[3] = v6;
  v33[4] = v34;
  v33[19] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>();
  v33[20] = v16;
  v33[21] = v17;
  v19 = swift_getWitnessTable();
  v20 = v27;
  View.accessibilityShowsLargeContentViewer<A, B>(_:largeContentView:)(v19, destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation, v33, v7, &type metadata for PrimitiveButtonStyleConfiguration.Label, &type metadata for PlaceholderLargeContentView, v19, v27, &protocol witness table for PlaceholderLargeContentView);
  (*(v30 + 8))(v18, v7);
  v33[17] = v19;
  v33[18] = &protocol witness table for AccessibilityLargeContentViewModifier<A, B>;
  v21 = swift_getWitnessTable();
  v22 = v28;
  static ViewBuilder.buildExpression<A>(_:)(v20, v9, v21);
  v23 = *(v29 + 8);
  v23(v20, v9);
  static ViewBuilder.buildExpression<A>(_:)(v22, v9, v21);
  return (v23)(v22, v9);
}

uint64_t closure #1 in AccessibilityButtonModifier.body(content:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AccessibilityButtonModifier.Representable();
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - v13;
  v15 = a2[1];
  v23 = *a2;
  v24 = v15;
  v16 = a2[3];
  v25 = a2[2];
  v26 = v16;
  v17 = type metadata accessor for AccessibilityButtonModifier();
  (*(*(v17 - 8) + 16))(v27, a2, v17);
  MEMORY[0x18D00A570](&v23, a3, v7, a4);
  v27[0] = v23;
  v27[1] = v24;
  v27[2] = v25;
  v27[3] = v26;
  (*(*(v7 - 8) + 8))(v27, v7);
  WitnessTable = swift_getWitnessTable();
  v22[0] = a4;
  v22[1] = WitnessTable;
  v19 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v11, v8, v19);
  v20 = *(v9 + 8);
  v20(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)(v14, v8, v19);
  return (v20)(v14, v8);
}

uint64_t closure #2 in AccessibilityButtonModifier.body(content:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v23 - v13;
  v15 = a2[1];
  v24 = *a2;
  v25 = v15;
  v16 = a2[3];
  v26 = a2[2];
  v27 = v16;
  v28 = 1;
  v17 = type metadata accessor for AccessibilityButtonModifier();
  (*(*(v17 - 8) + 16))(&v29, a2, v17);
  *&v29 = a3;
  *(&v29 + 1) = a3;
  *&v30 = a4;
  *(&v30 + 1) = a4;
  v18 = type metadata accessor for AccessibilityButtonModifier.Attachment();
  WitnessTable = swift_getWitnessTable();
  v23[0] = a4;
  v23[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v20 = swift_getWitnessTable();
  (*(WitnessTable + 40))(a1, v18, WitnessTable);
  v31 = v26;
  v32 = v27;
  v33 = v28;
  v29 = v24;
  v30 = v25;
  (*(*(v18 - 8) + 8))(&v29, v18);
  static ViewBuilder.buildExpression<A>(_:)(v11, v8, v20);
  v21 = *(v9 + 8);
  v21(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)(v14, v8, v20);
  return (v21)(v14, v8);
}

uint64_t AccessibilityButtonModifier.Representable.body(content:)(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v43 = *v2;
  v44 = v4;
  v5 = v2[3];
  v7 = *v2;
  v6 = v2[1];
  v45 = v2[2];
  v46 = v5;
  v36 = v7;
  v37 = v6;
  v8 = v2[3];
  v38 = v2[2];
  v39 = v8;
  v9 = *(a2 + 16);
  swift_getWitnessTable();
  v10 = type metadata accessor for _ViewModifier_Content();
  v11 = *(a2 + 24);
  WitnessTable = swift_getWitnessTable();
  v40 = 0;
  v13 = type metadata accessor for AccessibilityButtonModifier.Configuration();
  (*(*(v13 - 8) + 16))(&v47, &v43, v13);
  *&v47 = v9;
  *(&v47 + 1) = v10;
  *&v48 = v11;
  *(&v48 + 1) = WitnessTable;
  v14 = type metadata accessor for AccessibilityButtonModifier.Attachment();
  v15 = swift_getWitnessTable();
  type metadata accessor for ModifiedContent();
  v34 = WitnessTable;
  v35 = &protocol witness table for AccessibilityAttachmentModifier;
  v16 = swift_getWitnessTable();
  (*(v15 + 40))(v26, v16, v14, v15);
  v49 = v38;
  v50 = v39;
  v51 = v40;
  v47 = v36;
  v48 = v37;
  (*(*(v14 - 8) + 8))(&v47, v14);
  v33 = v26[0];
  v17 = v43;
  v18 = v44;
  v19 = v45;
  v20 = v46;
  swift_checkMetadataState();
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = v20;

  outlined copy of ToggleStyleConfiguration.Effect(v18, *(&v18 + 1), v19, *(&v19 + 1));
  v21 = type metadata accessor for AccessibilityDefaultActionRepresentableConfiguration();
  v22 = swift_getWitnessTable();
  type metadata accessor for AccessibilityProxyTransformModifier<Never, PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for AccessibilityProxyTransformModifier<Never, PrimitiveButtonStyleConfiguration.Label>);
  type metadata accessor for ModifiedContent();
  v27 = v16;
  v28 = &protocol witness table for AccessibilityProxyTransformModifier<A, B>;
  v23 = swift_getWitnessTable();
  (*(v22 + 40))(&v41, &v33, v21, v22);
  v36 = v29;
  v37 = v30;
  v38 = v31;
  v39 = v32;
  (*(*(v21 - 8) + 8))(&v36, v21);

  v26[0] = v41;
  v26[1] = v42;
  v24 = swift_checkMetadataState();
  static ViewBuilder.buildExpression<A>(_:)(v26, v24, v23);

  v41 = v29;
  v42 = v30;
  static ViewBuilder.buildExpression<A>(_:)(&v41, v24, v23);
}

uint64_t AccessibilityButtonModifier.Attachment.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v29 = a3;
  v5 = *(a2 + 24);
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = v3[1];
  v35 = *v3;
  v36 = v19;
  v20 = v3[3];
  v37 = v3[2];
  v38 = v20;
  v28 = *(a2 + 40);
  v21 = *(v3 + 64);
  View.accessibilityCombinedElement(options:ignoredTraits:)(12, v5, v28, v9);
  *&v33[0] = 1;
  ModifiedContent<>.accessibilityAddTraits(_:)(v33, v6);
  v22 = *(v7 + 8);
  v22(v9, v6);
  v33[0] = v35;
  v33[1] = v36;
  v33[2] = v37;
  v33[3] = v38;
  v34 = v21;
  v32 = AccessibilityButtonModifier.Attachment.accessibilityActions.getter(a2);
  v23 = lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  v24 = lazy protocol witness table accessor for type [AnyAccessibilityAction] and conformance [A]();
  ModifiedContent<>.update<A>(_:combining:isEnabled:)(&type metadata for AccessibilityProperties.ActionsKey, &v32, v21 & 1, v6, &type metadata for AccessibilityProperties.ActionsKey, v23, v24, v15);

  v22(v12, v6);
  v30 = v28;
  v31 = &protocol witness table for AccessibilityAttachmentModifier;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v15, v6, WitnessTable);
  v22(v15, v6);
  static ViewBuilder.buildExpression<A>(_:)(v18, v6, WitnessTable);
  return (v22)(v18, v6);
}

uint64_t AccessibilityButtonModifier.Attachment.accessibilityActions.getter(uint64_t a1)
{
  v27 = *(v1 + 64);
  v2 = v1[3];
  v25 = v1[2];
  v26 = v2;
  v3 = v1[1];
  v23 = *v1;
  v24 = v3;
  if ((v27 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = *(&v25 + 1);
  if (*(&v25 + 1))
  {
    v5 = v26;
    v6 = v25;
    v7 = v24;
    type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_18CD63400;
    v6 &= 1u;
    v22[0] = v6;
    type metadata accessor for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>(0, &lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>, lazy protocol witness table accessor for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler, &type metadata for AccessibilityAppIntentHandler, type metadata accessor for AnyAccessibilityAction.ConcreteBase);
    *(v8 + 56) = v9;
    *(v8 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
    v10 = swift_allocObject();
    *(v8 + 32) = v10;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *(v10 + 48) = v7;
    *(v10 + 64) = v6;
    *(v10 + 72) = v4;
    *(v10 + 80) = v5;
    *(v10 + 96) = 0;
    *(v10 + 104) = 0;
    *(v10 + 112) = 0;
    *(v10 + 120) = 2;
    *(v10 + 128) = 0u;
    *(v10 + 144) = 0u;
    *(v10 + 153) = 0u;
    *(v8 + 72) = 1;
    outlined copy of Environment<AppIntentExecutor?>.Content(v7, *(&v7 + 1), v6);
    v11 = v4;

    return v8;
  }

  else
  {
    type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18CD63400;
    v15 = swift_allocObject();
    v16 = *(a1 + 32);
    *(v15 + 16) = *(a1 + 16);
    *(v15 + 32) = v16;
    v17 = v1[3];
    *(v15 + 80) = v1[2];
    *(v15 + 96) = v17;
    *(v15 + 112) = *(v1 + 64);
    v18 = v1[1];
    *(v15 + 48) = *v1;
    *(v15 + 64) = v18;
    v19 = swift_allocObject();
    *(v19 + 16) = partial apply for closure #1 in AccessibilityButtonModifier.Attachment.accessibilityActions.getter;
    *(v19 + 24) = v15;
    LODWORD(v15) = AccessibilityActionHandlerSeed++;
    type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>();
    *(v14 + 56) = v20;
    *(v14 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
    v21 = swift_allocObject();
    *(v14 + 32) = v21;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0u;
    *(v21 + 64) = 0;
    *(v21 + 72) = 2;
    *(v21 + 80) = 0u;
    *(v21 + 96) = 0u;
    *(v21 + 112) = 0;
    *(v21 + 120) = thunk for @escaping @callee_guaranteed () -> (@out AccessibilityActionResult)partial apply;
    *(v21 + 128) = v19;
    *(v21 + 136) = v15;
    *(v14 + 72) = 0;
    (*(*(a1 - 8) + 16))(v22, &v23, a1);
    return v14;
  }
}

uint64_t AccessibilityPlaybackButtonModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v32[2] = a1;
  v36 = a2;
  v3 = *(a1 + 16);
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v32 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v32 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v32 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v34 = v32 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v35 = v32 - v21;
  v33 = *(a1 + 24);
  View.accessibilityCombinedElement(options:ignoredTraits:)(0, v3, v33, v8);
  *&v39[0] = 1;
  ModifiedContent<>.accessibilityAddTraits(_:)(v39, v5);
  v22 = *(v6 + 8);
  v22(v8, v5);
  *&v39[0] = 1024;
  ModifiedContent<>.accessibilityRemoveTraits(_:)(v39, v5);
  v22(v11, v5);
  v23 = specialized static Text.Accessibility.playback(for:)(v2);
  v25 = v24;
  LOBYTE(v8) = v26;
  ModifiedContent<>.accessibilityLabel(_:)(v23, v24, v26 & 1, v27, v5, v17);
  outlined consume of Text.Storage(v23, v25, v8 & 1);

  v22(v14, v5);
  AccessibilityPlaybackButtonModifier.resolvedValue.getter(v39);
  v28 = v34;
  ModifiedContent<>.accessibilityValue(_:)(v5, v34);
  outlined destroy of AccessibilityValueStorage(v39);
  v22(v17, v5);
  v37 = v33;
  v38 = &protocol witness table for AccessibilityAttachmentModifier;
  WitnessTable = swift_getWitnessTable();
  v30 = v35;
  static ViewBuilder.buildExpression<A>(_:)(v28, v5, WitnessTable);
  v22(v28, v5);
  static ViewBuilder.buildExpression<A>(_:)(v30, v5, WitnessTable);
  return (v22)(v30, v5);
}

double AccessibilityPlaybackButtonModifier.resolvedValue.getter@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-v4 - 8];
  type metadata accessor for ClosedRange<Date>();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = type metadata accessor for AccessibilityPlaybackButtonModifier.Configuration();
  outlined init with copy of ClosedRange<Date>?(v1 + *(v11 + 40), v5);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    outlined destroy of ClosedRange<Date>?(v5, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    LOBYTE(v21[0]) = 0;
    lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
    lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
    lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
    AccessibilityValueStorage.init<A>(_:description:)();
  }

  else
  {
    outlined init with take of LinkDestination(v5, v10, type metadata accessor for ClosedRange<Date>);
    v13 = v1 + *(v11 + 36);
    v14 = *(v13 + 16);
    if (v14 == 4)
    {
      v18[0] = 0;
      lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
      lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
      lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
      AccessibilityValueStorage.init<A>(_:description:)();
    }

    else if (v14 == 5)
    {
      AccessibilityPlaybackButtonModifier.percentageValue(interval:)(v10, v21);
    }

    else
    {
      v15 = *(v1 + *(v11 + 36) + 8);
      v18[0] = *v13;
      v19 = v15;
      v20 = v14;
      AccessibilityPlaybackButtonModifier.descriptionValue(_:interval:)(v18, v10, v21);
    }

    outlined destroy of LinkDestination(v10, type metadata accessor for ClosedRange<Date>);
    v16 = v21[1];
    *a1 = v21[0];
    a1[1] = v16;
    result = *&v22;
    a1[2] = v22;
  }

  return result;
}

uint64_t AccessibilityPlaybackButtonModifier.percentageValue(interval:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v35 = a2;
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x1EEE9AC00](v5 - 8);
  type metadata accessor for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>(0, &lazy cache variable for type metadata for FloatingPointFormatStyle<Double>.Percent, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E58]);
  v7 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<Date>();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of LinkDestination.Configuration(v2, v22, type metadata accessor for PlaybackButton.State);
  v23 = (*(v14 + 48))(v22, 2, v13);
  if (v23)
  {
    if (v23 == 1)
    {
      LOBYTE(v38) = 0;
      lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
      lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
      lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
      return AccessibilityValueStorage.init<A>(_:description:)();
    }

    else
    {
      outlined init with copy of LinkDestination.Configuration(v34, v19, type metadata accessor for ClosedRange<Date>);
      Text.init(progressInterval:countsDown:)();
      return AccessibilityValueStorage.init(description:)();
    }
  }

  else
  {
    (*(v14 + 32))(v16, v22, v13);
    ClosedRange<>.progress(at:countdown:)();
    v36 = v25;
    static Locale.autoupdatingCurrent.getter();
    v34 = lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.Percent.init(locale:)();
    v26 = v31;
    v27 = v32;
    v28 = v33;
    (*(v32 + 104))(v31, *MEMORY[0x1E69E7038], v33);
    MEMORY[0x18D0000D0](v26, 0x3FF0000000000000, 0, v7);
    (*(v27 + 8))(v26, v28);
    v29 = *(v30 + 8);
    v29(v9, v7);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent();
    BinaryFloatingPoint.formatted<A>(_:)();
    v29(v12, v7);
    v36 = v38;
    v37 = v39;
    lazy protocol witness table accessor for type String and conformance String();
    Text.init<A>(_:)();
    AccessibilityValueStorage.init(description:)();
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t AccessibilityPlaybackButtonModifier.descriptionValue(_:interval:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v33[1] = a3;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(a1 + 1);
  v16 = a1[16];
  outlined init with copy of LinkDestination.Configuration(v4, v13, type metadata accessor for PlaybackButton.State);
  v17 = (*(v8 + 48))(v13, 2, v7);
  if (v17)
  {
    if (v17 == 1)
    {
      LOBYTE(v40) = v14;
      v41 = v15;
      v42 = v16;
      type metadata accessor for ClosedRange<Date>();
      v40 = Text.DateStyle.timeRemainingString(lowerBound:upperBound:)(a2, a2 + *(v18 + 36));
      v41 = v19;
      lazy protocol witness table accessor for type String and conformance String();
      v20 = Text.init<A>(_:)();
    }

    else
    {
      type metadata accessor for ClosedRange<Date>();
      (*(v8 + 16))(v10, a2 + *(v30 + 36), v7);
      LOBYTE(v40) = v14;
      v41 = v15;
      v42 = v16;
      v20 = Text.init(_:style:)();
    }

    v25 = v20;
    v27 = v21;
    v29 = v22;
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    LOBYTE(v40) = v14;
    v41 = v15;
    v42 = v16;
    type metadata accessor for ClosedRange<Date>();
    v40 = Text.DateStyle.timeRemainingString(lowerBound:upperBound:)(v10, a2 + *(v23 + 36));
    v41 = v24;
    lazy protocol witness table accessor for type String and conformance String();
    v25 = Text.init<A>(_:)();
    v27 = v26;
    v29 = v28;
    (*(v8 + 8))(v10, v7);
  }

  LOBYTE(v40) = v14;
  v41 = v15;
  v42 = v16;
  static Text.DateStyle.timer.getter();
  v34[0] = v37;
  v35 = v38;
  v36 = v39;
  if (MEMORY[0x18D009E00](&v40, v34))
  {
    type metadata accessor for AccessibilityTextModifier();
    v31 = swift_allocObject();
    *(v31 + 16) = 1800;
    *(v31 + 18) = 1;
    *(v31 + 24) = 0u;
    *(v31 + 40) = 0u;
    Text.modified(with:)();

    outlined consume of Text.Storage(v25, v27, v29 & 1);
  }

  return AccessibilityValueStorage.init(description:)();
}

uint64_t AccessibilityLinkModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v33 = a3;
  v3 = *(a2 + 16);
  v31 = *(a2 + 24);
  v4 = type metadata accessor for AccessibilityLinkModifier.Configuration();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - v6;
  v30 = MEMORY[0x1E697E810];
  type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for LinkDestination.Configuration?, MEMORY[0x1E697E810]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - v20;
  (*(v5 + 16))(v7, v29, v4, v19);
  v22 = type metadata accessor for LinkDestination();
  outlined init with copy of LinkDestination.Configuration(&v7[*(v22 + 24)], v10, MEMORY[0x1E697E810]);
  outlined destroy of LinkDestination(v7, MEMORY[0x1E697E828]);
  v23 = type metadata accessor for LinkDestination.Configuration();
  (*(*(v23 - 8) + 56))(v10, 0, 1, v23);
  v24 = v3;
  v25 = v31;
  View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E6980090], v10, 1, v24, MEMORY[0x1E6980090], v31);
  outlined destroy of ClosedRange<Date>?(v10, &lazy cache variable for type metadata for LinkDestination.Configuration?, v30);
  v36 = 8;
  ModifiedContent<>.accessibilityAddTraits(_:)(&v36, v11);
  v26 = *(v12 + 8);
  v26(v14, v11);
  v34 = v25;
  v35 = &protocol witness table for AccessibilityAttachmentModifier;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v17, v11, WitnessTable);
  v26(v17, v11);
  static ViewBuilder.buildExpression<A>(_:)(v21, v11, WitnessTable);
  return (v26)(v21, v11);
}

void AccessibilityLinkModifier.Archived.body(content:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8[0] = a1;
  v8[2] = a2;
  v2 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v2);
  v3 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v8[1] = v8 - v7;
  View.accessibilityIgnoreViewResponders()();
}

uint64_t sub_18C473E50()
{
  *(v9 - 96) = v7;
  *(v9 - 88) = &protocol witness table for IgnoreViewRespondersModifier;
  *(v9 - 144) = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  View.accessibilityCombinedElement(options:ignoredTraits:)(8, v4, WitnessTable, v8);
  (*(v0 + 8))(v6, v4);
  *(v9 - 104) = 1;
  ModifiedContent<>.accessibilityAddTraits(_:)(v9 - 104, v1);
  v11 = *(v2 + 8);
  v11(v8, v1);
  *(v9 - 104) = 8;
  ModifiedContent<>.accessibilityRemoveTraits(_:)(v9 - 104, v1);
  v11(v5, v1);
  *(v9 - 120) = WitnessTable;
  *(v9 - 112) = &protocol witness table for AccessibilityAttachmentModifier;
  v12 = swift_getWitnessTable();
  v13 = *(v9 - 136);
  static ViewBuilder.buildExpression<A>(_:)(v3, v1, v12);
  v11(v3, v1);
  static ViewBuilder.buildExpression<A>(_:)(v13, v1, v12);
  return (v11)(v13, v1);
}

uint64_t AccessibilityToggleModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v53 = a2;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v42 - v15;
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18], MEMORY[0x1E69808E8]);
  v49 = v16;
  v17 = *(a1 + 24);
  *&v77 = v4;
  *(&v77 + 1) = &type metadata for ToggleStyleConfiguration.Label;
  v43 = v4;
  *v78 = v17;
  *&v78[8] = &protocol witness table for ToggleStyleConfiguration.Label;
  v47 = type metadata accessor for AccessibilityToggleModifier.RepresentationModifier();
  v48 = type metadata accessor for ModifiedContent();
  v18 = type metadata accessor for StaticIf();
  v19 = *(v18 - 8);
  v51 = v18;
  v52 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v46 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v50 = &v42 - v22;
  v23 = v2[3];
  v73 = v2[2];
  v74 = v23;
  v24 = v2[5];
  v75 = v2[4];
  v76 = v24;
  v25 = v2[1];
  v71 = *v2;
  v72 = v25;
  View.accessibilityCombinedElement(options:ignoredTraits:)(12, v4, v17, v8);
  *&v78[16] = v73;
  v79 = v74;
  v80 = v75;
  v81 = v76;
  v77 = v71;
  *v78 = v72;
  v67 = v73;
  v68 = v74;
  v69 = v75;
  v70 = v76;
  v65 = v71;
  v66 = v72;
  v64 = ToggleStyleConfiguration.accessibilityActions.getter();
  v26 = lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  v27 = lazy protocol witness table accessor for type [AnyAccessibilityAction] and conformance [A]();
  ModifiedContent<>.update<A>(_:combining:isEnabled:)(&type metadata for AccessibilityProperties.ActionsKey, &v64, 1, v5, &type metadata for AccessibilityProperties.ActionsKey, v26, v27, v11);

  v28 = *(v6 + 8);
  v28(v8, v5);
  *&v65 = 1;
  v29 = v44;
  ModifiedContent<>.accessibilityAddTraits(_:)(&v65, v5);
  v28(v11, v5);
  v42 = v6 + 8;
  v65 = *&v78[8];
  LOBYTE(v66) = v78[24];
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for Binding<ToggleState>, MEMORY[0x1E697DD58], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v64);
  if (v64)
  {
    v30 = 2 * (v64 != 1);
  }

  else
  {
    v30 = 1;
  }

  LOBYTE(v64) = v30;
  v65 = 0u;
  v66 = 0u;
  *&v67 = 0;
  _s7SwiftUI21AnyAccessibilityValueVSgWOhTm_0(&v65, &lazy cache variable for type metadata for AnyAccessibilityValue?, MEMORY[0x1E697FBB0]);
  lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
  lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
  lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
  AnyAccessibilityValue.init<A>(_:)();
  *(&v67 + 1) = 0;
  v31 = v45;
  ModifiedContent<>.accessibilityValue(_:)(v5, v45);
  v28(v29, v5);
  outlined destroy of AccessibilityValueStorage(&v65);
  v54 = v43;
  v55 = v17;
  v56 = &v71;
  v62 = v17;
  v63 = &protocol witness table for AccessibilityAttachmentModifier;
  WitnessTable = swift_getWitnessTable();
  v33 = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>();
  v34 = swift_getWitnessTable();
  v60 = WitnessTable;
  v61 = v34;
  v41 = swift_getWitnessTable();
  v35 = v46;
  View.staticIf<A, B>(_:then:)();
  v28(v31, v5);
  v57 = v33;
  v58 = v41;
  v59 = WitnessTable;
  v36 = v51;
  v37 = swift_getWitnessTable();
  v38 = v50;
  static ViewBuilder.buildExpression<A>(_:)(v35, v36, v37);
  v39 = *(v52 + 8);
  v39(v35, v36);
  static ViewBuilder.buildExpression<A>(_:)(v38, v36, v37);
  return (v39)(v38, v36);
}

uint64_t closure #1 in AccessibilityToggleModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a1;
  v35 = a5;
  v45.n128_u64[0] = a3;
  v45.n128_u64[1] = &type metadata for ToggleStyleConfiguration.Label;
  v30 = a4;
  *&v46 = a4;
  *(&v46 + 1) = &protocol witness table for ToggleStyleConfiguration.Label;
  v31 = type metadata accessor for ModifiedContent();
  v32 = type metadata accessor for AccessibilityToggleModifier.RepresentationModifier();
  v7 = type metadata accessor for ModifiedContent();
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v29 = &v28 - v11;
  v12 = *(a2 + 64);
  v45 = *(a2 + 48);
  v46 = v12;
  v47 = *(a2 + 80);
  v13 = *(&v12 + 1);
  if (*(&v12 + 1))
  {
    v14 = v45.n128_u64[1];
    v15 = v45.n128_u64[0];
    v16 = *(&v47 + 1);
    v17 = v47;
    v18 = v46 & 1;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v18 = 0;
    v17 = 0;
    v16 = 0;
  }

  (off_1EFFA4730->initializeWithTake)(v44);
  *&v41 = a3;
  *(&v41 + 1) = &type metadata for ToggleStyleConfiguration.Label;
  v19 = v30;
  *&v42 = v30;
  *(&v42 + 1) = &protocol witness table for ToggleStyleConfiguration.Label;
  v20 = (v44 + *(type metadata accessor for AccessibilityToggleModifier.RepresentationModifier() + 52));
  *v20 = v15;
  v20[1] = v14;
  v20[2] = v18;
  v20[3] = v13;
  v20[4] = v17;
  v20[5] = v16;
  v41 = v44[0];
  v42 = v44[1];
  v43 = v44[2];
  outlined init with copy of ToggleStyleConfiguration.Effect(&v45, v40);
  v38 = v19;
  v39 = &protocol witness table for AccessibilityAttachmentModifier;
  v21 = v31;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D00A570](&v41, v21, v32, WitnessTable);
  outlined consume of ToggleStyleConfiguration.Effect(v41, *(&v41 + 1), v42, *(&v42 + 1));
  v23 = swift_getWitnessTable();
  v36 = WitnessTable;
  v37 = v23;
  v24 = swift_getWitnessTable();
  v25 = v29;
  static ViewBuilder.buildExpression<A>(_:)(v9, v7, v24);
  v26 = *(v34 + 8);
  v26(v9, v7);
  static ViewBuilder.buildExpression<A>(_:)(v25, v7, v24);
  return (v26)(v25, v7);
}

uint64_t AccessibilityToggleModifier.RepresentationModifier.body(content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = *(a2 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v30 = type metadata accessor for _ViewModifier_Content();
  v8 = a2[3];
  v29 = a2[5];
  v35 = MEMORY[0x1E69E73E0];
  v36 = v8;
  v9 = v8;
  v37 = MEMORY[0x1E6982070];
  v38 = v29;
  type metadata accessor for AccessibilityProxyTransformModifier();
  v10 = type metadata accessor for ModifiedContent();
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v28 - v15;
  (*(v5 + 16))(v7, v3, a2, v14);
  v17 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *&v19 = a2[2];
  *(&v19 + 1) = v9;
  v20 = v9;
  *&v21 = a2[4];
  v22 = v29;
  *(&v21 + 1) = v29;
  *(v18 + 16) = v19;
  *(v18 + 32) = v21;
  (*(v5 + 32))(v18 + v17, v7, a2);
  v23 = v30;
  WitnessTable = swift_getWitnessTable();
  View.accessibilityAttachment<A>(content:_:)(v28[1], partial apply for closure #1 in AccessibilityToggleModifier.RepresentationModifier.body(content:), v18, v23, v20, WitnessTable, v22, v12);

  v33 = WitnessTable;
  v34 = &protocol witness table for AccessibilityProxyTransformModifier<A, B>;
  v25 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v12, v10, v25);
  v26 = *(v31 + 8);
  v26(v12, v10);
  static ViewBuilder.buildExpression<A>(_:)(v16, v10, v25);
  return (v26)(v16, v10);
}

uint64_t closure #1 in AccessibilityToggleModifier.RepresentationModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v34 = a3;
  *(&v34 + 1) = a4;
  v35 = a5;
  v36 = a6;
  result = type metadata accessor for AccessibilityToggleModifier.RepresentationModifier();
  v9 = a2 + *(result + 52);
  v10 = *(v9 + 24);
  if (v10)
  {
    v11 = *(v9 + 40);
    v29 = *(v9 + 32);
    v31 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *v9;
    outlined copy of Environment<AppIntentExecutor?>.Content(*v9, v31, v12 & 1);
    v14 = v10;
    v15 = v11;

    AccessibilityAttachment.Tree.attachment.getter(&v34);
    outlined destroy of AccessibilityAttachment.Tree(a1);
    if (v37)
    {
      outlined init with copy of AccessibilityProperties(&v34, v38);
      outlined destroy of AccessibilityAttachment(&v34);
    }

    else
    {
      _s7SwiftUI21AnyAccessibilityValueVSgWOhTm_0(&v34, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
      memset(v38, 0, 288);
    }

    outlined init with copy of AppIntentAction?(v38, &v34, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
    if (v37)
    {
      v16 = v36;

      outlined destroy of AccessibilityProperties(&v34);
      if (v16)
      {
        if (*(v16 + 16))
        {
          v17 = *(v16 + 56);
          v18 = *(v16 + 32);
          v19 = *(v16 + 40);
          v20 = *(v16 + 48);
          outlined copy of Text.Storage(v18, v19, *(v16 + 48));
          v28 = v17;

          goto LABEL_12;
        }
      }
    }

    else
    {
      _s7SwiftUI21AnyAccessibilityValueVSgWOhTm_0(&v34, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v28 = 0;
LABEL_12:
    outlined init with copy of AppIntentAction?(v38, &v34, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
    if (v37)
    {
      v21 = AccessibilityProperties.images.getter();
      outlined destroy of AccessibilityProperties(&v34);
      if (*(v21 + 16))
      {
        v22 = *(v21 + 32);

        v23 = v22;

LABEL_18:
        type metadata accessor for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>(0, &lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>, lazy protocol witness table accessor for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler, &type metadata for AccessibilityAppIntentHandler, type metadata accessor for AnyAccessibilityAction.ConcreteBase);
        v32[3] = v24;
        v32[4] = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
        v25 = swift_allocObject();
        v32[0] = v25;
        *(v25 + 16) = 0u;
        *(v25 + 32) = 0u;
        *(v25 + 48) = v13;
        *(v25 + 56) = v31;
        v26 = v12 & 1;
        *(v25 + 64) = v26;
        *(v25 + 72) = v14;
        *(v25 + 80) = v29;
        *(v25 + 88) = v15;
        *(v25 + 96) = 0;
        *(v25 + 104) = 0;
        *(v25 + 112) = 0;
        *(v25 + 120) = 2;
        *(v25 + 128) = v18;
        *(v25 + 136) = v19;
        *(v25 + 144) = v20;
        *(v25 + 152) = v28;
        *(v25 + 160) = v23;
        *(v25 + 168) = 1;
        v33 = 1;
        type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_18CD63400;
        outlined init with copy of AnyAccessibilityAction(v32, v27 + 32);
        outlined copy of Environment<AppIntentExecutor?>.Content(v13, v31, v26);
        v30 = v14;

        outlined copy of Text?(v18, v19, v20, v28);
        lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();

        AccessibilityProperties.init<A>(_:_:)();
        AccessibilityAttachment.init(properties:)();

        outlined consume of Text?(v18, v19, v20, v28);
        outlined consume of Environment<AppIntentExecutor?>.Content(v13, v31, v26);

        _s7SwiftUI21AnyAccessibilityValueVSgWOhTm_0(v38, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
        result = outlined destroy of AnyAccessibilityAction(v32);
        *(a1 + 296) = 0;
        return result;
      }
    }

    else
    {
      _s7SwiftUI21AnyAccessibilityValueVSgWOhTm_0(&v34, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
    }

    v23 = 0;
    goto LABEL_18;
  }

  return result;
}

uint64_t closure #1 in ToggleStyleConfiguration.accessibilityActions.getter@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v3);
  result = dispatch thunk of AnyLocation.set(_:transaction:)();
  *a1 = 2;
  return result;
}

uint64_t AccessibilityImageModifier.scrapeableContent(environment:idiom:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = swift_allocObject();
  AccessibilityImageConfiguration.attachment.getter();
  outlined init with copy of AccessibilityProperties(v9, v7 + 16);
  outlined destroy of AccessibilityAttachment(v9);
  *(v7 + 304) = v5;
  *(v7 + 312) = v6;
  *(v7 + 320) = *a2;
  *a3 = v7 | 0x3000000000000000;
}

double static AccessibilityImageModifier.makeAccessibilityViewModifier(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, double *a4@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a2[1];
  v16 = *a2;
  v17 = v6;
  v18 = a2[2];
  v7 = *(a2 + 6);
  v8 = *(a2 + 14);
  v21 = *(a2 + 60);
  v22 = *(a2 + 76);
  v19 = v7;
  v20 = v8;
  a3(&v14);
  *&v16 = v7;
  DWORD2(v16) = v8;
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
  {
    *&v16 = v7;
    DWORD2(v16) = v8;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      *&v16 = v14;
      DWORD2(v16) = LODWORD(v15);
      v9 = PreferencesOutputs.subscript.getter();
      if ((v9 & 0x100000000) != 0)
      {
        v10 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v10 = v9;
      }

      KeyPath = swift_getKeyPath();
      LODWORD(v16) = v5;
      *(&v16 + 1) = partial apply for specialized closure #1 in Attribute.subscript.getter;
      *&v17 = KeyPath;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      type metadata accessor for RelationshipModifier<String>(0, &lazy cache variable for type metadata for Map<AccessibilityImageModifier, AccessibilityAttachment>, &type metadata for AccessibilityImageModifier, MEMORY[0x1E697FFF0], MEMORY[0x1E698D398]);
      lazy protocol witness table accessor for type Map<AccessibilityImageModifier, AccessibilityAttachment> and conformance Map<A, B>();

      v12 = Attribute.init<A>(body:value:flags:update:)();

      *&v16 = __PAIR64__(v12, v10);
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type AccessibilityAttachment.DeferredTransform and conformance AccessibilityAttachment.DeferredTransform();
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v16) = 0;
      PreferencesOutputs.subscript.setter();
    }
  }

  *a4 = v14;
  result = v15;
  a4[1] = v15;
  return result;
}

BOOL protocol witness for AccessibilityViewModifier.willCreateNode(for:) in conformance AccessibilityImageModifier(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

uint64_t AccessibilityStaticTextModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a1;
  v51 = a3;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v42 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v49 = &v42 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - v20;
  v21 = *v3;
  v43 = *(v3 + 8);
  v44 = v21;
  v45 = *(v3 + 24);
  v22 = *(v3 + 144);
  v81 = *(v3 + 128);
  v82 = v22;
  v83 = *(v3 + 160);
  v84 = *(v3 + 176);
  v23 = *(v3 + 80);
  v77 = *(v3 + 64);
  v78 = v23;
  v24 = *(v3 + 112);
  v79 = *(v3 + 96);
  v80 = v24;
  v25 = *(v3 + 48);
  v75 = *(v3 + 32);
  v76 = v25;
  v26 = *(v3 + 16);
  v74 = *(v3 + 177);
  v27 = *(v3 + 178);
  AccessibilityProperties.init(reserving:)();
  v28 = v5;
  v29 = *(a2 + 24);
  View.accessibility(_:)(&v64, v28, v29);
  outlined destroy of AccessibilityProperties(&v64);
  if (v27)
  {
    v30 = 8;
  }

  else
  {
    v30 = 1;
  }

  LODWORD(v64) = v30;
  DWORD1(v64) = v30;
  ModifiedContent<>.accessibilityVisibility(_:)(v6, v12);
  v31 = *(v7 + 8);
  v31(v9, v6);
  v32 = v46;
  ModifiedContent<>.accessibilityLabel(_:)(v44, v43, v26, v45, v6, v46);
  v31(v12, v6);
  v86[6] = v81;
  v86[7] = v82;
  v86[8] = v83;
  v86[2] = v77;
  v86[3] = v78;
  v86[4] = v79;
  v86[5] = v80;
  v86[0] = v75;
  v86[1] = v76;
  v70 = v81;
  v71 = v82;
  v72 = v83;
  v66 = v77;
  v67 = v78;
  v68 = v79;
  v69 = v80;
  v87 = v84;
  v73 = v84;
  v64 = v75;
  v65 = v76;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(&v64, v33, v34, v35);
  v60 = v70;
  v61 = v71;
  v62 = v72;
  v63 = v73;
  v56 = v66;
  v57 = v67;
  v58 = v68;
  v59 = v69;
  v54 = v64;
  v55 = v65;
  outlined init with copy of TextLayoutProperties(v86, &v85);
  v36 = v48;
  ModifiedContent<>.accessibilityTextLayoutProperties(_:)(v6, v48);
  v70 = v60;
  v71 = v61;
  v72 = v62;
  v73 = v63;
  v66 = v56;
  v67 = v57;
  v68 = v58;
  v69 = v59;
  v64 = v54;
  v65 = v55;
  outlined destroy of AccessibilityTextLayoutProperties(&v64);
  v31(v32, v6);
  v37 = 256;
  if (v74)
  {
    v37 = 1280;
  }

  *&v86[0] = v37;
  v38 = v49;
  ModifiedContent<>.accessibilityAddTraits(_:)(v86, v6);
  v31(v36, v6);
  v52 = v29;
  v53 = &protocol witness table for AccessibilityAttachmentModifier;
  WitnessTable = swift_getWitnessTable();
  v40 = v50;
  static ViewBuilder.buildExpression<A>(_:)(v38, v6, WitnessTable);
  v31(v38, v6);
  static ViewBuilder.buildExpression<A>(_:)(v40, v6, WitnessTable);
  return (v31)(v40, v6);
}

int *AccessibilityAdjustableModifier.Configuration.init(value:continuous:onIncrement:onDecrement:onSet:onEditingChanged:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = type metadata accessor for Optional();
  (*(*(v17 - 8) + 32))(a9, a1, v17);
  result = type metadata accessor for AccessibilityAdjustableModifier.Configuration();
  *(a9 + result[17]) = a2;
  v19 = (a9 + result[18]);
  *v19 = a3;
  v19[1] = a4;
  v20 = (a9 + result[19]);
  *v20 = a5;
  v20[1] = a6;
  v21 = (a9 + result[20]);
  *v21 = a7;
  v21[1] = a8;
  v22 = (a9 + result[21]);
  *v22 = a10;
  v22[1] = a11;
  return result;
}

uint64_t AccessibilityAdjustableModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v27 = a3;
  v28 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v9[5];
  v24 = v9[4];
  v14 = v9[6];
  v13 = v9[7];
  v38[0] = v11;
  v38[1] = v10;
  v25 = v10;
  v38[2] = v24;
  v38[3] = v12;
  v38[4] = v14;
  v38[5] = v13;
  v15 = *(type metadata accessor for AccessibilityAdjustableModifier.Configuration() + 68);
  v26 = v4;
  LOBYTE(v38[0]) = *(v4 + v15);
  (*(v6 + 16))(v8, v4, a2);
  v16 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v11;
  *(v17 + 3) = v10;
  v18 = v24;
  *(v17 + 4) = v24;
  *(v17 + 5) = v12;
  *(v17 + 6) = v14;
  *(v17 + 7) = v13;
  (*(v6 + 32))(&v17[v16], v8, a2);
  v19 = lazy protocol witness table accessor for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction();
  v20 = v27;
  View.accessibilityAction<A>(_:label:image:_:)(v38, 0, 0, 0, 0, 0, partial apply for closure #1 in AccessibilityAdjustableModifier.body(content:), v17, v27, v11, &type metadata for AccessibilityAdjustableAction, v18, v19);

  v30 = v11;
  v31 = v25;
  v32 = v18;
  v33 = v12;
  v34 = v14;
  v35 = v13;
  v36 = v20;
  v37 = v26;
  type metadata accessor for Optional();
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in AccessibilityAdjustableModifier.body(content:), v29, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v21, v38);
}

uint64_t closure #1 in AccessibilityAdjustableModifier.body(content:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for AccessibilityAdjustableModifier.Configuration();
  v6 = (*(a2 + v5[21]))(1);
  if (v4)
  {
    v7 = *(a2 + v5[19]);
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = *(a2 + v5[18]);
  if (v7)
  {
LABEL_5:
    v7(v6);
  }

LABEL_6:
  *a3 = 2;
  v8 = type metadata accessor for AccessibilityAdjustableModifier.Configuration();
  return (*(a2 + *(v8 + 84)))(0);
}

uint64_t closure #2 in AccessibilityAdjustableModifier.body(content:)(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v51 = a6;
  v48 = a8;
  v50 = a3;
  v45 = a2;
  v46 = a4;
  v43 = a1;
  v53 = a9;
  v52[0] = a4;
  v52[1] = a5;
  v52[2] = a6;
  v52[3] = a7;
  v39 = a7;
  v52[4] = a8;
  v52[5] = a9;
  v49 = type metadata accessor for AccessibilityAdjustableModifier();
  v44 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v38 - v11;
  v12 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v38 - v13;
  v15 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  v40 = &v38 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v41 = v24;
  v42 = &v38 - v23;
  v25 = v24;
  (*(v24 + 16))(v17, a2, v15, v22);
  v26 = *(a5 - 8);
  (*(v26 + 16))(v14, v43, a5);
  (*(v26 + 56))(v14, 0, 1, a5);
  v27 = v48;
  AccessibilityValueStorage.init<A>(_:description:)();
  ModifiedContent<>.accessibilityValue(_:)(v15, v20);
  outlined destroy of AccessibilityValueStorage(v52);
  v43 = *(v25 + 8);
  v43(v17, v15);
  v28 = v44;
  v29 = v47;
  v30 = v49;
  (*(v44 + 16))(v47, v50, v49);
  v31 = (*(v28 + 80) + 64) & ~*(v28 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = v46;
  *(v32 + 3) = a5;
  v33 = v39;
  *(v32 + 4) = v51;
  *(v32 + 5) = v33;
  v34 = v53;
  *(v32 + 6) = v27;
  *(v32 + 7) = v34;
  (*(v28 + 32))(&v32[v31], v29, v30);
  v35 = v42;
  v36 = v40;
  ModifiedContent<>.accessibilitySetValueAction(_:)(partial apply for closure #1 in closure #2 in AccessibilityAdjustableModifier.body(content:), v32, v15, v42);

  v43(v36, v15);
  return (*(v41 + 40))(v45, v35, v15);
}

uint64_t closure #1 in closure #2 in AccessibilityAdjustableModifier.body(content:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a1;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v16 = type metadata accessor for AccessibilityAdjustableModifier.Configuration();
  (*(a2 + *(v16 + 84)))(1);
  v17 = *(a2 + *(v16 + 80));
  v20 = v15;
  v17(&v20);
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v18 = type metadata accessor for AccessibilityAdjustableModifier.Configuration();
  return (*(a2 + *(v18 + 84)))(0);
}

uint64_t closure #2 in AccessibilitySliderModifier.init(_:value:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v6[18] = *a1;
  v6[19] = v2;
  v6[20] = v3;
  outlined init with copy of SliderStyleConfiguration(a1, v6);
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for Binding<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v6);
  v4 = v6[0] + *(a1 + 72);
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  v6[0] = v4;
  dispatch thunk of AnyLocation.set(_:transaction:)();
  return outlined destroy of SliderStyleConfiguration(a1);
}

uint64_t closure #3 in AccessibilitySliderModifier.init(_:value:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v6[18] = *a1;
  v6[19] = v2;
  v6[20] = v3;
  outlined init with copy of SliderStyleConfiguration(a1, v6);
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for Binding<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v6);
  v4 = v6[0] - *(a1 + 72);
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  v6[0] = v4;
  dispatch thunk of AnyLocation.set(_:transaction:)();
  return outlined destroy of SliderStyleConfiguration(a1);
}

void closure #4 in AccessibilitySliderModifier.init(_:value:)(double *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (a2)
  {
    v11 = *a1;
    v34 = *&a2;
    v35 = a3;
    v36 = a4;
    v37 = a5;
    v12 = a5;
    v13 = a2;
    v14 = a3;
    v15 = a4;
    v16 = AccessibilityBoundedNumber.minValue.getter();
    if (v16 && (v17 = v16, [v16 doubleValue], v19 = v18, v17, v34 = *&v13, v35 = a3, v36 = a4, v37 = a5, (v20 = AccessibilityBoundedNumber.maxValue.getter()) != 0))
    {
      v21 = v20;
      [v20 doubleValue];
      v23 = v22;

      v34 = *&v13;
      v35 = a3;
      v36 = a4;
      v37 = a5;
      v24 = AccessibilityBoundedNumber.step.getter();
      if (v24)
      {
        v25 = v24;
        v38 = v11;
        v26 = AccessibilityNumber.value.getter();
        [v26 doubleValue];
        v28 = v27;

        [v25 doubleValue];
        v30 = v29;

        if (v30 == 1.0)
        {
          v31 = round(v28);
        }

        else
        {
          v31 = v30 * round(v28 / v30);
        }
      }

      else
      {
        v34 = v11;
        v32 = AccessibilityNumber.value.getter();
        [v32 doubleValue];
        v31 = v33;
      }

      v38 = (v31 - v19) / (v23 - v19);
      outlined init with copy of SliderStyleConfiguration(a6, &v34);
      dispatch thunk of AnyLocation.set(_:transaction:)();
      outlined consume of AccessibilityBoundedNumber?(a2, a3, a4, a5);
      outlined destroy of SliderStyleConfiguration(a6);
    }

    else
    {
      outlined consume of AccessibilityBoundedNumber?(a2, a3, a4, a5);
    }
  }
}

uint64_t AccessibilityStepperModifier.init(_:value:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a1[1];
  v27 = *a1;
  v7 = a1[3];
  v8 = a1[4];
  v24 = a1[5];
  v25 = a1[2];
  v9 = a1[6];
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  if (*a2)
  {
    v14 = *(a2 + 8);
  }

  else
  {
    v14 = 0;
  }

  v30 = *(a2 + 8);
  if (*a2)
  {
    v15 = *(a2 + 16);
  }

  else
  {
    v15 = 0;
  }

  if (*a2)
  {
    v16 = *(a2 + 24);
  }

  else
  {
    v16 = 0;
  }

  *&v35 = *a2;
  *(&v35 + 1) = v14;
  *&v36 = v15;
  *(&v36 + 1) = v16;
  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = v13;
  v17[6] = v27;
  v17[7] = v6;
  v17[8] = v25;
  v17[9] = v7;
  v17[10] = v8;
  v17[11] = v24;
  v17[12] = v9;
  v26 = lazy protocol witness table accessor for type AccessibilityStepperValue and conformance AccessibilityStepperValue();
  *&v23 = lazy protocol witness table accessor for type AccessibilityStepperValue and conformance AccessibilityStepperValue();
  *(&v23 + 1) = lazy protocol witness table accessor for type AccessibilityStepperValue and conformance AccessibilityStepperValue();
  AccessibilityAdjustableModifier.Configuration.init(value:continuous:onIncrement:onDecrement:onSet:onEditingChanged:)(&v35, 0, v6, v25, v7, v8, partial apply for closure #2 in AccessibilityStepperModifier.init(_:value:), v17, v33, v24, v9);
  v31[4] = v33[4];
  v31[5] = v33[5];
  v32 = v34;
  v31[0] = v33[0];
  v31[1] = v33[1];
  v31[2] = v33[2];
  v31[3] = v33[3];
  *&v35 = a3;
  *(&v35 + 1) = MEMORY[0x1E69804B8];
  *&v36 = a4;
  *(&v36 + 1) = v26;
  v37 = v23;
  v18 = type metadata accessor for AccessibilityAdjustableModifier.Configuration();
  (*(*(v18 - 8) + 32))(&v35, v31, v18);
  v19 = v40;
  *(a5 + 64) = v39;
  *(a5 + 80) = v19;
  *(a5 + 96) = v41;
  v20 = v36;
  *a5 = v35;
  *(a5 + 16) = v20;
  v21 = v38;
  *(a5 + 32) = v37;
  *(a5 + 48) = v21;
  outlined copy of AccessibilityBoundedNumber?(v10, v30, v12, v13);
  outlined copy of AppIntentExecutor?(v6);
  outlined copy of AppIntentExecutor?(v7);
}

void closure #2 in AccessibilityStepperModifier.init(_:value:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (!a2)
  {
    return;
  }

  v11 = a5;
  a2;
  v12 = a3;
  v13 = a4;
  v14 = AccessibilityNumber.value.getter();
  [v14 doubleValue];
  v16 = v15;

  v17 = AccessibilityBoundedNumber.value.getter();
  [v17 doubleValue];
  v19 = v18;

  v20 = v16 - v19;
  v21 = AccessibilityBoundedNumber.step.getter();
  if (v21)
  {
    v22 = v21;
    [v21 doubleValue];
    v24 = v23;
  }

  else
  {
    v24 = 1.0;
  }

  v25 = round(v20 / v24);
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  v26 = fabs(v25);
  if (v26 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    return;
  }

  if (v26 >= 1)
  {
    v27 = v26 + 1;
    while (v20 <= 0.0)
    {
      v28 = *(a6 + 24);
      if (v28)
      {
        goto LABEL_11;
      }

LABEL_12:
      if (--v27 <= 1)
      {
        goto LABEL_16;
      }
    }

    v28 = *(a6 + 8);
    if (!v28)
    {
      goto LABEL_12;
    }

LABEL_11:
    v28();
    goto LABEL_12;
  }

LABEL_16:

  outlined consume of AccessibilityBoundedNumber?(a2, a3, a4, a5);
}

uint64_t AccessibilityStepperModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v32 = a3;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for ModifiedContent();
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = v3[3];
  v13 = v3[5];
  v45 = v3[4];
  v46 = v13;
  v14 = v3[1];
  v42[0] = *v3;
  v42[1] = v14;
  v15 = v3[3];
  v17 = *v3;
  v16 = v3[1];
  v43 = v3[2];
  v44 = v15;
  v18 = v3[5];
  v39 = v45;
  v40 = v18;
  v35 = v17;
  v36 = v16;
  v47 = *(v3 + 12);
  v41 = *(v3 + 12);
  v37 = v43;
  v38 = v12;
  v19 = *(a2 + 24);
  v20 = lazy protocol witness table accessor for type AccessibilityStepperValue and conformance AccessibilityStepperValue();
  v21 = lazy protocol witness table accessor for type AccessibilityStepperValue and conformance AccessibilityStepperValue();
  v22 = lazy protocol witness table accessor for type AccessibilityStepperValue and conformance AccessibilityStepperValue();
  *&v48 = v5;
  *(&v48 + 1) = MEMORY[0x1E69804B8];
  *&v49 = v19;
  *(&v49 + 1) = v20;
  *&v50 = v21;
  *(&v50 + 1) = v22;
  v23 = type metadata accessor for AccessibilityAdjustableModifier();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v48, v42, v23);
  WitnessTable = swift_getWitnessTable();
  v33 = v19;
  v34 = &protocol witness table for AccessibilityAttachmentModifier;
  v26 = swift_getWitnessTable();
  (*(WitnessTable + 40))(v30, v23, WitnessTable);
  v52 = v39;
  v53 = v40;
  v54 = v41;
  v48 = v35;
  v49 = v36;
  v50 = v37;
  v51 = v38;
  (*(v24 + 8))(&v48, v23);
  static ViewBuilder.buildExpression<A>(_:)(v8, v6, v26);
  v27 = *(v31 + 8);
  v27(v8, v6);
  static ViewBuilder.buildExpression<A>(_:)(v11, v6, v26);
  return (v27)(v11, v6);
}

uint64_t AccessibilityDisclosureModifier.init(_:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v5);
  v3 = v5;

  return v3 | 0x100u;
}

uint64_t AccessibilityDisclosureModifier.body(content:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  v19 = a2 & 1;
  v14 = lazy protocol witness table accessor for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue();
  lazy protocol witness table accessor for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue();
  lazy protocol witness table accessor for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue();
  View.accessibilityValue<A>(_:description:)(&v19, 0, 0, 0, 0, a3, MEMORY[0x1E6980878], a4, v10, v14);
  v18[1] = a4;
  v18[2] = &protocol witness table for AccessibilityAttachmentModifier;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v10, v7, WitnessTable);
  v16 = *(v8 + 8);
  v16(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)(v13, v7, WitnessTable);
  return (v16)(v13, v7);
}

uint64_t AccessibilityDisclosureModifier.List.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v28 = a3;
  v26 = a1;
  v27 = a2;
  v29 = a6;
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  View.accessibilityCombinedElement(options:ignoredTraits:)(0, a4, a5, v11);
  *&v32 = 3;
  ModifiedContent<>.accessibilityAddTraits(_:)(&v32, v8);
  v21 = *(v9 + 8);
  v21(v11, v8);
  v32 = 0u;
  v33 = 0u;
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  v23 = v27;
  *(v22 + 32) = v26;
  *(v22 + 40) = v23;
  *(v22 + 48) = v28;

  ModifiedContent<>.accessibilityAction(kind:_:)(&v32, partial apply for closure #1 in AccessibilityDisclosureModifier.List.body(content:), v22, v8);

  outlined consume of AccessibilityActionKind.ActionKind(v32, *(&v32 + 1), v33, *(&v33 + 1));
  v21(v14, v8);
  v30 = a5;
  v31 = &protocol witness table for AccessibilityAttachmentModifier;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v17, v8, WitnessTable);
  v21(v17, v8);
  static ViewBuilder.buildExpression<A>(_:)(v20, v8, WitnessTable);
  return (v21)(v20, v8);
}

uint64_t closure #1 in AccessibilityDisclosureModifier.List.body(content:)@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v3);
  result = dispatch thunk of AnyLocation.set(_:transaction:)();
  *a1 = 3;
  return result;
}

void AccessibilityGaugeModifier.body(content:)()
{
  v0 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v0);
  v1 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  View.accessibilityIgnoreViewResponders()();
}

uint64_t sub_18C4774AC()
{
  *(v9 - 112) = v8;
  *(v9 - 104) = &protocol witness table for IgnoreViewRespondersModifier;
  *(v9 - 184) = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  View.accessibilityCombinedElement(options:ignoredTraits:)(0, v4, WitnessTable, v5);
  (*(v7 + 8))(v6, v4);
  *(v9 - 120) = v10;
  *(v9 - 136) = 0;
  *(v9 - 128) = 0;
  *(v9 - 152) = 0x3FF0000000000000;
  *(v9 - 144) = 0;
  ModifiedContent<>.accessibilityValue<A>(_:from:to:description:)(v9 - 120, v9 - 136, v9 - 152, 0, 0, 0, 0, v1, v3, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63F0]);
  v12 = *(v0 + 8);
  v12(v5, v1);
  *(v9 - 168) = WitnessTable;
  *(v9 - 160) = &protocol witness table for AccessibilityAttachmentModifier;
  v13 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v3, v1, v13);
  v12(v3, v1);
  static ViewBuilder.buildExpression<A>(_:)(v2, v1, v13);
  return (v12)(v2, v1);
}

uint64_t AccessibilityGroupBoxLabelModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v26 = a1;
  v27 = a4;
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  type metadata accessor for RelationshipModifier<String>(255, &lazy cache variable for type metadata for RelationshipModifier<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], type metadata accessor for RelationshipModifier);
  v13 = type metadata accessor for ModifiedContent();
  v25 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  View.accessibilityCombinedElement(options:ignoredTraits:)(0, a2, a3, v9);
  v32[0] = 2;
  ModifiedContent<>.accessibilityAddTraits(_:)(v32, v6);
  v19 = *(v7 + 8);
  v19(v9, v6);
  v32[0] = 0x786F4270756F7267;
  v32[1] = 0xE800000000000000;
  v30 = a3;
  v31 = &protocol witness table for AccessibilityAttachmentModifier;
  WitnessTable = swift_getWitnessTable();
  View.accessibilityLabeledPair<A>(role:id:in:)(0, v32, v26, v6, MEMORY[0x1E69E6158], WitnessTable);
  v19(v12, v6);
  v28 = WitnessTable;
  v29 = &protocol witness table for RelationshipModifier<A>;
  v21 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v15, v13, v21);
  v22 = *(v25 + 8);
  v22(v15, v13);
  static ViewBuilder.buildExpression<A>(_:)(v18, v13, v21);
  return (v22)(v18, v13);
}

uint64_t AccessibilityGroupBoxContentModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v18[1] = a4;
  v7 = MEMORY[0x1E69E6158];
  type metadata accessor for RelationshipModifier<String>(255, &lazy cache variable for type metadata for RelationshipModifier<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], type metadata accessor for RelationshipModifier);
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v18 - v13;
  v19[0] = 0x786F4270756F7267;
  v19[1] = 0xE800000000000000;
  View.accessibilityLabeledPair<A>(role:id:in:)(1, v19, a1, a2, v7, a3);
  v18[2] = a3;
  v18[3] = &protocol witness table for RelationshipModifier<A>;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v11, v8, WitnessTable);
  v16 = *(v9 + 8);
  v16(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)(v14, v8, WitnessTable);
  return (v16)(v14, v8);
}

uint64_t AccessibilitySectionHeaderModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[1] = a4;
  type metadata accessor for AccessibilitySectionHeaderModifier.ChildModifier();
  type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for StaticIf();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  v19[10] = a2;
  v19[11] = a3;
  v19[12] = a1;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a1;
  v14 = lazy protocol witness table accessor for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling();
  v19[16] = a3;
  v19[17] = &protocol witness table for AccessibilitySectionHeaderModifier<A>.ChildModifier;
  WitnessTable = swift_getWitnessTable();
  StaticIf<>.init(_:then:else:)();
  v19[13] = v14;
  v19[14] = a3;
  v19[15] = WitnessTable;
  v15 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v10, v7, v15);
  v16 = *(v8 + 8);
  v16(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)(v13, v7, v15);
  return (v16)(v13, v7);
}

uint64_t closure #1 in AccessibilitySectionHeaderModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v8, v9, v10);
  static ViewBuilder.buildExpression<A>(_:)(v7, a2, a3);
  return (*(v5 + 8))(v7, a2);
}

uint64_t closure #2 in AccessibilitySectionHeaderModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AccessibilitySectionHeaderModifier.ChildModifier();
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v17 - v12;
  v18 = 2;
  MEMORY[0x18D00A570](&v18, a2, v5, a3, v11);
  v17[1] = a3;
  v17[2] = &protocol witness table for AccessibilitySectionHeaderModifier<A>.ChildModifier;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v9, v6, WitnessTable);
  v15 = *(v7 + 8);
  v15(v9, v6);
  static ViewBuilder.buildExpression<A>(_:)(v13, v6, WitnessTable);
  return (v15)(v13, v6);
}

uint64_t AccessibilitySectionHeaderModifier.ChildModifier.updatedAttachment(for:nodes:atIndex:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    AccessibilityProperties.init()();
  }

  else
  {
    v4 = *v3;
    AccessibilityProperties.init()();
    v6[5] = v4;
    v6[6] = 0;
    v7 = 0;
  }

  static AccessibilityAttachment.properties(_:)();
  return outlined destroy of AccessibilityProperties(v6);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilitySectionHeaderModifier<A>.ChildModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t AccessibilityLabelModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AccessibilityLabelModifier.ChildModifier();
  v4 = type metadata accessor for ModifiedContent();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - v10;
  MEMORY[0x18D00A570](v9);
  v15[0] = a3;
  v15[1] = &protocol witness table for AccessibilityLabelModifier<A>.ChildModifier;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v7, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v7, v4);
  static ViewBuilder.buildExpression<A>(_:)(v11, v4, WitnessTable);
  return (v13)(v11, v4);
}

uint64_t AccessibilityLabelModifier.ChildModifier.updatedAttachment(for:nodes:atIndex:)()
{
  AccessibilityProperties.init()();
  *&v1[40] = vdupq_n_s64(0x80000uLL);
  v1[56] = 0;
  static AccessibilityAttachment.properties(_:)();
  return outlined destroy of AccessibilityProperties(v1);
}

uint64_t instantiation function for generic protocol witness table for AccessibilityLabelModifier<A>.ChildModifier(uint64_t a1)
{
  return instantiation function for generic protocol witness table for AccessibilityLabelModifier<A>.ChildModifier(a1);
}

{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilityLabelModifier<A>.ChildModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t AccessibilityBadgedViewModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  result = View.accessibility()(a5, a6);
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    v13[0] = a1;
    v13[1] = a2;
    v13[2] = a3;
    v13[3] = a4;
    return closure #1 in AccessibilityBadgedViewModifier.body(content:)(v13, a7);
  }

  return result;
}

uint64_t closure #1 in AccessibilityBadgedViewModifier.body(content:)(uint64_t *a1, uint64_t a2)
{
  v19 = a2;
  v3 = type metadata accessor for ModifiedContent();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = *a1;
  v11 = a1[2];
  if (v11 < 0)
  {
    v13 = a1[1];
    outlined copy of Text.Storage(*a1, v13, v11 & 1);

    outlined copy of Text.Storage(v10, v13, v11 & 1);
  }

  else
  {
    v20 = *a1;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;

    LOBYTE(v11) = 0;
  }

  v14 = v6;
  v15 = v6;
  v16 = v19;
  (*(v4 + 16))(v14, v19, v3);
  ModifiedContent<>.accessibilityValue(_:)(v10, v13, v11 & 1, v3, v9);
  outlined consume of Text.Storage(v10, v13, v11 & 1);

  outlined consume of Text.Storage(v10, v13, v11 & 1);

  (*(v4 + 8))(v15, v3);
  return (*(v4 + 40))(v16, v9, v3);
}

uint64_t AccessibilityBadgedViewModifier.Badge.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v21 - v16;
  View.accessibilityHidden(_:)(1, a2, a3);
  v22 = 19;
  ModifiedContent<>.accessibilityAddTraits(_:)(v5, v11);
  v18 = *(v6 + 8);
  v18(v8, v5);
  v22 = 2;
  ModifiedContent<>.accessibilityIdentifier(_:placement:)(v5, v14);
  v18(v11, v5);
  v21[1] = a3;
  v21[2] = &protocol witness table for AccessibilityAttachmentModifier;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v14, v5, WitnessTable);
  v18(v14, v5);
  static ViewBuilder.buildExpression<A>(_:)(v17, v5, WitnessTable);
  return (v18)(v17, v5);
}

uint64_t AccessibilityListCoreCellModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a1;
  v18[2] = a3;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - v11;
  outlined init with copy of AccessibilityScrollableContext((v3 + 8), v32);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v25 = 0;
  v26 = 0;
  v13 = 4;
  if (!*v3)
  {
    v13 = 0;
  }

  v20 = v13;
  v21 = v13;
  v22 = 0;
  memset(v31, 0, 24);
  v31[3] = 1;
  v31[5] = 0;
  v31[4] = 0;
  v18[5] = 0;
  v19 = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v23);
  v37[3] = v23[6];
  v37[4] = v23[7];
  v37[5] = v23[8];
  v36 = v23[2];
  v37[0] = v23[3];
  v37[1] = v23[4];
  v37[2] = v23[5];
  v34 = v23[0];
  LOBYTE(v37[6]) = v24;
  v35 = v23[1];
  AccessibilityProperties.init(identifier:label:traits:value:visibility:textLayoutProperties:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(&v30);
  v35 = v32[1];
  v36 = v32[2];
  v37[0] = *v33;
  *(v37 + 15) = *&v33[15];
  v34 = v32[0];
  memcpy(&v37[1] + 8, v31, 0x128uLL);
  v14 = *(a2 + 24);
  MEMORY[0x18D00A570](&v34, v5, &type metadata for AccessibilityScrollableContextModifier, v14);
  outlined destroy of AccessibilityScrollableContextModifier(&v34);
  v18[3] = v14;
  v18[4] = &protocol witness table for AccessibilityScrollableContextModifier;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v9, v6, WitnessTable);
  v16 = *(v7 + 8);
  v16(v9, v6);
  static ViewBuilder.buildExpression<A>(_:)(v12, v6, WitnessTable);
  return (v16)(v12, v6);
}

uint64_t AccessibilityTableCellModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v20[1] = a2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v20 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - v14;
  v16 = *(a1 + 24);
  View.accessibilityCombinedElement(options:ignoredTraits:)(0, v5, v16, v9);
  ModifiedContent<>.accessibilityTableContext(_:)(v3, v6, v12);
  v17 = *(v7 + 8);
  v17(v9, v6);
  v20[2] = v16;
  v20[3] = &protocol witness table for AccessibilityAttachmentModifier;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v12, v6, WitnessTable);
  v17(v12, v6);
  static ViewBuilder.buildExpression<A>(_:)(v15, v6, WitnessTable);
  return (v17)(v15, v6);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance AccessibilityCustomSectionHeaderStyling(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  PropertyList.subscript.getter();
  return v5;
}

BOOL protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance AccessibilityBadgedViewNeedsValue()
{
  lazy protocol witness table accessor for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue();
  PropertyList.subscript.getter();
  return (v1 & 1) == 0;
}

unint64_t lazy protocol witness table accessor for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler()
{
  result = lazy protocol witness table cache variable for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler;
  if (!lazy protocol witness table cache variable for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler;
  if (!lazy protocol witness table cache variable for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler;
  if (!lazy protocol witness table cache variable for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler);
  }

  return result;
}

uint64_t outlined destroy of ClosedRange<Date>?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for LinkDestination.Configuration?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AccessibilityStepperValue and conformance AccessibilityStepperValue()
{
  result = lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue;
  if (!lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue;
  if (!lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue;
  if (!lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue);
  }

  return result;
}

void type metadata accessor for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for AccessibilityLargeContentViewModifier();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t partial apply for closure #1 in AccessibilityButtonModifier.Attachment.accessibilityActions.getter@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 48))();
  *a1 = 2;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling()
{
  result = lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling);
  }

  return result;
}

void type metadata accessor for AccessibilityProxyTransformModifier<Never, PrimitiveButtonStyleConfiguration.Label>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for AccessibilityProxyTransformModifier();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityShowsLabelIcon>, lazy protocol witness table accessor for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon, &type metadata for AccessibilityShowsLabelIcon, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in AccessibilityAdjustableModifier.body(content:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for AccessibilityAdjustableModifier() - 8);
  v6 = v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80));

  return closure #1 in AccessibilityAdjustableModifier.body(content:)(a1, v6, a2);
}

uint64_t objectdestroy_42Tm()
{
  v1 = *(v0 + 24);
  v2 = *(type metadata accessor for AccessibilityAdjustableModifier() - 8);
  v3 = v0 + ((*(v2 + 80) + 64) & ~*(v2 + 80));
  v4 = *(v1 - 8);
  if (!(*(v4 + 48))(v3, 1, v1))
  {
    (*(v4 + 8))(v3, v1);
  }

  v5 = type metadata accessor for AccessibilityAdjustableModifier.Configuration();
  if (*(v3 + *(v5 + 72)))
  {
  }

  if (*(v3 + *(v5 + 76)))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in AccessibilityAdjustableModifier.body(content:)(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(type metadata accessor for AccessibilityAdjustableModifier() - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return closure #1 in closure #2 in AccessibilityAdjustableModifier.body(content:)(a1, v10, v3, v4, v5, v6, v7, v8);
}

uint64_t destroy for AccessibilityTableCellModifier(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

__n128 initializeWithCopy for AccessibilityTableCellModifier(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  else
  {
    v2 = *(a2 + 24);
    *(a1 + 24) = v2;
    (**(v2 - 8))();
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t assignWithCopy for AccessibilityTableCellModifier(uint64_t result, __int128 *a2)
{
  if (*(result + 40) == 255)
  {
    if (*(a2 + 40))
    {
      v10 = *a2;
      v11 = a2[1];
      *(result + 25) = *(a2 + 25);
      *result = v10;
      *(result + 16) = v11;
      return result;
    }

    v6 = *(a2 + 3);
    *(result + 24) = v6;
    *(result + 32) = *(a2 + 4);
    v7 = result;
    (**(v6 - 8))(result, a2);
    goto LABEL_11;
  }

  if (*(a2 + 40) == 255)
  {
    v3 = result;
    outlined destroy of AccessibilityTableContext(result);
    v4 = *(a2 + 25);
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    *(v3 + 25) = v4;
    return v3;
  }

  if (result != a2)
  {
    v7 = result;
    outlined destroy of AccessibilityTableContext(result);
    if (*(a2 + 40))
    {
      v8 = *a2;
      v9 = a2[1];
      *(v7 + 25) = *(a2 + 25);
      *v7 = v8;
      *(v7 + 16) = v9;
      return v7;
    }

    v12 = *(a2 + 3);
    *(v7 + 24) = v12;
    *(v7 + 32) = *(a2 + 4);
    (**(v12 - 8))(v7, a2);
LABEL_11:
    result = v7;
    *(v7 + 40) = 0;
  }

  return result;
}

__n128 assignWithTake for AccessibilityTableCellModifier(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 255)
  {
    goto LABEL_7;
  }

  if (*(a2 + 40) == 255 || a1 != a2)
  {
    v3 = a1;
    v4 = a2;
    outlined destroy of AccessibilityTableContext(a1);
    a2 = v4;
    a1 = v3;
LABEL_7:
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityTableCellModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 41))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 40);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityTableCellModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = ~a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityListCoreCellModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = a1 + 8;
  v4 = *(a2 + 78);
  if (v4 == 2)
  {
    v5 = *(a2 + 32);
    *(a1 + 32) = v5;
    (**(v5 - 8))(v3, a2 + 8);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
  }

  else if (v4 == 1)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v7 = *(a2 + 32);
    *(a1 + 32) = v7;
    (**(v7 - 8))(v3, a2 + 8);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 76) = *(a2 + 76);
  }

  *(a1 + 78) = v4;

  return a1;
}

uint64_t assignWithCopy for AccessibilityListCoreCellModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = a1 + 8;
  if (a1 != a2)
  {
    outlined destroy of AccessibilityScrollableContext(a1 + 8);
    v5 = *(a2 + 78);
    if (v5 == 2)
    {
      v6 = *(a2 + 32);
      *(a1 + 32) = v6;
      *(a1 + 40) = *(a2 + 40);
      (**(v6 - 8))(v3, a2 + 8);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 52) = *(a2 + 52);
      *(a1 + 56) = *(a2 + 56);
    }

    else if (v5 == 1)
    {
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 12) = *(a2 + 12);
      *(a1 + 16) = *(a2 + 16);
    }

    else
    {
      v7 = *(a2 + 32);
      *(a1 + 32) = v7;
      *(a1 + 40) = *(a2 + 40);
      (**(v7 - 8))(v3, a2 + 8);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 60) = *(a2 + 60);
      *(a1 + 64) = *(a2 + 64);
      v8 = *(a2 + 72);
      *(a1 + 76) = *(a2 + 76);
      *(a1 + 72) = v8;
    }

    *(a1 + 78) = v5;
  }

  return a1;
}

__n128 __swift_memcpy79_8(uint64_t a1, uint64_t a2)
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

__n128 assignWithTake for AccessibilityListCoreCellModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    outlined destroy of AccessibilityScrollableContext(a1 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 71) = *(a2 + 71);
    result = *(a2 + 8);
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityListCoreCellModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[79])
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

uint64_t storeEnumTagSinglePayload for AccessibilityListCoreCellModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 78) = 0;
    *(result + 76) = 0;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 79) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 79) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithCopy for AccessibilityButtonModifier.Attachment(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (v5)
    {
      v6 = *(a2 + 16);
      v7 = *(a2 + 24);
      v8 = *(a2 + 32);
      outlined copy of Environment<AppIntentExecutor?>.Content(v6, v7, v8);
      v9 = *(a1 + 16);
      v10 = *(a1 + 24);
      v11 = *(a1 + 32);
      *(a1 + 16) = v6;
      *(a1 + 24) = v7;
      *(a1 + 32) = v8;
      outlined consume of Environment<AppIntentExecutor?>.Content(v9, v10, v11);
      v12 = *(a2 + 40);
      v13 = *(a1 + 40);
      *(a1 + 40) = v12;
      v14 = v12;

      v15 = *(a2 + 56);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v15;
    }

    else
    {
      outlined destroy of AppIntentAction(a1 + 16);
      v23 = *(a2 + 32);
      v22 = *(a2 + 48);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v23;
      *(a1 + 48) = v22;
    }
  }

  else if (v5)
  {
    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
    v18 = *(a2 + 32);
    outlined copy of Environment<AppIntentExecutor?>.Content(v16, v17, v18);
    *(a1 + 16) = v16;
    *(a1 + 24) = v17;
    *(a1 + 32) = v18;
    v19 = *(a2 + 40);
    *(a1 + 40) = v19;
    v20 = *(a2 + 56);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = v20;
    v21 = v19;
  }

  else
  {
    v24 = *(a2 + 16);
    v25 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v25;
    *(a1 + 16) = v24;
  }

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for AccessibilityButtonModifier.Attachment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 40);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 40);
  if (!v5)
  {
    outlined destroy of AppIntentAction(a1 + 16);
LABEL_5:
    v10 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v10;
    *(a1 + 48) = *(a2 + 48);
    goto LABEL_6;
  }

  v6 = *(a2 + 32);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  outlined consume of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

LABEL_6:
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityButtonModifier.Attachment(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for AccessibilityButtonModifier.Attachment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityToggleModifier.RepresentationModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 48 > 0x18)
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
    if (*(v11 + 24) < 0xFFFFFFFFuLL)
    {
      v18 = *v11;
      v19 = *(v11 + 32);
      *(v10 + 16) = *(v11 + 16);
      *(v10 + 32) = v19;
      *v10 = v18;
      return v3;
    }

    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    outlined copy of Environment<AppIntentExecutor?>.Content(*v11, v13, v14);
    *v10 = v12;
    *(v10 + 8) = v13;
    *(v10 + 16) = v14;
    v15 = *(v11 + 24);
    *(v10 + 24) = v15;
    v16 = *(v11 + 40);
    *(v10 + 32) = *(v11 + 32);
    *(v10 + 40) = v16;
    v17 = v15;
  }

  return v3;
}

uint64_t initializeWithTake for AccessibilityToggleModifier.RepresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = v8[1];
  v9 = v8[2];
  *v7 = *v8;
  v7[1] = v10;
  v7[2] = v9;
  return a1;
}

uint64_t assignWithTake for AccessibilityToggleModifier.RepresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 24) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  if (*(v8 + 24) < 0xFFFFFFFFuLL)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v7, *(v7 + 8), *(v7 + 16));

LABEL_5:
    v14 = *v8;
    v15 = *(v8 + 32);
    *(v7 + 16) = *(v8 + 16);
    *(v7 + 32) = v15;
    *v7 = v14;
    return a1;
  }

  v9 = *(v8 + 16);
  v10 = *v7;
  v11 = *(v7 + 8);
  v12 = *(v7 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  outlined consume of Environment<AppIntentExecutor?>.Content(v10, v11, v12);
  v13 = *(v7 + 24);
  *(v7 + 24) = *(v8 + 24);

  *(v7 + 32) = *(v8 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityToggleModifier.RepresentationModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
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

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
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

double storeEnumTagSinglePayload for AccessibilityToggleModifier.RepresentationModifier(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD0)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 48);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
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
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFE)
    {
      result = 0.0;
      *(v19 + 16) = 0u;
      *(v19 + 32) = 0u;
      *v19 = 0u;
      *v19 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t type metadata completion function for AccessibilityAdjustableModifier()
{
  result = type metadata accessor for AccessibilityAdjustableModifier.Configuration();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityAdjustableModifier.Configuration(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || (((((((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    v4 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(v4, a2, v7);
    }

    else
    {
      (*(v6 + 16))(v4, a2, v5);
      (*(v6 + 56))(v4, 0, 1, v5);
    }

    v11 = a2 + v7;
    *(v4 + v7) = *(a2 + v7);
    v12 = (v4 + v7) & 0xFFFFFFFFFFFFFFF8;
    v13 = v11 & 0xFFFFFFFFFFFFFFF8;
    v14 = (v11 & 0xFFFFFFFFFFFFFFF8) + 8;
    if (*v14 < 0xFFFFFFFFuLL)
    {
      *(v12 + 8) = *v14;
    }

    else
    {
      v15 = *(v14 + 8);
      *(v12 + 8) = *v14;
      *(v12 + 16) = v15;
    }

    v16 = (v12 + 31) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v13 + 31) & 0xFFFFFFFFFFFFFFF8;
    if (*v17 < 0xFFFFFFFFuLL)
    {
      *v16 = *v17;
    }

    else
    {
      v18 = *(v17 + 8);
      *v16 = *v17;
      *(v16 + 8) = v18;
    }

    v19 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v17 + 23) & 0xFFFFFFFFFFFFFFF8);
    v21 = v20[1];
    *v19 = *v20;
    v19[1] = v21;
    v22 = ((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
    v24 = v23[1];
    *v22 = *v23;
    v22[1] = v24;
  }

  return v4;
}

uint64_t destroy for AccessibilityAdjustableModifier.Configuration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1, v3))
  {
    (*(v4 + 8))(a1, v3);
  }

  v5 = *(v4 + 64) + a1;
  if (!*(v4 + 84))
  {
    ++v5;
  }

  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  if (*((v5 & 0xFFFFFFFFFFFFFFF8) + 8) >= 0xFFFFFFFFuLL)
  {
  }

  if (*((v6 + 31) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
  {
  }
}

uint64_t partial apply for closure #1 in AccessibilityToggleModifier.RepresentationModifier.body(content:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for AccessibilityToggleModifier.RepresentationModifier() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return closure #1 in AccessibilityToggleModifier.RepresentationModifier.body(content:)(a1, v8, v3, v4, v5, v6);
}

uint64_t outlined init with copy of AppIntentAction?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t assignWithTake for AccessibilityButtonModifier.Configuration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 40);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 40);
  if (!v5)
  {
    outlined destroy of AppIntentAction(a1 + 16);
LABEL_5:
    v10 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v10;
    *(a1 + 48) = *(a2 + 48);
    return a1;
  }

  v6 = *(a2 + 32);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  outlined consume of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t objectdestroy_128Tm()
{

  if (*(v0 + 72))
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in AccessibilityDefaultActionRepresentableConfiguration.body(content:)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = 2;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityPlaybackButtonModifier.Configuration(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 2, v7))
    {
      v9 = type metadata accessor for PlaybackButton.State(0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 2, v7);
    }

    v11 = *(a3 + 36);
    v12 = *(a3 + 40);
    v13 = a1 + v11;
    v14 = a2 + v11;
    *v13 = *v14;
    v13[16] = v14[16];
    v15 = a1 + v12;
    v16 = a2 + v12;
    type metadata accessor for ClosedRange<Date>();
    v18 = v17;
    v19 = *(v17 - 8);
    if ((*(v19 + 48))(v16, 1, v17))
    {
      type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
      memcpy(v15, v16, *(*(v20 - 8) + 64));
    }

    else
    {
      v21 = *(v8 + 16);
      v21(v15, v16, v7);
      v21(&v15[*(v18 + 36)], &v16[*(v18 + 36)], v7);
      (*(v19 + 56))(v15, 0, 1, v18);
    }
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

uint64_t destroy for AccessibilityPlaybackButtonModifier.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v11 = *(v4 - 8);
  if (!(*(v11 + 48))(a1, 2, v4))
  {
    (*(v11 + 8))(a1, v4);
  }

  v5 = a1 + *(a2 + 40);
  type metadata accessor for ClosedRange<Date>();
  v7 = v6;
  result = (*(*(v6 - 8) + 48))(v5, 1, v6);
  if (!result)
  {
    v10 = *(v11 + 8);
    v10(v5, v4);
    v9 = v5 + *(v7 + 36);

    return (v10)(v9, v4);
  }

  return result;
}

char *initializeWithCopy for AccessibilityPlaybackButtonModifier.Configuration(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = type metadata accessor for PlaybackButton.State(0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 2, v6);
  }

  v9 = *(a3 + 36);
  v10 = *(a3 + 40);
  v11 = &a1[v9];
  v12 = &a2[v9];
  *v11 = *v12;
  v11[16] = v12[16];
  v13 = &a1[v10];
  v14 = &a2[v10];
  type metadata accessor for ClosedRange<Date>();
  v16 = v15;
  v17 = *(v15 - 8);
  if ((*(v17 + 48))(v14, 1, v15))
  {
    type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    memcpy(v13, v14, *(*(v18 - 8) + 64));
  }

  else
  {
    v19 = *(v7 + 16);
    v19(v13, v14, v6);
    v19(&v13[*(v16 + 36)], &v14[*(v16 + 36)], v6);
    (*(v17 + 56))(v13, 0, 1, v16);
  }

  return a1;
}

char *assignWithCopy for AccessibilityPlaybackButtonModifier.Configuration(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 2, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = type metadata accessor for PlaybackButton.State(0);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 24))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 36);
  v13 = &a1[v12];
  v14 = &a2[v12];
  v15 = *v14;
  v13[16] = v14[16];
  *v13 = v15;
  v16 = *(a3 + 40);
  v17 = &a1[v16];
  v18 = &a2[v16];
  type metadata accessor for ClosedRange<Date>();
  v20 = v19;
  v21 = *(v19 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v17, 1, v19);
  v24 = v22(v18, 1, v20);
  if (!v23)
  {
    if (!v24)
    {
      v28 = *(v7 + 24);
      v28(v17, v18, v6);
      v28(&v17[*(v20 + 36)], &v18[*(v20 + 36)], v6);
      return a1;
    }

    outlined destroy of LinkDestination(v17, type metadata accessor for ClosedRange<Date>);
    goto LABEL_12;
  }

  if (v24)
  {
LABEL_12:
    type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    memcpy(v17, v18, *(*(v26 - 8) + 64));
    return a1;
  }

  v25 = *(v7 + 16);
  v25(v17, v18, v6);
  v25(&v17[*(v20 + 36)], &v18[*(v20 + 36)], v6);
  (*(v21 + 56))(v17, 0, 1, v20);
  return a1;
}

uint64_t outlined destroy of LinkDestination(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *initializeWithTake for AccessibilityPlaybackButtonModifier.Configuration(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = type metadata accessor for PlaybackButton.State(0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 2, v6);
  }

  v9 = *(a3 + 36);
  v10 = *(a3 + 40);
  v11 = &a1[v9];
  v12 = &a2[v9];
  *v11 = *v12;
  v11[16] = v12[16];
  v13 = &a1[v10];
  v14 = &a2[v10];
  type metadata accessor for ClosedRange<Date>();
  v16 = v15;
  v17 = *(v15 - 8);
  if ((*(v17 + 48))(v14, 1, v15))
  {
    type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    memcpy(v13, v14, *(*(v18 - 8) + 64));
  }

  else
  {
    v19 = *(v7 + 32);
    v19(v13, v14, v6);
    v19(&v13[*(v16 + 36)], &v14[*(v16 + 36)], v6);
    (*(v17 + 56))(v13, 0, 1, v16);
  }

  return a1;
}

char *assignWithTake for AccessibilityPlaybackButtonModifier.Configuration(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 2, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = type metadata accessor for PlaybackButton.State(0);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 40))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 36);
  v13 = *(a3 + 40);
  v14 = &a1[v12];
  v15 = &a2[v12];
  *v14 = *v15;
  v14[16] = v15[16];
  v16 = &a1[v13];
  v17 = &a2[v13];
  type metadata accessor for ClosedRange<Date>();
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 48);
  v22 = v21(v16, 1, v18);
  v23 = v21(v17, 1, v19);
  if (!v22)
  {
    if (!v23)
    {
      v27 = *(v7 + 40);
      v27(v16, v17, v6);
      v27(&v16[*(v19 + 36)], &v17[*(v19 + 36)], v6);
      return a1;
    }

    outlined destroy of LinkDestination(v16, type metadata accessor for ClosedRange<Date>);
    goto LABEL_12;
  }

  if (v23)
  {
LABEL_12:
    type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    memcpy(v16, v17, *(*(v25 - 8) + 64));
    return a1;
  }

  v24 = *(v7 + 32);
  v24(v16, v17, v6);
  v24(&v16[*(v19 + 36)], &v17[*(v19 + 36)], v6);
  (*(v20 + 56))(v16, 0, 1, v19);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityPlaybackButtonModifier(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AccessibilityPlaybackButtonModifier.Configuration();
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = v4;
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 2, v7))
    {
      v9 = type metadata accessor for PlaybackButton.State(0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 2, v7);
    }

    v11 = *(v6 + 36);
    v12 = a1 + v11;
    v13 = a2 + v11;
    *v12 = *v13;
    v12[16] = v13[16];
    v14 = *(v6 + 40);
    v15 = a1 + v14;
    v16 = a2 + v14;
    type metadata accessor for ClosedRange<Date>();
    v18 = v17;
    v19 = *(v17 - 8);
    if ((*(v19 + 48))(v16, 1, v17))
    {
      type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
      memcpy(v15, v16, *(*(v20 - 8) + 64));
    }

    else
    {
      v21 = *(v8 + 16);
      v21(v15, v16, v7);
      v21(&v15[*(v18 + 36)], &v16[*(v18 + 36)], v7);
      (*(v19 + 56))(v15, 0, 1, v18);
    }
  }

  return a1;
}

uint64_t destroy for AccessibilityPlaybackButtonModifier(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v9 = *(v2 - 8);
  if (!(*(v9 + 48))(a1, 2, v2))
  {
    (*(v9 + 8))(a1, v2);
  }

  v3 = a1 + *(type metadata accessor for AccessibilityPlaybackButtonModifier.Configuration() + 40);
  type metadata accessor for ClosedRange<Date>();
  v5 = v4;
  result = (*(*(v4 - 8) + 48))(v3, 1, v4);
  if (!result)
  {
    v8 = *(v9 + 8);
    v8(v3, v2);
    v7 = v3 + *(v5 + 36);

    return (v8)(v7, v2);
  }

  return result;
}

char *initializeWithCopy for AccessibilityPlaybackButtonModifier(char *a1, char *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 2, v4))
  {
    v6 = type metadata accessor for PlaybackButton.State(0);
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 2, v4);
  }

  v7 = type metadata accessor for AccessibilityPlaybackButtonModifier.Configuration();
  v8 = *(v7 + 36);
  v9 = &a1[v8];
  v10 = &a2[v8];
  *v9 = *v10;
  v9[16] = v10[16];
  v11 = *(v7 + 40);
  v12 = &a1[v11];
  v13 = &a2[v11];
  type metadata accessor for ClosedRange<Date>();
  v15 = v14;
  v16 = *(v14 - 8);
  if ((*(v16 + 48))(v13, 1, v14))
  {
    type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    memcpy(v12, v13, *(*(v17 - 8) + 64));
  }

  else
  {
    v18 = *(v5 + 16);
    v18(v12, v13, v4);
    v18(&v12[*(v15 + 36)], &v13[*(v15 + 36)], v4);
    (*(v16 + 56))(v12, 0, 1, v15);
  }

  return a1;
}

char *assignWithCopy for AccessibilityPlaybackButtonModifier(char *a1, char *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 2, v4);
  v8 = v6(a2, 2, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 16))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 2, v4);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v8)
  {
    (*(v5 + 8))(a1, v4);
LABEL_6:
    v9 = type metadata accessor for PlaybackButton.State(0);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
    goto LABEL_7;
  }

  (*(v5 + 24))(a1, a2, v4);
LABEL_7:
  v10 = type metadata accessor for AccessibilityPlaybackButtonModifier.Configuration();
  v11 = *(v10 + 36);
  v12 = &a1[v11];
  v13 = &a2[v11];
  v14 = v13[16];
  *v12 = *v13;
  v12[16] = v14;
  v15 = *(v10 + 40);
  v16 = &a1[v15];
  v17 = &a2[v15];
  type metadata accessor for ClosedRange<Date>();
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 48);
  v22 = v21(v16, 1, v18);
  v23 = v21(v17, 1, v19);
  if (!v22)
  {
    if (!v23)
    {
      v27 = *(v5 + 24);
      v27(v16, v17, v4);
      v27(&v16[*(v19 + 36)], &v17[*(v19 + 36)], v4);
      return a1;
    }

    outlined destroy of LinkDestination(v16, type metadata accessor for ClosedRange<Date>);
    goto LABEL_12;
  }

  if (v23)
  {
LABEL_12:
    type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    memcpy(v16, v17, *(*(v25 - 8) + 64));
    return a1;
  }

  v24 = *(v5 + 16);
  v24(v16, v17, v4);
  v24(&v16[*(v19 + 36)], &v17[*(v19 + 36)], v4);
  (*(v20 + 56))(v16, 0, 1, v19);
  return a1;
}

char *initializeWithTake for AccessibilityPlaybackButtonModifier(char *a1, char *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 2, v4))
  {
    v6 = type metadata accessor for PlaybackButton.State(0);
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v5 + 32))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 2, v4);
  }

  v7 = type metadata accessor for AccessibilityPlaybackButtonModifier.Configuration();
  v8 = *(v7 + 36);
  v9 = &a1[v8];
  v10 = &a2[v8];
  *v9 = *v10;
  v9[16] = v10[16];
  v11 = *(v7 + 40);
  v12 = &a1[v11];
  v13 = &a2[v11];
  type metadata accessor for ClosedRange<Date>();
  v15 = v14;
  v16 = *(v14 - 8);
  if ((*(v16 + 48))(v13, 1, v14))
  {
    type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    memcpy(v12, v13, *(*(v17 - 8) + 64));
  }

  else
  {
    v18 = *(v5 + 32);
    v18(v12, v13, v4);
    v18(&v12[*(v15 + 36)], &v13[*(v15 + 36)], v4);
    (*(v16 + 56))(v12, 0, 1, v15);
  }

  return a1;
}

char *assignWithTake for AccessibilityPlaybackButtonModifier(char *a1, char *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 2, v4);
  v8 = v6(a2, 2, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 32))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 2, v4);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v8)
  {
    (*(v5 + 8))(a1, v4);
LABEL_6:
    v9 = type metadata accessor for PlaybackButton.State(0);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
    goto LABEL_7;
  }

  (*(v5 + 40))(a1, a2, v4);
LABEL_7:
  v10 = type metadata accessor for AccessibilityPlaybackButtonModifier.Configuration();
  v11 = *(v10 + 36);
  v12 = &a1[v11];
  v13 = &a2[v11];
  *v12 = *v13;
  v12[16] = v13[16];
  v14 = *(v10 + 40);
  v15 = &a1[v14];
  v16 = &a2[v14];
  type metadata accessor for ClosedRange<Date>();
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 48);
  v21 = v20(v15, 1, v17);
  v22 = v20(v16, 1, v18);
  if (!v21)
  {
    if (!v22)
    {
      v26 = *(v5 + 40);
      v26(v15, v16, v4);
      v26(&v15[*(v18 + 36)], &v16[*(v18 + 36)], v4);
      return a1;
    }

    outlined destroy of LinkDestination(v15, type metadata accessor for ClosedRange<Date>);
    goto LABEL_12;
  }

  if (v22)
  {
LABEL_12:
    type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    memcpy(v15, v16, *(*(v24 - 8) + 64));
    return a1;
  }

  v23 = *(v5 + 32);
  v23(v15, v16, v4);
  v23(&v15[*(v18 + 36)], &v16[*(v18 + 36)], v4);
  (*(v19 + 56))(v15, 0, 1, v18);
  return a1;
}

__n128 __swift_memcpy179_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 175) = *(a2 + 175);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t destroy for AccessibilityImageModifier(void *a1)
{

  v3 = a1[3];
  if (v3 >> 1 != 0xFFFFFFFF)
  {
    v4 = a1[1];
    v5 = a1[2];

    return outlined consume of AccessibilityImageLabel(v4, v5, v3);
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityImageModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = *(a2 + 24);

  if (v5 >> 1 == 0xFFFFFFFF)
  {
    v6 = *(a2 + 24);
    *v4 = *(a2 + 8);
    *(a1 + 24) = v6;
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    v9 = *(a2 + 32);
    outlined copy of AccessibilityImageLabel(v7, v8, v5);
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v5;
    *(a1 + 32) = v9;
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithCopy for AccessibilityImageModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 24);
  v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 24) >> 1 == 0xFFFFFFFFLL)
  {
    if (v5 == 0x1FFFFFFFELL)
    {
      v6 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v6;
    }

    else
    {
      v8 = *(a2 + 8);
      v9 = *(a2 + 16);
      v10 = *(a2 + 32);
      outlined copy of AccessibilityImageLabel(v8, v9, *(a2 + 24));
      *(a1 + 8) = v8;
      *(a1 + 16) = v9;
      *(a1 + 24) = v4;
      *(a1 + 32) = v10;
    }
  }

  else if (v5 == 0x1FFFFFFFELL)
  {
    outlined destroy of AccessibilityImageLabel(a1 + 8);
    v7 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v7;
  }

  else
  {
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    v13 = *(a2 + 32);
    outlined copy of AccessibilityImageLabel(v11, v12, *(a2 + 24));
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    *(a1 + 8) = v11;
    *(a1 + 16) = v12;
    *(a1 + 24) = v4;
    *(a1 + 32) = v13;
    outlined consume of AccessibilityImageLabel(v14, v15, v16);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  return a1;
}

uint64_t assignWithTake for AccessibilityImageModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 24);
  if (v4 >> 1 != 0xFFFFFFFF)
  {
    v5 = *(a2 + 24);
    if (v5 >> 1 != 0xFFFFFFFF)
    {
      v6 = *(a2 + 32);
      v7 = *(a1 + 8);
      v8 = *(a1 + 16);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v5;
      *(a1 + 32) = v6;
      outlined consume of AccessibilityImageLabel(v7, v8, v4);
      goto LABEL_6;
    }

    outlined destroy of AccessibilityImageLabel(a1 + 8);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
LABEL_6:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityImageModifier(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t storeEnumTagSinglePayload for AccessibilityImageModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityImageModifier(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AccessibilityImageModifier and conformance AccessibilityImageModifier();
  result = lazy protocol witness table accessor for type AccessibilityImageModifier and conformance AccessibilityImageModifier();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityImageModifier and conformance AccessibilityImageModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityImageModifier and conformance AccessibilityImageModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityImageModifier and conformance AccessibilityImageModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityImageModifier and conformance AccessibilityImageModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityImageModifier and conformance AccessibilityImageModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityImageModifier and conformance AccessibilityImageModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityImageModifier and conformance AccessibilityImageModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityImageModifier and conformance AccessibilityImageModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityImageModifier and conformance AccessibilityImageModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityImageModifier and conformance AccessibilityImageModifier);
  }

  return result;
}

uint64_t outlined init with take of LinkDestination(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of LinkDestination.Configuration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for RelationshipModifier<String>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type Map<AccessibilityImageModifier, AccessibilityAttachment> and conformance Map<A, B>()
{
  result = lazy protocol witness table cache variable for type Map<AccessibilityImageModifier, AccessibilityAttachment> and conformance Map<A, B>;
  if (!lazy protocol witness table cache variable for type Map<AccessibilityImageModifier, AccessibilityAttachment> and conformance Map<A, B>)
  {
    type metadata accessor for RelationshipModifier<String>(255, &lazy cache variable for type metadata for Map<AccessibilityImageModifier, AccessibilityAttachment>, &type metadata for AccessibilityImageModifier, MEMORY[0x1E697FFF0], MEMORY[0x1E698D398]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Map<AccessibilityImageModifier, AccessibilityAttachment> and conformance Map<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityPlaybackButtonModifier.ValueStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = v4 - 3;
  if (v3 >= 3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 >= 3)
  {
    return v6 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AccessibilityPlaybackButtonModifier.ValueStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 5;
    }
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityStaticTextModifier.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 60) = *(a2 + 60);
  v8 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v8;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 177) = *(a2 + 177);
  *(a1 + 178) = *(a2 + 178);

  return a1;
}

uint64_t assignWithCopy for AccessibilityStaticTextModifier.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  v10 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v10;
  v11 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v11;
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  v12 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v12;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 177) = *(a2 + 177);
  *(a1 + 178) = *(a2 + 178);
  return a1;
}

uint64_t assignWithTake for AccessibilityStaticTextModifier.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 60) = *(a2 + 60);
  v8 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v8;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 177) = *(a2 + 177);
  *(a1 + 178) = *(a2 + 178);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityStaticTextModifier.Configuration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 179))
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

uint64_t storeEnumTagSinglePayload for AccessibilityStaticTextModifier.Configuration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 178) = 0;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 179) = 1;
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

    *(result + 179) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *destroy for AccessibilityBadgedViewModifier(uint64_t *result)
{
  v1 = result[2];
  if (v1 >> 1 != 0xFFFFFFFF)
  {
    return outlined consume of BadgeLabel(*result, result[1], v1);
  }

  return result;
}

uint64_t *initializeWithCopy for AccessibilityBadgedViewModifier(uint64_t *result, uint64_t *a2)
{
  v2 = a2[2];
  if (v2 >> 1 == 0xFFFFFFFF)
  {
    v3 = *(a2 + 1);
    *result = *a2;
    *(result + 1) = v3;
  }

  else
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = a2[3];
    v7 = result;
    outlined copy of BadgeLabel(*a2, v5, v2);
    *v7 = v4;
    v7[1] = v5;
    v7[2] = v2;
    v7[3] = v6;
    return v7;
  }

  return result;
}

uint64_t assignWithCopy for AccessibilityBadgedViewModifier(uint64_t a1, uint64_t *a2)
{
  v3 = a2[2];
  v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 16) >> 1 == 0xFFFFFFFFLL)
  {
    if (v4 == 0x1FFFFFFFELL)
    {
      v5 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v5;
    }

    else
    {
      v8 = *a2;
      v9 = a2[1];
      v10 = a2[3];
      outlined copy of BadgeLabel(*a2, v9, v3);
      *a1 = v8;
      *(a1 + 8) = v9;
      *(a1 + 16) = v3;
      *(a1 + 24) = v10;
    }
  }

  else if (v4 == 0x1FFFFFFFELL)
  {
    outlined destroy of BadgeLabel(a1);
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v7;
  }

  else
  {
    v11 = *a2;
    v12 = a2[1];
    v13 = a2[3];
    outlined copy of BadgeLabel(*a2, v12, v3);
    v14 = *a1;
    v15 = *(a1 + 8);
    v16 = *(a1 + 16);
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = v3;
    *(a1 + 24) = v13;
    outlined consume of BadgeLabel(v14, v15, v16);
  }

  return a1;
}

uint64_t assignWithTake for AccessibilityBadgedViewModifier(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 >> 1 == 0xFFFFFFFF)
  {
    v3 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v3;
  }

  else
  {
    v4 = *(a2 + 16);
    if (v4 >> 1 == 0xFFFFFFFF)
    {
      v5 = result;
      outlined destroy of BadgeLabel(result);
      v7 = *(a2 + 16);
      *v5 = *a2;
      v5[1] = v7;
    }

    else
    {
      v8 = *(a2 + 24);
      v9 = *result;
      v10 = *(result + 8);
      *result = *a2;
      *(result + 16) = v4;
      *(result + 24) = v8;
      v5 = result;
      outlined consume of BadgeLabel(v9, v10, v2);
    }

    return v5;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityBadgedViewModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityBadgedViewModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * ~a2;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t View.onHover(perform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x18D00A570](v4, a3, &type metadata for _HoverRegionModifier);
}

uint64_t HoverResponder.updatePhase(_:)(uint64_t result, uint64_t a2, int a3)
{
  v5 = *(v3 + 216);
  v4 = *(v3 + 224);
  v6 = *(v3 + 232);
  v7 = *(v3 + 480);
  if (v6)
  {
    if (((v7 ^ a3) & 1) == 0)
    {
      return result;
    }

    goto LABEL_3;
  }

  if ((a3 | v7))
  {
    if (a3 & v7)
    {
      return result;
    }

LABEL_3:
    *(v3 + 464) = *&result;
    *(v3 + 472) = *&a2;
    v8 = a3 & 1;
    *(v3 + 480) = a3 & 1;
    v9 = result;
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    *(v11 + 24) = v4;
    *(v11 + 32) = v6;
    *(v11 + 40) = v9;
    *(v11 + 48) = *&a2;
    *(v11 + 56) = v8;
    outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
    outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
    static Update.enqueueAction(reason:_:)();

    *&result = COERCE_DOUBLE(outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>());
    return result;
  }

  if (*(v3 + 464) != *&result || *(v3 + 472) != *&a2)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t implicit closure #1 in static _HoverRegionModifier._makeView(modifier:inputs:body:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type _HoverRegionModifier.HoverBehavior and conformance _HoverRegionModifier.HoverBehavior();
  return Attribute.init<A>(body:value:flags:update:)();
}

void protocol witness for static Rule.initialValue.getter in conformance _HoverRegionModifier.Callback(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
}

uint64_t protocol witness for Rule.value.getter in conformance _HoverRegionModifier.Callback@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = 1;
}

uint64_t closure #1 in _HoverRegionModifier.HoverBehavior.value.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlatformItemList.Item();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  PlatformItemList.mergedContentItem.getter(*a1, &v17 - v11);

  v13 = *(v12 + 64);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v13);
  *(v12 + 64) = a2;
  *(v12 + 65) = a3;
  outlined init with copy of PlatformItemList.Item(v12, v9);
  _sSay7SwiftUI13ViewResponderCGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_18CD63400;
  outlined init with take of PlatformItemList.Item(v9, v15 + v14);
  *a1 = v15;
  return outlined destroy of PlatformItemList.Item(v12);
}

uint64_t protocol witness for Rule.value.getter in conformance _HoverRegionModifier.HoverBehavior@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in _HoverRegionModifier.HoverBehavior.value.getter;
  *(v6 + 24) = v5;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a1[1] = v6;
}

Swift::Void __swiftcall HoverResponderChild.updateValue()()
{
  v1 = v0;
  v42 = *MEMORY[0x1E69E9840];
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;
  v6 = Value[1];
  v7 = AGGraphGetValue();
  v9 = v8;
  v10 = *v7;
  v11 = *(v7 + 8);
  v37 = *(v7 + 32);
  v34 = *(v7 + 16);

  v12 = AGGraphGetValue();
  v35 = v12[1];
  v36 = *v12;
  if ((v4 & 1) != 0 || ((v9 & 1) == 0 ? (v14 = (v13 & 1) == 0) : (v14 = 0), !v14 || (_sSay7SwiftUI13ViewResponderCGMaTm_0(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]), !AGGraphGetOutputValue())))
  {
    *&v38 = v10;
    *(&v38 + 1) = v11;
    *v39 = v34;
    *&v39[16] = v37;

    ViewTransform.appendPosition(_:)(__PAIR128__(v6, v5));
    v15 = *v1;
    v40 = v36;
    v41[0] = v35;
    *(v15 + 288) = MEMORY[0x18D00B390]();
    *(v15 + 296) = v16;
    v17 = *v39;
    *(v15 + 240) = v38;
    *(v15 + 256) = v17;
    *(v15 + 272) = *&v39[16];
  }

  v18 = AGGraphGetValue();
  v20 = *v18;
  v19 = *(v18 + 8);
  v21 = *(v18 + 16);
  if ((v22 & 1) != 0 || (_sSay7SwiftUI13ViewResponderCGMaTm_0(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]), !AGGraphGetOutputValue()))
  {
    v23 = *v1;
    *(v23 + 216) = v20;
    *(v23 + 224) = v19;
    *(v23 + 232) = v21;
    outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
    outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
    outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
  }

  else
  {
    outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
  }

  v24 = *v1;
  outlined init with copy of HoverResponderChild.CoordinateSpaceStorage((v1 + 1), &v38);
  if (v39[25])
  {
    v25 = AGGraphGetValue();
    outlined init with copy of CoordinateSpace(v25, &v40);
  }

  else
  {
    v40 = v38;
    v41[0] = *v39;
    *(v41 + 9) = *&v39[9];
  }

  swift_beginAccess();
  outlined assign with take of CoordinateSpace(&v40, v24 + 304);
  swift_endAccess();
  static Semantics.v5.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    outlined init with copy of HoverResponderChild(v1, &v38);
    v26 = *AGGraphGetValue();
    outlined destroy of HoverResponderChild(&v38);
    *(v24 + 481) = v26;
  }

  v27 = AGGraphGetValue();
  v28 = v27[1];
  v40 = *v27;
  v41[0] = v28;
  AGGraphGetValue();
  v29 = AGGraphGetValue();
  v30 = *(v29 + 8);
  *&v38 = *v29;
  *(&v38 + 1) = v30;
  v31 = *(v29 + 32);
  *v39 = *(v29 + 16);
  *&v39[16] = v31;
  swift_beginAccess();
  type metadata accessor for ContentResponderHelper<TrivialContentResponder>();

  ContentResponderHelper.update(data:size:position:transform:parent:)();
  swift_endAccess();

  _sSay7SwiftUI13ViewResponderCGMaTm_0(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
  AGGraphGetValue();
  if (v32)
  {

    MultiViewResponder.children.setter();
  }

  if (AGGraphGetOutputValue())
  {

    outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_18CD69590;
    *(v33 + 32) = v24;
    *&v38 = v33;

    AGGraphSetOutputValue();

    outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
  }
}

uint64_t protocol witness for static RemovableAttribute.willRemove(attribute:) in conformance HoverResponderChild()
{
  AGGraphGetAttributeInfo();
  swift_retain_n();
  static Update.enqueueAction(reason:_:)();
}

uint64_t closure #1 in HoverResponder.updatePhase(_:)(uint64_t (*a1)(BOOL), uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    return a1((a6 & 1) == 0);
  }

  else
  {
    return (a1)(a4, a5, a6 & 1);
  }
}

uint64_t HoverResponder.hitTestPolicy(options:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  v8 = *a1;
  type metadata accessor for DefaultLayoutViewResponder();
  v5 = method lookup function for ViewResponder();
  result = v5(&v9, &v8);
  v7 = v9;
  if (v9 != 1)
  {
    if (*(v2 + 481))
    {
      if ((v4 & 0x40) != 0)
      {
        v7 = 0;
      }
    }

    else
    {
      result = static HitTestPassThroughFeature.isEnabled.getter();
      if (result)
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }
    }
  }

  *a2 = v7;
  return result;
}

uint64_t HoverResponder.containsGlobalPoints(_:cacheKey:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, double *a4@<X8>)
{
  v7 = *a3;
  v13[0] = *a3;
  HoverResponder.hitTestPolicy(options:)(v13, &v14);
  if (v14 == 1)
  {
    result = MultiViewResponder.children.getter();
    *a4 = 0.0;
    a4[1] = 0.0;
    *(a4 + 2) = result;
  }

  else
  {
    v14 = v7;
    MultiViewResponder.children.getter();
    swift_beginAccess();
    type metadata accessor for ContentResponderHelper<TrivialContentResponder>();
    ContentResponderHelper.containsGlobalPoints(_:cacheKey:options:children:)();
    swift_endAccess();

    v14 = v7;
    type metadata accessor for DefaultLayoutViewResponder();
    v9 = method lookup function for ViewResponder();
    LOBYTE(v13[0]) = BYTE4(a2) & 1;
    v9(v13, a1, a2 | ((BYTE4(a2) & 1) << 32), &v14);
    v10 = v13[0];
    v11 = *&v13[1];

    *a4 |= v10;
    v12 = a4[1];
    if (v12 <= v11)
    {
      v12 = v11;
    }

    a4[1] = v12;
  }

  return result;
}

uint64_t HoverResponder.__ivar_destroyer()
{
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();

  outlined destroy of CoordinateSpace(v0 + 304);
}

uint64_t HoverResponder.__deallocating_deinit()
{
  v0 = DefaultLayoutViewResponder.deinit();

  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();

  outlined destroy of CoordinateSpace(v0 + 304);

  return swift_deallocClassInstance();
}

uint64_t assignWithCopy for HoverResponderChild(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  v5 = (a1 + 8);

  if (a1 != a2)
  {
    outlined destroy of HoverResponderChild.CoordinateSpaceStorage(a1 + 8);
    if (*(a2 + 49))
    {
      v6 = *v4;
      v7 = v4[1];
      *(a1 + 34) = *(v4 + 26);
      *v5 = v6;
      *(a1 + 24) = v7;
    }

    else if (*(a2 + 48))
    {
      v8 = *v4;
      v9 = v4[1];
      *(a1 + 33) = *(v4 + 25);
      *v5 = v8;
      *(a1 + 24) = v9;
      *(a1 + 49) = 0;
    }

    else
    {
      v10 = *(a2 + 32);
      *(a1 + 32) = v10;
      *(a1 + 40) = *(a2 + 40);
      (**(v10 - 8))(a1 + 8, v4);
      *(a1 + 48) = 0;
    }
  }

  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

__n128 __swift_memcpy76_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for HoverResponderChild(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  if (a1 != a2)
  {
    outlined destroy of HoverResponderChild.CoordinateSpaceStorage(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 34) = *(a2 + 34);
  }

  *(a1 + 52) = *(a2 + 52);
  *(a1 + 68) = *(a2 + 68);
  return a1;
}

uint64_t getEnumTagSinglePayload for HoverResponderChild(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 76))
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

uint64_t storeEnumTagSinglePayload for HoverResponderChild(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 76) = 1;
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

    *(result + 76) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for HoverResponderChild.CoordinateSpaceStorage(uint64_t a1)
{
  v1 = *(a1 + 41);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (v1 != 1)
  {
    v2 = *(a1 + 40);
    if (v2 >= 2)
    {
      v2 = *a1 + 2;
    }

    if (!v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  return a1;
}

__n128 initializeWithCopy for HoverResponderChild.CoordinateSpaceStorage(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 41);
  if (v2 >= 2)
  {
    v2 = *a2 + 2;
  }

  if (v2 == 1)
  {
    *a1 = *a2;
    *(a1 + 41) = 1;
  }

  else
  {
    v3 = *(a2 + 40);
    if (v3 >= 2)
    {
      v3 = *a2 + 2;
    }

    if (v3 == 1)
    {
      *a1 = *a2;
      *(a1 + 40) = 1;
      *(a1 + 41) = 0;
    }

    else if (v3)
    {
      v7 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v7;
      result = *(a2 + 25);
      *(a1 + 25) = result;
      *(a1 + 41) = 0;
    }

    else
    {
      v4 = *(a2 + 24);
      *(a1 + 24) = v4;
      (**(v4 - 8))();
      *(a1 + 40) = 0;
      *(a1 + 41) = 0;
    }
  }

  return result;
}

uint64_t assignWithCopy for HoverResponderChild.CoordinateSpaceStorage(uint64_t result, __int128 *a2)
{
  if (result != a2)
  {
    v2 = *(result + 41);
    if (v2 >= 2)
    {
      v2 = *result + 2;
    }

    if (v2 != 1)
    {
      v3 = *(result + 40);
      if (v3 >= 2)
      {
        v3 = *result + 2;
      }

      if (!v3)
      {
        v4 = result;
        v5 = a2;
        __swift_destroy_boxed_opaque_existential_1(result);
        a2 = v5;
        result = v4;
      }
    }

    v6 = *(a2 + 41);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      *result = *a2;
      v7 = 1;
    }

    else
    {
      v8 = *(a2 + 40);
      if (v8 >= 2)
      {
        v8 = *a2 + 2;
      }

      if (v8 == 1)
      {
        v7 = 0;
        *result = *a2;
        *(result + 40) = 1;
      }

      else if (v8)
      {
        v7 = 0;
        v11 = *a2;
        v12 = a2[1];
        *(result + 25) = *(a2 + 25);
        *result = v11;
        *(result + 16) = v12;
      }

      else
      {
        v9 = *(a2 + 3);
        *(result + 24) = v9;
        *(result + 32) = *(a2 + 4);
        v10 = result;
        (**(v9 - 8))();
        result = v10;
        v7 = 0;
        *(v10 + 40) = 0;
      }
    }

    *(result + 41) = v7;
  }

  return result;
}

uint64_t assignWithTake for HoverResponderChild.CoordinateSpaceStorage(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(result + 41);
    if (v2 >= 2)
    {
      v2 = *result + 2;
    }

    if (v2 != 1)
    {
      v3 = *(result + 40);
      if (v3 >= 2)
      {
        v3 = *result + 2;
      }

      if (!v3)
      {
        v4 = result;
        v5 = a2;
        __swift_destroy_boxed_opaque_existential_1(result);
        a2 = v5;
        result = v4;
      }
    }

    v6 = *(a2 + 41);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      *result = *a2;
      LOBYTE(v7) = 1;
    }

    else
    {
      v7 = *(a2 + 40);
      if (v7 >= 2)
      {
        v7 = *a2 + 2;
      }

      if (v7 == 1)
      {
        LOBYTE(v7) = 0;
        *result = *a2;
        *(result + 40) = 1;
      }

      else if (v7)
      {
        LOBYTE(v7) = 0;
        v9 = *(a2 + 16);
        *result = *a2;
        *(result + 16) = v9;
        *(result + 25) = *(a2 + 25);
      }

      else
      {
        v8 = *(a2 + 16);
        *result = *a2;
        *(result + 16) = v8;
        *(result + 32) = *(a2 + 32);
        *(result + 40) = 0;
      }
    }

    *(result + 41) = v7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HoverResponderChild.CoordinateSpaceStorage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HoverResponderChild.CoordinateSpaceStorage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for HoverResponderChild.CoordinateSpaceStorage(uint64_t a1)
{
  result = *(a1 + 41);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for HoverResponderChild.CoordinateSpaceStorage(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 41) = a2;
  return result;
}

void type metadata accessor for ContentResponderHelper<TrivialContentResponder>()
{
  if (!lazy cache variable for type metadata for ContentResponderHelper<TrivialContentResponder>)
  {
    v0 = type metadata accessor for ContentResponderHelper();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ContentResponderHelper<TrivialContentResponder>);
    }
  }
}

uint64_t _s7SwiftUI14HoverResponderC11updatePhaseyyAA0cF0OFyycfU_TA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  if (*(v0 + 32))
  {
    return v1(v2 ^ 1);
  }

  else
  {
    return (v1)(*(v0 + 40), *(v0 + 48), v2);
  }
}

unint64_t lazy protocol witness table accessor for type _HoverRegionModifier.HoverBehavior and conformance _HoverRegionModifier.HoverBehavior()
{
  result = lazy protocol witness table cache variable for type _HoverRegionModifier.HoverBehavior and conformance _HoverRegionModifier.HoverBehavior;
  if (!lazy protocol witness table cache variable for type _HoverRegionModifier.HoverBehavior and conformance _HoverRegionModifier.HoverBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _HoverRegionModifier.HoverBehavior and conformance _HoverRegionModifier.HoverBehavior);
  }

  return result;
}

uint64_t View.accessibilityRoleDescription(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3 & 1;
  v7[3] = a4;
  return View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E69800A0], v7, 1, a5, MEMORY[0x1E69800A0], a6);
}

uint64_t View.accessibilityRoleDescription(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11 & 1;
  v15[0] = v8;
  v15[1] = v9;
  v15[2] = v11 & 1;
  v15[3] = v13;
  View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E69800A0], v15, 1, a5, MEMORY[0x1E69800A0], a6);
  outlined consume of Text.Storage(v8, v10, v12);
}

{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  return View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E69800A0], v7, 1, a5, MEMORY[0x1E69800A0], a6);
}

{
  if (a2)
  {
    v7 = a6;

    v8 = Text.init(_:tableName:bundle:comment:)();
    a6 = v7;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14 & 1;
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v15 = 0;
    v13 = 0;
  }

  v17[0] = v9;
  v17[1] = v11;
  v17[2] = v15;
  v17[3] = v13;
  View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E69800A0], v17, 1, a5, MEMORY[0x1E69800A0], a6);
  return outlined consume of Text?(v9, v11, v15, v13);
}

uint64_t View.accessibilityRoleDescription<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12 & 1;
  v16[0] = v9;
  v16[1] = v10;
  v16[2] = v12 & 1;
  v16[3] = v14;
  View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E69800A0], v16, 1, a2, MEMORY[0x1E69800A0], a4);
  outlined consume of Text.Storage(v9, v11, v13);
}

uint64_t ModifiedContent<>.accessibilityRoleDescription(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3 & 1;
  v7[3] = a4;
  return ModifiedContent<>.update<A>(_:replacing:isEnabled:)(MEMORY[0x1E69800A0], v7, 1, a5, a6);
}

uint64_t View.accessibilityRoleDescription<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View.accessibilityRoleDescription<A>(_:), v13, MEMORY[0x1E69E73E0], MEMORY[0x1E6981148], v7, &v14);
  v8 = v14;
  v9 = v15;
  v10 = v16;
  v11 = v17;
  v18[0] = v14;
  v18[1] = v15;
  v18[2] = v16;
  v18[3] = v17;
  View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E69800A0], v18, 1, a2, MEMORY[0x1E69800A0], a4);
  return outlined consume of Text?(v8, v9, v10, v11);
}

uint64_t closure #1 in View.accessibilityRoleDescription<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t ModifiedContent<>.accessibilityRoleDescription(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  return ModifiedContent<>.update<A>(_:replacing:isEnabled:)(MEMORY[0x1E69800A0], v7, 1, a5, a6);
}

double closure #1 in ModifiedContent<>.accessibilityTextLayoutProperties(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 112);
  v26 = *(a2 + 96);
  v27 = v6;
  v28 = *(a2 + 128);
  v29 = *(a2 + 144);
  v7 = *(a2 + 48);
  v22 = *(a2 + 32);
  v23 = v7;
  v8 = *(a2 + 80);
  v24 = *(a2 + 64);
  v25 = v8;
  v9 = *(a2 + 16);
  v20 = *a2;
  v21 = v9;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(&v20, a2, a3, a4);
  v10 = *(a1 + 240);
  v30[6] = *(a1 + 224);
  v30[7] = v10;
  v30[8] = *(a1 + 256);
  v31 = *(a1 + 272);
  v11 = *(a1 + 176);
  v30[2] = *(a1 + 160);
  v30[3] = v11;
  v12 = *(a1 + 208);
  v30[4] = *(a1 + 192);
  v30[5] = v12;
  v13 = *(a1 + 144);
  v30[0] = *(a1 + 128);
  v30[1] = v13;
  outlined init with copy of AccessibilityTextLayoutProperties(a2, v19);
  outlined destroy of AccessibilityTextLayoutProperties?(v30);
  v14 = v27;
  *(a1 + 224) = v26;
  *(a1 + 240) = v14;
  *(a1 + 256) = v28;
  *(a1 + 272) = v29;
  v15 = v23;
  *(a1 + 160) = v22;
  *(a1 + 176) = v15;
  v16 = v25;
  *(a1 + 192) = v24;
  *(a1 + 208) = v16;
  result = *&v20;
  v18 = v21;
  *(a1 + 128) = v20;
  *(a1 + 144) = v18;
  return result;
}

uint64_t View.accessibility(roleDescription:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3 & 1;
  v7[3] = a4;
  return View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E69800A0], v7, 1, a5, MEMORY[0x1E69800A0], a6);
}

uint64_t ModifiedContent<>.accessibility(roleDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3 & 1;
  v7[3] = a4;
  return ModifiedContent<>.update<A>(_:replacing:isEnabled:)(MEMORY[0x1E69800A0], v7, 1, a5, a6);
}

uint64_t outlined destroy of AccessibilityTextLayoutProperties?(uint64_t a1)
{
  type metadata accessor for AccessibilityTextLayoutProperties?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for AccessibilityTextLayoutProperties?()
{
  if (!lazy cache variable for type metadata for AccessibilityTextLayoutProperties?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?);
    }
  }
}

uint64_t List.init(selection:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29 = a5;
  v30 = a4;
  v31 = a3;
  v26 = a1;
  v27 = a2;
  type metadata accessor for SelectionManagerBox();
  v15 = type metadata accessor for Binding();
  v28 = type metadata accessor for Optional();
  v16 = *(v28 - 8);
  v17 = MEMORY[0x1EEE9AC00](v28);
  v19 = &v26 - v18;
  (*(*(v15 - 8) + 56))(a9, 1, 1, v15, v17);
  v37 = a6;
  v38 = a7;
  v39 = a8;
  v40 = a10;
  v20 = type metadata accessor for List();
  *(a9 + *(v20 + 56)) = 0;
  v21 = a9 + *(v20 + 60);
  *v21 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  v37 = a1;
  v22 = v27;
  v38 = v27;
  v39 = v31;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = a10;
  type metadata accessor for Set();
  type metadata accessor for Binding();
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in List.init(selection:content:), v32, MEMORY[0x1E69E73E0], v15, v23, v19);
  v24 = (*(v16 + 40))(a9, v19, v28);
  v30(v24);
  return outlined consume of Binding<[A1]>?<A, B, C><A1>(v26, v22);
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier>)
  {
    type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4_4>, MEMORY[0x1E697E508], MEMORY[0x1E697E500], MEMORY[0x1E697EC20]);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>)
  {
    type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier>();
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4_4> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4_4> and conformance _SemanticFeature<A>);
    lazy protocol witness table accessor for type RefreshScopeModifier and conformance RefreshScopeModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4_4> and conformance _SemanticFeature<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4_4>, MEMORY[0x1E697E508], MEMORY[0x1E697E500], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

uint64_t closure #1 in List.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X8>)
{
  v65 = a4;
  v61 = a2;
  v67 = a1;
  v68 = a6;
  v75 = a3;
  v76 = a5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v66 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v10 = &v44 - v9;
  v75 = a3;
  v76 = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = lazy protocol witness table accessor for type ListContainerContext and conformance ListContainerContext();
  v75 = OpaqueTypeMetadata2;
  v76 = &type metadata for ListContainerContext;
  v45 = OpaqueTypeMetadata2;
  v77 = OpaqueTypeConformance2;
  v78 = v12;
  v47 = OpaqueTypeConformance2;
  v13 = v12;
  v46 = v12;
  v60 = swift_getOpaqueTypeMetadata2();
  v64 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v55 = &v44 - v14;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier>();
  v15 = type metadata accessor for ModifiedContent();
  v63 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v58 = &v44 - v16;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>();
  v59 = v17;
  v54 = v15;
  v18 = type metadata accessor for ModifiedContent();
  v62 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v56 = &v44 - v19;
  v75 = OpaqueTypeMetadata2;
  v76 = &type metadata for ListContainerContext;
  v77 = OpaqueTypeConformance2;
  v78 = v13;
  v20 = swift_getOpaqueTypeConformance2();
  v52 = v20;
  refreshed = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v73 = v20;
  v74 = refreshed;
  v57 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v48 = WitnessTable;
  v23 = lazy protocol witness table accessor for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier);
  v71 = WitnessTable;
  v72 = v23;
  v49 = swift_getWitnessTable();
  v75 = v18;
  v76 = v49;
  v50 = MEMORY[0x1E6981320];
  v24 = swift_getOpaqueTypeMetadata2();
  v51 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v44 - v25;
  v27 = type metadata accessor for ModifiedContent();
  v53 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v44 - v31;
  v75 = v61;
  v76 = a3;
  v77 = v65;
  v78 = a5;
  type metadata accessor for List();
  View.configuredForLazyContainerContent()();
  v33 = v55;
  v34 = v45;
  View.containerContext<A>(_:)();
  (*(v66 + 8))(v10, v34);
  type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4_4>, MEMORY[0x1E697E508], MEMORY[0x1E697E500], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4_4> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4_4> and conformance _SemanticFeature<A>);
  v35 = v58;
  v36 = v60;
  View.refreshScope<A>(if:)();
  (*(v64 + 8))(v33, v36);
  LOBYTE(v75) = 2;
  v37 = v56;
  v38 = v54;
  MEMORY[0x18D00A570](&v75, v54, v59, v48);
  (*(v63 + 8))(v35, v38);
  v39 = v49;
  View.resetScrollInputs()();
  (*(v62 + 8))(v37, v18);
  v75 = v18;
  v76 = v39;
  v40 = swift_getOpaqueTypeConformance2();
  View.resetContentMargin(placements:)(&outlined read-only object #0 of List.placementsToReset.getter, v24, v40);
  (*(v51 + 8))(v26, v24);
  v69 = v40;
  v70 = &protocol witness table for ResetContentMarginModifier;
  v41 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v29, v27, v41);
  v42 = *(v53 + 8);
  v42(v29, v27);
  static ViewBuilder.buildExpression<A>(_:)(v32, v27, v41);
  return (v42)(v32, v27);
}

uint64_t closure #2 in List.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v58 = a2;
  v59 = a1;
  v60 = a7;
  v61 = a3;
  v62 = a5;
  type metadata accessor for SelectionManagerBox();
  v57 = type metadata accessor for Binding();
  v54 = type metadata accessor for Optional();
  v56 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &OpaqueTypeMetadata2 - v9;
  type metadata accessor for ResolvedList();
  type metadata accessor for StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>, &type metadata for AutomaticTextFieldLabelDisplayMode, &protocol witness table for AutomaticTextFieldLabelDisplayMode, type metadata accessor for TextFieldLabelDisplayModeModifier);
  type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for ModifiedContent();
  HasLazyStackBehaviorInScrollableAxis = lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v89 = &protocol witness table for ResolvedList<A>;
  v90 = HasLazyStackBehaviorInScrollableAxis;
  WitnessTable = swift_getWitnessTable();
  v13 = lazy protocol witness table accessor for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier>, lazy protocol witness table accessor for type ListPresentationPredicate and conformance ListPresentationPredicate, lazy protocol witness table accessor for type ListPresentationSizingModifier and conformance ListPresentationSizingModifier);
  v87 = WitnessTable;
  v88 = v13;
  v85 = swift_getWitnessTable();
  v86 = &protocol witness table for TextFieldLabelDisplayModeModifier<A>;
  v83 = swift_getWitnessTable();
  v84 = &protocol witness table for Fix_53164375;
  v14 = swift_getWitnessTable();
  *&v69 = v10;
  *(&v69 + 1) = v14;
  v52 = MEMORY[0x1E69813B8];
  v53 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v69 = a4;
  *(&v69 + 1) = a6;
  v15 = swift_getOpaqueTypeMetadata2();
  *&v69 = a4;
  *(&v69 + 1) = a6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = lazy protocol witness table accessor for type ListContainerContext and conformance ListContainerContext();
  *&v69 = v15;
  *(&v69 + 1) = &type metadata for ListContainerContext;
  *&v70 = OpaqueTypeConformance2;
  *(&v70 + 1) = v17;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>();
  v18 = type metadata accessor for ModifiedContent();
  *&v69 = v15;
  *(&v69 + 1) = &type metadata for ListContainerContext;
  *&v70 = OpaqueTypeConformance2;
  *(&v70 + 1) = v17;
  v19 = swift_getOpaqueTypeConformance2();
  refreshed = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v81 = v19;
  v82 = refreshed;
  v21 = swift_getWitnessTable();
  v22 = lazy protocol witness table accessor for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier);
  v79 = v21;
  v80 = v22;
  v23 = swift_getWitnessTable();
  *&v69 = v18;
  *(&v69 + 1) = v23;
  swift_getOpaqueTypeMetadata2();
  v24 = type metadata accessor for ModifiedContent();
  v25 = lazy protocol witness table accessor for type ListStyleContent and conformance ListStyleContent();
  *&v69 = v18;
  *(&v69 + 1) = v23;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = &protocol witness table for ResetContentMarginModifier;
  v26 = swift_getWitnessTable();
  *&v69 = &type metadata for ListStyleContent;
  *(&v69 + 1) = v24;
  *&v70 = v25;
  *(&v70 + 1) = v26;
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  type metadata accessor for NavigableListModifier();
  v27 = type metadata accessor for ModifiedContent();
  *&v69 = v10;
  *(&v69 + 1) = v53;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = &protocol witness table for StaticSourceWriter<A, B>;
  v73 = swift_getWitnessTable();
  v74 = &protocol witness table for NavigableListModifier<A>;
  v28 = swift_getWitnessTable();
  v53 = v27;
  *&v69 = v27;
  *(&v69 + 1) = v28;
  OpaqueTypeMetadata2 = v28;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ViewInputFlagModifier<ProvidesContextMenuInteraction>();
  v29 = v54;
  v52 = type metadata accessor for ModifiedContent();
  v30 = type metadata accessor for ModifiedContent();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &OpaqueTypeMetadata2 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &OpaqueTypeMetadata2 - v36;
  v38 = v55;
  v39 = v56;
  (*(v56 + 16))(v55, v58, v29, v35);
  v40 = *(v57 - 8);
  v41 = v57;
  if ((*(v40 + 48))(v38, 1) == 1)
  {
    (*(v39 + 8))(v38, v29);
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
  }

  else
  {
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v61, v62, v42, v43);
    type metadata accessor for ToAnyListSelection();
    swift_getWitnessTable();
    Binding.projecting<A>(_:)();
    (*(v40 + 8))(v38, v41);
  }

  v67 = v53;
  v68 = OpaqueTypeMetadata2;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = _s7SwiftUI19NavigationStateHostCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type ViewInputFlagModifier<ProvidesContextMenuInteraction> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<ProvidesContextMenuInteraction>);
  v65 = v44;
  v66 = v45;
  v46 = v52;
  v47 = swift_getWitnessTable();
  View.optionalSelectionContainer<A>(_:)(&v69, v46, &type metadata for AnyListSelection, v47, &protocol witness table for AnyListSelection, v33);
  outlined destroy of Binding<AnyListSelection>?(&v69);
  v63 = v47;
  v64 = &protocol witness table for PrimitiveSelectionContainerModifier;
  v48 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v33, v30, v48);
  v49 = *(v31 + 8);
  v49(v33, v30);
  static ViewBuilder.buildExpression<A>(_:)(v37, v30, v48);
  return (v49)(v37, v30);
}

void List.init<A, B>(_:selection:rowContent:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t List.init<A, B>(_:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = *a2;
  v26 = a8;
  v27 = a10;
  v28 = a11;
  v29 = a12;
  v30 = a13;
  v31 = a14;
  v32 = a1;
  v33 = a2;
  v34 = a6;
  v35 = a7;
  v39 = *(*(v14 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v15 = v39;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = a10;
  v42 = a10;
  v43 = type metadata accessor for DisclosureGroup();
  v44 = a12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for OutlineGroup();
  v36 = a13;
  v37 = a13;
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  List.init(selection:content:)(a3, a4, a5, partial apply for closure #1 in List.init<A, B>(_:children:selection:rowContent:), v25, a8, v16, a11, a9, v17);

  return (*(*(v15 - 8) + 8))(a1, v15);
}

uint64_t partial apply for closure #1 in List.init<A, B>(_:children:selection:rowContent:)@<X0>(uint64_t a1@<X8>)
{
  return partial apply for closure #1 in List.init<A, B>(_:children:selection:rowContent:)(&unk_1EFFB7578, partial apply for closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:), a1);
}

{
  return partial apply for closure #1 in List.init<A, B>(_:children:selection:rowContent:)(&unk_1EFFB7500, partial apply for closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:), a1);
}

void List.init<A, B>(_:children:selection:rowContent:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  List.init<A, B, C>(_:id:selection:rowContent:)();
}

void List.init<A, B, C>(_:id:selection:rowContent:)()
{
  List.init<A, B, C>(_:id:selection:rowContent:)();
}

{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t List.init<A, B, C>(_:id:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15 = *a2;
  v16 = *a3;
  v29 = a10;
  v30 = a11;
  v31 = a12;
  v32 = a13;
  v33 = a14;
  v34 = a15;
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v38 = a7;
  v39 = a8;
  v17 = *MEMORY[0x1E69E77B0] + 8;
  v19 = *(v15 + v17);
  v43 = *(*(v16 + v17) + 16);
  v18 = v43;
  v44 = v19;
  v45 = a11;
  v46 = a11;
  v47 = type metadata accessor for DisclosureGroup();
  v48 = a13;
  v49 = a14;
  v20 = type metadata accessor for OutlineGroup();
  v40 = a15;
  v41 = a15;
  WitnessTable = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  List.init(selection:content:)(a4, a5, a6, partial apply for closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:), v28, a10, v20, a12, a9, v21);

  return (*(*(v18 - 8) + 8))(a1, v18);
}

uint64_t partial apply for closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)@<X0>(uint64_t a1@<X8>)
{
  return partial apply for closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)(&unk_1EFFB7550, partial apply for closure #1 in closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:), a1);
}

{
  return partial apply for closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)(&unk_1EFFB74D8, partial apply for closure #1 in closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:), a1);
}

{
  return partial apply for closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)(&unk_1EFFB7370, partial apply for closure #1 in closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:), a1);
}

{
  return partial apply for closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)(&unk_1EFFB7320, partial apply for closure #1 in closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:), a1);
}

void List.init<A, B, C>(_:id:children:selection:rowContent:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t List.init<A>(_:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v23 = a8;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a1;
  v28 = a2;
  v29 = a6;
  v30 = a7;
  v16 = MEMORY[0x1E69E6530];
  type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  v32 = v17;
  v33 = v16;
  v34 = type metadata accessor for HStack();
  v35 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v36 = MEMORY[0x1E69E6540];
  v18 = type metadata accessor for ForEach();
  WitnessTable = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  List.init(selection:content:)(a3, a4, a5, partial apply for closure #1 in List.init<A>(_:selection:rowContent:), v22, a8, v18, a11, a9, v19);
}

uint64_t partial apply for closure #1 in List.init<A>(_:selection:rowContent:)()
{
  return partial apply for closure #1 in List.init<A>(_:selection:rowContent:)();
}

{
  return partial apply for closure #1 in List.init<A>(_:selection:rowContent:)();
}

{
  return closure #1 in List.init<A>(_:selection:rowContent:)(v0[6], v0[7], v0[8], v0[9], v0[2], v0[3], v0[4], v0[5]);
}

void List.init<A>(_:selection:rowContent:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t List.init<A, B>(_:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _UNKNOWN **a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, _UNKNOWN **a11, uint64_t a12)
{
  v37 = a8;
  v34 = a5;
  v33 = a4;
  v41 = a3;
  v39 = a1;
  v42 = a9;
  v31 = a10;
  v18 = *a2;
  v36 = a2;
  v32 = v18;
  v35 = a6;
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v40 = type metadata accessor for Optional();
  v19 = *(v40 - 8);
  v20 = MEMORY[0x1EEE9AC00](v40);
  v38 = &v31 - v21;
  (*(v19 + 16))(v20);
  v44 = a6;
  v45 = a7;
  v22 = v31;
  v46 = a8;
  v47 = v31;
  v48 = a11;
  v49 = a12;
  v50 = a1;
  v51 = a2;
  v52 = v33;
  v53 = a5;
  v23 = *(*(v32 + *MEMORY[0x1E69E77B0] + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = a7;
  v58 = &type metadata for OutlineSubgroupChildren;
  v59 = a11;
  v60 = &protocol witness table for OutlineSubgroupChildren;
  v25 = type metadata accessor for DisclosureGroup();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = v23;
  v58 = AssociatedTypeWitness;
  v59 = a7;
  v60 = a7;
  v61 = v25;
  v62 = v22;
  v63 = AssociatedConformanceWitness;
  v27 = type metadata accessor for OutlineGroup();
  WitnessTable = swift_getWitnessTable();
  v54 = a11;
  v55 = a11;
  v56 = WitnessTable;
  v29 = swift_getWitnessTable();
  List.init(selection:content:)(v38, partial apply for closure #1 in List.init<A, B>(_:children:selection:rowContent:), v43, v35, v27, v37, v29, v42);

  (*(v19 + 8))(v41, v40);
  return (*(*(v23 - 1) + 1))(v39, v23);
}

uint64_t closure #1 in List.init<A, B>(_:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _UNKNOWN **a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v49 = a5;
  v50 = a7;
  v45 = a1;
  v46 = a4;
  v53 = a9;
  v51 = a3;
  v52 = a13;
  v47 = a12;
  v48 = a2;
  v15 = *(*(*a2 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v16 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v39 - v17;
  v39 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = AssociatedTypeWitness;
  v57 = a6;
  v58 = &type metadata for OutlineSubgroupChildren;
  v59 = a10;
  v60 = &protocol witness table for OutlineSubgroupChildren;
  v19 = type metadata accessor for DisclosureGroup();
  v44 = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = v15;
  v58 = AssociatedTypeWitness;
  v59 = a6;
  v60 = a6;
  v21 = a6;
  v61 = v19;
  v62 = a8;
  v63 = AssociatedConformanceWitness;
  v22 = type metadata accessor for OutlineGroup();
  v41 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v40 = &v39 - v27;
  v28 = v43;
  (*(v16 + 16))(v43, v45, v15, v26);
  v29 = swift_allocObject();
  v30 = v50;
  v29[2] = v49;
  v29[3] = v15;
  v29[4] = v21;
  v29[5] = v30;
  v29[6] = a8;
  v29[7] = a10;
  v31 = v39;
  v32 = v51;
  v29[8] = v39;
  v29[9] = v32;
  v29[10] = v46;
  v33 = v48;

  OutlineGroup<>.init<A>(_:children:content:)(v28, v33, v52, v29, v42, v21, a8, a10, v24, v31);
  WitnessTable = swift_getWitnessTable();
  v54 = a10;
  v55 = a10;
  v56 = WitnessTable;
  v35 = swift_getWitnessTable();
  v36 = v40;
  static ViewBuilder.buildExpression<A>(_:)(v24, v22, v35);
  v37 = *(v41 + 8);
  v37(v24, v22);
  static ViewBuilder.buildExpression<A>(_:)(v36, v22, v35);
  return (v37)(v36, v22);
}

uint64_t closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  v17(v14);
  static ViewBuilder.buildExpression<A>(_:)(v12, a6, a9);
  v18 = *(v10 + 8);
  v18(v12, a6);
  static ViewBuilder.buildExpression<A>(_:)(v16, a6, a9);
  return (v18)(v16, a6);
}

uint64_t List.init<A, B, C>(_:id:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _UNKNOWN **a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, _UNKNOWN **a13)
{
  v41 = a6;
  v38 = a5;
  v44 = a4;
  v42 = a1;
  v45 = a9;
  v36 = a12;
  v35 = a11;
  v40 = a10;
  v37 = *a2;
  v46 = a3;
  v34 = *a3;
  v39 = a7;
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v43 = type metadata accessor for Optional();
  v19 = *(v43 - 8);
  v20 = MEMORY[0x1EEE9AC00](v43);
  v22 = &v33 - v21;
  (*(v19 + 16))(&v33 - v21, a4, v20);
  v48 = a7;
  v49 = a8;
  v23 = v35;
  v50 = a10;
  v51 = v35;
  v24 = v36;
  v52 = v36;
  v53 = a13;
  v54 = a1;
  v55 = a2;
  v56 = v46;
  v57 = v38;
  v58 = a6;
  v25 = *MEMORY[0x1E69E77B0] + 8;
  v26 = *(*(v34 + v25) + 16);
  v27 = *(v37 + v25);
  v62 = a8;
  v63 = &type metadata for OutlineSubgroupChildren;
  v64 = a13;
  v65 = &protocol witness table for OutlineSubgroupChildren;
  v28 = type metadata accessor for DisclosureGroup();
  v62 = v26;
  v63 = v27;
  v64 = a8;
  v65 = a8;
  v66 = v28;
  v67 = v23;
  v68 = v24;
  v29 = type metadata accessor for OutlineGroup();
  WitnessTable = swift_getWitnessTable();
  v59 = a13;
  v60 = a13;
  v61 = WitnessTable;
  v31 = swift_getWitnessTable();
  List.init(selection:content:)(v22, partial apply for closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:), v47, v39, v29, v40, v31, v45);

  (*(v19 + 8))(v44, v43);
  return (*(*(v26 - 1) + 1))(v42, v26);
}

uint64_t closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _UNKNOWN **a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v53 = a6;
  v54 = a8;
  v51 = a5;
  v52 = a2;
  v47 = a4;
  v48 = a1;
  v56 = a9;
  v55 = a14;
  v49 = a13;
  v43 = a12;
  v50 = a3;
  v15 = *(*(*a3 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v42 - v17;
  v42 = &v42 - v17;
  v21 = *(v19 + v20 + 8);
  v60 = v22;
  v61 = &type metadata for OutlineSubgroupChildren;
  v62 = v23;
  v63 = &protocol witness table for OutlineSubgroupChildren;
  v46 = type metadata accessor for DisclosureGroup();
  v60 = v15;
  v61 = v21;
  v62 = a7;
  v63 = a7;
  v64 = v46;
  v65 = a10;
  v66 = a11;
  v24 = type metadata accessor for OutlineGroup();
  v45 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v44 = &v42 - v29;
  (*(v16 + 16))(v18, v48, v15, v28);
  v30 = swift_allocObject();
  v31 = v54;
  v30[2] = v53;
  v30[3] = v15;
  v30[4] = v21;
  v30[5] = a7;
  v32 = a7;
  v30[6] = v31;
  v30[7] = a10;
  v33 = v43;
  v30[8] = a11;
  v30[9] = v33;
  v34 = v51;
  v35 = v52;
  v30[10] = v47;
  v30[11] = v34;

  v36 = v50;

  OutlineGroup<>.init<A>(_:id:children:content:)(v42, v35, v36, v55, v30, v32, a10, a11, v26, v33);
  WitnessTable = swift_getWitnessTable();
  v57 = v33;
  v58 = v33;
  v59 = WitnessTable;
  v38 = swift_getWitnessTable();
  v39 = v44;
  static ViewBuilder.buildExpression<A>(_:)(v26, v24, v38);
  v40 = *(v45 + 8);
  v40(v26, v24);
  static ViewBuilder.buildExpression<A>(_:)(v39, v24, v38);
  return (v40)(v39, v24);
}

uint64_t partial apply for closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)(*(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 16), *(v3 + 24), *(v3 + 32), a3, *(v3 + 40), *(v3 + 48), *(v3 + 56), a1, a2);
}

{
  return closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)(*(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 16), *(v3 + 24), *(v3 + 32), a3, *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), a1, a2);
}

uint64_t closure #1 in closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - v17;
  v19(v16);
  static ViewBuilder.buildExpression<A>(_:)(v14, a7, a11);
  v20 = *(v12 + 8);
  v20(v14, a7);
  static ViewBuilder.buildExpression<A>(_:)(v18, a7, a11);
  return (v20)(v18, a7);
}

uint64_t List.init<A, B>(_:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v25 = a7;
  v26 = a1;
  v31 = a5;
  v32 = a6;
  v29 = a3;
  v30 = a4;
  v27 = a9;
  v28 = a2;
  v24 = a13;
  v16 = *(a8 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  v33 = a7;
  v34 = a8;
  v35 = a10;
  v36 = a11;
  v37 = a12;
  v38 = a13;
  v39 = a14;
  KeyPath = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  List.init<A, B, C>(_:id:selection:rowContent:)(v19, KeyPath, v28, v29, v30, v31, v32, v25, v27, a8, a10, a11, a12, AssociatedConformanceWitness, v24);
  return (*(v16 + 8))(v26, a8);
}

uint64_t List.init<A, B, C>(_:id:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = *a2;
  v27 = a8;
  v28 = a10;
  v29 = a11;
  v30 = a12;
  v31 = a13;
  v32 = a14;
  v33 = a15;
  v34 = a1;
  v35 = a2;
  v36 = a6;
  v37 = a7;
  v18 = *(v17 + *MEMORY[0x1E69E77B0] + 8);
  v39 = a10;
  v40 = v18;
  v41 = type metadata accessor for HStack();
  v42 = a13;
  v43 = a14;
  v19 = type metadata accessor for ForEach();
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  List.init(selection:content:)(a3, a4, a5, partial apply for closure #1 in List.init<A, B, C>(_:id:selection:rowContent:), v26, a8, v19, a12, a9, v20);

  return (*(*(a10 - 8) + 8))(a1, a10);
}

uint64_t partial apply for closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)()
{
  return partial apply for closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)(&unk_1EFFB74B0, partial apply for closure #1 in closure #1 in List.init<A, B, C>(_:id:selection:rowContent:), closure #1 in List.init<A, B, C>(_:id:selection:rowContent:));
}

{
  return partial apply for closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)(&unk_1EFFB7488, partial apply for closure #1 in closure #1 in List.init<A, B, C>(_:id:selection:rowContent:), closure #1 in List.init<A, B, C>(_:id:selection:rowContent:));
}

uint64_t List.init<A, B>(_:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v37 = a8;
  v38 = a1;
  v40 = a3;
  v41 = a4;
  v42 = a2;
  v39 = a9;
  v35 = a7;
  v36 = a12;
  v31 = a11;
  v33 = a10;
  v34 = a5;
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v16 = type metadata accessor for Optional();
  v32 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  v20 = *(a6 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v24, a1, a6, v22);
  v43 = a5;
  v44 = a6;
  v25 = v37;
  v45 = a7;
  v46 = v37;
  v26 = v33;
  v47 = v33;
  v48 = a11;
  v49 = v36;
  KeyPath = swift_getKeyPath();
  (*(v17 + 16))(v19, v42, v16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  List.init<A, B, C>(_:id:selection:rowContent:)(v24, KeyPath, v19, v40, v41, v34, a6, v35, v39, v25, v26, AssociatedConformanceWitness, v31);
  (*(v17 + 8))(v42, v32);
  return (*(v20 + 8))(v38, a6);
}

uint64_t List.init<A, B, C>(_:id:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v33 = a8;
  v32 = a7;
  v36 = a4;
  v38 = a3;
  v39 = a9;
  v30 = a12;
  v34 = a10;
  v31 = *a2;
  v35 = a6;
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v37 = type metadata accessor for Optional();
  v18 = *(v37 - 8);
  v19 = MEMORY[0x1EEE9AC00](v37);
  v21 = &v30 - v20;
  (*(v18 + 16))(&v30 - v20, a3, v19);
  v22 = v32;
  v41 = a6;
  v42 = v32;
  v43 = v33;
  v44 = a10;
  v23 = v30;
  v45 = a11;
  v46 = v30;
  v47 = a13;
  v48 = a1;
  v24 = a1;
  v49 = a2;
  v50 = v36;
  v51 = a5;
  v25 = *(v31 + *MEMORY[0x1E69E77B0] + 8);
  v26 = type metadata accessor for HStack();
  v53 = v22;
  v54 = v25;
  v55 = v26;
  v56 = a11;
  v57 = v23;
  v27 = type metadata accessor for ForEach();
  WitnessTable = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  List.init(selection:content:)(v21, partial apply for closure #1 in List.init<A, B, C>(_:id:selection:rowContent:), v40, v35, v27, v34, v28, v39);

  (*(v18 + 8))(v38, v37);
  return (*(*(v22 - 8) + 8))(v24, v22);
}

uint64_t closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v44 = a8;
  v45 = a4;
  v36 = a7;
  v42 = a5;
  v43 = a3;
  v40 = a2;
  v41 = a1;
  v47 = a9;
  v46 = a14;
  v15 = *(a6 - 8);
  v37 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v17;
  v19 = *(v18 + *MEMORY[0x1E69E77B0] + 8);
  v38 = type metadata accessor for HStack();
  v49 = a6;
  v50 = v19;
  v51 = v38;
  v52 = a10;
  v53 = a11;
  v20 = type metadata accessor for ForEach();
  v39 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v35 - v25;
  (*(v15 + 16))(v17, v41, a6, v24);
  v27 = swift_allocObject();
  v27[2] = v42;
  v27[3] = a6;
  v28 = v36;
  v27[4] = v19;
  v27[5] = v28;
  v29 = v45;
  v27[6] = v44;
  v27[7] = a10;
  v30 = v37;
  v27[8] = a11;
  v27[9] = v30;
  v27[10] = v43;
  v27[11] = v29;

  WitnessTable = swift_getWitnessTable();
  ForEach<>.init(_:id:content:)();
  v48 = WitnessTable;
  v31 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v22, v20, v31);
  v32 = *(v39 + 8);
  v32(v22, v20);
  static ViewBuilder.buildExpression<A>(_:)(v26, v20, v31);
  return (v32)(v26, v20);
}

uint64_t closure #1 in closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v30 = a8;
  v31 = a3;
  v27 = a6;
  v28 = a2;
  v29 = a1;
  v33 = a9;
  v32 = a13;
  v16 = type metadata accessor for HStack();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v26 - v21;
  v34 = a4;
  v35 = a5;
  v36 = v27;
  v37 = a7;
  v38 = v30;
  v39 = a10;
  v40 = a11;
  v41 = a12;
  v42 = v28;
  v43 = v31;
  v44 = v29;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v19, v16, WitnessTable);
  v24 = *(v17 + 8);
  v24(v19, v16);
  static ViewBuilder.buildExpression<A>(_:)(v22, v16, WitnessTable);
  return (v24)(v22, v16);
}

uint64_t closure #1 in closure #1 in closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  v20(v19, v16);
  static ViewBuilder.buildExpression<A>(_:)(v14, a7, a11);
  v21 = *(v12 + 8);
  v21(v14, a7);
  static ViewBuilder.buildExpression<A>(_:)(v18, a7, a11);
  return (v21)(v18, a7);
}

uint64_t List.init<A>(_:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29 = a4;
  v30 = a5;
  v31 = a3;
  v32 = a9;
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - v19;
  (*(v17 + 16))(&v29 - v19, a3, v16, v18);
  v34 = a6;
  v35 = a7;
  v36 = a8;
  v37 = a10;
  v38 = a1;
  v39 = a2;
  v40 = v29;
  v41 = v30;
  v21 = MEMORY[0x1E69E6530];
  type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  v23 = v22;
  v24 = type metadata accessor for HStack();
  v25 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v43 = v23;
  v44 = v21;
  v45 = v24;
  v46 = v25;
  v47 = MEMORY[0x1E69E6540];
  v26 = type metadata accessor for ForEach();
  WitnessTable = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  List.init(selection:content:)(v20, partial apply for closure #1 in List.init<A>(_:selection:rowContent:), v33, a6, v26, a8, v27, v32);

  return (*(v17 + 8))(v31, v16);
}

uint64_t closure #1 in List.init<A>(_:selection:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a8;
  v14[6] = a3;
  v14[7] = a4;
  v15 = type metadata accessor for HStack();

  swift_getWitnessTable();
  ForEach<>.init(_:content:)();
  v21[0] = v23;
  v21[1] = v24;
  v21[2] = v25;
  v22 = v26;
  v16 = MEMORY[0x1E69E6530];
  type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  *&v27 = v17;
  *(&v27 + 1) = v16;
  *&v28 = v15;
  *(&v28 + 1) = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  *&v29 = MEMORY[0x1E69E6540];
  v18 = type metadata accessor for ForEach();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v21, v18, WitnessTable);

  v23 = v27;
  v24 = v28;
  v25 = v29;
  v26 = v30;
  static ViewBuilder.buildExpression<A>(_:)(&v23, v18, WitnessTable);
}

uint64_t closure #1 in closure #1 in List.init<A>(_:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a6;
  v27 = a8;
  v28 = a9;
  v15 = type metadata accessor for HStack();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v25 - v20;
  v29 = a4;
  v30 = a5;
  v31 = v26;
  v32 = a7;
  v33 = a2;
  v34 = a3;
  v35 = a1;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v18, v15, WitnessTable);
  v23 = *(v16 + 8);
  v23(v18, v15);
  static ViewBuilder.buildExpression<A>(_:)(v21, v15, WitnessTable);
  return (v23)(v21, v15);
}

uint64_t closure #1 in closure #1 in closure #1 in List.init<A>(_:selection:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  v17(v16, v13);
  static ViewBuilder.buildExpression<A>(_:)(v11, a5, a7);
  v18 = *(v9 + 8);
  v18(v11, a5);
  static ViewBuilder.buildExpression<A>(_:)(v15, a5, a7);
  return (v18)(v15, a5);
}

uint64_t List<>.init<A, B>(_:children:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _UNKNOWN **a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *(*(*a2 + *MEMORY[0x1E69E77B0] + 8) + 16);
  swift_getAssociatedTypeWitness();
  type metadata accessor for DisclosureGroup();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for OutlineGroup();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = type metadata accessor for List();
  *(a9 + v15[14]) = 0;
  v16 = a9 + v15[15];
  *v16 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 24) = 0;
  *(a9 + 16) = 0;
  closure #1 in List<>.init<A, B>(_:children:rowContent:)(a1, a2, a3, a4, a5, a6, a7, a8, a9 + v15[13]);

  return (*(*(v14 - 8) + 8))(a1, v14);
}

uint64_t closure #1 in List<>.init<A, B>(_:children:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _UNKNOWN **a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v38 = a8;
  v46 = a3;
  v47 = a4;
  v44 = a1;
  v45 = a2;
  v48 = a9;
  v12 = *(*(*a2 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v38 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = AssociatedTypeWitness;
  v52 = a5;
  v53 = &type metadata for OutlineSubgroupChildren;
  v54 = a7;
  v55 = &protocol witness table for OutlineSubgroupChildren;
  v16 = type metadata accessor for DisclosureGroup();
  v43 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v52 = v12;
  v53 = AssociatedTypeWitness;
  v18 = a5;
  v54 = a5;
  v55 = a5;
  v56 = v16;
  v57 = a6;
  v19 = a6;
  v58 = AssociatedConformanceWitness;
  v20 = type metadata accessor for OutlineGroup();
  v40 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v39 = &v38 - v25;
  v26 = v41;
  (*(v13 + 16))(v41, v44, v12, v24);
  v27 = swift_allocObject();
  v27[2] = v12;
  v27[3] = a5;
  v27[4] = a6;
  v27[5] = a7;
  v28 = a7;
  v29 = v38;
  v30 = v46;
  v31 = v47;
  v27[6] = v38;
  v27[7] = v30;
  v27[8] = v31;
  v32 = v45;

  OutlineGroup<>.init<A>(_:children:content:)(v26, v32, partial apply for closure #1 in closure #1 in List<>.init<A, B>(_:children:rowContent:), v27, v42, v18, v19, v28, v22, v29);
  WitnessTable = swift_getWitnessTable();
  v49 = v28;
  v50 = v28;
  v51 = WitnessTable;
  v34 = swift_getWitnessTable();
  v35 = v39;
  static ViewBuilder.buildExpression<A>(_:)(v22, v20, v34);
  v36 = *(v40 + 8);
  v36(v22, v20);
  static ViewBuilder.buildExpression<A>(_:)(v35, v20, v34);
  return (v36)(v35, v20);
}

uint64_t closure #1 in closure #1 in List<>.init<A, B>(_:children:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  v16(v13);
  static ViewBuilder.buildExpression<A>(_:)(v11, a5, a7);
  v17 = *(v9 + 8);
  v17(v11, a5);
  static ViewBuilder.buildExpression<A>(_:)(v15, a5, a7);
  return (v17)(v15, a5);
}

uint64_t List<>.init<A, B, C>(_:id:children:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = *(*(*a3 + *MEMORY[0x1E69E77B0] + 8) + 16);
  type metadata accessor for DisclosureGroup();
  type metadata accessor for OutlineGroup();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v17 = type metadata accessor for List();
  *(a9 + v17[14]) = 0;
  v18 = a9 + v17[15];
  *v18 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 24) = 0;
  *(a9 + 16) = 0;
  closure #1 in List<>.init<A, B, C>(_:id:children:rowContent:)(a1, a2, a3, a4, a5, a6, a7, a8, a9 + v17[13], a10);

  return (*(*(v16 - 8) + 8))(a1, v16);
}

uint64_t closure #1 in List<>.init<A, B, C>(_:id:children:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v45 = a1;
  v46 = a5;
  v48 = a2;
  v49 = a9;
  v41 = a10;
  v42 = a4;
  v47 = a3;
  v13 = *(*(*a3 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v39 - v15;
  v40 = &v39 - v15;
  v19 = *(v17 + v18 + 8);
  v53 = v20;
  v54 = &type metadata for OutlineSubgroupChildren;
  v55 = v21;
  v56 = &protocol witness table for OutlineSubgroupChildren;
  v44 = type metadata accessor for DisclosureGroup();
  v53 = v13;
  v54 = v19;
  v55 = a6;
  v56 = a6;
  v57 = v44;
  v58 = a7;
  v39 = a7;
  v59 = a8;
  v22 = type metadata accessor for OutlineGroup();
  v43 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v39 - v27;
  (*(v14 + 16))(v16, v45, v13, v26);
  v29 = swift_allocObject();
  v29[2] = v13;
  v29[3] = v19;
  v29[4] = a6;
  v29[5] = a7;
  v30 = a8;
  v29[6] = a8;
  v32 = v41;
  v31 = v42;
  v29[7] = v41;
  v29[8] = v31;
  v29[9] = v46;
  v33 = v48;

  v34 = v47;

  OutlineGroup<>.init<A>(_:id:children:content:)(v40, v33, v34, partial apply for closure #1 in closure #1 in List<>.init<A, B, C>(_:id:children:rowContent:), v29, a6, v39, v30, v24, v32);
  WitnessTable = swift_getWitnessTable();
  v50 = v32;
  v51 = v32;
  v52 = WitnessTable;
  v36 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v24, v22, v36);
  v37 = *(v43 + 8);
  v37(v24, v22);
  static ViewBuilder.buildExpression<A>(_:)(v28, v22, v36);
  return (v37)(v28, v22);
}

uint64_t List<>.init<A, B>(_:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v23 = a2;
  v24 = a3;
  v21 = a1;
  v22 = a9;
  v14 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v15);
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  KeyPath = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  List<>.init<A, B, C>(_:id:rowContent:)(v17, KeyPath, v23, v24, a4, a5, a6, AssociatedConformanceWitness, v22, a7);
  return (*(v14 + 8))(v21, a4);
}

uint64_t List<>.init<A, B, C>(_:id:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  type metadata accessor for HStack();
  type metadata accessor for ForEach();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v17 = type metadata accessor for List();
  *(a9 + v17[14]) = 0;
  v18 = a9 + v17[15];
  *v18 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 24) = 0;
  *(a9 + 16) = 0;
  closure #1 in List<>.init<A, B, C>(_:id:rowContent:)(a1, a2, a3, a4, a5, a6, a7, a8, a9 + v17[13], a10);

  return (*(*(a5 - 8) + 8))(a1, a5);
}

uint64_t closure #1 in List<>.init<A, B, C>(_:id:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v33 = a6;
  v38 = a3;
  v39 = a4;
  v35 = a1;
  v36 = a2;
  v40 = a9;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[1] = v15;
  v17 = *(v16 + *MEMORY[0x1E69E77B0] + 8);
  v34 = type metadata accessor for HStack();
  v42 = a5;
  v43 = v17;
  v44 = v34;
  v45 = a7;
  v46 = a8;
  v18 = a8;
  v19 = type metadata accessor for ForEach();
  v37 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v32 - v24;
  (*(v13 + 16))(v15, v35, a5, v23);
  v26 = swift_allocObject();
  v26[2] = a5;
  v26[3] = v17;
  v26[4] = v33;
  v26[5] = a7;
  v26[6] = v18;
  v26[7] = a10;
  v27 = v39;
  v26[8] = v38;
  v26[9] = v27;

  WitnessTable = swift_getWitnessTable();
  ForEach<>.init(_:id:content:)();
  v41 = WitnessTable;
  v28 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v21, v19, v28);
  v29 = *(v37 + 8);
  v29(v21, v19);
  static ViewBuilder.buildExpression<A>(_:)(v25, v19, v28);
  return (v29)(v25, v19);
}

uint64_t closure #1 in closure #1 in List<>.init<A, B, C>(_:id:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v26 = a3;
  v27 = a8;
  v25 = a7;
  v28 = a9;
  v15 = type metadata accessor for HStack();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v25 - v20;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = v25;
  v33 = v27;
  v34 = a10;
  v35 = a2;
  v36 = v26;
  v37 = a1;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v18, v15, WitnessTable);
  v23 = *(v16 + 8);
  v23(v18, v15);
  static ViewBuilder.buildExpression<A>(_:)(v21, v15, WitnessTable);
  return (v23)(v21, v15);
}

uint64_t closure #1 in closure #1 in closure #1 in List<>.init<A, B, C>(_:id:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  v18(v17, v14);
  static ViewBuilder.buildExpression<A>(_:)(v12, a6, a9);
  v19 = *(v10 + 8);
  v19(v12, a6);
  static ViewBuilder.buildExpression<A>(_:)(v16, a6, a9);
  return (v19)(v16, a6);
}

double List<>.init<A>(_:rowContent:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  type metadata accessor for HStack();
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  type metadata accessor for ForEach();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v14 = type metadata accessor for List();
  *(&v20 + *(v14 + 56)) = 0;
  v15 = &v20 + *(v14 + 60);
  *v15 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v15 + 1) = 0;
  v15[16] = 0;
  v20 = 0uLL;
  BYTE8(v21) = 0;
  *&v21 = 0;
  closure #1 in List<>.init<A>(_:rowContent:)(a1, a2, a3, a4, a5, a6);

  v16 = v25;
  *(a7 + 64) = v24;
  *(a7 + 80) = v16;
  *(a7 + 96) = v26;
  *(a7 + 112) = v27;
  v17 = v21;
  *a7 = v20;
  *(a7 + 16) = v17;
  result = *&v22;
  v19 = v23;
  *(a7 + 32) = v22;
  *(a7 + 48) = v19;
  return result;
}

uint64_t closure #1 in List<>.init<A>(_:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a3;
  v10[5] = a4;
  v11 = type metadata accessor for HStack();

  swift_getWitnessTable();
  ForEach<>.init(_:content:)();
  v17[0] = v19;
  v17[1] = v20;
  v17[2] = v21;
  v18 = v22;
  v12 = MEMORY[0x1E69E6530];
  type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  *&v23 = v13;
  *(&v23 + 1) = v12;
  *&v24 = v11;
  *(&v24 + 1) = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  *&v25 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for ForEach();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v17, v14, WitnessTable);

  v19 = v23;
  v20 = v24;
  v21 = v25;
  v22 = v26;
  static ViewBuilder.buildExpression<A>(_:)(&v19, v14, WitnessTable);
}

uint64_t closure #1 in closure #1 in List<>.init<A>(_:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for HStack();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20[-v15];
  v21 = a4;
  v22 = a5;
  v23 = a2;
  v24 = a3;
  v25 = a1;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v13, v10, WitnessTable);
  v18 = *(v11 + 8);
  v18(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)(v16, v10, WitnessTable);
  return (v18)(v16, v10);
}

uint64_t closure #1 in closure #1 in closure #1 in List<>.init<A>(_:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v15(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)(v9, a4, a5);
  v16 = *(v7 + 8);
  v16(v9, a4);
  static ViewBuilder.buildExpression<A>(_:)(v13, a4, a5);
  return (v16)(v13, a4);
}

uint64_t List.init<A, B>(_:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v26 = a8;
  v27 = a10;
  v28 = a11;
  v29 = a12;
  v30 = a13;
  v31 = a14;
  v32 = a15;
  v33 = a1;
  v34 = a2;
  v35 = a6;
  v36 = a7;
  v15 = type metadata accessor for Binding();
  v47 = a12;
  v48 = a13;
  v40 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = a10;
  v43 = a10;
  v44 = type metadata accessor for DisclosureGroup();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for OutlineGroup();
  v37 = a14;
  v38 = a14;
  v39 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  List.init(selection:content:)(a3, a4, a5, partial apply for closure #1 in List.init<A, B>(_:children:selection:rowContent:), v25, a8, v16, a11, a9, v17);

  return (*(*(v15 - 8) + 8))(a1, v15);
}

uint64_t partial apply for closure #1 in List.init<A, B>(_:children:selection:rowContent:)()
{
  return partial apply for closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)(&unk_1EFFB7398, partial apply for closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:), closure #1 in List.init<A, B>(_:children:selection:rowContent:));
}

{
  return partial apply for closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)(&unk_1EFFB7348, partial apply for closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:), closure #1 in List.init<A, B>(_:children:selection:rowContent:));
}

uint64_t List.init<A, B, C>(_:id:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16 = *a2;
  v28 = a10;
  v29 = a11;
  v30 = a12;
  v31 = a13;
  v32 = a14;
  v33 = a15;
  v34 = a16;
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v38 = a7;
  v39 = a8;
  v17 = type metadata accessor for Binding();
  v18 = *(v16 + *MEMORY[0x1E69E77B0] + 8);
  v50 = a13;
  v51 = a14;
  v43 = v17;
  v44 = v18;
  v45 = a11;
  v46 = a11;
  v47 = type metadata accessor for DisclosureGroup();
  WitnessTable = swift_getWitnessTable();
  v49 = a15;
  v19 = type metadata accessor for OutlineGroup();
  v40 = a16;
  v41 = a16;
  v42 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  List.init(selection:content:)(a4, a5, a6, partial apply for closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:), v27, a10, v19, a12, a9, v20);

  return (*(*(v17 - 8) + 8))(a1, v17);
}

uint64_t List.init<A, B>(_:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _UNKNOWN **a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, _UNKNOWN **a12, uint64_t a13)
{
  v41 = a8;
  v42 = a5;
  v36 = a4;
  v45 = a3;
  v38 = a1;
  v46 = a9;
  v34 = a11;
  v19 = *a2;
  v39 = a2;
  v35 = v19;
  v40 = a6;
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v44 = type metadata accessor for Optional();
  v37 = *(v44 - 8);
  v20 = MEMORY[0x1EEE9AC00](v44);
  v43 = &v33 - v21;
  (*(v22 + 16))(v20);
  v48 = a6;
  v49 = a7;
  v50 = a8;
  v51 = a10;
  v23 = v34;
  v52 = v34;
  v53 = a12;
  v54 = a13;
  v55 = a1;
  v56 = a2;
  v57 = v36;
  v58 = a5;
  v24 = type metadata accessor for Binding();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = a7;
  v63 = &type metadata for OutlineSubgroupChildren;
  v64 = a12;
  v65 = &protocol witness table for OutlineSubgroupChildren;
  v26 = type metadata accessor for DisclosureGroup();
  v69 = a10;
  v70 = v23;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v62 = v24;
  v63 = AssociatedTypeWitness;
  v64 = a7;
  v65 = a7;
  v66 = v26;
  v67 = WitnessTable;
  v68 = AssociatedConformanceWitness;
  v29 = type metadata accessor for OutlineGroup();
  v30 = swift_getWitnessTable();
  v59 = a12;
  v60 = a12;
  v61 = v30;
  v31 = swift_getWitnessTable();
  List.init(selection:content:)(v43, partial apply for closure #1 in List.init<A, B>(_:children:selection:rowContent:), v47, v40, v29, v41, v31, v46);

  (*(v37 + 8))(v45, v44);
  return (*(*(v24 - 8) + 8))(v38, v24);
}