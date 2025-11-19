id specialized UIKitGestureRecognizer.didUpdate(phase:in:)(uint64_t a1)
{
  v2 = *(a1 + 1);
  v3 = [v1 state];
  v4 = 3;
  v5 = 5;
  v6 = 4;
  if (v3 == 5)
  {
    v6 = 5;
  }

  if (v3)
  {
    v5 = v6;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  v7 = 1;
  if (v3)
  {
    v7 = 2;
  }

  if (!v2)
  {
    v7 = v3;
  }

  if (v2 <= 1)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  return [v1 setState_];
}

unint64_t lazy protocol witness table accessor for type UIKitGestureRecognizer and conformance UIKitGestureRecognizer()
{
  result = lazy protocol witness table cache variable for type UIKitGestureRecognizer and conformance UIKitGestureRecognizer;
  if (!lazy protocol witness table cache variable for type UIKitGestureRecognizer and conformance UIKitGestureRecognizer)
  {
    type metadata accessor for UIKitGestureRecognizer();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitGestureRecognizer and conformance UIKitGestureRecognizer);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(EventID, EventType)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, EventType)>)
  {
    type metadata accessor for (EventID, EventType)(255);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, EventType)>);
    }
  }
}

uint64_t outlined destroy of (EventID, EventType)(uint64_t a1)
{
  type metadata accessor for (EventID, EventType)(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (UITransformEvent, TransformEvent)(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for NSObject(255, a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

double DefaultStepperStyle.makeBody(configuration:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  KeyPath = swift_getKeyPath();

  outlined copy of AppIntentExecutor?(v4);
  outlined copy of AppIntentExecutor?(v6);

  outlined copy of Environment<Selector?>.Content(KeyPath, 0);
  outlined consume of Environment<Selector?>.Content(KeyPath, 0);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = KeyPath;
  *(a2 + 96) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>, StepperStyleModifier<SegmentedButtonStepperStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>, StepperStyleModifier<SegmentedButtonStepperStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>, StepperStyleModifier<SegmentedButtonStepperStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>, StepperStyleModifier<SegmentedButtonStepperStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>, StepperStyleModifier<SegmentedButtonStepperStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>, StepperStyleModifier<SegmentedButtonStepperStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>, StepperStyleModifier<SegmentedButtonStepperStyle>>)
  {
    type metadata accessor for ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>();
    type metadata accessor for StepperStyleModifier<MenuStepperStyle>(255, &lazy cache variable for type metadata for StepperStyleModifier<SegmentedButtonStepperStyle>, lazy protocol witness table accessor for type SegmentedButtonStepperStyle and conformance SegmentedButtonStepperStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>, StepperStyleModifier<SegmentedButtonStepperStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>)
  {
    type metadata accessor for Stepper<StepperStyleConfiguration.Label>();
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for Stepper<StepperStyleConfiguration.Label>()
{
  if (!lazy cache variable for type metadata for Stepper<StepperStyleConfiguration.Label>)
  {
    v0 = type metadata accessor for Stepper();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Stepper<StepperStyleConfiguration.Label>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>();
    type metadata accessor for StepperStyleModifier<MenuStepperStyle>(255, &lazy cache variable for type metadata for StepperStyleModifier<MenuStepperStyle>, lazy protocol witness table accessor for type MenuStepperStyle and conformance MenuStepperStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MenuStepperStyle and conformance MenuStepperStyle()
{
  result = lazy protocol witness table cache variable for type MenuStepperStyle and conformance MenuStepperStyle;
  if (!lazy protocol witness table cache variable for type MenuStepperStyle and conformance MenuStepperStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MenuStepperStyle and conformance MenuStepperStyle);
  }

  return result;
}

void type metadata accessor for StepperStyleModifier<MenuStepperStyle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for StepperStyleModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SegmentedButtonStepperStyle and conformance SegmentedButtonStepperStyle()
{
  result = lazy protocol witness table cache variable for type SegmentedButtonStepperStyle and conformance SegmentedButtonStepperStyle;
  if (!lazy protocol witness table cache variable for type SegmentedButtonStepperStyle and conformance SegmentedButtonStepperStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentedButtonStepperStyle and conformance SegmentedButtonStepperStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>();
    lazy protocol witness table accessor for type GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>> and conformance GroupBox<A, B>(&lazy protocol witness table cache variable for type Stepper<StepperStyleConfiguration.Label> and conformance Stepper<A>, type metadata accessor for Stepper<StepperStyleConfiguration.Label>);
    lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>> and conformance GroupBox<A, B>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>, type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabPlacementModifier and conformance TabPlacementModifier()
{
  result = lazy protocol witness table cache variable for type TabPlacementModifier and conformance TabPlacementModifier;
  if (!lazy protocol witness table cache variable for type TabPlacementModifier and conformance TabPlacementModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabPlacementModifier and conformance TabPlacementModifier);
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance TabPlacementModifier()
{
  v1 = *v0;
  *(swift_allocObject() + 16) = v1;
  type metadata accessor for _ViewModifier_Content<TabPlacementModifier>();
  lazy protocol witness table accessor for type _ViewModifier_Content<TabPlacementModifier> and conformance _ViewModifier_Content<A>();
  View.transformTrait<A>(_:transform:)();
}

void type metadata accessor for _ViewModifier_Content<TabPlacementModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<TabPlacementModifier>)
  {
    lazy protocol witness table accessor for type TabPlacementModifier and conformance TabPlacementModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<TabPlacementModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<TabPlacementModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<TabPlacementModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<TabPlacementModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<TabPlacementModifier>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<TabPlacementModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

SwiftUI::BorderedTableStyle __swiftcall BorderedTableStyle.init()()
{
  result.alternatingRowBackgrounds.guts = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

SwiftUI::BorderedTableStyle __swiftcall BorderedTableStyle.init(alternatesRowBackgrounds:)(Swift::Bool alternatesRowBackgrounds)
{
  result.alternatingRowBackgrounds.guts = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t View.buttonRepeatBehavior(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<ButtonRepeatBehavior>();
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  v9 = *a1;
  swift_getKeyPath();
  v13 = v9;
  View.environment<A>(_:_:)();

  v10 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ButtonRepeatBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ButtonRepeatBehavior> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<ButtonRepeatBehavior>);
  v12[1] = a3;
  v12[2] = v10;
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior();
  View.input<A>(_:)();
  return (*(v6 + 8))(v8, v5);
}

void type metadata accessor for _EnvironmentKeyWritingModifier<ButtonRepeatBehavior>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ButtonRepeatBehavior>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ButtonRepeatBehavior>);
    }
  }
}

uint64_t EnvironmentValues.buttonRepeatTiming.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatTiming.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatTiming.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>);

    return PropertyList.subscript.getter();
  }
}

uint64_t key path getter for EnvironmentValues.buttonRepeatTiming : EnvironmentValues@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatTiming.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatTiming.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.buttonRepeatTiming : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatTiming.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t EnvironmentValues.buttonRepeatTiming.setter()
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatTiming.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>);

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t EnvironmentValues.effectiveButtonRepeatTiming.getter@<X0>(void *a1@<X8>)
{
  if (!*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatBehavior.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>);
    result = PropertyList.subscript.getter();
    if (v6 == 1)
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatTiming.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>);
      result = PropertyList.subscript.getter();
      v4 = v5;
      goto LABEL_7;
    }

LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatBehavior.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>);

  PropertyList.Tracker.value<A>(_:for:)();

  if (v6 != 1)
  {
    goto LABEL_6;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatTiming.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>);

  PropertyList.Tracker.value<A>(_:for:)();

  v4 = v5;
LABEL_7:
  *a1 = v4;
  return result;
}

Swift::Int ButtonRepeatBehavior.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t EnvironmentValues.buttonRepeatBehavior.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatBehavior.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatBehavior.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>);

    return PropertyList.subscript.getter();
  }
}

uint64_t key path getter for EnvironmentValues.buttonRepeatBehavior : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatBehavior.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatBehavior.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.buttonRepeatBehavior : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatBehavior.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

Swift::Double_optional __swiftcall ButtonRepeatTiming.Iterator.next()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 >= 2)
  {
    if (v0[1] != *(v1 + 48))
    {
      goto LABEL_5;
    }

    LOBYTE(v3) = specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    v1 = *v0;
    v2 = *(*v0 + 16);
  }

  if (!v2)
  {
    LOBYTE(v3) = 0;
    goto LABEL_9;
  }

LABEL_5:
  v5 = v0[1];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 40);
    v0[1] = v7;
  }

LABEL_9:
  result.value = v4;
  result.is_nil = v3;
  return result;
}

void (*EnvironmentValues.buttonRepeatTiming.modify(void *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v3[2] = v1;
  v3[3] = *v1;
  v4 = v1[1];
  v3[4] = v4;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatTiming.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>);
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.buttonRepeatTiming.modify;
}

void EnvironmentValues.buttonRepeatTiming.modify(void **a1, char a2)
{
  v3 = *a1;
  (*a1)[1] = **a1;
  v4 = v3[4];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatTiming.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>);

  if (a2)
  {

    PropertyList.subscript.setter();
    if (v4)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  else
  {
    PropertyList.subscript.setter();
    if (v4)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  free(v3);
}

unint64_t lazy protocol witness table accessor for type ButtonRepeatBehavior and conformance ButtonRepeatBehavior()
{
  result = lazy protocol witness table cache variable for type ButtonRepeatBehavior and conformance ButtonRepeatBehavior;
  if (!lazy protocol witness table cache variable for type ButtonRepeatBehavior and conformance ButtonRepeatBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonRepeatBehavior and conformance ButtonRepeatBehavior);
  }

  return result;
}

void type metadata accessor for ViewInputFlagModifier<ButtonRepeatBehavior.HasCustomRepeatBehavior>()
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<ButtonRepeatBehavior.HasCustomRepeatBehavior>)
  {
    lazy protocol witness table accessor for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior();
    v0 = type metadata accessor for ViewInputFlagModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewInputFlagModifier<ButtonRepeatBehavior.HasCustomRepeatBehavior>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ButtonRepeatBehavior> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ButtonRepeatBehavior.Guts and conformance ButtonRepeatBehavior.Guts()
{
  result = lazy protocol witness table cache variable for type ButtonRepeatBehavior.Guts and conformance ButtonRepeatBehavior.Guts;
  if (!lazy protocol witness table cache variable for type ButtonRepeatBehavior.Guts and conformance ButtonRepeatBehavior.Guts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonRepeatBehavior.Guts and conformance ButtonRepeatBehavior.Guts);
  }

  return result;
}

uint64_t GlassButtonMenuStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  *a3 = *a1;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = a2;
  outlined copy of AppIntentExecutor?(v3);

  return outlined copy of AppIntentExecutor?(v5);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>>();
    lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ViewInputFlagModifier<ApplyGlassButtonConfiguration> and conformance ViewInputFlagModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>>)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>();
    type metadata accessor for MenuStyleModifier<_BorderedButtonMenuStyle>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ApplyGlassButtonConfiguration>, lazy protocol witness table accessor for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration, &type metadata for ApplyGlassButtonConfiguration, MEMORY[0x1E697FD28]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>)
  {
    type metadata accessor for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>();
    type metadata accessor for MenuStyleModifier<_BorderedButtonMenuStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<_BorderedButtonMenuStyle>, lazy protocol witness table accessor for type _BorderedButtonMenuStyle and conformance _BorderedButtonMenuStyle, &type metadata for _BorderedButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>);
    }
  }
}

void type metadata accessor for MenuStyleModifier<_BorderedButtonMenuStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>();
    lazy protocol witness table accessor for type Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content> and conformance Menu<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t View.buttonOutset(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t key path setter for _ButtonGesture.action : _ButtonGesture(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  a2[1] = v5;
  return result;
}

uint64_t _ButtonGesture.action.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _ButtonGesture.action.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t key path getter for _ButtonGesture.pressingAction : _ButtonGesture@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of AppIntentExecutor?(v3);
}

uint64_t key path setter for _ButtonGesture.pressingAction : _ButtonGesture(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  outlined copy of AppIntentExecutor?(v3);
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}

uint64_t _ButtonGesture.pressingAction.getter()
{
  v1 = *(v0 + 16);
  outlined copy of AppIntentExecutor?(v1);
  return v1;
}

uint64_t _ButtonGesture.pressingAction.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*(v2 + 16));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t _ButtonGesture.init(action:pressing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  return result;
}

uint64_t _ButtonGesture.internalBody.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v7 = *v1;
  v8[0] = v3;
  *(v8 + 9) = *(v1 + 25);
  closure #1 in _ButtonGesture.internalBody.getter(&v7, a1);
  *(a1 + 72) = swift_getKeyPath();
  *(a1 + 80) = 0;
  v4 = v8[0];
  *(a1 + 88) = v7;
  *(a1 + 104) = v4;
  *(a1 + 113) = *(v8 + 9);
  return outlined init with copy of _ButtonGesture(&v7, &v6);
}

__n128 closure #1 in _ButtonGesture.internalBody.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    v7 = 0;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v8 = partial apply for closure #1 in closure #1 in closure #1 in _ButtonGesture.internalBody.getter;
  }

  else
  {
    v8 = 0;
    v6 = 0;
    v7 = -1;
  }

  v9 = swift_allocObject();
  v10 = *(a1 + 16);
  v9[1] = *a1;
  v9[2] = v10;
  *(v9 + 41) = *(a1 + 25);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  outlined copy of AppIntentExecutor?(v4);
  outlined init with copy of _ButtonGesture(a1, v14);
  MapGesture.init(_:)();
  result = v14[0];
  *a2 = v8;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = partial apply for closure #2 in closure #1 in _ButtonGesture.internalBody.getter;
  *(a2 + 32) = v9;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  *(a2 + 56) = result;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in _ButtonGesture.internalBody.getter(char a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 == 2;
  type metadata accessor for MainActor();
  v7[2] = a2;
  v7[3] = a3;
  v8 = v5;
  return specialized static MainActor.assumeIsolated<A>(_:file:line:)(partial apply for closure #1 in closure #1 in closure #1 in closure #1 in _ButtonGesture.internalBody.getter, v7);
}

uint64_t closure #2 in closure #1 in _ButtonGesture.internalBody.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MainActor();
  v6[2] = a4;
  return specialized static MainActor.assumeIsolated<A>(_:file:line:)(partial apply for closure #1 in closure #2 in closure #1 in _ButtonGesture.internalBody.getter, v6);
}

double _ButtonGesture.LegacyBody.body.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  v14 = specialized Environment.wrappedValue.getter(*v1, *(v1 + 8) | (*(v1 + 9) << 8));
  if (v15)
  {
    v24 = v4;
    *&v25 = a1;
    static _GraphInputs.defaultInterfaceIdiom.getter();
    v16 = v26;
    v31 = v26;
    v17 = 25.0;
    if ((AnyInterfaceIdiom.accepts<A>(_:)() & 1) == 0)
    {
      v31 = v16;
      if (AnyInterfaceIdiom.accepts<A>(_:)())
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 70.0;
      }
    }

    v4 = v24;
    a1 = v25;
  }

  else
  {
    v17 = *&v14;
  }

  if (v13)
  {
    v12 = 0.0;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  *(v18 + 24) = v8;
  *&v26 = v17;
  *(&v26 + 1) = v12;
  v27 = v10;
  v28 = v11;
  v29 = partial apply for closure #1 in Gesture<>.callbacks(pressing:pressed:);
  v30 = v18;
  outlined copy of AppIntentExecutor?(v10);
  type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>();
  lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>);

  Gesture.cancellable()();
  v19 = v29;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v27);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v19);
  MapGesture.init(_:)();
  v20 = *(v5 + 32);
  v25 = v26;
  v20(a1, v7, v4);
  type metadata accessor for ModifierGesture<MapGesture<LegacyButtonGesture.Value, ()>, <<opaque return type of Gesture.truePreference<A>(_:)>>.0>();
  result = *&v25;
  *(a1 + *(v21 + 52)) = v25;
  return result;
}

uint64_t EnvironmentValues.buttonOutset.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonOutsetKey>, &unk_1F000EC68, &protocol witness table for ButtonOutsetKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonOutsetKey>, &unk_1F000EC68, &protocol witness table for ButtonOutsetKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.buttonOutset : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonOutsetKey>, &unk_1F000EC68, &protocol witness table for ButtonOutsetKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonOutsetKey>, &unk_1F000EC68, &protocol witness table for ButtonOutsetKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.buttonOutset : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonOutsetKey>, &unk_1F000EC68, &protocol witness table for ButtonOutsetKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type _ButtonGesture and conformance _ButtonGesture()
{
  result = lazy protocol witness table cache variable for type _ButtonGesture and conformance _ButtonGesture;
  if (!lazy protocol witness table cache variable for type _ButtonGesture and conformance _ButtonGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ButtonGesture and conformance _ButtonGesture);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ButtonGesture and conformance _ButtonGesture;
  if (!lazy protocol witness table cache variable for type _ButtonGesture and conformance _ButtonGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ButtonGesture and conformance _ButtonGesture);
  }

  return result;
}

uint64_t EnvironmentValues.buttonOutset.setter()
{
  type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonOutsetKey>, &unk_1F000EC68, &protocol witness table for ButtonOutsetKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t protocol witness for PubliclyPrimitiveGesture.internalBody.getter in conformance _ButtonGesture@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v7 = *v1;
  v8[0] = v3;
  *(v8 + 9) = *(v1 + 25);
  closure #1 in _ButtonGesture.internalBody.getter(&v7, a1);
  *(a1 + 72) = swift_getKeyPath();
  *(a1 + 80) = 0;
  v4 = v8[0];
  *(a1 + 88) = v7;
  *(a1 + 104) = v4;
  *(a1 + 113) = *(v8 + 9);
  return outlined init with copy of _ButtonGesture(&v7, &v6);
}

uint64_t ButtonActionModifier.PlatformAction.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ButtonActionModifier();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t ButtonActionModifier.PlatformAction.value.getter()
{
  v0 = type metadata accessor for ButtonActionModifier();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - v2;
  ButtonActionModifier.PlatformAction.modifier.getter(&v7 - v2);
  v4 = *&v3[*(v0 + 36)];
  v5 = *(v1 + 8);

  v5(v3, v0);
  return v4;
}

uint64_t protocol witness for Rule.value.getter in conformance ButtonActionModifier<A>.PlatformAction@<X0>(uint64_t (**a1)()@<X8>)
{
  result = ButtonActionModifier.PlatformAction.value.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t protocol witness for static PressableEventValue.isPressing(_:) in conformance LegacyButtonGesture.Value(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*(a1 + 25) == 2)
  {
    v2 = *(a1 + 24);
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 25) > 1u)
  {
    v1 = v2;
  }

  return v1 & 1;
}

uint64_t LegacyButtonGesture.body.getter(double a1, double a2)
{
  type metadata accessor for <<opaque return type of Gesture.dependency(_:)>>.0(0, &lazy cache variable for type metadata for <<opaque return type of Gesture.dependency(_:)>>.0, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>, &lazy protocol witness table cache variable for type SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>> and conformance SizeGesture<A>, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17[-v7];
  type metadata accessor for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v18 = partial apply for closure #1 in LegacyButtonGesture.body.getter;
  v19 = v12;
  v17[15] = 3;
  type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>(0);
  v14 = v13;
  v15 = lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>> and conformance SizeGesture<A>, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>);
  Gesture.dependency(_:)();

  v18 = v14;
  v19 = v15;
  swift_getOpaqueTypeConformance2();
  Gesture.eventFilter<A>(forType:_:)();
  (*(v6 + 8))(v8, v5);
  lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>);
  Gesture.eventFilter<A>(forType:_:)();
  return outlined destroy of ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>(v11, type metadata accessor for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>);
}

uint64_t closure #2 in closure #1 in LegacyButtonGesture.body.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v6 = *(result + 16);
  v63 = *result;
  v64 = v6;
  v68 = *(result + 80);
  v7 = *(result + 48);
  v65 = *(result + 32);
  v66 = v7;
  v67 = *(result + 64);
  v8 = v63;
  v9 = v64;
  if (HIBYTE(v68) > 1u)
  {
    if (HIBYTE(v68) != 2)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v10 = 768;
      goto LABEL_16;
    }

    v11 = -a3;
    v12 = 0;
    v13 = 0;
    v14 = result;
    v71 = CGRectInset(*(&a4 - 2), v11, v11);
    x = v71.origin.x;
    y = v71.origin.y;
    width = v71.size.width;
    height = v71.size.height;
    v50 = v63;
    v51 = v64;
    v52 = *(v14 + 24);
    v53 = *(v14 + 40);
    v54[0] = *(v14 + 56);
    *(v54 + 9) = *(v14 + 65);
    SpatialEvent.location.getter();
    v46 = v20;
    v48 = v19;
    v55 = v63;
    v56 = v64;
    v57 = *(v14 + 24);
    v58 = *(v14 + 40);
    v59[0] = *(v14 + 56);
    *(v59 + 9) = *(v14 + 65);
    SpatialEvent.location.getter();
    v69.x = v21;
    v69.y = v22;
    v72.origin.x = x;
    v72.origin.y = y;
    v72.size.width = width;
    v72.size.height = height;
    result = CGRectContainsPoint(v72, v69);
    if (result)
    {
      *&v23 = v48;
      *(&v23 + 1) = v46;
      v24 = *(&v63 + 1);
      v25 = 2;
      v26 = 1;
    }

    else
    {
      v24 = 0;
      v26 = 0;
      v23 = 0uLL;
      v25 = 3;
    }

    *a2 = v23;
    *(a2 + 16) = v24;
    *(a2 + 24) = v26;
    *(a2 + 25) = v25;
  }

  else
  {
    if (!HIBYTE(v68) && v64 == 1)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v10 = 2;
LABEL_16:
      *(a2 + 24) = v10;
      return result;
    }

    v27 = *(result + 40);
    v60 = *(result + 24);
    v61 = v27;
    v62[0] = *(result + 56);
    *(v62 + 9) = *(result + 65);
    v28 = -a3;
    v29 = MEMORY[0x1E697DF80];
    v30 = MEMORY[0x1E697DE58];
    outlined init with copy of ButtonPressingAction?(&v63, &v50, &lazy cache variable for type metadata for GesturePhase<SpatialEvent>, MEMORY[0x1E697DF80], MEMORY[0x1E697DE58]);
    v73.origin.x = 0.0;
    v73.origin.y = 0.0;
    v73.size.width = a4;
    v73.size.height = a5;
    v74 = CGRectInset(v73, v28, v28);
    v33 = v74.origin.x;
    v34 = v74.origin.y;
    v35 = v74.size.width;
    v36 = v74.size.height;
    v52 = v60;
    v50 = v8;
    v51 = v9;
    v53 = v61;
    v54[0] = v62[0];
    *(v54 + 9) = *(v62 + 9);
    SpatialEvent.location.getter();
    v47 = v38;
    v49 = v37;
    v55 = v8;
    v56 = v9;
    v57 = v60;
    v58 = v61;
    v59[0] = v62[0];
    *(v59 + 9) = *(v62 + 9);
    SpatialEvent.location.getter();
    v70.x = v39;
    v70.y = v40;
    v75.origin.x = v33;
    v75.origin.y = v34;
    v75.size.width = v35;
    v75.size.height = v36;
    v41 = CGRectContainsPoint(v75, v70);
    result = _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_2(&v63, &lazy cache variable for type metadata for GesturePhase<SpatialEvent>, v29, v30);
    v42.i64[0] = v49;
    v42.i64[1] = v47;
    v43 = *(&v8 + 1);
    if (v41)
    {
      v44 = -1;
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    *a2 = vandq_s8(v42, vdupq_n_s64(v44));
    *(a2 + 16) = v43;
    if (v41)
    {
      v45 = 1;
    }

    else
    {
      v45 = 2;
    }

    *(a2 + 24) = v45;
    *(a2 + 25) = 0;
  }

  return result;
}

