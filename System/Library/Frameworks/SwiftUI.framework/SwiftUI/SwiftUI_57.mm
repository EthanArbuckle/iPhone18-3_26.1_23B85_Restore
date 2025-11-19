uint64_t get_witness_table_7SwiftUI32TimelineProgressViewExtendedBaseRzlAA0cdE0V05FinalcdE033_E25B5CE50FE780022155187DDAA79ACALLVyx_GAA0E0HPyHCTm(void *a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *a1, a1[1]);

  return swift_getWitnessTable();
}

uint64_t instantiation function for generic protocol witness table for TimelineProgressView<A>.ConditionallyArchivableTimelineProgressView(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized TimelineProgressViewUpdateStyle.init(from:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<_TimelineProgressViewBaseEmptyState.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys>, lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys, &unk_1EFF96628, MEMORY[0x1E69E6F48]);
  v28 = v3;
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v26 - v4;
  type metadata accessor for KeyedEncodingContainer<_TimelineProgressViewBaseEmptyState.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TimelineProgressViewUpdateStyle.DefaultCodingKeys>, lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys, &unk_1EFF96608, v2);
  v6 = v5;
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  type metadata accessor for KeyedEncodingContainer<_TimelineProgressViewBaseEmptyState.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TimelineProgressViewUpdateStyle.CodingKeys>, lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys, &unk_1EFF965E8, v2);
  v10 = v9;
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys();
  v13 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v6;
  v15 = v29;
  v14 = v30;
  v16 = v31;
  v33 = a1;
  v17 = KeyedDecodingContainer.allKeys.getter();
  v18 = (2 * *(v17 + 16)) | 1;
  v34 = v17;
  v35 = v17 + 32;
  v36 = 0;
  v37 = v18;
  v19 = specialized Collection<>.popFirst()();
  if (v19 == 2 || v36 != v37 >> 1)
  {
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v24 = &type metadata for TimelineProgressViewUpdateStyle;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v32 + 8))(v12, v10);
    swift_unknownObjectRelease();
    a1 = v33;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v19;
  if (v19)
  {
    v38 = 1;
    lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v32;
    (*(v16 + 8))(v14, v28);
  }

  else
  {
    v38 = 0;
    lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v32;
    (*(v15 + 8))(v8, v27);
  }

  (*(v21 + 8))(v12, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v20 & 1;
}

unint64_t lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys()
{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys()
{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<_TimelineProgressViewBaseEmptyState.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t outlined init with copy of ClosedRange<Date>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in TimelineProgressView.FinalTimelineProgressView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for TimelineProgressView.FinalTimelineProgressView() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return closure #1 in TimelineProgressView.FinalTimelineProgressView.body.getter(v6, v3, v4, a1);
}

uint64_t partial apply for closure #1 in TimelineProgressView.ConditionallyArchivableTimelineProgressView.archivedBody.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for TimelineProgressView.ConditionallyArchivableTimelineProgressView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return closure #1 in TimelineProgressView.ConditionallyArchivableTimelineProgressView.archivedBody.getter(a1, v8, v5, v6, a2);
}

uint64_t destroy for DefaultDateProgressLabel(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v6 = *(*(v2 - 8) + 8);
  (v6)((v2 - 8), a1, v2);
  type metadata accessor for ClosedRange<Date>();
  v4 = a1 + *(v3 + 36);

  return v6(v4, v2);
}

uint64_t assignWithCopy for DefaultDateProgressLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 24);
  v7(a1, a2, v6);
  type metadata accessor for ClosedRange<Date>();
  v7(a1 + *(v8 + 36), a2 + *(v8 + 36), v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for DefaultDateProgressLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 40);
  v7(a1, a2, v6);
  type metadata accessor for ClosedRange<Date>();
  v7(a1 + *(v8 + 36), a2 + *(v8 + 36), v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void type metadata accessor for _SequenceBox<PeriodicTimelineSchedule.Entries>()
{
  if (!lazy cache variable for type metadata for _SequenceBox<PeriodicTimelineSchedule.Entries>)
  {
    type metadata accessor for PeriodicTimelineSchedule.Entries();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type PeriodicTimelineSchedule.Entries and conformance PeriodicTimelineSchedule.Entries, MEMORY[0x1E69803D8]);
    v0 = type metadata accessor for _SequenceBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SequenceBox<PeriodicTimelineSchedule.Entries>);
    }
  }
}

uint64_t partial apply for closure #1 in ProgressViewSchedule.entries(from:mode:)@<X0>(char *a1@<X8>)
{
  type metadata accessor for ProgressViewSchedule(0);

  return closure #1 in ProgressViewSchedule.entries(from:mode:)(a1);
}

void type metadata accessor for _IteratorBox<_ClosureBasedIterator<Date>>()
{
  if (!lazy cache variable for type metadata for _IteratorBox<_ClosureBasedIterator<Date>>)
  {
    v0 = MEMORY[0x1E69E6F28];
    type metadata accessor for Date?(255, &lazy cache variable for type metadata for _ClosureBasedIterator<Date>, MEMORY[0x1E6969530], MEMORY[0x1E69E6F28]);
    lazy protocol witness table accessor for type AnyIterator<Date> and conformance AnyIterator<A>(&lazy protocol witness table cache variable for type _ClosureBasedIterator<Date> and conformance _ClosureBasedIterator<A>, &lazy cache variable for type metadata for _ClosureBasedIterator<Date>, v0);
    v1 = type metadata accessor for _IteratorBox();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _IteratorBox<_ClosureBasedIterator<Date>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AnyIterator<Date> and conformance AnyIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date?(255, a2, MEMORY[0x1E6969530], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for _SequenceBox<AnimationTimelineSchedule.Entries>()
{
  if (!lazy cache variable for type metadata for _SequenceBox<AnimationTimelineSchedule.Entries>)
  {
    type metadata accessor for AnimationTimelineSchedule.Entries();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type AnimationTimelineSchedule.Entries and conformance AnimationTimelineSchedule.Entries, type metadata accessor for AnimationTimelineSchedule.Entries);
    v0 = type metadata accessor for _SequenceBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SequenceBox<AnimationTimelineSchedule.Entries>);
    }
  }
}

uint64_t key path getter for EnvironmentValues.defaultLabelIconToTitleSpacing : EnvironmentValues@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, unint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>(0, a2, a3, a4, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>(a5, a2, a3, a4);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>(0, a2, a3, a4, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>(a5, a2, a3, a4);
    result = PropertyList.subscript.getter();
  }

  *a6 = v12;
  *(a6 + 8) = v13;
  return result;
}

uint64_t key path getter for EnvironmentValues.multimodalListIconStyle : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IconStyleKey>, &type metadata for IconStyleKey, &protocol witness table for IconStyleKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<IconStyleKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<IconStyleKey>, &type metadata for IconStyleKey, &protocol witness table for IconStyleKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IconStyleKey>, &type metadata for IconStyleKey, &protocol witness table for IconStyleKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<IconStyleKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<IconStyleKey>, &type metadata for IconStyleKey, &protocol witness table for IconStyleKey);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.defaultLabelIconToTitleSpacing : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  type metadata accessor for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>(0, a5, a6, a7, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>(a8, a5, a6, a7);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

double key path getter for EnvironmentValues.multimodalListDefaultGridCellMinWidth : EnvironmentValues@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>, &type metadata for DefaultGridCellMinWidthEnvironmentKey, &protocol witness table for DefaultGridCellMinWidthEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>, &type metadata for DefaultGridCellMinWidthEnvironmentKey, &protocol witness table for DefaultGridCellMinWidthEnvironmentKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>, &type metadata for DefaultGridCellMinWidthEnvironmentKey, &protocol witness table for DefaultGridCellMinWidthEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>, &type metadata for DefaultGridCellMinWidthEnvironmentKey, &protocol witness table for DefaultGridCellMinWidthEnvironmentKey);
    PropertyList.subscript.getter();
  }

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.multimodalListDefaultGridCellMinWidth : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>, &type metadata for DefaultGridCellMinWidthEnvironmentKey, &protocol witness table for DefaultGridCellMinWidthEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>, &type metadata for DefaultGridCellMinWidthEnvironmentKey, &protocol witness table for DefaultGridCellMinWidthEnvironmentKey);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t outlined init with copy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double key path getter for EnvironmentValues.fontBodyLeading : EnvironmentValues@<D0>(double *a1@<X8>)
{
  lazy protocol witness table accessor for type EnvironmentValues.FontBodyLeadingKey and conformance EnvironmentValues.FontBodyLeadingKey();
  EnvironmentValues.subscript.getter();
  result = v3;
  *a1 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.FontBodyLeadingKey and conformance EnvironmentValues.FontBodyLeadingKey()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.FontBodyLeadingKey and conformance EnvironmentValues.FontBodyLeadingKey;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.FontBodyLeadingKey and conformance EnvironmentValues.FontBodyLeadingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.FontBodyLeadingKey and conformance EnvironmentValues.FontBodyLeadingKey);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IsInVolumetricContext(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  PropertyList.subscript.getter();
  return v5;
}

id EnvironmentValues.supportsMultipleWindows.getter()
{
  if (!static AppGraph.shared)
  {
    return 0;
  }

  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 supportsMultipleScenes];

  return v1;
}

uint64_t one-time initialization function for clarityUIButtonTitle()
{
  result = static Font.system(_:design:weight:)();
  static Font.clarityUIButtonTitle = result;
  return result;
}

uint64_t static Font.clarityUINavigationTitle.getter()
{
  if (one-time initialization token for clarityUINavigationTitle != -1)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for clarityUINavigationTitle(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  static Font.Weight.semibold.getter();
  result = static Font.system(_:design:weight:)();
  *a3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AlternatingRowBackgroundBehavior and conformance AlternatingRowBackgroundBehavior()
{
  result = lazy protocol witness table cache variable for type AlternatingRowBackgroundBehavior and conformance AlternatingRowBackgroundBehavior;
  if (!lazy protocol witness table cache variable for type AlternatingRowBackgroundBehavior and conformance AlternatingRowBackgroundBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlternatingRowBackgroundBehavior and conformance AlternatingRowBackgroundBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AlternatingRowBackgroundBehavior> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AlternatingRowBackgroundBehavior> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AlternatingRowBackgroundBehavior> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<AlternatingRowBackgroundBehavior>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AlternatingRowBackgroundBehavior>, &type metadata for AlternatingRowBackgroundBehavior, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AlternatingRowBackgroundBehavior> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<[Color]?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<[Color]?>)
  {
    type metadata accessor for [Color]?();
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<[Color]?>);
    }
  }
}

void type metadata accessor for [Color]?()
{
  if (!lazy cache variable for type metadata for [Color]?)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<AlternatingRowBackgroundBehavior>(255, &lazy cache variable for type metadata for [Color], MEMORY[0x1E69815C0], MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Color]?);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<AlternatingRowBackgroundBehavior>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<[Color]?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<[Color]?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<[Color]?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<[Color]?>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<[Color]?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AlternatingRowBackgroundBehavior.Guts and conformance AlternatingRowBackgroundBehavior.Guts()
{
  result = lazy protocol witness table cache variable for type AlternatingRowBackgroundBehavior.Guts and conformance AlternatingRowBackgroundBehavior.Guts;
  if (!lazy protocol witness table cache variable for type AlternatingRowBackgroundBehavior.Guts and conformance AlternatingRowBackgroundBehavior.Guts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlternatingRowBackgroundBehavior.Guts and conformance AlternatingRowBackgroundBehavior.Guts);
  }

  return result;
}

uint64_t specialized static ViewModifier<>._makeViewList(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  AGGraphCreateOffsetAttribute2();
  _GraphInputs.scrollTargetRole.setter();
  v4 = _GraphInputs.scrollTargetRemovePreference.setter();
  v7 |= 0x800u;
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

{
  v7 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, v6);
  swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for @Sendable ()();
  type metadata accessor for Map<RefreshableModifier, @Sendable ()>();
  lazy protocol witness table accessor for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>, type metadata accessor for Map<RefreshableModifier, @Sendable ()>);

  Attribute.init<A>(body:value:flags:update:)();

  swift_beginAccess();
  UniqueID.init()();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type RefreshableModifier.ChildEnvironment and conformance RefreshableModifier.ChildEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  v4 = _GraphInputs.environment.setter();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t specialized static ViewModifier<>._makeViewList(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v7 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, &v6);
  swift_beginAccess();
  _GraphInputs.interfaceIdiom.getter();
  AnyInterfaceIdiom.accepts<A>(_:)();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type TableShowsFirstColumnOnlyModifier.Child and conformance TableShowsFirstColumnOnlyModifier.Child();
  Attribute.init<A>(body:value:flags:update:)();
  v4 = _GraphInputs.environment.setter();
  a3(v4, &v6);
  return outlined destroy of _ViewListInputs(&v6);
}

void ScrollTargetBehavior.properties(context:)(uint64_t a1@<X8>)
{
  ScrollTargetBehavior.properties(context:)(a1);
}

{
  *a1 = 0;
  *(a1 + 2) = 0;
}

SwiftUI::ScrollTargetBehaviorProperties __swiftcall ScrollTargetBehaviorProperties.init()()
{
  *v0 = 0;
  *(v0 + 2) = 0;
  return result;
}

uint64_t (*ScrollTargetBehaviorProperties.limitsScrolls.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return ScrollTargetBehaviorProperties.limitsScrolls.modify;
}

uint64_t ScrollTargetBehaviorPropertiesContext.environment.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t ScrollTargetBehaviorDecelerationContext.environment.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

__n128 ScrollTargetBehaviorContext.originalTarget.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 ScrollTargetBehaviorContext.originalTarget.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = v2;
  return result;
}

void (*ScrollTargetBehaviorContext.originalTarget.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  v4 = *(v1 + 48);
  v5 = *(v1 + 16);
  v6 = *(v1 + 32);
  *v3 = *v1;
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  *(v3 + 48) = v4;
  return ScrollTargetBehaviorContext.originalTarget.modify;
}

void ScrollTargetBehaviorContext.originalTarget.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[7];
  v3 = *(v1 + 48);
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  *v2 = *v1;
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *(v2 + 48) = v3;
  free(v1);
}

double (*ScrollTargetBehaviorContext.contentSize.modify(void *a1))(void, void, void, void)
{
  ScrollGeometry.contentSize.getter();
  *a1 = v2;
  a1[1] = v3;
  return destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
}

double (*ScrollTargetBehaviorContext.containerSize.modify(void *a1))(void, void, void, void)
{
  ScrollGeometry.containerSize.getter();
  *a1 = v2;
  a1[1] = v3;
  return destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
}

_BYTE *(*ScrollTargetBehaviorContext.axes.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 184);
  return ScrollTargetBehaviorContext.axes.modify;
}

uint64_t ScrollTargetBehaviorContext.subscript.getter()
{

  swift_getAtKeyPath();
}

double (*ScrollTargetBehaviorContext.viewportSize.modify(void *a1))(void, void, void, void)
{
  ScrollGeometry.containerSize.getter();
  *a1 = v2;
  a1[1] = v3;
  return destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
}

uint64_t ResolvedScrollBehavior.updateTarget(_:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 144);
  v4 = *(a2 + 176);
  v71 = *(a2 + 160);
  v72 = v4;
  v5 = *(a2 + 208);
  v73 = *(a2 + 192);
  v74 = v5;
  v6 = *(a2 + 80);
  v7 = *(a2 + 112);
  v67 = *(a2 + 96);
  v68 = v7;
  v8 = *(a2 + 144);
  v9 = *(a2 + 112);
  v69 = *(a2 + 128);
  v70 = v8;
  v10 = *(a2 + 16);
  v11 = *(a2 + 48);
  v63 = *(a2 + 32);
  v64 = v11;
  v12 = *(a2 + 80);
  v13 = *(a2 + 48);
  v65 = *(a2 + 64);
  v66 = v12;
  v14 = *(a2 + 16);
  v62[0] = *a2;
  v62[1] = v14;
  v58 = v69;
  v59 = v3;
  v60 = v71;
  v54 = v65;
  v55 = v6;
  v56 = v67;
  v57 = v9;
  v50 = v62[0];
  v51 = v10;
  v61 = *(a2 + 176);
  v52 = v63;
  v53 = v13;
  v49[0] = *(a2 + 185);
  *(v49 + 3) = *(a2 + 188);
  if (*(v2 + 45))
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    v16 = *(v2 + 44);
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for [ScrollableCollection], &lazy cache variable for type metadata for ScrollableCollection, MEMORY[0x1E697FA60], MEMORY[0x1E69E62F8]);
    outlined init with copy of ScrollTargetBehaviorContext(v62, &v35);
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v18 = *WeakValue;
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v19 = AGGraphGetWeakValue();
    if (v19)
    {
      v20 = *v19;
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    v21 = AGGraphGetWeakValue();
    v27 = v15;
    if (v21)
    {
      v22 = *v21;
      v23 = v21[1];
    }

    else
    {
      EnvironmentValues.init()();
      v22 = v33;
      v23 = v34;
    }

    v25 = *(v2 + 24);
    v24 = *(v2 + 32);
    __swift_project_boxed_opaque_existential_1(v2, v25);
    v28[8] = v58;
    v28[9] = v59;
    v28[10] = v60;
    *&v29 = v61;
    v28[4] = v54;
    v28[5] = v55;
    v28[6] = v56;
    v28[7] = v57;
    v28[0] = v50;
    v28[1] = v51;
    v28[2] = v52;
    v28[3] = v53;
    BYTE8(v29) = v16;
    HIDWORD(v29) = *(v49 + 3);
    *(&v29 + 9) = v49[0];
    *&v30 = v18;
    *(&v30 + 1) = v20;
    *&v31 = v22;
    *(&v31 + 1) = v23;
    v45 = v60;
    v46 = v29;
    v47 = v30;
    v48 = v31;
    v41 = v56;
    v42 = v57;
    v43 = v58;
    v44 = v59;
    v37 = v52;
    v38 = v53;
    v39 = v54;
    v40 = v55;
    v35 = v50;
    v36 = v51;
    v26 = *(v24 + 8);
    outlined init with copy of ScrollTargetBehaviorContext(v28, v32);
    v26(v27, &v35, v25, v24);
    v32[10] = v45;
    v32[11] = v46;
    v32[12] = v47;
    v32[13] = v48;
    v32[6] = v41;
    v32[7] = v42;
    v32[8] = v43;
    v32[9] = v44;
    v32[2] = v37;
    v32[3] = v38;
    v32[4] = v39;
    v32[5] = v40;
    v32[0] = v35;
    v32[1] = v36;
    outlined destroy of ScrollTargetBehaviorContext(v32);
    v43 = v58;
    v44 = v59;
    v45 = v60;
    *&v46 = v61;
    v39 = v54;
    v40 = v55;
    v41 = v56;
    v42 = v57;
    v35 = v50;
    v36 = v51;
    v37 = v52;
    v38 = v53;
    BYTE8(v46) = v16;
    *(&v46 + 9) = v49[0];
    HIDWORD(v46) = *(v49 + 3);
    *&v47 = v18;
    *(&v47 + 1) = v20;
    *&v48 = v22;
    *(&v48 + 1) = v23;
    return outlined destroy of ScrollTargetBehaviorContext(&v35);
  }

  return result;
}

uint64_t protocol witness for ScrollTargetBehavior.properties(context:) in conformance ResolvedScrollBehavior(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  v8[0] = v2;
  v8[1] = v3;
  v9 = v4;
  return (*(v6 + 16))(v8, v5, v6);
}

uint64_t closure #1 in static ScrollBehaviorModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for ScrollBehaviorModifier();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

double protocol witness for static StatefulRule.initialValue.getter in conformance ScrollBehaviorModifier<A>.ScrollBehaviorProvider@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance TransformScrollDeceleration(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TransformScrollDeceleration(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance TransformScrollDeceleration();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance TransformScrollDeceleration()
{
  lazy protocol witness table accessor for type TransformScrollDeceleration and conformance TransformScrollDeceleration();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t View.scrollDeceleration(_:axes:)(_BYTE *a1, char a2, uint64_t a3)
{
  v4[0] = *a1;
  v4[1] = a2;
  return MEMORY[0x18D00A570](v4, a3, &type metadata for TransformScrollDeceleration);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ScrollTargetModifier(uint64_t a1, uint64_t a2)
{
  AGGraphCreateOffsetAttribute2();
  _GraphInputs.scrollTargetRole.setter();
  result = _GraphInputs.scrollTargetRemovePreference.setter();
  *(a2 + 36) |= 0x800u;
  return result;
}

uint64_t View.scrollTarget(isEnabled:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v5 = v3;
  return MEMORY[0x18D00A570](&v5, a2, &type metadata for ScrollTargetModifier, a3);
}

uint64_t getEnumTagSinglePayload for ScrollTargetBehaviorProperties(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollTargetBehaviorProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
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
      *result = a2 + 1;
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

uint64_t assignWithCopy for ScrollTargetBehaviorPropertiesContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollTargetBehaviorPropertiesContext(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollTargetBehaviorPropertiesContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ScrollTargetBehaviorDecelerationContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t assignWithCopy for ScrollTargetBehaviorDecelerationContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for ScrollTargetBehaviorDecelerationContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t destroy for ScrollTargetBehaviorContext()
{
}

uint64_t initializeWithCopy for ScrollTargetBehaviorContext(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 184) = *(a2 + 184);
  v4 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = v4;
  v5 = *(a2 + 216);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = v5;

  return a1;
}

uint64_t assignWithCopy for ScrollTargetBehaviorContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v4;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);

  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);

  return a1;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t assignWithTake for ScrollTargetBehaviorContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);

  *(a1 + 192) = *(a2 + 192);

  *(a1 + 208) = *(a2 + 208);

  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollTargetBehaviorContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 192);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollTargetBehaviorContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 192) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollTargetModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t getEnumTagSinglePayload for TransformScrollDeceleration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
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

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for TransformScrollDeceleration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollDecelerationRate.Role and conformance ScrollDecelerationRate.Role()
{
  result = lazy protocol witness table cache variable for type ScrollDecelerationRate.Role and conformance ScrollDecelerationRate.Role;
  if (!lazy protocol witness table cache variable for type ScrollDecelerationRate.Role and conformance ScrollDecelerationRate.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollDecelerationRate.Role and conformance ScrollDecelerationRate.Role);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v5();
}

uint64_t key path getter for RefreshableModifier.action : RefreshableModifier@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();
  a2[1] = v5;
}

uint64_t key path setter for RefreshableModifier.action : RefreshableModifier(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());
  a2[1] = v5;
  return result;
}

double specialized closure #1 in Attribute.subscript.getter@<D0>(_OWORD *a1@<X8>)
{
  swift_getAtKeyPath();
  result = *&v3;
  *a1 = v3;
  return result;
}

unint64_t type metadata accessor for @Sendable ()()
{
  result = lazy cache variable for type metadata for @Sendable ();
  if (!lazy cache variable for type metadata for @Sendable ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for @Sendable ());
  }

  return result;
}

void type metadata accessor for Map<RefreshableModifier, @Sendable ()>()
{
  if (!lazy cache variable for type metadata for Map<RefreshableModifier, @Sendable ()>)
  {
    type metadata accessor for @Sendable ()();
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<RefreshableModifier, @Sendable ()>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RefreshableModifier.ChildEnvironment and conformance RefreshableModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type RefreshableModifier.ChildEnvironment and conformance RefreshableModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type RefreshableModifier.ChildEnvironment and conformance RefreshableModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RefreshableModifier.ChildEnvironment and conformance RefreshableModifier.ChildEnvironment);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ())()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ())(v2);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(a1, v4);
}

unint64_t lazy protocol witness table accessor for type TableShowsFirstColumnOnlyModifier.Child and conformance TableShowsFirstColumnOnlyModifier.Child()
{
  result = lazy protocol witness table cache variable for type TableShowsFirstColumnOnlyModifier.Child and conformance TableShowsFirstColumnOnlyModifier.Child;
  if (!lazy protocol witness table cache variable for type TableShowsFirstColumnOnlyModifier.Child and conformance TableShowsFirstColumnOnlyModifier.Child)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableShowsFirstColumnOnlyModifier.Child and conformance TableShowsFirstColumnOnlyModifier.Child);
  }

  return result;
}

char *specialized static TransformScrollDeceleration.makeEnvironment(modifier:environment:)(uint64_t a1, uint64_t a2)
{
  v3 = *(AGGraphGetValue() + 1);
  result = AGGraphGetValue();
  if (v3)
  {
    v5 = *result;
    v6 = *(a2 + 8);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>);
    if (v6)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    v7 = v15[0];
    swift_getKeyPath();
    lazy protocol witness table accessor for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    outlined init with copy of ScrollEnvironmentProperties(v15[0] + 16, v15);
    swift_getKeyPath();
    *&v13 = v7;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    outlined init with copy of ScrollEnvironmentTransform?(v7 + 280, &v13);
    if (v14)
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v13, &v10);
      v8 = *(&v11 + 1);
      v9 = v12;
      __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
      (*(v9 + 8))(v15, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(&v10);
    }

    v16 = v5;
    outlined init with copy of ScrollEnvironmentProperties(v15, &v13);
    type metadata accessor for ScrollEnvironmentStorage();
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
    swift_allocObject();
    *&v13 = ScrollEnvironmentStorage.init(_:transform:)(&v13, &v10);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>);

    PropertyList.subscript.setter();
    if (v6)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    return outlined destroy of ScrollEnvironmentProperties(v15);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type TransformScrollDeceleration and conformance TransformScrollDeceleration()
{
  result = lazy protocol witness table cache variable for type TransformScrollDeceleration and conformance TransformScrollDeceleration;
  if (!lazy protocol witness table cache variable for type TransformScrollDeceleration and conformance TransformScrollDeceleration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformScrollDeceleration and conformance TransformScrollDeceleration);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollBehaviorModifier.LayoutRoleFilter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

Swift::Void __swiftcall DismissAction.callAsFunction()()
{
  type metadata accessor for Binding<PresentationMode>();
  MEMORY[0x18D00ACC0](&v0);
  LOBYTE(v0) = 0;
  dispatch thunk of AnyLocation.set(_:transaction:)();
}

uint64_t EnvironmentValues.dismiss.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  return result;
}

uint64_t EnvironmentValues.isPresented.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v3 = v6;
  v4 = v7;
  v5 = v8;
  type metadata accessor for Binding<PresentationMode>();
  MEMORY[0x18D00ACC0](&v2);

  return v2;
}

uint64_t static View.mapKitMakeSelectionEnabled<A>(forType:inputs:)@<X0>(_OWORD *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = a1[1];
  v25[0] = *a1;
  v25[1] = v11;
  v13 = *a1;
  v12 = a1[1];
  v25[2] = a1[2];
  v22 = v13;
  v23 = v12;
  v24 = a1[2];
  outlined init with copy of _GraphInputs(v25, v26);
  v14 = _GraphInputs.selectionStorage<A>(forType:)();
  v16 = v15;
  v26[0] = v22;
  v26[1] = v23;
  v26[2] = v24;
  outlined destroy of _GraphInputs(v26);
  v17 = SelectionBasedStorage.$isSelectionEnabled.getter(v14, v16);
  LODWORD(v22) = v17;
  BYTE4(v22) = BYTE4(v17) & 1;
  v21[2] = a2;
  v21[3] = a3;
  v21[4] = a4;
  v21[5] = a5;
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Attribute();
  type metadata accessor for Optional();
  v18 = type metadata accessor for _GraphValue();
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in static View.mapKitMakeSelectionEnabled<A>(forType:inputs:), v21, MEMORY[0x1E69E73E0], v18, v19, a6);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance UsesLabelInteractionContentShapeFlag()
{
  lazy protocol witness table accessor for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t closure #1 in BorderlessButtonStyleBase.makeBody(configuration:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v18 = a1;
  v16 = static VerticalAlignment.center.getter();
  v17 = (a1 >> 8) & 1;
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v4 = swift_getKeyPath();
  LOBYTE(v19) = 0;
  v5 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = v16;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v17;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = v14;
  *(a2 + 120) = 0;
  *(a2 + 128) = v13;
  *(a2 + 136) = 0;
  *(a2 + 144) = v12;
  *(a2 + 152) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = v11;
  *(a2 + 184) = 0;
  *(a2 + 185) = 0;
  *(a2 + 192) = v10;
  *(a2 + 200) = 0;
  *(a2 + 201) = v18;
  *(a2 + 202) = v17;
  *(a2 + 207) = v20;
  *(a2 + 203) = v19;
  *(a2 + 208) = v4;
  *(a2 + 216) = 0;
  *(a2 + 224) = v5;
  *(a2 + 232) = 0;
  *(a2 + 240) = v6;
  *(a2 + 248) = 0;
  *(a2 + 249) = 0;
  *(a2 + 256) = v7;
  *(a2 + 264) = 0;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 272) = v8;
  *(a2 + 296) = 0;
  *(a2 + 297) = 0;
  *(a2 + 304) = result;
  *(a2 + 312) = 0;
  return result;
}

double BorderlessButtonStyleEnvironment.UpdateEnvironment.value.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  Value = AGGraphGetValue();
  v8 = *Value;
  v7 = Value[1];
  *&v14 = v8;
  *(&v14 + 1) = v7;
  if ((a2 & 0x100000000) != 0)
  {
    v13[0] = v8;
    v13[1] = v7;

    v10 = MEMORY[0x18D0064D0](v11);
    v9 = 0x100000000;
  }

  else
  {

    v9 = 0;
    v10 = 0;
  }

  static Semantics.v3.getter();
  isLinkedOnOrAfter(_:)();
  EnvironmentValues.multilineTextAlignment.setter();
  specialized BorderlessButtonStyleEnvironment.UpdateEnvironment.updateDefaultFont(useAccessibilityBorder:env:)(v10 & 1, &v14);
  LOBYTE(v13[0]) = *AGGraphGetValue();
  BorderlessButtonStyleEnvironment.UpdateEnvironment.updateDefaultForegroundStyle(role:useAccessibilityBorder:env:)(v13, v10 & 1, &v14, a1, a2 & 0x100FFFFFFFFLL | v9);
  result = *&v14;
  *a3 = v14;
  return result;
}

uint64_t BorderlessButtonStyleEnvironment.UpdateEnvironment.defaultTint.getter()
{
  if (*AGGraphGetValue())
  {

    return static Color.accentColor.getter();
  }

  else
  {

    return static Color.red.getter();
  }
}

uint64_t BorderlessButtonStyleEnvironment.UpdateEnvironment.hasMonochromaticForeground(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  static _GraphInputs.defaultInterfaceIdiom.getter();
  v5 = static Solarium.isEnabled(for:)();
  v6 = 0;
  if ((v5 & 1) != 0 && (a3 & 0x10000000000) != 0)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultToggleIsOnKey>, &type metadata for DefaultToggleIsOnKey, &protocol witness table for DefaultToggleIsOnKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultToggleIsOnKey> and conformance EnvironmentPropertyKey<A>();
    if (v4)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    if (v8 == 2 || (v8 & 1) == 0)
    {
      if (*MEMORY[0x1E698D3F8] == a3)
      {
        v6 = 1;
      }

      else
      {
        v6 = *AGGraphGetValue() ^ 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

double protocol witness for Rule.value.getter in conformance BorderlessButtonStyleEnvironment.UpdateEnvironment@<D0>(_OWORD *a1@<X8>)
{
  v2 = 0x100000000;
  if (!*(v1 + 12))
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 8);
  v4 = 0x10000000000;
  if (!*(v1 + 13))
  {
    v4 = 0;
  }

  return BorderlessButtonStyleEnvironment.UpdateEnvironment.value.getter(*v1, v3 | v4, a1);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance BorderlessButtonStyleEnvironment(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = specialized static BorderlessButtonStyleEnvironment._makeInputs(modifier:inputs:)();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance HasAccessibilityButtonBorder()
{
  lazy protocol witness table accessor for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder();

  PropertyList.subscript.getter();
  if (v3 == 1)
  {
    lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton();
    PropertyList.subscript.getter();

    v0 = v2 ^ 1;
  }

  else
  {

    v0 = 0;
  }

  return v0 & 1;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance HasAccessibilityButtonUnderline()
{
  lazy protocol witness table accessor for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder();
  PropertyList.subscript.getter();
  if (v3)
  {
    v0 = 0;
  }

  else
  {
    lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton();
    PropertyList.subscript.getter();
    v0 = v2 ^ 1;
  }

  return v0 & 1;
}

uint64_t ConditionallyBorderedButton.background.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 41);
  specialized Environment.wrappedValue.getter(*v1, *(v1 + 8), &v23);
  v8 = v23;
  specialized Environment.wrappedValue.getter(v5, v6 | (v7 << 8), &v21);
  v9 = v21;
  v10 = v22;
  static EdgeInsets.zero.getter();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = specialized Environment.wrappedValue.getter(v3, v4);
  if (result == 2 || (result & 1) == 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = 1043878380;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12;
  *(a1 + 32) = v14;
  *(a1 + 40) = v16;
  *(a1 + 48) = v18;
  *(a1 + 56) = v20;
  *(a1 + 60) = 256;
  return result;
}

double ConditionallyBorderedButton.body(content:)@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 24);
  v5 = *(v1 + 6);
  v6 = *(v1 + 56);
  v7 = *(v1 + 12);
  v8 = *(v1 + 104);
  specialized Environment.wrappedValue.getter(v5, v6 & 1, &v26);
  if (v26 < 2u)
  {
    v9 = 10.0;
    v10 = 5.0;
  }

  else if (v26 - 3 >= 2)
  {
    v9 = 12.0;
    v10 = 7.0;
  }

  else
  {
    v9 = 20.0;
    v10 = 15.0;
  }

  specialized Environment.wrappedValue.getter(v7, v8 & 1, &v26);
  v11 = 0.0;
  if (v26 - 7 <= 4)
  {
    v11 = dbl_18CD6E978[(v26 - 7)];
  }

  if (specialized Environment.wrappedValue.getter(v3, v4 & 1) == 2)
  {
    static EdgeInsets.zero.getter();
    v10 = v12;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v14 = v9 + v11;
    v16 = v10;
    v18 = v14;
  }

  v19 = static Edge.Set.all.getter();
  v26 = *v1;
  v27 = v3;
  v28 = v4;
  *v29 = *(v1 + 25);
  *&v29[15] = *(v1 + 5);
  v30 = v5;
  v31 = v6;
  v32 = *(v1 + 57);
  *v33 = *(v1 + 73);
  *&v33[15] = *(v1 + 11);
  v34 = v7;
  v35 = v8;
  ConditionallyBorderedButton.background.getter(v24);
  v36 = v24[0];
  v37 = v24[1];
  *v38 = v25[0];
  *&v38[14] = *(v25 + 14);
  v20 = static Alignment.center.getter();
  *&v39[7] = v36;
  *&v39[23] = v37;
  *&v39[39] = *v38;
  *&v39[55] = *&v38[16];
  *a1 = v19;
  *(a1 + 8) = v10;
  *(a1 + 16) = v14;
  *(a1 + 24) = v16;
  *(a1 + 32) = v18;
  *(a1 + 40) = 0;
  *(a1 + 57) = *&v39[16];
  *(a1 + 73) = *&v39[32];
  *(a1 + 89) = *&v39[48];
  v21 = *&v39[63];
  result = *v39;
  *(a1 + 41) = *v39;
  *(a1 + 104) = v21;
  *(a1 + 112) = v20;
  *(a1 + 120) = v23;
  return result;
}

__n128 key path getter for EnvironmentValues.accessibilityButtonBorderSpec : EnvironmentValues@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec>, &type metadata for EnvironmentValues.__Key_accessibilityButtonBorderSpec, &protocol witness table for EnvironmentValues.__Key_accessibilityButtonBorderSpec, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec>, &type metadata for EnvironmentValues.__Key_accessibilityButtonBorderSpec, &protocol witness table for EnvironmentValues.__Key_accessibilityButtonBorderSpec, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  result = v5;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.accessibilityButtonBorderSpec : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = v4;
  v5 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v5;
  v6 = *(a1 + 48);
  v11 = v15;
  v12 = v6;
  v17 = *(a1 + 64);
  v13 = *(a1 + 64);
  v9 = v14[0];
  v10 = v3;
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec>, &type metadata for EnvironmentValues.__Key_accessibilityButtonBorderSpec, &protocol witness table for EnvironmentValues.__Key_accessibilityButtonBorderSpec, MEMORY[0x1E697FE38]);

  outlined init with copy of BorderedButtonColorSpec?(v14, v8);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t getEnumTagSinglePayload for BorderlessButtonStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for BorderlessButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t outlined init with copy of BorderedButtonColorSpec?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>(0, &lazy cache variable for type metadata for BorderedButtonColorSpec?, &type metadata for BorderedButtonColorSpec, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t assignWithCopy for ConditionallyBorderedButton(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = *(v2 + 32);
  v13 = *(v2 + 41);
  v14 = *(v2 + 40);
  outlined copy of Environment<CGFloat?>.Content(v12, v14, v13);
  v15 = *(a1 + 32);
  v16 = *(a1 + 41);
  *(a1 + 32) = v12;
  v17 = *(a1 + 40);
  *(a1 + 40) = v14;
  *(a1 + 41) = v13;
  outlined consume of Environment<CGFloat?>.Content(v15, v17, v16);
  v18 = *(v2 + 48);
  v19 = *(v2 + 56);
  outlined copy of Environment<Selector?>.Content(v18, v19);
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  *(a1 + 48) = v18;
  *(a1 + 56) = v19;
  outlined consume of Environment<Selector?>.Content(v20, v21);
  v22 = *(v2 + 64);
  v23 = *(v2 + 72);
  v24 = *(v2 + 80);
  v25 = *(v2 + 89);
  v26 = *(v2 + 88);
  outlined copy of Environment<KeyboardShortcut?>.Content(v22, v23, v24, v26, v25);
  v27 = *(a1 + 64);
  v28 = *(a1 + 72);
  v29 = *(a1 + 80);
  v30 = *(a1 + 89);
  *(a1 + 64) = v22;
  *(a1 + 72) = v23;
  *(a1 + 80) = v24;
  v31 = *(a1 + 88);
  *(a1 + 88) = v26;
  *(a1 + 89) = v25;
  outlined consume of Environment<KeyboardShortcut?>.Content(v27, v28, v29, v31, v30);
  v32 = *(v2 + 96);
  LOBYTE(v2) = *(v2 + 104);
  outlined copy of Environment<Selector?>.Content(v32, v2);
  v33 = *(a1 + 96);
  v34 = *(a1 + 104);
  *(a1 + 96) = v32;
  *(a1 + 104) = v2;
  outlined consume of Environment<Selector?>.Content(v33, v34);
  return a1;
}

uint64_t assignWithTake for ConditionallyBorderedButton(uint64_t a1, uint64_t *a2)
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
  v12 = *(a2 + 41);
  v13 = *(a1 + 32);
  v14 = *(a1 + 41);
  *(a1 + 32) = a2[4];
  v15 = *(a1 + 40);
  *(a1 + 40) = v11;
  *(a1 + 41) = v12;
  outlined consume of Environment<CGFloat?>.Content(v13, v15, v14);
  v16 = *(a2 + 56);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v16;
  outlined consume of Environment<Selector?>.Content(v17, v18);
  v19 = a2[10];
  v20 = *(a2 + 88);
  v21 = *(a2 + 89);
  v22 = *(a1 + 64);
  v23 = *(a1 + 72);
  v24 = *(a1 + 80);
  v25 = *(a1 + 89);
  *(a1 + 64) = *(a2 + 4);
  *(a1 + 80) = v19;
  v26 = *(a1 + 88);
  *(a1 + 88) = v20;
  *(a1 + 89) = v21;
  outlined consume of Environment<KeyboardShortcut?>.Content(v22, v23, v24, v26, v25);
  v27 = *(a2 + 104);
  v28 = *(a1 + 96);
  v29 = *(a1 + 104);
  *(a1 + 96) = a2[12];
  *(a1 + 104) = v27;
  outlined consume of Environment<Selector?>.Content(v28, v29);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConditionallyBorderedButton(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 105))
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

uint64_t storeEnumTagSinglePayload for ConditionallyBorderedButton(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t outlined consume of BorderedButtonColorSpec.LabelStyle(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t assignWithCopy for OpacityButtonHighlightModifier(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<Selector?>.Content(v4, v5);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);
  v11 = *(v2 + 48);
  v12 = *(v2 + 56);
  v13 = *(v2 + 64);
  v14 = *(v2 + 72);
  v15 = *(v2 + 80);
  v27 = *(v2 + 88);
  LOBYTE(v2) = *(v2 + 96);
  outlined copy of Environment<BorderedButtonColorSpec?>.Content(v8, v9, v10, v11, v12, v13, v14, v15, v27, v2);
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  v22 = *(a1 + 72);
  v23 = *(a1 + 80);
  v24 = *(a1 + 88);
  v25 = *(a1 + 96);
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 64) = v13;
  *(a1 + 72) = v14;
  *(a1 + 80) = v15;
  *(a1 + 88) = v27;
  *(a1 + 96) = v2;
  outlined consume of Environment<BorderedButtonColorSpec?>.Content(v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  return a1;
}

uint64_t assignWithTake for OpacityButtonHighlightModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 88);
  v9 = *(a2 + 96);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  v19 = *(a1 + 96);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v8;
  *(a1 + 96) = v9;
  outlined consume of Environment<BorderedButtonColorSpec?>.Content(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
  return a1;
}

uint64_t getEnumTagSinglePayload for OpacityButtonHighlightModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[97])
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

uint64_t storeEnumTagSinglePayload for OpacityButtonHighlightModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for _UnaryViewAdaptor<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>>>()
{
  if (!lazy cache variable for type metadata for _UnaryViewAdaptor<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    v0 = type metadata accessor for _UnaryViewAdaptor();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UnaryViewAdaptor<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>();
    type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>();
    type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, type metadata accessor for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, type metadata accessor for StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>);
    type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>);
    }
  }
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(255, &lazy cache variable for type metadata for InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, lazy protocol witness table accessor for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag, &type metadata for UsesLabelInteractionContentShapeFlag, MEMORY[0x1E6980680]);
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(255, &lazy cache variable for type metadata for _ContentShapeModifier<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag()
{
  result = lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag;
  if (!lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag;
  if (!lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag;
  if (!lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag;
  if (!lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag;
  if (!lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, type metadata accessor for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, type metadata accessor for StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, lazy protocol witness table accessor for type HStack<ButtonStyleConfiguration.Label> and conformance HStack<A>, lazy protocol witness table accessor for type OpacityButtonHighlightModifier and conformance OpacityButtonHighlightModifier);
    lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>, lazy protocol witness table accessor for type InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag> and conformance InvertedViewInputPredicate<A>, lazy protocol witness table accessor for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag> and conformance InvertedViewInputPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag> and conformance InvertedViewInputPredicate<A>;
  if (!lazy protocol witness table cache variable for type InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag> and conformance InvertedViewInputPredicate<A>)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(255, &lazy cache variable for type metadata for InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, lazy protocol witness table accessor for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag, &type metadata for UsesLabelInteractionContentShapeFlag, MEMORY[0x1E6980680]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag> and conformance InvertedViewInputPredicate<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BarItemBridgedTint and conformance BarItemBridgedTint()
{
  result = lazy protocol witness table cache variable for type BarItemBridgedTint and conformance BarItemBridgedTint;
  if (!lazy protocol witness table cache variable for type BarItemBridgedTint and conformance BarItemBridgedTint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BarItemBridgedTint and conformance BarItemBridgedTint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BarItemBridgedTint and conformance BarItemBridgedTint;
  if (!lazy protocol witness table cache variable for type BarItemBridgedTint and conformance BarItemBridgedTint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BarItemBridgedTint and conformance BarItemBridgedTint);
  }

  return result;
}

uint64_t outlined destroy of BorderedButtonColorSpec?(uint64_t a1)
{
  type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>(0, &lazy cache variable for type metadata for BorderedButtonColorSpec?, &type metadata for BorderedButtonColorSpec, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_memcpy14_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 6) = *(a2 + 6);
  *result = v2;
  return result;
}

void *initializeBufferWithCopyOfBuffer for BorderlessButtonLabelShapeStyle(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = ~v5;
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-3 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    (*(v4 + 16))(&a1[v5 + 2] & v6, &a2[v5 + 2] & v6);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 + 16) & v6));
  }

  return v3;
}

_BYTE *assignWithCopy for BorderlessButtonLabelShapeStyle(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 24))(&a1[*(v4 + 80) + 2] & ~*(v4 + 80), &a2[*(v4 + 80) + 2] & ~*(v4 + 80));
  return a1;
}

_BYTE *initializeWithTake for BorderlessButtonLabelShapeStyle(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))(&a1[*(v4 + 80) + 2] & ~*(v4 + 80), &a2[*(v4 + 80) + 2] & ~*(v4 + 80));
  return a1;
}

_BYTE *assignWithTake for BorderlessButtonLabelShapeStyle(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))(&a1[*(v4 + 80) + 2] & ~*(v4 + 80), &a2[*(v4 + 80) + 2] & ~*(v4 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for BorderlessButtonLabelShapeStyle(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 2) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((a1 + v6 + 2) & ~v6);
      }

      v15 = *(a1 + 1);
      v16 = v15 >= 2;
      v17 = (v15 + 2147483646) & 0x7FFFFFFF;
      if (v16)
      {
        return (v17 + 1);
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

void storeEnumTagSinglePayload for BorderlessButtonLabelShapeStyle(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 2) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_44:
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
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
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
    v20 = &a1[v9 + 2] & ~v9;

    v19(v20);
  }

  else
  {
    a1[1] = a2 + 1;
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>>, type metadata accessor for ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, type metadata accessor for _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, lazy protocol witness table accessor for type _ViewModifier_Content<ConditionallyBorderedButton> and conformance _ViewModifier_Content<A>);
    lazy protocol witness table accessor for type _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>> and conformance _BackgroundModifier<A>, type metadata accessor for _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<ConditionallyBorderedButton>, lazy protocol witness table accessor for type ConditionallyBorderedButton and conformance ConditionallyBorderedButton, &unk_1EFF970D0, MEMORY[0x1E697FDE8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>);
    }
  }
}

void type metadata accessor for _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>()
{
  if (!lazy cache variable for type metadata for _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>)
  {
    type metadata accessor for _ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>();
    lazy protocol witness table accessor for type _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type _ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>);
    v0 = type metadata accessor for _BackgroundModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>);
    }
  }
}

void type metadata accessor for _ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>()
{
  if (!lazy cache variable for type metadata for _ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(255, &lazy cache variable for type metadata for _OpacityShapeStyle<TintShapeStyle>, MEMORY[0x1E697E570], MEMORY[0x1E697E558], MEMORY[0x1E697F5B0]);
    lazy protocol witness table accessor for type ResolvedBorderShape and conformance ResolvedBorderShape();
    lazy protocol witness table accessor for type _OpacityShapeStyle<TintShapeStyle> and conformance _OpacityShapeStyle<A>();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _OpacityShapeStyle<TintShapeStyle> and conformance _OpacityShapeStyle<A>()
{
  result = lazy protocol witness table cache variable for type _OpacityShapeStyle<TintShapeStyle> and conformance _OpacityShapeStyle<A>;
  if (!lazy protocol witness table cache variable for type _OpacityShapeStyle<TintShapeStyle> and conformance _OpacityShapeStyle<A>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(255, &lazy cache variable for type metadata for _OpacityShapeStyle<TintShapeStyle>, MEMORY[0x1E697E570], MEMORY[0x1E697E558], MEMORY[0x1E697F5B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _OpacityShapeStyle<TintShapeStyle> and conformance _OpacityShapeStyle<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ConditionallyBorderedButton> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ConditionallyBorderedButton> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ConditionallyBorderedButton> and conformance _ViewModifier_Content<A>)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<ConditionallyBorderedButton>, lazy protocol witness table accessor for type ConditionallyBorderedButton and conformance ConditionallyBorderedButton, &unk_1EFF970D0, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ConditionallyBorderedButton> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

double ContainerRelativeFrameModifier.MakeLayout.value.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] != HIDWORD(a1))
  {
    Value = AGGraphGetValue();
    v4 = *Value;
    v5 = Value[1];
    v6 = Value[2];
    v7 = Value[3];
    v11 = MEMORY[0x18D00B390](Value, v8, v9, v10);
    ContainerRelativeFrameModifier.MakeLayout.resolvedLength(axis:size:)(0, v11, v12);
    *&v16 = v4;
    *(&v16 + 1) = v5;
    *&v17 = v6;
    *(&v17 + 1) = v7;
    v13 = MEMORY[0x18D00B390]();
    ContainerRelativeFrameModifier.MakeLayout.resolvedLength(axis:size:)(1, v13, v14);
  }

  AGGraphGetValue();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v16;
  a2[1] = v17;
  result = *&v18;
  a2[2] = v18;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance ContainerRelativeFrameModifier.MakeLayout@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

uint64_t View.containerRelativeFrame(_:count:span:spacing:alignment:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a8;
  v18[0] = a1;
  v19 = a4;
  v20 = a5;
  v21 = partial apply for closure #1 in View.containerRelativeFrame(_:count:span:spacing:alignment:);
  v22 = v16;
  MEMORY[0x18D00A570](v18, a6, &type metadata for ContainerRelativeFrameModifier, a7);
}

double partial apply for closure #1 in View.containerRelativeFrame(_:count:span:spacing:alignment:)(double a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  v4 = a1 - (v3 + -1.0) * v2;
  if (v4 <= 0.0)
  {
    v4 = 0.0;
  }

  return v2 * (*(v1 + 24) + -1.0) + v4 / v3 * *(v1 + 24);
}

uint64_t View.containerRelativeFrame(_:alignment:_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[0] = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  return MEMORY[0x18D00A570](v8, a6, &type metadata for ContainerRelativeFrameModifier, a7);
}

__n128 assignWithTake for ContainerRelativeFrameModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  v3 = (a1 + 24);
  v5 = (a2 + 24);
  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      v6 = *(a2 + 32);
      *(a1 + 24) = v4;
      *(a1 + 32) = v6;

      return result;
    }
  }

  else if (v4)
  {
    v7 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v7;
    return result;
  }

  result = *v5;
  *v3 = *v5;
  return result;
}

uint64_t partial apply for closure #1 in ContainerRelativeFrameModifier.MakeLayout.resolvedLength(axis:size:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>, __n128 a3@<Q0>)
{
  a3.n128_u64[0] = *(v3 + 16);
  result = *(v3 + 32);
  v7 = *(a1 + 24);
  if (v7)
  {
    if (*(v3 + 32))
    {
      a3.n128_u64[0] = *(v3 + 24);
    }

    result = v7(a3);
  }

  else if (*(v3 + 32))
  {
    a3.n128_u64[0] = *(v3 + 24);
  }

  *a2 = a3.n128_u64[0];
  return result;
}

uint64_t DynamicTableRowContent.onDelete(perform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a1;
  v5[1] = a2;
  outlined copy of AppIntentExecutor?(a1);
  lazy protocol witness table accessor for type OnDeleteTableRowModifier and conformance OnDeleteTableRowModifier();
  TableRowContent.modifier<A>(_:)(v5, a3, &type metadata for OnDeleteTableRowModifier);
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5[0]);
}