void (*EnvironmentValues.buttonOutset.modify(void *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v3[5] = *v1;
  v5 = v1[1];
  v3[6] = v5;
  type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonOutsetKey>, &unk_1F000EC68, &protocol witness table for ButtonOutsetKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>();
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v6 = *(v4 + 24);
  *v4 = v4[2];
  *(v4 + 8) = v6;
  return EnvironmentValues.buttonOutset.modify;
}

void EnvironmentValues.buttonOutset.modify(void **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = (*a1)[6];
  (*a1)[2] = **a1;
  v1[24] = v2;
  type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonOutsetKey>, &unk_1F000EC68, &protocol witness table for ButtonOutsetKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  free(v1);
}

uint64_t assignWithTake for _ButtonGesture(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) = v4;
      *(a1 + 24) = v6;
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_8;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = *(a2 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;

LABEL_8:
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

unint64_t lazy protocol witness table accessor for type StaticIf<ImprovedButtonGestureFeature, _MapGesture<PrimitiveButtonGesture, ()>, _ButtonGesture.LegacyBody> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<ImprovedButtonGestureFeature, _MapGesture<PrimitiveButtonGesture, ()>, _ButtonGesture.LegacyBody> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<ImprovedButtonGestureFeature, _MapGesture<PrimitiveButtonGesture, ()>, _ButtonGesture.LegacyBody> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<ImprovedButtonGestureFeature, _MapGesture<PrimitiveButtonGesture, ()>, _ButtonGesture.LegacyBody>();
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type _MapGesture<PrimitiveButtonGesture, ()> and conformance _MapGesture<A, B>, type metadata accessor for _MapGesture<PrimitiveButtonGesture, ()>);
    lazy protocol witness table accessor for type _ButtonGesture.LegacyBody and conformance _ButtonGesture.LegacyBody();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ImprovedButtonGestureFeature, _MapGesture<PrimitiveButtonGesture, ()>, _ButtonGesture.LegacyBody> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for StaticIf<ImprovedButtonGestureFeature, _MapGesture<PrimitiveButtonGesture, ()>, _ButtonGesture.LegacyBody>()
{
  if (!lazy cache variable for type metadata for StaticIf<ImprovedButtonGestureFeature, _MapGesture<PrimitiveButtonGesture, ()>, _ButtonGesture.LegacyBody>)
  {
    type metadata accessor for _MapGesture<PrimitiveButtonGesture, ()>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<ImprovedButtonGestureFeature, _MapGesture<PrimitiveButtonGesture, ()>, _ButtonGesture.LegacyBody>);
    }
  }
}

void type metadata accessor for _MapGesture<PrimitiveButtonGesture, ()>()
{
  if (!lazy cache variable for type metadata for _MapGesture<PrimitiveButtonGesture, ()>)
  {
    v0 = type metadata accessor for _MapGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _MapGesture<PrimitiveButtonGesture, ()>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ButtonGesture.LegacyBody and conformance _ButtonGesture.LegacyBody()
{
  result = lazy protocol witness table cache variable for type _ButtonGesture.LegacyBody and conformance _ButtonGesture.LegacyBody;
  if (!lazy protocol witness table cache variable for type _ButtonGesture.LegacyBody and conformance _ButtonGesture.LegacyBody)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ButtonGesture.LegacyBody and conformance _ButtonGesture.LegacyBody);
  }

  return result;
}

uint64_t destroy for _ButtonGesture.LegacyBody(uint64_t a1)
{
  outlined consume of Environment<CGFloat?>.Content(*a1, *(a1 + 8), *(a1 + 9));

  if (*(a1 + 32))
  {
  }

  return result;
}

uint64_t initializeWithCopy for _ButtonGesture.LegacyBody(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 9);
  v6 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v6, v5);
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 9) = v5;
  v7 = *(a2 + 32);
  v8 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v8;

  if (v7)
  {
    v9 = *(a2 + 40);
    *(a1 + 32) = v7;
    *(a1 + 40) = v9;
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithCopy for _ButtonGesture.LegacyBody(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 9);
  v6 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v6, v5);
  v7 = *a1;
  v8 = *(a1 + 9);
  *a1 = v4;
  v9 = *(a1 + 8);
  *(a1 + 8) = v6;
  *(a1 + 9) = v5;
  outlined consume of Environment<CGFloat?>.Content(v7, v9, v8);
  v10 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v10;

  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (v11)
    {
      v13 = *(a2 + 40);
      *(a1 + 32) = v11;
      *(a1 + 40) = v13;

      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 32) = *(a2 + 32);
    goto LABEL_8;
  }

  if (!v11)
  {

    goto LABEL_7;
  }

  v12 = *(a2 + 40);
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;

LABEL_8:
  v14 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v14;
  return a1;
}

uint64_t assignWithTake for _ButtonGesture.LegacyBody(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  v6 = *a1;
  v7 = *(a1 + 9);
  *a1 = *a2;
  v8 = *(a1 + 8);
  *(a1 + 8) = v4;
  *(a1 + 9) = v5;
  outlined consume of Environment<CGFloat?>.Content(v6, v8, v7);
  *(a1 + 16) = *(a2 + 16);

  v9 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (v9)
    {
      v11 = *(a2 + 40);
      *(a1 + 32) = v9;
      *(a1 + 40) = v11;
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 32) = *(a2 + 32);
    goto LABEL_8;
  }

  if (!v9)
  {

    goto LABEL_7;
  }

  v10 = *(a2 + 40);
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;

LABEL_8:
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ButtonGesture.LegacyBody(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _ButtonGesture.LegacyBody(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t initializeWithCopy for PrimitiveButtonGesture(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 16);
  if (v4 == 255)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = v4 & 1;
    outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
  }

  v8 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v8;
  *(a1 + 40) = a2[5];
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for PrimitiveButtonGesture(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 16);
  if (*(a1 + 16) == 255)
  {
    if (v4 == 255)
    {
      v12 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a1 = v12;
    }

    else
    {
      v8 = *a2;
      v9 = *(a2 + 1);
      v10 = v4 & 1;
      outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
      *a1 = v8;
      *(a1 + 8) = v9;
      *(a1 + 16) = v10;
    }
  }

  else if (v4 == 255)
  {
    outlined destroy of ButtonPressingAction(a1);
    v11 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v11;
  }

  else
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    v7 = v4 & 1;
    outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
  }

  v13 = *(a2 + 4);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 32) = v13;

  v14 = *(a2 + 5);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v14;
  return a1;
}

uint64_t assignWithTake for PrimitiveButtonGesture(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 255)
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 16);
  if (v4 == 255)
  {
    outlined destroy of ButtonPressingAction(a1);
LABEL_5:
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_6;
  }

  *a1 = *a2;
  *(a1 + 16) = v4 & 1;
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
LABEL_6:
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t specialized implicit closure #1 in _GraphInputs.buttonOutset.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonOutsetKey>, &unk_1F000EC68, &protocol witness table for ButtonOutsetKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonOutsetKey>, &unk_1F000EC68, &protocol witness table for ButtonOutsetKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t static PrimitiveButtonGesture._makeGesture(gesture:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a2[5];
  v25 = a2[4];
  v26 = v5;
  v27[0] = a2[6];
  *(v27 + 12) = *(a2 + 108);
  v6 = a2[1];
  v21 = *a2;
  v22 = v6;
  v7 = a2[3];
  v23 = a2[2];
  v24 = v7;
  type metadata accessor for <<opaque return type of Gesture.requiredTapCount(_:)>>.0();
  outlined init with copy of _GraphInputs(&v21, v15);
  if (one-time initialization token for buttonOutset != -1)
  {
    swift_once();
  }

  *&v11 = static CachedEnvironment.ID.buttonOutset;
  swift_beginAccess();
  type metadata accessor for CGFloat?(0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  v8 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  *v15 = v21;
  *&v15[16] = v22;
  v16 = v23;
  _GraphInputs.interfaceIdiom.getter();
  *v15 = v4;
  *&v15[4] = v8;
  *&v15[8] = v11;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type PrimitiveButtonGesture.Child and conformance PrimitiveButtonGesture.Child();
  Attribute.init<A>(body:value:flags:update:)();
  v18 = v25;
  v19 = v26;
  v20[0] = v27[0];
  *(v20 + 12) = *(v27 + 12);
  *v15 = v21;
  *&v15[16] = v22;
  v16 = v23;
  v17 = v24;
  type metadata accessor for ModifierGesture<CallbacksGesture<PrimitiveButtonGestureCallbacks>, PrimitiveButtonGestureCore>();
  v12 = v9;
  v13 = lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PrimitiveButtonGestureCallbacks>, PrimitiveButtonGestureCore> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PrimitiveButtonGestureCallbacks>, PrimitiveButtonGestureCore>);
  swift_getOpaqueTypeConformance2();
  static Gesture.makeDebuggableGesture(gesture:inputs:)();
  *v15 = v12;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for CGFloat?(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E697DE58]);
  lazy protocol witness table accessor for type PrimitiveButtonGesture.Phase and conformance PrimitiveButtonGesture.Phase();
  Attribute.init<A>(body:value:flags:update:)();

  _GestureOutputs.init(phase:)();
  outlined destroy of _GraphInputs(&v21);
  *(a3 + 4) = HIDWORD(v12);

  *(a3 + 8) = v13;
  *(a3 + 16) = v14;
  return result;
}

uint64_t PrimitiveButtonGesture.Child.value.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  type metadata accessor for CGFloat?(0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  if (*(Value + 8))
  {
    *&v20[0] = v1;
    *(&v20[0] + 1) = v2;
    v4 = 25.0;
    if ((AnyInterfaceIdiom.accepts<A>(_:)() & 1) == 0)
    {
      *&v20[0] = v1;
      *(&v20[0] + 1) = v2;
      if (AnyInterfaceIdiom.accepts<A>(_:)())
      {
        v4 = 0.0;
      }

      else
      {
        v4 = 70.0;
      }
    }
  }

  else
  {
    v4 = *Value;
  }

  v5 = AGGraphGetValue();
  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  v8 = AGGraphGetValue();
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  outlined copy of ButtonPressingAction?(*v8, v10, v11);
  v12 = AGGraphGetValue();
  v14 = *(v12 + 24);
  v13 = *(v12 + 32);
  v21 = v7;
  outlined copy of ButtonPressingAction?(v9, v10, v11);

  outlined consume of ButtonPressingAction?(v9, v10, v11);
  *&v16 = v4;
  *(&v16 + 1) = v6;
  LOBYTE(v17) = v7;
  *(&v17 + 1) = v9;
  *&v18 = v10;
  BYTE8(v18) = v11;
  *&v19 = v14;
  *(&v19 + 1) = v13;
  type metadata accessor for ModifierGesture<CallbacksGesture<PrimitiveButtonGestureCallbacks>, PrimitiveButtonGestureCore>();
  lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PrimitiveButtonGestureCallbacks>, PrimitiveButtonGestureCore> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PrimitiveButtonGestureCallbacks>, PrimitiveButtonGestureCore>);
  Gesture.requiredTapCount(_:)();
  v20[0] = v16;
  v20[1] = v17;
  v20[2] = v18;
  v20[3] = v19;
  return _s7SwiftUI16PlatformItemListV0D0VWOhTm_4(v20, type metadata accessor for ModifierGesture<CallbacksGesture<PrimitiveButtonGestureCallbacks>, PrimitiveButtonGestureCore>);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance PrimitiveButtonGesture.Child@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for <<opaque return type of Gesture.requiredTapCount(_:)>>.0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for Rule.value.getter in conformance PrimitiveButtonGesture.Phase()
{
  type metadata accessor for CGFloat?(0, &lazy cache variable for type metadata for GesturePhase<PrimitiveButtonGestureCore.Value>, &type metadata for PrimitiveButtonGestureCore.Value, MEMORY[0x1E697DE58]);
  AGGraphGetValue();
  return GesturePhase.withValue<A>(_:)();
}

void type metadata accessor for <<opaque return type of Gesture.requiredTapCount(_:)>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.requiredTapCount(_:)>>.0)
  {
    type metadata accessor for ModifierGesture<CallbacksGesture<PrimitiveButtonGestureCallbacks>, PrimitiveButtonGestureCore>();
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PrimitiveButtonGestureCallbacks>, PrimitiveButtonGestureCore> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PrimitiveButtonGestureCallbacks>, PrimitiveButtonGestureCore>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.requiredTapCount(_:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.requiredTapCount(_:)>>.0)
  {
    type metadata accessor for ModifierGesture<CoordinateSpaceGesture<TappableSpatialEvent>, ModifierGesture<RepeatGesture<TappableSpatialEvent>, SingleTapGesture<TappableSpatialEvent>>>();
    lazy protocol witness table accessor for type AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<TappableSpatialEvent>, ModifierGesture<RepeatGesture<TappableSpatialEvent>, SingleTapGesture<TappableSpatialEvent>>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<TappableSpatialEvent>, ModifierGesture<RepeatGesture<TappableSpatialEvent>, SingleTapGesture<TappableSpatialEvent>>>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.requiredTapCount(_:)>>.0);
    }
  }
}

uint64_t PrimitiveButtonGestureCore.body.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v23[2] = a3;
  type metadata accessor for <<opaque return type of Gesture.dependency(_:)>>.0(0, &lazy cache variable for type metadata for <<opaque return type of Gesture.dependency(_:)>>.0, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>, &lazy protocol witness table cache variable for type SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>> and conformance SizeGesture<A>, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v23 - v10;
  type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>();
  v23[1] = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2 & 1;
  v25 = partial apply for closure #1 in PrimitiveButtonGestureCore.body.getter;
  v26 = v18;
  v24 = 3;
  type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>(0);
  v20 = v19;
  v21 = lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>> and conformance SizeGesture<A>, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>);
  Gesture.dependency(_:)();

  v25 = v20;
  v26 = v21;
  swift_getOpaqueTypeConformance2();
  Gesture.eventFilter<A>(forType:_:)();
  (*(v9 + 8))(v11, v8);
  lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>);
  Gesture.eventFilter<A>(forType:_:)();
  outlined destroy of ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>(v14, type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>);
  lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>);
  Gesture.cancellable()();
  return outlined destroy of ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>(v17, type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>);
}

uint64_t closure #2 in closure #1 in PrimitiveButtonGestureCore.body.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>)
{
  v8 = result;
  v10 = *result;
  v11 = *(result + 8);
  v12 = *(result + 16);
  if (*(result + 81) > 1u)
  {
    if (*(result + 81) == 3)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v13 = 768;
      goto LABEL_7;
    }

    v31 = *result;
    v32 = v11;
    v33 = v12;
    v15 = *(result + 40);
    v34 = *(result + 24);
    origin = v15;
    v36[0] = *(result + 56);
    *(v36 + 9) = *(result + 65);
    SpatialEvent.location.getter();
    v37.x = v16;
    v37.y = v17;
    v39.origin.x = 0.0;
    v39.origin.y = 0.0;
    v39.size.width = a4;
    v39.size.height = a5;
    if (CGRectContainsPoint(v39, v37))
    {
      v18 = 0;
    }

    else
    {
      v40.origin.x = 0.0;
      v40.origin.y = 0.0;
      v40.size.width = a4;
      v40.size.height = a5;
      v41 = CGRectInset(v40, -a3, -a3);
      x = v41.origin.x;
      y = v41.origin.y;
      width = v41.size.width;
      height = v41.size.height;
      v31 = v10;
      v32 = v11;
      v33 = v12;
      v41.origin = *(v8 + 40);
      v34 = *(v8 + 24);
      origin = v41.origin;
      v36[0] = *(v8 + 56);
      *(v36 + 9) = *(v8 + 65);
      SpatialEvent.location.getter();
      v38.x = v24;
      v38.y = v25;
      v42.origin.x = x;
      v42.origin.y = y;
      v42.size.width = width;
      v42.size.height = height;
      if (CGRectContainsPoint(v42, v38))
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }
    }

    v31 = v10;
    v32 = v11;
    v33 = v12;
    v26 = *(v8 + 40);
    v34 = *(v8 + 24);
    origin = v26;
    v36[0] = *(v8 + 56);
    *(v36 + 9) = *(v8 + 65);
    result = SpatialEvent.location.getter();
    if (v18 > 1u)
    {
      v29 = 0;
      v18 = 0;
      v27 = 0uLL;
      v30 = 3;
    }

    else
    {
      *(&v27 + 1) = v28;
      v29 = v11;
      v30 = 2;
    }

    *a2 = v27;
    *(a2 + 16) = v29;
    *(a2 + 24) = v18;
    *(a2 + 25) = v30;
  }

  else if (*(result + 81))
  {
    v14 = *(result + 40);
    v34 = *(result + 24);
    origin = v14;
    v36[0] = *(result + 56);
    *(v36 + 9) = *(result + 65);
    v31 = v10;
    v32 = v11;
    v33 = v12;
    result = PrimitiveButtonGestureCore.makeValue(event:size:)(&v31, a2, a4, a5, a3);
    *(a2 + 25) = 1;
  }

  else
  {
    if (v12 == 1)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v13 = 3;
LABEL_7:
      *(a2 + 24) = v13;
      return result;
    }

    v19 = *(result + 40);
    v34 = *(result + 24);
    origin = v19;
    v36[0] = *(result + 56);
    *(v36 + 9) = *(result + 65);
    v31 = v10;
    v32 = v11;
    v33 = v12;
    result = PrimitiveButtonGestureCore.makeValue(event:size:)(&v31, a2, a4, a5, a3);
    *(a2 + 25) = 0;
  }

  return result;
}

uint64_t PrimitiveButtonGestureCore.makeValue(event:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>)
{
  v9 = *(a1 + 8);
  SpatialEvent.location.getter();
  v22.x = v10;
  v22.y = v11;
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = a3;
  v24.size.height = a4;
  if (CGRectContainsPoint(v24, v22))
  {
    v12 = 0;
  }

  else
  {
    v25.origin.x = 0.0;
    v25.origin.y = 0.0;
    v25.size.width = a3;
    v25.size.height = a4;
    v26 = CGRectInset(v25, -a5, -a5);
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
    SpatialEvent.location.getter();
    v23.x = v17;
    v23.y = v18;
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    if (CGRectContainsPoint(v27, v23))
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }
  }

  result = SpatialEvent.location.getter();
  *a2 = v20;
  *(a2 + 8) = v21;
  *(a2 + 16) = v9;
  *(a2 + 24) = v12;
  return result;
}

uint64_t (*PrimitiveButtonGestureCallbacks.dispatch(phase:state:)(uint64_t *a1, _BYTE *a2))()
{
  v4 = *(a1 + 24);
  result = *(a1 + 25);
  if (result > 1)
  {
    if (result == 2)
    {
      v9 = a1[1];
      v8 = a1[2];
      v10 = *a1;
      v33 = *v2;
      v34 = *(v2 + 16);
      v11 = v34;
      if (v34 != 255)
      {
        v12 = v33;
        v13 = *a2;
        if (v34)
        {
          if ((v13 - 1) >= 2)
          {
            goto LABEL_10;
          }
        }

        else if (v13 != 2)
        {
          goto LABEL_10;
        }

        v22 = swift_allocObject();
        v23 = v2[1];
        *(v22 + 40) = *v2;
        *(v22 + 16) = v12;
        *(v22 + 32) = v11 & 1;
        *(v22 + 56) = v23;
        *(v22 + 72) = *(v2 + 4);
        *(v22 + 80) = v10;
        *(v22 + 88) = v9;
        *(v22 + 96) = v8;
        *(v22 + 104) = v4;
        *a2 = 0;
        v24 = MEMORY[0x1E69E6720];
        outlined init with copy of ButtonPressingAction?(&v33, v32, &lazy cache variable for type metadata for ButtonPressingAction?, &type metadata for ButtonPressingAction, MEMORY[0x1E69E6720]);
        outlined init with copy of ButtonPressingAction?(&v33, v32, &lazy cache variable for type metadata for ButtonPressingAction?, &type metadata for ButtonPressingAction, v24);

        return partial apply for closure #2 in PrimitiveButtonGestureCallbacks.dispatch(phase:state:);
      }

LABEL_10:
      v15 = swift_allocObject();
      v16 = v2[1];
      *(v15 + 16) = *v2;
      *(v15 + 32) = v16;
      *(v15 + 48) = *(v2 + 4);
      *(v15 + 56) = v10;
      *(v15 + 64) = v9;
      *(v15 + 72) = v8;
      *(v15 + 80) = v4;
      *a2 = 0;
      outlined init with copy of ButtonPressingAction?(&v33, v32, &lazy cache variable for type metadata for ButtonPressingAction?, &type metadata for ButtonPressingAction, MEMORY[0x1E69E6720]);

      return partial apply for closure #3 in PrimitiveButtonGestureCallbacks.dispatch(phase:state:);
    }

    v17 = *(v2 + 16);
    if (v17 != 255)
    {
      v18 = *v2;
      v19 = *(v2 + 1);
      v20 = *a2;
      if (v17)
      {
        if ((v20 - 1) >= 2)
        {
          goto LABEL_14;
        }
      }

      else if (v20 != 2)
      {
        goto LABEL_14;
      }

      v26 = swift_allocObject();
      *(v26 + 16) = v18;
      *(v26 + 24) = v19;
      *(v26 + 32) = v17 & 1;
      *a2 = 0;
      outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
      return partial apply for closure #1 in PrimitiveButtonGestureCallbacks.dispatch(phase:state:);
    }

LABEL_14:
    result = 0;
    *a2 = 0;
    return result;
  }

  if (!result)
  {
    return result;
  }

  v6 = *a2;
  if (v4 >= 2)
  {
    if (v6 != 1)
    {
      v7 = 1;
      goto LABEL_22;
    }

    return 0;
  }

  if (v6 == 2)
  {
    return 0;
  }

  v7 = 2;
LABEL_22:
  v27 = *(v2 + 16);
  if (v27 == 255 || v6 == v7 || (((v6 - 1) < 2) & v27) != 0)
  {
    result = 0;
    *a2 = v7;
  }

  else
  {
    v28 = *v2;
    v29 = *(v2 + 1);
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    *(v31 + 24) = v29;
    *(v31 + 32) = v27 & 1;
    *(v31 + 33) = v7;
    *a2 = v7;
    outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
    return partial apply for closure #4 in PrimitiveButtonGestureCallbacks.dispatch(phase:state:);
  }

  return result;
}

uint64_t (*protocol witness for GestureCallbacks.cancel(state:) in conformance PrimitiveButtonGestureCallbacks(unsigned __int8 *a1))()
{
  v2 = *(v1 + 16);
  if (v2 == 255)
  {
    return 0;
  }

  v3 = *a1;
  v4 = *v1;
  v5 = v1[1];
  if (v2)
  {
    if ((v3 - 1) > 1)
    {
      return 0;
    }
  }

  else if (v3 != 2)
  {
    return 0;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v2 & 1;
  outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
  return partial apply for closure #1 in PrimitiveButtonGestureCallbacks.cancel(state:);
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonGesture.Child and conformance PrimitiveButtonGesture.Child()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonGesture.Child and conformance PrimitiveButtonGesture.Child;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonGesture.Child and conformance PrimitiveButtonGesture.Child)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonGesture.Child and conformance PrimitiveButtonGesture.Child);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonGesture.Phase and conformance PrimitiveButtonGesture.Phase()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonGesture.Phase and conformance PrimitiveButtonGesture.Phase;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonGesture.Phase and conformance PrimitiveButtonGesture.Phase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonGesture.Phase and conformance PrimitiveButtonGesture.Phase);
  }

  return result;
}

uint64_t outlined copy of ButtonPressingAction?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
  }

  return result;
}

uint64_t outlined consume of ButtonPressingAction?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
  }

  return result;
}

void type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>)
  {
    type metadata accessor for CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>();
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>> and conformance CallbacksGesture<A>, type metadata accessor for CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>);
    lazy protocol witness table accessor for type LegacyButtonGesture and conformance LegacyButtonGesture();
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>);
    }
  }
}

void type metadata accessor for CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>()
{
  if (!lazy cache variable for type metadata for CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>)
  {
    _s7SwiftUI16CallbacksGestureVyAA015PrimitiveButtondC033_2218E1141B3D7C3A65B6697591AFB638LLVGMaTm_0(255, &lazy cache variable for type metadata for PressableGestureCallbacks<LegacyButtonGesture.Value>, lazy protocol witness table accessor for type LegacyButtonGesture.Value and conformance LegacyButtonGesture.Value, &unk_1F000EFF8, type metadata accessor for PressableGestureCallbacks);
    lazy protocol witness table accessor for type PressableGestureCallbacks<LegacyButtonGesture.Value> and conformance PressableGestureCallbacks<A>();
    v0 = type metadata accessor for CallbacksGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>);
    }
  }
}