unint64_t lazy protocol witness table accessor for type OnDeleteTableRowModifier and conformance OnDeleteTableRowModifier()
{
  result = lazy protocol witness table cache variable for type OnDeleteTableRowModifier and conformance OnDeleteTableRowModifier;
  if (!lazy protocol witness table cache variable for type OnDeleteTableRowModifier and conformance OnDeleteTableRowModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnDeleteTableRowModifier and conformance OnDeleteTableRowModifier);
  }

  return result;
}

uint64_t OnDeleteTableRowModifier.body.getter@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  if (*v1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a1 = v6;
  a1[1] = v5;

  return outlined copy of AppIntentExecutor?(v3);
}

uint64_t protocol witness for _TableRowContentModifier.body.getter in conformance OnDeleteTableRowModifier@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  if (*v1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ()partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a1 = v6;
  a1[1] = v5;

  return outlined copy of AppIntentExecutor?(v3);
}

uint64_t TableRowContent.deleteDisabled(_:)(char a1, uint64_t a2)
{
  v4 = a1;
  lazy protocol witness table accessor for type DeleteDisabledTableRowModifier and conformance DeleteDisabledTableRowModifier();
  return TableRowContent.modifier<A>(_:)(&v4, a2, &type metadata for DeleteDisabledTableRowModifier);
}

unint64_t lazy protocol witness table accessor for type DeleteDisabledTableRowModifier and conformance DeleteDisabledTableRowModifier()
{
  result = lazy protocol witness table cache variable for type DeleteDisabledTableRowModifier and conformance DeleteDisabledTableRowModifier;
  if (!lazy protocol witness table cache variable for type DeleteDisabledTableRowModifier and conformance DeleteDisabledTableRowModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeleteDisabledTableRowModifier and conformance DeleteDisabledTableRowModifier);
  }

  return result;
}

__n128 assignWithTake for OnDeleteTableRowModifier(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u64[0];
  if (a1->n128_u64[0])
  {
    if (v2)
    {
      v3 = a2->n128_i64[1];
      a1->n128_u64[0] = v2;
      a1->n128_u64[1] = v3;
    }

    else
    {

      result = *a2;
      *a1 = *a2;
    }
  }

  else if (v2)
  {
    v5 = a2->n128_i64[1];
    a1->n128_u64[0] = v2;
    a1->n128_u64[1] = v5;
  }

  else
  {
    result = *a2;
    *a1 = *a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnDeleteTableRowModifier(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for OnDeleteTableRowModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t PlatformSliderStyle.ValueLabel.body.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 24);
  static ViewBuilder.buildExpression<A>(_:)(v1, v2, v7);
  static ViewBuilder.buildExpression<A>(_:)(v6, v2, v7);
  return (*(v3 + 8))(v6, v2);
}

uint64_t View.navigationDestinations<A>(_:)(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NavigationDestinationsModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  a1(v13);
  (*(v8 + 32))(v15, v10, a4);
  MEMORY[0x18D00A570](v15, a3, v11, v17);
  return (*(v12 + 8))(v15, v11);
}

uint64_t View.navigationDestination<A>(isPresented:destination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v24 = a7;
  v22 = a8;
  v23 = a5;
  v21 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for ViewDestinationNavigationDestinationModifier();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v20[-v16];

  a4(v18);
  ViewDestinationNavigationDestinationModifier.init(isPresented:destination:)(a1, a2, v21, v13, a6, v17);
  MEMORY[0x18D00A570](v17, v23, v14, v24);
  return (*(v15 + 8))(v17, v14);
}

uint64_t View.navigationDestination<A, B>(item:destination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29 = a7;
  v27 = a9;
  v28 = a4;
  v25 = a2;
  v26 = a3;
  v24 = a1;
  type metadata accessor for Optional();
  v13 = type metadata accessor for Binding();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v30 = a5;
  v31 = a6;
  v32 = a8;
  v33 = a10;
  v17 = type metadata accessor for ItemBoundNavigationDestinationModifier();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v23 - v20;
  (*(v14 + 16))(v16, v24, v13, v19);
  ItemBoundNavigationDestinationModifier.init(item:destination:)(v16, v25, v26, v21);

  MEMORY[0x18D00A570](v21, v28, v17, v29);
  return (*(v18 + 8))(v21, v17);
}

uint64_t static NavigationDestinationsModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v10 = *(a2 + 48);
  v11 = *(a2 + 16);
  v49 = *(a2 + 32);
  v50 = v10;
  v12 = *(a2 + 48);
  v51 = *(a2 + 64);
  v13 = *(a2 + 16);
  v48[0] = *a2;
  v48[1] = v13;
  v44 = v49;
  v45 = v12;
  v46 = *(a2 + 64);
  v14 = *a1;
  v52 = *(a2 + 80);
  v47 = *(a2 + 80);
  v42 = v48[0];
  v43 = v11;
  outlined init with copy of _ViewInputs(v48, &v59);
  PreferenceKeys.add(_:)();
  PreferencesOutputs.init()();
  v40 = v59;
  v41 = DWORD2(v59);
  LODWORD(v31) = v14;
  type metadata accessor for NavigationDestinationsModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v53[2] = v44;
  v53[3] = v45;
  v53[4] = v46;
  v54 = v47;
  v53[0] = v42;
  v53[1] = v43;
  v61 = v44;
  v62 = v45;
  v63 = v46;
  v64 = v47;
  v59 = v42;
  v60 = v43;
  v15 = *(a5 + 32);
  outlined init with copy of _ViewInputs(v53, v57);
  v15(&v28, &v59, &v40, a4, a5);
  v55[2] = v61;
  v55[3] = v62;
  v55[4] = v63;
  v56 = v64;
  v55[0] = v59;
  v55[1] = v60;
  outlined destroy of _ViewInputs(v55);
  v57[2] = v44;
  v57[3] = v45;
  v57[4] = v46;
  v58 = v47;
  v57[0] = v42;
  v57[1] = v43;
  v33 = v44;
  v34 = v45;
  v35 = v46;
  v36 = v47;
  v31 = v42;
  v32 = v43;
  v16 = outlined init with copy of _ViewInputs(v57, &v59);
  a3(&v37, v16, &v31);
  v61 = v33;
  v62 = v34;
  v63 = v35;
  v64 = v36;
  v59 = v31;
  v60 = v32;
  outlined destroy of _ViewInputs(&v59);
  type metadata accessor for _ContiguousArrayStorage<PreferencesOutputs>();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_18CD63410;
  v18 = v38;
  *(v17 + 32) = v37;
  *(v17 + 40) = v18;
  v19 = v41;
  *(v17 + 48) = v40;
  *(v17 + 56) = v19;

  PreferencesOutputs.init()();
  v28 = v17;
  v29 = v31;
  v30 = DWORD2(v31);
  v20 = *(v45 + 16);
  if (v20)
  {
    lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();

    v21 = -v20;
    v22 = 1;
    do
    {
      v23 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v23(&v31, 0);
      static PreferenceKey.visitKey<A>(_:)();
      ++v22;
    }

    while (v21 + v22 != 1);
  }

  else
  {
  }

  v33 = v44;
  v34 = v45;
  v35 = v46;
  v36 = v47;
  v31 = v42;
  v32 = v43;
  outlined destroy of _ViewInputs(&v31);

  v24 = v30;
  v25 = v29;

  v27 = v39;
  *a6 = v25;
  *(a6 + 8) = v24;
  *(a6 + 12) = v27;
  return result;
}

uint64_t closure #1 in static NavigationDestinationsModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for NavigationDestinationsModifier();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance NavigationDestinationsModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata accessor for _ContiguousArrayStorage<PreferencesOutputs>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<PreferencesOutputs>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreferencesOutputs>);
    }
  }
}

void type metadata accessor for _SemanticFeature<Semantics_v6>()
{
  if (!lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>)
  {
    v0 = type metadata accessor for _SemanticFeature();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>()
{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v6>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v6>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>);
  }

  return result;
}

uint64_t assignWithCopy for NavigationDestinationModifier.MakeSeededResolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for NavigationDestinationModifier.MakeSeededResolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationDestinationModifier.MakeSeededResolver(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 20))
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

uint64_t storeEnumTagSinglePayload for NavigationDestinationModifier.MakeSeededResolver(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t View.writingToolsBehavior(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t key path getter for EnvironmentValues._writingToolsBehavior : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues._writingToolsBehavior : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>);
    }
  }
}

uint64_t EnvironmentValues.writingToolsBehavior.setter()
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>);

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

Swift::Int WritingToolsBehavior.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t EnvironmentValues._writingToolsBehavior.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>);

    return PropertyList.subscript.getter();
  }
}

void (*EnvironmentValues.writingToolsBehavior.modify(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = _s7SwiftUI17EnvironmentValuesVy5ValueQzxmcAA0C3KeyRzluiMAC020WritingToolsBehaviorF033_BF2404ED2C43BC189E1140AEF46C9504LLV_Ttg5(v2);
  return EnvironmentValues.writingToolsBehavior.modify;
}

uint64_t (*_s7SwiftUI17EnvironmentValuesVy5ValueQzxmcAA0C3KeyRzluiMAC020WritingToolsBehaviorF033_BF2404ED2C43BC189E1140AEF46C9504LLV_Ttg5(uint64_t **a1))(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v1;
  a1[1] = v3;
  a1[2] = v2;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>);
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return _s7SwiftUI17EnvironmentValuesVy5ValueQzxmcAA0C3KeyRzluiMAC020WritingToolsBehaviorF033_BF2404ED2C43BC189E1140AEF46C9504LLV_Ttg5_resume_0;
}

uint64_t _s7SwiftUI17EnvironmentValuesVy5ValueQzxmcAA0C3KeyRzluiMAC020WritingToolsBehaviorF033_BF2404ED2C43BC189E1140AEF46C9504LLV_Ttg5_resume_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>);

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type WritingToolsBehavior and conformance WritingToolsBehavior()
{
  result = lazy protocol witness table cache variable for type WritingToolsBehavior and conformance WritingToolsBehavior;
  if (!lazy protocol witness table cache variable for type WritingToolsBehavior and conformance WritingToolsBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WritingToolsBehavior and conformance WritingToolsBehavior);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<WritingToolsBehavior?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<WritingToolsBehavior?>)
  {
    type metadata accessor for WritingToolsBehavior?();
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<WritingToolsBehavior?>);
    }
  }
}

void type metadata accessor for WritingToolsBehavior?()
{
  if (!lazy cache variable for type metadata for WritingToolsBehavior?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WritingToolsBehavior?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type WritingToolsBehavior.Value and conformance WritingToolsBehavior.Value()
{
  result = lazy protocol witness table cache variable for type WritingToolsBehavior.Value and conformance WritingToolsBehavior.Value;
  if (!lazy protocol witness table cache variable for type WritingToolsBehavior.Value and conformance WritingToolsBehavior.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WritingToolsBehavior.Value and conformance WritingToolsBehavior.Value);
  }

  return result;
}

uint64_t static MulticolumnSplitView._makeView(view:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = *MEMORY[0x1E69E9840];
  v14 = *a1;
  v15 = a2[3];
  v38 = a2[2];
  v39 = v15;
  v40 = a2[4];
  v41 = *(a2 + 20);
  v16 = a2[1];
  v36 = *a2;
  v37 = v16;
  LODWORD(v44[0]) = v14;
  *&v46 = a3;
  *(&v46 + 1) = a4;
  *&v47 = a5;
  *(&v47 + 1) = a6;
  *&v48 = a7;
  *(&v48 + 1) = a8;
  type metadata accessor for MulticolumnSplitView();
  type metadata accessor for _GraphValue();
  v17 = _GraphValue.value.getter();
  v32 = v38;
  v33 = v39;
  v34 = v40;
  v35 = v41;
  v30 = v36;
  v31 = v37;
  swift_beginAccess();
  LODWORD(v44[0]) = *(v37 + 16);
  *&v46 = a3;
  *(&v46 + 1) = a4;
  *&v47 = a5;
  *(&v47 + 1) = a6;
  *&v48 = a7;
  *(&v48 + 1) = a8;
  v22 = type metadata accessor for MulticolumnSplitView.EnvironmentTransform();
  WitnessTable = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(&v36, &v46);
  type metadata accessor for Any?(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, MEMORY[0x1E697F230], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v44, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, v21, v22, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  _GraphInputs.environment.setter();
  *&v46 = a3;
  *(&v46 + 1) = a4;
  *&v47 = a5;
  *(&v47 + 1) = a6;
  *&v48 = a7;
  *(&v48 + 1) = a8;
  type metadata accessor for MulticolumnSplitView.Container();
  LODWORD(v44[0]) = v17;
  *&v46 = a3;
  *(&v46 + 1) = a4;
  *&v47 = a5;
  *(&v47 + 1) = a6;
  *&v48 = a7;
  *(&v48 + 1) = a8;
  type metadata accessor for MulticolumnSplitView.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  v42[2] = v32;
  v42[3] = v33;
  v42[4] = v34;
  v43 = v35;
  v42[0] = v30;
  v42[1] = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v24 = v30;
  v25 = v31;
  outlined init with copy of _ViewInputs(v42, &v46);
  swift_getWitnessTable();
  static View.makeDebuggableView(view:inputs:)();
  v44[2] = v26;
  v44[3] = v27;
  v44[4] = v28;
  v45 = v29;
  v44[0] = v24;
  v44[1] = v25;
  outlined destroy of _ViewInputs(v44);
  v48 = v32;
  v49 = v33;
  v50 = v34;
  v51 = v35;
  v46 = v30;
  v47 = v31;
  return outlined destroy of _ViewInputs(&v46);
}

uint64_t MulticolumnSplitView.Child.multicolumnSplitView.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MulticolumnSplitView();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t MulticolumnSplitView.Child.value.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23[1] = a1;
  v24 = a8;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v14 = type metadata accessor for MulticolumnSplitView.Configuration();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - v16;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v18 = type metadata accessor for MulticolumnSplitView();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v23 - v19;
  MulticolumnSplitView.Child.multicolumnSplitView.getter(v23 - v19);
  (*(v15 + 32))(v17, v20, v14);
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v21 = type metadata accessor for MulticolumnSplitView.Configuration();
  return (*(*(v21 - 8) + 32))(v24, v17, v21);
}

uint64_t MulticolumnSplitView.EnvironmentTransform.value.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v5 = *Value;
  v6 = Value[1];

  AGGraphGetValue();

  EnvironmentValues.horizontalSizeClass.getter();

  type metadata accessor for StyleContextSplitViewNavigationController<NoStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v6)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

    v4 = v6;
  }

  else
  {

    v4 = 0;
  }

  *a1 = v5;
  a1[1] = v4;
  return result;
}

uint64_t MulticolumnSplitView.Container.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v38 = a1[2];
  v39 = v2;
  v31 = v2;
  v32 = v38;
  v7 = v2;
  v40 = v3;
  v41 = v4;
  v8 = v3;
  v29[1] = v4;
  v30 = v3;
  v9 = v4;
  v42 = v5;
  v43 = v6;
  v10 = v5;
  v29[0] = v5;
  v33 = type metadata accessor for MulticolumnSplitView.Configuration();
  v11 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v13 = v29 - v12;
  v39 = v7;
  v40 = v8;
  v41 = v9;
  v42 = v10;
  v43 = v6;
  v14 = type metadata accessor for MulticolumnSplitViewRepresentable();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v29 - v16;
  v18 = type metadata accessor for ModifiedContent();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v29 - v24;
  (*(v11 + 16))(v13, v34, v33, v23);
  MulticolumnSplitViewRepresentable.init(configuration:)(v13, v32, v31, v30, v17);
  static Edge.Set.all.getter();
  View.ignoresSafeArea(_:edges:)();
  (*(v15 + 8))(v17, v14);
  v36 = &protocol witness table for MulticolumnSplitViewRepresentable<A, B, C>;
  v37 = MEMORY[0x1E6980A30];
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v21, v18, WitnessTable);
  v27 = *(v19 + 8);
  v27(v21, v18);
  static ViewBuilder.buildExpression<A>(_:)(v25, v18, WitnessTable);
  return (v27)(v25, v18);
}

uint64_t MulticolumnSplitViewRepresentable.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for MulticolumnSplitViewRepresentable();
  v11 = *(v10 + 68);
  (*(*(a3 - 8) + 56))(a5 + v11, 1, 1, a3);
  (*(*(a2 - 8) + 32))(a5, a1, a2);
  v12 = type metadata accessor for MulticolumnSplitView.Configuration();
  (*(*(a4 - 8) + 32))(a5 + *(v10 + 72), a1 + *(v12 + 72), a4);
  v13 = *(v12 + 68);
  v14 = type metadata accessor for Optional();
  return (*(*(v14 - 8) + 40))(a5 + v11, a1 + v13, v14);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance MulticolumnSplitView<A, B, C>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

BOOL MulticolumnSplitViewRepresentable.hasSupplementary.getter(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  (*(v5 + 16))(&v11 - v7, v1 + *(a1 + 68), v4, v6);
  v9 = (*(*(v3 - 8) + 48))(v8, 1, v3) != 1;
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t MulticolumnSplitViewRepresentable.supplementary.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  result = MulticolumnSplitViewRepresentable.hasSupplementary.getter(a1);
  if (result)
  {
    (*(v7 + 16))(v9, v2 + *(a1 + 68), v6);
    v11 = *(v5 - 8);
    result = (*(v11 + 48))(v9, 1, v5);
    if (result != 1)
    {
      return (*(v11 + 32))(a2, v9, v5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id MulticolumnSplitViewRepresentable.makeUIViewController(context:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = *(a2 + 24);
  v5 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];

  if (MulticolumnSplitViewRepresentable.hasSupplementary.getter(a2))
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = [objc_allocWithZone(type metadata accessor for NotifyingMulticolumnSplitViewController()) initWithStyle_];
  [v14 setDelegate_];
  MulticolumnSplitViewRepresentable.Coordinator.addSecondaryView(_:)(v3 + *(a2 + 72));
  type metadata accessor for StyleContextSplitViewNavigationController<NoStyleContext>(0, &lazy cache variable for type metadata for StyleContextSplitViewNavigationController<SidebarStyleContext>, MEMORY[0x1E697F808], MEMORY[0x1E697F800], type metadata accessor for StyleContextSplitViewNavigationController);
  v21[0] = v11;
  v21[1] = v12;
  v15 = specialized StyleContextSplitViewNavigationController.__allocating_init<A>(rootView:wantsTransparentBackground:environment:transaction:)(v3, 0, v21, v10, *(a2 + 16), *(a2 + 40));
  if ([v14 style])
  {
    [v14 setViewController:v15 forColumn:0];
  }

  v16 = *(v9 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.secondaryController);
  if ([v14 style])
  {
    [v14 setViewController:v16 forColumn:2];
  }

  if (MulticolumnSplitViewRepresentable.hasSupplementary.getter(a2))
  {
    MulticolumnSplitViewRepresentable.supplementary.getter(a2, v7);
    MulticolumnSplitViewRepresentable.Coordinator.addSupplementaryView(_:)(v7);
    (*(v5 + 8))(v7, v20);
    v17 = *(v9 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryController);
    if ([v14 style])
    {
      v17 = v17;
      [v14 setViewController:v17 forColumn:1];
    }
  }

  return v14;
}

void MulticolumnSplitViewRepresentable.updateUIViewController(_:context:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v12;
  v13 = v12[1];
  v16 = v12[2];
  v15 = v12[3];
  if (![v17 style])
  {
    __break(1u);
    goto LABEL_11;
  }

  v30 = [a1 viewControllerForColumn_];
  if (!v30)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v28 = v7;
  v29 = v14;
  v26 = v11;
  v27 = v8;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass() || (type metadata accessor for SplitViewNavigationController(), (v18 = swift_dynamicCastClass()) == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  *&v31 = v16;
  *(&v31 + 1) = v15;
  v19 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x1B8);
  v20 = *(a3 + 16);
  v21 = *(a3 + 40);

  v19(v4, &v31, v13, v20, v21);

  v22 = *(a3 + 72);
  *&v31 = v16;
  *(&v31 + 1) = v15;

  specialized MulticolumnSplitViewRepresentable.Coordinator.updateSecondaryPlaceholder(_:for:environment:transaction:)(v4 + v22, &v31, v13);

  if (MulticolumnSplitViewRepresentable.hasSupplementary.getter(a3))
  {
    v23 = v26;
    MulticolumnSplitViewRepresentable.supplementary.getter(a3, v26);
    *&v31 = v16;
    *(&v31 + 1) = v15;

    specialized MulticolumnSplitViewRepresentable.Coordinator.updateSupplementaryPlaceholder(_:for:environment:transaction:)(v23, &v31, v13);

    (*(v27 + 8))(v23, v28);
  }

  else
  {
    v24 = v30;
  }
}

void MulticolumnSplitViewRepresentable.Coordinator.addSecondaryView(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  type metadata accessor for StyleContextSplitViewNavigationController<NoStyleContext>(0, &lazy cache variable for type metadata for StyleContextSplitViewNavigationController<NoStyleContext>, MEMORY[0x1E697E428], MEMORY[0x1E697E420], type metadata accessor for StyleContextSplitViewNavigationController);
  v11 = xmmword_18CD6A6D0;
  v6 = specialized StyleContextSplitViewNavigationController.__allocating_init<A>(rootView:wantsTransparentBackground:environment:transaction:)(a1, 0, &v11, 1uLL, *((v5 & v4) + 0x60), *((v5 & v4) + 0x78));
  v7 = *(v2 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.secondaryController);
  *(v2 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.secondaryController) = v6;

  v8 = *(v2 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.secondaryController);
  if (v8)
  {
    v9 = [v8 topViewController];
    if (v9)
    {
      v10 = v9;

      *(v2 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.secondaryPlaceholderHost) = v10;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void MulticolumnSplitViewRepresentable.Coordinator.addSupplementaryView(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  type metadata accessor for StyleContextSplitViewNavigationController<NoStyleContext>(0, &lazy cache variable for type metadata for StyleContextSplitViewNavigationController<ContentListStyleContext>, MEMORY[0x1E6980190], MEMORY[0x1E6980188], type metadata accessor for StyleContextSplitViewNavigationController);
  v11 = xmmword_18CD6A6D0;
  v6 = specialized StyleContextSplitViewNavigationController.__allocating_init<A>(rootView:wantsTransparentBackground:environment:transaction:)(a1, 0, &v11, 1uLL, *((v5 & v4) + 0x58), *((v5 & v4) + 0x70));
  v7 = *(v2 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryController);
  *(v2 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryController) = v6;

  v8 = *(v2 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryController);
  if (v8)
  {
    v9 = [v8 topViewController];
    if (v9)
    {
      v10 = v9;

      *(v2 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryPlaceholderHost) = v10;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

UISplitViewControllerColumn __swiftcall MulticolumnSplitViewRepresentable.Coordinator.splitViewController(_:topColumnForCollapsingToProposedTopColumn:)(UISplitViewController *_, UISplitViewControllerColumn topColumnForCollapsingToProposedTopColumn)
{
  if ([(UISplitViewController *)_ style])
  {
    v5 = [(UISplitViewController *)_ viewControllerForColumn:topColumnForCollapsingToProposedTopColumn];
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = [v7 topViewController];

        if (v8)
        {

          v9 = *(v2 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.secondaryPlaceholderHost);
          if (v9)
          {
            if (v8 == v9)
            {
              return (*(v2 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryController) != 0);
            }
          }
        }
      }

      else
      {
      }
    }
  }

  return topColumnForCollapsingToProposedTopColumn;
}

UISplitViewControllerColumn @objc MulticolumnSplitViewRepresentable.Coordinator.splitViewController(_:topColumnForCollapsingToProposedTopColumn:)(void *a1, uint64_t a2, void *a3, UISplitViewControllerColumn a4)
{
  v6 = a3;
  v7 = a1;
  v8 = MulticolumnSplitViewRepresentable.Coordinator.splitViewController(_:topColumnForCollapsingToProposedTopColumn:)(v6, a4);

  return v8;
}

id MulticolumnSplitViewRepresentable.Coordinator.init()()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0);
  *(v0 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.secondaryController) = 0;
  *(v0 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryController) = 0;
  *(v0 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.secondaryPlaceholderHost) = 0;
  *(v0 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryPlaceholderHost) = 0;
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6.receiver = v0;
  v6.super_class = type metadata accessor for MulticolumnSplitViewRepresentable.Coordinator();
  return objc_msgSendSuper2(&v6, sel_init, v3, v4, v5);
}

void MulticolumnSplitViewRepresentable.Coordinator.__ivar_destroyer()
{
  v1 = *(v0 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryController);
}

id MulticolumnSplitViewRepresentable.Coordinator.__deallocating_deinit()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for MulticolumnSplitViewRepresentable.Coordinator();
  return objc_msgSendSuper2(&v5, sel_dealloc, v2, v3, v4);
}

void @objc MulticolumnSplitViewRepresentable.Coordinator.__ivar_destroyer(uint64_t a1)
{
  v2 = *(a1 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryController);
}

id protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance MulticolumnSplitViewRepresentable<A, B, C>@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = specialized MulticolumnSplitViewRepresentable.makeCoordinator()(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
  *a2 = result;
  return result;
}

uint64_t one-time initialization function for willShowDetailNotification()
{
  result = MEMORY[0x18D00C850](0xD00000000000002FLL, 0x800000018CD3F020);
  static ColumnNavigationViewStyle.willShowDetailNotification = result;
  return result;
}

{
  result = MEMORY[0x18D00C850](0xD00000000000002FLL, 0x800000018CD3F020);
  static DoubleColumnNavigationViewStyle.willShowDetailNotification = result;
  return result;
}

id @objc UISplitViewController.makeDetailNavigationController(root:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(type metadata accessor for UIKitNavigationController()) initWithRootViewController_];

  return v3;
}

uint64_t NotifyingMulticolumnSplitViewController.showDetailViewController(_:sender:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for willShowDetailNotification != -1)
  {
    swift_once();
  }

  v7 = static ColumnNavigationViewStyle.willShowDetailNotification;
  type metadata accessor for _ContiguousArrayStorage<(AnyHashable, Any)>();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  v21[0] = 0xD000000000000017;
  v21[1] = 0x800000018CD3F000;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = type metadata accessor for UIViewController();
  *(inited + 72) = a1;
  v9 = a1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (AnyHashable, Any)(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v6 postNotificationName:v7 object:v2 userInfo:isa];

  outlined init with copy of Any?(a2, v21);
  v11 = v22;
  if (v22)
  {
    v12 = __swift_project_boxed_opaque_existential_1(v21, v22);
    v13 = *(v11 - 8);
    v14 = MEMORY[0x1EEE9AC00](v12);
    v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    v17 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v13 + 8))(v16, v11);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v17 = 0;
  }

  v20.receiver = v2;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_showDetailViewController_sender_, v9, v17);
  return swift_unknownObjectRelease();
}

uint64_t NotifyingMulticolumnSplitViewController.childForStatusBarHidden.getter()
{
  if (![v0 isCollapsed])
  {
    v6 = [v0 viewControllerForColumn_];
    v7 = [v6 childViewControllerForStatusBarHidden];
    goto LABEL_13;
  }

  v1 = [v0 viewControllers];
  type metadata accessor for UIViewController();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_10:

    v5 = 0;
    goto LABEL_11;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x18D00E9C0](0, v2);
    goto LABEL_7;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_7:
    v5 = v4;

LABEL_11:
    v7 = [v5 childViewControllerForStatusBarHidden];
    if (!v7)
    {
      return v5;
    }

    v6 = v5;
LABEL_13:
    v5 = v7;

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t SplitViewNavigationController.applyStyleContextModifier<A>(to:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return AnyView.init<A>(_:)();
}

id SplitViewNavigationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SplitViewNavigationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void closure #1 in StyleContextSplitViewNavigationController.init<A>(rootView:wantsTransparentBackground:environment:transaction:)(uint64_t a1, uint64_t a2)
{
  v3 = specialized UIHostingController.host.getter();
  v7 = a2;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for _UIHostingView();
  swift_getWitnessTable();
  ViewRendererHost.updateViewGraph<A>(body:)();

  if (v6 == 1)
  {
    v4 = specialized UIHostingController.host.getter();
    _UIHostingView.preferencesDidChange()();
  }

  v6 = xmmword_18CD6A6D0;
  v5 = specialized UIHostingController.host.getter();
  _UIHostingView.inheritedEnvironment.setter(&v6);
}

BOOL closure #1 in closure #1 in StyleContextSplitViewNavigationController.init<A>(rootView:wantsTransparentBackground:environment:transaction:)@<W0>(_BYTE *a1@<X8>)
{
  result = GraphHost.updatePreferences()();
  *a1 = result;
  return result;
}

uint64_t StyleContextSplitViewNavigationController.applyStyleContextModifier<A>(to:)()
{
  type metadata accessor for StyleContextWriter();
  v0 = type metadata accessor for ModifiedContent();
  v1 = MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x18D00A570](v1);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return AnyView.init<A>(_:)();
}

uint64_t StyleContextSplitViewNavigationController.replaceRoot<A>(_:environment:transaction:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a3;
  type metadata accessor for StyleContextWriter();
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v12 = *a2;
  v13 = a2[1];
  MEMORY[0x18D00A570](v9);
  WitnessTable = swift_getWitnessTable();
  v18 = a5;
  v19 = WitnessTable;
  swift_getWitnessTable();
  v20[0] = v12;
  v20[1] = v13;
  UINavigationController.updateRootHost<A>(root:environment:transaction:)(v11, v20, v17);
  return (*(v8 + 8))(v11, v7);
}

id @objc StyleContextSplitViewNavigationController.childForStatusBarHidden.getter(void *a1)
{
  v1 = a1;
  v2 = StyleContextSplitViewNavigationController.childForStatusBarHidden.getter();

  return v2;
}

id StyleContextSplitViewNavigationController.childForStatusBarHidden.getter()
{
  v1 = [v0 topViewController];
  v2 = [v1 childViewControllerForStatusBarHidden];

  result = v2;
  if (!v2)
  {
    return [v0 topViewController];
  }

  return result;
}

id @objc StyleContextSplitViewNavigationController.init(rootViewController:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = specialized StyleContextSplitViewNavigationController.init(rootViewController:)(a3);

  return v5;
}

id StyleContextSplitViewNavigationController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id specialized StyleContextSplitViewNavigationController.__allocating_init<A>(rootView:wantsTransparentBackground:environment:transaction:)(uint64_t a1, int a2, uint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a4;
  v29 = a2;
  v9 = type metadata accessor for StyleContextWriter();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = *a3;
  v27 = a3[1];
  WitnessTable = swift_getWitnessTable();
  v32 = a6;
  v33 = WitnessTable;
  swift_getWitnessTable();
  v16 = type metadata accessor for UIHostingController();
  MEMORY[0x18D00A570](v16, a5, v9, a6);
  v17 = specialized UIHostingController.__allocating_init(rootView:)(v13);
  (*(v11 + 8))(v13, v10);
  v18 = v28;
  if (v14 != 1)
  {
    if (v28 > 1)
    {
      v19 = specialized UIHostingController.host.getter();
      v31 = v14;
      v20 = v19;
      outlined copy of Transaction?(v18);

      _UIHostingView.inheritedEnvironment.setter(&v31);

      v21 = specialized UIHostingController.host.getter();
      _UIHostingView.viewGraph.getter();

      v22 = swift_allocObject();
      *(v22 + 16) = a6;
      *(v22 + 24) = v17;
      v23 = v17;
      default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
      GraphHost.asyncTransaction(_:id:_:)();
      outlined consume of EnvironmentValues?(v14);

      outlined consume of ListItemTint?(v18);
    }

    else
    {
      outlined consume of EnvironmentValues?(v14);
    }
  }

  v24 = specialized UIHostingController.host.getter();
  _UIHostingView.setWantsTransparentBackground(for:_:)(8, v29 & 1);

  v25 = [objc_allocWithZone(v30) initWithRootViewController_];
  outlined consume of ListItemTint?(v18);

  return v25;
}

void specialized MulticolumnSplitViewRepresentable.Coordinator.updateSecondaryPlaceholder(_:for:environment:transaction:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *(v3 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.secondaryController);
  if (v5)
  {
    v6 = v3;
    v7 = *MEMORY[0x1E69E7D40] & *v3;
    v13 = *a2;
    v15 = v5;
    v10 = [v15 topViewController];
    if (v10)
    {
      v11 = *(v6 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.secondaryPlaceholderHost);
      v14 = v10;
      if (v11 && v10 == v11)
      {
        v16 = v13;
        (*((*v4 & *v15) + 0x1B8))(a1, &v16, a3, *(v7 + 96), *(v7 + 120));

        return;
      }

      v12 = v14;
    }

    else
    {
      v12 = v15;
    }
  }
}

void specialized MulticolumnSplitViewRepresentable.Coordinator.updateSupplementaryPlaceholder(_:for:environment:transaction:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v4 = v3;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *(v4 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryController);
  if (v7)
  {
    v9 = *MEMORY[0x1E69E7D40] & *v4;
    *v17 = *a2;
    v10 = [v7 topViewController];
    if (v10)
    {
      v11 = *(v4 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryPlaceholderHost);
      if (v11 && v10 == v11 && (v12 = *(v4 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryController)) != 0)
      {
        v19 = *v17;
        v13 = *((*v6 & *v12) + 0x1B8);
        v14 = *(v9 + 88);
        v15 = *(v9 + 112);
        v18 = v10;
        v16 = v12;
        v13(a1, &v19, a3, v14, v15);
      }

      else
      {
      }
    }
  }
}

id specialized StyleContextSplitViewNavigationController.init(rootViewController:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_initWithRootViewController_, a1);
}

void type metadata accessor for _ContiguousArrayStorage<(AnyHashable, Any)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(AnyHashable, Any)>)
  {
    type metadata accessor for (AnyHashable, Any)();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(AnyHashable, Any)>);
    }
  }
}

void type metadata accessor for (AnyHashable, Any)()
{
  if (!lazy cache variable for type metadata for (AnyHashable, Any))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AnyHashable, Any));
    }
  }
}

uint64_t outlined destroy of (AnyHashable, Any)(uint64_t a1)
{
  type metadata accessor for (AnyHashable, Any)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for MulticolumnSplitView()
{
  result = type metadata accessor for MulticolumnSplitView.Configuration();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for MulticolumnSplitView.Configuration()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MulticolumnSplitView(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 64);
  v7 = a3[3];
  v6 = a3[4];
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v9;
  v11 = v5 + v9;
  v12 = (v5 + v10) & ~v10;
  if (*(v8 + 84))
  {
    v13 = *(v8 + 64);
  }

  else
  {
    v13 = *(v8 + 64) + 1;
  }

  v14 = *(v6 - 8);
  v15 = *(v14 + 80);
  v16 = v13 + v15;
  v17 = v9 | *(v4 + 80) | *(v14 + 80);
  v18 = v17;
  v19 = v17 & 0x100000;
  if (v18 <= 7 && ((v13 + v15 + v12) & ~v15) + *(*(v6 - 8) + 64) <= 0x18 && v19 == 0)
  {
    v23 = ~v10;
    v27 = ~v15;
    v28 = a3[4];
    (*(v4 + 16))(a1);
    v25 = ((a2 + v11) & v23);
    if ((*(v8 + 48))(v25, 1, v7))
    {
      memcpy(((a1 + v11) & v23), v25, v13);
    }

    else
    {
      (*(v8 + 16))((a1 + v11) & v23, v25, v7);
      (*(v8 + 56))((a1 + v11) & v23, 0, 1, v7);
    }

    (*(v14 + 16))((v16 + ((a1 + v11) & v23)) & v27, (v25 + v16) & v27, v28);
  }

  else
  {
    v22 = *a2;
    *a1 = *a2;
    a1 = (v22 + ((v18 + 16) & ~v18));
  }

  return a1;
}

uint64_t destroy for MulticolumnSplitView(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  (*v4)();
  v5 = a2[3];
  v6 = *(v4 + 56);
  v7 = *(v5 - 8);
  v8 = (v6 + a1 + *(v7 + 80)) & ~*(v7 + 80);
  if (!(*(v7 + 48))(v8, 1, v5))
  {
    (*(v7 + 8))(v8, v5);
  }

  v9 = a2[4];
  v10 = *(*(v9 - 8) + 8);
  v11 = *(*(v9 - 8) + 80);
  v12 = *(v7 + 64) + v8;
  if (!*(v7 + 84))
  {
    ++v12;
  }

  return v10((v12 + v11) & ~v11);
}

uint64_t initializeWithCopy for MulticolumnSplitView(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 16;
  (*v6)();
  v7 = a3[3];
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 48) + v9;
  v11 = ((v10 + a1) & ~v9);
  v12 = ((v10 + a2) & ~v9);
  if ((*(v8 + 48))(v12, 1, v7))
  {
    v13 = *(v8 + 84);
    v14 = *(v8 + 64);
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy(v11, v12, v15);
  }

  else
  {
    (*(v8 + 16))(v11, v12, v7);
    v17 = *(v8 + 56);
    v16 = v8 + 56;
    v17(v11, 0, 1, v7);
    v13 = *(v16 + 28);
    v14 = *(v16 + 8);
  }

  if (v13)
  {
    v18 = v14;
  }

  else
  {
    v18 = v14 + 1;
  }

  v19 = *(a3[4] - 8);
  (*(v19 + 16))((v11 + v18 + *(v19 + 80)) & ~*(v19 + 80), (v12 + v18 + *(v19 + 80)) & ~*(v19 + 80));
  return a1;
}

uint64_t assignWithCopy for MulticolumnSplitView(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 24;
  (*v6)();
  v7 = a3[3];
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 40) + v9;
  v11 = ((v10 + a1) & ~v9);
  v12 = ((v10 + a2) & ~v9);
  v13 = *(v8 + 48);
  v14 = v13(v11, 1, v7);
  v15 = v13(v12, 1, v7);
  if (v14)
  {
    if (!v15)
    {
      (*(v8 + 16))(v11, v12, v7);
      (*(v8 + 56))(v11, 0, 1, v7);
      goto LABEL_12;
    }

    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v8 + 24))(v11, v12, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v11, v7);
    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  memcpy(v11, v12, v18);
LABEL_12:
  if (*(v8 + 84))
  {
    v19 = *(v8 + 64);
  }

  else
  {
    v19 = *(v8 + 64) + 1;
  }

  v20 = *(a3[4] - 8);
  (*(v20 + 24))((v11 + v19 + *(v20 + 80)) & ~*(v20 + 80), (v12 + v19 + *(v20 + 80)) & ~*(v20 + 80));
  return a1;
}

uint64_t initializeWithTake for MulticolumnSplitView(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 32;
  (*v6)();
  v7 = a3[3];
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 32) + v9;
  v11 = ((v10 + a1) & ~v9);
  v12 = ((v10 + a2) & ~v9);
  if ((*(v8 + 48))(v12, 1, v7))
  {
    v13 = *(v8 + 84);
    v14 = *(v8 + 64);
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy(v11, v12, v15);
  }

  else
  {
    (*(v8 + 32))(v11, v12, v7);
    v17 = *(v8 + 56);
    v16 = v8 + 56;
    v17(v11, 0, 1, v7);
    v13 = *(v16 + 28);
    v14 = *(v16 + 8);
  }

  if (v13)
  {
    v18 = v14;
  }

  else
  {
    v18 = v14 + 1;
  }

  v19 = *(a3[4] - 8);
  (*(v19 + 32))((v11 + v18 + *(v19 + 80)) & ~*(v19 + 80), (v12 + v18 + *(v19 + 80)) & ~*(v19 + 80));
  return a1;
}

uint64_t assignWithTake for MulticolumnSplitView(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 40;
  (*v6)();
  v7 = a3[3];
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 24) + v9;
  v11 = ((v10 + a1) & ~v9);
  v12 = ((v10 + a2) & ~v9);
  v13 = *(v8 + 48);
  v14 = v13(v11, 1, v7);
  v15 = v13(v12, 1, v7);
  if (v14)
  {
    if (!v15)
    {
      (*(v8 + 32))(v11, v12, v7);
      (*(v8 + 56))(v11, 0, 1, v7);
      goto LABEL_12;
    }

    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v8 + 40))(v11, v12, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v11, v7);
    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  memcpy(v11, v12, v18);