void _s7SwiftUI16CallbacksGestureVyAA015PrimitiveButtondC033_2218E1141B3D7C3A65B6697591AFB638LLVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type LegacyButtonGesture.Value and conformance LegacyButtonGesture.Value()
{
  result = lazy protocol witness table cache variable for type LegacyButtonGesture.Value and conformance LegacyButtonGesture.Value;
  if (!lazy protocol witness table cache variable for type LegacyButtonGesture.Value and conformance LegacyButtonGesture.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LegacyButtonGesture.Value and conformance LegacyButtonGesture.Value);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LegacyButtonGesture.Value and conformance LegacyButtonGesture.Value;
  if (!lazy protocol witness table cache variable for type LegacyButtonGesture.Value and conformance LegacyButtonGesture.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LegacyButtonGesture.Value and conformance LegacyButtonGesture.Value);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PressableGestureCallbacks<LegacyButtonGesture.Value> and conformance PressableGestureCallbacks<A>()
{
  result = lazy protocol witness table cache variable for type PressableGestureCallbacks<LegacyButtonGesture.Value> and conformance PressableGestureCallbacks<A>;
  if (!lazy protocol witness table cache variable for type PressableGestureCallbacks<LegacyButtonGesture.Value> and conformance PressableGestureCallbacks<A>)
  {
    _s7SwiftUI16CallbacksGestureVyAA015PrimitiveButtondC033_2218E1141B3D7C3A65B6697591AFB638LLVGMaTm_0(255, &lazy cache variable for type metadata for PressableGestureCallbacks<LegacyButtonGesture.Value>, lazy protocol witness table accessor for type LegacyButtonGesture.Value and conformance LegacyButtonGesture.Value, &unk_1F000EFF8, type metadata accessor for PressableGestureCallbacks);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PressableGestureCallbacks<LegacyButtonGesture.Value> and conformance PressableGestureCallbacks<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LegacyButtonGesture and conformance LegacyButtonGesture()
{
  result = lazy protocol witness table cache variable for type LegacyButtonGesture and conformance LegacyButtonGesture;
  if (!lazy protocol witness table cache variable for type LegacyButtonGesture and conformance LegacyButtonGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LegacyButtonGesture and conformance LegacyButtonGesture);
  }

  return result;
}

void type metadata accessor for ModifierGesture<MapGesture<LegacyButtonGesture.Value, ()>, <<opaque return type of Gesture.truePreference<A>(_:)>>.0>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<MapGesture<LegacyButtonGesture.Value, ()>, <<opaque return type of Gesture.truePreference<A>(_:)>>.0>)
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(255, &lazy cache variable for type metadata for MapGesture<LegacyButtonGesture.Value, ()>, &unk_1F000EFF8, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E697DA98]);
    type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0();
    lazy protocol witness table accessor for type MapGesture<LegacyButtonGesture.Value, ()> and conformance MapGesture<A, B>();
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>();
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>);
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<MapGesture<LegacyButtonGesture.Value, ()>, <<opaque return type of Gesture.truePreference<A>(_:)>>.0>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MapGesture<LegacyButtonGesture.Value, ()> and conformance MapGesture<A, B>()
{
  result = lazy protocol witness table cache variable for type MapGesture<LegacyButtonGesture.Value, ()> and conformance MapGesture<A, B>;
  if (!lazy protocol witness table cache variable for type MapGesture<LegacyButtonGesture.Value, ()> and conformance MapGesture<A, B>)
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(255, &lazy cache variable for type metadata for MapGesture<LegacyButtonGesture.Value, ()>, &unk_1F000EFF8, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E697DA98]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapGesture<LegacyButtonGesture.Value, ()> and conformance MapGesture<A, B>);
  }

  return result;
}

uint64_t specialized static LegacyButtonGesture.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return (*(a2 + 24) ^ *(a1 + 24) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for PrimitiveButtonGestureCore.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PrimitiveButtonGestureCore.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

uint64_t destroy for PrimitiveButtonGesture(uint64_t a1)
{
  if (*(a1 + 16) != 255)
  {
    outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
  }
}

uint64_t initializeWithCopy for PrimitiveButtonGestureCallbacks(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 16);
  if (v4 == 255)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = v4 & 1;
    outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
  }

  v8 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v8;

  return a1;
}

uint64_t assignWithCopy for PrimitiveButtonGestureCallbacks(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 16);
  if (*(a1 + 16) == 255)
  {
    if (v4 == 255)
    {
      v12 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a1 = v12;
    }

    else
    {
      v8 = *a2;
      v9 = *(a2 + 1);
      v10 = v4 & 1;
      outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
      *a1 = v8;
      *(a1 + 8) = v9;
      *(a1 + 16) = v10;
    }
  }

  else if (v4 == 255)
  {
    outlined destroy of ButtonPressingAction(a1);
    v11 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v11;
  }

  else
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    v7 = v4 & 1;
    outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
  }

  v13 = *(a2 + 4);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 32) = v13;

  return a1;
}

uint64_t assignWithTake for PrimitiveButtonGestureCallbacks(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 255)
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 16);
  if (v4 == 255)
  {
    outlined destroy of ButtonPressingAction(a1);
LABEL_5:
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_6;
  }

  *a1 = *a2;
  *(a1 + 16) = v4 & 1;
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
LABEL_6:
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for LegacyButtonGesture.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for LegacyButtonGesture.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for _MapGesture<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, ()>()
{
  if (!lazy cache variable for type metadata for _MapGesture<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, ()>)
  {
    type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0();
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>();
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>);
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for _MapGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _MapGesture<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, ()>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ButtonPressPhase and conformance ButtonPressPhase()
{
  result = lazy protocol witness table cache variable for type ButtonPressPhase and conformance ButtonPressPhase;
  if (!lazy protocol witness table cache variable for type ButtonPressPhase and conformance ButtonPressPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonPressPhase and conformance ButtonPressPhase);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for LegacyButtonGesture.Value(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LegacyButtonGesture.Value and conformance LegacyButtonGesture.Value();
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for closure #4 in PrimitiveButtonGestureCallbacks.dispatch(phase:state:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 33);
  if (*(v0 + 32) == 1)
  {
    return v1((v2 - 1) < 2);
  }

  else
  {
    return v1(v2);
  }
}

uint64_t partial apply for closure #2 in PrimitiveButtonGestureCallbacks.dispatch(phase:state:)()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  (*(v0 + 16))(0);
  return (*(v0 + 64))(v1, v2, 0);
}

uint64_t objectdestroy_75Tm_0()
{
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();

  return swift_deallocObject();
}

void type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(a4, a5);
    v8 = type metadata accessor for SizeGesture();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>)
  {
    v0 = MEMORY[0x1E697DF80];
    type metadata accessor for CGFloat?(255, &lazy cache variable for type metadata for DelayedGesture<SpatialEvent>, MEMORY[0x1E697DF80], MEMORY[0x1E697E340]);
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(255, &lazy cache variable for type metadata for EventListener<SpatialEvent>, v0, MEMORY[0x1E697DF78], MEMORY[0x1E697E120]);
    lazy protocol witness table accessor for type DelayedGesture<SpatialEvent> and conformance DelayedGesture<A>();
    lazy protocol witness table accessor for type EventListener<SpatialEvent> and conformance EventListener<A>();
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DelayedGesture<SpatialEvent> and conformance DelayedGesture<A>()
{
  result = lazy protocol witness table cache variable for type DelayedGesture<SpatialEvent> and conformance DelayedGesture<A>;
  if (!lazy protocol witness table cache variable for type DelayedGesture<SpatialEvent> and conformance DelayedGesture<A>)
  {
    type metadata accessor for CGFloat?(255, &lazy cache variable for type metadata for DelayedGesture<SpatialEvent>, MEMORY[0x1E697DF80], MEMORY[0x1E697E340]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DelayedGesture<SpatialEvent> and conformance DelayedGesture<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value> and conformance MapGesture<A, B>()
{
  result = lazy protocol witness table cache variable for type MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value> and conformance MapGesture<A, B>;
  if (!lazy protocol witness table cache variable for type MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value> and conformance MapGesture<A, B>)
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(255, &lazy cache variable for type metadata for MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, MEMORY[0x1E697DF80], &type metadata for PrimitiveButtonGestureCore.Value, MEMORY[0x1E697DA98]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value> and conformance MapGesture<A, B>);
  }

  return result;
}

void type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>)
  {
    type metadata accessor for CGFloat?(255, &lazy cache variable for type metadata for EventFilter<PrimitiveButtonGestureCore.Value>, &type metadata for PrimitiveButtonGestureCore.Value, MEMORY[0x1E697DCD8]);
    type metadata accessor for <<opaque return type of Gesture.dependency(_:)>>.0(255, &lazy cache variable for type metadata for <<opaque return type of Gesture.dependency(_:)>>.0, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>, &lazy protocol witness table cache variable for type SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>> and conformance SizeGesture<A>, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>);
    lazy protocol witness table accessor for type EventFilter<LegacyButtonGesture.Value> and conformance EventFilter<A>(&lazy protocol witness table cache variable for type EventFilter<PrimitiveButtonGestureCore.Value> and conformance EventFilter<A>, &lazy cache variable for type metadata for EventFilter<PrimitiveButtonGestureCore.Value>, &type metadata for PrimitiveButtonGestureCore.Value);
    type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>(255);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>> and conformance SizeGesture<A>, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>);
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EventFilter<LegacyButtonGesture.Value> and conformance EventFilter<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGFloat?(255, a2, a3, MEMORY[0x1E697DCD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>)
  {
    type metadata accessor for CGFloat?(255, &lazy cache variable for type metadata for EventFilter<PrimitiveButtonGestureCore.Value>, &type metadata for PrimitiveButtonGestureCore.Value, MEMORY[0x1E697DCD8]);
    type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>();
    lazy protocol witness table accessor for type EventFilter<LegacyButtonGesture.Value> and conformance EventFilter<A>(&lazy protocol witness table cache variable for type EventFilter<PrimitiveButtonGestureCore.Value> and conformance EventFilter<A>, &lazy cache variable for type metadata for EventFilter<PrimitiveButtonGestureCore.Value>, &type metadata for PrimitiveButtonGestureCore.Value);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>);
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>);
    }
  }
}

uint64_t partial apply for closure #1 in PrimitiveButtonGestureCore.body.getter@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  if (v9)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v8;
  }

  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 24) = v8;
  *(result + 32) = v9;
  *(result + 40) = a2;
  *(result + 48) = a3;
  *a1 = 0;
  *(a1 + 8) = v10;
  *(a1 + 16) = closure #1 in closure #1 in PrimitiveButtonGestureCore.body.getter;
  *(a1 + 24) = 0;
  *(a1 + 32) = partial apply for closure #2 in closure #1 in PrimitiveButtonGestureCore.body.getter;
  *(a1 + 40) = result;
  return result;
}

void type metadata accessor for <<opaque return type of Gesture.dependency(_:)>>.0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(a4, a5);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(255, a3, MEMORY[0x1E697DF80], a4, MEMORY[0x1E697DA98]);
    type metadata accessor for ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>();
    a5();
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>);
    v7 = type metadata accessor for ModifierGesture();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MapGesture<SpatialEvent, LegacyButtonGesture.Value> and conformance MapGesture<A, B>()
{
  result = lazy protocol witness table cache variable for type MapGesture<SpatialEvent, LegacyButtonGesture.Value> and conformance MapGesture<A, B>;
  if (!lazy protocol witness table cache variable for type MapGesture<SpatialEvent, LegacyButtonGesture.Value> and conformance MapGesture<A, B>)
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(255, &lazy cache variable for type metadata for MapGesture<SpatialEvent, LegacyButtonGesture.Value>, MEMORY[0x1E697DF80], &unk_1F000EFF8, MEMORY[0x1E697DA98]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapGesture<SpatialEvent, LegacyButtonGesture.Value> and conformance MapGesture<A, B>);
  }

  return result;
}

void type metadata accessor for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>)
  {
    type metadata accessor for CGFloat?(255, &lazy cache variable for type metadata for EventFilter<LegacyButtonGesture.Value>, &unk_1F000EFF8, MEMORY[0x1E697DCD8]);
    type metadata accessor for <<opaque return type of Gesture.dependency(_:)>>.0(255, &lazy cache variable for type metadata for <<opaque return type of Gesture.dependency(_:)>>.0, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>, &lazy protocol witness table cache variable for type SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>> and conformance SizeGesture<A>, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>);
    lazy protocol witness table accessor for type EventFilter<LegacyButtonGesture.Value> and conformance EventFilter<A>(&lazy protocol witness table cache variable for type EventFilter<LegacyButtonGesture.Value> and conformance EventFilter<A>, &lazy cache variable for type metadata for EventFilter<LegacyButtonGesture.Value>, &unk_1F000EFF8);
    type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>(255);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>> and conformance SizeGesture<A>, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>);
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>);
    }
  }
}

uint64_t partial apply for closure #1 in LegacyButtonGesture.body.getter@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 24) = v8;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *a1 = 0;
  *(a1 + 8) = v8;
  *(a1 + 16) = closure #1 in closure #1 in PrimitiveButtonGestureCore.body.getter;
  *(a1 + 24) = 0;
  *(a1 + 32) = partial apply for closure #2 in closure #1 in LegacyButtonGesture.body.getter;
  *(a1 + 40) = result;
  return result;
}

uint64_t outlined destroy of ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of ButtonPressingAction?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for CGFloat?(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void type metadata accessor for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>)
  {
    type metadata accessor for CGFloat?(255, &lazy cache variable for type metadata for EventFilter<LegacyButtonGesture.Value>, &unk_1F000EFF8, MEMORY[0x1E697DCD8]);
    type metadata accessor for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>();
    lazy protocol witness table accessor for type EventFilter<LegacyButtonGesture.Value> and conformance EventFilter<A>(&lazy protocol witness table cache variable for type EventFilter<LegacyButtonGesture.Value> and conformance EventFilter<A>, &lazy cache variable for type metadata for EventFilter<LegacyButtonGesture.Value>, &unk_1F000EFF8);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>);
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonGestureCore.LocationInBounds and conformance PrimitiveButtonGestureCore.LocationInBounds()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonGestureCore.LocationInBounds and conformance PrimitiveButtonGestureCore.LocationInBounds;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonGestureCore.LocationInBounds and conformance PrimitiveButtonGestureCore.LocationInBounds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonGestureCore.LocationInBounds and conformance PrimitiveButtonGestureCore.LocationInBounds);
  }

  return result;
}

uint64_t specialized SearchBoundProperty.update(external:)(uint64_t a1)
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_4(0, &lazy cache variable for type metadata for TextSelection??, type metadata accessor for TextSelection?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  type metadata accessor for TextSelection?(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchBoundProperty<TextSelection?>?(a1, v10, type metadata accessor for TextSelection?);
  dispatch thunk of AnyLocation.set(_:transaction:)();
  _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v10, type metadata accessor for TextSelection?);
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  v12 = *(v1 + *(v11 + 36));
  outlined init with copy of SearchBoundProperty<TextSelection?>?(a1, v5, type metadata accessor for TextSelection?);
  (*(v8 + 56))(v5, 0, 1, v7);
  v13 = *(*v12 + 96);
  swift_beginAccess();
  outlined assign with take of TextSelection??(v5, v12 + v13);
  result = swift_endAccess();
  ++*(v12 + *(*v12 + 104));
  return result;
}

uint64_t closure #1 in UIKitSearchFieldAdaptor.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for Binding<SearchFieldState>(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchBoundProperty<TextSelection?>?(a2, v8, type metadata accessor for Binding<SearchFieldState>);
  v9 = a1[15];
  v37 = a1[14];
  v38 = v9;
  v39 = a1[16];
  v10 = a1[11];
  v33 = a1[10];
  v34 = v10;
  v11 = a1[13];
  v35 = a1[12];
  v36 = v11;
  v12 = a1[7];
  v29 = a1[6];
  v30 = v12;
  v13 = a1[9];
  v31 = a1[8];
  v32 = v13;
  v14 = a1[3];
  v25 = a1[2];
  v26 = v14;
  v15 = a1[5];
  v27 = a1[4];
  v28 = v15;
  v16 = 0;
  v17 = 0;
  if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v25) != 1)
  {
    v24[12] = v37;
    v24[13] = v38;
    v24[14] = v39;
    v24[8] = v33;
    v24[9] = v34;
    v24[10] = v35;
    v24[11] = v36;
    v24[4] = v29;
    v24[5] = v30;
    v24[6] = v31;
    v24[7] = v32;
    v24[0] = v25;
    v24[1] = v26;
    v24[2] = v27;
    v24[3] = v28;
    v18 = PlatformItem.PrimaryContent.text.getter();
    if (v18)
    {
      v19 = v18;
      v20 = [v18 string];

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v21;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }
  }

  outlined init with take of SearchBoundProperty<TextSelection?>(v8, a3, type metadata accessor for Binding<SearchFieldState>);
  result = type metadata accessor for KitRepresentable(0);
  v23 = (a3 + *(result + 20));
  *v23 = v16;
  v23[1] = v17;
  return result;
}

uint64_t closure #2 in UIKitSearchFieldAdaptor.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for SearchFieldConfiguration(0) + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  outlined copy of Text.Storage(v4, v5, v6);
}

double protocol witness for View.body.getter in conformance UIKitSearchFieldAdaptor@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  outlined init with copy of SearchBoundProperty<TextSelection?>?(v2, &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for UIKitSearchFieldAdaptor);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  outlined init with take of SearchBoundProperty<TextSelection?>(&v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6, type metadata accessor for UIKitSearchFieldAdaptor);
  v12 = v2;
  type metadata accessor for KitRepresentable(0);
  PlatformItemsReader.init(for:content:source:)();
  v8 = v14;
  *a2 = v13;
  a2[1] = v8;
  result = *&v15;
  v10 = v16;
  a2[2] = v15;
  a2[3] = v10;
  return result;
}

id KitRepresentable.makeUIView(context:)(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCF28]) init];
  [v2 setDelegate_];
  [v2 addTarget:v1 action:sel_textDidChange_ forControlEvents:0x20000];
  [v2 addTarget:v1 action:sel_editingDidBegin_ forControlEvents:0x10000];
  [v2 addTarget:v1 action:sel_editingDidEnd_ forControlEvents:0x40000];
  return v2;
}

uint64_t KitRepresentable.updateUIView(_:context:)(void *a1, __int128 *a2)
{
  v3 = v2;
  type metadata accessor for TextSelection?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v73 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI15SelectionRangesOySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E697E8A8]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v72 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v71 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v71 - v13;
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  v83 = v14;
  v81 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchEnvironmentStorage.BoundProperties?(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v78 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchBoundProperty<TextSelection?>?();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v80 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v79 = &v71 - v21;
  v76 = type metadata accessor for AttributedString();
  v22 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v26) = *(a2 + 32);
  v28 = *(a2 + 5);
  v29 = a2[1];
  v88 = *a2;
  v89 = v29;
  v90 = v26;
  RepresentableContextValues.environment.getter();
  v31 = v91;
  v30 = v92;
  specialized UIKitTextInput<>.update(in:)(v91, v92);
  specialized UIKitTextInputTraits.updateTraits(in:)(v31, v30);
  v77 = v31;
  v82 = v30;
  specialized UITextInputTraits_Private.updatePrivateTraits(in:)(v31, v30);
  v84 = OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_isViewUpdating;
  v85 = v28;
  *(v28 + OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_isViewUpdating) = 1;
  v32 = (v3 + *(type metadata accessor for KitRepresentable(0) + 20));
  v33 = v32[1];
  if (!v33)
  {
    goto LABEL_7;
  }

  v34 = *v32;
  v35 = [a1 placeholder];
  if (v35)
  {
    v36 = v35;
    v71 = a1;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    if (v37 == v34 && v33 == v39)
    {

      a1 = v71;
LABEL_7:
      [a1 setPlaceholder_];
      goto LABEL_9;
    }

    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a1 = v71;
    if (v40)
    {
      goto LABEL_7;
    }
  }

  v41 = MEMORY[0x18D00C850](v34, v33);
  [a1 setPlaceholder_];

LABEL_9:
  type metadata accessor for Binding<SearchFieldState>(0);
  MEMORY[0x18D00ACC0]();
  (*(v22 + 32))(v24, &v27[*(v25 + 36)], v76);
  String.init(_:)();
  v42 = v77;
  v43 = v82;
  *&v88 = v77;
  *(&v88 + 1) = v82;
  v91 = 0;
  v92 = 0;
  v87 = 128;
  v44 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)();

  v45 = v85;
  v46 = v81;
  v47 = v79;
  if (!v44)
  {
    goto LABEL_16;
  }

  v48 = [a1 attributedText];
  if (v48)
  {
    v49 = v48;
    type metadata accessor for NSAttributedString();
    v50 = v44;
    v51 = static NSObject.== infix(_:_:)();

    if (v51)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v52 = v44;
  }

  [a1 setAttributedText_];
LABEL_15:

LABEL_16:
  *&v88 = v42;
  *(&v88 + 1) = v43;
  v53 = v78;
  EnvironmentValues.searchBoundProperties.getter(v78);
  v54 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
  {
    _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v53, type metadata accessor for SearchEnvironmentStorage.BoundProperties?);
    v55 = v83;
    (*(v46 + 56))(v47, 1, 1, v83);
    v56 = v86;
  }

  else
  {
    outlined init with copy of SearchBoundProperty<TextSelection?>?(v53 + *(v54 + 24), v47, type metadata accessor for SearchBoundProperty<TextSelection?>?);
    _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v53, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
    v56 = v86;
    v55 = v83;
  }

  v57 = OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_selection;
  swift_beginAccess();
  outlined assign with take of SearchBoundProperty<TextSelection?>?(v47, v45 + v57);
  swift_endAccess();
  v58 = v45 + v57;
  v59 = v80;
  outlined init with copy of SearchBoundProperty<TextSelection?>?(v58, v80, type metadata accessor for SearchBoundProperty<TextSelection?>?);
  if ((*(v46 + 48))(v59, 1, v55) != 1)
  {
    v62 = v75;
    outlined init with take of SearchBoundProperty<TextSelection?>(v59, v75, type metadata accessor for SearchBoundProperty<TextSelection?>);
    v63 = *(v62 + *(v55 + 40));
    if (v63 != -1)
    {
      v64 = *(v62 + *(v55 + 36));
      v65 = *(v64 + *(*v64 + 104));
      if (v65 != -1 && v63 == v65)
      {
        _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_4(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
        v66 = v73;
        MEMORY[0x18D00ACC0]();
        SelectionRanges<>.init(_:)(v66, v56);
        v67 = v74;
        UITextField.selection.getter(v74);
        v68 = v67;
        LOBYTE(v67) = _s7SwiftUI15SelectionRangesO2eeoiySbACyxG_AEtFZSS5IndexV_Tt1g5(v56, v67);
        outlined destroy of SelectionRanges<String.Index>(v68);
        if ((v67 & 1) == 0)
        {
          outlined init with copy of SelectionRanges<String.Index>(v56, v68);
          v70 = v72;
          outlined init with copy of SelectionRanges<String.Index>(v68, v72);
          UITextField.selection.setter(v70);

          outlined destroy of SelectionRanges<String.Index>(v68);
          outlined destroy of SelectionRanges<String.Index>(v56);
          goto LABEL_27;
        }

        outlined destroy of SelectionRanges<String.Index>(v56);
      }
    }

LABEL_27:
    v60 = type metadata accessor for SearchBoundProperty<TextSelection?>;
    v61 = v62;
    goto LABEL_28;
  }

  v60 = type metadata accessor for SearchBoundProperty<TextSelection?>?;
  v61 = v59;
LABEL_28:
  result = _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v61, v60);
  *(v45 + v84) = 0;
  return result;
}

uint64_t protocol witness for UIViewRepresentable.makeCoordinator() in conformance KitRepresentable@<X0>(void *a1@<X8>)
{
  v2 = v1;
  type metadata accessor for Binding<SearchFieldState>(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchBoundProperty<TextSelection?>?(v2, v6, type metadata accessor for Binding<SearchFieldState>);
  v7 = type metadata accessor for Coordinator(0);
  v8 = objc_allocWithZone(v7);
  v8[OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_isViewUpdating] = 0;
  v9 = OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_selection;
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
  *&v8[OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_expectedSelectionVersion] = 0;
  outlined init with copy of SearchBoundProperty<TextSelection?>?(v6, &v8[OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_state], type metadata accessor for Binding<SearchFieldState>);
  v13.receiver = v8;
  v13.super_class = v7;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  result = _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v6, type metadata accessor for Binding<SearchFieldState>);
  *a1 = v11;
  return result;
}

double protocol witness for UIViewRepresentable._overrideLayoutTraits(_:for:) in conformance KitRepresentable(uint64_t a1, id a2)
{
  [a2 sizeThatFits_];
  static _LayoutTraits.Dimension.fixed(_:)();
  result = v5;
  *(a1 + 24) = v4;
  *(a1 + 40) = v5;
  return result;
}