LABEL_12:
  if (*(v8 + 84))
  {
    v19 = *(v8 + 64);
  }

  else
  {
    v19 = *(v8 + 64) + 1;
  }

  v20 = *(a3[4] - 8);
  (*(v20 + 40))((v11 + v19 + *(v20 + 80)) & ~*(v20 + 80), (v12 + v19 + *(v20 + 80)) & ~*(v20 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for MulticolumnSplitView(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 84);
  v6 = *(a3[3] - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = a3[4];
  v10 = *(v9 - 8);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = v8;
  }

  v12 = *(v10 + 84);
  v13 = *(v6 + 80);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v12 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = *(v10 + 84);
  }

  if (v7)
  {
    v17 = *(*(a3[3] - 8) + 64);
  }

  else
  {
    v17 = *(*(a3[3] - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(a3[2] - 8) + 64) + v13;
  v19 = a2 - v16;
  if (a2 <= v16)
  {
    goto LABEL_37;
  }

  v20 = ((v17 + v14 + (v18 & ~v13)) & ~v14) + v15;
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v23 = ((v19 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v23))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v23 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v23 < 2)
    {
LABEL_36:
      if (v16)
      {
LABEL_37:
        if (v5 == v16)
        {
          v27 = *(v4 + 48);

          return v27();
        }

        else
        {
          v29 = (a1 + v18) & ~v13;
          if (v8 == v16)
          {
            v30 = (*(v6 + 48))(v29, v7);
            if (v30 >= 2)
            {
              return v30 - 1;
            }

            else
            {
              return 0;
            }
          }

          else
          {
            v31 = *(*(v9 - 8) + 48);
            v32 = (v29 + v17 + v14) & ~v14;

            return v31(v32, v12, v9);
          }
        }
      }

      return 0;
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_36;
  }

LABEL_23:
  v24 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v24 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v25 = ((v17 + v14 + (v18 & ~v13)) & ~v14) + v15;
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

  else
  {
    v26 = 0;
  }

  return v16 + (v26 | v24) + 1;
}

char *storeEnumTagSinglePayload for MulticolumnSplitView(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = 0;
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = v10;
  }

  v12 = a4[4];
  v13 = *(v12 - 8);
  v14 = *(*(a4[2] - 8) + 64);
  v15 = *(v8 + 80);
  v16 = *(*(a4[3] - 8) + 64);
  v17 = *(v13 + 80);
  if (*(v13 + 84) <= v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  v19 = v14 + v15;
  if (!v9)
  {
    ++v16;
  }

  v20 = ((v16 + v17 + ((v14 + v15) & ~v15)) & ~v17) + *(*(v12 - 8) + 64);
  v21 = a3 >= v18;
  v22 = a3 - v18;
  if (v22 == 0 || !v21)
  {
LABEL_24:
    if (v18 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  if (v20 > 3)
  {
    v5 = 1;
    if (v18 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  v23 = ((v22 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
  if (!HIWORD(v23))
  {
    if (v23 < 0x100)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    if (v23 >= 2)
    {
      v5 = v24;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_24;
  }

  v5 = 4;
  if (v18 < a2)
  {
LABEL_25:
    v25 = ~v18 + a2;
    if (v20 < 4)
    {
      v27 = (v25 >> (8 * v20)) + 1;
      if (v20)
      {
        v28 = v25 & ~(-1 << (8 * v20));
        v29 = result;
        bzero(result, v20);
        result = v29;
        if (v20 != 3)
        {
          if (v20 == 2)
          {
            *v29 = v28;
            if (v5 > 1)
            {
LABEL_59:
              if (v5 == 2)
              {
                *&result[v20] = v27;
              }

              else
              {
                *&result[v20] = v27;
              }

              return result;
            }
          }

          else
          {
            *v29 = v25;
            if (v5 > 1)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_56;
        }

        *v29 = v28;
        v29[2] = BYTE2(v28);
      }

      if (v5 > 1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v26 = result;
      bzero(result, v20);
      result = v26;
      *v26 = v25;
      v27 = 1;
      if (v5 > 1)
      {
        goto LABEL_59;
      }
    }

LABEL_56:
    if (v5)
    {
      result[v20] = v27;
    }

    return result;
  }

LABEL_34:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v20] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_41;
    }

    *&result[v20] = 0;
  }

  else if (v5)
  {
    result[v20] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return result;
  }

LABEL_41:
  if (v7 == v18)
  {
    v30 = *(v6 + 56);

    return v30();
  }

  else
  {
    v31 = &result[v19] & ~v15;
    if (v10 == v18)
    {
      v32 = *(v8 + 56);
      v33 = a2 + 1;

      return v32(v31, v33, v9);
    }

    else
    {
      v34 = *(v13 + 56);
      v35 = (v31 + v16 + v17) & ~v17;

      return v34(v35);
    }
  }
}

void type metadata accessor for StyleContextSplitViewNavigationController<NoStyleContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

id static ForEach<>._makeToolbar(content:inputs:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v15 = a1[3];
  v30 = a1[2];
  *v31 = v15;
  *&v31[12] = *(a1 + 60);
  v16 = a1[1];
  v28 = *a1;
  v29 = v16;
  type metadata accessor for ForEach();
  type metadata accessor for _GraphValue();
  v17 = _GraphValue.value.getter();
  *&v25[32] = v30;
  *&v25[48] = *v31;
  *&v25[60] = *&v31[12];
  *v25 = v28;
  *&v25[16] = v29;
  outlined init with copy of _ToolbarInputs(&v28, v24);
  v23 = a7;
  v18 = default argument 2 of ForEach<>.PreferenceTransform.init(forEach:inputs:cache:)(a2, a3, a4, a5, a6);
  *&v24[20] = *&v25[16];
  *&v24[36] = *&v25[32];
  *&v24[52] = *&v25[48];
  *&v24[64] = *&v25[60];
  *&v24[4] = *v25;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *v25 = v17;
    *&v25[20] = *&v24[16];
    *&v25[36] = *&v24[32];
    *&v25[52] = *&v24[48];
    *&v25[68] = *&v24[64];
    *&v25[4] = *v24;
    v26 = result;
    v27 = v18;
    v20 = *&v31[16];
    PreferencesOutputs.init()();
    v21 = *&v24[8];
    *a8 = *v24;
    *(a8 + 8) = v21;
    *(a8 + 16) = v20;
    MEMORY[0x1EEE9AC00](*v31);

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
    *v24 = a2;
    *&v24[8] = a3;
    *&v24[16] = a4;
    *&v24[24] = a5;
    *&v24[32] = a6;
    *&v24[40] = v23;
    v22 = type metadata accessor for ForEach<>.PreferenceTransform();
    (*(*(v22 - 8) + 8))(v25, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t default argument 2 of ForEach<>.PreferenceTransform.init(forEach:inputs:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for ForEach<>.PreferenceTransform.Item();
  swift_getTupleTypeMetadata2();
  v8 = static Array._allocateUninitialized(_:)();
  v9 = specialized Dictionary.init(dictionaryLiteral:)(v8, a2, v7, a5);

  return v9;
}

uint64_t implicit closure #1 in static ForEach<>._makeToolbar(content:inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a1[5];
  v24 = a1[4];
  v25 = v8;
  v26 = *(a1 + 12);
  v9 = a1[1];
  v20 = *a1;
  v21 = v9;
  v10 = a1[3];
  v22 = a1[2];
  v23 = v10;
  *&v27 = a2;
  *(&v27 + 1) = a3;
  *&v28 = a4;
  *(&v28 + 1) = a5;
  *&v29 = a6;
  *(&v29 + 1) = a7;
  v11 = type metadata accessor for ForEach<>.PreferenceTransform();
  v18 = v11;
  WitnessTable = swift_getWitnessTable();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v27, a1, v11);
  type metadata accessor for Attribute<(_:)>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v20, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_4, v17, v11, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v27 = v20;
  v28 = v21;
  v29 = v22;
  v30 = v23;
  (*(v12 + 8))(&v27, v11);
  return v16;
}

uint64_t ForEach<>.PreferenceTransform.forEach.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ForEach();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t ForEach<>.PreferenceTransform.updateValue()(void *a1)
{
  v105 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  v81 = *(v3 - 8);
  v4 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v76 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v65 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v65 - v9;
  v77 = v1;
  result = AGSubgraphIsValid();
  if (result)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = 0u;
    v13 = v12 + 16;
    *(v12 + 32) = 0u;
    *(v12 + 41) = 0u;
    *(v12 + 64) = MEMORY[0x1E69E7CC0];
    *(v12 + 72) = 1;
    *(v12 + 80) = MEMORY[0x1E69E7CD0];
    v86 = 0;
    v14 = static Array._allocateUninitialized(_:)();
    v15 = MEMORY[0x18D00CDF0](v14, v3);
    v65 = v4;
    v66 = v12;
    v68 = v10;
    v69 = v7;
    if (v15)
    {
      v16 = a1[6];
      v17 = specialized Set.init(_nonEmptyArrayLiteral:)(v14, v3, v16);
    }

    else
    {

      v16 = a1[6];
      v17 = MEMORY[0x1E69E7CD0];
    }

    v84 = &v65;
    v19 = v77[3];
    v20 = v77[5];
    v100 = v77[4];
    v101 = v20;
    v21 = v77[1];
    v97[0] = *v77;
    v97[1] = v21;
    v22 = v77[3];
    v24 = *v77;
    v23 = v77[1];
    v98 = v77[2];
    v99 = v22;
    v25 = v77[5];
    v94 = v100;
    v95 = v25;
    v90 = v24;
    v91 = v23;
    v26 = *(v77 + 12);
    v85 = v17;
    v102 = v26;
    v27 = *(v77 + 12);
    v28 = (v77 + 6);
    v67 = v77 + 6;
    v96 = v27;
    v92 = v98;
    v93 = v19;
    v29.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
    v83 = a1[2];
    *(&v65 - 10) = v83;
    *(&v65 - 9) = v3;
    v30 = a1[4];
    v79 = a1[5];
    v31 = v79;
    v80 = v30;
    *(&v65 - 8) = v30;
    *(&v65 - 7) = v31;
    v78 = a1[7];
    v32 = v78;
    *(&v65 - 6) = v16;
    *(&v65 - 5) = v32;
    *(&v65 - 4) = v33;
    *(&v65 - 3) = &v86;
    *(&v65 - 2) = &v85;
    *(&v65 - 1) = v13;
    v34 = *(a1 - 1);
    v72 = *(v34 + 16);
    v73 = v34 + 16;
    (v72)(v103, v97, a1, v29);
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x18D000B40](a1, MEMORY[0x1E69E7CA8] + 8, WitnessTable);
    StatefulRule.withObservation<A>(observationCenter:do:)();
    v82 = 0;
    v103[4] = v94;
    v103[5] = v95;
    v104 = v96;
    v103[0] = v90;
    v103[1] = v91;
    v103[2] = v92;
    v103[3] = v93;
    v36 = *(v34 + 8);
    v74 = v34 + 8;
    v75 = a1;
    v71 = v36;
    v36(v103, a1);

    v37 = v83;
    v38 = *v28;
    *&v90 = v83;
    *(&v90 + 1) = v3;
    v40 = v79;
    v39 = v80;
    *&v91 = v80;
    *(&v91 + 1) = v79;
    v41 = v78;
    *&v92 = v16;
    *(&v92 + 1) = v78;
    v42 = type metadata accessor for ForEach<>.PreferenceTransform.Item();
    v84 = &v65;
    *&v90 = v38;
    MEMORY[0x1EEE9AC00](v42);
    *(&v65 - 8) = v37;
    *(&v65 - 7) = v3;
    *(&v65 - 6) = v39;
    *(&v65 - 5) = v40;
    *(&v65 - 4) = v16;
    *(&v65 - 3) = v41;
    *(&v65 - 2) = &v85;
    v43 = v16;
    type metadata accessor for Dictionary.Keys();

    swift_getWitnessTable();
    v44 = Sequence.filter(_:)();
    v45 = v67;
    v46 = MEMORY[0x18D00CDE0](v44, v3);
    v48 = v68;
    v47 = v69;
    if (v46)
    {
      v49 = v43;
      v50 = 0;
      v84 = (v81 + 16);
      v78 = (v81 + 8);
      v79 = (v81 + 32);
      v70 = v42;
      v80 = v44;
      do
      {
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          v52 = v44 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v50;
          v83 = *(v81 + 16);
          v83(v48, v52, v3);
          v53 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            goto LABEL_15;
          }
        }

        else
        {
          v64 = _ArrayBuffer._getElementSlowPath(_:)();
          if (v65 != 8)
          {
            __break(1u);
          }

          *&v90 = v64;
          v83 = *v84;
          v83(v48, &v90, v3);
          swift_unknownObjectRelease();
          v53 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
LABEL_15:
            __break(1u);
            break;
          }
        }

        (*v79)(v47, v48, v3);
        MEMORY[0x18D00C560](&v89, v47, *v45, v3, v42, v49);
        v54 = v89;
        if (v89)
        {
          v55 = v77[5];
          v94 = v77[4];
          v95 = v55;
          v96 = *(v77 + 12);
          v56 = v77[1];
          v90 = *v77;
          v91 = v56;
          v57 = v77[3];
          v92 = v77[2];
          v93 = v57;
          v82 = v53;
          v58 = v49;
          v59 = v3;
          v60 = v48;
          v61 = v47;
          v62 = v75;
          v72(&v87, &v90, v75);
          AGSubgraphRef.willInvalidate(isInserted:)(1);
          AGSubgraphInvalidate();
          v63 = v62;
          v47 = v61;
          v48 = v60;
          v3 = v59;
          v49 = v58;
          v42 = v70;
          v71(&v90, v63);
          v83(v76, v47, v3);
          v87 = 0;
          v88 = 0;
          type metadata accessor for Dictionary();
          v53 = v82;
          Dictionary.subscript.setter();
        }

        (*v78)(v47, v3);
        v44 = v80;
        ++v50;
      }

      while (v53 != MEMORY[0x18D00CDE0](v80, v3));
    }

    *&v90 = partial apply for closure #3 in ForEach<>.PreferenceTransform.updateValue();
    *(&v90 + 1) = v66;
    type metadata accessor for (_:)();

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t closure #1 in ForEach<>.PreferenceTransform.updateValue()(__int128 *a1, void (**a2)(char *, uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v115 = a7;
  v10 = a6;
  v99 = a4;
  v103 = a3;
  v117 = a2;
  v88 = *(a6 - 8);
  v108 = a9;
  v118 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v102 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v101 = &v86 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v119 = &v86 - v17;
  v19 = *(v18 + 8);
  v20 = v18;
  v110 = v18;
  v21 = *(v19 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v111 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v146 = &v86 - v22;
  v23 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v106 = &v86 - v24;
  v94 = v21;
  v25 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v25);
  v116 = &v86 - v26;
  v114 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v105 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v134 = a5;
  *(&v134 + 1) = v10;
  *&v135 = v115;
  *(&v135 + 1) = v20;
  *&v136 = a9;
  v29 = type metadata accessor for ForEach();
  v113 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v97 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v86 - v32;
  v109 = a5;
  v93 = v25;
  v104 = *(swift_getAssociatedConformanceWitness() + 8);
  v112 = swift_getAssociatedTypeWitness();
  v86 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v35 = &v86 - v34;
  v36 = a1[5];
  v138 = a1[4];
  v139 = v36;
  v140 = *(a1 + 12);
  v37 = a1[1];
  v134 = *a1;
  v135 = v37;
  v39 = a1[2];
  v38 = a1[3];
  v100 = a1;
  v136 = v39;
  v137 = v38;
  *&v125 = a5;
  *(&v125 + 1) = v10;
  v40 = v146;
  *&v126 = v115;
  *(&v126 + 1) = v110;
  v41 = AssociatedTypeWitness;
  *&v127 = v108;
  *(&v127 + 1) = v118;
  v118 = type metadata accessor for ForEach<>.PreferenceTransform();
  ForEach<>.PreferenceTransform.forEach.getter(v33);
  v42 = v105;
  ForEach.data.getter();
  v95 = *(v113 + 8);
  v96 = v33;
  v98 = v29;
  v113 += 8;
  v95(v33, v29);
  v43 = v109;
  dispatch thunk of Collection.indices.getter();
  v44 = *(v114 + 8);
  v114 += 8;
  v94 = v44;
  v44(v42, v43);
  dispatch thunk of Sequence.makeIterator()();
  v45 = v106;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v104 = v35;
  v93 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v47 = v111;
  v91 = *(v111 + 48);
  v92 = v111 + 48;
  if (v91(v45, 1, v41) != 1)
  {
    v49 = *(v47 + 32);
    v89 = (v88 + 16);
    v90 = v49;
    v111 = v47 + 32;
    v87 = (v47 + 8);
    v88 += 8;
    v49(v40, v45, v41);
    while (1)
    {
      v58 = v100;
      v59 = v100[5];
      v138 = v100[4];
      v139 = v59;
      v140 = *(v100 + 12);
      v60 = v100[1];
      v134 = *v100;
      v135 = v60;
      v61 = v100[3];
      v136 = v100[2];
      v137 = v61;
      v62 = v96;
      ForEach<>.PreferenceTransform.forEach.getter(v96);
      v63 = v98;
      ForEach.idGenerator.getter();
      v64 = v95;
      v95(v62, v63);
      v132 = v133;
      v65 = v58[5];
      v129 = v58[4];
      v130 = v65;
      v131 = *(v58 + 12);
      v66 = v58[1];
      v125 = *v58;
      v126 = v66;
      v67 = v58[3];
      v127 = v58[2];
      v128 = v67;
      v68 = v97;
      ForEach<>.PreferenceTransform.forEach.getter(v97);
      v69 = v105;
      ForEach.data.getter();
      v64(v68, v63);
      v70 = v109;
      v120 = v109;
      v121 = v10;
      v122 = v115;
      v123 = v110;
      v124 = v108;
      type metadata accessor for ForEach.IDGenerator();
      v71 = v119;
      ForEach.IDGenerator.makeID(data:index:offset:)();
      v72 = v69;
      v73 = v117;
      v94(v72, v70);

      (*v89)(v102, v71, v10);
      v74 = v88;
      type metadata accessor for Set();
      v75 = v101;
      Set.insert(_:)();
      v76 = *v74;
      (*v74)(v75, v10);
      v116 = ForEach<>.PreferenceTransform.item(at:offset:)(v146, *v73, v118);
      Value = AGGraphGetValue();
      v141 = *Value;
      v79 = *(Value + 32);
      v78 = *(Value + 48);
      v80 = *(Value + 16);
      v145 = *(Value + 64);
      v143 = v79;
      v144 = v78;
      v142 = v80;
      v81 = v99[1];
      v82 = v99;
      if (v81)
      {
        v83 = *v99;
      }

      else
      {
        v83 = v141;
      }

      v84 = v73;
      v85 = v10;
      *v82 = v83;
      v82[1] = v81;
      v50 = v82[3];
      if (v50)
      {
        v51 = v82[2];
        v52 = v82[4];
      }

      else
      {
        v50 = *(&v142 + 1);
        v51 = v142;
        v52 = v143;
        outlined copy of Binding<Int>?(v142, *(&v142 + 1));
      }

      v82[2] = v51;
      v82[3] = v50;
      v82[4] = v52;
      *(v82 + 40) = (*(v82 + 40) | BYTE8(v143)) & 1;
      *&v125 = v82[6];
      outlined init with copy of ToolbarStorage(&v141, &v134);

      specialized Array.append<A>(contentsOf:)(v53);
      v82[6] = v125;

      specialized Set.formUnion<A>(_:)(v54);
      outlined destroy of ToolbarStorage(&v141);

      v10 = v85;
      v76(v119, v85);
      v55 = v146;
      v56 = AssociatedTypeWitness;
      (*v87)(v146, AssociatedTypeWitness);
      *v84 = (*v84 + 1);
      v57 = v106;
      dispatch thunk of IteratorProtocol.next()();
      if (v91(v57, 1, v56) == 1)
      {
        break;
      }

      v90(v55, v57, v56);
    }
  }

  return (*(v86 + 8))(v104, v112);
}

uint64_t ForEach<>.PreferenceTransform.item(at:offset:)(uint64_t a1, void (*a2)(char *, uint64_t), void *a3)
{
  v4 = v3;
  v99 = a2;
  v104 = a1;
  v6 = a3[4];
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v95 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 40);
  v88 = *(*(v10 + 8) + 8);
  v106 = *(v9 + 16);
  v11 = v106;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v109 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v93 = v82 - v12;
  v97 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v103 = v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a3;
  v15 = a3[6];
  v101 = a3[3];
  v102 = v15;
  *&v16 = v11;
  *(&v16 + 1) = v101;
  v90 = v10;
  v91 = v6;
  *&v17 = v6;
  *(&v17 + 1) = v10;
  v107 = v17;
  v108 = v16;
  v128 = v16;
  v129 = v17;
  *&v130 = v15;
  v18 = type metadata accessor for ForEach();
  MEMORY[0x1EEE9AC00](v18);
  v98 = v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v82 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v83 = v82 - v25;
  MEMORY[0x1EEE9AC00](v25);
  v100 = v82 - v26;
  v27 = *(v4 + 12);
  v84 = v7;
  v92 = v109;
  v109 = v97;
  v29 = v28;
  v30 = v4[5];
  v132 = v4[4];
  v133 = v30;
  v134 = v27;
  v31 = v4[1];
  v128 = *v4;
  v129 = v31;
  v32 = v4[3];
  v130 = v4[2];
  v131 = v32;
  v96 = v33;
  v34 = v105;
  ForEach<>.PreferenceTransform.forEach.getter(v22);
  ForEach.idGenerator.getter();
  v35 = *(v29 + 8);
  v87 = v22;
  v35(v22, v18);
  v36 = v4[3];
  v123 = v4[2];
  v124[0] = v36;
  v124[1] = v4[4];
  v37 = v4[1];
  v121 = *v4;
  v122 = v37;
  v38 = *(v4 + 10);
  v39 = *(v4 + 11);
  v82[1] = v4 + 6;
  v97 = *(v4 + 12);
  v125 = v38;
  v85 = v39;
  v126 = v39;
  v127 = v97;
  v40 = v98;
  ForEach<>.PreferenceTransform.forEach.getter(v98);
  v41 = v103;
  ForEach.data.getter();
  v89 = v18;
  v98 = v29 + 8;
  v86 = v35;
  v35(v40, v18);
  v116 = v108;
  v117 = v107;
  v42 = v102;
  *&v118 = v102;
  type metadata accessor for ForEach.IDGenerator();
  v43 = v100;
  ForEach.IDGenerator.makeID(data:index:offset:)();
  v44 = v101;
  v45 = *(v109 + 8);
  v109 += 8;
  v99 = v45;
  v45(v41, v106);

  v46 = v34[7];
  v128 = v108;
  v129 = v107;
  *&v130 = v42;
  *(&v130 + 1) = v46;
  v47 = type metadata accessor for ForEach<>.PreferenceTransform.Item();
  MEMORY[0x18D00C560](&v120, v43, v97, v44, v47, v42);
  v48 = v120;
  if (v120)
  {
    (*(v96 + 8))(v43, v44);
    return v48;
  }

  v97 = v47;
  v49 = AGSubgraphGetGraph();
  *&v108 = AGSubgraphCreate2();

  AGSubgraphAddChild();
  v50 = v4[5];
  v132 = v4[4];
  v133 = v50;
  v134 = *(v4 + 12);
  v51 = v4[1];
  v128 = *v4;
  v129 = v51;
  v52 = v4[3];
  v130 = v4[2];
  v131 = v52;
  v53 = v87;
  ForEach<>.PreferenceTransform.forEach.getter(v87);
  v54 = v103;
  v55 = v89;
  ForEach.data.getter();
  *&v107 = v46;
  v56 = v86;
  v86(v53, v55);
  v57 = v106;
  v58 = dispatch thunk of Collection.subscript.read();
  v59 = v93;
  (*(v92 + 16))(v93);
  v58(&v121, 0);
  v60 = v54;
  v61 = v57;
  v99(v60, v57);
  v62 = v4[5];
  v132 = v4[4];
  v133 = v62;
  v134 = *(v4 + 12);
  v63 = v4[1];
  v128 = *v4;
  v129 = v63;
  v64 = v4[3];
  v130 = v4[2];
  v131 = v64;
  ForEach<>.PreferenceTransform.forEach.getter(v53);
  v65 = *(v53 + *(v55 + 60));

  v56(v53, v55);
  v66 = v95;
  v65(v59);

  v67 = *(v4 + 24);
  v68 = *(v4 + 56);
  v118 = *(v4 + 40);
  v119[0] = v68;
  *(v119 + 12) = *(v4 + 68);
  v116 = *(v4 + 8);
  v117 = v67;
  v69 = v67;
  v114 = v118;
  v115[0] = v68;
  *(v115 + 12) = *(v119 + 12);
  v112 = v116;
  v113 = v67;
  swift_beginAccess();
  v70 = v69[3];
  v129 = v69[2];
  v130 = v70;
  v71 = v69[5];
  v131 = v69[4];
  v132 = v71;
  v128 = v69[1];
  type metadata accessor for MutableBox<CachedEnvironment>();
  v72 = swift_allocObject();
  memmove((v72 + 16), v69 + 1, 0x50uLL);
  *&v113 = v72;
  outlined init with copy of _ToolbarInputs(&v116, &v121);
  outlined init with copy of CachedEnvironment(&v128, &v121);

  v110 = 0;
  v111 = 1;
  AGGraphClearUpdate();
  v73 = AGSubgraphGetCurrent();
  v74 = v108;
  AGSubgraphSetCurrent();
  v75 = v66;
  v76 = v101;
  v77 = v91;
  closure #1 in ForEach<>.PreferenceTransform.item(at:offset:)(v75, &v112, &v110, v61, v101, v91, v90, v102, v107);
  AGSubgraphSetCurrent();

  result = AGGraphSetUpdate();
  if ((v111 & 1) == 0)
  {
    v79 = v110;
    v80 = v96;
    v81 = v100;
    (*(v96 + 16))(v83, v100, v76);
    *&v121 = v74;
    DWORD2(v121) = v79;
    type metadata accessor for Dictionary();
    v48 = v74;
    Dictionary.subscript.setter();
    (*(v92 + 8))(v93, AssociatedTypeWitness);
    (*(v80 + 8))(v81, v76);
    v123 = v114;
    v124[0] = v115[0];
    *(v124 + 12) = *(v115 + 12);
    v121 = v112;
    v122 = v113;
    outlined destroy of _ToolbarInputs(&v121);
    (*(v84 + 8))(v95, v77);
    return v48;
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in ForEach<>.PreferenceTransform.updateValue()(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 64);
  v18 = *(a2 + 48);
  v19 = v4;
  v20 = *(a2 + 80);
  v5 = *(a2 + 32);
  v16 = *(a2 + 16);
  v17 = v5;
  v6 = a1[1];
  if (v6)
  {
    v7 = *a1;
  }

  else
  {
    v7 = v16;
  }

  *a1 = v7;
  a1[1] = v6;
  v8 = a1[3];
  if (v8)
  {
    v9 = a1[2];
    v10 = a1[4];
  }

  else
  {
    v8 = *(&v17 + 1);
    v9 = v17;
    v10 = v18;
    outlined copy of Binding<Int>?(v17, *(&v17 + 1));
  }

  a1[2] = v9;
  a1[3] = v8;
  a1[4] = v10;
  *(a1 + 40) = (*(a1 + 40) | BYTE8(v18)) & 1;
  v15 = a1[6];
  outlined init with copy of ToolbarStorage(&v16, v14);

  specialized Array.append<A>(contentsOf:)(v11);
  a1[6] = v15;

  specialized Set.formUnion<A>(_:)(v12);
  return outlined destroy of ToolbarStorage(&v16);
}

uint64_t closure #1 in ForEach<>.PreferenceTransform.item(at:offset:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a6;
  v13 = type metadata accessor for Attribute();
  v14 = MEMORY[0x1E69E73E0];
  v15 = MEMORY[0x1E69E7410];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in Attribute.init(value:), v27, a6, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v16);
  v25[2] = a6;
  v26 = v39[0];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in Attribute.setValue(_:), v25, a6, v14, MEMORY[0x1E69E6370], v15, v17);
  _GraphValue.init(_:)();
  v18 = a2[1];
  v19 = a2[3];
  v37 = a2[2];
  v38[0] = v19;
  *(v38 + 12) = *(a2 + 60);
  v20 = a2[1];
  v36[0] = *a2;
  v36[1] = v20;
  v21 = a2[3];
  v31 = v37;
  *v32 = v21;
  *&v32[12] = *(a2 + 60);
  v29 = v36[0];
  v30 = v18;
  v22 = *(a9 + 32);
  outlined init with copy of _ToolbarInputs(v36, v39);
  v22(&v34, v33, &v29, a6, a9);
  v39[2] = v31;
  v40[0] = *v32;
  *(v40 + 12) = *&v32[12];
  v39[0] = v29;
  v39[1] = v30;
  outlined destroy of _ToolbarInputs(v39);
  *&v29 = v34;
  DWORD2(v29) = v35;
  result = PreferencesOutputs.subscript.getter();
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v24 = result;

    *a3 = v24;
    *(a3 + 4) = 0;
  }

  return result;
}

uint64_t ForEach<>.init<>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  return ForEach<>.init<>(_:content:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

{
  return ForEach<>.init<>(_:content:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

{
  v21[2] = a2;
  v21[3] = a3;
  v21[1] = a9;
  v16 = *(a4 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  (*(v16 + 16))(v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v19, v17);
  v21[4] = a4;
  v21[5] = a5;
  v21[6] = a6;
  v21[7] = a7;
  v21[8] = a8;
  v21[9] = a10;
  v21[11] = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  ForEach.init(_:idGenerator:content:)();
  return (*(v16 + 8))(a1, a4);
}

uint64_t ForEach<>.init(_:id:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return ForEach<>.init(_:id:content:)(a1, a2, a3, a4, a5, a6, a7);
}

{
  v15[1] = a6;
  v15[2] = a7;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13, v11);
  v15[3] = a2;
  ForEach.init(_:idGenerator:content:)();
  return (*(v10 + 8))(a1, a5);
}

{
  return ForEach<>.init(_:id:content:)(a1, a2, a3, a4, a5, a6, a7);
}

{
  v15[1] = a6;
  v15[2] = a7;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13, v11);
  v15[3] = a2;
  ForEach.init(_:idGenerator:content:)();
  return (*(v10 + 8))(a1, a5);
}

double ForEach<>.init<>(_:content:)@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  return ForEach<>.init<>(_:content:)(a1, a2, a3, a4, a5);
}

{
  return ForEach<>.init<>(_:content:)(a1, a2, a3, a4, a5);
}

{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  type metadata accessor for Range<Int>();
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  ForEach.init(_:idGenerator:content:)();
  *a5 = v12;
  *(a5 + 16) = v13;
  result = *&v14;
  *(a5 + 32) = v14;
  *(a5 + 48) = v15;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Int) -> (@out C)(void *a1)
{
  return (*(v1 + 32))(*a1);
}

{
  return (*(v1 + 40))(*a1);
}

{
  return (*(v1 + 56))(*a1);
}

void type metadata accessor for Range<Int>()
{
  if (!lazy cache variable for type metadata for Range<Int>)
  {
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Range<Int>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    type metadata accessor for Range<Int>();
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    type metadata accessor for Range<Int>();
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for <> ForEach<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t destroy for ForEach<>.PreferenceTransform(uint64_t a1)
{
}

uint64_t initializeWithCopy for ForEach<>.PreferenceTransform(uint64_t a1, uint64_t a2)
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
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v5 = *(a2 + 88);
  v4 = *(a2 + 96);
  *(a1 + 88) = v5;
  *(a1 + 96) = v4;

  v6 = v5;

  return a1;
}

uint64_t assignWithCopy for ForEach<>.PreferenceTransform(uint64_t a1, uint64_t a2)
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
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(a1 + 88);
  *(a1 + 88) = v4;
  v6 = v4;

  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithTake for ForEach<>.PreferenceTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t getEnumTagSinglePayload for ForEach<>.PreferenceTransform(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for ForEach<>.PreferenceTransform(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

BOOL partial apply for closure #2 in ForEach<>.PreferenceTransform.updateValue()(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  v5 = **(v1 + 64);

  LOBYTE(v3) = MEMORY[0x18D00D1E0](a1, v5, v3, v4);

  return (v3 & 1) == 0;
}

uint64_t assignWithCopy for ForEach<>.PreferenceTransform.Item(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for ForEach<>.PreferenceTransform.Item(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t _ScrollableLayoutView.init(data:layout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a3 - 8);
  (*(v9 + 16))(a5, a1);
  v10 = dispatch thunk of Collection.count.getter();
  (*(v9 + 8))(a1, a3);
  *(a5 + *(swift_getTupleTypeMetadata2() + 48)) = v10;
  v11 = type metadata accessor for _ScrollableLayoutView();
  return (*(*(a4 - 8) + 32))(a5 + *(v11 + 68), a2, a4);
}

uint64_t static _ScrollableLayoutView._makeView(view:inputs:)@<X0>(_DWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v88 = a9;
  v132 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v83 = &v76 - v18;
  *&v123 = a3;
  *(&v123 + 1) = a4;
  *&v124 = a5;
  v94 = a6;
  *(&v124 + 1) = a6;
  *&v125 = a7;
  *(&v125 + 1) = a8;
  v19 = type metadata accessor for ScrollableLayoutState();
  v85 = *(v19 - 8);
  v86 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v84 = &v76 - v20;
  v21 = a2[3];
  v22 = a2[1];
  v125 = a2[2];
  v126 = v21;
  v23 = a2[3];
  v127 = a2[4];
  v24 = a2[1];
  v123 = *a2;
  v124 = v24;
  LODWORD(v95) = *a1;
  v128 = *(a2 + 20);
  v130 = v22;
  v131 = v125;
  v129 = v123;
  v116 = v125;
  v117 = v23;
  v118 = a2[4];
  LODWORD(v20) = *(a2 + 20);
  v114 = v123;
  v115 = v22;
  v87 = DWORD1(v125);
  v119 = v20;
  DWORD1(v116) = DWORD1(v125) & 0xFFFFFFFD;
  v93 = a5;
  v81 = *(*(a5 + 8) + 8);
  v92 = a3;
  v100[2] = swift_getAssociatedTypeWitness();
  outlined init with copy of _ViewInputs(&v123, &v108);
  v25 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v25, partial apply for closure #1 in Attribute.init(type:), v100, MEMORY[0x1E698D3D0], MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
  v82 = 0;
  v27 = v108;
  LODWORD(v108) = 0;
  v28 = Attribute.init<A>(body:value:flags:update:)();
  v29 = AGSubgraphGetCurrent();
  if (!v29)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v30 = v29;
  v31 = AGSubgraphGetGraph();

  v32 = AGSubgraphCreate();
  AGGraphClearUpdate();
  v33 = AGSubgraphGetCurrent();
  v78 = v32;
  AGSubgraphSetCurrent();
  v79 = v28;
  LODWORD(v80) = v27;
  v34 = v28;
  v35 = v92;
  v36 = a4;
  v38 = v93;
  v37 = v94;
  closure #1 in static _ScrollableLayoutView._makeView(view:inputs:)(&v114, &v123, v34);
  AGSubgraphSetCurrent();

  v39 = AGGraphSetUpdate();
  v96 = a8;
  v90 = &v76;
  v40 = *(&v108 + 1);
  v77 = v108;
  MEMORY[0x1EEE9AC00](v39);
  LODWORD(v120) = v95;
  *&v108 = v35;
  *(&v108 + 1) = v36;
  *&v109 = v38;
  *(&v109 + 1) = v37;
  *&v110 = a7;
  *(&v110 + 1) = v96;
  type metadata accessor for _ScrollableLayoutView();
  type metadata accessor for _GraphValue();
  swift_getTupleTypeMetadata2();
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v41 = _GraphValue.value.getter();
  v91 = v41;
  v42 = v96;
  MEMORY[0x1EEE9AC00](v41);
  v70 = v35;
  v71 = v36;
  v72 = v38;
  v73 = v37;
  v89 = v43;
  WitnessTable = v43;
  v75 = v42;
  LODWORD(v97) = v95;
  _GraphValue.subscript.getter();
  v120 = v129;
  v121 = v130;
  v122 = v131;
  outlined init with copy of _GraphInputs(&v129, &v108);
  v44 = *(v37 + 8);
  v108 = v120;
  v109 = v121;
  v110 = v122;
  (*(v44 + 48))(v107, &v108, v36);
  LODWORD(v90) = v107[0];
  v107[0] = v120;
  v107[1] = v121;
  v107[2] = v122;
  outlined destroy of _GraphInputs(v107);
  lazy protocol witness table accessor for type _ViewInputs.ContainingScrollViewInput and conformance _ViewInputs.ContainingScrollViewInput();
  PropertyList.subscript.getter();
  if (BYTE8(v108))
  {
    goto LABEL_7;
  }

  v76 = v108;
  *&v108 = __PAIR64__(v79, v80);
  *(&v108 + 1) = v78;
  *&v109 = v77;
  *(&v109 + 1) = v40;
  v45 = *(v37 + 40);
  v80 = v78;
  v46 = v83;
  v45(v36, v37);
  v95 = v36;
  v47 = v92;
  swift_getAssociatedTypeWitness();
  v48 = Array.init()();
  v49 = Dictionary.init()();
  v50 = *MEMORY[0x1E695F050];
  v51 = *(MEMORY[0x1E695F050] + 8);
  v52 = *(MEMORY[0x1E695F050] + 16);
  v53 = *(MEMORY[0x1E695F050] + 24);
  v75 = v42;
  v54 = v89;
  v55 = v93;
  v70 = v47;
  v71 = v95;
  v56 = v84;
  v57 = ScrollableLayoutState.init(data:layout:scrollView:template:state:stateSeed:proxyStorage:identifiers:placements:validSize:validRect:contentSize:)(v91, v90, v76, &v108, v46, 0, 0, MEMORY[0x1E69E7CC8], v84, 0.0, 0.0, v50, v51, v52, v53, 0.0, 0.0, v48, v49);
  v83 = &v76;
  MEMORY[0x1EEE9AC00](v57);
  *&v108 = v47;
  *(&v108 + 1) = v95;
  v109 = __PAIR128__(v94, v55);
  *&v110 = v54;
  *(&v110 + 1) = v96;
  v58 = type metadata accessor for ScrollableLayoutState.Value();
  v59 = v86;
  v72 = v58;
  v73 = v86;
  WitnessTable = swift_getWitnessTable();
  v60 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v56, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, &v70, v59, MEMORY[0x1E69E73E0], v60, MEMORY[0x1E69E7410], v61);
  v62 = v94;
  (*(v85 + 8))(v56, v59);
  v63 = v108;
  v64 = default argument 3 of ScrollableLayoutViewAdaptor.init(dataAndCount:layout:state:items:itemsSeed:lastContentOffset:)();
  *&v120 = __PAIR64__(v90, v91);
  DWORD2(v120) = v63;
  *&v121 = v64;
  DWORD2(v121) = 0;
  v122 = *MEMORY[0x1E695F040];
  v97 = v120;
  v98 = v121;
  v99 = v122;
  v110 = v125;
  v111 = v126;
  v112 = v127;
  v113 = v128;
  v108 = v123;
  v109 = v124;
  v66 = v95;
  v65 = v96;
  v101 = v47;
  v102 = v95;
  v103 = v55;
  v104 = v62;
  v105 = v54;
  v106 = v96;
  v67 = type metadata accessor for ScrollableLayoutViewAdaptor();
  swift_getWitnessTable();
  static DynamicContainer.makeContainer<A>(adaptor:inputs:)();
  (*(*(v67 - 8) + 8))(&v120, v67);
  if ((v87 & 2) != 0)
  {
    closure #4 in static _ScrollableLayoutView._makeView(view:inputs:)(1, v92, v66, v93, v62, v89, v65);
    LODWORD(v108) = AGGraphCreateOffsetAttribute2();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type ScrollableItemLayoutComputer and conformance ScrollableItemLayoutComputer();
    Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v108) = 0;
    _ViewOutputs.layoutComputer.setter();
  }

  v68 = v88;
  *v88 = v101;
  v68[1] = v102;
  v110 = v116;
  v111 = v117;
  v112 = v118;
  v113 = v119;
  v108 = v114;
  v109 = v115;
  return outlined destroy of _ViewInputs(&v108);
}

uint64_t closure #1 in static _ScrollableLayoutView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 48);
  v33 = *(a1 + 32);
  v34 = v5;
  v35 = *(a1 + 64);
  v36 = *(a1 + 80);
  v6 = *(a1 + 16);
  v32[0] = *a1;
  v32[1] = v6;
  v7 = v6;
  v29 = v5;
  v30 = v35;
  v27 = v6;
  v28 = v33;
  v31 = v36;
  v26 = v32[0];
  swift_beginAccess();
  v8 = v7[3];
  v37[1] = v7[2];
  v37[2] = v8;
  v9 = v7[5];
  v37[3] = v7[4];
  v37[4] = v9;
  v37[0] = v7[1];
  type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, MEMORY[0x1E697ECC0], MEMORY[0x1E697DAC0]);
  v10 = swift_allocObject();
  memmove((v10 + 16), v7 + 1, 0x50uLL);
  outlined init with copy of _ViewInputs(v32, v24);
  outlined init with copy of CachedEnvironment(v37, v24);

  *&v27 = v10;
  *&v24[0] = 0;
  HIDWORD(v27) = Attribute.init<A>(body:value:flags:update:)();
  v11 = *(a2 + 24);
  LODWORD(a2) = *(a2 + 36);
  *&v24[0] = __PAIR64__(a3, v11);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type TemplateViewPhase and conformance TemplateViewPhase();
  Attribute.init<A>(body:value:flags:update:)();
  _ViewInputs.viewPhase.setter();
  if ((a2 & 2) != 0)
  {
    DWORD1(v28) |= 2u;
  }

  PreferenceKeys.init()();
  v12 = *&v24[0];

  *&v29 = v12;
  swift_getAssociatedTypeWitness();
  _GraphValue.init(_:)();
  v20[2] = v28;
  v20[3] = v29;
  v20[4] = v30;
  v21 = v31;
  v20[0] = v26;
  v20[1] = v27;
  v16 = v28;
  v17 = v29;
  v18 = v30;
  v19 = v31;
  v14 = v26;
  v15 = v27;
  outlined init with copy of _ViewInputs(v20, v24);
  static View.makeDebuggableView(view:inputs:)();
  v22[2] = v16;
  v22[3] = v17;
  v22[4] = v18;
  v23 = v19;
  v22[0] = v14;
  v22[1] = v15;
  outlined destroy of _ViewInputs(v22);
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v25 = v31;
  v24[0] = v26;
  v24[1] = v27;
  return outlined destroy of _ViewInputs(v24);
}