void Coordinator.textDidChange(_:)(void *a1)
{
  v35 = a1;
  v2 = type metadata accessor for AttributedString.CharacterView();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  type metadata accessor for Binding<SearchFieldState>(0);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_isViewUpdating))
  {
    return;
  }

  v33 = v3;
  v34 = v2;
  outlined init with copy of SearchBoundProperty<TextSelection?>?(v1 + OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_state, v17, type metadata accessor for Binding<SearchFieldState>);
  v18 = [v35 text];
  if (v18)
  {
    v19 = v18;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  AttributeContainer.init()();
  v32 = v13;
  AttributedString.init(_:attributes:)();
  v20 = v38;
  v35 = v17;
  MEMORY[0x18D00ACC0](v15);
  v21 = *(v37 + 36);
  (*(v8 + 16))(v10, &v20[v21], v7);
  (*(v8 + 24))(&v20[v21], v13, v7);
  v22 = v36;
  AttributedString.characters.getter();
  v37 = AttributedString.CharacterView._count.getter();
  v23 = v34;
  v24 = *(v33 + 8);
  v24(v22, v34);
  AttributedString.characters.getter();
  v25 = AttributedString.CharacterView._count.getter();
  v24(v22, v23);
  v26 = *(v8 + 8);
  v26(v10, v7);
  v26(v32, v7);
  v27 = v25 - v37;
  if (__OFSUB__(v25, v37))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v28 = v35;
  if (v27 < 0)
  {
    v29 = __OFSUB__(0, v27);
    v27 = v37 - v25;
    if (v29)
    {
      goto LABEL_17;
    }
  }

  if (v27 == 1 && v25 >= 1 && *v20 != 2)
  {
    v30 = v20[2];
    if (v30 != 2 || (v30 = v20[3], v30 != 2))
    {
      if (v30)
      {
        *v20 = 1;
      }
    }
  }

  dispatch thunk of AnyLocation.set(_:transaction:)();
  _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v20, type metadata accessor for SearchFieldState);
  _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v28, type metadata accessor for Binding<SearchFieldState>);
}

uint64_t closure #1 in Coordinator.editingDidBegin(_:)(uint64_t a1)
{
  v2 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  type metadata accessor for Binding<SearchFieldState>(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchBoundProperty<TextSelection?>?(a1 + OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_state, v11, type metadata accessor for Binding<SearchFieldState>);
  MEMORY[0x18D00ACC0](v9);
  outlined init with copy of SearchBoundProperty<TextSelection?>?(v7, v4, type metadata accessor for SearchFieldState);
  v12 = *v4;
  if (v12 == 2 || (v12 & 1) == 0)
  {
    v13 = v4[2];
    if (v13 == 2)
    {
      v13 = v4[3];
      if (v13 == 2)
      {
        LOBYTE(v13) = 0;
      }
    }

    *v4 = v13 & 1;
    v4[*(v2 + 40)] = 1;
  }

  if (!specialized static SearchFieldState.== infix(_:_:)(v7, v4))
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v4, type metadata accessor for SearchFieldState);
  _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v7, type metadata accessor for SearchFieldState);
  return _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v11, type metadata accessor for Binding<SearchFieldState>);
}

uint64_t closure #1 in Coordinator.editingDidEnd(_:)(unsigned __int8 *a1)
{
  v34 = a1;
  v32 = type metadata accessor for AttributedString.CharacterView();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  type metadata accessor for Binding<SearchFieldState>(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchBoundProperty<TextSelection?>?(&v34[OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_state], v19, type metadata accessor for Binding<SearchFieldState>);
  v31 = v19;
  MEMORY[0x18D00ACC0](v17);
  v34 = v15;
  outlined init with copy of SearchBoundProperty<TextSelection?>?(v15, v12, type metadata accessor for SearchFieldState);
  *v12 = 2;
  v29 = v9;
  AttributedString.init(stringLiteral:)();
  v33 = v10;
  v20 = *(v10 + 36);
  v21 = v6;
  (*(v4 + 16))(v6, &v12[v20], v3);
  (*(v4 + 24))(&v12[v20], v9, v3);
  AttributedString.characters.getter();
  AttributedString.CharacterView._count.getter();
  v22 = *(v30 + 8);
  v23 = v32;
  v22(v2, v32);
  AttributedString.characters.getter();
  AttributedString.CharacterView._count.getter();
  v22(v2, v23);
  v24 = *(v4 + 8);
  v24(v21, v3);
  v24(v29, v3);
  if ((v12[8] & 1) == 0)
  {
    *(v12 + 1) = 0;
    v12[8] = 1;
  }

  v25 = v34;
  v12[*(v33 + 40)] = 0;
  v26 = specialized static SearchFieldState.== infix(_:_:)(v25, v12);
  v27 = v31;
  if (!v26)
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v25, type metadata accessor for SearchFieldState);
  _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v12, type metadata accessor for SearchFieldState);
  return _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v27, type metadata accessor for Binding<SearchFieldState>);
}

void type metadata completion function for Coordinator()
{
  type metadata accessor for Binding<SearchFieldState>(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SearchBoundProperty<TextSelection?>?();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t Coordinator.textFieldDidChangeSelection(_:)()
{
  v1 = v0;
  type metadata accessor for TextSelection?(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v31 - v5;
  type metadata accessor for SearchBoundProperty<TextSelection?>?();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  _s7SwiftUI15SelectionRangesOySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E697E8A8]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  UITextField.selection.getter(&v31 - v20);
  v22 = OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_selection;
  swift_beginAccess();
  outlined init with copy of SearchBoundProperty<TextSelection?>?(v1 + v22, v8, type metadata accessor for SearchBoundProperty<TextSelection?>?);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    outlined destroy of SelectionRanges<String.Index>(v21);
    return _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v8, type metadata accessor for SearchBoundProperty<TextSelection?>?);
  }

  else
  {
    outlined init with take of SearchBoundProperty<TextSelection?>(v8, v15, type metadata accessor for SearchBoundProperty<TextSelection?>);
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_4(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
    v24 = v34;
    MEMORY[0x18D00ACC0]();
    SelectionRanges<>.init(_:)(v24, v18);
    v25 = _s7SwiftUI15SelectionRangesO2eeoiySbACyxG_AEtFZSS5IndexV_Tt1g5(v18, v21);
    outlined destroy of SelectionRanges<String.Index>(v18);
    if ((v25 & 1) == 0)
    {
      outlined init with copy of SelectionRanges<String.Index>(v21, v18);
      TextSelection.init(_:)(v18, v24);
      v35 = 17;
      v26 = v31;
      outlined init with copy of SearchBoundProperty<TextSelection?>?(v15, v31, type metadata accessor for SearchBoundProperty<TextSelection?>);
      v27 = v33;
      outlined init with copy of SearchBoundProperty<TextSelection?>?(v24, v33, type metadata accessor for TextSelection?);
      v28 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v29 = (v12 + *(v32 + 80) + v28) & ~*(v32 + 80);
      v30 = swift_allocObject();
      outlined init with take of SearchBoundProperty<TextSelection?>(v26, v30 + v28, type metadata accessor for SearchBoundProperty<TextSelection?>);
      outlined init with take of SearchBoundProperty<TextSelection?>(v27, v30 + v29, type metadata accessor for TextSelection?);
      static Update.enqueueAction(reason:_:)();

      _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v24, type metadata accessor for TextSelection?);
    }

    _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v15, type metadata accessor for SearchBoundProperty<TextSelection?>);
    return outlined destroy of SelectionRanges<String.Index>(v21);
  }
}

uint64_t _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void _s7SwiftUI15SelectionRangesOySS5IndexVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined assign with take of TextSelection??(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_4(0, &lazy cache variable for type metadata for TextSelection??, type metadata accessor for TextSelection?, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *initializeBufferWithCopyOfBuffer for UIKitSearchFieldAdaptor(void *a1, void *a2)
{
  v4 = type metadata accessor for SearchFieldConfiguration(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *a2;
  *a1 = *a2;
  if ((v5 & 0x20000) != 0)
  {
    a1 = (v6 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = v4;
    a1[1] = a2[1];
    type metadata accessor for Binding<SearchFieldState>(0);
    v9 = *(v8 + 32);
    v10 = a1 + v9;
    v11 = a2 + v9;
    *v10 = *(a2 + v9);
    v10[1] = *(a2 + v9 + 1);
    *(v10 + 1) = *(a2 + v9 + 2);
    v10[8] = *(a2 + v9 + 8);
    *(v10 + 1) = *(a2 + v9 + 4);
    v12 = type metadata accessor for SearchFieldState(0);
    v13 = v12[9];
    v14 = type metadata accessor for AttributedString();
    v31 = *(*(v14 - 8) + 16);

    v31(&v10[v13], &v11[v13], v14);
    v10[v12[10]] = v11[v12[10]];
    v15 = v12[11];
    v16 = &v10[v15];
    v17 = &v11[v15];
    *v16 = *v17;
    v16[4] = v17[4];
    v18 = v7[6];
    v19 = a1 + v18;
    v20 = a2 + v18;
    v21 = v20[8];
    if (v21 == 255)
    {
      *v19 = *v20;
      v19[8] = v20[8];
    }

    else
    {
      v22 = *v20;
      v23 = v21 & 1;
      outlined copy of PlatformItemCollection.Storage(*v20, v21 & 1);
      *v19 = v22;
      v19[8] = v23;
    }

    *(a1 + v7[7]) = *(a2 + v7[7]);
    v24 = v7[8];
    v25 = a1 + v24;
    v26 = a2 + v24;
    v27 = *(a2 + v24);
    v28 = *(v26 + 1);
    v29 = v26[16];
    outlined copy of Text.Storage(v27, v28, v29);
    *v25 = v27;
    *(v25 + 1) = v28;
    v25[16] = v29;
    *(v25 + 3) = *(v26 + 3);
  }

  return a1;
}

void *initializeWithCopy for UIKitSearchFieldAdaptor(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  type metadata accessor for Binding<SearchFieldState>(0);
  v6 = *(v5 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  v7[1] = *(a2 + v6 + 1);
  *(v7 + 1) = *(a2 + v6 + 2);
  v7[8] = *(a2 + v6 + 8);
  *(v7 + 1) = *(a2 + v6 + 4);
  v9 = type metadata accessor for SearchFieldState(0);
  v10 = v9[9];
  v11 = type metadata accessor for AttributedString();
  v12 = *(*(v11 - 8) + 16);

  v12(&v7[v10], &v8[v10], v11);
  v7[v9[10]] = v8[v9[10]];
  v13 = v9[11];
  v14 = &v7[v13];
  v15 = &v8[v13];
  v14[4] = v15[4];
  *v14 = *v15;
  v16 = type metadata accessor for SearchFieldConfiguration(0);
  v17 = v16[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = v19[8];
  if (v20 == 255)
  {
    *v18 = *v19;
    v18[8] = v19[8];
  }

  else
  {
    v21 = *v19;
    v22 = v20 & 1;
    outlined copy of PlatformItemCollection.Storage(*v19, v20 & 1);
    *v18 = v21;
    v18[8] = v22;
  }

  *(a1 + v16[7]) = *(a2 + v16[7]);
  v23 = v16[8];
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = *(a2 + v23);
  v27 = *(v25 + 1);
  v28 = v25[16];
  outlined copy of Text.Storage(v26, v27, v28);
  *v24 = v26;
  *(v24 + 1) = v27;
  v24[16] = v28;
  *(v24 + 3) = *(v25 + 3);

  return a1;
}

void *assignWithCopy for UIKitSearchFieldAdaptor(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v5 = *(v4 + 32);
  v6 = a1 + v5;
  v7 = a2 + v5;
  *v6 = *(a2 + v5);
  v6[1] = *(a2 + v5 + 1);
  v6[2] = *(a2 + v5 + 2);
  v6[3] = *(a2 + v5 + 3);
  LODWORD(v5) = *(a2 + v5 + 4);
  v6[8] = v7[8];
  *(v6 + 1) = v5;
  v8 = type metadata accessor for SearchFieldState(0);
  v9 = v8[9];
  v10 = type metadata accessor for AttributedString();
  (*(*(v10 - 8) + 24))(&v6[v9], &v7[v9], v10);
  v6[v8[10]] = v7[v8[10]];
  v11 = v8[11];
  v12 = &v6[v11];
  v13 = &v7[v11];
  *v12 = *v13;
  v12[4] = v13[4];
  v14 = type metadata accessor for SearchFieldConfiguration(0);
  v15 = v14[6];
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = *(a1 + v15 + 8);
  v19 = *(a2 + v15 + 8);
  if (v18 == 255)
  {
    if (v19 == 255)
    {
      v27 = *v17;
      *(v16 + 8) = v17[8];
      *v16 = v27;
    }

    else
    {
      v24 = *v17;
      v25 = v19 & 1;
      outlined copy of PlatformItemCollection.Storage(v24, v19 & 1);
      *v16 = v24;
      *(v16 + 8) = v25;
    }
  }

  else if (v19 == 255)
  {
    outlined destroy of PlatformItemCollection(v16);
    v26 = v17[8];
    *v16 = *v17;
    *(v16 + 8) = v26;
  }

  else
  {
    v20 = *v17;
    v21 = v19 & 1;
    outlined copy of PlatformItemCollection.Storage(v20, v19 & 1);
    v22 = *v16;
    v23 = *(v16 + 8);
    *v16 = v20;
    *(v16 + 8) = v21;
    outlined consume of PlatformItemCollection.Storage(v22, v23);
  }

  *(a1 + v14[7]) = *(a2 + v14[7]);
  v28 = v14[8];
  v29 = a1 + v28;
  v30 = a2 + v28;
  v31 = *(a2 + v28);
  v32 = *(v30 + 1);
  v33 = v30[16];
  outlined copy of Text.Storage(v31, v32, v33);
  v34 = *v29;
  v35 = *(v29 + 1);
  v36 = v29[16];
  *v29 = v31;
  *(v29 + 1) = v32;
  v29[16] = v33;
  outlined consume of Text.Storage(v34, v35, v36);
  *(v29 + 3) = *(v30 + 3);

  return a1;
}

void *initializeWithTake for UIKitSearchFieldAdaptor(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  type metadata accessor for Binding<SearchFieldState>(0);
  v6 = *(v5 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  v7[1] = *(a2 + v6 + 1);
  *(v7 + 1) = *(a2 + v6 + 2);
  v7[8] = *(a2 + v6 + 8);
  *(v7 + 1) = *(a2 + v6 + 4);
  v9 = type metadata accessor for SearchFieldState(0);
  v10 = v9[9];
  v11 = type metadata accessor for AttributedString();
  (*(*(v11 - 8) + 32))(&v7[v10], &v8[v10], v11);
  v7[v9[10]] = v8[v9[10]];
  v12 = v9[11];
  v13 = &v7[v12];
  v14 = &v8[v12];
  v13[4] = v14[4];
  *v13 = *v14;
  v15 = type metadata accessor for SearchFieldConfiguration(0);
  v16 = v15[6];
  v17 = a1 + v16;
  v18 = a2 + v16;
  *v17 = *v18;
  v17[8] = v18[8];
  *(a1 + v15[7]) = *(a2 + v15[7]);
  v19 = v15[8];
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  v22 = v21[1];
  *v20 = *v21;
  v20[1] = v22;
  return a1;
}

void *assignWithTake for UIKitSearchFieldAdaptor(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v5 = *(v4 + 32);
  v6 = a1 + v5;
  v7 = a2 + v5;
  *v6 = *(a2 + v5);
  v6[1] = *(a2 + v5 + 1);
  *(v6 + 1) = *(a2 + v5 + 2);
  v6[8] = *(a2 + v5 + 8);
  *(v6 + 1) = *(a2 + v5 + 4);
  v8 = type metadata accessor for SearchFieldState(0);
  v9 = v8[9];
  v10 = type metadata accessor for AttributedString();
  (*(*(v10 - 8) + 40))(&v6[v9], &v7[v9], v10);
  v6[v8[10]] = v7[v8[10]];
  v11 = v8[11];
  v12 = &v6[v11];
  v13 = &v7[v11];
  *v12 = *v13;
  v12[4] = v13[4];
  v14 = type metadata accessor for SearchFieldConfiguration(0);
  v15 = v14[6];
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = *(a1 + v15 + 8);
  if (v18 == 255)
  {
    goto LABEL_5;
  }

  v19 = v17[8];
  if (v19 == 255)
  {
    outlined destroy of PlatformItemCollection(v16);
LABEL_5:
    *v16 = *v17;
    *(v16 + 8) = v17[8];
    goto LABEL_6;
  }

  v20 = *v16;
  *v16 = *v17;
  *(v16 + 8) = v19 & 1;
  outlined consume of PlatformItemCollection.Storage(v20, v18 & 1);
LABEL_6:
  *(a1 + v14[7]) = *(a2 + v14[7]);
  v21 = v14[8];
  v22 = a1 + v21;
  v23 = a2 + v21;
  LOBYTE(v21) = v23[16];
  v24 = *v22;
  v25 = *(v22 + 1);
  v26 = v22[16];
  *v22 = *v23;
  v22[16] = v21;
  outlined consume of Text.Storage(v24, v25, v26);
  *(v22 + 3) = *(v23 + 3);

  return a1;
}

uint64_t outlined init with copy of SearchBoundProperty<TextSelection?>?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in UIKitSearchFieldAdaptor.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UIKitSearchFieldAdaptor(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in UIKitSearchFieldAdaptor.body.getter(a1, v6, a2);
}

uint64_t outlined init with take of SearchBoundProperty<TextSelection?>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *initializeBufferWithCopyOfBuffer for KitRepresentable(void *a1, void *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v6 = a1;
    a1[1] = a2[1];
    type metadata accessor for Binding<SearchFieldState>(0);
    v9 = *(v8 + 32);
    v10 = v6 + v9;
    v11 = a2 + v9;
    *v10 = *(a2 + v9);
    v10[1] = *(a2 + v9 + 1);
    *(v10 + 1) = *(a2 + v9 + 2);
    v10[8] = *(a2 + v9 + 8);
    *(v10 + 1) = *(a2 + v9 + 4);
    v12 = type metadata accessor for SearchFieldState(0);
    v13 = v12[9];
    v14 = type metadata accessor for AttributedString();
    v15 = *(*(v14 - 8) + 16);

    v15(&v10[v13], &v11[v13], v14);
    v10[v12[10]] = v11[v12[10]];
    v16 = v12[11];
    v17 = &v10[v16];
    v18 = &v11[v16];
    v17[4] = v18[4];
    *v17 = *v18;
    v19 = *(a3 + 20);
    v20 = (v6 + v19);
    v21 = (a2 + v19);
    v22 = v21[1];
    *v20 = *v21;
    v20[1] = v22;
  }

  return v6;
}

uint64_t destroy for KitRepresentable(uint64_t a1)
{

  type metadata accessor for Binding<SearchFieldState>(0);
  v3 = a1 + *(v2 + 32);
  v4 = *(type metadata accessor for SearchFieldState(0) + 36);
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
}

void *initializeWithCopy for KitRepresentable(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  *(v8 + 1) = *(a2 + v7 + 2);
  v8[8] = *(a2 + v7 + 8);
  *(v8 + 1) = *(a2 + v7 + 4);
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  v13 = *(*(v12 - 8) + 16);

  v13(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v14 = v10[11];
  v15 = &v8[v14];
  v16 = &v9[v14];
  v15[4] = v16[4];
  *v15 = *v16;
  v17 = *(a3 + 20);
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  v20 = v19[1];
  *v18 = *v19;
  v18[1] = v20;

  return a1;
}

void *assignWithCopy for KitRepresentable(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  v8[2] = *(a2 + v7 + 2);
  v8[3] = *(a2 + v7 + 3);
  LODWORD(v7) = *(a2 + v7 + 4);
  v8[8] = v9[8];
  *(v8 + 1) = v7;
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  (*(*(v12 - 8) + 24))(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v13 = v10[11];
  v14 = &v8[v13];
  v15 = &v9[v13];
  *v14 = *v15;
  v14[4] = v15[4];
  v16 = *(a3 + 20);
  v17 = (a1 + v16);
  v18 = (a2 + v16);
  *v17 = *v18;
  v17[1] = v18[1];

  return a1;
}

void *initializeWithTake for KitRepresentable(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  type metadata accessor for Binding<SearchFieldState>(0);
  v8 = *(v7 + 32);
  v9 = a1 + v8;
  v10 = a2 + v8;
  *v9 = *(a2 + v8);
  v9[1] = *(a2 + v8 + 1);
  *(v9 + 1) = *(a2 + v8 + 2);
  v9[8] = *(a2 + v8 + 8);
  *(v9 + 1) = *(a2 + v8 + 4);
  v11 = type metadata accessor for SearchFieldState(0);
  v12 = v11[9];
  v13 = type metadata accessor for AttributedString();
  (*(*(v13 - 8) + 32))(&v9[v12], &v10[v12], v13);
  v9[v11[10]] = v10[v11[10]];
  v14 = v11[11];
  v15 = &v9[v14];
  v16 = &v10[v14];
  v15[4] = v16[4];
  *v15 = *v16;
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void *assignWithTake for KitRepresentable(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  *(v8 + 1) = *(a2 + v7 + 2);
  v8[8] = *(a2 + v7 + 8);
  *(v8 + 1) = *(a2 + v7 + 4);
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  (*(*(v12 - 8) + 40))(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v13 = v10[11];
  v14 = &v8[v13];
  v15 = &v9[v13];
  *v14 = *v15;
  v14[4] = v15[4];
  v16 = *(a3 + 20);
  v17 = (a1 + v16);
  v18 = (a2 + v16);
  v20 = *v18;
  v19 = v18[1];
  *v17 = v20;
  v17[1] = v19;

  return a1;
}

void type metadata completion function for KitRepresentable()
{
  type metadata accessor for Binding<SearchFieldState>(319);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t _s7SwiftUI13TextSelectionVACSQAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for PlatformItemsReader<TextPlatformItemsStrategy, KitRepresentable, Text>()
{
  if (!lazy cache variable for type metadata for PlatformItemsReader<TextPlatformItemsStrategy, KitRepresentable, Text>)
  {
    type metadata accessor for KitRepresentable(255);
    v0 = type metadata accessor for PlatformItemsReader();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformItemsReader<TextPlatformItemsStrategy, KitRepresentable, Text>);
    }
  }
}

uint64_t outlined assign with take of SearchBoundProperty<TextSelection?>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchBoundProperty<TextSelection?>?();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t View.onPhysicalButtonPress(_:perform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  outlined copy of AppIntentExecutor?(a2);
  lazy protocol witness table accessor for type PhysicalButtonPressGesture and conformance PhysicalButtonPressGesture();
  Gesture.onEnded(_:)();

  type metadata accessor for _EndedGesture<PhysicalButtonPressGesture>();
  _s7SwiftUI13_EndedGestureVyAA019PhysicalButtonPressD0VGACyxGAA0D0AAWlTm_0(&lazy protocol witness table cache variable for type _EndedGesture<PhysicalButtonPressGesture> and conformance _EndedGesture<A>, type metadata accessor for _EndedGesture<PhysicalButtonPressGesture>);
  View.gesture<A>(_:including:)();
}

uint64_t closure #1 in PhysicalButtonPressGesture.body.getter@<X0>(uint64_t result@<X0>, __int16 a2@<W1>, char *a3@<X8>)
{
  v3 = *(result + 24);
  v4 = *(result + 25);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      v5 = 0;
      goto LABEL_64;
    }

    if (*(result + 24) > 4u)
    {
      if (*(result + 24) <= 6u)
      {
        if (v3 == 5)
        {
          if ((a2 & 0x20) != 0)
          {
            LOBYTE(v4) = 2;
            v5 = 5;
            goto LABEL_64;
          }
        }

        else if ((a2 & 0x40) != 0)
        {
          LOBYTE(v4) = 2;
          v5 = 6;
          goto LABEL_64;
        }
      }

      else if (v3 == 7)
      {
        if ((a2 & 0x80) != 0)
        {
          LOBYTE(v4) = 2;
          v5 = 7;
          goto LABEL_64;
        }
      }

      else if (v3 == 8)
      {
        if ((a2 & 0x100) != 0)
        {
          LOBYTE(v4) = 2;
          v5 = 8;
          goto LABEL_64;
        }
      }

      else if ((a2 & 0x200) != 0)
      {
        LOBYTE(v4) = 2;
        v5 = 9;
        goto LABEL_64;
      }
    }

    else if (*(result + 24) <= 1u)
    {
      if (*(result + 24))
      {
        if ((a2 & 2) != 0)
        {
          LOBYTE(v4) = 2;
          v5 = 1;
          goto LABEL_64;
        }
      }

      else if (a2)
      {
        v5 = 0;
        LOBYTE(v4) = 2;
        goto LABEL_64;
      }
    }

    else if (v3 == 2)
    {
      if ((a2 & 4) != 0)
      {
        v5 = 2;
        LOBYTE(v4) = 2;
        goto LABEL_64;
      }
    }

    else if (v3 == 3)
    {
      if ((a2 & 8) != 0)
      {
        LOBYTE(v4) = 2;
        v5 = 3;
        goto LABEL_64;
      }
    }

    else if ((a2 & 0x10) != 0)
    {
      LOBYTE(v4) = 2;
      v5 = 4;
      goto LABEL_64;
    }

    v5 = 0;
    LOBYTE(v4) = 3;
    goto LABEL_64;
  }

  if (!*(result + 25))
  {
LABEL_61:
    v5 = 10;
    goto LABEL_64;
  }

  if (*(result + 24) > 4u)
  {
    if (*(result + 24) <= 6u)
    {
      if (v3 == 5)
      {
        if ((a2 & 0x20) != 0)
        {
          LOBYTE(v4) = 1;
          v5 = 5;
          goto LABEL_64;
        }
      }

      else if ((a2 & 0x40) != 0)
      {
        LOBYTE(v4) = 1;
        v5 = 6;
        goto LABEL_64;
      }
    }

    else if (v3 == 7)
    {
      if ((a2 & 0x80) != 0)
      {
        LOBYTE(v4) = 1;
        v5 = 7;
        goto LABEL_64;
      }
    }

    else if (v3 == 8)
    {
      if ((a2 & 0x100) != 0)
      {
        LOBYTE(v4) = 1;
        v5 = 8;
        goto LABEL_64;
      }
    }

    else if ((a2 & 0x200) != 0)
    {
      LOBYTE(v4) = 1;
      v5 = 9;
      goto LABEL_64;
    }

    goto LABEL_60;
  }

  if (*(result + 24) <= 1u)
  {
    if (*(result + 24))
    {
      if ((a2 & 2) != 0)
      {
        v5 = 1;
        LOBYTE(v4) = 1;
        goto LABEL_64;
      }
    }

    else if (a2)
    {
      v5 = 0;
      LOBYTE(v4) = 1;
      goto LABEL_64;
    }

    goto LABEL_60;
  }

  if (v3 == 2)
  {
    if ((a2 & 4) != 0)
    {
      LOBYTE(v4) = 1;
      v5 = 2;
      goto LABEL_64;
    }

    goto LABEL_60;
  }

  if (v3 != 3)
  {
    if ((a2 & 0x10) != 0)
    {
      LOBYTE(v4) = 1;
      v5 = 4;
      goto LABEL_64;
    }

    goto LABEL_60;
  }

  if ((a2 & 8) == 0)
  {
LABEL_60:
    LOBYTE(v4) = 0;
    goto LABEL_61;
  }

  LOBYTE(v4) = 1;
  v5 = 3;
LABEL_64:
  *a3 = v5;
  a3[1] = v4;
  return result;
}

BOOL PhysicalButtonPressGesture.AllowedButtonTypes.insert(_:)(_BYTE *a1, char *a2)
{
  v3 = *a2;
  v4 = qword_18CDFC238[*a2];
  v5 = *v2 & v4;
  if (!v5)
  {
    *v2 |= v4;
  }

  *a1 = v3;
  return v5 == 0;
}

char *PhysicalButtonPressGesture.AllowedButtonTypes.remove(_:)@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = qword_18CDFC238[v3];
  if ((*v2 & v4) == 0)
  {
    LOBYTE(v3) = 10;
  }

  *v2 &= ~v4;
  *a2 = v3;
  return result;
}

char *PhysicalButtonPressGesture.AllowedButtonTypes.update(with:)@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = qword_18CDFC238[v3];
  v5 = *v2;
  *v2 |= v4;
  if ((v5 & v4) == 0)
  {
    LOBYTE(v3) = 10;
  }

  *a2 = v3;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance PhysicalButtonPressGesture.AllowedButtonTypes@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for Gesture.body.getter in conformance PhysicalButtonPressGesture()
{
  v1 = *v0;
  *(swift_allocObject() + 16) = v1;
  type metadata accessor for ModifierGesture<MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, EventListener<PhysicalButtonEvent>>();
  _s7SwiftUI13_EndedGestureVyAA019PhysicalButtonPressD0VGACyxGAA0D0AAWlTm_0(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, EventListener<PhysicalButtonEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, EventListener<PhysicalButtonEvent>>);
  Gesture.dependency(_:)();
}

void type metadata accessor for ModifierGesture<MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, EventListener<PhysicalButtonEvent>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, EventListener<PhysicalButtonEvent>>)
  {
    type metadata accessor for MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>(255, &lazy cache variable for type metadata for MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, MEMORY[0x1E697F750], MEMORY[0x1E697DA98]);
    type metadata accessor for MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>(255, &lazy cache variable for type metadata for EventListener<PhysicalButtonEvent>, MEMORY[0x1E697F760], MEMORY[0x1E697E120]);
    lazy protocol witness table accessor for type MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType> and conformance MapGesture<A, B>();
    lazy protocol witness table accessor for type EventListener<PhysicalButtonEvent> and conformance EventListener<A>();
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, EventListener<PhysicalButtonEvent>>);
    }
  }
}

void type metadata accessor for MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E697F768]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType> and conformance MapGesture<A, B>()
{
  result = lazy protocol witness table cache variable for type MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType> and conformance MapGesture<A, B>;
  if (!lazy protocol witness table cache variable for type MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType> and conformance MapGesture<A, B>)
  {
    type metadata accessor for MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>(255, &lazy cache variable for type metadata for MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, MEMORY[0x1E697F750], MEMORY[0x1E697DA98]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType> and conformance MapGesture<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EventListener<PhysicalButtonEvent> and conformance EventListener<A>()
{
  result = lazy protocol witness table cache variable for type EventListener<PhysicalButtonEvent> and conformance EventListener<A>;
  if (!lazy protocol witness table cache variable for type EventListener<PhysicalButtonEvent> and conformance EventListener<A>)
  {
    type metadata accessor for MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>(255, &lazy cache variable for type metadata for EventListener<PhysicalButtonEvent>, MEMORY[0x1E697F760], MEMORY[0x1E697E120]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventListener<PhysicalButtonEvent> and conformance EventListener<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes()
{
  result = lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes;
  if (!lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes;
  if (!lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes;
  if (!lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes;
  if (!lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes);
  }

  return result;
}

unint64_t _s7SwiftUI31AccessibilityAttachmentModifierV04makeC19PropertiesTransform_5value6inputs7outputs14AttributeGraph0L0VyAA0C8NodeListVGSgxm_13PropertyValueQzAA11_ViewInputsVAA01_R7OutputsVtAA0cG3KeyRzlFZAA0cG0VAAE013TemporalStateU0V_Ttt3B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v21 = *MEMORY[0x1E69E9840];
  __src[0] = *(a4 + 48);
  LODWORD(__src[1]) = *(a4 + 56);
  v12 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (v12)
  {
    __src[0] = a1;
    __src[1] = a2;
    LODWORD(__src[2]) = a3;
    BYTE4(__src[2]) = BYTE4(a3) & 1;
    lazy protocol witness table accessor for type AccessibilityProperties.TemporalStateKey and conformance AccessibilityProperties.TemporalStateKey();
    AccessibilityProperties.init<A>(_:_:)();
    outlined init with copy of AccessibilityProperties(v20, v18);
    AccessibilityAttachment.init(properties:)();
    outlined destroy of AccessibilityProperties(v20);
    type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
    v13 = swift_allocObject();
    memcpy((v13 + 16), __src, 0x128uLL);
    __src[0] = v13;
    __src[1] = 0;

    v14 = Attribute.init<A>(body:value:flags:update:)();

    v15 = _s7SwiftUI25AccessibilityViewModifierPAAE23makePropertiesTransform33_71F62EDC1DAE3BBC7A74521E45BA5A668modifier6inputs7outputs15includeGeometry010resolvableE012scrapeableID14AttributeGraph0Y0VyAA0C8NodeListVGSo11AGAttributea_AA01_D6InputsVAA01_D7OutputsVSbAA010ResolvableE0AELLVSgAA010ScrapeableX0VtFZAA0c10AttachmentE0V_Tt5B5(v14, a4, a5, a6, 1, 0, 0, 0, 0, 0);

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16 | (((v12 & 1) == 0) << 32);
}

uint64_t TemporalStack.init(states:alignment:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  result = type metadata accessor for TemporalStack();
  v13 = (a7 + *(result + 68));
  *v13 = a2;
  v13[1] = a3;
  v14 = (a7 + *(result + 72));
  *v14 = a4;
  v14[1] = a5;
  return result;
}

uint64_t type metadata completion function for TemporalStack()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TemporalStack(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v12 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    v13 = v12[1];
    v14 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v14 = *v12;
    v14[1] = v13;
  }

  return v3;
}

uint64_t destroy for TemporalStack(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t initializeWithCopy for TemporalStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;

  return a1;
}

uint64_t assignWithCopy for TemporalStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;

  return a1;
}

uint64_t assignWithTake for TemporalStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for TemporalStack(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
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

_BYTE *storeEnumTagSinglePayload for TemporalStack(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
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

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
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

double static TemporalStack._makeView(view:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, double *a9@<X8>)
{
  v73 = a3;
  v74 = a8;
  v106 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  v14 = a2[3];
  v102 = a2[2];
  v103 = v14;
  v104 = a2[4];
  v105 = *(a2 + 20);
  v15 = a2[1];
  v100 = *a2;
  v101 = v15;
  v16 = v14;
  *&v86 = v14;
  DWORD2(v86) = DWORD2(v14);
  v96 = v102;
  v97 = v14;
  v98 = v104;
  v99 = v105;
  v94 = v100;
  v95 = v15;
  v68 = a9;
  v66 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (v66)
  {
    v88 = v102;
    v89 = v103;
    v90 = v104;
    LODWORD(v91) = v105;
    v86 = v100;
    v87 = v101;
    outlined init with copy of _ViewInputs(&v100, v80);
    _ViewInputs.animatedPosition()();
    _ViewInputs.containerPosition.setter();
  }

  else
  {
    outlined init with copy of _ViewInputs(&v100, &v86);
  }

  v67 = v16;
  v63 = v13;
  LODWORD(v80[0]) = v13;
  v17 = v73;
  *&v86 = v73;
  *(&v86 + 1) = a4;
  *&v87 = a5;
  *(&v87 + 1) = a6;
  *&v88 = a7;
  *(&v88 + 1) = v74;
  type metadata accessor for TemporalStack();
  v62 = type metadata accessor for _GraphValue();
  v18 = _GraphValue.value.getter();
  v84[2] = v96;
  v84[3] = v97;
  v84[4] = v98;
  v85 = v99;
  v84[0] = v94;
  v84[1] = v95;
  outlined init with copy of _ViewInputs(v84, &v86);
  v70 = a7;
  v19 = default argument 3 of TemporalStackChildren.init(view:inputs:childGeometries:children:nextID:)();
  *&v83[36] = v96;
  *&v83[52] = v97;
  *&v83[68] = v98;
  *&v83[84] = v99;
  *&v83[4] = v94;
  *&v83[20] = v95;
  v20 = AGSubgraphGetCurrent();
  if (!v20)
  {
    __break(1u);
  }

  v72 = &v62;
  *(&v80[5] + 4) = *&v83[80];
  v21 = *MEMORY[0x1E698D3F8];
  *(&v80[2] + 4) = *&v83[32];
  *(&v80[3] + 4) = *&v83[48];
  *(&v80[4] + 4) = *&v83[64];
  *(v80 + 4) = *v83;
  *(&v80[1] + 4) = *&v83[16];
  LODWORD(v80[0]) = v18;
  *&v81 = v20;
  *(&v81 + 1) = v19;
  HIDWORD(v80[5]) = v21;
  v82 = 0;
  MEMORY[0x1EEE9AC00](v20);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for TemporalStackChild();
  v61[2] = type metadata accessor for Array();
  *&v86 = v17;
  *(&v86 + 1) = a4;
  v69 = a4;
  v64 = a5;
  v65 = a6;
  *&v87 = a5;
  *(&v87 + 1) = a6;
  *&v88 = v70;
  *(&v88 + 1) = v74;
  v23 = type metadata accessor for TemporalStackChildren();
  v61[3] = v23;
  v61[4] = swift_getWitnessTable();
  v24 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v80, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v61, v23, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
  v90 = v80[4];
  v91 = v80[5];
  v92 = v81;
  v93 = v82;
  v86 = v80[0];
  v87 = v80[1];
  v88 = v80[2];
  v89 = v80[3];
  (*(*(v23 - 8) + 8))(&v86, v23);
  v26 = v79;
  _ViewOutputs.init()();
  v72 = AssociatedTypeWitness;
  v71 = v26;
  if (v66)
  {
    _DisplayList_Identity.init()();
    v27 = v80[0];
    v80[2] = v102;
    v80[3] = v103;
    v80[4] = v104;
    LODWORD(v80[5]) = v105;
    v80[0] = v100;
    v80[1] = v101;
    *v83 = v27;
    _ViewInputs.pushIdentity(_:)();
    v80[2] = v102;
    v80[3] = v103;
    v80[4] = v104;
    LODWORD(v80[5]) = v105;
    v80[0] = v100;
    v80[1] = v101;
    swift_beginAccess();
    v28 = CachedEnvironment.animatedSize(for:)();
    swift_endAccess();
    v80[2] = v102;
    v80[3] = v103;
    v80[4] = v104;
    LODWORD(v80[5]) = v105;
    v80[0] = v100;
    v80[1] = v101;
    v29 = _ViewInputs.animatedPosition()();
    v80[2] = v102;
    v80[3] = v103;
    v80[4] = v104;
    LODWORD(v80[5]) = v105;
    v80[0] = v100;
    v80[1] = v101;
    v30 = _ViewInputs.containerPosition.getter();
    *&v80[0] = __PAIR64__(v26, v27);
    *(&v80[0] + 1) = __PAIR64__(v29, v28);
    LODWORD(v80[1]) = v30;
    MEMORY[0x1EEE9AC00](v30);
    v31 = type metadata accessor for TemporalStackDisplayList();
    v61[-2] = v31;
    v61[-1] = swift_getWitnessTable();
    type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for Attribute<DisplayList>, MEMORY[0x1E697DCB0], MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v80, closure #1 in Attribute.init<A>(_:)partial apply, &v61[-4], v31, MEMORY[0x1E69E73E0], v32, MEMORY[0x1E69E7410], v33);
    LOBYTE(v80[0]) = 0;
    PreferencesOutputs.subscript.setter();
  }

  v34 = v67;
  v35 = BYTE4(v102);
  v36 = v69;
  if ((BYTE4(v102) & 0x22) != 0)
  {
    v37 = v101;
    LODWORD(v80[0]) = v63;
    _GraphValue.value.getter();
    v38 = v74;
    closure #1 in static TemporalStack._makeView(view:inputs:)(1, v73, v36, v64, v65, v70, v74);
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v40 = swift_beginAccess();
    v41 = *(v37 + 16);
    *&v80[0] = __PAIR64__(OffsetAttribute2, v71);
    DWORD2(v80[0]) = v41;
    MEMORY[0x1EEE9AC00](v40);
    v42 = type metadata accessor for TemporalStackLayoutComputer();
    v61[-2] = v42;
    v61[-1] = swift_getWitnessTable();
    type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for Attribute<LayoutComputer>, MEMORY[0x1E697E3B8], MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v80, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_21, &v61[-4], v42, MEMORY[0x1E69E73E0], v43, MEMORY[0x1E69E7410], v44);
    if ((v35 & 0x20) != 0)
    {
      v80[2] = v102;
      v80[3] = v103;
      v80[4] = v104;
      LODWORD(v80[5]) = v105;
      v80[0] = v100;
      v80[1] = v101;
      _ViewInputs.position.getter();
      LayoutChildGeometries.init(parentSize:parentPosition:layoutComputer:)();
      *&v80[0] = *v83;
      DWORD2(v80[0]) = *&v83[8];
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for [ViewGeometry], MEMORY[0x1E697DFB8], MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
      v45 = Attribute.init<A>(body:value:flags:update:)();
      MEMORY[0x1EEE9AC00](v45);
      v46 = v69;
      v61[-8] = v73;
      v61[-7] = v46;
      v47 = v65;
      v61[-6] = v64;
      v61[-5] = v47;
      v61[-4] = v70;
      v61[-3] = v38;
      LODWORD(v61[-2]) = v48;
      MEMORY[0x1EEE9AC00](v48);
      v61[-4] = v23;
      v61[-3] = partial apply for closure #2 in static TemporalStack._makeView(view:inputs:);
      v61[-2] = v49;
      AGGraphMutateAttribute();
    }

    LOBYTE(v80[0]) = 0;
    _ViewOutputs.layoutComputer.setter();
  }

  v75 = v34;
  v76 = 0;
  v50 = *(v34 + 16);
  if (v50)
  {
    v74 = lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();

    v73 = -v50;
    v51 = 1;
    do
    {
      v52 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v54 = *v53;
      v55 = v52(v80, 0);
      v76 = v51;
      if (v54 != MEMORY[0x1E697DC60])
      {
        LODWORD(v80[0]) = v71;
        MEMORY[0x1EEE9AC00](v55);
        v61[-4] = swift_getAssociatedTypeWitness();
        v56 = type metadata accessor for TemporalStackPreference();
        v61[-3] = v56;
        v61[-2] = swift_getWitnessTable();
        v57 = type metadata accessor for Attribute();
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v80, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, &v61[-6], v56, MEMORY[0x1E69E73E0], v57, MEMORY[0x1E69E7410], v58);
        swift_beginAccess();
        v83[0] = 0;
        PreferencesOutputs.subscript.setter();
        swift_endAccess();
      }

      ++v51;
    }

    while (v73 + v51 != 1);
  }

  else
  {
  }

  v80[2] = v96;
  v80[3] = v97;
  v80[4] = v98;
  LODWORD(v80[5]) = v99;
  v80[0] = v94;
  v80[1] = v95;
  outlined destroy of _ViewInputs(v80);

  swift_beginAccess();
  v59 = v68;
  *v68 = v77;
  result = v78;
  v59[1] = v78;
  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance TemporalStack<A, B>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t default argument 3 of TemporalStackChildren.init(view:inputs:childGeometries:children:nextID:)()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for TemporalStackChild();

  return Array.init()();
}

uint64_t closure #1 in static TemporalStack._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v8 = type metadata accessor for TemporalStack();
  v9 = *(v8 + 68);
  v14[2] = v8;
  v10 = MEMORY[0x1E6981D58];
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, closure #1 in static PointerOffset.of(_:)partial apply, v14, v10, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v15;
}

double TemporalStackChild.init(state:hash:subgraph:outputs:id:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *(a2 + 16);
  v13 = *a4;
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  v14 = type metadata accessor for TemporalStackChild();
  v15 = a7 + v14[7];
  *v15 = *a2;
  *(v15 + 16) = v12;
  *(a7 + v14[8]) = a3;
  v16 = (a7 + v14[9]);
  *v16 = v13;
  result = a4[1];
  v16[1] = result;
  *(a7 + v14[10]) = a5;
  return result;
}

uint64_t TemporalStackChildren.view.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TemporalStack();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t TemporalStackChildren.updateValue()(void *a1)
{
  v110 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v4 = a1[2];
  v94 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for TemporalStackChild();
  v74 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v70 - v7;
  v95 = AssociatedTypeWitness;
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v96 = &v70 - v12;
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v86 = &v70 - v14;
  v89 = swift_getAssociatedTypeWitness();
  v73 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v70 - v15;
  v16 = a1[5];
  v17 = a1[6];
  v18 = a1[7];
  *&v19 = v4;
  v78 = a1[3];
  *(&v19 + 1) = v78;
  v79 = v3;
  *&v20 = v3;
  v77 = v16;
  *(&v20 + 1) = v16;
  v101 = v19;
  v102 = v20;
  v93 = v17;
  *&v103 = v17;
  *(&v103 + 1) = v18;
  v76 = v18;
  v91 = type metadata accessor for TemporalStack();
  v90 = *(v91 - 1);
  MEMORY[0x1EEE9AC00](v91);
  v22 = &v70 - v21;
  v23 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v24);
  AssociatedConformanceWitness = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v70 - v27;
  v29 = *(v1 + 80);
  v105 = *(v1 + 64);
  v106 = v29;
  v30 = *(v1 + 96);
  v31 = *(v1 + 16);
  v101 = *v1;
  v102 = v31;
  v32 = *(v1 + 48);
  v103 = *(v1 + 32);
  v104 = v32;
  v33 = (v1 + 104);
  v34 = *(v1 + 104);
  v80 = v1;
  v35 = *(v1 + 112);
  v107 = v30;
  v108 = v34;
  v109 = v35;
  v70 = a1;
  TemporalStackChildren.view.getter(v22);
  v72 = v23;
  v36 = v23;
  v37 = v86;
  v38 = *(v36 + 16);
  v38(v28, v22, v4);
  v90[1](v22, v91);
  v100 = 0;
  *&v101 = 0;
  v39 = v34;
  v40 = v96;
  v99 = MEMORY[0x18D00CD40](v39, v6);
  v71 = v28;
  v38(AssociatedConformanceWitness, v28, v4);
  v41 = v95;
  dispatch thunk of Sequence.makeIterator()();
  v81 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v42 = v87;
  v43 = *(v87 + 48);
  v84 = v87 + 48;
  v83 = v43;
  v44 = 0;
  if (v43(v37, 1, v41) != 1)
  {
    v44 = 0;
    v52 = *(v42 + 32);
    v51 = v42 + 32;
    v82 = v52;
    v91 = (v51 - 16);
    v90 = (v74 + 8);
    v87 = v51;
    v94 = (v51 - 24);
    v75 = *MEMORY[0x1E698D3F8];
    for (i = v52(v40, v37, v41); ; i = v82(v53, v55, v54))
    {
      v56 = v99;
      if (v99 < v44)
      {
        break;
      }

      v57 = -1;
      while (v44 != v56)
      {
        Array.subscript.getter();
        v58 = v92;
        v59 = v95;
        (*v91)(v92, v8, v95);
        (*v90)(v8, v6);
        v60 = dispatch thunk of static Equatable.== infix(_:_:)();
        v61 = *v94;
        (*v94)(v58, v59);
        ++v57;
        --v56;
        if (v60)
        {
          if (v57)
          {
            v98 = v44;
            v97 = v44 + v57;
            type metadata accessor for Array();
            swift_getWitnessTable();
            MutableCollection.swapAt(_:_:)();
            v100 = 1;
          }

          v53 = v96;
          goto LABEL_11;
        }
      }

      i = AGGraphGetCurrentAttribute();
      v53 = v96;
      if (i == v75)
      {
        goto LABEL_23;
      }

      v62 = i;
      v63 = v80;
      v64 = AGSubgraphGetGraph();
      v65 = AGSubgraphCreate();

      AGSubgraphAddChild();
      AGGraphClearUpdate();
      v66 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      *(&v68 + 1) = v76;
      *&v68 = v93;
      *(&v67 + 1) = v77;
      *&v67 = v79;
      closure #1 in TemporalStackChildren.updateValue()(v63, v62, v53, v65, &v101, &v100, &v99, v81, v78, v67, v68);
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      v61 = *v94;
LABEL_11:
      *&v101 = ++v44;
      v54 = v95;
      v61(v53, v95);
      v55 = v86;
      dispatch thunk of IteratorProtocol.next()();
      if (v83(v55, 1, v54) == 1)
      {
        goto LABEL_2;
      }
    }

    goto LABEL_22;
  }

LABEL_2:
  i = (*(v73 + 8))(v88, v89);
  v46 = v99;
  if (v99 < v44)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v99 != v44)
  {
    v47 = (v74 + 8);
    while (v44 < v46)
    {
      --v46;
      type metadata accessor for Array();
      Array.remove(at:)();
      AGSubgraphRef.willInvalidate(isInserted:)(1);
      AGSubgraphInvalidate();
      i = (*v47)(v8, v6);
      if (v44 == v46)
      {
        v100 = 1;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_25:
  if ((v100 & 1) == 0)
  {
    type metadata accessor for Array();
    i = AGGraphGetOutputValue();
    if (i)
    {
      return (*(v72 + 8))(v71, v81);
    }
  }

LABEL_8:
  v98 = *v33;
  MEMORY[0x1EEE9AC00](i);
  *(&v68 + 1) = v70;
  WitnessTable = swift_getWitnessTable();
  v48 = type metadata accessor for Array();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v98, partial apply for closure #1 in StatefulRule.value.setter, &v67 + 8, v48, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v49);

  return (*(v72 + 8))(v71, v81);
}

uint64_t closure #1 in TemporalStackChildren.updateValue()(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, void *a7, _BYTE *a8, uint64_t a9, __int128 a10, __int128 a11)
{
  v76 = a6;
  v77 = a7;
  v74 = a5;
  v75 = a4;
  v68 = a3;
  v59 = a2;
  v78 = 0;
  *&v82 = *(&a11 + 1);
  v60 = a11;
  v116 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for TemporalStackChild();
  v72 = *(v14 - 8);
  v73 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v58[-v17];
  v61 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v79 = &v58[-v19];
  *&v109 = a8;
  *(&v109 + 1) = a9;
  v110 = a10;
  v111 = a11;
  v65 = type metadata accessor for TemporalStackChildView();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v58[-v20];
  v21 = *(a1 + 112);
  *(a1 + 112) = v21 + 1;
  v22 = *(a1 + 24);
  v23 = *(a1 + 56);
  v111 = *(a1 + 40);
  v112 = v23;
  v113 = *(a1 + 72);
  v114 = *(a1 + 88);
  v109 = *(a1 + 8);
  v110 = v22;
  v24 = v22;
  v100 = v23;
  v101 = v113;
  v98 = v22;
  v99 = v111;
  v102 = v114;
  v97 = v109;
  swift_beginAccess();
  v25 = v24[3];
  v115[1] = v24[2];
  v115[2] = v25;
  v26 = v24[5];
  v115[3] = v24[4];
  v115[4] = v26;
  v115[0] = v24[1];
  type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, MEMORY[0x1E697ECC0], MEMORY[0x1E697DAC0]);
  v27 = swift_allocObject();
  memmove((v27 + 16), v24 + 1, 0x50uLL);
  *&v98 = v27;
  outlined init with copy of _ViewInputs(&v109, &v103);
  outlined init with copy of CachedEnvironment(v115, &v103);

  _GraphInputs.pushStableIndex(_:)(0);
  v66 = a10;
  v67 = a8;
  *&v103 = a8;
  v64 = a9;
  *(&v103 + 1) = a9;
  v104 = a10;
  v81 = *(&a10 + 1);
  *&v105 = v60;
  *(&v105 + 1) = v82;
  v28 = type metadata accessor for TemporalStackChildren();
  v80 = a1;
  v29 = *(a1 + 92);
  v30 = *MEMORY[0x1E698D3F8];
  v83 = AssociatedTypeWitness;
  v69 = v21;
  if (v29 != v30)
  {
    *&v103 = __PAIR64__(v21, v59);
    DWORD2(v103) = v29;
    MEMORY[0x1EEE9AC00](v28);
    v31 = type metadata accessor for TemporalStackChildGeometry();
    *&v58[-16] = v31;
    *&v58[-8] = swift_getWitnessTable();
    AssociatedTypeWitness = v83;
    type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for Attribute<ViewGeometry>, MEMORY[0x1E697DFB8], MEMORY[0x1E698D388]);
    v32 = v78;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v103, closure #1 in Attribute.init<A>(_:)partial apply, &v58[-32], v31, MEMORY[0x1E69E73E0], v33, MEMORY[0x1E69E7410], v34);
    v78 = v32;
    Attribute<A>.size()();
    _ViewInputs.size.setter();
    Attribute<A>.origin()();
    _ViewInputs.position.setter();
  }

  v35 = v79;
  v36 = *v80;
  v37 = *(v61 + 16);
  v38 = v68;
  v37(v79, v68, AssociatedTypeWitness);
  v39 = v62;
  v40 = v36;
  v41 = v64;
  v42 = TemporalStackChildView.init(view:state:)(v40, v35, v62);
  v67 = v58;
  MEMORY[0x1EEE9AC00](v42);
  v43 = v65;
  *&v58[-32] = v41;
  *&v58[-24] = v43;
  *&v58[-16] = swift_getWitnessTable();
  v44 = type metadata accessor for Attribute();
  v45 = v37;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v39, closure #1 in Attribute.init<A>(_:)partial apply, &v58[-48], v43, MEMORY[0x1E69E73E0], v44, MEMORY[0x1E69E7410], v46);
  (*(v63 + 8))(v39, v43);
  v47 = v79;
  v48 = v83;
  _GraphValue.init(_:)();
  v93[2] = v99;
  v93[3] = v100;
  v93[4] = v101;
  v94 = v102;
  v93[0] = v97;
  v93[1] = v98;
  v105 = v99;
  v106 = v100;
  v107 = v101;
  v108 = v102;
  v103 = v97;
  v104 = v98;
  outlined init with copy of _ViewInputs(v93, v95);
  static View.makeDebuggableView(view:inputs:)();
  v95[2] = v105;
  v95[3] = v106;
  v95[4] = v107;
  v96 = v108;
  v95[0] = v103;
  v95[1] = v104;
  outlined destroy of _ViewInputs(v95);
  *&v103 = v100;
  DWORD2(v103) = DWORD2(v100);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v45(v47, v38, v48);
    StrongHash.init<A>(of:)();
    v105 = v99;
    v106 = v100;
    v107 = v101;
    v108 = v102;
    v103 = v97;
    v104 = v98;
    LOBYTE(v84[0]) = 0;
    _s7SwiftUI31AccessibilityAttachmentModifierV04makeC19PropertiesTransform_5value6inputs7outputs14AttributeGraph0L0VyAA0C8NodeListVGSgxm_13PropertyValueQzAA11_ViewInputsVAA01_R7OutputsVtAA0cG3KeyRzlFZAA0cG0VAAE013TemporalStateU0V_Ttt3B5(v87, *(&v87 + 1), v88, &v103, v85, SLODWORD(v86));
    PreferencesOutputs.subscript.setter();
  }

  v45(v47, v38, v48);
  StrongHash.init<A>(of:)();
  v49 = v88;
  v82 = v87;
  v45(v47, v38, v48);
  v87 = v82;
  LODWORD(v88) = v49;
  *&v84[0] = v85;
  v84[1] = v86;
  v50 = v71;
  v51 = v75;
  v52 = TemporalStackChild.init(state:hash:subgraph:outputs:id:)(v47, &v87, v75, v84, v69, v48, v71);
  v54 = v72;
  v53 = v73;
  (*(v72 + 16))(v70, v50, v73, v52);
  type metadata accessor for Array();
  v55 = v51;
  Array.insert(_:at:)();
  (*(v54 + 8))(v50, v53);
  v89 = v99;
  v90 = v100;
  v91 = v101;
  v92 = v102;
  v87 = v97;
  v88 = v98;
  result = outlined destroy of _ViewInputs(&v87);
  v57 = v77;
  *v76 = 1;
  ++*v57;
  return result;
}

uint64_t TemporalStackChildView.init(view:state:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for TemporalStackChildView() + 68);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 32))(&a3[v5], a2, AssociatedTypeWitness);
}

uint64_t TemporalStackChildView.value.getter(uint64_t a1)
{
  v4 = *(a1 + 24);
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D000B90](a1, v4, WitnessTable);
  Rule.withObservation<A>(observationCenter:do:)();
}