uint64_t closure #2 in static _ScrollableLayoutView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v11[2] = type metadata accessor for _ScrollableLayoutView();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v11, TupleTypeMetadata2, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v13;
}

uint64_t closure #3 in static _ScrollableLayoutView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v9 = type metadata accessor for _ScrollableLayoutView();
  v10 = *(v9 + 68);
  v14[2] = v9;
  v14[3] = a3;
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v10, partial apply for closure #1 in static PointerOffset.of(_:), v14, a3, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v15;
}

uint64_t ScrollableLayoutState.init(data:layout:scrollView:template:state:stateSeed:proxyStorage:identifiers:placements:validSize:validRect:contentSize:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, double a17@<D7>, uint64_t a18, uint64_t a19)
{
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = *a4;
  *(a9 + 24) = *(a4 + 8);
  *(a9 + 40) = *(a4 + 24);
  v31 = type metadata accessor for ScrollableLayoutState();
  v32 = v31[20];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a9 + v32, a5, AssociatedTypeWitness);
  *(a9 + v31[21]) = a6;
  v35 = a9 + v31[22];
  *v35 = a7;
  *(v35 + 8) = a8;
  *(a9 + v31[23]) = a18;
  *(a9 + v31[24]) = a19;
  v36 = (a9 + v31[25]);
  *v36 = a10;
  v36[1] = a11;
  v37 = (a9 + v31[26]);
  *v37 = a12;
  v37[1] = a13;
  v37[2] = a14;
  v37[3] = a15;
  v38 = (a9 + v31[27]);
  *v38 = a16;
  v38[1] = a17;
  return result;
}

uint64_t default argument 3 of ScrollableLayoutViewAdaptor.init(dataAndCount:layout:state:items:itemsSeed:lastContentOffset:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();

  return Array.init()();
}

uint64_t closure #4 in static _ScrollableLayoutView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v8 = type metadata accessor for ScrollableLayoutState.Value();
  v9 = *(v8 + 92);
  v15[2] = v8;
  type metadata accessor for CGSize(0);
  v11 = v10;
  v12 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_2, v15, v11, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  return v16;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance _ScrollableLayoutView<A, B>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t ScrollableLayoutViewAdaptor.dataAndCount.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v7 = &v11 - v6;
  Value = AGGraphGetValue();
  (*(v5 + 16))(v7, Value, TupleTypeMetadata2);
  v9 = *&v7[*(TupleTypeMetadata2 + 48)];
  (*(*(v3 - 8) + 32))(a1, v7, v3);
  return v9;
}

uint64_t ScrollableLayoutViewAdaptor.updatedItems()(void *a1)
{
  v3 = a1[4];
  v4 = *(*(v3 + 8) + 8);
  v5 = a1[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v119 = v4;
  v7 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v117 = &v96 - v8;
  v118 = v7;
  v110 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v116 = &v96 - v10;
  v120 = *(AssociatedTypeWitness - 8);
  v102 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v127 = &v96 - v12;
  v103 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v121 = v5;
  v122 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[5];
  v17 = a1[6];
  v112 = a1;
  v18 = a1[7];
  *&v19 = v5;
  v115 = v15;
  *(&v19 + 1) = v15;
  *&v20 = v3;
  v126 = v16;
  *(&v20 + 1) = v16;
  v104 = v20;
  v105 = v19;
  v141 = v19;
  v142 = v20;
  v106 = v18;
  v107 = v17;
  *&v143 = v17;
  *(&v143 + 1) = v18;
  v21 = type metadata accessor for ScrollableLayoutState.Value();
  v22 = swift_getTupleTypeMetadata2();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v113 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v96 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v96 - v29;
  v32 = *(v31 + 48);
  LODWORD(v114) = *(v1 + 6);
  v34 = *(v1 + 4);
  v33 = *(v1 + 5);
  v125 = v1;
  Value = AGGraphGetValue();
  v37 = v36;
  v38 = *(v21 - 1);
  (*(v38 + 16))(v30, Value, v21);
  v30[v32] = v37 & 1;
  v108 = v23;
  v41 = *(v23 + 16);
  v40 = v23 + 16;
  v39 = v41;
  v41(v27, v30, v22);
  v109 = v22;
  v42 = v27[*(v22 + 48)];
  v45 = *(v38 + 8);
  v43 = v38 + 8;
  v44 = v45;
  v45(v27, v21);
  v124 = v39;
  if (v42 != 1 || (v39(v27, v30, v109), v46 = *&v27[v21[17]], v44(v27, v21), v46 == v114))
  {
    v47 = v30;
    v48 = v44;
    if (swift_getAssociatedTypeWitness() == MEMORY[0x1E697E108])
    {
      v61 = 0;
      v58 = v108;
      goto LABEL_21;
    }

    v49 = v113;
    v124(v113, v30, v109);
    v50 = v21;
    v51 = &v49[v21[19]];
    v52 = *(v51 + 5);
    v139 = *(v51 + 4);
    v140 = v52;
    v53 = *(v51 + 3);
    v137 = *(v51 + 2);
    v138 = v53;
    v54 = *(v51 + 1);
    v135 = *v51;
    v136 = v54;
    v55 = v21;
    v56 = v48;
    v48(v49, v55);
    _ScrollLayout.contentOffset.getter();
    v58 = v108;
    if (v59 == v34 && v57 == v33)
    {
      AGGraphGetValue();
      if ((v60 & 1) == 0)
      {
        v61 = 0;
LABEL_21:
        (*(v58 + 8))(v47, v109);
        return v61;
      }
    }

LABEL_20:
    v124(v27, v47, v109);
    v82 = &v27[v50[19]];
    v83 = *(v82 + 5);
    v133 = *(v82 + 4);
    v134 = v83;
    v84 = *(v82 + 3);
    v131 = *(v82 + 2);
    v132 = v84;
    v85 = *(v82 + 1);
    v129 = *v82;
    v130 = v85;
    v56(v27, v50);
    v86 = _ScrollLayout.contentOffset.getter();
    v87 = v125;
    *(v125 + 4) = v88;
    *(v87 + 5) = v89;
    v128[0] = *(v87 + 2);
    MEMORY[0x1EEE9AC00](v86);
    v90 = v104;
    *(&v96 - 4) = v105;
    *(&v96 - 3) = v90;
    v91 = v106;
    *(&v96 - 4) = v107;
    *(&v96 - 3) = v91;
    *(&v96 - 2) = v47;
    *(&v96 - 1) = v92;
    v93 = type metadata accessor for Array();

    WitnessTable = swift_getWitnessTable();
    v61 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ScrollableLayoutViewAdaptor.updatedItems(), (&v96 - 10), v93, &type metadata for AnyDynamicItem, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v95);

    goto LABEL_21;
  }

  v62 = v125[1];
  v141 = *v125;
  v142 = v62;
  v143 = v125[2];
  ScrollableLayoutViewAdaptor.dataAndCount.getter(v122, v112);
  v115 = type metadata accessor for Array();
  Array.removeAll(keepingCapacity:)(1);
  v101 = v30;
  v96 = v40;
  v39(v27, v30, v109);
  v63 = *&v27[v21[20]];

  v99 = v27;
  v100 = v21;
  v97 = v44;
  v98 = v43;
  v44(v27, v21);
  v64 = v39;
  if (!MEMORY[0x18D00CDE0](v63, AssociatedTypeWitness))
  {
LABEL_19:

    (*(v103 + 8))(v122, v121);
    v27 = v99;
    v47 = v101;
    v64(v99, v101, v109);
    v50 = v100;
    v81 = *&v27[v100[17]];
    v56 = v97;
    v97(v27, v100);
    *(v125 + 6) = v81;
    v58 = v108;
    goto LABEL_20;
  }

  v65 = 0;
  v113 = v63;
  v114 = (v120 + 16);
  v66 = v110;
  v111 = (v120 + 32);
  v112 = v110 + 2;
  ++v110;
  v67 = (v66 + 2);
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v120 + 16))(v127, &v63[((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v65], AssociatedTypeWitness);
      v69 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    if (v102 != 8)
    {
      break;
    }

    v128[0] = result;
    (*v114)(v127, v128, AssociatedTypeWitness);
    swift_unknownObjectRelease();
    v69 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_13:
    v70 = v127;
    v126 = v69;
    v71 = dispatch thunk of Collection.subscript.read();
    v72 = *v67;
    v73 = v116;
    v74 = AssociatedTypeWitness;
    v75 = v118;
    (*v67)(v116);
    v71(v128, 0);
    v76 = *(TupleTypeMetadata2 + 48);
    v77 = v117;
    (*v111)(v117, v70, v74);
    (v72)(&v77[v76], v73, v75);
    v63 = v113;
    v64 = v124;
    Array.append(_:)();
    v78 = v75;
    AssociatedTypeWitness = v74;
    (*v110)(v73, v78);
    v79 = MEMORY[0x18D00CDE0](v63, v74);
    ++v65;
    if (v126 == v79)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in ScrollableLayoutViewAdaptor.updatedItems()@<X0>(void (*a1)(char *, int *)@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v160 = a9;
  v178 = a8;
  v169 = a6;
  v150 = a3;
  v176 = a2;
  v165 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v168 = AssociatedTypeWitness;
  v14 = type metadata accessor for Pair();
  v15 = *(a10 + 8);
  v202 = MEMORY[0x1E69E7688];
  v203 = v15;
  WitnessTable = swift_getWitnessTable();
  *&v195 = AssociatedTypeWitness;
  *(&v195 + 1) = v14;
  *&v196 = a10;
  *(&v196 + 1) = WitnessTable;
  v139 = type metadata accessor for AnyViewVisitor();
  v136 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v135 - v17;
  v181 = swift_getAssociatedTypeWitness();
  *&v195 = v181;
  *(&v195 + 1) = v14;
  v18 = v178;
  *&v196 = v178;
  v162 = WitnessTable;
  *(&v196 + 1) = WitnessTable;
  v19 = type metadata accessor for EquatableProxyView();
  v157 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v156 = &v135 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v158 = v19;
  v22 = v21;
  v171 = v21;
  v23 = type metadata accessor for ModifiedContent();
  v154 = *(v23 - 8);
  v155 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v153 = &v135 - v24;
  v25 = swift_getAssociatedTypeWitness();
  v147 = *(v25 - 8);
  v148 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v145 = &v135 - v26;
  v146 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v166 = &v135 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v149 = &v135 - v30;
  v152 = a4;
  *&v195 = a4;
  v167 = a5;
  *(&v195 + 1) = a5;
  *&v196 = v169;
  v173 = a7;
  *(&v196 + 1) = a7;
  v197 = v18;
  v170 = a10;
  *&v198 = a10;
  v175 = type metadata accessor for ScrollableLayoutState.Value();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v180 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v144 = &v135 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v142 = &v135 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v135 - v35;
  v172 = v14;
  v161 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v137 = &v135 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v179 = &v135 - v40;
  v41 = v168;
  v42 = v181;
  v43 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v135 - v44;
  v177 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v163 = &v135 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v135 - v49;
  v51 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v135 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v55);
  v58 = &v135 - v57;
  (*(v59 + 16))(v45, v165, v43, v56);
  v60 = *(v43 + 48);
  (*(v51 + 32))(v58, v45, v41);
  (*(v177 + 32))(v50, &v45[v60], v181);
  v61 = *(v180 + 16);
  v180 += 16;
  v141 = v61;
  v61(v36, v176, TupleTypeMetadata2);
  LODWORD(v45) = *&v36[v175[18]];
  v62 = *(v175 - 1);
  v63 = *(v62 + 8);
  v143 = v36;
  v164 = v62 + 8;
  v165 = v63;
  (v63)(v36);
  LODWORD(v195) = v45;
  v159 = v51;
  v64 = *(v51 + 16);
  v64(v54, v58, v41);
  Pair.init(_:_:)();
  if (v171 != MEMORY[0x1E697E108])
  {
    v163 = v50;
    v65 = v170;
    _convertToAnyHashable<A>(_:)();
    v66 = v141;
    v67 = v142;
    v68 = TupleTypeMetadata2;
    v141(v142, v176, TupleTypeMetadata2);
    v69 = v175;
    v70 = *&v67[v175[21]];

    v165(v67, v69);
    MEMORY[0x18D00C560](v186, v58, v70, v41, MEMORY[0x1E697DB68], v65);

    v140 = v58;
    if (v187)
    {
      static UnitPoint.topLeading.getter();
      _Placement.init(proposedSize:anchoring:at:)();
    }

    else
    {
      v188 = v186[0];
      v189 = v186[1];
      v190 = v186[2];
      v191 = v186[3];
    }

    v195 = v192;
    v196 = v193;
    v197 = v194;
    v198 = v188;
    v199 = v189;
    v200 = v190;
    v201 = v191;
    v86 = *v150;
    v87 = v150[2];
    v204[1] = v150[1];
    v204[2] = v87;
    v204[0] = v86;
    v184[0] = v152;
    v184[1] = v167;
    v184[2] = v169;
    v184[3] = v173;
    v184[4] = v178;
    v184[5] = v65;
    v88 = type metadata accessor for ScrollableLayoutViewAdaptor();
    v89 = *(v88 - 8);
    (*(v89 + 16))(v184, v204, v88);
    v90 = *(v88 + 24);
    Value = AGGraphGetValue();
    (*(*(v90 - 8) + 16))(v166, Value, v90);
    (*(v89 + 8))(v204, v88);
    v92 = v143;
    v93 = v176;
    v66(v143, v176, v68);
    v94 = v175;
    v95 = &v92[v175[19]];
    v96 = *(v95 + 5);
    v185[4] = *(v95 + 4);
    v185[5] = v96;
    v97 = *(v95 + 3);
    v185[2] = *(v95 + 2);
    v185[3] = v97;
    v98 = *(v95 + 1);
    v185[0] = *v95;
    v185[1] = v98;
    v99 = v165;
    v165(v92, v175);
    v100 = v144;
    v66(v144, v93, TupleTypeMetadata2);
    v102 = v147;
    v101 = v148;
    v103 = v145;
    (*(v147 + 16))(v145, v100, v148);
    v99(v100, v94);
    v104 = v149;
    v105 = v166;
    v106 = v167;
    (*(v173 + 56))(&v195, v185, v103, v167);
    (*(v102 + 8))(v103, v101);
    (*(v146 + 8))(v105, v106);
    v107 = v156;
    View.equatableProxy<A>(_:)(v179, v181, v172, v156);
    v108 = v153;
    v109 = v158;
    v110 = v171;
    MEMORY[0x18D00A570](v104, v158, v171, &protocol witness table for EquatableProxyView<A, B>);
    (*(v157 + 8))(v107, v109);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v182 = &protocol witness table for EquatableProxyView<A, B>;
    v183 = AssociatedConformanceWitness;
    v112 = v155;
    v113 = swift_getWitnessTable();
    v114 = v140;
    v115 = v168;
    v116 = specialized AnyDynamicItem.init<A, B>(_:id:)(v108, v140, v112, v168, v113);
    v180 = v117;
    v119 = v118;
    LOBYTE(v109) = v120;
    v83 = v116;
    (*(v154 + 8))(v108, v112);
    (*(v151 + 8))(v104, v110);
    outlined destroy of _ScrollableLayoutItem(&v195);
    (*(v161 + 8))(v179, v172);
    (*(v177 + 8))(v163, v181);
    result = (*(v159 + 8))(v114, v115);
    v85 = v160;
    *v160 = v180;
    v85[1] = v119;
    v121 = v109 & 1;
    goto LABEL_10;
  }

  v71 = v58;
  v72 = v181;
  (*(v177 + 16))(v163, v50, v181);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v122 = v156;
    v123 = v179;
    v124 = v172;
    View.equatableProxy<A>(_:)(v179, v72, v172, v156);
    v125 = v71;
    v126 = v71;
    v127 = v158;
    v128 = v41;
    v129 = specialized AnyDynamicItem.init<A, B>(_:id:)(v122, v126, v158, v41, &protocol witness table for EquatableProxyView<A, B>);
    v180 = v130;
    v178 = v131;
    v133 = v132;
    v83 = v129;
    (*(v157 + 8))(v122, v127);
    (*(v161 + 8))(v123, v124);
    (*(v177 + 8))(v50, v181);
    result = (*(v159 + 8))(v125, v128);
    v85 = v160;
    v134 = v178;
    *v160 = v180;
    v85[1] = v134;
    v121 = v133 & 1;
LABEL_10:
    *(v85 + 16) = v121;
    goto LABEL_11;
  }

  v163 = v50;
  v73 = v71;
  v140 = v71;
  v74 = v41;
  v64(v54, v73, v41);
  v75 = v161;
  v76 = v137;
  v77 = v172;
  (*(v161 + 16))(v137, v179, v172);
  v78 = v138;
  AnyViewVisitor.init(id:token:item:)(v54, v76, 0, 0, 0, 0, v74, v77, v138);
  v79 = v139;
  swift_getWitnessTable();
  result = AnyView.visitContent<A>(_:)();
  v81 = v78 + *(v79 + 56);
  v82 = *v81;
  if (*v81)
  {
    v83 = *(v81 + 24);
    LODWORD(v180) = *(v81 + 16);
    v84 = *(v81 + 8);

    (*(v136 + 8))(v78, v79);
    (*(v75 + 8))(v179, v77);
    (*(v177 + 8))(v163, v181);
    result = (*(v159 + 8))(v140, v74);
    v85 = v160;
    *v160 = v82;
    v85[1] = v84;
    *(v85 + 16) = v180 & 1;
LABEL_11:
    *(v85 + 3) = v83;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t AnyViewVisitor.init(id:token:item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v16 = type metadata accessor for AnyViewVisitor();
  result = (*(*(a8 - 8) + 32))(a9 + *(v16 + 52), a2, a8);
  v18 = (a9 + *(v16 + 56));
  *v18 = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  return result;
}

uint64_t ScrollableLayoutViewAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5, __int128 *a6, unsigned int a7, void (*a8)(__int128 *), uint64_t a9, void *a10)
{
  v74 = *MEMORY[0x1E69E9840];
  v11 = a6[3];
  v12 = a6[1];
  v70 = a6[2];
  v71 = v11;
  v13 = a6[3];
  v72 = a6[4];
  v14 = a6[1];
  v68 = *a6;
  v69 = v14;
  v64 = v70;
  v65 = v13;
  v66 = a6[4];
  v73 = *(a6 + 20);
  v67 = *(a6 + 20);
  v62 = v68;
  v63 = v12;
  v34 = _ViewInputs.layoutDirection.getter();
  v15 = a10[2];
  v41 = a10[3];
  v17 = a10[4];
  v16 = a10[5];
  v18 = a10[6];
  v19 = a10[7];
  v32 = v16;
  *&v56 = __PAIR64__(a5, a7);
  v38 = a5;
  swift_getAssociatedTypeWitness();
  v49[2] = type metadata accessor for Optional();
  *&v62 = v15;
  *(&v62 + 1) = v41;
  *&v63 = v17;
  *(&v63 + 1) = v16;
  *&v64 = v18;
  *(&v64 + 1) = v19;
  v50 = type metadata accessor for ScrollableItemIdentifier();
  WitnessTable = swift_getWitnessTable();
  v20 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v56, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v49, v50, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
  LODWORD(v16) = v62;
  v22 = *(v35 + 8);
  v64 = v70;
  v65 = v71;
  v66 = v72;
  v67 = v73;
  v62 = v68;
  v63 = v69;
  v23 = _ViewInputs.position.getter();
  v24 = *MEMORY[0x1E698D3F8];
  *&v56 = __PAIR64__(v22, v16);
  *(&v56 + 1) = __PAIR64__(v23, v34);
  *&v57 = __PAIR64__(v24, DWORD2(v72));
  *&v62 = v15;
  *(&v62 + 1) = v41;
  *&v63 = v17;
  *(&v63 + 1) = v32;
  *&v64 = v18;
  *(&v64 + 1) = v19;
  v47 = type metadata accessor for ScrollableItemGeometry();
  v48 = swift_getWitnessTable();
  type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for Attribute<ViewGeometry>, MEMORY[0x1E697DFB8], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v56, closure #1 in Attribute.init<A>(_:)partial apply, &v46, v47, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
  v27 = v62;
  v64 = v70;
  v65 = v71;
  v66 = v72;
  v67 = v73;
  v62 = v68;
  v63 = v69;
  outlined init with copy of _ViewInputs(&v68, &v56);
  a8(&v62);
  if ((BYTE4(v70) & 0x20) != 0)
  {
    Attribute<A>.size()();
    _ViewInputs.size.setter();
    Attribute<A>.origin()();
    _ViewInputs.position.setter();
    DWORD1(v64) |= 2u;
  }

  v52[2] = v64;
  v52[3] = v65;
  v52[4] = v66;
  v53 = v67;
  v52[0] = v62;
  v52[1] = v63;
  v58 = v64;
  v59 = v65;
  v60 = v66;
  v61 = v67;
  v56 = v62;
  v57 = v63;
  outlined init with copy of _ViewInputs(v52, v54);
  v28 = swift_getWitnessTable();
  AnyDynamicItem.makeView<A>(uniqueId:container:inputs:adaptor:)(v38, a7, &v56, a10, a2, a3, a4 & 1, a10, v28);
  v54[2] = v58;
  v54[3] = v59;
  v54[4] = v60;
  v55 = v61;
  v54[0] = v56;
  v54[1] = v57;
  v29 = outlined destroy of _ViewInputs(v54);
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  AGGraphMutateAttribute();
  v58 = v64;
  v59 = v65;
  v60 = v66;
  v61 = v67;
  v56 = v62;
  v57 = v63;
  outlined destroy of _ViewInputs(&v56);
  *a1 = v43;
  *(a1 + 8) = v44;
  *(a1 + 12) = v45;
  return v27;
}

uint64_t closure #1 in ScrollableLayoutViewAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:)(uint64_t a1)
{
  v2 = _ViewOutputs.layoutComputer.getter();
  result = type metadata accessor for ScrollableItemGeometry();
  if ((v2 & 0x100000000) != 0)
  {
    v4 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v4 = v2;
  }

  *(a1 + 20) = v4;
  return result;
}

uint64_t protocol witness for DynamicContainerAdaptor.updatedItems() in conformance ScrollableLayoutViewAdaptor<A, B>@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ScrollableLayoutViewAdaptor.updatedItems()(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for DynamicContainerAdaptor.foreachItem(items:_:) in conformance ScrollableLayoutViewAdaptor<A, B>(uint64_t result, void (*a2)(void *))
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v5 = 0;
    v6 = (v2 + 56);
    while (v5 < *(v2 + 16))
    {
      ++v5;
      v7 = *v6;
      v8 = *(v6 - 8);
      v9 = *(v6 - 2);
      v10[0] = *(v6 - 3);
      v10[1] = v9;
      v11 = v8;
      v12 = v7;

      a2(v10);

      v6 += 4;
      if (v3 == v5)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static DynamicContainerAdaptor.containsItem(_:_:) in conformance ScrollableLayoutViewAdaptor<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type [AnyDynamicItem] and conformance [A]();

  return MEMORY[0x1EEDE1D68](a1, a2, a3, a4, v8);
}

double ScrollableLayoutState.Value.init(state:stateSeed:contentSeed:scrollLayout:identifiers:placements:validRect:contentSize:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>)
{
  v33 = a4[2];
  v34 = a4[3];
  v35 = a4[4];
  v36 = a4[5];
  v31 = *a4;
  v32 = a4[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a7, a1, AssociatedTypeWitness);
  v24 = type metadata accessor for ScrollableLayoutState.Value();
  *(a7 + v24[17]) = a2;
  *(a7 + v24[18]) = a3;
  v25 = (a7 + v24[19]);
  v25[2] = v33;
  v25[3] = v34;
  v25[4] = v35;
  v25[5] = v36;
  result = *&v31;
  *v25 = v31;
  v25[1] = v32;
  *(a7 + v24[20]) = a5;
  *(a7 + v24[21]) = a6;
  v27 = (a7 + v24[22]);
  *v27 = a8;
  v27[1] = a9;
  v27[2] = a10;
  v27[3] = a11;
  v28 = (a7 + v24[23]);
  *v28 = a12;
  v28[1] = a13;
  return result;
}

uint64_t protocol witness for DynamicContainerAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:) in conformance ScrollableLayoutViewAdaptor<A, B>(uint64_t a1, _DWORD *a2, uint64_t a3, unsigned int a4, __int128 *a5, unsigned int a6, void (*a7)(__int128 *), uint64_t a8, void *a9)
{
  result = ScrollableLayoutViewAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:)(a1, *a3, *(a3 + 8), *(a3 + 16), a4, a5, a6, a7, a8, a9);
  *a2 = result;
  return result;
}