uint64_t closure #1 in TemporalStackChildView.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23[0] = a1;
  v23[1] = a8;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v14 = type metadata accessor for TemporalStack();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - v16;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v18 = type metadata accessor for TemporalStackChildView();
  v19 = v23[0];
  TemporalStackChildren.view.getter(v17);
  v20 = *&v17[*(v14 + 72)];
  v21 = *(v15 + 8);

  v21(v17, v14);
  v20(v19 + *(v18 + 68));
}

uint64_t TemporalStackChildGeometry.value.getter@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v27 = a4;
  v28 = HIDWORD(a1);
  v7 = type metadata accessor for TemporalStackChild();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v29 = a1;
  v30 = a3;
  v31 = a2;
  v32[0] = specialized TemporalStackChildGeometry.children.getter();
  type metadata accessor for Array();
  swift_getWitnessTable();
  result = RandomAccessCollection<>.indices.getter();
  v12 = v33[0];
  v13 = (v8 + 8);
  if (*(&v33[0] + 1) <= *&v33[0])
  {
    v14 = *&v33[0];
  }

  else
  {
    v14 = *(&v33[0] + 1);
  }

  v15 = (*&v33[0] << 6) - 32;
  v16 = *&v33[0];
  do
  {
    if (*(&v12 + 1) == v16)
    {
      return static ViewGeometry.zero.getter();
    }

    if (*(&v12 + 1) < v12)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v14 == v16)
    {
      goto LABEL_15;
    }

    v17 = v16 + 1;
    specialized TemporalStackChildGeometry.children.getter();

    Array.subscript.getter();

    v18 = *&v10[*(v7 + 40)];
    result = (*v13)(v10, v7);
    v15 += 64;
    ++v16;
  }

  while (v18 != v28);
  type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for [ViewGeometry], MEMORY[0x1E697DFB8], MEMORY[0x1E69E62F8]);
  result = AGGraphGetValue();
  if (v17 - 1 < 0)
  {
    goto LABEL_16;
  }

  if ((v17 - 1) < *(*result + 16))
  {
    v19 = (*result + v15);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[3];
    v33[2] = v19[2];
    v33[3] = v22;
    v33[0] = v20;
    v33[1] = v21;
    v23 = v19[1];
    v24 = v27;
    *v27 = *v19;
    v24[1] = v23;
    v25 = v19[3];
    v24[2] = v19[2];
    v24[3] = v25;
    return outlined init with copy of ViewGeometry(v33, v32);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t TemporalStackLayoutComputer.updateValue()(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 16);
  *&v16 = specialized TemporalStackChildGeometry.children.getter();
  v10[2] = v3;
  type metadata accessor for TemporalStackChild();
  v4 = type metadata accessor for Array();

  WitnessTable = swift_getWitnessTable();
  v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in TemporalStackLayoutComputer.updateValue(), v10, v4, MEMORY[0x1E697FC70], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);

  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v16 = *AGGraphGetValue();
    v13 = v9;
    v14 = v9;
    v15 = v2;
    v11 = v9;
    v12 = v7;
    lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout();
    swift_getWitnessTable();
    Layout.updateLayoutComputer<A>(rule:layoutContext:children:)();
  }

  return result;
}

uint64_t closure #1 in TemporalStackLayoutComputer.updateValue()()
{
  type metadata accessor for TemporalStackChild();
  _ViewOutputs.layoutComputer.getter();
  return LayoutProxyAttributes.init(layoutComputer:traitsList:)();
}

uint64_t TemporalStackDisplayList.value.getter(uint64_t a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  DisplayList.Version.init(forUpdate:)();
  type metadata accessor for CGPoint(0);
  v15 = *v1;
  AGGraphGetValue();
  AGGraphGetValue();
  *&v18 = v15;
  *(&v18 + 1) = __PAIR64__(v4, v3);
  LODWORD(v19) = v5;
  v21 = specialized TemporalStackDisplayList.children.getter();
  v17 = *(a1 + 16);
  type metadata accessor for TemporalStackChild();
  v6 = type metadata accessor for Array();
  type metadata accessor for (StrongHash, DisplayList)();
  v8 = v7;

  WitnessTable = swift_getWitnessTable();
  v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in TemporalStackDisplayList.value.getter, v16, v6, v8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  v21 = v11;
  v22 = 0;
  v23 = 0;
  v24 = 0x80000000;
  Value = AGGraphGetValue();
  v13 = Value[1];
  v18 = *Value;
  v19 = v13;
  MEMORY[0x18D00B390]();
  v20 = v15;
  DisplayList.Item.init(_:frame:identity:version:)();
  return DisplayList.init(_:)();
}

uint64_t closure #1 in TemporalStackDisplayList.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TemporalStackChild() + 28);
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v4;
  if ((PreferencesOutputs.subscript.getter() & 0x100000000) != 0)
  {
    return DisplayList.init()();
  }

  Value = AGGraphGetValue();
  v6 = *(Value + 8);
  v7 = *(Value + 12);
  *(a2 + 24) = *Value;
  *(a2 + 32) = v6;
  *(a2 + 36) = v7;
}

uint64_t TemporalStackPreference.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v49 = &v43 - v9;
  v10 = type metadata accessor for TemporalStackChild();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v43 - v14;
  v16 = *(a3 + 16);
  v52 = a4;
  v16(a2, a3, v13);
  v17 = a3;
  v51 = a1;
  v57 = a2;
  v18 = specialized TemporalStackPreference.children.getter();

  if (MEMORY[0x18D00CDE0](v19, v10))
  {
    v20 = v8;
    v21 = 0;
    v22 = &v15[*(v10 + 36)];
    v54 = (v11 + 8);
    v55 = (v11 + 16);
    v56 = v17;
    v46 = (v20 + 16);
    v47 = v17 + 24;
    v45 = (v20 + 8);
    v43 = v12;
    v44 = (v20 + 32);
    v53 = 1;
    v23 = v15;
    v48 = v11;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v11 + 16))(v23, v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21, v10);
        v32 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v43 != 8)
        {
          __break(1u);
          return result;
        }

        v58[0] = result;
        (*v55)(v23, v58, v10);
        swift_unknownObjectRelease();
        v32 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_14:
          __break(1u);
        }
      }

      v33 = *v22;
      v34 = *v54;

      v35 = *(v22 + 1);
      v34(v23, v10);
      v58[0] = v33;
      v58[1] = v35;
      v36 = _ViewOutputs.subscript.getter();

      if ((v36 & 0x100000000) == 0)
      {
        if (v53)
        {
          v24 = AssociatedTypeWitness;
          Value = AGGraphGetValue();
          v26 = v22;
          v27 = v23;
          v28 = v49;
          (*v46)(v49, Value, v24);
          v29 = v52;
          (*v45)(v52, v24);
          v30 = v28;
          v23 = v27;
          v22 = v26;
          v11 = v48;
          (*v44)(v29, v30, v24);
        }

        else
        {
          v38 = MEMORY[0x1EEE9AC00](v37);
          v39 = v52;
          v41 = v56;
          v40 = v57;
          *(&v43 - 4) = v51;
          *(&v43 - 3) = v40;
          *(&v43 - 2) = v41;
          *(&v43 - 2) = v36;
          (*(v41 + 24))(v39, partial apply for closure #1 in TemporalStackPreference.value.getter, v38);
        }

        v53 = 0;
      }

      ++v21;
      if (v32 == MEMORY[0x18D00CDE0](v18, v10))
      {
      }
    }
  }
}

uint64_t closure #1 in TemporalStackPreference.value.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, Value, AssociatedTypeWitness);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance TemporalStackPreference<A, B>@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance TemporalStackPreference<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI11DisplayListV4ItemV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 104);
  v4 = (result + 104);
  while (v2)
  {
    v5 = *(v3 - 5);
    v6 = *v3;
    v3 += 20;
    result = *v4 == v6 && *(v4 - 5) == v5;
    v8 = result != 1 || v2-- == 1;
    v4 += 20;
    if (v8)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static TemporalState.== infix(_:_:)(int32x4_t *a1, int32x4_t *a2)
{
  v2 = 0;
  if ((vminv_u16(vmovn_s32(vceqq_s32(*a1, *a2))) & 1) != 0 && a1[1].i32[0] == a2[1].i32[0])
  {
    v3 = a2[2].i32[1];
    v4 = a2[2].u16[0];
    v5 = a1[2].i32[1];
    v6 = a1[2].u16[0];
    LODWORD(v2) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI11DisplayListV4ItemV_Tt1g5(a1[1].i64[1], a2[1].i64[1]) & (v6 == v4);
    if (v5 == v3)
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries()
{
  result = lazy protocol witness table cache variable for type LayoutChildGeometries and conformance LayoutChildGeometries;
  if (!lazy protocol witness table cache variable for type LayoutChildGeometries and conformance LayoutChildGeometries)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutChildGeometries and conformance LayoutChildGeometries);
  }

  return result;
}

uint64_t partial apply for closure #2 in static TemporalStack._makeView(view:inputs:)(uint64_t a1)
{
  v3 = *(v1 + 64);
  result = type metadata accessor for TemporalStackChildren();
  *(a1 + 92) = v3;
  return result;
}

uint64_t assignWithTake for TemporalState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  return a1;
}

uint64_t destroy for TemporalStackChildren(uint64_t a1)
{
}

uint64_t initializeWithCopy for TemporalStackChildren(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  v6 = *(a2 + 96);
  v5 = *(a2 + 104);
  *(a1 + 96) = v6;
  *(a1 + 104) = v5;
  *(a1 + 112) = *(a2 + 112);

  v7 = v6;

  return a1;
}

uint64_t assignWithCopy for TemporalStackChildren(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  v4 = *(a2 + 96);
  v5 = *(a1 + 96);
  *(a1 + 96) = v4;
  v6 = v4;

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

__n128 __swift_memcpy116_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 28);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for TemporalStackChildren(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for TemporalStackChildren(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 116))
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

uint64_t storeEnumTagSinglePayload for TemporalStackChildren(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 116) = 1;
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

    *(result + 116) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for TemporalStackChild()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TemporalStackChild(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v11 = (a2 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *v11;
    *(v10 + 16) = *(v11 + 16);
    *v10 = v12;
    v13 = ((v10 + 27) & 0xFFFFFFFFFFFFFFF8);
    v14 = ((v11 + 27) & 0xFFFFFFFFFFFFFFF8);
    v15 = *v14;
    *v13 = *v14;
    v16 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
    *v16 = *v17;
    *(v16 + 8) = *(v17 + 8);
    *(v16 + 12) = *(v17 + 12);
    *((v16 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 19) & 0xFFFFFFFFFFFFFFF8);
    v18 = v15;
  }

  return v3;
}

uint64_t destroy for TemporalStackChild(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
}

uint64_t initializeWithCopy for TemporalStackChild(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  v10 = ((v7 + 27) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 27) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  *v10 = *v11;
  v13 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v13 = *v14;
  *(v13 + 8) = *(v14 + 8);
  *(v13 + 12) = *(v14 + 12);
  *((v13 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 19) & 0xFFFFFFFFFFFFFFF8);
  v15 = v12;

  return a1;
}

uint64_t assignWithCopy for TemporalStackChild(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  v7[3] = v8[3];
  v7[4] = v8[4];
  v9 = ((v7 + 27) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 27) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *v9;
  *v9 = *v10;
  v13 = v11;

  v14 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;

  *(v14 + 8) = *(v15 + 8);
  *(v14 + 12) = *(v15 + 12);
  *((v14 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for TemporalStackChild(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  v10 = ((v7 + 27) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 27) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for TemporalStackChild(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  v7[3] = v8[3];
  v7[4] = v8[4];
  v9 = ((v7 + 27) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 27) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v9;
  *v9 = *v10;

  v12 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;

  *(v12 + 8) = *(v13 + 8);
  *(v12 + 12) = *(v13 + 12);
  *((v12 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TemporalStackChild(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  if (v7 < a2 && *(a1 + ((((((((v6 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4)))
  {
    return v7 + *a1 + 1;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    return (*(v4 + 48))();
  }

  v9 = *((((a1 + v6 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 27) & 0xFFFFFFFFFFFFFFF8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

void storeEnumTagSinglePayload for TemporalStackChild(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (((((((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4;
  if (v8 >= a2)
  {
    if (v8 < a3)
    {
      a1[v10] = 0;
    }

    if (a2)
    {
      if (v7 < 0x7FFFFFFF)
      {
        v13 = (((&a1[v9 + 3] & 0xFFFFFFFFFFFFFFFCLL) + 27) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v14 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v14 = a2 - 1;
        }

        *v13 = v14;
      }

      else
      {
        v12 = *(v6 + 56);

        v12();
      }
    }
  }

  else
  {
    v11 = ~v8 + a2;
    bzero(a1, v10);
    *a1 = v11;
    if (v8 < a3)
    {
      a1[v10] = 1;
    }
  }
}

uint64_t specialized TemporalStackChildGeometry.children.getter()
{
  type metadata accessor for TemporalStackChild();
  type metadata accessor for Array();
  return *AGGraphGetValue();
}

uint64_t specialized TemporalStackDisplayList.children.getter()
{
  type metadata accessor for TemporalStackChild();
  type metadata accessor for Array();
  return *AGGraphGetValue();
}

uint64_t specialized TemporalStackPreference.children.getter()
{
  type metadata accessor for TemporalStackChild();
  type metadata accessor for Array();
  return *AGGraphGetValue();
}

unint64_t lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout()
{
  result = lazy protocol witness table cache variable for type _ZStackLayout and conformance _ZStackLayout;
  if (!lazy protocol witness table cache variable for type _ZStackLayout and conformance _ZStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ZStackLayout and conformance _ZStackLayout);
  }

  return result;
}

void type metadata accessor for (StrongHash, DisplayList)()
{
  if (!lazy cache variable for type metadata for (StrongHash, DisplayList))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (StrongHash, DisplayList));
    }
  }
}

uint64_t type metadata completion function for TemporalStackChildView()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_DWORD *initializeBufferWithCopyOfBuffer for TemporalStackChildView(_DWORD *a1, _DWORD *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-5 - v6) | v6) - *(*(AssociatedTypeWitness - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    (*(v5 + 16))((a1 + v6 + 4) & ~v6, (a2 + v6 + 4) & ~v6, AssociatedTypeWitness);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 & 0xFC ^ 0x1FC) & (v6 + 16)));
  }

  return a1;
}

uint64_t destroy for TemporalStackChildView(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 8);
  v5 = (a1 + *(v3 + 80) + 4) & ~*(v3 + 80);

  return v4(v5, AssociatedTypeWitness);
}

_DWORD *initializeWithCopy for TemporalStackChildView(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  (*(v5 + 16))((a1 + *(v5 + 80) + 4) & ~*(v5 + 80), (a2 + *(v5 + 80) + 4) & ~*(v5 + 80), AssociatedTypeWitness);
  return a1;
}

_DWORD *assignWithCopy for TemporalStackChildView(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  (*(v5 + 24))((a1 + *(v5 + 80) + 4) & ~*(v5 + 80), (a2 + *(v5 + 80) + 4) & ~*(v5 + 80), AssociatedTypeWitness);
  return a1;
}

_DWORD *initializeWithTake for TemporalStackChildView(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  (*(v5 + 32))((a1 + *(v5 + 80) + 4) & ~*(v5 + 80), (a2 + *(v5 + 80) + 4) & ~*(v5 + 80), AssociatedTypeWitness);
  return a1;
}

_DWORD *assignWithTake for TemporalStackChildView(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  (*(v5 + 40))((a1 + *(v5 + 80) + 4) & ~*(v5 + 80), (a2 + *(v5 + 80) + 4) & ~*(v5 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for TemporalStackChildView(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v13 = *(v5 + 48);

    return v13((a1 + v7 + 4) & ~v7);
  }

  v8 = ((v7 + 4) & ~v7) + *(*(AssociatedTypeWitness - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((a2 - v6 + ~(-1 << v9)) >> v9) + 1;
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
      if (v6)
      {
        goto LABEL_23;
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

  return v6 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for TemporalStackChildView(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 4) & ~v8) + *(v6 + 64);
  if (a3 <= v7)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v7 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
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
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v7 < a2)
  {
    v11 = ~v7 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
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

  else if (v10)
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
  v16 = *(v6 + 56);

  v16(&a1[v8 + 4] & ~v8, a2);
}

unint64_t SelectionBasedStorage.$menu.getter(unsigned int a1)
{
  v1 = a1;
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    v1 = 0;
  }

  return v1 | ((*MEMORY[0x1E698D3F8] == a1) << 32);
}

unint64_t SelectionBasedStorage.$action.getter(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v2 = 0;
  }

  return v2 | ((*MEMORY[0x1E698D3F8] == a2) << 32);
}

unint64_t SelectionBasedStorage.$isSelectionEnabled.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a2))
  {
    v2 = 0;
  }

  return v2 | ((*MEMORY[0x1E698D3F8] == HIDWORD(a2)) << 32);
}

uint64_t _GraphInputs.setSelectionStorage<A>(_:forType:)(uint64_t a1, uint64_t a2)
{
  v3[0] = a1;
  v3[1] = a2;
  type metadata accessor for _GraphInputs.SelectionBasedStorageKey();
  swift_getWitnessTable();
  return specialized _GraphInputs.subscript.setter(v3);
}

unint64_t WeakSelectionBasedStorage.$menu.getter()
{
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    v1 = 0;
  }

  else
  {
    v1 = Attribute;
  }

  return v1 | ((Attribute == *MEMORY[0x1E698D3F8]) << 32);
}

uint64_t (*WeakSelectionBasedStorage.action.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  type metadata accessor for Set();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Optional();
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    return 1;
  }

  v9 = *WeakValue;
  if (!*WeakValue)
  {
    return 0;
  }

  v10 = WeakValue[1];
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = v9;
  v11[5] = v10;

  return thunk for @escaping @callee_guaranteed (@in_guaranteed Set<A>) -> (@out ())partial apply;
}

unint64_t WeakSelectionBasedStorage.$isSelectionEnabled.getter()
{
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    v1 = 0;
  }

  else
  {
    v1 = Attribute;
  }

  return v1 | ((Attribute == *MEMORY[0x1E698D3F8]) << 32);
}

unint64_t WeakSelectionBasedStorage.$action.getter()
{
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    v1 = 0;
  }

  else
  {
    v1 = Attribute;
  }

  return v1 | ((Attribute == *MEMORY[0x1E698D3F8]) << 32);
}

uint64_t SelectionMenuModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v32[0] = a2;
  *(&v32[0] + 1) = a3;

  type metadata accessor for SelectionMenuModifier();
  swift_getWitnessTable();
  v11 = type metadata accessor for _ViewModifier_Content();
  *&v36 = a4;
  *(&v36 + 1) = a5;
  *&v37 = a6;
  *(&v37 + 1) = a7;
  v12 = type metadata accessor for SelectionMenuModifierCore();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D00A570](v34, v32, v11, v12, WitnessTable);

  v32[0] = v34[0];
  v14 = type metadata accessor for ModifiedContent();
  v30 = WitnessTable;
  v31 = &protocol witness table for SelectionMenuModifierCore<A, B>;
  v15 = swift_getWitnessTable();
  View.sharingPickerHost()(v14, v15);

  v26 = v42;
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v22 = v38;
  v23 = v39;
  v24 = v40;
  v25 = v41;
  v20 = v36;
  v21 = v37;
  type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>();
  v16 = type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v17 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v20, v16, v17);
  v34[6] = v26;
  v34[7] = v27;
  v34[8] = v28;
  v35 = v29;
  v34[2] = v22;
  v34[3] = v23;
  v34[4] = v24;
  v34[5] = v25;
  v34[0] = v20;
  v34[1] = v21;
  v18 = *(*(v16 - 8) + 8);
  v18(v34, v16);
  v26 = v32[6];
  v27 = v32[7];
  v28 = v32[8];
  v29 = v33;
  v22 = v32[2];
  v23 = v32[3];
  v24 = v32[4];
  v25 = v32[5];
  v20 = v32[0];
  v21 = v32[1];
  static ViewBuilder.buildExpression<A>(_:)(&v20, v16, v17);
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v38 = v22;
  v39 = v23;
  v40 = v24;
  v41 = v25;
  v36 = v20;
  v37 = v21;
  return v18(&v36, v16);
}

uint64_t static SelectionMenuModifierCore._makeInputs(modifier:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = *MEMORY[0x1E69E9840];
  v11 = a2[1];
  v49[0] = *a2;
  v49[1] = v11;
  v13 = *a2;
  v12 = a2[1];
  v49[2] = a2[2];
  v14 = *a1;
  v33 = v13;
  v34 = v12;
  v35 = a2[2];
  outlined init with copy of _GraphInputs(v49, v32);
  _ViewInputs.init(withoutGeometry:)();
  _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA03AllfghM0V_Ttg5(0);
  v31 = v14;
  *&v33 = a3;
  *(&v33 + 1) = a4;
  *&v34 = a5;
  *(&v34 + 1) = a6;
  type metadata accessor for SelectionMenuModifierCore();
  type metadata accessor for _GraphValue();
  v15 = _GraphValue.value.getter();
  v50[2] = v45;
  v50[3] = v46;
  v50[4] = v47;
  v51 = v48;
  v50[0] = v43;
  v50[1] = v44;
  v16 = AGSubgraphGetCurrent();
  if (!v16)
  {
    __break(1u);
  }

  v30[1] = v30;
  *&v42[36] = v45;
  *&v42[52] = v46;
  *&v42[68] = v47;
  *&v42[4] = v43;
  *&v42[20] = v44;
  *&v32[44] = *&v42[32];
  *&v32[60] = *&v42[48];
  *&v32[76] = *&v42[64];
  *&v32[12] = *v42;
  *&v42[84] = v48;
  *v32 = v16;
  *&v32[8] = v15;
  *&v32[92] = *&v42[80];
  *&v32[28] = *&v42[16];
  MEMORY[0x1EEE9AC00](v16);
  type metadata accessor for Set();
  v29[2] = swift_getFunctionTypeMetadata1();
  *&v33 = a3;
  *(&v33 + 1) = a4;
  *&v34 = a5;
  *(&v34 + 1) = a6;
  v17 = type metadata accessor for SelectionMenuModifierCore.Child();
  v29[3] = v17;
  v29[4] = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(v50, &v33);
  v18 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v32, closure #1 in Attribute.init<A>(_:)partial apply, v29, v17, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  v37 = *&v32[64];
  v38 = *&v32[80];
  v39 = *&v32[96];
  v33 = *v32;
  v34 = *&v32[16];
  v35 = *&v32[32];
  v36 = *&v32[48];
  (*(*(v17 - 8) + 8))(&v33, v17);
  v20 = LODWORD(v41[0]);
  v21 = a2[1];
  v40[0] = *a2;
  v40[1] = v21;
  v23 = *a2;
  v22 = a2[1];
  v40[2] = a2[2];
  *v32 = v23;
  *&v32[16] = v22;
  *&v32[32] = a2[2];
  outlined init with copy of _GraphInputs(v40, v41);
  v24 = _GraphInputs.selectionStorage<A>(forType:)();
  v26 = v25;
  v27 = v24 & 0xFFFFFFFF00000000;
  v41[0] = *v32;
  v41[1] = *&v32[16];
  v41[2] = *&v32[32];
  outlined destroy of _GraphInputs(v41);
  _GraphInputs.setSelectionStorage<A>(_:forType:)(v27 | v20, v26);
  *&v32[32] = v45;
  *&v32[48] = v46;
  *&v32[64] = v47;
  *&v32[80] = v48;
  *v32 = v43;
  *&v32[16] = v44;
  return outlined destroy of _ViewInputs(v32);
}

uint64_t (*SelectionMenuModifierCore.Child.value.getter(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 80);
  v13[4] = *(v1 + 64);
  v13[5] = v3;
  v14 = *(v1 + 96);
  v4 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v4;
  v5 = *(v1 + 48);
  v13[2] = *(v1 + 32);
  v13[3] = v5;
  v6 = swift_allocObject();
  v7 = *(a1 + 32);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 32) = v7;
  v8 = *(v1 + 80);
  *(v6 + 112) = *(v1 + 64);
  *(v6 + 128) = v8;
  *(v6 + 144) = *(v1 + 96);
  v9 = *(v1 + 16);
  *(v6 + 48) = *v1;
  *(v6 + 64) = v9;
  v10 = *(v1 + 48);
  *(v6 + 80) = *(v1 + 32);
  *(v6 + 96) = v10;
  (*(*(a1 - 8) + 16))(v12, v13, a1);
  return partial apply for closure #1 in SelectionMenuModifierCore.Child.value.getter;
}

uint64_t closure #1 in SelectionMenuModifierCore.Child.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AGGraphClearUpdate();
  v7 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in closure #1 in SelectionMenuModifierCore.Child.value.getter(a2, a1, a4, &v10);
  AGSubgraphSetCurrent();

  v8 = v10;
  AGGraphSetUpdate();
  return v8;
}

uint64_t closure #1 in closure #1 in SelectionMenuModifierCore.Child.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v28 = a4;
  v51 = *MEMORY[0x1E69E9840];
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10[5];
  v42 = v10[4];
  v43 = v11;
  v44 = *(v10 + 24);
  v12 = v10[1];
  v38 = *v10;
  v39 = v12;
  v13 = v10[3];
  v40 = v10[2];
  v41 = v13;
  *&v45 = v14;
  *(&v45 + 1) = v15;
  *&v46 = v16;
  *(&v46 + 1) = v17;
  type metadata accessor for SelectionMenuModifierCore.Child();
  v18 = specialized SelectionMenuModifierCore.Child.modifier.getter();

  v18(a2);

  v31[2] = a3;
  v19 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v9, partial apply for closure #1 in Attribute.init(value:), v31, a3, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
  (*(v7 + 8))(v9, a3);
  _GraphValue.init(_:)();
  v21 = *(a1 + 64);
  v22 = *(a1 + 32);
  v47 = *(a1 + 48);
  v48 = v21;
  v23 = *(a1 + 64);
  v49 = *(a1 + 80);
  v24 = *(a1 + 32);
  v45 = *(a1 + 16);
  v46 = v24;
  v34 = v47;
  v35 = v23;
  v36 = *(a1 + 80);
  v50 = *(a1 + 96);
  v37 = *(a1 + 96);
  v32 = v45;
  v33 = v22;
  outlined init with copy of _ViewInputs(&v45, &v38);
  static View.makeDebuggableView(view:inputs:)();
  v40 = v34;
  v41 = v35;
  v42 = v36;
  LODWORD(v43) = v37;
  v38 = v32;
  v39 = v33;
  outlined destroy of _ViewInputs(&v38);
  *&v32 = v29;
  DWORD2(v32) = v30;
  v25 = PreferencesOutputs.subscript.getter();

  if ((v25 & 0x100000000) != 0)
  {
    result = MEMORY[0x1E69E7CC0];
  }

  else
  {
    AGGraphGetValue();
  }

  *v28 = result;
  return result;
}

__n128 protocol witness for Rule.value.getter in conformance SelectionMenuModifierCore<A, B>.Child@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = SelectionMenuModifierCore.Child.value.getter(a1);
  v6 = v5;
  v7 = swift_allocObject();
  result = *(a1 + 16);
  v9 = *(a1 + 32);
  *(v7 + 16) = result;
  *(v7 + 32) = v9;
  *(v7 + 48) = v4;
  *(v7 + 56) = v6;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Set<A>) -> (@owned PlatformItemList);
  a2[1] = v7;
  return result;
}

uint64_t static SelectionActionModifier._makeInputs(modifier:inputs:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a2[1];
  v25[0] = *a2;
  v25[1] = v6;
  v8 = *a2;
  v7 = a2[1];
  v25[2] = a2[2];
  v22 = v8;
  v23 = v7;
  v24 = a2[2];
  outlined init with copy of _GraphInputs(v25, v26);
  v9 = _GraphInputs.selectionStorage<A>(forType:)();
  v11 = v10 & 0xFFFFFFFF00000000;
  v26[0] = v22;
  v26[1] = v23;
  v26[2] = v24;
  outlined destroy of _GraphInputs(v26);
  type metadata accessor for SelectionActionModifier();
  type metadata accessor for _GraphValue();
  v20 = a3;
  v21 = a4;
  LODWORD(v22) = _GraphValue.value.getter();
  *(&v22 + 1) = partial apply for closure #1 in Attribute.subscript.getter;
  *&v23 = swift_getKeyPath();
  type metadata accessor for Set();
  swift_getFunctionTypeMetadata1();
  v17 = type metadata accessor for Optional();
  v18 = type metadata accessor for Map();
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v22, closure #1 in Attribute.init<A>(_:)partial apply, v16, v18, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);

  return _GraphInputs.setSelectionStorage<A>(_:forType:)(v9, v11 | v15);
}

uint64_t key path getter for SelectionActionModifier.action : <A>SelectionActionModifier<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Set<A>) -> ();
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return outlined copy of AppIntentExecutor?(v5);
}

uint64_t key path setter for SelectionActionModifier.action : <A>SelectionActionModifier<A>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Set<A>) -> (@out ());
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *a2;
  outlined copy of AppIntentExecutor?(v5);
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v10);
  *a2 = v9;
  a2[1] = v8;
  return result;
}

uint64_t static SelectionEnabledModifier._makeInputs(modifier:inputs:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a2[1];
  v25[0] = *a2;
  v25[1] = v6;
  v8 = *a2;
  v7 = a2[1];
  v25[2] = a2[2];
  v22 = v8;
  v23 = v7;
  v24 = a2[2];
  outlined init with copy of _GraphInputs(v25, v26);
  v9 = _GraphInputs.selectionStorage<A>(forType:)();
  v11 = v10;
  v26[0] = v22;
  v26[1] = v23;
  v26[2] = v24;
  outlined destroy of _GraphInputs(v26);
  type metadata accessor for SelectionEnabledModifier();
  type metadata accessor for _GraphValue();
  v20 = a3;
  v21 = a4;
  LODWORD(v22) = _GraphValue.value.getter();
  *(&v22 + 1) = partial apply for closure #1 in Attribute.subscript.getter;
  *&v23 = swift_getKeyPath();
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  v18 = type metadata accessor for Map();
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v22, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v16, v18, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);

  return _GraphInputs.setSelectionStorage<A>(_:forType:)(v9, v11 | (v15 << 32));
}

uint64_t key path getter for SelectionEnabledModifier.isEnabled : <A>SelectionEnabledModifier<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a2 + a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@unowned Bool);
  a4[1] = v8;
}

uint64_t key path setter for SelectionEnabledModifier.isEnabled : <A>SelectionEnabledModifier<A>(uint64_t *a1, uint64_t (**a2)(), uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out Bool);
  a2[1] = v8;
  return result;
}

uint64_t View.contextMenu<A, B>(forSelectionType:menu:primaryAction:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t (*a6)()@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = a3;
  v34 = a4;
  v35 = a8;
  v28 = a2;
  v30 = a9;
  v31 = a1;
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v14 = type metadata accessor for ModifiedContent();
  v42 = a11;
  v43 = _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_2(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>);
  v32 = MEMORY[0x1E697E858];
  v38 = a6;
  v39 = v14;
  v40 = a10;
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for SelectionMenuModifier();
  v16 = type metadata accessor for ModifiedContent();
  v29 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v21 = v30;
  v20 = v31;
  v19[5] = v30;
  v19[6] = a10;
  v19[7] = a11;
  v19[8] = v20;
  v19[9] = v28;
  v38 = partial apply for closure #1 in View.contextMenu<A, B>(forSelectionType:menu:primaryAction:);
  v39 = v19;

  v22 = v21;
  MEMORY[0x18D00A570](&v38, a5, v15, v21);

  v23 = v33;
  v38 = v33;
  v39 = v34;
  outlined copy of AppIntentExecutor?(v33);
  v24 = type metadata accessor for SelectionActionModifier();
  v25 = swift_getWitnessTable();
  v36 = v22;
  v37 = v25;
  v26 = swift_getWitnessTable();
  MEMORY[0x18D00A570](&v38, v16, v24, v26);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v23);
  return (*(v29 + 8))(v18, v16);
}

uint64_t View.contextMenu<A, B>(forSelectionType:menu:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a8;
  v16[7] = a9;
  v16[8] = a2;
  v16[9] = a3;
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  type metadata accessor for ModifiedContent();
  v19[2] = a9;
  v19[3] = _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_2(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>);
  swift_getWitnessTable();
  v19[0] = partial apply for closure #1 in View.contextMenu<A, B>(forSelectionType:menu:);
  v19[1] = v16;

  v17 = type metadata accessor for SelectionMenuModifier();
  MEMORY[0x18D00A570](v19, a4, v17, a7);
}

uint64_t closure #1 in View.contextMenu<A, B>(forSelectionType:menu:primaryAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(v8);
  View.styleContext<A>(_:)();
  return (*(v7 + 8))(v10, a6);
}

uint64_t View.selectionDisabled<A>(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a2;
  v13[7] = a3;
  v16[0] = partial apply for closure #1 in View.selectionDisabled<A>(for:_:);
  v16[1] = v13;
  v14 = type metadata accessor for SelectionEnabledModifier();

  MEMORY[0x18D00A570](v16, a4, v14, a6);
}

uint64_t View.contextAction<A>(forSelectionType:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[0] = a2;
  v11[1] = a3;
  v9 = type metadata accessor for SelectionActionModifier();

  MEMORY[0x18D00A570](v11, a4, v9, a6);
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a2);
}

uint64_t get_witness_table_7SwiftUI4ViewRzSHRd__r__lAA15ModifiedContentVyxAA24SelectionEnabledModifier33_E64D6BCC46683FFB4BDFBD3A47C476DFLLVyqd__GGAaBHPxAaBHD1__AhA0cH0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 24));
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t specialized _GraphInputs.subscript.setter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  return PropertyList.subscript.setter();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@unowned Bool)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result & 1;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Set<A>) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = a1;
  return v2(&v4);
}

uint64_t partial apply for closure #1 in WeakSelectionBasedStorage.init(_:)@<X0>(uint64_t *a1@<X8>)
{
  return partial apply for closure #1 in WeakSelectionBasedStorage.init(_:)(a1);
}

{
  result = AGCreateWeakAttribute();
  *a1 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Set<A>) -> (@owned PlatformItemList)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 48))(*a1);
  *a2 = result;
  return result;
}

void RemoteScenes.SessionInfo.init(session:commonVersion:)()
{
  swift_unknownObjectRelease();

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void RemoteScenes.SessionInfo.__deallocating_deinit()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t dispatch thunk of RemoteScenes.Session.openRemoteScene()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return v7(a1, a2);
}

uint64_t dispatch thunk of RemoteScenes.Session.openRemoteScene(initialData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of RemoteScenes.Session.dismissRemoteScene()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return v7(a1, a2);
}

uint64_t dispatch thunk of RemoteScenes.Session.sendUpdate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 80) + **(a4 + 80));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return v11(a1, a2, a3, a4);
}

uint64_t AutomaticNavigationLinkStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t ButtonNavigationLinkStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = 4;
  type metadata accessor for Button<NavigationLinkStyleConfiguration.Label>(0, &lazy cache variable for type metadata for Button<NavigationLinkStyleConfiguration.Label>, &type metadata for NavigationLinkStyleConfiguration.Label, &protocol witness table for NavigationLinkStyleConfiguration.Label, type metadata accessor for Button);
  v7 = &a2[*(v6 + 36)];
  *v7 = partial apply for closure #1 in UIKitSearchScopeCoordinating<>.onChange(selectedScope:);
  v7[1] = v5;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
}

uint64_t View.navigationLinkStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NavigationLinkStyleModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedNavigationLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedNavigationLink and conformance ResolvedNavigationLink();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance NavigationLinkStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t SelectionContext.canSelect<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _sSay7SwiftUI10Selectable_pGMaTm_0(0, &lazy cache variable for type metadata for [Selectable], &lazy cache variable for type metadata for Selectable, &protocol descriptor for Selectable, MEMORY[0x1E69E62F8]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v9 = *WeakValue;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = (v9 + 32);
  v11 = *(v9 + 16) + 1;
  while (--v11)
  {
    v12 = v10 + 5;
    v13 = v10[3];
    v14 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v13);
    v15 = (*(v14 + 16))(a1, a4, a5, v13, v14);
    v10 = v12;
    if (v15 != 2)
    {
      goto LABEL_9;
    }
  }

  v15 = 2;
LABEL_9:

  return v15;
}

uint64_t SelectionContext.isSelected<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Binding<Selection>?();
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    return 2;
  }

  outlined init with copy of Binding<Selection>?(WeakValue, v19);
  outlined init with copy of Binding<Selection>?(v19, v17);
  if (!v18)
  {
    outlined destroy of Binding<Selection>?(v19);
    outlined destroy of Binding<Selection>?(v17);
    return 2;
  }

  _sSay7SwiftUI10Selectable_pGMaTm_0(0, &lazy cache variable for type metadata for Binding<Selection>, &lazy cache variable for type metadata for Selection, &protocol descriptor for Selection, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v14);
  outlined destroy of Binding<Selection>(v17);
  v9 = v15;
  v10 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v11 = (*(v10 + 32))(a1, a4, a5, v9, v10);
  outlined destroy of Binding<Selection>?(v19);
  v12 = v11 & 1;
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v12;
}

uint64_t View.selectionContainer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a3, a5, a3, a4);
  type metadata accessor for Binding();
  type metadata accessor for AsAnySelection();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  outlined assign with take of Binding<Selection>?(v8, v9);
  MEMORY[0x18D00A570](v9, a2, &type metadata for PrimitiveSelectionContainerModifier, a4);
  return outlined destroy of PrimitiveSelectionContainerModifier(v9);
}

uint64_t outlined destroy of Binding<Selection>(uint64_t a1)
{
  _sSay7SwiftUI10Selectable_pGMaTm_0(0, &lazy cache variable for type metadata for Binding<Selection>, &lazy cache variable for type metadata for Selection, &protocol descriptor for Selection, MEMORY[0x1E6981948]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t assignWithTake for PrimitiveSelectionContainerModifier(uint64_t result, uint64_t a2)
{
  if (*(result + 8))
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      *result = *a2;
      v4 = result;

      *(v4 + 8) = v3;

      __swift_destroy_boxed_opaque_existential_1(v4 + 16);
      v5 = *(a2 + 32);
      *(v4 + 16) = *(a2 + 16);
      *(v4 + 32) = v5;
    }

    else
    {
      v4 = result;
      outlined destroy of Binding<Selection>(result);
      v7 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v7;
      *(v4 + 32) = *(a2 + 32);
    }

    *(v4 + 48) = *(a2 + 48);
    return v4;
  }

  else
  {
    v6 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v6;
    *(result + 32) = *(a2 + 32);
    *(result + 48) = *(a2 + 48);
  }

  return result;
}

unint64_t protocol witness for Rule.value.getter in conformance PrimitiveSelectionContainerModifier.MakeSelectionContext@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  v4 = AGCreateWeakAttribute();
  if (v3 == *MEMORY[0x1E698D3F8])
  {
    result = 0;
    LODWORD(v6) = 0;
  }

  else
  {
    result = AGCreateWeakAttribute();
    v6 = HIDWORD(result);
  }

  *a1 = v4;
  *(a1 + 8) = result;
  *(a1 + 12) = v6;
  return result;
}

uint64_t outlined init with copy of Binding<Selection>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<Selection>?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Binding<Selection>?(uint64_t a1)
{
  type metadata accessor for Binding<Selection>?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized NSTextAlignment.init(in:fallbackAlignment:)(uint64_t a1, char *a2)
{
  v2 = *a2;
  EnvironmentValues.textAlignment.getter();
  if (v8 == 2)
  {
    v3 = v2;
  }

  else
  {
    v3 = v8;
  }

  v4 = EnvironmentValues.multilineTextAlignment.getter();
  v5 = v4;
  if ((v3 & 1) != 0 && v4 != 1)
  {

    return 4;
  }

  EnvironmentValues.layoutDirection.getter();
  EnvironmentValues.writingMode.getter();

  if (v7)
  {
    return v5;
  }

  if (v5)
  {
    if (v5 == 1)
    {
      return v5;
    }

    if (v9)
    {
      return 0;
    }

    return 2;
  }

  if (v9)
  {
    return 2;
  }

  return 0;
}

__n128 UIGestureRecognizerRepresentableContext.init(coordinator:converter:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  v7 = a3 + *(type metadata accessor for UIGestureRecognizerRepresentableContext() + 36);
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  result = *(a2 + 44);
  *(v7 + 44) = result;
  return result;
}

void UIGestureRecognizerRepresentable.makeCoordinator(proxy:)()
{
  UIGestureRecognizerRepresentable.makeCoordinator(proxy:)();
}

{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t UIGestureRecognizerRepresentableContext.coordinator.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t UIGestureRecognizerRepresentableContext.converter.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 36));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v10[0] = v3[2];
  v5 = v10[0];
  *(v10 + 12) = *(v3 + 44);
  v6 = *(v10 + 12);
  *a2 = v9[0];
  a2[1] = v4;
  a2[2] = v5;
  *(a2 + 44) = v6;
  return outlined init with copy of UIGestureRecognizerRepresentableCoordinateSpaceConverter(v9, &v8);
}

double UIGestureRecognizerRepresentableCoordinateSpaceConverter.location<A>(in:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v1 = Strong;
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 window];
  }

  else
  {
    v4 = 0;
  }

  [v1 locationInView_];

  MEMORY[0x18D00ABE0](v6, v7, v8, v9, v10, v11, v12);
  GeometryProxy.convert<A>(globalPoint:to:)();
  v5 = v13;
  static Update.end()();

  return v5;
}