uint64_t ScrollableLayoutState.updateValue()(int *a1)
{
  v2 = v1;
  v221 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 5);
  v5 = *(a1 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v158 = *(AssociatedTypeWitness - 8);
  v159 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v161 = &v145 - v7;
  v177 = a1;
  v8 = *(a1 + 4);
  v9 = *(a1 + 6);
  v10 = *(a1 + 7);
  v12 = *(a1 + 2);
  *&v11 = v12;
  *(&v11 + 1) = v5;
  v179 = v5;
  v180 = v10;
  *&v13 = v8;
  v171 = v4;
  *(&v13 + 1) = v4;
  v183 = v13;
  v184 = v11;
  v211 = v11;
  v212 = v13;
  v176 = v9;
  *&v213 = v9;
  *(&v213 + 1) = v10;
  v172 = type metadata accessor for ScrollableLayoutState.Value();
  v163 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v162 = &v145 - v14;
  v160 = v8;
  v187 = swift_getAssociatedTypeWitness();
  v145 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v157 = &v145 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v156 = &v145 - v17;
  v178 = v12;
  v185 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v154 = &v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v155 = &v145 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v153 = &v145 - v23;
  v181 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v182 = &v145 - v26;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v164 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v167 = &v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v145 - v30;
  v32 = swift_getTupleTypeMetadata2();
  v33 = v2;
  v34 = swift_getTupleTypeMetadata2();
  v173 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v145 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v145 - v38;
  v41 = *(v40 + 48);
  Value = AGGraphGetValue();
  LOBYTE(v8) = v43;
  (*(*(v32 - 8) + 16))(v39, Value, v32);
  v168 = (v8 & 1);
  v39[v41] = v8 & 1;
  v165 = TupleTypeMetadata2;
  v44 = *(TupleTypeMetadata2 + 48);
  v45 = v179;
  v46 = AGGraphGetValue();
  LOBYTE(v8) = v47;
  v48 = v45;
  v49 = *(v45 - 8);
  (*(v49 + 16))(v31, v46, v48);
  v50 = v8 & 1;
  v51 = v39;
  v174 = v31;
  v31[v44] = v50;
  AGGraphGetValue();

  v52 = _ScrollLayout.init(_:)(&v189);
  v169 = *(v173 + 16);
  v170 = v173 + 16;
  v169(v36, v39, v34, v52);
  v175 = v34;
  LODWORD(v44) = v36[*(v34 + 48)];
  v53 = *(v185 + 8);
  v150 = v36;
  v151 = v53;
  v54 = v36;
  v55 = v177;
  v152 = v185 + 8;
  v53(v54, v178);
  if (v44 == 1)
  {
    ++*(v33 + v55[22]);
  }

  v56 = *&v39[*(v32 + 48)];
  v57 = v172;
  if (v168 || (v58 = v165, v59 = v167, (*(v164 + 16))(v167, v174, v165), v60 = v59[*(v58 + 48)], (*(v49 + 8))(v59, v179), (v60 & 1) != 0) || (v61 = (v33 + v55[25]), v63 = *v61, v62 = v61[1], v213 = v191, v214 = v192, v215 = v193, v216 = v194, v211 = v189, v212 = v190, _ScrollLayout.size.getter(), v63 != v65) || v62 != v64 || (v66 = (v33 + v55[26]), v68 = *v66, v67 = v66[1], v69 = v66[2], v70 = v66[3], v213 = v191, v214 = v192, v215 = v193, v216 = v194, v211 = v189, v212 = v190, _ScrollLayout.visibleRect.getter(), v223.origin.x = v71, v223.origin.y = v72, v223.size.width = v73, v223.size.height = v74, v222.origin.x = v68, v222.origin.y = v67, v222.size.width = v69, v222.size.height = v70, !CGRectContainsRect(v222, v223)))
  {
    v75 = (v33 + v55[22]);
    v148 = *v75;
    v149 = v75;
    v167 = *(v75 + 1);
    v197 = v191;
    v198 = v192;
    v199 = v193;
    v200 = v194;
    v195 = v189;
    v196 = v190;

    _ScrollLayout.size.getter();
    v77 = v76;
    v79 = v78;
    v210[0] = v191;
    v210[1] = v192;
    v210[2] = v193;
    v210[3] = v194;
    v209[0] = v189;
    v209[1] = v190;
    _ScrollLayout.visibleRect.getter();
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = v150;
    v168 = v51;
    (v169)(v150, v51, v175);
    v89 = v185;
    v166 = *(v185 + 32);
    v90 = v182;
    v91 = v178;
    v166(v182, v88, v178);
    v147 = *(v89 + 16);
    v92 = v153;
    v147(v153, v90, v91);
    v93 = *(v89 + 80);
    v185 = v56;
    v94 = swift_allocObject();
    v95 = v183;
    *(v94 + 16) = v184;
    *(v94 + 32) = v95;
    v96 = v180;
    *(v94 + 48) = v176;
    *(v94 + 56) = v96;
    v97 = v166;
    v166((v94 + ((v93 + 64) & ~v93)), v92, v91);
    v98 = *(v33 + 32);
    v146 = *(v33 + 24);
    v153 = v98;
    v99 = v33;
    v186 = v33;
    v100 = (v93 + 96) & ~v93;
    v101 = *(v99 + 16);
    v102 = *(v99 + 40);
    (v169)(v88, v168, v175);
    v103 = v155;
    v97(v155, v88, v91);
    v104 = v154;
    v147(v154, v103, v91);
    v105 = swift_allocObject();
    v106 = v183;
    *(v105 + 16) = v184;
    *(v105 + 32) = v106;
    v107 = v180;
    *(v105 + 48) = v176;
    *(v105 + 56) = v107;
    *(v105 + 64) = v101;
    v108 = v146;
    v109 = v153;
    *(v105 + 72) = v146;
    *(v105 + 80) = v109;
    *(v105 + 88) = v102;
    v166((v105 + v100), v104, v91);
    *(&v217 + 1) = MEMORY[0x1E69E7CC0];
    v218 = 0uLL;
    v110 = v108;

    v111 = v151;
    v151(v103, v91);
    v111(v182, v91);
    v112 = *(MEMORY[0x1E695F050] + 16);
    v219 = *MEMORY[0x1E695F050];
    v220 = v112;
    LODWORD(v211) = v148;
    *(&v211 + 1) = v167;
    *&v212 = v77;
    *(&v212 + 1) = v79;
    *&v213 = v81;
    *(&v213 + 1) = v83;
    *&v214 = v85;
    *(&v214 + 1) = v87;
    *&v215 = v185;
    *(&v215 + 1) = partial apply for closure #1 in ScrollableLayoutState.updateValue();
    *&v216 = v94;
    *(&v216 + 1) = partial apply for closure #2 in ScrollableLayoutState.updateValue();
    *&v217 = v105;
    v113 = v177;
    (*(v171 + 48))(v186 + v177[20], &v211, v179);
    v114 = v113[23];
    v115 = type metadata accessor for Array();
    v185 = v114;
    *&v184 = v115;
    Array.removeAll(keepingCapacity:)(1);
    v116 = type metadata accessor for Dictionary();
    Dictionary.removeAll(keepingCapacity:)(1);
    v117 = *(*(&v217 + 1) + 16);
    v118 = v156;
    v119 = v157;
    if (v117)
    {
      v120 = *(&v217 + 1) + 32;
      v182 = v116;
      *&v183 = v145 + 16;
      v181 = (v145 + 8);
      v121 = (v145 + 16);
      do
      {
        outlined init with copy of _ScrollableLayoutItem(v120, v209);
        AnyHashable.base.getter();
        swift_dynamicCast();
        v122 = *v121;
        (*v121)(v119, v118, v187);
        Array.append(_:)();
        v122(v119, v118, v187);
        v123 = v187;
        v205 = *(v210 + 8);
        v206 = *(&v210[1] + 8);
        v207 = *(&v210[2] + 8);
        v208 = *(&v210[3] + 8);
        outlined destroy of _ScrollableLayoutItem(v209);
        v188 = 0;
        v195 = v205;
        v196 = v206;
        v197 = v207;
        v198 = v208;
        LOBYTE(v199) = 0;
        Dictionary.subscript.setter();
        (*v181)(v118, v123);
        v120 += 104;
        --v117;
      }

      while (v117);
    }

    v55 = v177;
    v33 = v186;
    ++*(v186 + v177[21]);
    v124 = v211;
    v125 = *(&v211 + 1);

    v126 = v149;
    *v149 = v124;
    *(v126 + 1) = v125;
    v127 = v211;
    *(v33 + v55[25]) = v212;
    v67 = *(&v219 + 1);
    v70 = *(&v220 + 1);
    *&v69 = v220;
    v128 = v33 + v55[26];
    v68 = *&v219;
    v129 = *(&v218 + 1);
    *v128 = v219;
    *(v128 + 8) = v67;
    *(v128 + 16) = __PAIR128__(*&v70, *&v69);
    v130 = v218;
    v195 = v127;
    v196 = v212;
    v199 = v215;
    v200 = v216;
    v197 = v213;
    v198 = v214;
    v203 = v219;
    v204 = v220;
    v201 = v217;
    v202 = v218;
    outlined destroy of _ScrollableLayoutProxy(&v195);
    v131 = (v33 + v55[27]);
    *v131 = v130;
    v131[1] = v129;
    v57 = v172;
    v51 = v168;
  }

  v132 = v161;
  (*(v158 + 16))(v161, v33 + v55[20], v159);
  v133 = *(v33 + v55[21]);
  v134 = *(v33 + v55[22]);
  v135 = *(v33 + v55[23]);
  v136 = *(v33 + v55[24]);
  v137 = (v33 + v55[27]);
  v138 = *v137;
  v139 = v137[1];
  v144[1] = v171;
  v144[0] = v160;
  v140 = v162;
  ScrollableLayoutState.Value.init(state:stateSeed:contentSeed:scrollLayout:identifiers:placements:validRect:contentSize:)(v132, v133, v134, &v189, v135, v136, v162, v68, v67, v69, v70, v138, v139);
  MEMORY[0x1EEE9AC00](v141);
  v144[2] = v55;
  v144[3] = swift_getWitnessTable();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v140, _s14AttributeGraph12StatefulRulePAAE5value5ValueQzvsySPyAFGXEfU_TA_0, v144, v57, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v142);
  (*(v163 + 8))(v140, v57);
  (*(v164 + 8))(v174, v165);
  return (*(v173 + 8))(v51, v175);
}

uint64_t closure #1 in ScrollableLayoutState.updateValue()()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v5 - v2;
  dispatch thunk of Collection.startIndex.getter();
  Collection.formIndex(_:offsetBy:)();
  _convertToAnyHashable<A>(_:)();
  return (*(v1 + 8))(v3, AssociatedTypeWitness);
}

double closure #2 in ScrollableLayoutState.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11)
{
  v31 = a8;
  v27 = a6;
  v30 = a11;
  v29 = a10;
  v28 = a9;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v27 - v14;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v27 - v21;
  AnyHashable.base.getter();
  swift_dynamicCast();
  _ProposedSize.init(_:)();
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v38 = v42;
  (*(v17 + 16))(v19, v22, v16);
  v23 = dispatch thunk of Collection.subscript.read();
  (*(v13 + 16))(v15);
  v23(v32, 0);
  v24 = *(v17 + 8);
  v24(v19, v16);
  v32[0] = a7;
  v32[1] = v31;
  v32[2] = v28;
  v33 = v29;
  v34 = v30;
  type metadata accessor for ScrollableLayoutState.TemplateView();
  v25 = ScrollableLayoutState.TemplateView.sizeThatFits(_:content:)(&v35, v15);
  (*(v13 + 8))(v15, AssociatedTypeWitness);
  v24(v22, v16);
  return v25;
}

double ScrollableLayoutState.TemplateView.sizeThatFits(_:content:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(v2 + 8);
  AGGraphClearUpdate();
  LOBYTE(v7) = v3;
  closure #1 in ScrollableLayoutState.TemplateView.sizeThatFits(_:content:)(v4, a2, &v7);
  AGGraphSetUpdate();
  return v7;
}

uint64_t closure #1 in ScrollableLayoutState.TemplateView.sizeThatFits(_:content:)@<X0>(void *a1@<X1>, uint64_t a2@<X4>, void *a3@<X8>)
{
  if (*AGGraphGetValue() == -1)
  {
    __break(1u);
  }

  AGGraphSetValue();
  v6 = a1;

  type metadata accessor for ScrollableLayoutState.TemplateView();
  specialized ScrollableLayoutState.TemplateView.view.setter(a2);

  if ((_ViewOutputs.layoutComputer.getter() & 0x100000000) != 0)
  {
    static LayoutComputer.defaultValue.getter();
  }

  else
  {
    AGGraphGetValue();
  }

  LayoutComputer.sizeThatFits(_:)();
  v8 = v7;
  v10 = v9;

  *a3 = v8;
  a3[1] = v10;
  return result;
}

uint64_t ScrollableItemIdentifier.info.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 32);
  v5 = *(Value + 40);
  v6 = *(Value + 44);
  *a1 = *Value;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 44) = v6;
}

uint64_t ScrollableItemIdentifier.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = HIDWORD(a1);
  ScrollableItemIdentifier.info.getter(v14);
  v4 = v14[1];

  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);

    ScrollableItemIdentifier.info.getter(v14);
    v8 = v14[0];

    if ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x18D00E9C0](v7, v8);
      goto LABEL_7;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

LABEL_7:

      type metadata accessor for ScrollableLayoutViewAdaptor();
      swift_getWitnessTable();
      DynamicContainer._ItemInfo.item.getter();

      (*(*v14[0] + 88))(v14, v10);
      AnyHashable.base.getter();

      outlined destroy of AnyHashable(v14);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      swift_dynamicCast();
      return (*(*(AssociatedTypeWitness - 8) + 56))(a2, 0, 1, AssociatedTypeWitness);
    }

    __break(1u);
  }

  else
  {

    v12 = swift_getAssociatedTypeWitness();
    v13 = *(*(v12 - 8) + 56);

    return v13(a2, 1, 1, v12);
  }

  return result;
}

uint64_t ScrollableItemGeometry.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t ScrollableItemGeometry.state.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ScrollableLayoutState.Value();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance ScrollableItemIdentifier<A, B>@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ScrollableItemGeometry.value.getter@<X0>(uint64_t a1@<X0>, float64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v46 = a8;
  v45 = a3;
  v47.f64[0] = a2;
  v44 = a1;
  v43 = a9;
  *&v53 = a4;
  *(&v53 + 1) = a5;
  *&v54 = a6;
  *(&v54 + 1) = a7;
  *&v55 = a8;
  *(&v55 + 1) = a10;
  v41 = type metadata accessor for ScrollableLayoutState.Value();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v36 = &v35 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = type metadata accessor for Optional();
  v14 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v16 = &v35 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - v19;
  v37 = a10;
  v38 = a5;
  v39 = a7;
  ScrollableItemGeometry.identifier.getter(v16);
  v21 = *(v17 + 48);
  v42 = AssociatedTypeWitness;
  if (v21(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v14 + 8))(v16, v35);
LABEL_5:
    static LayoutComputer.defaultValue.getter();
    v27 = v58;
    static ViewSize.zero.getter();
    v28 = v53;
    v29 = v54;
    v53 = v27;
    v54 = v28;
    v55 = v29;
    return ViewGeometry.init(dimensions:)();
  }

  v22 = v42;
  (*(v17 + 32))(v20, v16, v42);
  v23 = v37;
  v24 = v36;
  v25 = HIDWORD(v45);
  ScrollableItemGeometry.state.getter(v36);
  v26 = v41;
  MEMORY[0x18D00C560](&v53, v20, *(v24 + *(v41 + 84)), v22, MEMORY[0x1E697DB68], v23);
  v58 = v53;
  v59 = v54;
  v60 = v55;
  v61 = v56;
  if (v57)
  {
    (*(v17 + 8))(v20, v42);
    (*(v40 + 8))(v24, v26);
    goto LABEL_5;
  }

  (*(v40 + 8))(v24, v26);
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v53) = *MEMORY[0x1E698D3F8] == v25;
    LayoutProxy.init(context:layoutComputer:)();
    v51 = v53;
    v52 = DWORD2(v53);
    v53 = v58;
    v54 = v59;
    v55 = v60;
    v56 = v61;
    Value = AGGraphGetValue();
    v32 = Value[1];
    v49 = *Value;
    v50 = v32;
    MEMORY[0x18D00B390]();
    v48 = *AGGraphGetValue();
    LayoutProxy.finallyPlaced(at:in:layoutDirection:)();
    type metadata accessor for CGPoint(0);
    v47 = *AGGraphGetValue();
    v33 = ViewGeometry.origin.modify();
    *v34 = vaddq_f64(v47, *v34);
    v33(&v53, 0);
    return (*(v17 + 8))(v20, v42);
  }

  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance ScrollableItemGeometry<A, B>@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t protocol witness for StatefulRule.updateValue() in conformance ScrollableItemLayoutComputer()
{
  type metadata accessor for CGSize(0);
  AGGraphGetValue();
  lazy protocol witness table accessor for type ScrollableItemLayoutComputer._LayoutEngine and conformance ScrollableItemLayoutComputer._LayoutEngine();
  return StatefulRule<>.update<A>(to:)();
}

_DWORD *protocol witness for Rule.value.getter in conformance TemplateViewPhase@<X0>(_DWORD *a1@<X8>)
{
  v2 = *AGGraphGetValue();
  result = AGGraphGetValue();
  *a1 = v2 + 2 * *result;
  return result;
}

uint64_t AnyViewVisitor.visit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a2 + 24);
  v9 = *(a2 + 40);
  v24[0] = a3;
  v24[1] = v8;
  v24[2] = a4;
  v24[3] = v9;
  v10 = type metadata accessor for EquatableProxyView();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - v12;
  View.equatableProxy<A>(_:)(v4 + *(a2 + 52), a3, v8, v24 - v12);
  v14 = specialized AnyDynamicItem.init<A, B>(_:id:)(v13, v4, v10, *(a2 + 16), &protocol witness table for EquatableProxyView<A, B>);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v14;
  (*(v11 + 8))(v13, v10);
  v22 = (v5 + *(a2 + 56));

  *v22 = v16;
  *(v22 + 1) = v18;
  *(v22 + 2) = v20 & 1;
  v22[3] = v21;
  return result;
}

uint64_t specialized ScrollActionDispatcher.updateValue()()
{
  v1 = v0;
  v2 = *AGGraphGetValue() >> 1;
  if (v2 != *(v0 + 32))
  {
    *(v0 + 32) = v2;
    *(v0 + 20) = 0xFFFFFFFFLL;
    *(v0 + 28) = 0;
    *(v0 + 36) = 5;
  }

  type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for [ScrollPhaseState], MEMORY[0x1E697EB00], MEMORY[0x1E69E62F8]);
  v3 = *AGGraphGetValue();
  v4 = *(v1 + 12);
  v5 = *MEMORY[0x1E698D3F8];

  if (v4 != v5 && *AGGraphGetValue() == 1)
  {
    v6 = *(v3 + 16);
    if (v6)
    {
      v7 = v3 + 24 * v6;
      v8 = (v7 + 8);
      v9 = (v7 + 16);
      v10 = (v7 + 24);
      goto LABEL_13;
    }

LABEL_21:

    goto LABEL_22;
  }

  v11 = *(v3 + 16);
  if (v11 >= 2)
  {
    v12 = static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v34[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x800000018CD3F060, v34);
      _os_log_impl(&dword_18BD4A000, v13, v12, "%s: Multiple scroll views were found. Picking the first one to compare.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x18D0110E0](v15, -1, -1);
      MEMORY[0x18D0110E0](v14, -1, -1);
    }

    v11 = *(v3 + 16);
  }

  if (!v11)
  {
    goto LABEL_21;
  }

  v8 = (v3 + 32);
  v9 = (v3 + 40);
  v10 = (v3 + 48);