double UIGestureRecognizerRepresentableCoordinateSpaceConverter.convert<A>(globalPoint:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MEMORY[0x18D00ABE0](a1, a2, a3, a4, a5, a6, a7);
  GeometryProxy.convert<A>(globalPoint:to:)();
  v8 = v7;
  static Update.end()();
  return v8;
}

void *UIGestureRecognizerRepresentableCoordinateSpaceConverter.velocity<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  *&result = COERCE_DOUBLE(swift_unknownObjectWeakLoadStrong());
  if (*&result != 0.0)
  {
    v8 = result;
    if ([result respondsToSelector_])
    {
      MEMORY[0x18D00ABE0]([v8 *a5]);
      GeometryProxy.convert<A>(globalPoint:to:)();
      v10 = v9;
      v11 = static Update.end()();
      MEMORY[0x18D00ABE0](v11);
      GeometryProxy.convert<A>(globalPoint:to:)();
      v13 = v12;
      static Update.end()();

      *&result = v10 - v13;
    }

    else
    {

      *&result = 0.0;
    }
  }

  return result;
}

uint64_t View.gesture<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GestureRecognizerModifier();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  (*(v7 + 16))(v9, a1, a3, v12);
  OptionalFormatInputToString.init(format:)(v9, a3, v14);
  MEMORY[0x18D00A570](v14, a2, v10, v16);
  return (*(v11 + 8))(v14, v10);
}

uint64_t type metadata completion function for UIGestureRecognizerRepresentableContext()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for UIGestureRecognizerRepresentableContext(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  if ((v7 & 0x1000F8) != 0 || ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 60 > 0x18)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + (((v7 & 0xF8) + 23) & ~(v7 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    v10 = (a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    v12 = *(v11 + 8);
    v13 = *(v11 + 24);
    v14 = *(v11 + 40);
    *(v10 + 56) = *(v11 + 56);
    *(v10 + 40) = v14;
    *(v10 + 24) = v13;
    *(v10 + 8) = v12;
  }

  return a1;
}

uint64_t destroy for UIGestureRecognizerRepresentableContext(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for UIGestureRecognizerRepresentableContext(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 16;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  v9 = *(v8 + 56);
  v10 = *(v8 + 40);
  v11 = *(v8 + 24);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 24) = v11;
  *(v7 + 40) = v10;
  *(v7 + 56) = v9;

  return a1;
}

uint64_t assignWithCopy for UIGestureRecognizerRepresentableContext(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 24;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;

  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 20) = *(v8 + 20);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 28) = *(v8 + 28);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 36) = *(v8 + 36);
  *(v7 + 40) = *(v8 + 40);
  *(v7 + 44) = *(v8 + 44);
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 52) = *(v8 + 52);
  *(v7 + 56) = *(v8 + 56);
  return a1;
}

uint64_t initializeWithTake for UIGestureRecognizerRepresentableContext(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 32;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = v8[1];
  v9 = v8[2];
  v11 = *v8;
  *(v7 + 44) = *(v8 + 44);
  v7[1] = v10;
  v7[2] = v9;
  *v7 = v11;
  return a1;
}

uint64_t assignWithTake for UIGestureRecognizerRepresentableContext(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 40;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;

  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 20) = *(v8 + 20);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 28) = *(v8 + 28);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 36) = *(v8 + 36);
  *(v7 + 40) = *(v8 + 40);
  *(v7 + 44) = *(v8 + 44);
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 52) = *(v8 + 52);
  *(v7 + 56) = *(v8 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for UIGestureRecognizerRepresentableContext(_DWORD *a1, unsigned int a2)
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

  if (v7 < a2 && *(a1 + ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 60))
  {
    return v7 + *a1 + 1;
  }

  if (v6 < 0x7FFFFFFF)
  {
    v11 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v10 = *(v5 + 48);

    return v10(a1);
  }
}

void storeEnumTagSinglePayload for UIGestureRecognizerRepresentableContext(_DWORD *a1, uint64_t a2, unsigned int a3)
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

  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 60;
  if (v9 >= a2)
  {
    if (v9 < a3)
    {
      *(a1 + v10) = 0;
    }

    if (a2)
    {
      if (v7 < 0x7FFFFFFF)
      {
        v12 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v12 + 40) = 0u;
          v13 = a2 & 0x7FFFFFFF;
          *(v12 + 24) = 0u;
          *(v12 + 8) = 0u;
          *(v12 + 56) = 0;
        }

        else
        {
          v13 = (a2 - 1);
        }

        *v12 = v13;
      }

      else
      {
        v11 = *(v6 + 56);

        v11(a1, a2);
      }
    }
  }

  else
  {
    bzero(a1, v10);
    *a1 = ~v9 + a2;
    if (v9 < a3)
    {
      *(a1 + v10) = 1;
    }
  }
}

uint64_t initializeWithCopy for UIGestureRecognizerRepresentableCoordinateSpaceConverter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for UIGestureRecognizerRepresentableCoordinateSpaceConverter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for UIGestureRecognizerRepresentableCoordinateSpaceConverter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for UIGestureRecognizerRepresentableCoordinateSpaceConverter(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 60))
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

uint64_t storeEnumTagSinglePayload for UIGestureRecognizerRepresentableCoordinateSpaceConverter(uint64_t result, int a2, int a3)
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
      *(result + 60) = 1;
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

    *(result + 60) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _MenuButtonStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _MenuButtonStyleConfiguration.Label and conformance _MenuButtonStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for _MenuButtonStyleConfiguration.Content(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _MenuButtonStyleConfiguration.Content and conformance _MenuButtonStyleConfiguration.Content();
  *(a1 + 8) = result;
  return result;
}

uint64_t AccessibilityDebugger.Entry.dictionaryRepresentation.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = v0[2];
  v4 = *(v0 + 6);
  v5 = v0[4];
  MetatypeMetadata = swift_getMetatypeMetadata();
  *&v34 = v1;
  outlined init with take of Any(&v34, v39);
  v6 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v6;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v8 = v38;
  MetatypeMetadata = MEMORY[0x1E69E7668];
  LODWORD(v34) = v2;
  outlined init with take of Any(&v34, v39);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v38 = v8;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39, 0x7475626972747461, 0xE900000000000065, v9);
  v10 = v38;
  v11 = 0x800000018CD5B900;
  v12 = 2003134838;
  if (v3)
  {
    v12 = 0xD000000000000015;
  }

  MetatypeMetadata = MEMORY[0x1E69E6158];
  if (!v3)
  {
    v11 = 0xE400000000000000;
  }

  *&v34 = v12;
  *(&v34 + 1) = v11;
  outlined init with take of Any(&v34, v39);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v38 = v10;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39, 1684957547, 0xE400000000000000, v13);
  v14 = v38;
  v15 = *(v5 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    *&v39[0] = MEMORY[0x1E69E7CC0];

    v17 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v16 = *&v39[0];
    v18 = (v5 + 64);
    do
    {
      v19 = *(v18 - 6);
      v20 = *(v18 - 2);
      v21 = *(v18 - 2);
      v22 = *v18;
      *&v34 = *(v18 - 4);
      DWORD2(v34) = v19;
      v35 = v20;
      LODWORD(MetatypeMetadata) = v21;
      v37 = v22;
      v17 = AccessibilityDebugger.Entry.dictionaryRepresentation.getter(v17);
      *&v39[0] = v16;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        v25 = v17;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v17 = v25;
        v16 = *&v39[0];
      }

      *(v16 + 16) = v24 + 1;
      *(v16 + 8 * v24 + 32) = v17;
      v18 += 5;
      --v15;
    }

    while (v15);
  }

  type metadata accessor for [[String : Any]]();
  MetatypeMetadata = v26;
  *&v34 = v16;
  outlined init with take of Any(&v34, v39);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v38 = v14;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39, 0x6E6572646C696863, 0xE800000000000000, v27);
  v28 = v38;
  MetatypeMetadata = MEMORY[0x1E69E6370];
  LOBYTE(v34) = v4 & 1;
  outlined init with take of Any(&v34, v39);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v38 = v28;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39, 0x73696C5F77656976, 0xE900000000000074, v29);
  v30 = v38;
  if (v3)
  {
    type metadata accessor for AccessibilityNode();
    swift_unknownObjectRetain();
    if (swift_dynamicCastClass())
    {
      v31 = AccessibilityNode.representedElement.getter();
      MetatypeMetadata = swift_getObjectType();
      *&v34 = v31;
      outlined init with take of Any(&v34, v39);
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v38 = v30;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39, 0x746E656D656C65, 0xE700000000000000, v32);
      swift_unknownObjectRelease();
      return v38;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return v30;
}

uint64_t closure #1 in static AccessibilityDebugger.makeDebugData(graph:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  GraphHost.instantiateIfNeeded()();
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  if (ViewGraph.subscript.getter())
  {
    result = AccessibilityViewGraph.readAndUpdate(graph:)(a1);
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  *a2 = result;
  return result;
}

unint64_t static AccessibilityDebugger.appendNodes(nodes:to:)(unint64_t result, unint64_t a2)
{
  v3 = result;
  if (result >> 62)
  {
LABEL_43:
    result = __CocoaSet.count.getter();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = v3 & 0xC000000000000001;
      v54 = v3 & 0xFFFFFFFFFFFFFF8;
      v57 = v3;
      v58 = a2;
      v55 = v3 & 0xC000000000000001;
      v56 = v4;
      while (1)
      {
        if (v6)
        {
          v12 = MEMORY[0x18D00E9C0](v5, v3);
        }

        else
        {
          if (v5 >= *(v54 + 16))
          {
            goto LABEL_38;
          }

          v12 = *(v3 + 8 * v5 + 32);
        }

        v13 = v12;
        v14 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if ((v12[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_source + 4] & 1) == 0)
        {
          break;
        }

LABEL_7:
        swift_beginAccess();

        static AccessibilityDebugger.appendNodes(nodes:to:)(v11, a2);

        ++v5;
        if (v14 == v4)
        {
          return result;
        }
      }

      v15 = *&v12[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_source];
      v16 = *a2;
      if (*(*a2 + 16))
      {
        v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
        if (v18)
        {
          v19 = v16[7] + 24 * v17;
          v61 = *v19;
          v62 = *(v19 + 8);
          v63 = *(v19 + 16);
          outlined copy of ArrayWith2Inline<AccessibilityNode>.Storage(*v19, v62, v63);
          specialized ArrayWith2Inline.append(_:)(v13);
          outlined copy of ArrayWith2Inline<AccessibilityNode>.Storage(v61, v62, v63);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v21 = *a2;
          v59 = *a2;
          a2 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
          v23 = v21[2];
          v24 = (v22 & 1) == 0;
          v25 = v23 + v24;
          if (__OFADD__(v23, v24))
          {
            goto LABEL_41;
          }

          v3 = v22;
          if (v21[3] >= v25)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v44 = v63;
              specialized _NativeDictionary.copy()();
              v45 = v59;
              if (v3)
              {
                goto LABEL_30;
              }

              goto LABEL_34;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
            v26 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
            if ((v3 & 1) != (v27 & 1))
            {
              goto LABEL_45;
            }

            a2 = v26;
          }

          v44 = v63;
          v45 = v59;
          if (v3)
          {
LABEL_30:
            v46 = v45[7] + 24 * a2;
            v47 = *v46;
            v48 = *(v46 + 8);
            *v46 = v61;
            *(v46 + 8) = v62;
            v49 = *(v46 + 16);
            *(v46 + 16) = v44;
            outlined consume of ArrayWith2Inline<AccessibilityNode>.Storage(v47, v48, v49);
            outlined consume of ArrayWith2Inline<AccessibilityNode>.Storage(v61, v62, v44);
LABEL_36:
            a2 = v58;
            *v58 = v45;
            goto LABEL_6;
          }

LABEL_34:
          v45[(a2 >> 6) + 8] |= 1 << a2;
          *(v45[6] + 4 * a2) = v15;
          v51 = v45[7] + 24 * a2;
          *v51 = v61;
          *(v51 + 8) = v62;
          *(v51 + 16) = v44;
          outlined consume of ArrayWith2Inline<AccessibilityNode>.Storage(v61, v62, v44);
          v52 = v45[2];
          v37 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v37)
          {
            goto LABEL_42;
          }

          v45[2] = v53;
          goto LABEL_36;
        }
      }

      type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_18CD69590;
      *(v28 + 32) = v13;
      v3 = type metadata accessor for AccessibilityNode();
      v29 = v13;
      ArrayWith2Inline.init(arrayLiteral:)();
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v31 = a2;
      a2 = v30;
      v32 = *v31;
      v60 = *v31;
      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
      v35 = v32[2];
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        goto LABEL_39;
      }

      v3 = v34;
      if (v32[3] >= v38)
      {
        if ((a2 & 1) == 0)
        {
          v50 = v33;
          specialized _NativeDictionary.copy()();
          v33 = v50;
          a2 = v58;
          v40 = v60;
          if ((v3 & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_4;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v38, a2);
        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
        if ((v3 & 1) != (v39 & 1))
        {
LABEL_45:
          type metadata accessor for AGAttribute(0);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      a2 = v58;
      v40 = v60;
      if ((v3 & 1) == 0)
      {
LABEL_26:
        v40[(v33 >> 6) + 8] |= 1 << v33;
        *(v40[6] + 4 * v33) = v15;
        v41 = v40[7] + 24 * v33;
        *v41 = v61;
        *(v41 + 8) = v62;
        *(v41 + 16) = v63;
        v42 = v40[2];
        v37 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v37)
        {
          goto LABEL_40;
        }

        v40[2] = v43;
        goto LABEL_5;
      }

LABEL_4:
      v7 = v40[7] + 24 * v33;
      v8 = *v7;
      v9 = *(v7 + 8);
      *v7 = v61;
      *(v7 + 8) = v62;
      v10 = *(v7 + 16);
      *(v7 + 16) = v63;
      outlined consume of ArrayWith2Inline<AccessibilityNode>.Storage(v8, v9, v10);
LABEL_5:
      *a2 = v40;
LABEL_6:
      v4 = v56;
      v3 = v57;
      v6 = v55;
      goto LABEL_7;
    }
  }

  return result;
}

void static AccessibilityDebugger.appendDebugData(from:to:nodes:)(uint64_t a1, char **a2, uint64_t a3)
{
  Value = AGTreeElementGetValue();
  if (Value == *MEMORY[0x1E698D3F8] || !AGTreeElementGetType())
  {
    AGTreeElementMakeChildIterator();
    while (1)
    {
      NextChild = AGTreeElementGetNextChild();
      if (!NextChild)
      {
        break;
      }

      static AccessibilityDebugger.appendDebugData(from:to:nodes:)(NextChild, a2, a3);
    }
  }

  else if (AGTreeElementGetFlags() & 1) == 0 && *(a3 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(Value), (v6))
  {
    v7 = *(a3 + 56) + 24 * v5;
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    outlined copy of ArrayWith2Inline<AccessibilityNode>.Storage(*v7, v9, *(v7 + 16));
    v11 = 0;
    v28 = v9;
    v29 = v8;
    v27 = v10;
    if (v10 > 1)
    {
      goto LABEL_10;
    }

    while (!v10)
    {
      outlined copy of ArrayWith2Inline<AccessibilityNode>.Storage(v8, v9, 0);
      outlined consume of ArrayWith2Inline<AccessibilityNode>.Storage(v8, v9, 0);
      if (v11 == 1)
      {
        goto LABEL_40;
      }

      while (1)
      {
LABEL_16:
        v31 = specialized ArrayWith2Inline.subscript.getter(v11, v8, v9, v10);
        default argument 4 of AccessibilityDebugger.Entry.init(type:attribute:kind:flags:children:)();
        AccessibilityDebugger.Entry.init(type:attribute:kind:flags:children:)();
        AGTreeElementMakeChildIterator();
        while (1)
        {
          v13 = AGTreeElementGetNextChild();
          if (!v13)
          {
            break;
          }

          static AccessibilityDebugger.appendDebugData(from:to:nodes:)(v13, v36, a3);
        }

        v14 = v36[0];
        v15 = *a2;
        swift_unknownObjectRetain();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
        }

        v17 = *(v15 + 2);
        v16 = *(v15 + 3);
        if (v17 >= v16 >> 1)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v15);
        }

        swift_unknownObjectRelease();
        *(v15 + 2) = v17 + 1;
        v18 = &v15[40 * v17];
        *(v18 + 4) = v32;
        ++v11;
        *(v18 + 10) = v33;
        *(v18 + 6) = v34;
        *(v18 + 14) = v35;
        *(v18 + 8) = v14;
        *a2 = v15;
        v9 = v28;
        v8 = v29;
        v10 = v27;
        if (v27 <= 1)
        {
          break;
        }

LABEL_10:
        if (v10 == 2)
        {
          v12 = v8[2];
          outlined copy of ArrayWith2Inline<AccessibilityNode>.Storage(v8, v9, 2);
          outlined consume of ArrayWith2Inline<AccessibilityNode>.Storage(v8, v9, 2);
          if (v11 == v12)
          {
            goto LABEL_40;
          }
        }

        else
        {
          outlined copy of ArrayWith2Inline<AccessibilityNode>.Storage(v8, v9, 3);
          if (!v11)
          {
            goto LABEL_40;
          }
        }
      }
    }

    outlined copy of ArrayWith2Inline<AccessibilityNode>.Storage(v8, v9, 1);

    if (v11 != 2)
    {
      goto LABEL_16;
    }

LABEL_40:
    outlined consume of ArrayWith2Inline<AccessibilityNode>.Storage(v8, v9, v10);
  }

  else
  {
    AccessibilityDebugger.Kind.init(type:)();
    if (v32 == 1)
    {
      AGTreeElementMakeChildIterator();
      while (1)
      {
        v20 = AGTreeElementGetNextChild();
        if (!v20)
        {
          break;
        }

        static AccessibilityDebugger.appendDebugData(from:to:nodes:)(v20, a2, a3);
      }
    }

    else
    {
      swift_unknownObjectRetain();
      default argument 4 of AccessibilityDebugger.Entry.init(type:attribute:kind:flags:children:)();
      AccessibilityDebugger.Entry.init(type:attribute:kind:flags:children:)();
      AGTreeElementMakeChildIterator();
      while (1)
      {
        v21 = AGTreeElementGetNextChild();
        if (!v21)
        {
          break;
        }

        static AccessibilityDebugger.appendDebugData(from:to:nodes:)(v21, v36, a3);
      }

      v22 = v36[0];
      v23 = *a2;
      swift_unknownObjectRetain();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
      }

      outlined consume of AccessibilityDebugger.Kind?(v32);

      swift_unknownObjectRelease();
      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      *(v26 + 4) = v32;
      *(v26 + 10) = v33;
      *(v26 + 6) = v34;
      *(v26 + 14) = v35;
      *(v26 + 8) = v22;
      *a2 = v23;
    }
  }
}

void specialized ArrayWith2Inline.append(_:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) == 2)
    {
      v11 = *v1;
      outlined copy of ArrayWith2Inline<AccessibilityNode>.Storage(v2, v3, 2);
      outlined consume of ArrayWith2Inline<AccessibilityNode>.Storage(v2, v3, 2);
      *v1 = 0;
      *(v1 + 8) = 0;
      *(v1 + 16) = 3;
      v5 = a1;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      outlined consume of ArrayWith2Inline<AccessibilityNode>.Storage(*v1, *(v1 + 8), *(v1 + 16));
      *v1 = v11;
      *(v1 + 8) = 0;
      *(v1 + 16) = 2;
      return;
    }

    outlined copy of ArrayWith2Inline<AccessibilityNode>.Storage(*v1, *(v1 + 8), 3);
    outlined consume of ArrayWith2Inline<AccessibilityNode>.Storage(v2, v3, 3);
    v4 = a1;
    *v1 = a1;
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;
  }

  else
  {
    if (*(v1 + 16))
    {
      type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_18CDFD920;
      *(v6 + 32) = v2;
      *(v6 + 40) = v3;
      *(v6 + 48) = a1;
      outlined copy of ArrayWith2Inline<AccessibilityNode>.Storage(v2, v3, 1);
      v7 = a1;
      v8 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7SwiftUI17AccessibilityNodeC_Tt0g5Tm(v6, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo6UIViewC_Tt1g5, specialized Array._copyContents(initializing:));
      outlined consume of ArrayWith2Inline<AccessibilityNode>.Storage(*v1, *(v1 + 8), *(v1 + 16));
      *v1 = v8;
      *(v1 + 8) = 0;
      *(v1 + 16) = 2;
      return;
    }

    outlined copy of ArrayWith2Inline<AccessibilityNode>.Storage(*v1, *(v1 + 8), 0);
    outlined consume of ArrayWith2Inline<AccessibilityNode>.Storage(v2, v3, 0);
    v4 = a1;
    *v1 = v2;
    *(v1 + 8) = a1;
    *(v1 + 16) = 1;
  }

  v9 = v4;
}

uint64_t outlined consume of AccessibilityDebugger.Kind?(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

void outlined consume of ArrayWith2Inline<AccessibilityNode>.Storage(void *a1, void *a2, char a3)
{
  if (a3 == 2)
  {
  }

  else
  {
    if (a3 == 1)
    {

      a1 = a2;
    }

    else
    {
      if (a3)
      {
        return;
      }
    }
  }
}

uint64_t _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7SwiftUI17AccessibilityNodeC_Tt0g5Tm(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t specialized ArrayWith2Inline.subscript.getter(unint64_t a1, void *a2, void *a3, unsigned __int8 a4)
{
  v5 = a2;
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (a2[2] > a1)
      {
        v6 = a2[a1 + 4];
        outlined copy of ArrayWith2Inline<AccessibilityNode>.Storage(a2, a3, 2);
        v7 = v6;
        outlined consume of ArrayWith2Inline<AccessibilityNode>.Storage(v5, a3, 2);
        return v7;
      }

      __break(1u);
    }
  }

  else if (a4)
  {
    if (!a1)
    {
      outlined copy of ArrayWith2Inline<AccessibilityNode>.Storage(a2, a3, 1);

      return v5;
    }

    if (a1 == 1)
    {
      outlined copy of ArrayWith2Inline<AccessibilityNode>.Storage(a2, a3, 1);

      return a3;
    }
  }

  else if (!a1)
  {
    outlined copy of ArrayWith2Inline<AccessibilityNode>.Storage(a2, a3, 0);
    return v5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void type metadata accessor for [[String : Any]]()
{
  if (!lazy cache variable for type metadata for [[String : Any]])
  {
    type metadata accessor for [String : Any]();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [[String : Any]]);
    }
  }
}

Swift::Int NavigationSplitViewColumn.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type NavigationSplitViewColumn and conformance NavigationSplitViewColumn()
{
  result = lazy protocol witness table cache variable for type NavigationSplitViewColumn and conformance NavigationSplitViewColumn;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewColumn and conformance NavigationSplitViewColumn)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewColumn and conformance NavigationSplitViewColumn);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationSplitViewColumn.Tag and conformance NavigationSplitViewColumn.Tag()
{
  result = lazy protocol witness table cache variable for type NavigationSplitViewColumn.Tag and conformance NavigationSplitViewColumn.Tag;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewColumn.Tag and conformance NavigationSplitViewColumn.Tag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewColumn.Tag and conformance NavigationSplitViewColumn.Tag);
  }

  return result;
}

uint64_t TupleCommandContent._resolve(into:)(__int128 *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TupleCommandContent.Visitor();
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA08CommandsD0V_Tt1g5(v4, v27);
  v11 = v27[0];
  (*(v5 + 16))(v7, v2, v4);
  v12 = *(a1 + 2);
  v13 = *(v5 + 32);
  v26 = *a1;
  v13(v10, v7, v4);
  v14 = &v10[*(v8 + 28)];
  *v14 = v26;
  *(v14 + 2) = v12;
  *&v10[*(v8 + 32)] = 0;
  v15 = *(v11 + 16);
  if (v15)
  {
    v16 = *(v8 + 32);
    v17 = (v11 + 40);
    do
    {
      v18 = *v17;
      v17 = (v17 + 24);
      v26 = v18;
      *&v10[v16] = AGTupleElementOffset();
      *v27 = v26;
      TypeConformance<>.visitType<A>(visitor:)(v10, v8, &protocol witness table for TupleCommandContent<A>.Visitor);
      --v15;
    }

    while (v15);
  }

  v19 = &v10[*(v8 + 28)];
  v20 = *(v19 + 1);
  v21 = *(v19 + 2);
  *a1 = *v19;
  *(a1 + 1) = v20;
  *(a1 + 2) = v21;
  v22 = *(v25 + 8);

  return v22(v10, v8);
}