LABEL_13:
  v16 = *v9;
  v17 = *v8;
  v18 = *v10;

  if (v17 == 5)
  {
LABEL_22:
    v25 = 5;
    goto LABEL_23;
  }

  LOBYTE(v34[0]) = v17;
  v34[1] = v16;
  v34[2] = v18;
  MEMORY[0x1EEE9AC00](result);
  type metadata accessor for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>(0, &lazy cache variable for type metadata for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>, lazy protocol witness table accessor for type OnScrollPhaseChangeModifier.PhaseActionProvider and conformance OnScrollPhaseChangeModifier.PhaseActionProvider);
  v21 = v20;
  type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for ScrollPhase?, MEMORY[0x1E697DD18], MEMORY[0x1E69E6720]);
  v23 = v22;
  v24 = lazy protocol witness table accessor for type ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider> and conformance ScrollActionDispatcher<A>();
  MEMORY[0x18D000B40](v21, v23, v24);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  v25 = v35;
  if (v35 != 5)
  {
    v26 = *(v1 + 36);
    if (v35 != v26)
    {
      MEMORY[0x1EEE9AC00](result);
      result = UpdateCycleDetector.dispatch(label:isDebug:)();
      if (result)
      {
        AGGraphClearUpdate();
        if (v26 == 5)
        {
          v27 = v25;
        }

        else
        {
          v27 = v26;
        }

        Value = AGGraphGetValue();
        v30 = *Value;
        v29 = Value[1];
        v31 = swift_allocObject();
        *(v31 + 16) = v30;
        *(v31 + 24) = v29;
        *(v31 + 32) = v27;
        *(v31 + 33) = v25;

        AGGraphSetUpdate();
        LOBYTE(v34[0]) = 17;
        Strong = swift_weakLoadStrong();
        v33 = swift_allocObject();
        v33[2] = partial apply for closure #1 in OnScrollPhaseChangeModifier.PhaseActionProvider.makeAction(oldOutput:newOutput:);
        v33[3] = v31;
        v33[4] = Strong;

        static Update.enqueueAction(reason:_:)();
      }
    }
  }

LABEL_23:
  *(v1 + 36) = v25;
  return result;
}

{
  v1 = v0;
  v2 = *AGGraphGetValue() >> 1;
  if (v2 != v0[9])
  {
    v0[9] = v2;
    *(v0 + 3) = 0xFFFFFFFFLL;
    *(v0 + 32) = 0;
    *(v0 + 6) = 0;
    *(v0 + 7) = 0;
    *(v0 + 5) = 5;
  }

  type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for [ScrollPhaseState], MEMORY[0x1E697EB00], MEMORY[0x1E69E62F8]);
  v3 = *AGGraphGetValue();
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[4];
  v7 = *MEMORY[0x1E698D3F8];

  if (v6 != v7 && *AGGraphGetValue() == 1)
  {
    v8 = *(v3 + 16);
    if (v8)
    {
      v9 = v3 + 24 * v8;
      v10 = (v9 + 8);
      v11 = (v9 + 16);
      v12 = (v9 + 24);
      goto LABEL_13;
    }

LABEL_21:

    v20 = 0;
    v18 = 0;
    goto LABEL_22;
  }

  v13 = *(v3 + 16);
  if (v13 >= 2)
  {
    v14 = static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v43 = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x800000018CD3F080, v43);
      _os_log_impl(&dword_18BD4A000, v15, v14, "%s: Multiple scroll views were found. Picking the first one to compare.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x18D0110E0](v17, -1, -1);
      MEMORY[0x18D0110E0](v16, -1, -1);
    }

    v13 = *(v3 + 16);
  }

  if (!v13)
  {
    goto LABEL_21;
  }

  v10 = (v3 + 32);
  v11 = (v3 + 40);
  v12 = (v3 + 48);
LABEL_13:
  v18 = *v11;
  v19 = *v10;
  v20 = *v12;

  if (v19 == 5)
  {
LABEL_22:
    *v43 = 5;
    *&v43[8] = v18;
    *&v43[16] = v20;
LABEL_23:
    v37 = *v43;
    v36 = *&v43[16];
    goto LABEL_24;
  }

  LOBYTE(v41) = v19;
  *&v42 = v18;
  *(&v42 + 1) = v20;
  v39[0] = v4;
  v39[1] = v5;
  MEMORY[0x1EEE9AC00](result);
  type metadata accessor for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>(0, &lazy cache variable for type metadata for ScrollActionDispatcher<OnScrollPhaseContextChangeModifier.PhaseContextActionProvider>, lazy protocol witness table accessor for type OnScrollPhaseContextChangeModifier.PhaseContextActionProvider and conformance OnScrollPhaseContextChangeModifier.PhaseContextActionProvider);
  v23 = v22;
  type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for ScrollPhaseState?, MEMORY[0x1E697EB00], MEMORY[0x1E69E6720]);
  v25 = v24;
  v26 = lazy protocol witness table accessor for type ScrollActionDispatcher<OnScrollPhaseContextChangeModifier.PhaseContextActionProvider> and conformance ScrollActionDispatcher<A>();
  MEMORY[0x18D000B40](v23, v25, v26);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  v27 = v43[0];
  if (v43[0] == 5)
  {
    goto LABEL_23;
  }

  v28 = *(v1 + 40);
  v29 = *(v1 + 3);
  v41 = *v43;
  v38 = *&v43[8];
  v42 = *&v43[8];
  if (v28 != 5)
  {
    LOBYTE(v39[0]) = v28;
    v40 = v29;
    result = static ScrollPhaseState.== infix(_:_:)();
    if (result)
    {
      goto LABEL_23;
    }
  }

  MEMORY[0x1EEE9AC00](result);
  result = UpdateCycleDetector.dispatch(label:isDebug:)();
  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  AGGraphClearUpdate();
  LOBYTE(v41) = v27;
  v30 = v38;
  v42 = v38;
  if (*(v1 + 40) != 5)
  {
    v30 = *(v1 + 3);
    v27 = *(v1 + 40);
  }

  LOBYTE(v39[0]) = v27;
  v40 = v30;
  v31 = OnScrollPhaseContextChangeModifier.PhaseContextActionProvider.makeAction(oldOutput:newOutput:)(v39, &v41);
  v33 = v32;
  AGGraphSetUpdate();
  LOBYTE(v41) = 17;
  Strong = swift_weakLoadStrong();
  v35 = swift_allocObject();
  v35[2] = v31;
  v35[3] = v33;
  v35[4] = Strong;

  static Update.enqueueAction(reason:_:)();

  v36 = *&v43[16];
  v37 = *v43;
LABEL_24:
  *(v1 + 10) = v37;
  *(v1 + 7) = v36;
  return result;
}

uint64_t specialized SearchEnvironmentTransformModifier.UpdateEnvironment.updateValue()()
{
  v1 = v0;
  v69 = *MEMORY[0x1E69E9840];
  type metadata accessor for SearchEnvironmentStorage.AllProperties?(0, &lazy cache variable for type metadata for SearchEnvironmentStorage.AllProperties?, type metadata accessor for SearchEnvironmentStorage.AllProperties, MEMORY[0x1E69E6720]);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v51 - v4;
  v6 = type metadata accessor for SearchEnvironmentStorage.AllProperties(0);
  v63 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v55 = v7;
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  Value = AGGraphGetValue();
  v59 = v12;
  v14 = Value[1];
  *&v68 = *Value;
  v13 = v68;
  *(&v68 + 1) = v14;
  v15 = type metadata accessor for SearchSelectionModifier.Transform(0);

  v54 = v15;
  AGGraphGetValue();
  v52 = v16;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
  v17 = lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>();
  v61 = v13;
  v62 = v10;
  v60 = v14;
  v57 = v17;
  v58 = v6;
  if (v14)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    v18 = PropertyList.subscript.getter();
  }

  v20 = *(v0 + 8);
  v21 = *(v0 + 24);
  *&v19 = *v0;
  v53 = v19;
  *&v65 = v19;
  *(&v65 + 1) = v20;
  v66 = *(v0 + 16);
  v67 = v21;
  MEMORY[0x1EEE9AC00](v18);
  v64 = v22;
  *(&v51 - 2) = v22;
  type metadata accessor for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment(0, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchSelectionModifier.Transform>.UpdateEnvironment, type metadata accessor for SearchSelectionModifier.Transform);
  v24 = v23;
  updated = lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchSelectionModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment();

  MEMORY[0x18D000B40](v24, v3, updated);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  v26 = *(v63 + 48);
  v27 = v58;
  if (v26(v5, 1, v58) == 1)
  {
    v28 = v62;
    *v62 = 2;
    v29 = &v28[*(v27 + 20)];
    type metadata accessor for SearchBoundProperty<SearchFieldState>();
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    v31 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
    v32 = v31[5];
    type metadata accessor for SearchBoundProperty<AttributedString>();
    (*(*(v33 - 8) + 56))(&v29[v32], 1, 1, v33);
    v34 = v31[6];
    type metadata accessor for SearchBoundProperty<TextSelection?>();
    (*(*(v35 - 8) + 56))(&v29[v34], 1, 1, v35);
    v36 = &v29[v31[7]];
    *(v36 + 28) = 0u;
    *v36 = 0u;
    v36[1] = 0u;
    v37 = v26(v5, 1, v27);
    if (v37 != 1)
    {
      v37 = outlined destroy of SearchEnvironmentStorage.AllProperties?(v5, &lazy cache variable for type metadata for SearchEnvironmentStorage.AllProperties?, type metadata accessor for SearchEnvironmentStorage.AllProperties);
    }
  }

  else
  {
    v28 = v62;
    v37 = outlined init with take of SearchEnvironmentStorage.AllProperties(v5, v62);
  }

  v38 = v60;
  v39 = v64;
  if (v64)
  {
    if ((*(v1 + 24) & 1) == 0)
    {
      v40 = *(v64 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version);
      if (v40 != -1)
      {
        v41 = *(v1 + 20);
        if (v41 != -1 && (v52 & 1) == 0 && v40 == v41)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_18:
    MEMORY[0x1EEE9AC00](v37);
    *(&v51 - 2) = v1;
    *(&v51 - 1) = v28;
    Attribute.syncMainIfReferences<A>(do:)();
    v42 = *(v1 + 16) + 1;
    *(v1 + 16) = v42;
    LOBYTE(v65) = 17;
    v20 = *(v1 + 8);
    v43 = v56;
    outlined init with copy of SearchEnvironmentStorage.AllProperties(v28, v56, type metadata accessor for SearchEnvironmentStorage.AllProperties);
    v44 = (*(v63 + 80) + 24) & ~*(v63 + 80);
    v45 = v38;
    v46 = (v55 + v44 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v47 = swift_allocObject();
    *(v47 + 16) = v20;
    v48 = v43;
    v39 = v64;
    outlined init with take of SearchEnvironmentStorage.AllProperties(v48, v47 + v44);
    *(v47 + v46) = v42;
    v38 = v45;

    static Update.enqueueAction(reason:_:)();

    if (v59)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (!*(v1 + 24) || (v52 & 1) != 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (v59)
  {
LABEL_22:
    *&v65 = v20;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
    swift_retain_n();

    PropertyList.subscript.setter();
    if (v38)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    v65 = v68;
    AGGraphSetOutputValue();
    if (!v39)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

LABEL_19:
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_22;
  }

  if (!v39)
  {
LABEL_25:
    v49 = 0;
    goto LABEL_26;
  }

LABEL_21:
  v49 = *(v39 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version);

LABEL_26:
  *(v1 + 20) = v49;
  *(v1 + 24) = v39 == 0;

  return outlined destroy of SearchEnvironmentStorage.AllProperties(v28, type metadata accessor for SearchEnvironmentStorage.AllProperties);
}

{
  v1 = v0;
  v67 = *MEMORY[0x1E69E9840];
  type metadata accessor for SearchEnvironmentStorage.AllProperties?(0, &lazy cache variable for type metadata for SearchEnvironmentStorage.AllProperties?, type metadata accessor for SearchEnvironmentStorage.AllProperties, MEMORY[0x1E69E6720]);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v50 - v4;
  v6 = type metadata accessor for SearchEnvironmentStorage.AllProperties(0);
  v61 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v53 = v7;
  v54 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - v9;
  Value = AGGraphGetValue();
  v57 = v12;
  v14 = Value[1];
  *&v66 = *Value;
  v13 = v66;
  *(&v66 + 1) = v14;

  AGGraphGetValue();
  v51 = v15;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
  v16 = lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>();
  v59 = v13;
  v60 = v10;
  v58 = v14;
  v55 = v16;
  v56 = v6;
  if (v14)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    v17 = PropertyList.subscript.getter();
  }

  v19 = *(v0 + 8);
  v20 = *(v0 + 24);
  *&v18 = *v0;
  v52 = v18;
  *&v63 = v18;
  *(&v63 + 1) = v19;
  v64 = *(v0 + 16);
  v65 = v20;
  MEMORY[0x1EEE9AC00](v17);
  v62 = v21;
  *(&v50 - 2) = v21;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchPopoverAnchorModifier.Transform>.UpdateEnvironment, &type metadata for SearchPopoverAnchorModifier.Transform, &protocol witness table for SearchPopoverAnchorModifier.Transform, type metadata accessor for SearchEnvironmentTransformModifier.UpdateEnvironment);
  v23 = v22;
  updated = lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchPopoverAnchorModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment();

  MEMORY[0x18D000B40](v23, v3, updated);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  v25 = *(v61 + 48);
  v26 = v56;
  if (v25(v5, 1, v56) == 1)
  {
    v27 = v60;
    *v60 = 2;
    v28 = &v27[*(v26 + 20)];
    type metadata accessor for SearchBoundProperty<SearchFieldState>();
    (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
    v30 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
    v31 = v30[5];
    type metadata accessor for SearchBoundProperty<AttributedString>();
    (*(*(v32 - 8) + 56))(&v28[v31], 1, 1, v32);
    v33 = v30[6];
    type metadata accessor for SearchBoundProperty<TextSelection?>();
    (*(*(v34 - 8) + 56))(&v28[v33], 1, 1, v34);
    v35 = &v28[v30[7]];
    *(v35 + 28) = 0u;
    *v35 = 0u;
    v35[1] = 0u;
    v36 = v25(v5, 1, v26);
    if (v36 != 1)
    {
      v36 = outlined destroy of SearchEnvironmentStorage.AllProperties?(v5, &lazy cache variable for type metadata for SearchEnvironmentStorage.AllProperties?, type metadata accessor for SearchEnvironmentStorage.AllProperties);
    }
  }

  else
  {
    v27 = v60;
    v36 = outlined init with take of SearchEnvironmentStorage.AllProperties(v5, v60);
  }

  v37 = v58;
  v38 = v62;
  if (v62)
  {
    if ((*(v1 + 24) & 1) == 0)
    {
      v39 = *(v62 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version);
      if (v39 != -1)
      {
        v40 = *(v1 + 20);
        if (v40 != -1 && (v51 & 1) == 0 && v39 == v40)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_18:
    MEMORY[0x1EEE9AC00](v36);
    *(&v50 - 2) = v1;
    *(&v50 - 1) = v27;
    Attribute.syncMainIfReferences<A>(do:)();
    v41 = *(v1 + 16) + 1;
    *(v1 + 16) = v41;
    LOBYTE(v63) = 17;
    v19 = *(v1 + 8);
    v42 = v54;
    outlined init with copy of SearchEnvironmentStorage.AllProperties(v27, v54, type metadata accessor for SearchEnvironmentStorage.AllProperties);
    v43 = (*(v61 + 80) + 24) & ~*(v61 + 80);
    v44 = v37;
    v45 = (v53 + v43 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v46 = swift_allocObject();
    *(v46 + 16) = v19;
    v47 = v42;
    v38 = v62;
    outlined init with take of SearchEnvironmentStorage.AllProperties(v47, v46 + v43);
    *(v46 + v45) = v41;
    v37 = v44;

    static Update.enqueueAction(reason:_:)();

    if (v57)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (!*(v1 + 24) || (v51 & 1) != 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (v57)
  {
LABEL_22:
    *&v63 = v19;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
    swift_retain_n();

    PropertyList.subscript.setter();
    if (v37)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    v63 = v66;
    AGGraphSetOutputValue();
    if (!v38)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

LABEL_19:
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_22;
  }

  if (!v38)
  {
LABEL_25:
    v48 = 0;
    goto LABEL_26;
  }

LABEL_21:
  v48 = *(v38 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version);

LABEL_26:
  *(v1 + 20) = v48;
  *(v1 + 24) = v38 == 0;

  return outlined destroy of SearchEnvironmentStorage.AllProperties(v27, type metadata accessor for SearchEnvironmentStorage.AllProperties);
}

{
  v1 = v0;
  v69 = *MEMORY[0x1E69E9840];
  type metadata accessor for SearchEnvironmentStorage.AllProperties?(0, &lazy cache variable for type metadata for SearchEnvironmentStorage.AllProperties?, type metadata accessor for SearchEnvironmentStorage.AllProperties, MEMORY[0x1E69E6720]);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v51 - v4;
  v6 = type metadata accessor for SearchEnvironmentStorage.AllProperties(0);
  v63 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v55 = v7;
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  Value = AGGraphGetValue();
  v59 = v12;
  v14 = Value[1];
  *&v68 = *Value;
  v13 = v68;
  *(&v68 + 1) = v14;
  v15 = type metadata accessor for SearchTextTransformModifier.Transform(0);

  v54 = v15;
  AGGraphGetValue();
  v52 = v16;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
  v17 = lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>();
  v61 = v13;
  v62 = v10;
  v60 = v14;
  v57 = v17;
  v58 = v6;
  if (v14)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    v18 = PropertyList.subscript.getter();
  }

  v20 = *(v0 + 8);
  v21 = *(v0 + 24);
  *&v19 = *v0;
  v53 = v19;
  *&v65 = v19;
  *(&v65 + 1) = v20;
  v66 = *(v0 + 16);
  v67 = v21;
  MEMORY[0x1EEE9AC00](v18);
  v64 = v22;
  *(&v51 - 2) = v22;
  type metadata accessor for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment(0, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment, type metadata accessor for SearchTextTransformModifier.Transform);
  v24 = v23;
  updated = lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment();

  MEMORY[0x18D000B40](v24, v3, updated);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  v26 = *(v63 + 48);
  v27 = v58;
  if (v26(v5, 1, v58) == 1)
  {
    v28 = v62;
    *v62 = 2;
    v29 = &v28[*(v27 + 20)];
    type metadata accessor for SearchBoundProperty<SearchFieldState>();
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    v31 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
    v32 = v31[5];
    type metadata accessor for SearchBoundProperty<AttributedString>();
    (*(*(v33 - 8) + 56))(&v29[v32], 1, 1, v33);
    v34 = v31[6];
    type metadata accessor for SearchBoundProperty<TextSelection?>();
    (*(*(v35 - 8) + 56))(&v29[v34], 1, 1, v35);
    v36 = &v29[v31[7]];
    *(v36 + 28) = 0u;
    *v36 = 0u;
    v36[1] = 0u;
    v37 = v26(v5, 1, v27);
    if (v37 != 1)
    {
      v37 = outlined destroy of SearchEnvironmentStorage.AllProperties?(v5, &lazy cache variable for type metadata for SearchEnvironmentStorage.AllProperties?, type metadata accessor for SearchEnvironmentStorage.AllProperties);
    }
  }

  else
  {
    v28 = v62;
    v37 = outlined init with take of SearchEnvironmentStorage.AllProperties(v5, v62);
  }

  v38 = v60;
  v39 = v64;
  if (v64)
  {
    if ((*(v1 + 24) & 1) == 0)
    {
      v40 = *(v64 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version);
      if (v40 != -1)
      {
        v41 = *(v1 + 20);
        if (v41 != -1 && (v52 & 1) == 0 && v40 == v41)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_18:
    MEMORY[0x1EEE9AC00](v37);
    *(&v51 - 2) = v1;
    *(&v51 - 1) = v28;
    Attribute.syncMainIfReferences<A>(do:)();
    v42 = *(v1 + 16) + 1;
    *(v1 + 16) = v42;
    LOBYTE(v65) = 17;
    v20 = *(v1 + 8);
    v43 = v56;
    outlined init with copy of SearchEnvironmentStorage.AllProperties(v28, v56, type metadata accessor for SearchEnvironmentStorage.AllProperties);
    v44 = (*(v63 + 80) + 24) & ~*(v63 + 80);
    v45 = v38;
    v46 = (v55 + v44 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v47 = swift_allocObject();
    *(v47 + 16) = v20;
    v48 = v43;
    v39 = v64;
    outlined init with take of SearchEnvironmentStorage.AllProperties(v48, v47 + v44);
    *(v47 + v46) = v42;
    v38 = v45;

    static Update.enqueueAction(reason:_:)();

    if (v59)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (!*(v1 + 24) || (v52 & 1) != 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (v59)
  {
LABEL_22:
    *&v65 = v20;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
    swift_retain_n();

    PropertyList.subscript.setter();
    if (v38)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    v65 = v68;
    AGGraphSetOutputValue();
    if (!v39)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

LABEL_19:
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_22;
  }

  if (!v39)
  {
LABEL_25:
    v49 = 0;
    goto LABEL_26;
  }

LABEL_21:
  v49 = *(v39 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version);

LABEL_26:
  *(v1 + 20) = v49;
  *(v1 + 24) = v39 == 0;

  return outlined destroy of SearchEnvironmentStorage.AllProperties(v28, type metadata accessor for SearchEnvironmentStorage.AllProperties);
}

{
  v1 = v0;
  v69 = *MEMORY[0x1E69E9840];
  type metadata accessor for SearchEnvironmentStorage.AllProperties?(0, &lazy cache variable for type metadata for SearchEnvironmentStorage.AllProperties?, type metadata accessor for SearchEnvironmentStorage.AllProperties, MEMORY[0x1E69E6720]);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v51 - v4;
  v6 = type metadata accessor for SearchEnvironmentStorage.AllProperties(0);
  v63 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v55 = v7;
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  Value = AGGraphGetValue();
  v59 = v12;
  v14 = Value[1];
  *&v68 = *Value;
  v13 = v68;
  *(&v68 + 1) = v14;
  v15 = type metadata accessor for SearchStateEnvironmentTransformModifier.Transform(0);

  v54 = v15;
  AGGraphGetValue();
  v52 = v16;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
  v17 = lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>();
  v61 = v13;
  v62 = v10;
  v60 = v14;
  v57 = v17;
  v58 = v6;
  if (v14)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    v18 = PropertyList.subscript.getter();
  }

  v20 = *(v0 + 8);
  v21 = *(v0 + 24);
  *&v19 = *v0;
  v53 = v19;
  *&v65 = v19;
  *(&v65 + 1) = v20;
  v66 = *(v0 + 16);
  v67 = v21;
  MEMORY[0x1EEE9AC00](v18);
  v64 = v22;
  *(&v51 - 2) = v22;
  type metadata accessor for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment(0, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment, type metadata accessor for SearchStateEnvironmentTransformModifier.Transform);
  v24 = v23;
  updated = lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment();

  MEMORY[0x18D000B40](v24, v3, updated);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  v26 = *(v63 + 48);
  v27 = v58;
  if (v26(v5, 1, v58) == 1)
  {
    v28 = v62;
    *v62 = 2;
    v29 = &v28[*(v27 + 20)];
    type metadata accessor for SearchBoundProperty<SearchFieldState>();
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    v31 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
    v32 = v31[5];
    type metadata accessor for SearchBoundProperty<AttributedString>();
    (*(*(v33 - 8) + 56))(&v29[v32], 1, 1, v33);
    v34 = v31[6];
    type metadata accessor for SearchBoundProperty<TextSelection?>();
    (*(*(v35 - 8) + 56))(&v29[v34], 1, 1, v35);
    v36 = &v29[v31[7]];
    *(v36 + 28) = 0u;
    *v36 = 0u;
    v36[1] = 0u;
    v37 = v26(v5, 1, v27);
    if (v37 != 1)
    {
      v37 = outlined destroy of SearchEnvironmentStorage.AllProperties?(v5, &lazy cache variable for type metadata for SearchEnvironmentStorage.AllProperties?, type metadata accessor for SearchEnvironmentStorage.AllProperties);
    }
  }

  else
  {
    v28 = v62;
    v37 = outlined init with take of SearchEnvironmentStorage.AllProperties(v5, v62);
  }

  v38 = v60;
  v39 = v64;
  if (v64)
  {
    if ((*(v1 + 24) & 1) == 0)
    {
      v40 = *(v64 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version);
      if (v40 != -1)
      {
        v41 = *(v1 + 20);
        if (v41 != -1 && (v52 & 1) == 0 && v40 == v41)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_18:
    MEMORY[0x1EEE9AC00](v37);
    *(&v51 - 2) = v1;
    *(&v51 - 1) = v28;
    Attribute.syncMainIfReferences<A>(do:)();
    v42 = *(v1 + 16) + 1;
    *(v1 + 16) = v42;
    LOBYTE(v65) = 17;
    v20 = *(v1 + 8);
    v43 = v56;
    outlined init with copy of SearchEnvironmentStorage.AllProperties(v28, v56, type metadata accessor for SearchEnvironmentStorage.AllProperties);
    v44 = (*(v63 + 80) + 24) & ~*(v63 + 80);
    v45 = v38;
    v46 = (v55 + v44 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v47 = swift_allocObject();
    *(v47 + 16) = v20;
    v48 = v43;
    v39 = v64;
    outlined init with take of SearchEnvironmentStorage.AllProperties(v48, v47 + v44);
    *(v47 + v46) = v42;
    v38 = v45;

    static Update.enqueueAction(reason:_:)();

    if (v59)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (!*(v1 + 24) || (v52 & 1) != 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (v59)
  {
LABEL_22:
    *&v65 = v20;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
    swift_retain_n();

    PropertyList.subscript.setter();
    if (v38)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    v65 = v68;
    AGGraphSetOutputValue();
    if (!v39)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

LABEL_19:
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_22;
  }

  if (!v39)
  {
LABEL_25:
    v49 = 0;
    goto LABEL_26;
  }

LABEL_21:
  v49 = *(v39 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version);

LABEL_26:
  *(v1 + 20) = v49;
  *(v1 + 24) = v39 == 0;

  return outlined destroy of SearchEnvironmentStorage.AllProperties(v28, type metadata accessor for SearchEnvironmentStorage.AllProperties);
}