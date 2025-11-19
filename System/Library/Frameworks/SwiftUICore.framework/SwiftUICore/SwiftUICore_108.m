void type metadata accessor for Locale?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for WhitespaceRemovingFormatStyle<Duration.UnitsFormatStyle.Attributed, AttributeScopes.FoundationAttributes.MeasurementAttribute>()
{
  if (!lazy cache variable for type metadata for WhitespaceRemovingFormatStyle<Duration.UnitsFormatStyle.Attributed, AttributeScopes.FoundationAttributes.MeasurementAttribute>)
  {
    type metadata accessor for Duration.UnitsFormatStyle.Attributed();
    type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed and conformance Duration.UnitsFormatStyle.Attributed, MEMORY[0x1E696A1A8]);
    v0 = MEMORY[0x1E6968438];
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute, MEMORY[0x1E6968438]);
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute, v0);
    v1 = MEMORY[0x1E6968400];
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component, MEMORY[0x1E6968400]);
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component, v1);
    v2 = type metadata accessor for WhitespaceRemovingFormatStyle();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for WhitespaceRemovingFormatStyle<Duration.UnitsFormatStyle.Attributed, AttributeScopes.FoundationAttributes.MeasurementAttribute>);
    }
  }
}

void type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for Date.ComponentsFormatStyle.Field();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)()
{
  if (!lazy cache variable for type metadata for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field))
  {
    type metadata accessor for Duration.TimeFormatStyle.Attributed();
    type metadata accessor for Date.ComponentsFormatStyle.Field();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field));
    }
  }
}

uint64_t SystemFormatStyle.DateOffset.updateFrequency(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  outlined init with copy of SystemFormatStyle.DateOffset(v2, a2, type metadata accessor for SystemFormatStyle.DateOffset);
  result = type metadata accessor for SystemFormatStyle.DateOffset();
  *(a2 + *(result + 44)) = v4;
  return result;
}

uint64_t SystemFormatStyle.DateOffset.timeStyle(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v58 = a2;
  v3 = type metadata accessor for NumberFormatStyleConfiguration.Grouping();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v55 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v54 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FloatingPointRoundingRule();
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v50 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Duration.TimeFormatStyle();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v51 = v47 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v47 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v47 - v26;
  if (SystemFormatStyle.DateOffset.unitsConfigurationAllowsTimeStyle.getter())
  {
    v48 = v19;
    v28 = type metadata accessor for SystemFormatStyle.DateOffset();
    v29 = *(v2 + *(v28 + 44));
    v47[2] = v28;
    if (v29 >= 2)
    {
      v34 = v52;
      v33 = v53;
      (*(v52 + 104))(v13, *MEMORY[0x1E69E7020], v53);
      static Duration.TimeFormatStyle.Pattern.hourMinute(padHourToLength:roundSeconds:)();
      v32 = v58;
    }

    else
    {
      v30 = *(v28 + 20);
      v47[1] = v2;
      v31 = *(v2 + v30);
      static Date.ComponentsFormatStyle.Style.spellOut.getter();
      LOBYTE(v31) = specialized Set.contains(_:)(v8, v31);
      (*(v6 + 8))(v8, v5);
      v32 = v58;
      if ((v31 & 1) == 0)
      {
        goto LABEL_7;
      }

      Date.timeIntervalSince(_:)();
      static Duration.seconds(_:)();
      static Duration.zero.getter();
      if (static Duration.< infix(_:_:)())
      {
        static Duration.zero.getter();
        static Duration.- infix(_:_:)();
      }

      if ((static Duration.< infix(_:_:)() & 1) == 0)
      {
        v34 = v52;
        v33 = v53;
        (*(v52 + 104))(v13, *MEMORY[0x1E69E7020], v53);
        static Duration.TimeFormatStyle.Pattern.hourMinuteSecond(padHourToLength:fractionalSecondsLength:roundFractionalSeconds:)();
      }

      else
      {
LABEL_7:
        v34 = v52;
        v33 = v53;
        (*(v52 + 104))(v13, *MEMORY[0x1E69E7020], v53);
        static Duration.TimeFormatStyle.Pattern.minuteSecond(padMinuteToLength:fractionalSecondsLength:roundFractionalSeconds:)();
      }
    }

    (*(v34 + 8))(v13, v33);
    static Locale.autoupdatingCurrent.getter();
    Duration.TimeFormatStyle.init(pattern:locale:)();
    (*(v17 + 32))(v27, v24, v16);
    type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)();
    v41 = v40;
    v42 = v48;
    v43 = Duration.TimeFormatStyle.locale(_:)();
    v44 = v55;
    MEMORY[0x193ABCCC0](v43);
    v45 = v51;
    Duration.TimeFormatStyle.grouping(_:)();
    (*(v56 + 8))(v44, v57);
    v46 = *(v17 + 8);
    v46(v42, v16);
    Duration.TimeFormatStyle.attributed.getter();
    v46(v45, v16);
    static Date.ComponentsFormatStyle.Field.second.getter();
    v46(v27, v16);
    return (*(*(v41 - 8) + 56))(v32, 0, 1, v41);
  }

  else
  {
    type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)();
    v36 = *(*(v35 - 8) + 56);
    v37 = v35;
    v38 = v58;

    return v36(v38, 1, 1, v37);
  }
}

uint64_t outlined destroy of SystemFormatStyle.DateOffset(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SystemFormatStyle.DateOffset.needsSign(for:smallestFieldShown:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v38 = a1;
  v4 = type metadata accessor for DateComponents();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Calendar.Component();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for SystemFormatStyle.DateOffset();
  (*(v9 + 16))(v14, v3 + *(v15 + 28), v8);
  static NumberFormatStyleConfiguration.SignDisplayStrategy.never.getter();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy, MEMORY[0x1E6968EF8]);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v9 + 8);
  v17(v11, v8);
  if (v16)
  {
    v17(v14, v8);
    v18 = 0;
  }

  else
  {
    static NumberFormatStyleConfiguration.SignDisplayStrategy.automatic.getter();
    v19 = dispatch thunk of static Equatable.== infix(_:_:)();
    v17(v11, v8);
    if (v19)
    {
      v17(v14, v8);
      v18 = static Date.< infix(_:_:)();
    }

    else
    {
      static NumberFormatStyleConfiguration.SignDisplayStrategy.always(includingZero:)();
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v17(v11, v8);
      if (v20)
      {
        v17(v14, v8);
        v18 = 1;
      }

      else
      {
        static NumberFormatStyleConfiguration.SignDisplayStrategy.always(includingZero:)();
        v21 = dispatch thunk of static Equatable.== infix(_:_:)();
        v17(v11, v8);
        v17(v14, v8);
        v18 = 0;
        if (v21)
        {
          SystemFormatStyle.DateOffset.component(for:)(v32, v7);
          type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
          v22 = v33;
          v23 = (*(v33 + 80) + 32) & ~*(v33 + 80);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_18DDA6EB0;
          v25 = v24 + v23;
          v26 = v35;
          (*(v22 + 16))(v25, v7, v35);
          _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5(v24);
          v27 = v34;
          Calendar.dateComponents(_:from:to:)();

          v28 = DateComponents.value(for:)();
          LOBYTE(v24) = v29;
          (*(v36 + 8))(v27, v37);
          (*(v22 + 8))(v7, v26);
          v18 = (v24 & 1) != 0 || v28 != 0;
        }
      }
    }
  }

  return v18 & 1;
}

uint64_t SystemFormatStyle.DateOffset.addMinusSign(to:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v42 = a5;
  v37 = a3;
  v35[1] = a2;
  v46 = a1;
  v6 = type metadata accessor for Locale.Language();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Locale();
  v11 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = type metadata accessor for AttributedString.InterpolationOptions();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v19 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x1EEE9AC00](v19 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = v37;
  v20._object = a4;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
  v47 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions, MEMORY[0x1E69686F0]);
  type metadata accessor for [AttributedString.InterpolationOptions](0);
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A], type metadata accessor for [AttributedString.InterpolationOptions]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v46;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
  v22 = type metadata accessor for AttributedString();
  (*(*(v22 - 8) + 8))(v21, v22);
  v23 = v17;
  v24 = v36;
  v25 = v14;
  v26 = v39;
  (*(v15 + 8))(v23, v25);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
  String.LocalizationValue.init(stringInterpolation:)();
  v28 = type metadata accessor for SystemFormatStyle.DateOffset();
  (*(v11 + 16))(v24, v26 + *(v28 + 36), v38);
  if (one-time initialization token for systemFormatStyle != -1)
  {
    swift_once();
  }

  v29 = [static NSBundle.systemFormatStyle bundleURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v40 + 104))(v10, *MEMORY[0x1E6968DF8], v41);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  swift_getKeyPath();
  type metadata accessor for AttributeScopes.AccessibilityAttributes();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.AccessibilityAttributes and conformance AttributeScopes.AccessibilityAttributes, MEMORY[0x1E6959510]);
  AttributedString.init<A>(localized:including:)();
  v30 = v43;
  Locale.language.getter();
  v31 = Locale.Language.maximalIdentifier.getter();
  v33 = v32;
  (*(v44 + 8))(v30, v45);
  v47 = v31;
  v48 = v33;
  return AttributedString.subscript.setter();
}

uint64_t SystemFormatStyle.DateOffset.unitsStyle(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  type metadata accessor for Date.ComponentsFormatStyle.Field?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v114 = &v105[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v115 = &v105[-v7];
  v124 = type metadata accessor for FloatingPointRoundingRule();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v122 = &v105[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v121 = &v105[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v120 = &v105[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Duration.UnitsFormatStyle.Unit?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v133 = &v105[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v144 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v132 = *(v144 - 1);
  MEMORY[0x1EEE9AC00](v144);
  v140 = &v105[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v125 = &v105[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v119 = type metadata accessor for Duration.UnitsFormatStyle();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v116 = &v105[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v117 = &v105[-v20];
  v128 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v126 = &v105[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for Calendar.Component();
  v134 = *(v22 - 8);
  v135 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v111 = &v105[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = type metadata accessor for DateComponents();
  v110 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v137 = &v105[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v141 = &v105[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v145 = &v105[-v29];
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v105[-v31];
  v136 = a1;
  v131 = v2;
  v33 = SystemFormatStyle.DateOffset.fieldsToDisplay(for:)(a1);
  v35 = v34;
  v37 = v36;
  v39 = v38;
  type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date.ComponentsFormatStyle.Field>, MEMORY[0x1E6969498], MEMORY[0x1E69E6F90]);
  v40 = *(v26 + 72);
  v129 = v26;
  v41 = v37;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_18DDAF080;
  static Date.ComponentsFormatStyle.Style.spellOut.getter();
  v142 = v40;
  static Date.ComponentsFormatStyle.Field.minute.getter();
  static Date.ComponentsFormatStyle.Field.second.getter();
  v149 = v39;
  v150 = v42;
  v146 = v33;
  v147 = v35;
  v113 = v35;
  v148 = v37;
  v138 = v39;
  type metadata accessor for [Date.ComponentsFormatStyle.Field](0);
  type metadata accessor for ArraySlice<Date.ComponentsFormatStyle.Field>(0);
  v143 = v43;
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type [Date.ComponentsFormatStyle.Field] and conformance [A], type metadata accessor for [Date.ComponentsFormatStyle.Field]);
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type ArraySlice<Date.ComponentsFormatStyle.Field> and conformance ArraySlice<A>, type metadata accessor for ArraySlice<Date.ComponentsFormatStyle.Field>);
  v44 = lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
  LOBYTE(v37) = Collection<>.contains<A>(_:)();

  if ((v37 & 1) == 0)
  {
    type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
    (*(*(v59 - 8) + 56))(v130, 1, 1, v59);
    return swift_unknownObjectRelease();
  }

  v139 = v44;
  result = type metadata accessor for SystemFormatStyle.DateOffset();
  v46 = *(v131 + *(result + 44)) >= 2u;
  v109 = v33;
  v108 = result;
  if (v46)
  {
    v47 = result;
    v48 = *(v131 + *(result + 20));
    static Date.ComponentsFormatStyle.Field.second.getter();
    LOBYTE(v48) = specialized Set.contains(_:)(v32, v48);
    result = (*(v129 + 8))(v32, v25);
    if (v48)
    {
      v143 = *(v47 + 40);
      type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
      v49 = v134;
      v50 = v41;
      v51 = (*(v134 + 80) + 32) & ~*(v134 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_18DDA6EB0;
      v106 = *MEMORY[0x1E6969A88];
      v53 = *(v49 + 104);
      v54 = v52 + v51;
      v41 = v50;
      v55 = v135;
      v53(v54);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5(v52);
      Calendar.dateComponents(_:from:to:)();

      v56 = v111;
      (v53)(v111, v106, v55);
      v143 = DateComponents.value(for:)();
      LOBYTE(v52) = v57;
      (*(v49 + 8))(v56, v55);
      result = (*(v110 + 8))(v137, v112);
      if ((v52 & 1) == 0 && !v143)
      {
        swift_unknownObjectRelease();
        type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
        return (*(*(v58 - 8) + 56))(v130, 1, 1, v58);
      }
    }
  }

  v112 = v138 >> 1;
  v60 = (v138 >> 1) - v41;
  v107 = v41;
  if (v138 >> 1 != v41)
  {
    if ((v138 >> 1) <= v41)
    {
      __break(1u);
      goto LABEL_45;
    }

    v137 = *(v129 + 16);
    v138 = v129 + 16;
    v63 = (v129 + 8);
    v135 = (v132 + 48);
    v136 = (v132 + 56);
    v134 = v132 + 32;
    v64 = v141;
    v65 = v113 + v41 * v142;
    v143 = MEMORY[0x1E69E7CC0];
    v66 = v133;
    while (1)
    {
      v67 = v145;
      v68 = v137;
      (v137)(v145, v65, v25);
      v68(v64, v67, v25);
      static Date.ComponentsFormatStyle.Style.spellOut.getter();
      LOBYTE(v67) = dispatch thunk of static Equatable.== infix(_:_:)();
      v69 = *v63;
      (*v63)(v32, v25);
      if (v67)
      {
        v69(v64, v25);
        static Duration.UnitsFormatStyle.Unit.hours.getter();
      }

      else
      {
        static Date.ComponentsFormatStyle.Field.minute.getter();
        v70 = dispatch thunk of static Equatable.== infix(_:_:)();
        v69(v32, v25);
        if (v70)
        {
          v69(v64, v25);
          static Duration.UnitsFormatStyle.Unit.minutes.getter();
        }

        else
        {
          static Date.ComponentsFormatStyle.Field.second.getter();
          v71 = dispatch thunk of static Equatable.== infix(_:_:)();
          v69(v32, v25);
          v69(v64, v25);
          if ((v71 & 1) == 0)
          {
            v72 = 1;
            goto LABEL_27;
          }

          static Duration.UnitsFormatStyle.Unit.seconds.getter();
        }
      }

      v72 = 0;
LABEL_27:
      v69(v145, v25);
      v73 = v72;
      v74 = v144;
      (*v136)(v66, v73, 1, v144);
      if ((*v135)(v66, 1, v74) == 1)
      {
        outlined destroy of SystemFormatStyle.DateOffset(v66, type metadata accessor for Duration.UnitsFormatStyle.Unit?);
      }

      else
      {
        v75 = *v134;
        (*v134)(v140, v66, v74);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v143 + 16) + 1, 1, v143);
        }

        v77 = *(v143 + 16);
        v76 = *(v143 + 24);
        if (v77 >= v76 >> 1)
        {
          v143 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v76 > 1, v77 + 1, 1, v143);
        }

        v79 = v143;
        v78 = v144;
        *(v143 + 16) = v77 + 1;
        v75((v79 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v77), v140, v78);
        v66 = v133;
      }

      v64 = v141;
      v65 += v142;
      if (!--v60)
      {
        goto LABEL_11;
      }
    }
  }

  v143 = MEMORY[0x1E69E7CC0];
LABEL_11:
  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_SayAJGTt0g5Tf4g_n(v143);

  v61 = *(v131 + *(v108 + 32));
  if (v61 >= 2)
  {
    static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
    v62 = v130;
  }

  else
  {
    v62 = v130;
    if (v61 == 1)
    {
      if (*(v131 + *(v108 + 48)))
      {
        static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
      }

      else
      {
        static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      }
    }

    else
    {
      static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
    }
  }

  static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.show(length:)();
  v80 = v123;
  v81 = v122;
  v82 = v124;
  (*(v123 + 104))(v122, *MEMORY[0x1E69E7020], v124);
  static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide(rounded:)();
  (*(v80 + 8))(v81, v82);
  v83 = v116;
  Duration.UnitsFormatStyle.init(allowedUnits:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();
  v84 = v117;
  Duration.UnitsFormatStyle.locale(_:)();
  v85 = *(v118 + 8);
  v86 = v119;
  v85(v83, v119);
  v87 = v126;
  Duration.UnitsFormatStyle.attributed.getter();
  v85(v84, v86);
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  v145 = v88;
  v89 = *(v88 + 48);
  result = (*(v127 + 16))(v62, v87, v128);
  if (v112 == v107)
  {
    v90 = v129;
    v91 = *(v129 + 56);
    v92 = v115;
    v91(v115, 1, 1, v25);
    static Date.ComponentsFormatStyle.Field.second.getter();
    v93 = *(v90 + 48);
    if (v93(v92, 1, v25) != 1)
    {
      outlined destroy of SystemFormatStyle.DateOffset(v92, type metadata accessor for Date.ComponentsFormatStyle.Field?);
    }

    v94 = v114;
    v91(v114, 1, 1, v25);
    static Date.ComponentsFormatStyle.Field.second.getter();
    swift_unknownObjectRelease();
    (*(v127 + 8))(v126, v128);
    if (v93(v94, 1, v25) != 1)
    {
      outlined destroy of SystemFormatStyle.DateOffset(v94, type metadata accessor for Date.ComponentsFormatStyle.Field?);
    }

    return (*(*(v145 - 1) + 56))(v62, 0, 1, v145);
  }

  if (v112 > v107)
  {
    v95 = v142;
    v96 = v129;
    v97 = *(v129 + 16);
    v98 = v113;
    v99 = v115;
    v97(v115, v113 + v142 * v107, v25);
    v144 = *(v96 + 56);
    (v144)(v99, 0, 1, v25);
    v100 = v99;
    v101 = *(v96 + 32);
    v62 = v130;
    v101(v130 + v89, v100, v25);
    v102 = *(v145 + 16);
    v103 = v98 + (v112 - 1) * v95;
    v104 = v114;
    v97(v114, v103, v25);
    swift_unknownObjectRelease();
    (v144)(v104, 0, 1, v25);
    (*(v127 + 8))(v126, v128);
    v101(v62 + v102, v104, v25);
    return (*(*(v145 - 1) + 56))(v62, 0, 1, v145);
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t SystemFormatStyle.DateOffset.componentsStyle(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v74 = a1;
  v76 = a2;
  type metadata accessor for Date.ComponentsFormatStyle.Field?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v55 - v7;
  v8 = type metadata accessor for Calendar();
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date.ComponentsFormatStyle.Style();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v62 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date.ComponentsFormatStyle();
  v69 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Calendar.Component();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DateComponents();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v22 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SystemFormatStyle.DateOffset();
  v26 = v25;
  v77 = 0u;
  v78 = 0u;
  v27 = *(v3 + *(v25 + 44));
  v72 = v14;
  if (v27 >= 2)
  {
    v28 = *(v3 + *(v25 + 20));
    static Date.ComponentsFormatStyle.Field.second.getter();
    LOBYTE(v28) = specialized Set.contains(_:)(v24, v28);
    (*(v22 + 8))(v24, v73);
    if (v28)
    {
      v58 = v26[10];
      type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
      v29 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_18DDA6EB0;
      v59 = v22;
      v57 = *MEMORY[0x1E6969A88];
      v56 = *(v17 + 104);
      v56(v30 + v29);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5(v30);
      Calendar.dateComponents(_:from:to:)();

      v22 = v59;
      (v56)(v19, v57, v16);
      v14 = v72;
      v31 = DateComponents.value(for:)();
      LOBYTE(v30) = v32;
      (*(v17 + 8))(v19, v16);
      (*(v60 + 8))(v21, v61);
      if ((v30 & 1) == 0 && !v31)
      {
        type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
        return (*(*(v33 - 8) + 56))(v76, 1, 1, v33);
      }
    }
  }

  v35 = *(v3 + v26[8]);
  if (v35 > 1)
  {
    static Date.ComponentsFormatStyle.Style.narrow.getter();
  }

  else if (v35 == 1)
  {
    if (*(v3 + v26[12]))
    {
      static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
    }

    else
    {
      static Date.ComponentsFormatStyle.Style.abbreviated.getter();
    }
  }

  else
  {
    static Date.ComponentsFormatStyle.Style.wide.getter();
  }

  (*(v63 + 16))(v65, v3 + v26[9], v64);
  (*(v66 + 16))(v68, v3 + v26[10], v67);
  specialized getter of fieldsToDisplay #1 in SystemFormatStyle.DateOffset.componentsStyle(for:)(&v77, v3, v74);
  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4DateV21ComponentsFormatStyleV5FieldV_s10ArraySliceVyAJGTt0g5Tf4gX_n(v36, v37, v38);
  swift_unknownObjectRelease();
  Date.ComponentsFormatStyle.init(style:locale:calendar:fields:)();
  if (static Date.< infix(_:_:)())
  {
    Date.ComponentsFormatStyle.isPositive.setter();
  }

  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
  v40 = v39;
  v68 = *(v39 + 48);
  v41 = v69;
  result = (*(v69 + 16))(v76, v75, v14);
  v74 = v77;
  v42 = *(&v78 + 1) >> 1;
  if (v78 == *(&v78 + 1) >> 1)
  {
    v43 = v41;
    v44 = *(v22 + 56);
    v45 = v70;
    v46 = v73;
    v44(v70, 1, 1, v73);
    swift_unknownObjectRetain();
    static Date.ComponentsFormatStyle.Field.second.getter();
    v47 = *(v22 + 48);
    if (v47(v45, 1, v46) != 1)
    {
      outlined destroy of SystemFormatStyle.DateOffset(v45, type metadata accessor for Date.ComponentsFormatStyle.Field?);
    }

    swift_unknownObjectRelease();
    v48 = v71;
    v49 = v73;
    v44(v71, 1, 1, v73);
    static Date.ComponentsFormatStyle.Field.second.getter();
    (*(v43 + 8))(v75, v72);
    if (v47(v48, 1, v49) != 1)
    {
      outlined destroy of SystemFormatStyle.DateOffset(v71, type metadata accessor for Date.ComponentsFormatStyle.Field?);
    }
  }

  else
  {
    v50 = v70;
    if (v78 >= v42)
    {
      __break(1u);
      return result;
    }

    v51 = *(&v77 + 1);
    v52 = *(v22 + 72);
    v64 = *(v22 + 16);
    v53 = v73;
    v64(v70, *(&v77 + 1) + v52 * v78, v73);
    v67 = v40;
    v65 = *(v22 + 56);
    (v65)(v50, 0, 1, v53);
    v66 = *(v22 + 32);
    (v66)(&v68[v76], v50, v53);
    v70 = *(v67 + 64);
    swift_unknownObjectRetain();
    v54 = v71;
    v64(v71, v51 + v52 * (v42 - 1), v53);
    swift_unknownObjectRelease();
    (v65)(v54, 0, 1, v53);
    v40 = v67;
    (*(v41 + 8))(v75, v72);
    (v66)(v76 + v70, v54, v53);
  }

  (*(*(v40 - 8) + 56))(v76, 0, 1, v40);
  return swift_unknownObjectRelease();
}

uint64_t outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t SystemFormatStyle.DateOffset.dateRange(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for (lower: Date, upper: Date)();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = static Date.< infix(_:_:)();
  v14 = type metadata accessor for Date();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  if (v13)
  {
    v15 = dispatch thunk of static Comparable.<= infix(_:_:)();
    v16 = a1;
    if (v15)
    {
LABEL_5:
      v18 = *(v14 - 8);
      v19 = v18[2];
      v19(v12, v16, v14);
      v19(&v12[*(v7 + 48)], v3, v14);
      outlined init with copy of SystemFormatStyle.DateOffset(v12, v9, type metadata accessor for (lower: Date, upper: Date));
      v20 = *(v7 + 48);
      v21 = v18[4];
      v21(a2, v9, v14);
      v22 = v18[1];
      v22(&v9[v20], v14);
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v12, v9, type metadata accessor for (lower: Date, upper: Date));
      v23 = *(v7 + 48);
      type metadata accessor for Range<Date>();
      v21(a2 + *(v24 + 36), &v9[v23], v14);
      return (v22)(v9, v14);
    }

    __break(1u);
  }

  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  v16 = v3;
  v3 = a1;
  if (result)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t SystemFormatStyle.DateOffset.component(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - v10;
  (*(v5 + 16))(v24 - v10, a1, v4, v9);
  static Date.ComponentsFormatStyle.Style.wide.getter();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if (v12)
  {
    v14 = MEMORY[0x1E6969A68];
LABEL_15:
    v13(v11, v4);
    v21 = *v14;
    v22 = type metadata accessor for Calendar.Component();
    return (*(*(v22 - 8) + 104))(a2, v21, v22);
  }

  static Date.ComponentsFormatStyle.Style.narrow.getter();
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v7, v4);
  if (v15)
  {
    v14 = MEMORY[0x1E6969A78];
    goto LABEL_15;
  }

  static Date.ComponentsFormatStyle.Style.abbreviated.getter();
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v7, v4);
  if (v16)
  {
    v14 = MEMORY[0x1E6969A20];
    goto LABEL_15;
  }

  static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v7, v4);
  if (v17)
  {
    v14 = MEMORY[0x1E6969A48];
    goto LABEL_15;
  }

  static Date.ComponentsFormatStyle.Style.spellOut.getter();
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v7, v4);
  if (v18)
  {
    v14 = MEMORY[0x1E6969A58];
    goto LABEL_15;
  }

  static Date.ComponentsFormatStyle.Field.minute.getter();
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v7, v4);
  if (v19)
  {
    v14 = MEMORY[0x1E6969A88];
    goto LABEL_15;
  }

  static Date.ComponentsFormatStyle.Field.second.getter();
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v7, v4);
  if (v20)
  {
    v14 = MEMORY[0x1E6969A98];
    goto LABEL_15;
  }

  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(43);
  MEMORY[0x193ABEDD0](0xD000000000000029, 0x800000018DD7AC40);
  type metadata accessor for SystemFormatStyle.DateOffset();
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SystemFormatStyle.DateOffset.smallerOneMinuteString.getter@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  type metadata accessor for WhitespaceRemovingFormatStyle<Duration.UnitsFormatStyle.Attributed, AttributeScopes.FoundationAttributes.MeasurementAttribute>();
  v56 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedString();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v64 - 1);
  MEMORY[0x1EEE9AC00](v64);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v75 = *(v12 - 8);
  v76 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v55 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v59 = type metadata accessor for Duration.UnitsFormatStyle();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
  v60 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v70 = &v55 - v24;
  type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Duration.UnitsFormatStyle.Unit>, MEMORY[0x1E696A1C0], MEMORY[0x1E69E6F90]);
  type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_18DDA6EB0;
  static Duration.UnitsFormatStyle.Unit.minutes.getter();
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_Tt0g5(v25);
  v72 = type metadata accessor for SystemFormatStyle.DateOffset();
  v73 = v1;
  v26 = *(v1 + v72[8]);
  v74 = v26;
  if (v26 > 1)
  {
    static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
    v27 = v71;
  }

  else
  {
    v27 = v71;
    if (v26 == 1)
    {
      if (*(v73 + v72[12]))
      {
        static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
      }

      else
      {
        static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      }
    }

    else
    {
      static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
    }
  }

  static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.show(length:)();
  v28 = v64;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E7020], v64);
  static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide(rounded:)();
  (*(v6 + 8))(v8, v28);
  Duration.UnitsFormatStyle.init(allowedUnits:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();
  Duration.UnitsFormatStyle.attributed.getter();
  (*(v58 + 8))(v20, v59);
  v29 = v73;
  v61 = v72[9];
  v30 = v70;
  Duration.UnitsFormatStyle.Attributed.locale(_:)();
  v31 = v60;
  v64 = *(v60 + 8);
  (v64)(v22, v27);
  v32 = v27;
  if (v74 >= 2)
  {
    v34 = v62;
    static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
    v33 = v75;
  }

  else
  {
    v33 = v75;
    v34 = v62;
    if (v74 == 1)
    {
      if (*(v29 + v72[12]))
      {
        static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
      }

      else
      {
        static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      }
    }

    else
    {
      static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
    }
  }

  v35 = v63;
  static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
  v36 = static Duration.UnitsFormatStyle.UnitWidth.== infix(_:_:)();
  v39 = *(v33 + 8);
  v38 = v33 + 8;
  v37 = v39;
  v40 = v35;
  v41 = v76;
  v39(v40, v76);
  v39(v34, v41);
  if (v36)
  {
    v42 = *(v31 + 16);
    v75 = v38;
    v43 = v57;
    v42(v57, v30, v32);
    v44 = v56;
    v45 = *(v56 + 76);
    v46 = *MEMORY[0x1E69683F8];
    v47 = type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component();
    v48 = *(v47 - 8);
    v49 = *(v48 + 104);
    v49(v43 + v45, v46, v47);
    v50 = *(v48 + 56);
    v50(v43 + v45, 0, 1, v47);
    v51 = *(v44 + 80);
    v32 = v71;
    v49(v43 + v51, *MEMORY[0x1E69683F0], v47);
    v30 = v70;
    v50(v43 + v51, 0, 1, v47);
    v29 = v73;
    v77 = xmmword_18DDCF140;
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed and conformance Duration.UnitsFormatStyle.Attributed, MEMORY[0x1E696A1A8]);
    v52 = v66;
    dispatch thunk of FormatStyle.format(_:)();
    outlined destroy of SystemFormatStyle.DateOffset(v43, type metadata accessor for WhitespaceRemovingFormatStyle<Duration.UnitsFormatStyle.Attributed, AttributeScopes.FoundationAttributes.MeasurementAttribute>);
  }

  else
  {
    v52 = v66;
    Duration.UnitsFormatStyle.Attributed.format(_:)();
  }

  v53 = v65;
  if (v74 > 1)
  {
    static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
  }

  else if (v74 == 1)
  {
    if (*(v29 + v72[12]))
    {
      static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
    }

    else
    {
      static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
    }
  }

  else
  {
    static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
  }

  static SystemFormatStyle.lessThanOneMinuteString(_:locale:width:)(v52, &v61[v29], v53, v69);
  v37(v53, v76);
  (*(v67 + 8))(v52, v68);
  return (v64)(v30, v32);
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v31 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v36 = a2 + 56;
  v32 = v7;
  v33 = result;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v34 = (v6 - 1) & v6;
LABEL_13:
    v11 = *(result + 48) + 16 * (v8 | (v3 << 6));
    v12 = *v11;
    v13 = *(v11 + 8);
    Hasher.init(_seed:)();
    if (v13 < 0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v12;
    }

    else
    {
      dispatch thunk of static AttributedStringKey.name.getter();
    }

    String.hash(into:)();

    v15 = Hasher._finalize()();
    v16 = -1 << *(v2 + 32);
    v17 = v15 & ~v16;
    if (((*(v36 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
LABEL_36:
      outlined consume of AttributedString.AnyAttribute(v12, v13);
      return 0;
    }

    v18 = ~v16;
    while (1)
    {
      v19 = *(v2 + 48) + 16 * v17;
      v20 = *v19;
      v21 = *(v19 + 8);
      if (v21 < 0)
      {
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v25;
        v26 = v20;
        if ((v13 & 0x8000000000000000) == 0)
        {
          v27 = dispatch thunk of static AttributedStringKey.name.getter();
          goto LABEL_26;
        }
      }

      else
      {
        if ((v13 & 0x8000000000000000) == 0)
        {
          if (v20 == v12)
          {
            goto LABEL_33;
          }

          goto LABEL_19;
        }

        v22 = dispatch thunk of static AttributedStringKey.name.getter();
        v24 = v23;
      }

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_26:
      if (v22 == v27 && v24 == v28)
      {
        break;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined consume of AttributedString.AnyAttribute(v20, v21);

      v2 = a2;
      if (v30)
      {
        goto LABEL_33;
      }

LABEL_19:
      v17 = (v17 + 1) & v18;
      if (((*(v36 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    outlined consume of AttributedString.AnyAttribute(v20, v21);

    v2 = a2;
LABEL_33:
    outlined consume of AttributedString.AnyAttribute(v12, v13);
    v7 = v32;
    result = v33;
    v6 = v34;
  }

  while (v34);
LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v31 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void _sSh2eeoiySbShyxG_ABtFZ10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v33 - v9;
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
        v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
          v31 = dispatch thunk of static Equatable.== infix(_:_:)();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZ7SwiftUI14GlassContainerO5EntryV8StableIDV_Tt1g5(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x193AC11A0](v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t SystemFormatStyle.DateOffset.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedEncodingContainer<SystemFormatStyle.DateOffset.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemFormatStyle.DateOffset.CodingKeys>, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for Date();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = type metadata accessor for SystemFormatStyle.DateOffset();
    v13 = *(v3 + v10[5]);
    HIBYTE(v12) = 1;
    type metadata accessor for Set<Date.ComponentsFormatStyle.Field>();
    lazy protocol witness table accessor for type Set<Date.ComponentsFormatStyle.Field> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<Date.ComponentsFormatStyle.Field> and conformance <> Set<A>, lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 3;
    type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy, MEMORY[0x1E6968EF8]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v3 + v10[8]);
    HIBYTE(v12) = 4;
    lazy protocol witness table accessor for type TextSizeVariant and conformance TextSizeVariant();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 5;
    type metadata accessor for Locale();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 6;
    type metadata accessor for Calendar();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = *(v3 + v10[11]);
    HIBYTE(v12) = 7;
    lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency and conformance TimeDataFormatting.UpdateFrequency();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

void SystemFormatStyle.DateOffset.hash(into:)(__int128 *a1)
{
  type metadata accessor for Date();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  dispatch thunk of Hashable.hash(into:)();
  v3 = type metadata accessor for SystemFormatStyle.DateOffset();
  specialized Set.hash(into:)(a1, *(v1 + v3[5]));
  MEMORY[0x193AC11A0](*(v1 + v3[6]));
  type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy, MEMORY[0x1E6968EF8]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x193AC11A0](*(v1 + v3[8]));
  type metadata accessor for Locale();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Calendar();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x193AC11A0](*(v1 + v3[11]));
  Hasher._combine(_:)(*(v1 + v3[12]));
  Hasher._combine(_:)(*(v1 + v3[13]));
}

Swift::Int SystemFormatStyle.DateOffset.hashValue.getter()
{
  Hasher.init(_seed:)();
  SystemFormatStyle.DateOffset.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t SystemFormatStyle.DateOffset.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for Calendar();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<SystemFormatStyle.DateOffset.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemFormatStyle.DateOffset.CodingKeys>, MEMORY[0x1E69E6F48]);
  v58 = v13;
  v56 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for SystemFormatStyle.DateOffset();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 32);
  *&v18[v20] = 0;
  v61 = *(v19 + 40);
  static Calendar.autoupdatingCurrent.getter();
  v21 = *(v16 + 44);
  v64 = v18;
  v18[v21] = 0;
  v22 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys();
  v57 = v15;
  v23 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    v24 = v62;
    v25 = v63;
    v29 = v61;
    v30 = v64;
    __swift_destroy_boxed_opaque_existential_1(v60);
    return (*(v24 + 8))(&v30[v29], v25);
  }

  else
  {
    v45 = v20;
    v46 = v10;
    v44 = v21;
    v59 = v16;
    LOBYTE(v66) = 0;
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
    v26 = v55;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = v62;
    v28 = v63;
    v32 = *(v54 + 32);
    v33 = v64;
    v55 = v11;
    v32(v64, v26, v11);
    type metadata accessor for Set<Date.ComponentsFormatStyle.Field>();
    v65 = 1;
    lazy protocol witness table accessor for type Set<Date.ComponentsFormatStyle.Field> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<Date.ComponentsFormatStyle.Field> and conformance <> Set<A>, lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v34 = v61;
    v35 = v59;
    *&v33[v59[5]] = v66;
    LOBYTE(v66) = 2;
    v43 = 0;
    *&v33[v35[6]] = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v66) = 3;
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy, MEMORY[0x1E6968EF8]);
    v36 = v46;
    v37 = v52;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v53 + 32))(&v33[v35[7]], v36, v37);
    v65 = 4;
    lazy protocol witness table accessor for type TextSizeVariant and conformance TextSizeVariant();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v33[v45] = v66;
    LOBYTE(v66) = 5;
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
    v38 = v51;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v50 + 32))(&v33[v59[9]], v49, v38);
    LOBYTE(v66) = 6;
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
    v39 = v48;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v27 + 40))(&v33[v34], v39, v28);
    v65 = 7;
    lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency and conformance TimeDataFormatting.UpdateFrequency();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v33[v44] = v66;
    LOBYTE(v66) = 8;
    v33[v59[12]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v66) = 9;
    LOBYTE(v39) = KeyedDecodingContainer.decode(_:forKey:)();
    v40 = v59[13];
    (*(v56 + 8))(v57, v58);
    v41 = v39 & 1;
    v42 = v64;
    v64[v40] = v41;
    outlined init with copy of SystemFormatStyle.DateOffset(v42, v47, type metadata accessor for SystemFormatStyle.DateOffset);
    __swift_destroy_boxed_opaque_existential_1(v60);
    return outlined destroy of SystemFormatStyle.DateOffset(v42, type metadata accessor for SystemFormatStyle.DateOffset);
  }
}

uint64_t protocol witness for FormatStyle.locale(_:) in conformance SystemFormatStyle.DateOffset@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with copy of SystemFormatStyle.DateOffset(v3, a3, type metadata accessor for SystemFormatStyle.DateOffset);
  v7 = *(a2 + 36);
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 24);

  return v9(a3 + v7, a1, v8);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SystemFormatStyle.DateOffset()
{
  Hasher.init(_seed:)();
  SystemFormatStyle.DateOffset.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SystemFormatStyle.DateOffset()
{
  Hasher.init(_seed:)();
  SystemFormatStyle.DateOffset.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t SystemFormatStyle.DateOffset.discreteInput(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v192 = a1;
  v187 = a2;
  v161 = type metadata accessor for Calendar.Component();
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v159 = &v155 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Date.ComponentsFormatStyle.Field?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v163 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SystemFormatStyle.DateOffset();
  MEMORY[0x1EEE9AC00](v6);
  v173 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<Date>();
  v171 = v8;
  v169 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v162 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v167 = &v155 - v11;
  type metadata accessor for Range<Date>?(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v168 = &v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v170 = &v155 - v15;
  v16 = MEMORY[0x1E69694D0];
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v179 = (&v155 - v18);
  type metadata accessor for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field), v16);
  v165 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v166 = &v155 - v20;
  v186 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v188 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v158 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v182 = &v155 - v23;
  v181 = type metadata accessor for Date.ComponentsFormatStyle();
  v24 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v180 = &v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for Date();
  v191 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v156 = &v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v175 = &v155 - v28;
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v164 = &v155 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v157 = &v155 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v172 = &v155 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v183 = &v155 - v36;
  v37 = MEMORY[0x1E696A1A8];
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = &v155 - v39;
  type metadata accessor for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (Duration.UnitsFormatStyle.Attributed, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field), v37);
  v176 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v177 = &v155 - v42;
  v43 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
  v184 = *(v43 - 8);
  v185 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v178 = &v155 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)?(0);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v47 = &v155 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Duration.TimeFormatStyle.Attributed, Date.ComponentsFormatStyle.Field)();
  v49 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v155 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Duration.TimeFormatStyle.Attributed();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v155 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v54) = *(v2 + v6[13]);
  v190 = v2;
  if ((v54 & 1) == 0 && *(v2 + v6[12]) != 1 || *(v2 + v6[11]) <= 1u)
  {
    v174 = v24;
    SystemFormatStyle.DateOffset.timeStyle(for:)(v192, v47);
    type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)();
    v57 = v56;
    if ((*(*(v56 - 8) + 48))(v47, 1, v56) != 1)
    {
      v185 = *(v57 + 48);
      v87 = *(v49 + 48);
      v88 = *(v53 + 32);
      v88(v51, v47, v52);
      v89 = v188;
      v90 = &v51[v87];
      v91 = v186;
      (*(v188 + 32))(v90, &v47[v185], v186);
      v92 = *(v49 + 48);
      v88(v55, v51, v52);
      (*(v89 + 8))(&v51[v92], v91);
      v84 = v190;
      Date.timeIntervalSince(_:)();
      static Duration.seconds(_:)();
      Duration.TimeFormatStyle.Attributed.discreteInput(before:)();
      v86 = v93;
      (*(v53 + 8))(v55, v52);
      goto LABEL_12;
    }

    outlined destroy of SystemFormatStyle.DateOffset(v47, type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)?);
    v24 = v174;
  }

  v58 = v192;
  SystemFormatStyle.DateOffset.unitsStyle(for:)(v192, v40);
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  v60 = v59;
  if ((*(*(v59 - 8) + 48))(v40, 1, v59) != 1)
  {
    v69 = *(v60 + 48);
    v182 = *(v60 + 64);
    v70 = v176;
    v71 = v177;
    v72 = *(v176 + 48);
    v73 = *(v176 + 64);
    v180 = v69;
    v181 = v73;
    v74 = v185;
    v75 = *(v184 + 32);
    v75(v177, v40, v185);
    v76 = v188;
    v77 = *(v188 + 32);
    v78 = &v71[v72];
    v79 = v186;
    v77(v78, &v180[v40], v186);
    v77(&v71[v181], &v182[v40], v79);
    v80 = *(v70 + 48);
    v81 = *(v70 + 64);
    v82 = v178;
    v75(v178, v71, v74);
    v83 = *(v76 + 8);
    v83(&v71[v81], v79);
    v83(&v71[v80], v79);
    v84 = v190;
    Date.timeIntervalSince(_:)();
    static Duration.seconds(_:)();
    Duration.UnitsFormatStyle.Attributed.discreteInput(before:)();
    v86 = v85;
    (*(v184 + 8))(v82, v185);
LABEL_12:
    v94 = static Date.> infix(_:_:)();
    v95 = v189;
    v96 = v191;
    v97 = v183;
    if (v94)
    {
      (*(v191 + 16))(v183, v84, v189);
      v98 = 0;
    }

    else
    {
      v98 = 1;
    }

    v99 = v187;
    v100 = *(v96 + 56);
    v100(v97, v98, 1, v95);
    if ((v86 & 1) == 0)
    {
      v103 = v175;
      SystemFormatStyle.DateOffset.nextInputRoundingHigher(for:)(v175);
      specialized max<A>(_:ifPresent:)(v103, v97, v99);
      (*(v96 + 8))(v103, v95);
      outlined destroy of SystemFormatStyle.DateOffset(v97, type metadata accessor for Date?);
      return (v100)(v99, 0, 1, v95);
    }

    v101 = v97;
    v102 = v99;
    return _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v101, v102, type metadata accessor for Date?);
  }

  v185 = v6;
  outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(v40, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  v61 = v179;
  SystemFormatStyle.DateOffset.componentsStyle(for:)(v58, v179);
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
  v63 = v62;
  v64 = (*(*(v62 - 8) + 48))(v61, 1, v62);
  v65 = v191;
  if (v64 == 1)
  {
    outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(v61, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
    v66 = static Date.< infix(_:_:)();
    v67 = v189;
    if (v66)
    {
      v68 = v164;
      SystemFormatStyle.DateOffset.nextInputRoundingLower(for:)(v164);
    }

    else
    {
      Date.timeIntervalSinceReferenceDate.getter();
      v68 = v164;
      Date.init(timeIntervalSinceReferenceDate:)();
    }

    (*(v65 + 56))(v68, 0, 1, v67);
    v101 = v68;
    v102 = v187;
    return _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v101, v102, type metadata accessor for Date?);
  }

  v105 = *(v63 + 64);
  v183 = *(v63 + 48);
  v184 = v105;
  v106 = v165;
  v107 = *(v165 + 48);
  v108 = *(v165 + 64);
  v174 = v24;
  v109 = *(v24 + 32);
  v110 = v166;
  v111 = v181;
  v109(v166, v61, v181);
  v113 = (v188 + 32);
  v112 = *(v188 + 32);
  v114 = &v110[v107];
  v115 = v186;
  v112(v114, v61 + v183, v186);
  v112(&v110[v108], v61 + v184, v115);
  v116 = *(v106 + 48);
  v117 = *(v106 + 64);
  v109(v180, v110, v111);
  v118 = v191;
  v183 = v113;
  v179 = v112;
  v112(v182, &v110[v116], v115);
  v119 = &v110[v117];
  v120 = v188 + 8;
  v184 = *(v188 + 8);
  (v184)(v119, v115);
  v121 = v167;
  v122 = v190;
  SystemFormatStyle.DateOffset.dateRange(for:)(v192, v167);
  v123 = v170;
  Date.ComponentsFormatStyle.discreteInput(before:)();
  outlined destroy of SystemFormatStyle.DateOffset(v121, type metadata accessor for Range<Date>);
  v124 = v122;
  v125 = v122;
  v126 = v173;
  outlined init with copy of SystemFormatStyle.DateOffset(v124, v173, type metadata accessor for SystemFormatStyle.DateOffset);
  v127 = v168;
  outlined init with copy of SystemFormatStyle.DateOffset(v123, v168, type metadata accessor for Range<Date>?);
  v128 = 1;
  v129 = v171;
  v130 = (*(v169 + 48))(v127, 1, v171);
  v131 = v172;
  if (v130 != 1)
  {
    v132 = v162;
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v127, v162, type metadata accessor for Range<Date>);
    v133 = static Date.== infix(_:_:)();
    v134 = v132;
    if (v133)
    {
      v134 = v132 + *(v129 + 36);
    }

    (*(v118 + 16))(v131, v134, v189);
    outlined destroy of SystemFormatStyle.DateOffset(v132, type metadata accessor for Range<Date>);
    v128 = 0;
  }

  outlined destroy of SystemFormatStyle.DateOffset(v123, type metadata accessor for Range<Date>?);
  v135 = *(v118 + 56);
  v136 = v128;
  v137 = v189;
  v135(v131, v136, 1, v189);
  outlined destroy of SystemFormatStyle.DateOffset(v126, type metadata accessor for SystemFormatStyle.DateOffset);
  v138 = static Date.> infix(_:_:)();
  if (v138)
  {
    v139 = v187;
    specialized max<A>(_:ifPresent:)(v125, v131, v187);
    outlined destroy of SystemFormatStyle.DateOffset(v131, type metadata accessor for Date?);
    (*(v174 + 8))(v180, v181);
    v135(v139, 0, 1, v137);
    return (v184)(v182, v186);
  }

  v140 = v186;
  if (one-time initialization token for orderedFields != -1)
  {
    v138 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v138);
  v141 = v182;
  *(&v155 - 2) = v125;
  *(&v155 - 1) = v141;
  v142 = v163;
  specialized BidirectionalCollection.last(where:)(partial apply for closure #1 in SystemFormatStyle.DateOffset.discreteInput(before:), v143, v163);
  if ((*(v188 + 48))(v142, 1, v140) == 1)
  {
    (*(v174 + 8))(v180, v181);
    outlined destroy of SystemFormatStyle.DateOffset(v142, type metadata accessor for Date.ComponentsFormatStyle.Field?);
    v144 = v187;
    v145 = v184;
LABEL_33:
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v131, v144, type metadata accessor for Date?);
    return v145(v182, v140);
  }

  v192 = v120;
  v146 = v158;
  v179(v158, v142, v140);
  v147 = v159;
  SystemFormatStyle.DateOffset.component(for:)(v146, v159);
  v148 = v157;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v160 + 8))(v147, v161);
  v149 = v191;
  v150 = v189;
  if ((*(v191 + 48))(v148, 1, v189) == 1)
  {
    v145 = v184;
    (v184)(v146, v140);
    (*(v174 + 8))(v180, v181);
    outlined destroy of SystemFormatStyle.DateOffset(v148, type metadata accessor for Date?);
    v144 = v187;
    goto LABEL_33;
  }

  v151 = v156;
  (*(v149 + 32))(v156, v148, v150);
  v152 = v187;
  specialized max<A>(_:ifPresent:)(v151, v131, v187);
  (*(v149 + 8))(v151, v150);
  v153 = v146;
  v154 = v184;
  (v184)(v153, v140);
  outlined destroy of SystemFormatStyle.DateOffset(v131, type metadata accessor for Date?);
  (*(v174 + 8))(v180, v181);
  v135(v152, 0, 1, v150);
  return v154(v182, v140);
}

uint64_t SystemFormatStyle.DateOffset.nextInputRoundingHigher(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  Duration.components.getter();
  Date.addingTimeInterval(_:)();
  Date.timeIntervalSince(_:)();
  static Duration.seconds(_:)();
  if ((static Duration.< infix(_:_:)() & 1) == 0)
  {
    return (*(v3 + 32))(a1, v11, v2);
  }

  Date.timeIntervalSinceReferenceDate.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  Date.timeIntervalSince(_:)();
  static Date.+ infix(_:_:)();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  v12 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v13 = *(v3 + 8);
  v13(v11, v2);
  v14 = (v3 + 32);
  if (v12)
  {
    v13(v8, v2);
    return (*v14)(a1, v5, v2);
  }

  else
  {
    v13(v5, v2);
    return (*v14)(a1, v8, v2);
  }
}

uint64_t SystemFormatStyle.DateOffset.nextInputRoundingLower(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  Duration.components.getter();
  Date.addingTimeInterval(_:)();
  Date.timeIntervalSince(_:)();
  static Duration.seconds(_:)();
  if ((static Duration.< infix(_:_:)() & 1) == 0)
  {
    return (*(v3 + 32))(a1, v11, v2);
  }

  Date.timeIntervalSinceReferenceDate.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  Date.timeIntervalSince(_:)();
  static Date.+ infix(_:_:)();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  v12 = dispatch thunk of static Comparable.< infix(_:_:)();
  v13 = *(v3 + 8);
  v13(v11, v2);
  v14 = (v3 + 32);
  if (v12)
  {
    v13(v8, v2);
    return (*v14)(a1, v5, v2);
  }

  else
  {
    v13(v5, v2);
    return (*v14)(a1, v8, v2);
  }
}

uint64_t SystemFormatStyle.DateOffset.discreteInput(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v188 = a1;
  v183 = a2;
  v157 = type metadata accessor for Calendar.Component();
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v155 = &v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Date.ComponentsFormatStyle.Field?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v159 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SystemFormatStyle.DateOffset();
  MEMORY[0x1EEE9AC00](v6);
  v168 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<Date>();
  v167 = v8;
  v165 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v158 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v163 = &v151 - v11;
  type metadata accessor for Range<Date>?(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v164 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v166 = &v151 - v15;
  v16 = MEMORY[0x1E69694D0];
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v175 = &v151 - v18;
  type metadata accessor for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field), v16);
  v161 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v162 = &v151 - v20;
  v182 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v185 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v154 = &v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v178 = &v151 - v23;
  v177 = type metadata accessor for Date.ComponentsFormatStyle();
  v24 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v176 = &v151 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for Date();
  v184 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v152 = &v151 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v171 = &v151 - v28;
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v160 = &v151 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v153 = &v151 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v169 = &v151 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v179 = (&v151 - v36);
  v37 = MEMORY[0x1E696A1A8];
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = &v151 - v39;
  type metadata accessor for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (Duration.UnitsFormatStyle.Attributed, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field), v37);
  v172 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v173 = &v151 - v42;
  v43 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
  v180 = *(v43 - 8);
  v181 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v174 = &v151 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)?(0);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v47 = &v151 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Duration.TimeFormatStyle.Attributed, Date.ComponentsFormatStyle.Field)();
  v49 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v151 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Duration.TimeFormatStyle.Attributed();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v151 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v54) = *(v2 + v6[13]);
  v187 = v2;
  if ((v54 & 1) == 0 && *(v2 + v6[12]) != 1 || *(v2 + v6[11]) <= 1u)
  {
    v170 = v24;
    SystemFormatStyle.DateOffset.timeStyle(for:)(v188, v47);
    type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)();
    v57 = v56;
    if ((*(*(v56 - 8) + 48))(v47, 1, v56) != 1)
    {
      v181 = *(v57 + 48);
      v86 = *(v49 + 48);
      v87 = v53;
      v88 = *(v53 + 32);
      v88(v51, v47, v52);
      v89 = v185;
      v90 = &v51[v86];
      v91 = v182;
      (*(v185 + 32))(v90, &v47[v181], v182);
      v92 = *(v49 + 48);
      v88(v55, v51, v52);
      (*(v89 + 8))(&v51[v92], v91);
      v79 = v187;
      Date.timeIntervalSince(_:)();
      static Duration.seconds(_:)();
      Duration.TimeFormatStyle.Attributed.discreteInput(after:)();
      v185 = v93;
      v85 = v94;
      (*(v87 + 8))(v55, v52);
      goto LABEL_12;
    }

    outlined destroy of SystemFormatStyle.DateOffset(v47, type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)?);
    v2 = v187;
    v24 = v170;
  }

  v58 = v188;
  SystemFormatStyle.DateOffset.unitsStyle(for:)(v188, v40);
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  v60 = v59;
  if ((*(*(v59 - 8) + 48))(v40, 1, v59) != 1)
  {
    v68 = *(v60 + 48);
    v178 = *(v60 + 64);
    v69 = v172;
    v70 = v173;
    v71 = *(v172 + 48);
    v72 = *(v172 + 64);
    v176 = v68;
    v177 = v72;
    v73 = v181;
    v74 = *(v180 + 32);
    v74(v173, v40, v181);
    v75 = v185;
    v76 = *(v185 + 32);
    v77 = (v70 + v71);
    v78 = v182;
    v76(v77, &v176[v40], v182);
    v76((v70 + v177), &v178[v40], v78);
    v79 = v187;
    v178 = *(v69 + 48);
    v80 = *(v69 + 64);
    v81 = v174;
    v74(v174, v70, v73);
    v82 = *(v75 + 8);
    v82((v70 + v80), v78);
    v82(&v178[v70], v78);
    Date.timeIntervalSince(_:)();
    static Duration.seconds(_:)();
    Duration.UnitsFormatStyle.Attributed.discreteInput(after:)();
    v185 = v83;
    v85 = v84;
    (*(v180 + 8))(v81, v181);
LABEL_12:
    v95 = static Date.< infix(_:_:)();
    v96 = v186;
    v97 = v184;
    if (v95)
    {
      v98 = v179;
      (*(v184 + 16))(v179, v79, v186);
      v99 = 0;
    }

    else
    {
      v99 = 1;
      v98 = v179;
    }

    v100 = *(v97 + 56);
    v100(v98, v99, 1, v96);
    if ((v85 & 1) == 0)
    {
      v102 = v171;
      SystemFormatStyle.DateOffset.nextInputRoundingHigher(for:)(v171);
      v103 = v183;
      specialized min<A>(_:ifPresent:)(v102, v98, v183);
      (*(v97 + 8))(v102, v96);
      outlined destroy of SystemFormatStyle.DateOffset(v98, type metadata accessor for Date?);
      return (v100)(v103, 0, 1, v96);
    }

    v101 = v98;
    return _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v101, v183, type metadata accessor for Date?);
  }

  outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(v40, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  v61 = v175;
  SystemFormatStyle.DateOffset.componentsStyle(for:)(v58, v175);
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
  v63 = v62;
  if ((*(*(v62 - 8) + 48))(v61, 1, v62) == 1)
  {
    outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(v61, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
    v64 = static Date.< infix(_:_:)();
    v65 = v184;
    v66 = v160;
    if (v64)
    {
      v67 = v186;
      (*(v184 + 16))(v160, v2, v186);
    }

    else
    {
      SystemFormatStyle.DateOffset.nextInputRoundingHigher(for:)(v160);
      v67 = v186;
    }

    (*(v65 + 56))(v66, 0, 1, v67);
    v101 = v66;
    return _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v101, v183, type metadata accessor for Date?);
  }

  v179 = v6;
  v105 = *(v63 + 48);
  v181 = *(v63 + 64);
  v106 = v161;
  v107 = *(v161 + 48);
  v180 = *(v161 + 64);
  v170 = v24;
  v108 = *(v24 + 32);
  v109 = v162;
  v110 = v177;
  v108(v162, v61, v177);
  v112 = v185 + 32;
  v111 = *(v185 + 32);
  v113 = &v61[v105];
  v114 = v182;
  v111(&v109[v107], v113, v182);
  v111(&v109[v180], &v61[v181], v114);
  v115 = *(v106 + 48);
  v116 = *(v106 + 64);
  v108(v176, v109, v110);
  v180 = v112;
  v175 = v111;
  v111(v178, &v109[v115], v114);
  v181 = *(v185 + 8);
  (v181)(&v109[v116], v114);
  v117 = v163;
  v118 = v187;
  SystemFormatStyle.DateOffset.dateRange(for:)(v188, v163);
  v119 = v166;
  Date.ComponentsFormatStyle.discreteInput(after:)();
  outlined destroy of SystemFormatStyle.DateOffset(v117, type metadata accessor for Range<Date>);
  v120 = v118;
  v121 = v168;
  outlined init with copy of SystemFormatStyle.DateOffset(v118, v168, type metadata accessor for SystemFormatStyle.DateOffset);
  v122 = v164;
  outlined init with copy of SystemFormatStyle.DateOffset(v119, v164, type metadata accessor for Range<Date>?);
  v123 = 1;
  v124 = v167;
  v125 = (*(v165 + 48))(v122, 1, v167);
  v126 = v184;
  v127 = v169;
  if (v125 != 1)
  {
    v128 = v158;
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v122, v158, type metadata accessor for Range<Date>);
    v129 = static Date.== infix(_:_:)();
    v130 = v128;
    if (v129)
    {
      v130 = v128 + *(v124 + 36);
    }

    (*(v126 + 16))(v127, v130, v186);
    outlined destroy of SystemFormatStyle.DateOffset(v128, type metadata accessor for Range<Date>);
    v123 = 0;
  }

  outlined destroy of SystemFormatStyle.DateOffset(v119, type metadata accessor for Range<Date>?);
  v131 = *(v126 + 56);
  v132 = v123;
  v133 = v186;
  v131(v127, v132, 1, v186);
  outlined destroy of SystemFormatStyle.DateOffset(v121, type metadata accessor for SystemFormatStyle.DateOffset);
  v134 = static Date.< infix(_:_:)();
  if (v134)
  {
    v135 = v183;
    specialized min<A>(_:ifPresent:)(v120, v127, v183);
    outlined destroy of SystemFormatStyle.DateOffset(v127, type metadata accessor for Date?);
    (*(v170 + 8))(v176, v177);
    v131(v135, 0, 1, v133);
    return (v181)(v178, v114);
  }

  if (one-time initialization token for orderedFields != -1)
  {
    v134 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v134);
  v136 = v178;
  *(&v151 - 2) = v120;
  *(&v151 - 1) = v136;
  v137 = v159;
  specialized BidirectionalCollection.last(where:)(partial apply for closure #1 in SystemFormatStyle.DateOffset.discreteInput(after:), v138, v159);
  v139 = v182;
  if ((*(v185 + 48))(v137, 1, v182) == 1)
  {
    (*(v170 + 8))(v176, v177);
    outlined destroy of SystemFormatStyle.DateOffset(v137, type metadata accessor for Date.ComponentsFormatStyle.Field?);
    v140 = v181;
LABEL_33:
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v127, v183, type metadata accessor for Date?);
    return v140(v178, v139);
  }

  v141 = v154;
  (v175)(v154, v137, v139);
  v142 = v155;
  v143 = v139;
  SystemFormatStyle.DateOffset.component(for:)(v141, v155);
  v144 = v153;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v156 + 8))(v142, v157);
  v145 = v184;
  v146 = v186;
  if ((*(v184 + 48))(v144, 1, v186) == 1)
  {
    v140 = v181;
    (v181)(v141, v139);
    (*(v170 + 8))(v176, v177);
    outlined destroy of SystemFormatStyle.DateOffset(v144, type metadata accessor for Date?);
    v127 = v169;
    goto LABEL_33;
  }

  v147 = v152;
  (*(v145 + 32))(v152, v144, v146);
  v148 = v183;
  v149 = v169;
  specialized min<A>(_:ifPresent:)(v147, v169, v183);
  (*(v145 + 8))(v147, v146);
  v150 = v181;
  (v181)(v141, v143);
  outlined destroy of SystemFormatStyle.DateOffset(v149, type metadata accessor for Date?);
  (*(v170 + 8))(v176, v177);
  v131(v148, 0, 1, v146);
  return v150(v178, v143);
}

BOOL closure #1 in SystemFormatStyle.DateOffset.discreteInput(before:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemFormatStyle.DateOffset();
  if ((specialized Set.contains(_:)(a1, *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  Date.ComponentsFormatStyle.Field.magnitude.getter(&v8);
  v5 = v8;
  Date.ComponentsFormatStyle.Field.magnitude.getter(&v7);
  return v7 < v5;
}

uint64_t SystemFormatStyle.DateOffset.input(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  type metadata accessor for Range<Date>?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v111 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<Date>();
  v112 = v6;
  v110 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v109 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v103 = &v102 - v9;
  v10 = MEMORY[0x1E69694D0];
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v115 = &v102 - v12;
  type metadata accessor for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field), v10);
  v104 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v102 - v14;
  v108 = type metadata accessor for Date.ComponentsFormatStyle();
  v106 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E696A1A8];
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v102 - v18;
  type metadata accessor for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (Duration.UnitsFormatStyle.Attributed, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field), v16);
  v113 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v102 - v21;
  v23 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
  v116 = *(v23 - 8);
  v117 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v114 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)?(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Duration.TimeFormatStyle.Attributed, Date.ComponentsFormatStyle.Field)();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Duration.TimeFormatStyle.Attributed();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for SystemFormatStyle.DateOffset();
  v37 = *(v2 + v36[13]);
  v119 = a1;
  if ((v37 & 1) == 0 && *(v2 + v36[12]) != 1 || *(v2 + v36[11]) <= 1u)
  {
    SystemFormatStyle.DateOffset.timeStyle(for:)(a1, v27);
    type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)();
    v39 = v38;
    if ((*(*(v38 - 8) + 48))(v27, 1, v38) != 1)
    {
      v63 = *(v39 + 48);
      v116 = *(v29 + 48);
      v117 = v63;
      v102 = v33;
      v64 = *(v33 + 32);
      v64(v31, v27, v32);
      v65 = type metadata accessor for Date.ComponentsFormatStyle.Field();
      v66 = *(v65 - 8);
      (*(v66 + 32))(&v31[v116], &v27[v117], v65);
      v67 = *(v29 + 48);
      v64(v35, v31, v32);
      (*(v66 + 8))(&v31[v67], v65);
      Date.timeIntervalSince(_:)();
      static Duration.seconds(_:)();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed and conformance Duration.TimeFormatStyle.Attributed, MEMORY[0x1E696A160]);
      DiscreteFormatStyle<>.input(before:)();
      v69 = v68;
      (*(v102 + 8))(v35, v32);
      if (v69)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    outlined destroy of SystemFormatStyle.DateOffset(v27, type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)?);
    a1 = v119;
  }

  SystemFormatStyle.DateOffset.unitsStyle(for:)(a1, v19);
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  v41 = v40;
  if ((*(*(v40 - 8) + 48))(v19, 1, v40) != 1)
  {
    v49 = *(v41 + 48);
    v115 = *(v41 + 64);
    v50 = v113;
    v110 = *(v113 + 48);
    v111 = v49;
    v112 = *(v113 + 64);
    v106 = v2;
    v51 = *(v116 + 32);
    v51(v22, v19, v117);
    v52 = type metadata accessor for Date.ComponentsFormatStyle.Field();
    v53 = *(v52 - 8);
    v54 = *(v53 + 32);
    v54(&v22[v110], &v111[v19], v52);
    v54(&v22[v112], (v19 + v115), v52);
    v55 = *(v50 + 48);
    v56 = *(v50 + 64);
    v57 = v114;
    v58 = v117;
    v51(v114, v22, v117);
    v59 = *(v53 + 8);
    v59(&v22[v56], v52);
    v59(&v22[v55], v52);
    Date.timeIntervalSince(_:)();
    static Duration.seconds(_:)();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed and conformance Duration.UnitsFormatStyle.Attributed, MEMORY[0x1E696A1A8]);
    DiscreteFormatStyle<>.input(before:)();
    LOBYTE(v56) = v60;
    (*(v116 + 8))(v57, v58);
    if (v56)
    {
LABEL_10:
      v61 = type metadata accessor for Date();
      return (*(*(v61 - 8) + 56))(v118, 1, 1, v61);
    }

LABEL_12:
    v70 = v118;
    SystemFormatStyle.DateOffset.nextInputRoundingLower(for:)(v118);
    v46 = type metadata accessor for Date();
    v47 = *(*(v46 - 8) + 56);
    v48 = v70;
    return v47(v48, 0, 1, v46);
  }

  outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(v19, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  v42 = v115;
  SystemFormatStyle.DateOffset.componentsStyle(for:)(a1, v115);
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
  v44 = v43;
  if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
  {
    outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(v42, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
    Date.timeIntervalSinceReferenceDate.getter();
    v45 = v118;
    Date.init(timeIntervalSinceReferenceDate:)();
    v46 = type metadata accessor for Date();
    v47 = *(*(v46 - 8) + 56);
    v48 = v45;
    return v47(v48, 0, 1, v46);
  }

  v71 = *(v44 + 48);
  v72 = *(v44 + 64);
  v73 = v104;
  v74 = v105;
  v113 = *(v104 + 48);
  v114 = v71;
  v116 = *(v104 + 64);
  v117 = v72;
  v76 = v106 + 32;
  v75 = *(v106 + 32);
  v77 = v108;
  v75(v105, v42, v108);
  v78 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v79 = *(v78 - 8);
  v106 = v2;
  v80 = v79;
  v81 = *(v79 + 32);
  v81(&v74[v113], &v114[v42], v78);
  v81(&v74[v116], (v42 + v117), v78);
  v82 = *(v73 + 48);
  v83 = *(v73 + 64);
  v84 = v107;
  v75(v107, v74, v77);
  v85 = *(v80 + 8);
  v85(&v74[v83], v78);
  v85(&v74[v82], v78);
  v86 = v109;
  SystemFormatStyle.DateOffset.dateRange(for:)(v119, v109);
  v87 = v111;
  Date.ComponentsFormatStyle.input(before:)();
  outlined destroy of SystemFormatStyle.DateOffset(v86, type metadata accessor for Range<Date>);
  v88 = v112;
  v89 = (v76 - 24);
  if ((*(v110 + 48))(v87, 1, v112) == 1)
  {
    outlined destroy of SystemFormatStyle.DateOffset(v87, type metadata accessor for Range<Date>?);
    v90 = static Date.< infix(_:_:)();
    (*v89)(v84, v77);
    v91 = type metadata accessor for Date();
    v92 = *(v91 - 8);
    v93 = v92;
    if (v90)
    {
      v94 = v118;
      (*(v92 + 16))();
      return (*(v93 + 56))(v94, 0, 1, v91);
    }

    else
    {
      return (*(v92 + 56))(v118, 1, 1, v91);
    }
  }

  else
  {
    v95 = v87;
    v96 = v103;
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v95, v103, type metadata accessor for Range<Date>);
    v97 = static Date.== infix(_:_:)();
    (*v89)(v84, v77);
    v98 = v96;
    v99 = v118;
    if (v97)
    {
      v98 = v96 + *(v88 + 36);
    }

    v100 = type metadata accessor for Date();
    v101 = *(v100 - 8);
    (*(v101 + 16))(v99, v98, v100);
    outlined destroy of SystemFormatStyle.DateOffset(v96, type metadata accessor for Range<Date>);
    return (*(v101 + 56))(v99, 0, 1, v100);
  }
}

uint64_t SystemFormatStyle.DateOffset.input(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  type metadata accessor for Range<Date>?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v111 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<Date>();
  v112 = v6;
  v110 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v109 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v103 = &v102 - v9;
  v10 = MEMORY[0x1E69694D0];
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v115 = &v102 - v12;
  type metadata accessor for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field), v10);
  v104 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v102 - v14;
  v108 = type metadata accessor for Date.ComponentsFormatStyle();
  v106 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E696A1A8];
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v102 - v18;
  type metadata accessor for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (Duration.UnitsFormatStyle.Attributed, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field), v16);
  v113 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v102 - v21;
  v23 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
  v116 = *(v23 - 8);
  v117 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v114 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)?(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Duration.TimeFormatStyle.Attributed, Date.ComponentsFormatStyle.Field)();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Duration.TimeFormatStyle.Attributed();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for SystemFormatStyle.DateOffset();
  v37 = *(v2 + v36[13]);
  v119 = a1;
  if ((v37 & 1) == 0 && *(v2 + v36[12]) != 1 || *(v2 + v36[11]) <= 1u)
  {
    SystemFormatStyle.DateOffset.timeStyle(for:)(a1, v27);
    type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)();
    v39 = v38;
    if ((*(*(v38 - 8) + 48))(v27, 1, v38) != 1)
    {
      v63 = *(v39 + 48);
      v116 = *(v29 + 48);
      v117 = v63;
      v102 = v33;
      v64 = *(v33 + 32);
      v64(v31, v27, v32);
      v65 = type metadata accessor for Date.ComponentsFormatStyle.Field();
      v66 = *(v65 - 8);
      (*(v66 + 32))(&v31[v116], &v27[v117], v65);
      v67 = *(v29 + 48);
      v64(v35, v31, v32);
      (*(v66 + 8))(&v31[v67], v65);
      Date.timeIntervalSince(_:)();
      static Duration.seconds(_:)();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed and conformance Duration.TimeFormatStyle.Attributed, MEMORY[0x1E696A160]);
      DiscreteFormatStyle<>.input(after:)();
      v69 = v68;
      (*(v102 + 8))(v35, v32);
      if (v69)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    outlined destroy of SystemFormatStyle.DateOffset(v27, type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)?);
    a1 = v119;
  }

  SystemFormatStyle.DateOffset.unitsStyle(for:)(a1, v19);
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  v41 = v40;
  if ((*(*(v40 - 8) + 48))(v19, 1, v40) != 1)
  {
    v49 = *(v41 + 48);
    v115 = *(v41 + 64);
    v50 = v113;
    v110 = *(v113 + 48);
    v111 = v49;
    v112 = *(v113 + 64);
    v106 = v2;
    v51 = *(v116 + 32);
    v51(v22, v19, v117);
    v52 = type metadata accessor for Date.ComponentsFormatStyle.Field();
    v53 = *(v52 - 8);
    v54 = *(v53 + 32);
    v54(&v22[v110], &v111[v19], v52);
    v54(&v22[v112], (v19 + v115), v52);
    v55 = *(v50 + 48);
    v56 = *(v50 + 64);
    v57 = v114;
    v58 = v117;
    v51(v114, v22, v117);
    v59 = *(v53 + 8);
    v59(&v22[v56], v52);
    v59(&v22[v55], v52);
    Date.timeIntervalSince(_:)();
    static Duration.seconds(_:)();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed and conformance Duration.UnitsFormatStyle.Attributed, MEMORY[0x1E696A1A8]);
    DiscreteFormatStyle<>.input(after:)();
    LOBYTE(v56) = v60;
    (*(v116 + 8))(v57, v58);
    if (v56)
    {
LABEL_10:
      v61 = type metadata accessor for Date();
      return (*(*(v61 - 8) + 56))(v118, 1, 1, v61);
    }

LABEL_12:
    v70 = v118;
    SystemFormatStyle.DateOffset.nextInputRoundingHigher(for:)(v118);
    v46 = type metadata accessor for Date();
    v47 = *(*(v46 - 8) + 56);
    v48 = v70;
    return v47(v48, 0, 1, v46);
  }

  outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(v19, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  v42 = v115;
  SystemFormatStyle.DateOffset.componentsStyle(for:)(a1, v115);
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
  v44 = v43;
  if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
  {
    outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(v42, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
    Date.timeIntervalSinceReferenceDate.getter();
    v45 = v118;
    Date.init(timeIntervalSinceReferenceDate:)();
    v46 = type metadata accessor for Date();
    v47 = *(*(v46 - 8) + 56);
    v48 = v45;
    return v47(v48, 0, 1, v46);
  }

  v71 = *(v44 + 48);
  v72 = *(v44 + 64);
  v73 = v104;
  v74 = v105;
  v113 = *(v104 + 48);
  v114 = v71;
  v116 = *(v104 + 64);
  v117 = v72;
  v76 = v106 + 32;
  v75 = *(v106 + 32);
  v77 = v108;
  v75(v105, v42, v108);
  v78 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v79 = *(v78 - 8);
  v106 = v2;
  v80 = v79;
  v81 = *(v79 + 32);
  v81(&v74[v113], &v114[v42], v78);
  v81(&v74[v116], (v42 + v117), v78);
  v82 = *(v73 + 48);
  v83 = *(v73 + 64);
  v84 = v107;
  v75(v107, v74, v77);
  v85 = *(v80 + 8);
  v85(&v74[v83], v78);
  v85(&v74[v82], v78);
  v86 = v109;
  SystemFormatStyle.DateOffset.dateRange(for:)(v119, v109);
  v87 = v111;
  Date.ComponentsFormatStyle.input(after:)();
  outlined destroy of SystemFormatStyle.DateOffset(v86, type metadata accessor for Range<Date>);
  v88 = v112;
  v89 = (v76 - 24);
  if ((*(v110 + 48))(v87, 1, v112) == 1)
  {
    outlined destroy of SystemFormatStyle.DateOffset(v87, type metadata accessor for Range<Date>?);
    v90 = static Date.< infix(_:_:)();
    (*v89)(v84, v77);
    v91 = type metadata accessor for Date();
    v92 = *(v91 - 8);
    v93 = v92;
    if (v90)
    {
      v94 = v118;
      (*(v92 + 16))();
      return (*(v93 + 56))(v94, 0, 1, v91);
    }

    else
    {
      return (*(v92 + 56))(v118, 1, 1, v91);
    }
  }

  else
  {
    v95 = v87;
    v96 = v103;
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v95, v103, type metadata accessor for Range<Date>);
    v97 = static Date.== infix(_:_:)();
    (*v89)(v84, v77);
    v98 = v96;
    v99 = v118;
    if (v97)
    {
      v98 = v96 + *(v88 + 36);
    }

    v100 = type metadata accessor for Date();
    v101 = *(v100 - 8);
    (*(v101 + 16))(v99, v98, v100);
    outlined destroy of SystemFormatStyle.DateOffset(v96, type metadata accessor for Range<Date>);
    return (*(v101 + 56))(v99, 0, 1, v100);
  }
}

uint64_t SystemFormatStyle.DateOffset.unitsConfigurationAllowsTimeStyle.getter()
{
  result = type metadata accessor for SystemFormatStyle.DateOffset();
  v2 = result;
  v3 = *(v0 + *(result + 32));
  v4 = *(v0 + *(result + 24));
  v5 = v4;
  if (v3 >= 3)
  {
    v6 = v4 + 2;
    v7 = __OFADD__(v4, 2);
    if (__OFADD__(v4, 2))
    {
      __break(1u);
    }

    else
    {
      v5 = v6 - v3;
      if (!__OFSUB__(v6, v3))
      {
        if (v5 < 1)
        {
          goto LABEL_15;
        }

        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_8:
  if (v5 == 2)
  {
    v8 = *(v0 + *(result + 20));
    type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date.ComponentsFormatStyle.Field>, MEMORY[0x1E6969498], MEMORY[0x1E69E6F90]);
    type metadata accessor for Date.ComponentsFormatStyle.Field();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_18DDAB4C0;
    static Date.ComponentsFormatStyle.Field.minute.getter();
    static Date.ComponentsFormatStyle.Field.second.getter();
    v10 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt0gq5Tf4g_n(v9);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    _sSh2eeoiySbShyxG_ABtFZ10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt1g5(v8, v10);
    LOBYTE(v8) = v11;

    if (v8)
    {
      return 1;
    }
  }

  if (v3 < 3)
  {
    goto LABEL_18;
  }

  v6 = v4 + 2;
  v7 = __OFADD__(v4, 2);
LABEL_15:
  if (v7)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = v6 - v3;
  if (!__OFSUB__(v6, v3))
  {
    if (v4 < 1)
    {
      return 0;
    }

LABEL_18:
    if (v4 == 3)
    {
      v12 = *(v0 + v2[5]);
      type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date.ComponentsFormatStyle.Field>, MEMORY[0x1E6969498], MEMORY[0x1E69E6F90]);
      type metadata accessor for Date.ComponentsFormatStyle.Field();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_18DDAF080;
      static Date.ComponentsFormatStyle.Style.spellOut.getter();
      static Date.ComponentsFormatStyle.Field.minute.getter();
      static Date.ComponentsFormatStyle.Field.second.getter();
      v14 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt0gq5Tf4g_n(v13);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      _sSh2eeoiySbShyxG_ABtFZ10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt1g5(v12, v14);
      LOBYTE(v12) = v15;

      return v12 & 1;
    }

    return 0;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t SystemFormatStyle.DateOffset.fieldsToDisplay(for:)(uint64_t a1)
{
  v3 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = SystemFormatStyle.DateOffset.applicableFields(for:)(a1);
  if (v8 == v9 >> 1)
  {
    if (one-time initialization token for orderedFields != -1)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v11 = static Date.ComponentsFormatStyle.Field.orderedFields;
      v12 = *(static Date.ComponentsFormatStyle.Field.orderedFields + 16);
      if (!v12)
      {
        break;
      }

      v24 = v10;
      v13 = v1[*(type metadata accessor for SystemFormatStyle.DateOffset() + 44)];
      v14 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v10 = v4 + 8;
      while (v12 <= *(v11 + 16))
      {
        --v12;
        (*(v4 + 16))(v6, v14 + *(v4 + 72) * v12, v3);
        v1 = v6;
        Date.ComponentsFormatStyle.Field.magnitude.getter(&v25);
        (*(v4 + 8))(v6, v3);
        if (v25 >= 1.0 / dbl_18DDCF488[v13] || !v12)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_20:
      swift_once();
    }

LABEL_16:
    result = swift_unknownObjectRelease();
    if (*(v11 + 16) > v12)
    {

      return v11;
    }

    __break(1u);
    goto LABEL_22;
  }

  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = type metadata accessor for SystemFormatStyle.DateOffset();
  v19 = *&v1[*(v18 + 32)];
  result = *&v1[*(v18 + 24)];
  if (v19 < 3)
  {
    return specialized Collection.prefix(_:)(result, v10, v15, v16, v17);
  }

  v21 = result + 2;
  if (__OFADD__(result, 2))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = __OFSUB__(v21, v19);
  v23 = v21 - v19;
  if (!v22)
  {
    if (v23 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v23;
    }

    return specialized Collection.prefix(_:)(result, v10, v15, v16, v17);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t specialized getter of fieldsToDisplay #1 in SystemFormatStyle.DateOffset.componentsStyle(for:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = SystemFormatStyle.DateOffset.fieldsToDisplay(for:)(a3);
    v7 = v6;
    v9 = v8;
    v11 = v10;
    swift_beginAccess();
    *a1 = v5;
    a1[1] = v7;
    a1[2] = v9;
    a1[3] = v11;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v5;
}

uint64_t SystemFormatStyle.DateOffset.applicableFields(for:)(uint64_t a1)
{
  v3 = *(v1 + *(type metadata accessor for SystemFormatStyle.DateOffset() + 20));
  v16 = v1;

  v4 = specialized _NativeSet.filter(_:)(partial apply for closure #1 in SystemFormatStyle.DateOffset.applicableFields(for:), v15, v3);
  v5 = *(v4 + 16);
  if (!v5)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v13[4] = 0;
  v14 = a1;
  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt1g5(v5, 0);
  v7 = *(type metadata accessor for Date.ComponentsFormatStyle.Field() - 8);
  specialized Sequence._copySequenceContents(initializing:)(&v17, &v6[(*(v7 + 80) + 32) & ~*(v7 + 80)], v5, v4);
  v9 = v8;

  outlined consume of Set<EventID>.Iterator._Variant();
  if (v9 == v5)
  {
    a1 = v14;
LABEL_5:
    v17 = v6;
    specialized MutableCollection<>.sort(by:)(&v17);

    v11 = v17;
    MEMORY[0x1EEE9AC00](v10);
    v13[2] = v1;
    v13[3] = a1;
    specialized Collection.firstIndex(where:)(partial apply for closure #3 in SystemFormatStyle.DateOffset.applicableFields(for:), v13, v11);
    type metadata accessor for Date.ComponentsFormatStyle.Field();
    return v11;
  }

  __break(1u);

  __break(1u);
  return result;
}

BOOL closure #1 in SystemFormatStyle.DateOffset.applicableFields(for:)(uint64_t a1, uint64_t a2)
{
  Date.ComponentsFormatStyle.Field.magnitude.getter(&v5);
  v3 = v5;
  return v3 >= 1.0 / dbl_18DDCF488[*(a2 + *(type metadata accessor for SystemFormatStyle.DateOffset() + 44))];
}

uint64_t closure #3 in SystemFormatStyle.DateOffset.applicableFields(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = a3;
  v4 = type metadata accessor for DateComponents();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Calendar.Component();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  SystemFormatStyle.DateOffset.component(for:)(a1, v10);
  v18[0] = *(type metadata accessor for SystemFormatStyle.DateOffset() + 40);
  type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18DDA6EB0;
  (*(v8 + 16))(v12 + v11, v10, v7);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v12);
  swift_setDeallocating();
  v13 = *(v8 + 8);
  v13(v12 + v11, v7);
  swift_deallocClassInstance();
  Calendar.dateComponents(_:from:to:)();

  v14 = DateComponents.value(for:)();
  v16 = v15;
  (*(v19 + 8))(v6, v20);
  v13(v10, v7);
  return (v14 != 0) & ~v16;
}

uint64_t protocol witness for UpdateFrequencyDependentFormatStyle.updateFrequency(_:) in conformance SystemFormatStyle.DateOffset@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  result = outlined init with copy of SystemFormatStyle.DateOffset(v3, a3, type metadata accessor for SystemFormatStyle.DateOffset);
  *(a3 + *(a2 + 44)) = v6;
  return result;
}

uint64_t static SystemFormatStyle.DateOffset.representation<A>(of:for:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, uint64_t *a5@<X8>)
{
  v183 = a3;
  v184 = a4;
  v188 = a1;
  v186 = a5;
  v187 = type metadata accessor for Date();
  v182 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v170 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v169 = &v166 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v166 - v10;
  v174 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  v173 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v172 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v180 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v178 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v179 = &v166 - v15;
  v16 = type metadata accessor for Calendar();
  v177 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v175 = &v166 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v176 = &v166 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v185 = &v166 - v21;
  v22 = type metadata accessor for Locale();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v166 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v166 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v166 - v30;
  v32 = type metadata accessor for SystemFormatStyle.DateOffset();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v166 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a2) = *a2;
  v35 = lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset, type metadata accessor for SystemFormatStyle.DateOffset);
  if (a2 > 1)
  {
    v189 = v183;
    v190 = v32;
    v191 = v184;
    v192 = v35;
    v193 = &protocol witness table for AttributedString;
    v79 = type metadata accessor for TimeDataFormatting.Resolvable();
    v80 = v186;
    v186[3] = v79;
    v80[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v80);
    return (*(*(v79 - 8) + 16))(boxed_opaque_existential_1, v188, v79);
  }

  v171 = v11;
  v189 = v183;
  v190 = v32;
  v191 = v184;
  v192 = v35;
  v193 = &protocol witness table for AttributedString;
  v36 = type metadata accessor for TimeDataFormatting.Resolvable();
  outlined init with copy of SystemFormatStyle.DateOffset(&v188[*(v36 + 60)], v34, type metadata accessor for SystemFormatStyle.DateOffset);
  EnvironmentValues.init()(&v189);
  v184 = v32;
  v37 = *(v32 + 36);
  v38 = *(v23 + 16);
  v188 = v34;
  v38(v31, &v34[v37], v22);
  v38(v28, v31, v22);
  v39 = v189;
  v168 = v23 + 16;
  v167 = v38;
  v38(v25, v28, v22);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v189, v25);

  v40 = *(v23 + 8);
  v183 = v22;
  v40(v25, v22);
  v41 = v190;
  if (v190)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v39, v189);
  }

  v42 = v183;
  v40(v28, v183);
  v40(v31, v42);
  v43 = v185;
  v44 = v177;
  v45 = *(v177 + 16);
  v46 = v188;
  v45(v185, &v188[v184[10]], v16);
  v47 = v176;
  v45(v176, v43, v16);
  v48 = v189;
  v49 = v175;
  v45(v175, v47, v16);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v189, v49);
  v166 = 0;

  v50 = *(v44 + 8);
  v50(v49, v16);
  v51 = v178;
  if (v41)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA08CalendarK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v48, v189);
  }

  v50(v47, v16);
  v50(v185, v16);
  v52 = v184;
  v53 = v46[v184[13]];
  v54 = v182;
  if ((v53 & 1) == 0 && (v46[v184[12]] & 1) == 0)
  {
    SystemFormatStyle.DateOffset.unitsConfigurationAllowsTimeStyle.getter();
    v55 = v181;
    v56 = v180;
    v57 = v179;
    goto LABEL_17;
  }

  v55 = v181;
  v56 = v180;
  v57 = v179;
  if (v46[v184[11]] > 1u || (v53 & SystemFormatStyle.DateOffset.unitsConfigurationAllowsTimeStyle.getter() & 1) == 0)
  {
LABEL_17:
    v83 = *&v46[v52[8]];
    if (v83 > 1)
    {
      static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
    }

    else if (v83 == 1)
    {
      if (v46[v52[12]])
      {
        static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
      }

      else
      {
        static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      }
    }

    else
    {
      static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
    }

    static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth and conformance Duration.UnitsFormatStyle.UnitWidth, MEMORY[0x1E696A1E8]);
    v84 = dispatch thunk of static Equatable.== infix(_:_:)();
    v85 = *(v56 + 8);
    v85(v51, v55);
    if (v84)
    {
      v85(v57, v55);
      LODWORD(v185) = 0;
    }

    else
    {
      static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      v86 = dispatch thunk of static Equatable.== infix(_:_:)();
      v85(v51, v55);
      if (v86)
      {
        v85(v57, v55);
        v87 = 1;
      }

      else
      {
        static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
        v88 = dispatch thunk of static Equatable.== infix(_:_:)();
        v85(v51, v55);
        v85(v57, v55);
        if (v88)
        {
          v87 = 1;
        }

        else
        {
          v87 = 2;
        }
      }

      LODWORD(v185) = v87;
    }

    v89 = *&v46[v52[5]];
    type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date.ComponentsFormatStyle.Field>, MEMORY[0x1E6969498], MEMORY[0x1E69E6F90]);
    type metadata accessor for Date.ComponentsFormatStyle.Field();
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_18DDAC2E0;
    static Date.ComponentsFormatStyle.Style.wide.getter();
    static Date.ComponentsFormatStyle.Style.narrow.getter();
    static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
    static Date.ComponentsFormatStyle.Style.spellOut.getter();
    static Date.ComponentsFormatStyle.Field.minute.getter();
    static Date.ComponentsFormatStyle.Field.second.getter();
    v91 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt0gq5Tf4g_n(v90);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    _sSh2eeoiySbShyxG_ABtFZ10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt1g5(v89, v91);
    v93 = v92;

    v94 = 0;
    if ((v93 & 1) == 0)
    {

      v94 = specialized NSCalendarUnit.init(_:)(v95);
    }

    v96 = v52[7];
    v97 = v172;
    static NumberFormatStyleConfiguration.SignDisplayStrategy.always(includingZero:)();
    v98 = v188;
    v99 = MEMORY[0x193ABCC70](&v188[v96], v97);
    v100 = *(v173 + 8);
    v101 = v174;
    v100(v97, v174);
    if (v99 & 1) != 0 || (static NumberFormatStyleConfiguration.SignDisplayStrategy.always(includingZero:)(), v102 = MEMORY[0x193ABCC70](&v98[v96], v97), v100(v97, v101), (v102))
    {
      if (one-time initialization token for offset != -1)
      {
        swift_once();
      }

      v103 = &static Text.DateStyle.offset;
    }

    else
    {
      if (one-time initialization token for relative != -1)
      {
        swift_once();
      }

      v103 = &static Text.DateStyle.relative;
    }

    v105 = v186;
    v104 = v187;
    v106 = v103[16];
    v107 = *(v103 + 1);
    LODWORD(v186) = *v103;
    if (v93)
    {
      v108 = v107;
    }

    else
    {
      v108 = v94;
    }

    if (v93)
    {
      v109 = v106;
    }

    else
    {
      v109 = v185;
    }

    v110 = *(v54 + 16);
    v111 = v171;
    v110(v171, v188, v187);
    v113 = v189;
    v112 = v190;
    v114 = type metadata accessor for ResolvableAbsoluteDate();
    v105[3] = v114;
    v105[4] = &protocol witness table for ResolvableAbsoluteDate;
    v115 = __swift_allocate_boxed_opaque_existential_1(v105);
    v110(v115, v111, v104);
    v116 = v115 + v114[5];
    *v116 = v186;
    *(v116 + 1) = v108;
    v116[16] = v109;
    v117 = v114[6];
    if (v112)
    {

      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v113, v115 + v117);

      v118 = v114[7];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v113, v115 + v118);

      v119 = v114[8];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v113, v115 + v119);

      (*(v182 + 8))(v171, v187);
      v120 = v188;
    }

    else
    {

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v121, v115 + v117);
      v122 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v113);
      v123 = v187;
      v120 = v188;
      v124 = v182;
      v125 = v171;
      if (v122)
      {
        v126 = *(*v122 + 248);
        v127 = v122;
        v128 = v115 + v114[7];
        v129 = v127 + v126;
        v130 = v183;
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v131 = v183;
        v129 = __swift_project_value_buffer(v183, static LocaleKey.defaultValue);
        v128 = v115 + v114[7];
        v130 = v131;
      }

      v167(v128, v129, v130);
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v113, v115 + v114[8]);
      (*(v124 + 8))(v125, v123);
    }

    v132 = v120;
    return outlined destroy of SystemFormatStyle.DateOffset(v132, type metadata accessor for SystemFormatStyle.DateOffset);
  }

  v58 = *&v46[v52[5]];
  type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date.ComponentsFormatStyle.Field>, MEMORY[0x1E6969498], MEMORY[0x1E69E6F90]);
  type metadata accessor for Date.ComponentsFormatStyle.Field();
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_18DDAF080;
  static Date.ComponentsFormatStyle.Style.spellOut.getter();
  static Date.ComponentsFormatStyle.Field.minute.getter();
  static Date.ComponentsFormatStyle.Field.second.getter();
  v60 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt0gq5Tf4g_n(v59);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  _sSh2eeoiySbShyxG_ABtFZ10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt1g5(v58, v60);
  LOBYTE(v59) = v61;

  v62 = v46;
  v63 = *(v54 + 16);
  if (v59)
  {
    v64 = v169;
    v63(v169, v62, v187);
    v65 = v186;
    if (one-time initialization token for timer != -1)
    {
      swift_once();
    }

    v66 = static Text.DateStyle.timer;
    v67 = qword_1EAB1F268;
    v68 = byte_1EAB1F270;
    v69 = v189;
    v70 = v190;
    v71 = type metadata accessor for ResolvableAbsoluteDate();
    v65[3] = v71;
    v65[4] = &protocol witness table for ResolvableAbsoluteDate;
    v72 = __swift_allocate_boxed_opaque_existential_1(v65);
    v63(v72, v64, v187);
    v73 = v72 + v71[5];
    *v73 = v66;
    *(v73 + 1) = v67;
    v73[16] = v68;
    v74 = v71[6];
    if (v70)
    {
      v75 = v64;

      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v69, v72 + v74);

      v76 = v71[7];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v69, v72 + v76);

      v77 = v71[8];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v69, v72 + v77);

      (*(v182 + 8))(v75, v187);
      v78 = v188;
    }

    else
    {

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v147, v72 + v74);
      v148 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v69);
      v149 = v187;
      v150 = v182;
      if (v148)
      {
        v151 = *(*v148 + 248);
        v152 = v148;
        v153 = v72 + v71[7];
        v154 = v152 + v151;
        v155 = v183;
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v164 = v183;
        v154 = __swift_project_value_buffer(v183, static LocaleKey.defaultValue);
        v153 = v72 + v71[7];
        v155 = v164;
      }

      v167(v153, v154, v155);
      v78 = v188;
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v69, v72 + v71[8]);
      (*(v150 + 8))(v169, v149);
    }

    v132 = v78;
  }

  else
  {
    v133 = v170;
    v134 = v187;
    v63(v170, v62, v187);

    v136 = specialized NSCalendarUnit.init(_:)(v135);
    v137 = v189;
    v138 = v190;
    v139 = type metadata accessor for ResolvableAbsoluteDate();
    v140 = v186;
    v186[3] = v139;
    v140[4] = &protocol witness table for ResolvableAbsoluteDate;
    v141 = __swift_allocate_boxed_opaque_existential_1(v140);
    v63(v141, v133, v134);
    v142 = v141 + v139[5];
    *v142 = 4;
    *(v142 + 1) = v136;
    v142[16] = 2;
    v143 = v139[6];
    if (v138)
    {

      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v137, v141 + v143);

      v144 = v139[7];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v137, v141 + v144);

      v145 = v139[8];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v137, v141 + v145);

      (*(v54 + 8))(v170, v134);
      v146 = v188;
    }

    else
    {

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v156, v141 + v143);
      v157 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v137);
      v146 = v188;
      v158 = v170;
      if (v157)
      {
        v159 = *(*v157 + 248);
        v160 = v157;
        v161 = v141 + v139[7];
        v162 = v160 + v159;
        v163 = v183;
      }

      else
      {
        v165 = v183;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v162 = __swift_project_value_buffer(v165, static LocaleKey.defaultValue);
        v161 = v141 + v139[7];
        v163 = v165;
      }

      v167(v161, v162, v163);
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v137, v141 + v139[8]);
      (*(v54 + 8))(v158, v134);
    }

    v132 = v146;
  }

  return outlined destroy of SystemFormatStyle.DateOffset(v132, type metadata accessor for SystemFormatStyle.DateOffset);
}

uint64_t one-time initialization function for orderedFields()
{
  type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date.ComponentsFormatStyle.Field>, MEMORY[0x1E6969498], MEMORY[0x1E69E6F90]);
  type metadata accessor for Date.ComponentsFormatStyle.Field();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18DDACAA0;
  static Date.ComponentsFormatStyle.Style.wide.getter();
  static Date.ComponentsFormatStyle.Style.narrow.getter();
  static Date.ComponentsFormatStyle.Style.abbreviated.getter();
  static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
  static Date.ComponentsFormatStyle.Style.spellOut.getter();
  static Date.ComponentsFormatStyle.Field.minute.getter();
  result = static Date.ComponentsFormatStyle.Field.second.getter();
  static Date.ComponentsFormatStyle.Field.orderedFields = v0;
  return result;
}

uint64_t SystemFormatStyle.DateOffset.interfaceIdiom(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  outlined init with copy of SystemFormatStyle.DateOffset(v2, a2, type metadata accessor for SystemFormatStyle.DateOffset);
  type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<ComplicationInterfaceIdiom>);
  v5 = *(v4 + 16);
  if (v5())
  {
    v6 = 1;
  }

  else
  {
    type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<WatchInterfaceIdiom>);
    v6 = v5() & 1;
  }

  result = type metadata accessor for SystemFormatStyle.DateOffset();
  *(a2 + *(result + 48)) = v6;
  return result;
}

uint64_t protocol witness for InterfaceIdiomDependentFormatStyle.interfaceIdiom(_:) in conformance SystemFormatStyle.DateOffset@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 8);
  outlined init with copy of SystemFormatStyle.DateOffset(v3, a3, type metadata accessor for SystemFormatStyle.DateOffset);
  type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<ComplicationInterfaceIdiom>);
  v7 = *(v6 + 16);
  result = v7();
  v9 = 1;
  if ((result & 1) == 0)
  {
    type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<WatchInterfaceIdiom>);
    result = v7();
    if ((result & 1) == 0)
    {
      v9 = 0;
    }
  }

  *(a3 + *(a2 + 48)) = v9;
  return result;
}

uint64_t outlined init with take of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(uint64_t a1)
{
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Date.ComponentsFormatStyle.Field();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Date.ComponentsFormatStyle.Field() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v73 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v61 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v61 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v61 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v61 - v19;
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v20);
  v77 = &v61 - v23;
  v63 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v75 = *(v21 + 16);
    v76 = v21 + 16;
    v25 = *(v21 + 72);
    v81 = (v21 + 8);
    v26 = (v24 + v25 * (a3 - 1));
    v68 = -v25;
    v69 = (v21 + 32);
    v27 = a1 - a3;
    v70 = v24;
    v62 = v25;
    v28 = v24 + v25 * a3;
    v74 = v17;
    v72 = v11;
LABEL_5:
    v66 = v26;
    v67 = a3;
    v64 = v28;
    v65 = v27;
    v78 = v26;
    v79 = v28;
    v29 = v27;
    v30 = v73;
    while (1)
    {
      v31 = v77;
      v32 = v75;
      (v75)(v77, v79, v30, v22);
      v32(v80, v78, v30);
      v32(v17, v31, v30);
      v33 = v81;
      static Date.ComponentsFormatStyle.Style.wide.getter();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *v33;
      (*v33)(v14, v30);
      if (v34)
      {
        v35(v17, v30);
        v36 = 0x417E133800000000;
      }

      else
      {
        static Date.ComponentsFormatStyle.Style.narrow.getter();
        v37 = dispatch thunk of static Equatable.== infix(_:_:)();
        v35(v14, v30);
        if (v37)
        {
          v35(v17, v30);
          v36 = 0x4143C68000000000;
        }

        else
        {
          static Date.ComponentsFormatStyle.Style.abbreviated.getter();
          v38 = dispatch thunk of static Equatable.== infix(_:_:)();
          v35(v14, v30);
          if (v38)
          {
            v35(v17, v30);
            v36 = 0x4122750000000000;
          }

          else
          {
            static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
            v39 = dispatch thunk of static Equatable.== infix(_:_:)();
            v35(v14, v30);
            if (v39)
            {
              v35(v17, v30);
              v36 = 0x40F5180000000000;
            }

            else
            {
              static Date.ComponentsFormatStyle.Style.spellOut.getter();
              v40 = dispatch thunk of static Equatable.== infix(_:_:)();
              v35(v14, v30);
              if (v40)
              {
                v35(v17, v30);
                v36 = 0x40AC200000000000;
              }

              else
              {
                static Date.ComponentsFormatStyle.Field.minute.getter();
                v41 = dispatch thunk of static Equatable.== infix(_:_:)();
                v35(v14, v30);
                if ((v41 & 1) == 0)
                {
                  static Date.ComponentsFormatStyle.Field.second.getter();
                  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v35(v14, v30);
                  v35(v17, v73);
                  v30 = v73;
                  if (v51)
                  {
                    v42 = 1.0;
                  }

                  else
                  {
                    v42 = INFINITY;
                  }

                  goto LABEL_19;
                }

                v35(v17, v30);
                v36 = 0x404E000000000000;
              }
            }
          }
        }
      }

      v42 = *&v36;
LABEL_19:
      v43 = v72;
      v75(v72, v80, v30);
      static Date.ComponentsFormatStyle.Style.wide.getter();
      v44 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35(v14, v30);
      if (v44)
      {
        v35(v43, v30);
        v45 = 31536000.0;
      }

      else
      {
        static Date.ComponentsFormatStyle.Style.narrow.getter();
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v35(v14, v30);
        if (v46)
        {
          v35(v43, v30);
          v45 = 2592000.0;
        }

        else
        {
          static Date.ComponentsFormatStyle.Style.abbreviated.getter();
          v47 = dispatch thunk of static Equatable.== infix(_:_:)();
          v35(v14, v30);
          if (v47)
          {
            v35(v43, v30);
            v45 = 604800.0;
          }

          else
          {
            static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
            v48 = dispatch thunk of static Equatable.== infix(_:_:)();
            v35(v14, v30);
            if (v48)
            {
              v35(v43, v30);
              v45 = 86400.0;
            }

            else
            {
              static Date.ComponentsFormatStyle.Style.spellOut.getter();
              v49 = dispatch thunk of static Equatable.== infix(_:_:)();
              v35(v14, v30);
              if (v49)
              {
                v35(v43, v30);
                v45 = 3600.0;
              }

              else
              {
                static Date.ComponentsFormatStyle.Field.minute.getter();
                v50 = dispatch thunk of static Equatable.== infix(_:_:)();
                v35(v14, v30);
                if (v50)
                {
                  v35(v43, v30);
                  v45 = 60.0;
                }

                else
                {
                  static Date.ComponentsFormatStyle.Field.second.getter();
                  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v35(v14, v30);
                  v35(v43, v73);
                  v30 = v73;
                  if (v52)
                  {
                    v45 = 1.0;
                  }

                  else
                  {
                    v45 = INFINITY;
                  }
                }
              }
            }
          }
        }
      }

      v35(v80, v30);
      v35(v77, v30);
      v17 = v74;
      if (v45 >= v42)
      {
LABEL_4:
        a3 = v67 + 1;
        v26 = &v66[v62];
        v27 = v65 - 1;
        v28 = v64 + v62;
        if (v67 + 1 == v63)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v70)
      {
        __break(1u);
        return;
      }

      v53 = *v69;
      v54 = v71;
      v55 = v14;
      v56 = v29;
      v57 = v79;
      v30 = v73;
      (*v69)(v71, v79, v73);
      v58 = v78;
      swift_arrayInitWithTakeFrontToBack();
      v53(v58, v54, v30);
      v78 = &v58[v68];
      v79 = v57 + v68;
      v59 = v56;
      v14 = v55;
      v17 = v74;
      v60 = __CFADD__(v59, 1);
      v29 = v59 + 1;
      if (v60)
      {
        goto LABEL_4;
      }
    }
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v162 = a1;
  v8 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  MEMORY[0x1EEE9AC00](a3);
  v164 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v179 = &v158 - v11;
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v158 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v189 = &v158 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v187 = &v158 - v19;
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v158 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v176 = &v158 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v174 = &v158 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v158 = &v158 - v29;
  v36.n128_f64[0] = MEMORY[0x1EEE9AC00](v30);
  v37 = &v158 - v32;
  v38 = v31[1];
  v172 = v33;
  if (v38 < 1)
  {
    v40 = MEMORY[0x1E69E7CC0];
LABEL_161:
    v37 = *v162;
    if (!*v162)
    {
      goto LABEL_200;
    }

    v8 = v31;
    a4 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v172;
    if (isUniquelyReferenced_nonNull_native)
    {
      v153 = a4;
LABEL_164:
      v192 = v153;
      a4 = *(v153 + 2);
      if (a4 >= 2)
      {
        while (*v8)
        {
          v154 = *&v153[16 * a4];
          v155 = v153;
          v156 = *&v153[16 * a4 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)(*v8 + *(v39 + 72) * v154, *v8 + *(v39 + 72) * *&v153[16 * a4 + 16], *v8 + *(v39 + 72) * v156, v37);
          if (v5)
          {
            goto LABEL_172;
          }

          if (v156 < v154)
          {
            goto LABEL_187;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v155 = specialized _ArrayBuffer._consumeAndCreateNew()(v155);
          }

          if (a4 - 2 >= *(v155 + 2))
          {
            goto LABEL_188;
          }

          v157 = &v155[16 * a4];
          *v157 = v154;
          *(v157 + 1) = v156;
          v192 = v155;
          specialized Array.remove(at:)(a4 - 1);
          v153 = v192;
          a4 = *(v192 + 2);
          if (a4 <= 1)
          {
            goto LABEL_172;
          }
        }

        goto LABEL_198;
      }

LABEL_172:

      return;
    }

LABEL_194:
    v153 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    goto LABEL_164;
  }

  v170 = v23;
  v39 = 0;
  v188 = v33 + 16;
  v181 = (v33 + 8);
  v182 = (v33 + 32);
  v40 = MEMORY[0x1E69E7CC0];
  v173 = v31;
  v161 = a4;
  v180 = v34;
  v183 = v15;
  v171 = v35;
  v186 = &v158 - v32;
LABEL_4:
  v165 = v40;
  if (v39 + 1 >= v38)
  {
    v51 = v39 + 1;
    goto LABEL_56;
  }

  v160 = v5;
  v175 = v38;
  v41 = *v31;
  v42 = v172;
  v43 = *(v172 + 72);
  v44 = *(v172 + 16);
  v185 = (*v31 + v43 * (v39 + 1));
  v44(v37, v36);
  v45 = v158;
  v184 = v44;
  (v44)(v158, v41 + v43 * v39, v8);
  Date.ComponentsFormatStyle.Field.magnitude.getter(&v191);
  v46 = v191;
  Date.ComponentsFormatStyle.Field.magnitude.getter(&v190);
  v47 = v190;
  v48 = *(v42 + 8);
  v48(v45, v8);
  v48(v37, v8);
  v159 = v39;
  v49 = v39 + 2;
  v177 = v43;
  v50 = v41 + v43 * (v39 + 2);
  v51 = v175;
  while (v51 != v49)
  {
    v52 = v174;
    v178 = v50;
    v53 = v184;
    (v184)(v174);
    (v53)(v176, v185, v8);
    v54 = v170;
    (v53)(v170, v52, v8);
    static Date.ComponentsFormatStyle.Style.wide.getter();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
    LOBYTE(v52) = dispatch thunk of static Equatable.== infix(_:_:)();
    v48(v37, v8);
    if (v52)
    {
      v48(v54, v8);
      *&v55 = 31536000.0;
LABEL_19:
      v61 = *&v55;
      goto LABEL_20;
    }

    static Date.ComponentsFormatStyle.Style.narrow.getter();
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48(v37, v8);
    if (v56)
    {
      v48(v54, v8);
      *&v55 = 2592000.0;
      goto LABEL_19;
    }

    static Date.ComponentsFormatStyle.Style.abbreviated.getter();
    v57 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48(v37, v8);
    if (v57)
    {
      v48(v54, v8);
      *&v55 = 604800.0;
      goto LABEL_19;
    }

    static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
    v58 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48(v37, v8);
    if (v58)
    {
      v48(v54, v8);
      *&v55 = 86400.0;
      goto LABEL_19;
    }

    static Date.ComponentsFormatStyle.Style.spellOut.getter();
    v59 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48(v37, v8);
    if (v59)
    {
      v48(v54, v8);
      *&v55 = 3600.0;
      goto LABEL_19;
    }

    static Date.ComponentsFormatStyle.Field.minute.getter();
    v60 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48(v37, v8);
    if (v60)
    {
      v48(v54, v8);
      *&v55 = 60.0;
      goto LABEL_19;
    }

    static Date.ComponentsFormatStyle.Field.second.getter();
    v71 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48(v37, v8);
    v48(v54, v8);
    if (v71)
    {
      v61 = 1.0;
    }

    else
    {
      v61 = INFINITY;
    }

LABEL_20:
    v62 = v171;
    (v184)(v171, v176, v8);
    static Date.ComponentsFormatStyle.Style.wide.getter();
    v63 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48(v37, v8);
    if (v63)
    {
      v48(v62, v8);
      *&v64 = 31536000.0;
    }

    else
    {
      static Date.ComponentsFormatStyle.Style.narrow.getter();
      v65 = dispatch thunk of static Equatable.== infix(_:_:)();
      v48(v37, v8);
      if (v65)
      {
        v48(v62, v8);
        *&v64 = 2592000.0;
      }

      else
      {
        static Date.ComponentsFormatStyle.Style.abbreviated.getter();
        v66 = dispatch thunk of static Equatable.== infix(_:_:)();
        v48(v37, v8);
        if (v66)
        {
          v48(v62, v8);
          *&v64 = 604800.0;
        }

        else
        {
          static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
          v67 = dispatch thunk of static Equatable.== infix(_:_:)();
          v48(v37, v8);
          if (v67)
          {
            v48(v62, v8);
            *&v64 = 86400.0;
          }

          else
          {
            static Date.ComponentsFormatStyle.Style.spellOut.getter();
            v68 = dispatch thunk of static Equatable.== infix(_:_:)();
            v48(v37, v8);
            if (v68)
            {
              v48(v62, v8);
              *&v64 = 3600.0;
            }

            else
            {
              static Date.ComponentsFormatStyle.Field.minute.getter();
              v69 = dispatch thunk of static Equatable.== infix(_:_:)();
              v48(v37, v8);
              if ((v69 & 1) == 0)
              {
                static Date.ComponentsFormatStyle.Field.second.getter();
                v72 = dispatch thunk of static Equatable.== infix(_:_:)();
                v48(v37, v8);
                v48(v62, v8);
                if (v72)
                {
                  v70 = 1.0;
                }

                else
                {
                  v70 = INFINITY;
                }

                goto LABEL_33;
              }

              v48(v62, v8);
              *&v64 = 60.0;
            }
          }
        }
      }
    }

    v70 = *&v64;
LABEL_33:
    v48(v176, v8);
    v48(v174, v8);
    ++v49;
    v50 = v178 + v177;
    v185 += v177;
    v51 = v175;
    if (v47 < v46 == v70 >= v61)
    {
      v51 = v49 - 1;
      break;
    }
  }

  v5 = v160;
  v31 = v173;
  a4 = v161;
  v73 = v165;
  v15 = v183;
  v39 = v159;
  if (v47 < v46)
  {
    if (v51 < v159)
    {
      goto LABEL_191;
    }

    if (v159 < v51)
    {
      v74 = v177 * (v51 - 1);
      v75 = v51 * v177;
      v175 = v51;
      v76 = v159 * v177;
      do
      {
        if (v39 != --v51)
        {
          v77 = *v31;
          if (!*v31)
          {
            goto LABEL_197;
          }

          v185 = *v182;
          (v185)(v164, v77 + v76, v8, v73);
          if (v76 < v74 || v77 + v76 >= (v77 + v75))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v76 != v74)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          (v185)(v77 + v74, v164, v8);
          v31 = v173;
          v73 = v165;
          v15 = v183;
        }

        ++v39;
        v74 -= v177;
        v75 -= v177;
        v76 += v177;
      }

      while (v39 < v51);
      v5 = v160;
      a4 = v161;
      v39 = v159;
      v51 = v175;
    }
  }

LABEL_56:
  v78 = v31[1];
  if (v51 >= v78)
  {
    goto LABEL_65;
  }

  if (__OFSUB__(v51, v39))
  {
    goto LABEL_190;
  }

  if (v51 - v39 >= a4)
  {
LABEL_65:
    v80 = v51;
    if (v51 < v39)
    {
      goto LABEL_189;
    }

    goto LABEL_66;
  }

  if (__OFADD__(v39, a4))
  {
    goto LABEL_192;
  }

  if ((v39 + a4) >= v78)
  {
    v79 = v31[1];
  }

  else
  {
    v79 = v39 + a4;
  }

  if (v79 < v39)
  {
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  if (v51 == v79)
  {
    goto LABEL_65;
  }

  v160 = v5;
  v127 = *v31;
  v128 = *(v172 + 72);
  v185 = *(v172 + 16);
  v129 = v127 + v128 * (v51 - 1);
  v177 = -v128;
  v159 = v39;
  v130 = (v39 - v51);
  v178 = v127;
  v163 = v128;
  v131 = v127 + v51 * v128;
  v166 = v79;
  while (2)
  {
    v175 = v51;
    v167 = v131;
    v168 = v130;
    v132 = v130;
    v169 = v129;
    v133 = v129;
LABEL_120:
    v184 = v132;
    v134 = v187;
    v135 = v185;
    (v185)(v187, v131, v8, v36);
    v135(v189, v133, v8);
    v135(v15, v134, v8);
    static Date.ComponentsFormatStyle.Style.wide.getter();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
    LOBYTE(v134) = dispatch thunk of static Equatable.== infix(_:_:)();
    v136 = *v181;
    (*v181)(v37, v8);
    if (v134)
    {
      v136(v15, v8);
      *&v137 = 31536000.0;
      goto LABEL_132;
    }

    static Date.ComponentsFormatStyle.Style.narrow.getter();
    v138 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v37, v8);
    if (v138)
    {
      v136(v15, v8);
      *&v137 = 2592000.0;
      goto LABEL_132;
    }

    static Date.ComponentsFormatStyle.Style.abbreviated.getter();
    v139 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v37, v8);
    if (v139)
    {
      v136(v15, v8);
      *&v137 = 604800.0;
      goto LABEL_132;
    }

    static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
    v140 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v37, v8);
    if (v140)
    {
      v136(v15, v8);
      *&v137 = 86400.0;
      goto LABEL_132;
    }

    static Date.ComponentsFormatStyle.Style.spellOut.getter();
    v141 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v37, v8);
    if (v141)
    {
      v136(v15, v8);
      *&v137 = 3600.0;
      goto LABEL_132;
    }

    static Date.ComponentsFormatStyle.Field.minute.getter();
    v142 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v37, v8);
    if (v142)
    {
      v136(v15, v8);
      *&v137 = 60.0;
LABEL_132:
      v143 = *&v137;
    }

    else
    {
      static Date.ComponentsFormatStyle.Field.second.getter();
      v151 = dispatch thunk of static Equatable.== infix(_:_:)();
      v136(v37, v8);
      v136(v15, v8);
      if (v151)
      {
        v143 = 1.0;
      }

      else
      {
        v143 = INFINITY;
      }
    }

    v144 = v180;
    (v185)(v180, v189, v8);
    v145 = v186;
    static Date.ComponentsFormatStyle.Style.wide.getter();
    a4 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v145, v8);
    if (a4)
    {
      v136(v144, v8);
      *&v146 = 31536000.0;
      goto LABEL_145;
    }

    static Date.ComponentsFormatStyle.Style.narrow.getter();
    a4 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v145, v8);
    if (a4)
    {
      v136(v144, v8);
      *&v146 = 2592000.0;
      goto LABEL_145;
    }

    static Date.ComponentsFormatStyle.Style.abbreviated.getter();
    a4 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v145, v8);
    if (a4)
    {
      v136(v144, v8);
      *&v146 = 604800.0;
      goto LABEL_145;
    }

    static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
    a4 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v145, v8);
    if (a4)
    {
      v136(v144, v8);
      *&v146 = 86400.0;
      goto LABEL_145;
    }

    static Date.ComponentsFormatStyle.Style.spellOut.getter();
    a4 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v145, v8);
    if (a4)
    {
      v136(v144, v8);
      *&v146 = 3600.0;
      goto LABEL_145;
    }

    static Date.ComponentsFormatStyle.Field.minute.getter();
    a4 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v145, v8);
    if (a4)
    {
      v136(v144, v8);
      *&v146 = 60.0;
LABEL_145:
      v147 = *&v146;
    }

    else
    {
      static Date.ComponentsFormatStyle.Field.second.getter();
      a4 = dispatch thunk of static Equatable.== infix(_:_:)();
      v136(v145, v8);
      v136(v144, v8);
      if (a4)
      {
        v147 = 1.0;
      }

      else
      {
        v147 = INFINITY;
      }
    }

    v136(v189, v8);
    v136(v187, v8);
    v15 = v183;
    if (v147 >= v143)
    {
      v37 = v186;
LABEL_118:
      v51 = v175 + 1;
      v129 = v169 + v163;
      v130 = (v168 - 1);
      v131 = v167 + v163;
      v80 = v166;
      if (v175 + 1 != v166)
      {
        continue;
      }

      v5 = v160;
      v39 = v159;
      if (v166 < v159)
      {
        goto LABEL_189;
      }

LABEL_66:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v40 = v165;
      }

      else
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v165 + 2) + 1, 1, v165);
      }

      v82 = *(v40 + 2);
      v81 = *(v40 + 3);
      a4 = v82 + 1;
      v31 = v173;
      if (v82 >= v81 >> 1)
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v40);
        v31 = v173;
      }

      *(v40 + 2) = a4;
      v83 = &v40[16 * v82];
      *(v83 + 4) = v39;
      *(v83 + 5) = v80;
      v166 = v80;
      v84 = *v162;
      if (!*v162)
      {
        goto LABEL_199;
      }

      if (v82)
      {
        while (2)
        {
          v39 = a4 - 1;
          if (a4 >= 4)
          {
            v89 = &v40[16 * a4 + 32];
            v90 = *(v89 - 64);
            v91 = *(v89 - 56);
            v95 = __OFSUB__(v91, v90);
            v92 = v91 - v90;
            if (v95)
            {
              goto LABEL_176;
            }

            v94 = *(v89 - 48);
            v93 = *(v89 - 40);
            v95 = __OFSUB__(v93, v94);
            v87 = v93 - v94;
            v88 = v95;
            if (v95)
            {
              goto LABEL_177;
            }

            v96 = &v40[16 * a4];
            v98 = *v96;
            v97 = *(v96 + 1);
            v95 = __OFSUB__(v97, v98);
            v99 = v97 - v98;
            if (v95)
            {
              goto LABEL_179;
            }

            v95 = __OFADD__(v87, v99);
            v100 = v87 + v99;
            if (v95)
            {
              goto LABEL_182;
            }

            if (v100 >= v92)
            {
              v118 = &v40[16 * v39 + 32];
              v120 = *v118;
              v119 = *(v118 + 1);
              v95 = __OFSUB__(v119, v120);
              v121 = v119 - v120;
              if (v95)
              {
                goto LABEL_186;
              }

              if (v87 < v121)
              {
                v39 = a4 - 2;
              }
            }

            else
            {
LABEL_85:
              if (v88)
              {
                goto LABEL_178;
              }

              v101 = &v40[16 * a4];
              v103 = *v101;
              v102 = *(v101 + 1);
              v104 = __OFSUB__(v102, v103);
              v105 = v102 - v103;
              v106 = v104;
              if (v104)
              {
                goto LABEL_181;
              }

              v107 = &v40[16 * v39 + 32];
              v109 = *v107;
              v108 = *(v107 + 1);
              v95 = __OFSUB__(v108, v109);
              v110 = v108 - v109;
              if (v95)
              {
                goto LABEL_184;
              }

              if (__OFADD__(v105, v110))
              {
                goto LABEL_185;
              }

              if (v105 + v110 < v87)
              {
                goto LABEL_99;
              }

              if (v87 < v110)
              {
                v39 = a4 - 2;
              }
            }
          }

          else
          {
            if (a4 == 3)
            {
              v85 = *(v40 + 4);
              v86 = *(v40 + 5);
              v95 = __OFSUB__(v86, v85);
              v87 = v86 - v85;
              v88 = v95;
              goto LABEL_85;
            }

            v111 = &v40[16 * a4];
            v113 = *v111;
            v112 = *(v111 + 1);
            v95 = __OFSUB__(v112, v113);
            v105 = v112 - v113;
            v106 = v95;
LABEL_99:
            if (v106)
            {
              goto LABEL_180;
            }

            v114 = &v40[16 * v39];
            v116 = *(v114 + 4);
            v115 = *(v114 + 5);
            v95 = __OFSUB__(v115, v116);
            v117 = v115 - v116;
            if (v95)
            {
              goto LABEL_183;
            }

            if (v117 < v105)
            {
              break;
            }
          }

          v122 = v39 - 1;
          if (v39 - 1 >= a4)
          {
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
LABEL_190:
            __break(1u);
LABEL_191:
            __break(1u);
LABEL_192:
            __break(1u);
            goto LABEL_193;
          }

          if (!*v31)
          {
            goto LABEL_196;
          }

          v123 = v40;
          a4 = *&v40[16 * v122 + 32];
          v124 = *&v40[16 * v39 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)(*v31 + *(v172 + 72) * a4, *v31 + *(v172 + 72) * *&v40[16 * v39 + 32], *v31 + *(v172 + 72) * v124, v84);
          if (v5)
          {
            goto LABEL_172;
          }

          if (v124 < a4)
          {
            goto LABEL_174;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v125 = v123;
          }

          else
          {
            v125 = specialized _ArrayBuffer._consumeAndCreateNew()(v123);
          }

          v15 = v183;
          if (v122 >= *(v125 + 2))
          {
            goto LABEL_175;
          }

          v126 = &v125[16 * v122];
          *(v126 + 4) = a4;
          *(v126 + 5) = v124;
          v192 = v125;
          specialized Array.remove(at:)(v39);
          v40 = v192;
          a4 = *(v192 + 2);
          v31 = v173;
          if (a4 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v38 = v31[1];
      v39 = v166;
      a4 = v161;
      if (v166 >= v38)
      {
        goto LABEL_161;
      }

      goto LABEL_4;
    }

    break;
  }

  v37 = v186;
  v148 = v184;
  if (v178)
  {
    a4 = *v182;
    v149 = v179;
    (*v182)(v179, v131, v8);
    swift_arrayInitWithTakeFrontToBack();
    (a4)(v133, v149, v8);
    v133 += v177;
    v131 += v177;
    v150 = __CFADD__(v148, 1);
    v132 = (v148 + 1);
    if (v150)
    {
      goto LABEL_118;
    }

    goto LABEL_120;
  }

  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v60 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v8 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v48 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v65 = a1;
  v64 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v17;
    if (v17 >= 1)
    {
      v32 = -v13;
      v52 = a4;
      v53 = (v8 + 16);
      v50 = (v8 + 8);
      v51 = a1;
      v33 = v31;
      v54 = -v13;
      do
      {
        v49 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v56 = v34;
        v57 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v65 = v34;
            v63 = v49;
            goto LABEL_58;
          }

          v37 = a3;
          v55 = v31;
          v38 = a3 + v32;
          v39 = v33 + v32;
          v40 = *v53;
          v41 = v58;
          v42 = v60;
          (*v53)(v58, v39, v60);
          v43 = v35;
          v44 = v59;
          (v40)(v59, v43, v42);
          Date.ComponentsFormatStyle.Field.magnitude.getter(&v63);
          v45 = *&v63;
          Date.ComponentsFormatStyle.Field.magnitude.getter(&v62);
          v46 = v62;
          v47 = *v50;
          (*v50)(v44, v42);
          v47(v41, v42);
          if (v46 < v45)
          {
            break;
          }

          v31 = v39;
          a3 = v38;
          if (v37 < v33 || v38 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v57;
            a1 = v51;
          }

          else
          {
            v35 = v57;
            a1 = v51;
            if (v37 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v39;
          v36 = v39 > v52;
          v32 = v54;
          v34 = v56;
          if (!v36)
          {
            a2 = v56;
            goto LABEL_57;
          }
        }

        a3 = v38;
        if (v37 < v56 || v38 >= v56)
        {
          a2 = v57;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v51;
          v32 = v54;
          v31 = v55;
        }

        else
        {
          a2 = v57;
          a1 = v51;
          v32 = v54;
          v31 = v55;
          if (v37 != v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v52);
    }

LABEL_57:
    v65 = a2;
    v63 = v31;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = a4 + v16;
    v63 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v55 = a3;
      v56 = v8 + 16;
      v53 = (v8 + 8);
      v54 = v19;
      v20 = v59;
      do
      {
        v21 = a1;
        v22 = v58;
        v23 = a2;
        v24 = v60;
        v25 = a2;
        v26 = v54;
        (v54)(v58, v23, v60);
        v26(v20, a4, v24);
        Date.ComponentsFormatStyle.Field.magnitude.getter(&v62);
        v27 = v62;
        Date.ComponentsFormatStyle.Field.magnitude.getter(&v61);
        v28 = v61;
        v29 = *v53;
        (*v53)(v20, v24);
        v29(v22, v24);
        if (v28 >= v27)
        {
          v30 = v21;
          if (v21 < a4 || v21 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v25;
          }

          else
          {
            a2 = v25;
            if (v21 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v64 = a4 + v13;
          a4 += v13;
        }

        else
        {
          a2 = v25 + v13;
          v30 = v21;
          if (v21 < v25 || v21 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v21 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v30 + v13;
        v65 = a1;
      }

      while (a4 < v57 && a2 < v55);
    }
  }

LABEL_58:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v65, &v64, &v63);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void specialized Set.hash(into:)(uint64_t a1, uint64_t a2)
{
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  while (v5)
  {
LABEL_11:
    v12 = *(a2 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5))));
    v13 = *v12;
    v14 = *(v12 + 8);
    Hasher.init(_seed:)();
    if (v14 < 0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v13;
    }

    else
    {
      dispatch thunk of static AttributedStringKey.name.getter();
    }

    v5 &= v5 - 1;
    String.hash(into:)();

    v10 = Hasher._finalize()();
    outlined consume of AttributedString.AnyAttribute(v13, v14);
    v7 ^= v10;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      MEMORY[0x193AC11A0](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t specialized Set.hash(into:)(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v25 = a1[2];
  v26 = v8;
  v27 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v22[0] = a1;
  v23 = v10;
  v24 = v9;
  v11 = Hasher._finalize()();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v22[2] = v5 + 16;
  v22[3] = v11;
  v22[1] = v5 + 8;

  v17 = 0;
  for (i = 0; v14; v17 ^= v21)
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v4);
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
    v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
    result = (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return MEMORY[0x193AC11A0](v17);
    }

    v14 = *(a2 + 56 + 8 * v19);
    ++i;
    if (v14)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static SystemFormatStyle.DateOffset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static Date.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for SystemFormatStyle.DateOffset(), _sSh2eeoiySbShyxG_ABtFZ10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt1g5(*(a1 + v4[5]), *(a2 + v4[5])), (v5) && *(a1 + v4[6]) == *(a2 + v4[6]) && (MEMORY[0x193ABCC70](a1 + v4[7], a2 + v4[7]) & 1) != 0 && *(a1 + v4[8]) == *(a2 + v4[8]) && (MEMORY[0x193ABDB20](a1 + v4[9], a2 + v4[9]) & 1) != 0 && (MEMORY[0x193ABDC80](a1 + v4[10], a2 + v4[10]) & 1) != 0 && *(a1 + v4[11]) == *(a2 + v4[11]) && *(a1 + v4[12]) == *(a2 + v4[12]))
  {
    v6 = *(a1 + v4[13]) ^ *(a2 + v4[13]) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t lazy protocol witness table accessor for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys);
  }

  return result;
}

void type metadata accessor for Set<Date.ComponentsFormatStyle.Field>()
{
  if (!lazy cache variable for type metadata for Set<Date.ComponentsFormatStyle.Field>)
  {
    type metadata accessor for Date.ComponentsFormatStyle.Field();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Set<Date.ComponentsFormatStyle.Field>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field()
{
  return lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
}

{
  return lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
}

unint64_t lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency and conformance TimeDataFormatting.UpdateFrequency()
{
  result = lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency and conformance TimeDataFormatting.UpdateFrequency;
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency and conformance TimeDataFormatting.UpdateFrequency)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency and conformance TimeDataFormatting.UpdateFrequency);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency and conformance TimeDataFormatting.UpdateFrequency;
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency and conformance TimeDataFormatting.UpdateFrequency)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency and conformance TimeDataFormatting.UpdateFrequency);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency and conformance TimeDataFormatting.UpdateFrequency;
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency and conformance TimeDataFormatting.UpdateFrequency)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency and conformance TimeDataFormatting.UpdateFrequency);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<SystemFormatStyle.DateOffset.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys();
    v7 = a3(a1, &unk_1F00707A0, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Set<Date.ComponentsFormatStyle.Field> and conformance <> Set<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Set<Date.ComponentsFormatStyle.Field>();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for Date.ComponentsFormatStyle.Field();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void type metadata accessor for (Duration.TimeFormatStyle.Attributed, Date.ComponentsFormatStyle.Field)()
{
  if (!lazy cache variable for type metadata for (Duration.TimeFormatStyle.Attributed, Date.ComponentsFormatStyle.Field))
  {
    type metadata accessor for Duration.TimeFormatStyle.Attributed();
    type metadata accessor for Date.ComponentsFormatStyle.Field();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Duration.TimeFormatStyle.Attributed, Date.ComponentsFormatStyle.Field));
    }
  }
}

uint64_t instantiation function for generic protocol witness table for SystemFormatStyle.DateOffset(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset, type metadata accessor for SystemFormatStyle.DateOffset);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset, type metadata accessor for SystemFormatStyle.DateOffset);
  *(a1 + 8) = result;
  return result;
}

{
  result = _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(&lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset, type metadata accessor for SystemFormatStyle.DateOffset);
  *(a1 + 8) = result;
  return result;
}

char *initializeBufferWithCopyOfBuffer for SystemFormatStyle.DateOffset(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v17 = *a2;
    *a1 = *a2;
    a1 = (v17 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *&a1[a3[5]] = *&a2[a3[5]];
    *&a1[v8] = *&a2[v8];
    v9 = a3[7];
    v10 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
    v11 = *(*(v10 - 8) + 16);

    v11(&a1[v9], &a2[v9], v10);
    v12 = a3[9];
    *&a1[a3[8]] = *&a2[a3[8]];
    v13 = type metadata accessor for Locale();
    (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
    v14 = a3[10];
    v15 = type metadata accessor for Calendar();
    (*(*(v15 - 8) + 16))(&a1[v14], &a2[v14], v15);
    v16 = a3[12];
    a1[a3[11]] = a2[a3[11]];
    a1[v16] = a2[v16];
    a1[a3[13]] = a2[a3[13]];
  }

  return a1;
}

uint64_t destroy for SystemFormatStyle.DateOffset(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = a2[7];
  v6 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = a2[9];
  v8 = type metadata accessor for Locale();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
  v9 = a2[10];
  v10 = type metadata accessor for Calendar();
  v11 = *(*(v10 - 8) + 8);

  return v11(a1 + v9, v10);
}

uint64_t initializeWithCopy for SystemFormatStyle.DateOffset(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[7];
  v9 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  v10 = *(*(v9 - 8) + 16);

  v10(a1 + v8, a2 + v8, v9);
  v11 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v12 = type metadata accessor for Locale();
  (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
  v13 = a3[10];
  v14 = type metadata accessor for Calendar();
  (*(*(v14 - 8) + 16))(a1 + v13, a2 + v13, v14);
  v15 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v15) = *(a2 + v15);
  *(a1 + a3[13]) = *(a2 + a3[13]);
  return a1;
}

uint64_t assignWithCopy for SystemFormatStyle.DateOffset(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);

  *(a1 + a3[6]) = *(a2 + a3[6]);
  v7 = a3[7];
  v8 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v9 = a3[9];
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = a3[10];
  v12 = type metadata accessor for Calendar();
  (*(*(v12 - 8) + 24))(a1 + v11, a2 + v11, v12);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + a3[13]) = *(a2 + a3[13]);
  return a1;
}

uint64_t initializeWithTake for SystemFormatStyle.DateOffset(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[7];
  v9 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  v10 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v11 = type metadata accessor for Locale();
  (*(*(v11 - 8) + 32))(a1 + v10, a2 + v10, v11);
  v12 = a3[10];
  v13 = type metadata accessor for Calendar();
  (*(*(v13 - 8) + 32))(a1 + v12, a2 + v12, v13);
  v14 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v14) = *(a2 + v14);
  *(a1 + a3[13]) = *(a2 + a3[13]);
  return a1;
}

uint64_t assignWithTake for SystemFormatStyle.DateOffset(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);

  v7 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v8 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  v11 = a3[10];
  v12 = type metadata accessor for Calendar();
  (*(*(v12 - 8) + 40))(a1 + v11, a2 + v11, v12);
  v13 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v13) = *(a2 + v13);
  *(a1 + a3[13]) = *(a2 + a3[13]);
  return a1;
}

uint64_t type metadata completion function for SystemFormatStyle.DateOffset()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Locale();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Calendar();
        if (v4 <= 0x3F)
        {
          swift_initStructMetadata();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t specialized SystemFormatStyle.DateOffset.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F68636E61 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x466465776F6C6C61 && a2 == 0xED000073646C6569 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646C65694678616DLL && a2 == 0xED0000746E756F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1852270963 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69726156657A6973 && a2 == 0xEB00000000746E61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7246657461647075 && a2 == 0xEF79636E65757165 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6964496863746177 && a2 == 0xEA00000000006D6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x800000018DD7ABF0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t outlined init with copy of SystemFormatStyle.DateOffset(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Int specialized LazyStack<>.sizeThatFits(proposedSize:subviews:context:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = HIDWORD(a7);
  v16 = type metadata accessor for IndexSet();
  v49 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _LazyStack_Cache<LazyVStackLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v45 - v21);
  v50 = a4;
  if (a4)
  {
    HasDeadlinePassed = AGGraphHasDeadlinePassed();
    if (HasDeadlinePassed)
    {
      AGGraphCancelUpdate();
      v24 = 0.0;
    }

    else
    {
      v53 = 0;
      v54 = 0.0;
      MEMORY[0x1EEE9AC00](HasDeadlinePassed);
      *(&v45 - 2) = &v54;
      *&v52 = 2;
      _LazyLayout_Subviews.apply(from:style:to:)(&v53, &v52, partial apply for specialized closure #1 in LazyHVStack<>.flexibleMinorSize(subviews:), (&v45 - 4));
      v24 = v54;
    }

    v25 = v24;
  }

  else
  {
    v24 = *&a3;
    v25 = *&a3;
  }

  v54 = v25;
  if (v24 <= 0.0)
  {
    return _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e103VyxG0E0RtzrlE12sizeThatFits12proposedSize8subviews7context5cacheSo6CGSizeVAA012ProposedViewJ0V_AA01_C15M53_SubviewsVAA01_cq1_J17AndSpacingContextVAFtFSSyXEfu0_12CoreGraphics7CGFloatVTf1c_n();
  }

  v47 = a9;
  v48 = a10;
  outlined init with copy of _LazyLayout_Subview?(a8, v22, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache<LazyVStackLayout>);
  if (*MEMORY[0x1E698D3F8] != v12)
  {
    Value = AGGraphGetValue();
    v40 = v22[13];
    if (v40 > 0.0 && *Value > 0.0 && vabdd_f64(v40, *Value) >= 0.01)
    {
      v46 = v22 + *(v20 + 60);
      v41 = v46;
      v42 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

      *v41 = v42;
      v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

      v41[1] = v43;
      v53 = MEMORY[0x1E69E7CC0];
      v45 = lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
      type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v44 = type metadata accessor for EstimationCache();
      (*(v49 + 40))(&v46[*(v44 + 24)], v18, v16);
    }
  }

  v52 = 0.0;
  v53 = 0;
  LOBYTE(v51) = a11 & 1;
  specialized LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(&v52, &v53, 1, a5, v22, v47, v48, a11 & 0xFFFFFFFF00000001, v24, v24);
  *&v26 = COERCE_DOUBLE(EstimationCache.average.getter());
  v28 = v27;
  v29 = *&v26;
  v31 = v30;
  v51 = 2;
  result = _ViewList_Node.estimatedCount(style:)(&v51);
  v33 = result - v53;
  if (__OFSUB__(result, v53))
  {
    __break(1u);
  }

  else
  {
    if (v31)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = v29;
    }

    v35 = (v28 + v34) * (v33 & ~(v33 >> 63)) + v52;
    if (v53)
    {
      v36 = 1;
    }

    else
    {
      v36 = v33 < 1;
    }

    v37 = v36;
    if ((v37 | v31))
    {
      v38 = v35;
    }

    else
    {
      v38 = v35 - v29;
    }

    v52 = v38;
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e103VyxG0E0RtzrlE12sizeThatFits12proposedSize8subviews7context5cacheSo6CGSizeVAA012ProposedViewJ0V_AA01_C15M53_SubviewsVAA01_cq1_J17AndSpacingContextVAFtFSSyXEfu2_12CoreGraphics7CGFloatVAPTf1c_n();
    return outlined destroy of _LazyLayout_Subview?(v22, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache<LazyVStackLayout>);
  }

  return result;
}

Swift::Int specialized LazyStack<>.sizeThatFits(proposedSize:subviews:context:cache:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = HIDWORD(a7);
  v16 = type metadata accessor for IndexSet();
  v50 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _LazyStack_Cache<LazyVStackLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v46 - v21);
  v51 = a2;
  if (a2)
  {
    HasDeadlinePassed = AGGraphHasDeadlinePassed();
    if (HasDeadlinePassed)
    {
      AGGraphCancelUpdate();
      v24 = 0.0;
    }

    else
    {
      v54 = 0;
      v55 = 0.0;
      MEMORY[0x1EEE9AC00](HasDeadlinePassed);
      *(&v46 - 2) = &v55;
      *&v53 = 2;
      _LazyLayout_Subviews.apply(from:style:to:)(&v54, &v53, partial apply for specialized closure #1 in LazyHVStack<>.flexibleMinorSize(subviews:), (&v46 - 4));
      v24 = v55;
    }

    v25 = v24;
  }

  else
  {
    v24 = *&a1;
    v25 = *&a1;
  }

  v55 = v25;
  if (v24 <= 0.0)
  {
    return _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e103VyxG0E0RtzrlE12sizeThatFits12proposedSize8subviews7context5cacheSo6CGSizeVAA012ProposedViewJ0V_AA01_C15M53_SubviewsVAA01_cq1_J17AndSpacingContextVAFtFSSyXEfu0_12CoreGraphics7CGFloatVTf1c_n();
  }

  v48 = a9;
  v49 = a10;
  outlined init with copy of _LazyLayout_Subview?(a8, v22, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache<LazyVStackLayout>);
  if (*MEMORY[0x1E698D3F8] != v12)
  {
    Value = AGGraphGetValue();
    v40 = v22[13];
    if (v40 > 0.0)
    {
      v41 = *(Value + 8);
      if (v41 > 0.0 && vabdd_f64(v40, v41) >= 0.01)
      {
        v47 = v22 + *(v20 + 60);
        v42 = v47;
        v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

        *v42 = v43;
        v44 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

        v42[1] = v44;
        v54 = MEMORY[0x1E69E7CC0];
        v46 = lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
        type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v45 = type metadata accessor for EstimationCache();
        (*(v50 + 40))(&v47[*(v45 + 24)], v18, v16);
      }
    }
  }

  v53 = 0.0;
  v54 = 0;
  LOBYTE(v52) = a11 & 1;
  specialized LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(&v53, &v54, 1, a5, v22, v48, v49, a11 & 0xFFFFFFFF00000001, v24, v24);
  *&v26 = COERCE_DOUBLE(EstimationCache.average.getter());
  v28 = v27;
  v29 = *&v26;
  v31 = v30;
  v52 = 2;
  result = _ViewList_Node.estimatedCount(style:)(&v52);
  v33 = result - v54;
  if (__OFSUB__(result, v54))
  {
    __break(1u);
  }

  else
  {
    if (v31)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = v29;
    }

    v35 = (v28 + v34) * (v33 & ~(v33 >> 63)) + v53;
    if (v54)
    {
      v36 = 1;
    }

    else
    {
      v36 = v33 < 1;
    }

    v37 = v36;
    if ((v37 | v31))
    {
      v38 = v35;
    }

    else
    {
      v38 = v35 - v29;
    }

    v53 = v38;
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e103VyxG0E0RtzrlE12sizeThatFits12proposedSize8subviews7context5cacheSo6CGSizeVAA012ProposedViewJ0V_AA01_C15M53_SubviewsVAA01_cq1_J17AndSpacingContextVAFtFSSyXEfu2_12CoreGraphics7CGFloatVAPTf1c_n();
    return outlined destroy of _LazyLayout_Subview?(v22, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache<LazyVStackLayout>);
  }

  return result;
}

uint64_t LazyStack<>.proposeSizes(at:subviews:context:cache:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v31 = a1;
  v32 = a5;
  v30[1] = a2;
  v11 = type metadata accessor for MinorProperties();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v30 - v14;
  v16 = *(v11 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = (v30 - v19);
  (*(v13 + 16))(v15, a4, v12, v18);
  if ((*(v16 + 48))(v15, 1, v11) == 1)
  {
    return (*(v13 + 8))(v15, v12);
  }

  (*(v16 + 32))(v20, v15, v11);
  v22 = *v20;
  if (*v20 < 1)
  {
    return (*(v16 + 8))(v20, v11);
  }

  v30[0] = v7;

  v36 = MEMORY[0x1E69E7CC0];
  result = (*(a7 + 32))(a6, a7);
  v23 = v31 / v22 * v22;
  if ((v31 / v22 * v22) >> 64 == v23 >> 63)
  {
    v24 = result;
    v25 = Array.init()();
    v34 = v23;
    v35 = v25;
    v33 = 2 * v22;
    MEMORY[0x1EEE9AC00](v25);
    v30[-6] = a6;
    v30[-5] = a7;
    v30[-4] = &v35;
    v30[-3] = v20;
    LOBYTE(v30[-2]) = v24 & 1;
    v30[-1] = &v36;
    _LazyLayout_Subviews.apply(from:style:to:)(&v34, &v33, partial apply for closure #1 in LazyStack<>.proposeSizes(at:subviews:context:cache:in:), &v30[-8]);
    v26 = v35;
    v33 = v35;
    type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [_LazyLayout_Subview], &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](&lazy protocol witness table cache variable for type [_LazyLayout_Subview] and conformance [A], &lazy cache variable for type metadata for [_LazyLayout_Subview], &type metadata for _LazyLayout_Subview);
    v27 = Collection.isEmpty.getter();
    if ((v27 & 1) == 0)
    {
      v28 = MEMORY[0x1EEE9AC00](v27);
      v30[-2] = &v36;
      (*(a7 + 88))(v26, 0, 1, v20 + v29, partial apply for closure #2 in LazyStack<>.proposeSizes(at:subviews:context:cache:in:), v28);
    }

    *v32 = v36;
    return (*(v16 + 8))(v20, v11);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for LazyLayout.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:) in conformance LazyHStackLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  *&v10 = &unk_1F0070998;
  *(&v10 + 1) = partial apply for specialized implicit closure #2 in implicit closure #1 in LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:);
  return protocol witness for LazyLayout.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:) in conformance LazyHStackLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, v10, closure #1 in LazyStack<>.placementOfNearbySubview(_:subviews:context:cache:)partial apply, specialized LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:));
}

uint64_t protocol witness for LazyLayout.finalPlacement(oldIndex:oldPlacedSubviews:newPlacedSubviews:wasRemovedFromSubviews:context:subviews:cache:) in conformance LazyHStackLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  *&v10 = &unk_1F0070970;
  *(&v10 + 1) = partial apply for specialized implicit closure #2 in implicit closure #1 in LazyStack<>.finalPlacement(oldIndex:oldPlacedSubviews:newPlacedSubviews:wasRemovedFromSubviews:context:subviews:cache:);
  return protocol witness for LazyLayout.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:) in conformance LazyHStackLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, v10, closure #1 in LazyStack<>.placementOfNearbySubview(_:subviews:context:cache:)partial apply, specialized LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:));
}

unint64_t specialized LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, double (*a13)(uint64_t, double, double, double, double, double, double, double, double), uint64_t a14)
{
  v15 = result;
  if (a4)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a2 + 16) > result)
    {
      v17 = a2 + 80 * result;
      v18 = *(v17 + 56);
      *a9 = *(v17 + 40);
      *(a9 + 16) = v18;
      v19 = *(v17 + 88);
      *(a9 + 32) = *(v17 + 72);
      *(a9 + 48) = v19;
      return result;
    }

    __break(1u);
    goto LABEL_84;
  }

  v20 = a8;
  v91 = a6;
  v92 = a7;
  v93 = a11;
  v94 = a10;
  v22 = *(a5 + 280);
  v23 = *(a5 + 288);
  v24 = *(a5 + 296);
  v25 = *(a5 + 104);
  v26 = *(a5 + 136);
  v108 = *(a5 + 120);
  v109 = v26;
  v110 = *(a5 + 152);
  v27 = *(a5 + 72);
  v105 = *(a5 + 56);
  v106 = v27;
  v90 = a5;
  v107[0] = *(a5 + 88);
  v107[1] = v25;
  if (v24)
  {
    ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v23, v22));
    v20 = a8;
  }

  v29 = v109;
  v30 = v110;
  LOBYTE(v105) = v93 & 1;
  v31 = swift_allocObject();
  v32 = v94;
  *(v31 + 16) = v20;
  *(v31 + 24) = v32;
  *(v31 + 32) = v105;
  *(v31 + 36) = HIDWORD(a11);
  *&result = COERCE_DOUBLE(Array<A>.motionVectors(closestTo:in:avoiding:distance:)(v15, a3, a13, a2, v111, v29.x, v29.y, v30.width, v30.height));
  if (v112)
  {
    *&result = COERCE_DOUBLE();
    if ((v15 & 0x8000000000000000) != 0)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if (*(a2 + 16) <= v15)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v89 = v20;
    v33 = a2 + 80 * v15;
    v34 = *(v33 + 80);
    v107[0] = *(v33 + 64);
    v107[1] = v34;
    v108 = *(v33 + 96);
    v35 = *(v33 + 48);
    v105 = *(v33 + 32);
    v106 = v35;
    v36 = *(v92 + 96);
    type metadata accessor for _LazyStack_Cache<LazyVStackLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout);
    v38 = *(v92 + *(v37 + 60));
    if (*(v38 + 16))
    {
      outlined init with copy of _LazyLayout_PlacedSubview(&v105, v103);
      *&result = COERCE_DOUBLE(EstimationCache.average.getter());
      v40 = *&result;
      if (v41)
      {
        v40 = 0.0;
      }

      v42 = v39 + v40;
      if (*(v92 + 24))
      {
        goto LABEL_57;
      }
    }

    else
    {
      *&result = COERCE_DOUBLE(outlined init with copy of _LazyLayout_PlacedSubview(&v105, v103));
      v42 = 32.0;
      if (*(v92 + 24))
      {
LABEL_57:
        v66 = *(v33 + 40);
        v67 = *(v33 + 48);
        v102[0] = *(v33 + 49);
        *(v102 + 7) = *(v33 + 56);
        v68 = *(v33 + 64);
        v101[0] = *(v33 + 65);
        *(v101 + 3) = *(v33 + 68);
        v70 = *(v33 + 72);
        v69 = *(v33 + 80);
        v71 = *(v33 + 88);
        v93 = *(v33 + 96);
        v94 = v69;
        v113.origin = v29;
        v113.size = v30;
        v72 = 0.0;
        v73 = 0.0;
        if (!CGRectIsNull(v113))
        {
          v74 = v29.x + v30.width >= v29.x ? v29.x : v29.x + v30.width;
          v73 = v29.x > v29.x + v30.width ? v29.x : v29.x + v30.width;
          if (v74 > v73)
          {
            v73 = 0.0;
          }
        }

        v114.origin = v29;
        v114.size = v30;
        IsNull = CGRectIsNull(v114);
        *&result = COERCE_DOUBLE(outlined destroy of _LazyLayout_PlacedSubview(&v105));
        if (!IsNull)
        {
          v76 = v29.x + v30.width;
          if (v29.x + v30.width >= v29.x)
          {
            x = v29.x;
          }

          else
          {
            x = v29.x + v30.width;
          }

          if (v29.x > v76)
          {
            v76 = v29.x;
          }

          if (x > v76)
          {
            v72 = 0.0;
          }

          else
          {
            v72 = v76 - x;
          }
        }

        v78 = v66;
        if (v67)
        {
          v78 = 10.0;
        }

        v79 = v73 + v72 + v70 * v78;
        *a9 = v66;
        v80 = v71 + v78;
        *(a9 + 8) = v67;
        *(a9 + 9) = v102[0];
        if (v79 > v80)
        {
          v81 = v79;
        }

        else
        {
          v81 = v80;
        }

        *(a9 + 16) = *(v102 + 7);
        *(a9 + 24) = v68;
        *(a9 + 25) = v101[0];
        *(a9 + 28) = *(v101 + 3);
        v82 = v94;
        *(a9 + 32) = v70;
        *(a9 + 40) = v82;
        v83 = v93;
        *(a9 + 48) = v81;
        *(a9 + 56) = v83;
        return result;
      }
    }

    if (*(v38 + 16))
    {
      v56 = (*&v36 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v57 = ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (v36 >= 0.0)
      {
        v57 = 0;
        v56 = 0;
      }

      if ((*&v36 & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        v56 = 1;
      }

      if ((*&v36 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
      {
        v56 = 1;
      }

      if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
      {
        v56 = 1;
      }

      v58 = (*&v36 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v36 & 0x7FF0000000000000) == 0;
      if (!v58 && !v56 && !v57)
      {
        v59 = (*&v42 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
        v60 = ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
        if (v42 >= 0.0)
        {
          v60 = 0;
          v59 = 0;
        }

        if ((*&v42 & 0x7FFFFFFFFFFFFFFFLL) == 0)
        {
          v59 = 1;
        }

        if ((*&v42 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
        {
          v59 = 1;
        }

        if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
        {
          v59 = 1;
        }

        v61 = (*&v42 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v42 & 0x7FF0000000000000) == 0;
        if (!v61 && !v59 && !v60)
        {
          v62 = v36 / v42;
          if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          if (v62 <= -9.22337204e18)
          {
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          if (v62 >= 9.22337204e18)
          {
LABEL_90:
            __break(1u);
            goto LABEL_91;
          }

          v63 = *(v92 + 56);
          if (__OFADD__(v63, v62))
          {
LABEL_91:
            __break(1u);
            return result;
          }

          v64 = *(v105 + 152);
          v99 = *(v92 + 56);
          v100 = v63;
          v97 = 0;
          v98 = 1;
          *&v103[0].f64[0] = 2;
          v88[2] = &v100;
          v88[3] = MEMORY[0x1EEE9AC00](result);
          v88[4] = v64;
          v88[5] = &v97;
          v88[6] = v65;

          _LazyLayout_Subviews.apply(from:style:to:)(&v99, v103, a14, v88);

          if ((v98 & 1) == 0)
          {
            LOBYTE(v103[0].f64[0]) = v93 & 1;
            specialized LazyStack<>.boundingRect(at:subviews:context:cache:)(v97, v91, v90, v92, v89, v94, v93 & 0xFFFFFFFF00000001, v103);
            if ((v104 & 1) == 0)
            {
              *&result = COERCE_DOUBLE(outlined destroy of _LazyLayout_PlacedSubview(&v105));
              v84 = v106;
              v85 = *(&v106 + 1);
              v96 = v106;
              v95 = v107[0];
              v86 = v107[0];
              *a9 = *(&v105 + 1);
              *(a9 + 8) = v84;
              *(a9 + 16) = v85;
              *(a9 + 24) = v86;
              v87 = vaddq_f64(v103[0], vmulq_f64(v103[1], *(v107 + 8)));
              *(a9 + 32) = *(v107 + 8);
              *(a9 + 48) = v87;
              return result;
            }
          }
        }
      }
    }

    goto LABEL_57;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (*(a2 + 16) <= v15)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v43 = v111[2];
  v44 = v111[3];
  v45 = a2 + 80 * v15;
  LODWORD(v97) = *(v45 + 49);
  *(&v97 + 3) = *(v45 + 52);
  v103[0] = *(v45 + 65);
  *(&v103[0].f64[1] + 7) = *(v45 + 80);
  v46 = v111[0] + *(v45 + 88);
  v47 = v111[1] + *(v45 + 96);
  v48 = *(v45 + 80);
  v107[0] = *(v45 + 64);
  v107[1] = v48;
  v108 = *(v45 + 96);
  v49 = *(v45 + 48);
  v105 = *(v45 + 32);
  v106 = v49;
  _LazyLayout_PlacedSubview.size.getter();
  v51 = v50;
  v53 = v52;
  *&result = COERCE_DOUBLE();
  v54 = v43 * v51;
  if (v51 == 0.0)
  {
    v54 = 0.0;
  }

  LOBYTE(v100) = 0;
  LOBYTE(v99) = 0;
  *a9 = v54;
  *(a9 + 8) = 0;
  if (v53 == 0.0)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = v44 * v53;
  }

  *(a9 + 9) = v97;
  *(a9 + 12) = *(&v97 + 3);
  *(a9 + 16) = v55;
  *(a9 + 24) = 0;
  *(a9 + 25) = v103[0];
  *(a9 + 40) = *(&v103[0].f64[1] + 7);
  *(a9 + 48) = v46;
  *(a9 + 56) = v47;
  return result;
}

unint64_t specialized LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = result;
  if (a4)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a2 + 16) > result)
    {
      v17 = a2 + 80 * result;
      v18 = *(v17 + 56);
      *a9 = *(v17 + 40);
      *(a9 + 16) = v18;
      v19 = *(v17 + 88);
      *(a9 + 32) = *(v17 + 72);
      *(a9 + 48) = v19;
      return result;
    }

    __break(1u);
    goto LABEL_83;
  }

  v20 = a8;
  v21 = a7;
  v22 = a3;
  v91 = a6;
  v93 = a13;
  v23 = a11;
  v24 = a10;
  v92 = HIDWORD(a11);
  v25 = *(a5 + 280);
  v26 = *(a5 + 288);
  v27 = *(a5 + 296);
  v28 = *(a5 + 104);
  v29 = *(a5 + 136);
  v107 = *(a5 + 120);
  v108 = v29;
  v109 = *(a5 + 152);
  v30 = *(a5 + 72);
  v104 = *(a5 + 56);
  v105 = v30;
  v90 = a5;
  v106[0] = *(a5 + 88);
  v106[1] = v28;
  if (v27)
  {
    v89[9] = a9;
    ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v26, v25));
    v22 = a3;
    v20 = a8;
    v21 = a7;
    v24 = a10;
    v23 = a11;
  }

  v34 = v108;
  v35 = v109;
  LOBYTE(v104) = v23 & 1;
  v36 = swift_allocObject();
  *(v36 + 16) = v20;
  *(v36 + 24) = v24;
  *(v36 + 32) = v104;
  v37 = v93;
  *(v36 + 36) = v92;
  *&result = COERCE_DOUBLE(Array<A>.motionVectors(closestTo:in:avoiding:distance:)(v15, v22, v37, a2, v110, v34.x, v34.y, v35.width, v35.height));
  if (v111)
  {
    *&result = COERCE_DOUBLE();
    if ((v15 & 0x8000000000000000) != 0)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    if (*(a2 + 16) <= v15)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v92 = v23;
    v93 = v20;
    v38 = a2 + 80 * v15;
    v39 = *(v38 + 80);
    v106[0] = *(v38 + 64);
    v106[1] = v39;
    v107 = *(v38 + 96);
    v40 = *(v38 + 48);
    v104 = *(v38 + 32);
    v105 = v40;
    v41 = *(v21 + 96);
    type metadata accessor for _LazyStack_Cache<LazyVStackLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout);
    v43 = *(v21 + *(v42 + 60));
    if (*(v43 + 16))
    {
      outlined init with copy of _LazyLayout_PlacedSubview(&v104, v102);
      *&result = COERCE_DOUBLE(EstimationCache.average.getter());
      v45 = *&result;
      if (v46)
      {
        v45 = 0.0;
      }

      v47 = v44 + v45;
      if (*(v21 + 24))
      {
        goto LABEL_57;
      }
    }

    else
    {
      *&result = COERCE_DOUBLE(outlined init with copy of _LazyLayout_PlacedSubview(&v104, v102));
      v47 = 32.0;
      if (*(v21 + 24))
      {
LABEL_57:
        v101 = *(v38 + 40);
        v71 = *(v38 + 56);
        v72 = *(v38 + 64);
        v100[0] = *(v38 + 65);
        *(v100 + 7) = *(v38 + 72);
        v73 = *(v38 + 80);
        v93 = *(v38 + 88);
        v74 = *(v38 + 96);
        v112.origin = v34;
        v112.size = v35;
        v75 = 0.0;
        v76 = 0.0;
        if (!CGRectIsNull(v112))
        {
          v77 = v34.y + v35.height >= v34.y ? v34.y : v34.y + v35.height;
          v76 = v34.y > v34.y + v35.height ? v34.y : v34.y + v35.height;
          if (v77 > v76)
          {
            v76 = 0.0;
          }
        }

        v113.origin = v34;
        v113.size = v35;
        IsNull = CGRectIsNull(v113);
        *&result = COERCE_DOUBLE(outlined destroy of _LazyLayout_PlacedSubview(&v104));
        if (!IsNull)
        {
          v79 = v34.y + v35.height;
          if (v34.y + v35.height >= v34.y)
          {
            y = v34.y;
          }

          else
          {
            y = v34.y + v35.height;
          }

          if (v34.y > v79)
          {
            v79 = v34.y;
          }

          if (y > v79)
          {
            v75 = 0.0;
          }

          else
          {
            v75 = v79 - y;
          }
        }

        v81 = v71;
        if (v72)
        {
          v81 = 10.0;
        }

        v82 = v73 * v81 + v76 + v75;
        v83 = v74 + v81;
        if (v82 <= v83)
        {
          v82 = v83;
        }

        *a9 = v101;
        *(a9 + 16) = v71;
        *(a9 + 24) = v72;
        *(a9 + 25) = v100[0];
        *(a9 + 32) = *(v100 + 7);
        v84 = v93;
        *(a9 + 40) = v73;
        *(a9 + 48) = v84;
        *(a9 + 56) = v82;
        return result;
      }
    }

    if (*(v43 + 16))
    {
      v61 = (*&v41 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v62 = ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (v41 >= 0.0)
      {
        v62 = 0;
        v61 = 0;
      }

      if ((*&v41 & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        v61 = 1;
      }

      if ((*&v41 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
      {
        v61 = 1;
      }

      if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
      {
        v61 = 1;
      }

      v63 = (*&v41 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v41 & 0x7FF0000000000000) == 0;
      if (!v63 && !v61 && !v62)
      {
        v64 = (*&v47 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
        v65 = ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
        if (v47 >= 0.0)
        {
          v65 = 0;
          v64 = 0;
        }

        if ((*&v47 & 0x7FFFFFFFFFFFFFFFLL) == 0)
        {
          v64 = 1;
        }

        if ((*&v47 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
        {
          v64 = 1;
        }

        if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
        {
          v64 = 1;
        }

        v66 = (*&v47 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v47 & 0x7FF0000000000000) == 0;
        if (!v66 && !v64 && !v65)
        {
          v67 = v41 / v47;
          if ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          if (v67 <= -9.22337204e18)
          {
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          if (v67 >= 9.22337204e18)
          {
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          v68 = *(v21 + 56);
          if (__OFADD__(v68, v67))
          {
LABEL_90:
            __break(1u);
            return result;
          }

          v69 = *(v104 + 152);
          v98 = *(v21 + 56);
          v99 = v68;
          v96 = 0;
          v97 = 1;
          *&v102[0].f64[0] = 2;
          v89[2] = &v99;
          v89[3] = MEMORY[0x1EEE9AC00](result);
          v89[4] = v69;
          v89[5] = &v96;
          v89[6] = v70;

          _LazyLayout_Subviews.apply(from:style:to:)(&v98, v102, a14, v89);

          if ((v97 & 1) == 0)
          {
            LOBYTE(v102[0].f64[0]) = v92 & 1;
            specialized LazyStack<>.boundingRect(at:subviews:context:cache:)(v96, v91, v90, v21, v93, v24, v92 & 0xFFFFFFFF00000001, v102);
            if ((v103 & 1) == 0)
            {
              *&result = COERCE_DOUBLE(outlined destroy of _LazyLayout_PlacedSubview(&v104));
              v85 = v105;
              v86 = *(&v105 + 1);
              v95 = v105;
              v94 = v106[0];
              v87 = v106[0];
              *a9 = *(&v104 + 1);
              *(a9 + 8) = v85;
              *(a9 + 16) = v86;
              *(a9 + 24) = v87;
              v88 = vaddq_f64(v102[0], vmulq_f64(v102[1], *(v106 + 8)));
              *(a9 + 32) = *(v106 + 8);
              *(a9 + 48) = v88;
              return result;
            }
          }
        }
      }
    }

    goto LABEL_57;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (*(a2 + 16) <= v15)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v48 = v110[2];
  v49 = v110[3];
  v50 = a2 + 80 * v15;
  LODWORD(v96) = *(v50 + 49);
  *(&v96 + 3) = *(v50 + 52);
  v102[0] = *(v50 + 65);
  *(&v102[0].f64[1] + 7) = *(v50 + 80);
  v51 = v110[0] + *(v50 + 88);
  v52 = v110[1] + *(v50 + 96);
  v53 = *(v50 + 80);
  v106[0] = *(v50 + 64);
  v106[1] = v53;
  v107 = *(v50 + 96);
  v54 = *(v50 + 48);
  v104 = *(v50 + 32);
  v105 = v54;
  _LazyLayout_PlacedSubview.size.getter();
  v56 = v55;
  v58 = v57;
  *&result = COERCE_DOUBLE();
  v59 = v48 * v56;
  if (v56 == 0.0)
  {
    v59 = 0.0;
  }

  LOBYTE(v99) = 0;
  LOBYTE(v98) = 0;
  *a9 = v59;
  *(a9 + 8) = 0;
  if (v58 == 0.0)
  {
    v60 = 0.0;
  }

  else
  {
    v60 = v49 * v58;
  }

  *(a9 + 9) = v96;
  *(a9 + 12) = *(&v96 + 3);
  *(a9 + 16) = v60;
  *(a9 + 24) = 0;
  *(a9 + 25) = v102[0];
  *(a9 + 40) = *(&v102[0].f64[1] + 7);
  *(a9 + 48) = v51;
  *(a9 + 56) = v52;
  return result;
}

uint64_t LazyStack<>.firstIndex<A>(of:subviews:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v22 - v15;
  v17 = *(a3 + 32);
  v18 = *(a3 + 40);
  if ((*(a6 + 32))(a4, a6, v14))
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v25 = v19;
  v20 = (*(a6 + 72))(v16, &v25, a4, a6);
  (*(v13 + 8))(v16, AssociatedTypeWitness);
  result = 0;
  if (v20 >= 1 && v25 > 0.0)
  {
    v24 = 2 * v20;
    return _LazyLayout_Subviews.firstIndex<A>(id:style:)(a1, &v24, a5, v23);
  }

  return result;
}

double LazyStack.headerAnchor.getter()
{
  return 0.5;
}

{
  return 0.5;
}

uint64_t implicit closure #2 in LazyStack<>.sizeThatFits(proposedSize:subviews:context:cache:)()
{
  _StringGuts.grow(_:)(24);

  strcpy(v2, "sizeThatFits(");
  v0 = Double.description.getter();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](0x72657A203E2D2029, 0xE90000000000006FLL);
  return v2[0];
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e76VyxG0E0RtzrlE12boundingRect2at8subviews7context5cacheSo6CGRectVSgSi_AA01_C15M50_SubviewsVAA01_cM17_PlacementContextVAFtFSSyXEfu0_SiSo0Z0VTf1c_n(uint64_t a1, double a2, double a3, double a4, double a5)
{
  type metadata accessor for Logger?();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v11, static Log.lazyStack);
  outlined init with copy of EstimationCache(v18, v13, type metadata accessor for Logger?);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return outlined destroy of EstimationCache(v13, type metadata accessor for Logger?);
  }

  (*(v15 + 32))(v17, v13, v14);
  v28 = 0.0;
  v29 = -2.68156159e154;
  _StringGuts.grow(_:)(25);
  v32 = v28;
  v33 = v29;
  MEMORY[0x193ABEDD0](0xD000000000000011, 0x800000018DD7AD70);
  v28 = *&a1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v20);

  MEMORY[0x193ABEDD0](544434464, 0xE400000000000000);
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  type metadata accessor for CGRect(0);
  _print_unlocked<A, B>(_:_:)();
  v22 = *&v32;
  v21 = *&v33;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *&v26 = COERCE_DOUBLE(swift_slowAlloc());
    v28 = *&v26;
    *v25 = 136315394;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, &v28);
    *(v25 + 12) = 2080;
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v28);

    *(v25 + 14) = v27;
    _os_log_impl(&dword_18D018000, v23, v24, "%s: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v26, -1, -1);
    MEMORY[0x193AC4820](v25, -1, -1);
  }

  else
  {
  }

  return (*(v15 + 8))(v17, v14);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e26VyxG0E0RtzrlE6placer33_973ghijk57LL8subviews7context5cacheAA0D9PlacementAJLLVyxGSgAA01_C15M43_SubviewsV_AA01_cp1_O7ContextVAFztFSSyXEfu_SNy12CoreGraphics7CGFloatVGTf1c_n(double a1, double a2)
{
  type metadata accessor for Logger?();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, static Log.lazyStack);
  outlined init with copy of EstimationCache(v12, v7, type metadata accessor for Logger?);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of EstimationCache(v7, type metadata accessor for Logger?);
  }

  (*(v9 + 32))(v11, v7, v8);
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v25 = 0xD00000000000001BLL;
  v26 = 0x800000018DD7ADB0;
  v23 = a2;
  v24 = a1;
  v21 = 0;
  v22 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v21, v22);

  v15 = v25;
  v14 = v26;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, &v25);
    *(v18 + 12) = 2080;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v25);

    *(v18 + 14) = v20;
    _os_log_impl(&dword_18D018000, v16, v17, "%s: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v19, -1, -1);
    MEMORY[0x193AC4820](v18, -1, -1);
  }

  else
  {
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e26VyxG0E0RtzrlE6placer33_973ghijk57LL8subviews7context5cacheAA0D9PlacementAJLLVyxGSgAA01_C15M44_SubviewsV_AA01_cp1_O7ContextVAFztFSSyXEfu0_SNy12CoreGraphics7CGFloatVGTf1c_n(double a1, double a2)
{
  type metadata accessor for Logger?();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, static Log.lazyStack);
  outlined init with copy of EstimationCache(v12, v7, type metadata accessor for Logger?);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of EstimationCache(v7, type metadata accessor for Logger?);
  }

  (*(v9 + 32))(v11, v7, v8);
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  v25 = 0x28646563616C70;
  v26 = 0xE700000000000000;
  v23 = a2;
  v24 = a1;
  v21 = 0;
  v22 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v21, v22);

  MEMORY[0x193ABEDD0](0x5D5B203E2D2029, 0xE700000000000000);
  v15 = v25;
  v14 = v26;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, &v25);
    *(v18 + 12) = 2080;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v25);

    *(v18 + 14) = v20;
    _os_log_impl(&dword_18D018000, v16, v17, "%s: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v19, -1, -1);
    MEMORY[0x193AC4820](v18, -1, -1);
  }

  else
  {
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e45VyxG0E0RtzrlE24resolvedPlacerProperties33_973ghijk73LL8subviews7context5cacheAA0D9PlacementAJLLVyxG_AA0qH0AJLLVyxGtSgAA01_C15m49_SubviewsV_AA01_cr1_Q7ContextVAFztFSSyXEfu0_AA0c6L7R0V_Tg5AEyALGTf1c_n(uint64_t a1)
{
  type metadata accessor for _LazyStack_Cache<LazyVStackLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - v4;
  type metadata accessor for Logger?();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v7, static Log.lazyStack);
  outlined init with copy of EstimationCache(v14, v9, type metadata accessor for Logger?);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return outlined destroy of EstimationCache(v9, type metadata accessor for Logger?);
  }

  (*(v11 + 32))(v13, v9, v10);
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v24 = 0xD000000000000016;
  v25 = 0x800000018DD7AD90;
  outlined init with copy of _LazyLayout_Subview?(a1, v5, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache<LazyVStackLayout>);
  if (*(*&v5[*(v3 + 60)] + 16))
  {
    EstimationCache.average.getter();
  }

  outlined destroy of _LazyLayout_Subview?(v5, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache<LazyVStackLayout>);
  v16 = Double.description.getter();
  MEMORY[0x193ABEDD0](v16);

  v18 = v24;
  v17 = v25;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, &v24);
    *(v21 + 12) = 2080;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v24);

    *(v21 + 14) = v23;
    _os_log_impl(&dword_18D018000, v19, v20, "%s: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v22, -1, -1);
    MEMORY[0x193AC4820](v21, -1, -1);
  }

  else
  {
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e103VyxG0E0RtzrlE12sizeThatFits12proposedSize8subviews7context5cacheSo6CGSizeVAA012ProposedViewJ0V_AA01_C15M53_SubviewsVAA01_cq1_J17AndSpacingContextVAFtFSSyXEfu0_12CoreGraphics7CGFloatVTf1c_n()
{
  type metadata accessor for Logger?();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v1, static Log.lazyStack);
  outlined init with copy of EstimationCache(v8, v3, type metadata accessor for Logger?);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return outlined destroy of EstimationCache(v3, type metadata accessor for Logger?);
  }

  (*(v5 + 32))(v7, v3, v4);
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  strcpy(v18, "sizeThatFits(");
  HIWORD(v18[1]) = -4864;
  v10 = Double.description.getter();
  MEMORY[0x193ABEDD0](v10);

  MEMORY[0x193ABEDD0](0x72657A203E2D2029, 0xE90000000000006FLL);
  v12 = v18[0];
  v11 = v18[1];
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, v18);
    *(v15 + 12) = 2080;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v18);

    *(v15 + 14) = v17;
    _os_log_impl(&dword_18D018000, v13, v14, "%s: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v16, -1, -1);
    MEMORY[0x193AC4820](v15, -1, -1);
  }

  else
  {
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e103VyxG0E0RtzrlE12sizeThatFits12proposedSize8subviews7context5cacheSo6CGSizeVAA012ProposedViewJ0V_AA01_C15M53_SubviewsVAA01_cq1_J17AndSpacingContextVAFtFSSyXEfu2_12CoreGraphics7CGFloatVAPTf1c_n()
{
  type metadata accessor for Logger?();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v1, static Log.lazyStack);
  outlined init with copy of EstimationCache(v8, v3, type metadata accessor for Logger?);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return outlined destroy of EstimationCache(v3, type metadata accessor for Logger?);
  }

  (*(v5 + 32))(v7, v3, v4);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  strcpy(v19, "sizeThatFits(");
  HIWORD(v19[1]) = -4864;
  v10 = Double.description.getter();
  MEMORY[0x193ABEDD0](v10);

  MEMORY[0x193ABEDD0](0x203E2D2029, 0xE500000000000000);
  v11 = Double.description.getter();
  MEMORY[0x193ABEDD0](v11);

  v13 = v19[0];
  v12 = v19[1];
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, v19);
    *(v16 + 12) = 2080;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, v19);

    *(v16 + 14) = v18;
    _os_log_impl(&dword_18D018000, v14, v15, "%s: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v17, -1, -1);
    MEMORY[0x193AC4820](v16, -1, -1);
  }

  else
  {
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu1_12CoreGraphics7CGFloatVTf1c_n()
{
  type metadata accessor for Logger?();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v1, static Log.lazyStack);
  outlined init with copy of EstimationCache(v8, v3, type metadata accessor for Logger?);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return outlined destroy of EstimationCache(v3, type metadata accessor for Logger?);
  }

  (*(v5 + 32))(v7, v3, v4);
  strcpy(v18, "translate by ");
  HIWORD(v18[1]) = -4864;
  v10 = Double.description.getter();
  MEMORY[0x193ABEDD0](v10);

  v12 = v18[0];
  v11 = v18[1];
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, v18);
    *(v15 + 12) = 2080;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v18);

    *(v15 + 14) = v17;
    _os_log_impl(&dword_18D018000, v13, v14, "%s: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v16, -1, -1);
    MEMORY[0x193AC4820](v15, -1, -1);
  }

  else
  {
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzx34_cK11_PlacementsVztFSSyXEfu6_AA0c6L7K0V_Tg5SNy12CoreGraphics7CGFloatVGAEyALGAA01_cM11_PlacementsVTf1c_n(double *a1, uint64_t a2, double a3, double a4)
{
  type metadata accessor for Logger?();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v9, static Log.lazyStack);
  outlined init with copy of EstimationCache(v16, v11, type metadata accessor for Logger?);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of EstimationCache(v11, type metadata accessor for Logger?);
  }

  (*(v13 + 32))(v15, v11, v12);
  v30 = a2;
  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v35 = 0x28646563616C70;
  v36 = 0xE700000000000000;
  v33 = a4;
  v34 = a3;
  v31 = 0;
  v32 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v31, v32);

  MEMORY[0x193ABEDD0](0x203E2D2029, 0xE500000000000000);
  v18 = a1[6];
  v33 = a1[7];
  v34 = v18;
  v31 = 0;
  v32 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v31, v32);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v19 = a1[8];
  v33 = a1[9];
  v34 = v19;
  v31 = 0;
  v32 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v31, v32);

  MEMORY[0x193ABEDD0](0x696C61766E69202CLL, 0xEB00000000203A64);
  if (*(v30 + 40))
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*(v30 + 40))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x193ABEDD0](v20, v21);

  v23 = v35;
  v22 = v36;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35 = v27;
    *v26 = 136315394;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, &v35);
    *(v26 + 12) = 2080;
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v35);

    *(v26 + 14) = v28;
    _os_log_impl(&dword_18D018000, v24, v25, "%s: %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v27, -1, -1);
    MEMORY[0x193AC4820](v26, -1, -1);
  }

  else
  {
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu2_12CoreGraphics7CGFloatVAA01_cM17_PlacementContextVAA4AxisOTf1c_nTm(uint64_t a1, uint64_t a2, unint64_t a3)
{
  type metadata accessor for Logger?();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, static Log.lazyStack);
  outlined init with copy of EstimationCache(v12, v7, type metadata accessor for Logger?);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of EstimationCache(v7, type metadata accessor for Logger?);
  }

  (*(v9 + 32))(v11, v7, v8);
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v23 = 0x2064696C61766E69;
  v24 = a3;
  v14 = Double.description.getter();
  MEMORY[0x193ABEDD0](v14);

  MEMORY[0x193ABEDD0](544437792, 0xE400000000000000);
  v15 = Double.description.getter();
  MEMORY[0x193ABEDD0](v15);

  v17 = v23;
  v16 = v24;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v20 = 136315394;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, &v23);
    *(v20 + 12) = 2080;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v23);

    *(v20 + 14) = v22;
    _os_log_impl(&dword_18D018000, v18, v19, "%s: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v21, -1, -1);
    MEMORY[0x193AC4820](v20, -1, -1);
  }

  else
  {
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu5_12CoreGraphics7CGFloatVAPTf1c_n()
{
  type metadata accessor for Logger?();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v1, static Log.lazyStack);
  outlined init with copy of EstimationCache(v8, v3, type metadata accessor for Logger?);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return outlined destroy of EstimationCache(v3, type metadata accessor for Logger?);
  }

  (*(v5 + 32))(v7, v3, v4);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  strcpy(v19, "invalid #3; ");
  BYTE5(v19[1]) = 0;
  HIWORD(v19[1]) = -5120;
  v10 = Double.description.getter();
  MEMORY[0x193ABEDD0](v10);

  MEMORY[0x193ABEDD0](544437792, 0xE400000000000000);
  v11 = Double.description.getter();
  MEMORY[0x193ABEDD0](v11);

  v13 = v19[0];
  v12 = v19[1];
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, v19);
    *(v16 + 12) = 2080;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, v19);

    *(v16 + 14) = v18;
    _os_log_impl(&dword_18D018000, v14, v15, "%s: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v17, -1, -1);
    MEMORY[0x193AC4820](v16, -1, -1);
  }

  else
  {
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e76VyxG0E0RtzrlE12boundingRect2at8subviews7context5cacheSo6CGRectVSgSi_AA01_C15M50_SubviewsVAA01_cM17_PlacementContextVAFtFSSyXEfu0_SiSo0Z0VTf1c_n(uint64_t a1, double a2, double a3, double a4, double a5)
{
  type metadata accessor for Logger?();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v11, static Log.lazyStack);
  outlined init with copy of EstimationCache(v18, v13, type metadata accessor for Logger?);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return outlined destroy of EstimationCache(v13, type metadata accessor for Logger?);
  }

  (*(v15 + 32))(v17, v13, v14);
  v28 = 0.0;
  v29 = -2.68156159e154;
  _StringGuts.grow(_:)(25);
  v32 = v28;
  v33 = v29;
  MEMORY[0x193ABEDD0](0xD000000000000011, 0x800000018DD7AD70);
  v28 = *&a1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v20);

  MEMORY[0x193ABEDD0](544434464, 0xE400000000000000);
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  type metadata accessor for CGRect(0);
  _print_unlocked<A, B>(_:_:)();
  v22 = *&v32;
  v21 = *&v33;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *&v26 = COERCE_DOUBLE(swift_slowAlloc());
    v28 = *&v26;
    *v25 = 136315394;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, &v28);
    *(v25 + 12) = 2080;
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v28);

    *(v25 + 14) = v27;
    _os_log_impl(&dword_18D018000, v23, v24, "%s: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v26, -1, -1);
    MEMORY[0x193AC4820](v25, -1, -1);
  }

  else
  {
  }

  return (*(v15 + 8))(v17, v14);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e26VyxG0E0RtzrlE6placer33_973ghijk57LL8subviews7context5cacheAA0D9PlacementAJLLVyxGSgAA01_C15M43_SubviewsV_AA01_cp1_O7ContextVAFztFSSyXEfu_SNy12CoreGraphics7CGFloatVGTf1c_n(double a1, double a2)
{
  type metadata accessor for Logger?();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, static Log.lazyStack);
  outlined init with copy of EstimationCache(v12, v7, type metadata accessor for Logger?);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of EstimationCache(v7, type metadata accessor for Logger?);
  }

  (*(v9 + 32))(v11, v7, v8);
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v25 = 0xD00000000000001BLL;
  v26 = 0x800000018DD7ADB0;
  v23 = a2;
  v24 = a1;
  v21 = 0;
  v22 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v21, v22);

  v15 = v25;
  v14 = v26;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, &v25);
    *(v18 + 12) = 2080;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v25);

    *(v18 + 14) = v20;
    _os_log_impl(&dword_18D018000, v16, v17, "%s: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v19, -1, -1);
    MEMORY[0x193AC4820](v18, -1, -1);
  }

  else
  {
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e26VyxG0E0RtzrlE6placer33_973ghijk57LL8subviews7context5cacheAA0D9PlacementAJLLVyxGSgAA01_C15M44_SubviewsV_AA01_cp1_O7ContextVAFztFSSyXEfu0_SNy12CoreGraphics7CGFloatVGTf1c_n(double a1, double a2)
{
  type metadata accessor for Logger?();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, static Log.lazyStack);
  outlined init with copy of EstimationCache(v12, v7, type metadata accessor for Logger?);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of EstimationCache(v7, type metadata accessor for Logger?);
  }

  (*(v9 + 32))(v11, v7, v8);
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  v25 = 0x28646563616C70;
  v26 = 0xE700000000000000;
  v23 = a2;
  v24 = a1;
  v21 = 0;
  v22 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v21, v22);

  MEMORY[0x193ABEDD0](0x5D5B203E2D2029, 0xE700000000000000);
  v15 = v25;
  v14 = v26;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, &v25);
    *(v18 + 12) = 2080;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v25);

    *(v18 + 14) = v20;
    _os_log_impl(&dword_18D018000, v16, v17, "%s: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v19, -1, -1);
    MEMORY[0x193AC4820](v18, -1, -1);
  }

  else
  {
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e45VyxG0E0RtzrlE24resolvedPlacerProperties33_973ghijk73LL8subviews7context5cacheAA0D9PlacementAJLLVyxG_AA0qH0AJLLVyxGtSgAA01_C15m49_SubviewsV_AA01_cr1_Q7ContextVAFztFSSyXEfu0_AA0c6L7R0V_Tg5AEyALGTf1c_n(uint64_t a1)
{
  type metadata accessor for _LazyStack_Cache<LazyVStackLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - v4;
  type metadata accessor for Logger?();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v7, static Log.lazyStack);
  outlined init with copy of EstimationCache(v14, v9, type metadata accessor for Logger?);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return outlined destroy of EstimationCache(v9, type metadata accessor for Logger?);
  }

  (*(v11 + 32))(v13, v9, v10);
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v24 = 0xD000000000000016;
  v25 = 0x800000018DD7AD90;
  outlined init with copy of _LazyLayout_Subview?(a1, v5, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache<LazyVStackLayout>);
  if (*(*&v5[*(v3 + 60)] + 16))
  {
    EstimationCache.average.getter();
  }

  outlined destroy of _LazyLayout_Subview?(v5, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache<LazyVStackLayout>);
  v16 = Double.description.getter();
  MEMORY[0x193ABEDD0](v16);

  v18 = v24;
  v17 = v25;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, &v24);
    *(v21 + 12) = 2080;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v24);

    *(v21 + 14) = v23;
    _os_log_impl(&dword_18D018000, v19, v20, "%s: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v22, -1, -1);
    MEMORY[0x193AC4820](v21, -1, -1);
  }

  else
  {
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e103VyxG0E0RtzrlE12sizeThatFits12proposedSize8subviews7context5cacheSo6CGSizeVAA012ProposedViewJ0V_AA01_C15M53_SubviewsVAA01_cq1_J17AndSpacingContextVAFtFSSyXEfu0_12CoreGraphics7CGFloatVTf1c_n()
{
  type metadata accessor for Logger?();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v1, static Log.lazyStack);
  outlined init with copy of EstimationCache(v8, v3, type metadata accessor for Logger?);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return outlined destroy of EstimationCache(v3, type metadata accessor for Logger?);
  }

  (*(v5 + 32))(v7, v3, v4);
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  strcpy(v18, "sizeThatFits(");
  HIWORD(v18[1]) = -4864;
  v10 = Double.description.getter();
  MEMORY[0x193ABEDD0](v10);

  MEMORY[0x193ABEDD0](0x72657A203E2D2029, 0xE90000000000006FLL);
  v12 = v18[0];
  v11 = v18[1];
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, v18);
    *(v15 + 12) = 2080;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v18);

    *(v15 + 14) = v17;
    _os_log_impl(&dword_18D018000, v13, v14, "%s: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v16, -1, -1);
    MEMORY[0x193AC4820](v15, -1, -1);
  }

  else
  {
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e103VyxG0E0RtzrlE12sizeThatFits12proposedSize8subviews7context5cacheSo6CGSizeVAA012ProposedViewJ0V_AA01_C15M53_SubviewsVAA01_cq1_J17AndSpacingContextVAFtFSSyXEfu2_12CoreGraphics7CGFloatVAPTf1c_n()
{
  type metadata accessor for Logger?();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v1, static Log.lazyStack);
  outlined init with copy of EstimationCache(v8, v3, type metadata accessor for Logger?);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return outlined destroy of EstimationCache(v3, type metadata accessor for Logger?);
  }

  (*(v5 + 32))(v7, v3, v4);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  strcpy(v19, "sizeThatFits(");
  HIWORD(v19[1]) = -4864;
  v10 = Double.description.getter();
  MEMORY[0x193ABEDD0](v10);

  MEMORY[0x193ABEDD0](0x203E2D2029, 0xE500000000000000);
  v11 = Double.description.getter();
  MEMORY[0x193ABEDD0](v11);

  v13 = v19[0];
  v12 = v19[1];
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, v19);
    *(v16 + 12) = 2080;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, v19);

    *(v16 + 14) = v18;
    _os_log_impl(&dword_18D018000, v14, v15, "%s: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v17, -1, -1);
    MEMORY[0x193AC4820](v16, -1, -1);
  }

  else
  {
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu1_12CoreGraphics7CGFloatVTf1c_n()
{
  type metadata accessor for Logger?();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v1, static Log.lazyStack);
  outlined init with copy of EstimationCache(v8, v3, type metadata accessor for Logger?);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return outlined destroy of EstimationCache(v3, type metadata accessor for Logger?);
  }

  (*(v5 + 32))(v7, v3, v4);
  strcpy(v18, "translate by ");
  HIWORD(v18[1]) = -4864;
  v10 = Double.description.getter();
  MEMORY[0x193ABEDD0](v10);

  v12 = v18[0];
  v11 = v18[1];
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, v18);
    *(v15 + 12) = 2080;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v18);

    *(v15 + 14) = v17;
    _os_log_impl(&dword_18D018000, v13, v14, "%s: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v16, -1, -1);
    MEMORY[0x193AC4820](v15, -1, -1);
  }

  else
  {
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzx34_cK11_PlacementsVztFSSyXEfu6_AA0c6L7K0V_Tg5SNy12CoreGraphics7CGFloatVGAEyALGAA01_cM11_PlacementsVTf1c_n(double *a1, uint64_t a2, double a3, double a4)
{
  type metadata accessor for Logger?();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v9, static Log.lazyStack);
  outlined init with copy of EstimationCache(v16, v11, type metadata accessor for Logger?);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of EstimationCache(v11, type metadata accessor for Logger?);
  }

  (*(v13 + 32))(v15, v11, v12);
  v30 = a2;
  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v35 = 0x28646563616C70;
  v36 = 0xE700000000000000;
  v33 = a4;
  v34 = a3;
  v31 = 0;
  v32 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v31, v32);

  MEMORY[0x193ABEDD0](0x203E2D2029, 0xE500000000000000);
  v18 = a1[6];
  v33 = a1[7];
  v34 = v18;
  v31 = 0;
  v32 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v31, v32);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v19 = a1[8];
  v33 = a1[9];
  v34 = v19;
  v31 = 0;
  v32 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v31, v32);

  MEMORY[0x193ABEDD0](0x696C61766E69202CLL, 0xEB00000000203A64);
  if (*(v30 + 40))
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*(v30 + 40))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x193ABEDD0](v20, v21);

  v23 = v35;
  v22 = v36;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35 = v27;
    *v26 = 136315394;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, &v35);
    *(v26 + 12) = 2080;
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v35);

    *(v26 + 14) = v28;
    _os_log_impl(&dword_18D018000, v24, v25, "%s: %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v27, -1, -1);
    MEMORY[0x193AC4820](v26, -1, -1);
  }

  else
  {
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu2_12CoreGraphics7CGFloatVAA01_cM17_PlacementContextVAA4AxisOTf1c_nTm(uint64_t a1, uint64_t a2, unint64_t a3)
{
  type metadata accessor for Logger?();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, static Log.lazyStack);
  outlined init with copy of EstimationCache(v12, v7, type metadata accessor for Logger?);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of EstimationCache(v7, type metadata accessor for Logger?);
  }

  (*(v9 + 32))(v11, v7, v8);
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v23 = 0x2064696C61766E69;
  v24 = a3;
  v14 = Double.description.getter();
  MEMORY[0x193ABEDD0](v14);

  MEMORY[0x193ABEDD0](544437792, 0xE400000000000000);
  v15 = Double.description.getter();
  MEMORY[0x193ABEDD0](v15);

  v17 = v23;
  v16 = v24;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v20 = 136315394;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, &v23);
    *(v20 + 12) = 2080;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v23);

    *(v20 + 14) = v22;
    _os_log_impl(&dword_18D018000, v18, v19, "%s: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v21, -1, -1);
    MEMORY[0x193AC4820](v20, -1, -1);
  }

  else
  {
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu5_12CoreGraphics7CGFloatVAPTf1c_n()
{
  type metadata accessor for Logger?();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v1, static Log.lazyStack);
  outlined init with copy of EstimationCache(v8, v3, type metadata accessor for Logger?);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return outlined destroy of EstimationCache(v3, type metadata accessor for Logger?);
  }

  (*(v5 + 32))(v7, v3, v4);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  strcpy(v19, "invalid #3; ");
  BYTE5(v19[1]) = 0;
  HIWORD(v19[1]) = -5120;
  v10 = Double.description.getter();
  MEMORY[0x193ABEDD0](v10);

  MEMORY[0x193ABEDD0](544437792, 0xE400000000000000);
  v11 = Double.description.getter();
  MEMORY[0x193ABEDD0](v11);

  v13 = v19[0];
  v12 = v19[1];
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, v19);
    *(v16 + 12) = 2080;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, v19);

    *(v16 + 14) = v18;
    _os_log_impl(&dword_18D018000, v14, v15, "%s: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v17, -1, -1);
    MEMORY[0x193AC4820](v16, -1, -1);
  }

  else
  {
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t implicit closure #4 in LazyStack<>.sizeThatFits(proposedSize:subviews:context:cache:)()
{
  _StringGuts.grow(_:)(22);

  strcpy(v3, "sizeThatFits(");
  v0 = Double.description.getter();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](0x203E2D2029, 0xE500000000000000);
  v1 = Double.description.getter();
  MEMORY[0x193ABEDD0](v1);

  return v3[0];
}

uint64_t implicit closure #3 in LazyStack<>.place(subviews:context:cache:in:)()
{
  strcpy(v2, "translate by ");
  v0 = Double.description.getter();
  MEMORY[0x193ABEDD0](v0);

  return v2[0];
}

uint64_t implicit closure #4 in LazyStack<>.place(subviews:context:cache:in:)()
{
  _StringGuts.grow(_:)(20);

  v0 = Double.description.getter();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](544437792, 0xE400000000000000);
  v1 = Double.description.getter();
  MEMORY[0x193ABEDD0](v1);

  return 0x2064696C61766E69;
}

uint64_t implicit closure #7 in LazyStack<>.place(subviews:context:cache:in:)()
{
  _StringGuts.grow(_:)(20);

  strcpy(v3, "invalid #3; ");
  v0 = Double.description.getter();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](544437792, 0xE400000000000000);
  v1 = Double.description.getter();
  MEMORY[0x193ABEDD0](v1);

  return v3[0];
}

uint64_t implicit closure #8 in LazyStack<>.place(subviews:context:cache:in:)(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(33);

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  MEMORY[0x193ABEDD0](0x203E2D2029, 0xE500000000000000);
  type metadata accessor for _LazyStack_Cache();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  MEMORY[0x193ABEDD0](0x696C61766E69202CLL, 0xEB00000000203A64);
  if (*(a2 + 40))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(a2 + 40))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x193ABEDD0](v2, v3);

  return 0x28646563616C70;
}

unint64_t implicit closure #1 in LazyStack<>.placer(subviews:context:cache:)()
{
  _StringGuts.grow(_:)(29);

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  return 0xD00000000000001BLL;
}

uint64_t implicit closure #2 in LazyStack<>.placer(subviews:context:cache:)()
{
  _StringGuts.grow(_:)(16);

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  MEMORY[0x193ABEDD0](0x5D5B203E2D2029, 0xE700000000000000);
  return 0x28646563616C70;
}

unint64_t implicit closure #2 in LazyStack<>.resolvedPlacerProperties(subviews:context:cache:)(uint64_t a1)
{
  v2 = type metadata accessor for _LazyStack_Cache();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  v8 = 0;
  v9 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v8 = 0xD000000000000016;
  v9 = 0x800000018DD7AD90;
  (*(v3 + 16))(v5, a1, v2);
  if (*(*&v5[*(v2 + 60)] + 16))
  {
    EstimationCache.average.getter();
  }

  (*(v3 + 8))(v5, v2);
  v6 = Double.description.getter();
  MEMORY[0x193ABEDD0](v6);

  return v8;
}

uint64_t StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5, uint64_t a6, double a7)
{
  v8 = v7;
  v44[0] = a1;
  type metadata accessor for [[_LazyLayout_Subview]]();
  v15 = v14;
  lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](&lazy protocol witness table cache variable for type [[_LazyLayout_Subview]] and conformance [A], type metadata accessor for [[_LazyLayout_Subview]]);
  result = Collection.isEmpty.getter();
  if (result)
  {
    return result;
  }

  StackPlacement.reset(index:position:stoppingCondition:skipFirst:)(a2, 0, 1, 1, a6, a7);
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  result = swift_allocObject();
  *(result + 16) = 0;
  v40 = result;
  if (a4)
  {
    v17 = *(v7 + *(a6 + 40));
    v18 = *(a6 + 56);
    v19 = *(v7 + v18);
    v20 = __OFSUB__(v19, v17);
    v21 = v19 - v17;
    if (v20)
    {
      goto LABEL_31;
    }

    *(v7 + v18) = v21;
    *(result + 16) = 1;
  }

  v39 = a3;
  v22 = lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](&lazy protocol witness table cache variable for type [[_LazyLayout_Subview]] and conformance [A], type metadata accessor for [[_LazyLayout_Subview]]);

  MEMORY[0x193ABE9C0](v44, v15, v22);
  v23 = v44[0];
  v24 = *(v44[0] + 16);
  if (!v24)
  {
LABEL_27:

    swift_beginAccess();
    *(v41 + 16) = 1;
    swift_beginAccess();
    *(v40 + 16) = 1;
    flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(v39 & 1, v8, v40, a5 & 1, v42, v41, *(a6 + 16), *(a6 + 24));
  }

  v25 = *(a6 + 72);
  swift_beginAccess();
  swift_beginAccess();
  result = swift_beginAccess();
  v26 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  while (v24 <= *(v23 + 16))
  {
    v28 = v27;
    v29 = *(v23 + 8 * v24 + 24);

    *(v8 + v25) = v29;
    if (v26 == 1)
    {
      *(v41 + 16) = 1;
      result = flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(0, v8, v40, a5 & 1, v42, v41, *(a6 + 16), *(a6 + 24));
    }

    else
    {
      if (v26)
      {
        *(v40 + 16) = 1;
        result = flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(0, v8, v40, a5 & 1, v42, v41, *(a6 + 16), *(a6 + 24));
        goto LABEL_25;
      }

      v30 = *(a6 + 76);
      v31 = *(v8 + v30);
      *(v8 + v30) = v29;
      if (v31)
      {
        v32 = v31;
      }

      else
      {
        v32 = v27;
      }

      *(v8 + v25) = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(v8 + v25);
      if (isUniquelyReferenced_nonNull_native)
      {
        v35 = *(v34 + 2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 1, v34);
        }

        result = swift_arrayDestroy();
        if (v35)
        {
          v36 = &v34[112 * v35];
          v37 = *(v34 + 2) - v35;
          result = memmove(v34 + 32, v36 + 32, 112 * v37);
          *(v34 + 2) = v37;
        }

        *(v8 + v25) = v34;
      }

      else
      {
        if (*(v34 + 3) >= 2uLL)
        {
          type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_Subview>, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6F90]);
          v27 = swift_allocObject();
          v38 = _swift_stdlib_malloc_size(v27);
          v27[2] = 0;
          v27[3] = 2 * ((v38 - 32) / 112);
        }

        *(v8 + v25) = v27;
      }
    }

    v27 = v28;
LABEL_25:
    if (*(v42 + 16) == 1)
    {
    }

    ++v26;
    if (!--v24)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t closure #1 in LazyStack<>.proposeSizes(at:subviews:context:cache:in:)(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4, char a5)
{
  if (*(a1 + 101) & 1) != 0 || (*(a1 + 102))
  {
    if (a5)
    {
      v6 = a4[1];
    }

    else
    {
      v6 = 0;
    }

    if (a5)
    {
      v7 = 0;
    }

    else
    {
      v7 = a4[1];
    }

    LOBYTE(v12) = (a5 & 1) == 0;
    _LazyLayout_Subview.proposeSize(_:)(v6, v12, v7, a5 & 1, &v12);
    type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [_LazyLayout_ProposedSubview], &type metadata for _LazyLayout_ProposedSubview, MEMORY[0x1E69E62F8]);
    result = Array.append(_:)();
    goto LABEL_10;
  }

  outlined init with copy of _LazyLayout_Subview(a1, &v12);
  type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [_LazyLayout_Subview], &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E62F8]);
  Array.append(_:)();

  v11 = MEMORY[0x193ABF270](v10, &type metadata for _LazyLayout_Subview);

  if (v11 == *a4)
  {
LABEL_10:
    *a2 = 1;
  }

  return result;
}

uint64_t closure #2 in LazyStack<>.proposeSizes(at:subviews:context:cache:in:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  LOBYTE(v6) = *(a2 + 8);
  _LazyLayout_Subview.proposeSize(_:)(v2, v6, v3, v4, &v6);
  type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [_LazyLayout_ProposedSubview], &type metadata for _LazyLayout_ProposedSubview, MEMORY[0x1E69E62F8]);
  return Array.append(_:)();
}

uint64_t closure #1 in LazyStack<>.collectBackwards(from:to:subviews:style:atEnd:)(uint64_t result, BOOL *a2, uint64_t a3, unsigned __int8 *a4, unint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v11 = a7;
  v14 = a4;
  if (*(result + 101))
  {
    v16 = 1;
  }

  else if (*(result + 102))
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(result + 96);
  v18 = *(result + 100);
  if ((*(a3 + 4) & 1) == 0)
  {
    if ((*(result + 100) & 1) == 0)
    {
      v20 = *a3 == v17;
      if (v16)
      {
LABEL_14:
        v19 = a5 >> 1;
        if (a5 >> 1 == 1)
        {
          goto LABEL_20;
        }

LABEL_15:
        if (!v19)
        {
          __break(1u);
          goto LABEL_46;
        }

        v21 = *a6;
        v22 = *a6 % v19;
        if (v22)
        {
          v23 = __OFSUB__(v19, v22);
          v24 = v19 - v22;
          if (v23)
          {
            goto LABEL_47;
          }

          v23 = __OFADD__(v21, v24);
          v25 = v21 + v24;
          if (v23)
          {
            goto LABEL_48;
          }

          *a6 = v25;
        }

LABEL_20:
        v26 = *a7 < *a6;
        *a2 = v26;
        if (v26)
        {
          goto LABEL_44;
        }

        goto LABEL_24;
      }

      if (*a3 == v17)
      {
        goto LABEL_23;
      }
    }

LABEL_12:
    v20 = 0;
    goto LABEL_14;
  }

  if ((*(result + 100) & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v16)
  {
    v19 = a5 >> 1;
    v20 = 1;
    if (a5 >> 1 == 1)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

LABEL_23:
  v20 = 1;
LABEL_24:
  v47 = v17;
  v48 = a2;
  v46 = a9;
  v27 = *a4;
  if (v27 == 3)
  {
    goto LABEL_31;
  }

  if (v27 == v16 && v20)
  {
    goto LABEL_31;
  }

  v45 = result;
  swift_beginAccess();
  result = v45;
  v9 = *(a8 + 16);
  if (!*(v9 + 16))
  {
    goto LABEL_31;
  }

  v42 = v11;
  swift_beginAccess();
  v11 = *(a9 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a9 + 16) = v11;
  v43 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v30 = v11[2];
    v29 = v11[3];
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v11);
      v31 = v30 + 1;
      v11 = v41;
    }

    v11[2] = v31;
    v11[v30 + 4] = v9;
    *(v46 + 16) = v11;
    swift_endAccess();
    swift_beginAccess();
    *(a8 + 16) = MEMORY[0x1E69E7CC0];

    v14 = v43;
    result = v45;
    v11 = v42;
LABEL_31:
    outlined init with copy of _LazyLayout_Subview(result, v49);
    swift_beginAccess();
    type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [_LazyLayout_Subview], &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E62F8]);
    v9 = a8 + 16;
    Array.append(_:)();
    result = swift_endAccess();
    if (!v16)
    {
      break;
    }

    if (!__OFADD__(*a6, a5 >> 1))
    {
      *a6 += a5 >> 1;
      goto LABEL_43;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
    *(v46 + 16) = v11;
  }

  if (__OFADD__(*a6, 1))
  {
    goto LABEL_49;
  }

  v32 = v11;
  ++*a6;
  swift_beginAccess();

  v34 = MEMORY[0x193ABF270](v33, &type metadata for _LazyLayout_Subview);

  v35 = v34 == a5 >> 1;
  v11 = v32;
  if (v35)
  {
    result = swift_beginAccess();
    v36 = *(a8 + 16);
    if (*(v36 + 16))
    {
      swift_beginAccess();
      v37 = *(v46 + 16);

      v38 = swift_isUniquelyReferenced_nonNull_native();
      *(v46 + 16) = v37;
      v44 = v14;
      if ((v38 & 1) == 0)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
        *(v46 + 16) = v37;
      }

      v40 = v37[2];
      v39 = v37[3];
      if (v40 >= v39 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v37);
      }

      v37[2] = v40 + 1;
      v37[v40 + 4] = v36;
      *(v46 + 16) = v37;
      swift_endAccess();
      swift_beginAccess();
      *(a8 + 16) = MEMORY[0x1E69E7CC0];

      v14 = v44;
      v11 = v32;
    }
  }

LABEL_43:
  *v48 = *v11 < *a6;
  v17 = v47;
LABEL_44:
  *a3 = v17;
  *(a3 + 4) = v18;
  *v14 = v16;
  return result;
}

double (*implicit closure #1 in LazyStack<>.finalPlacement(oldIndex:oldPlacedSubviews:newPlacedSubviews:wasRemovedFromSubviews:context:subviews:cache:)(uint64_t a1, uint64_t a2, uint64_t a3))(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in LazyStack<>.finalPlacement(oldIndex:oldPlacedSubviews:newPlacedSubviews:wasRemovedFromSubviews:context:subviews:cache:);
}

uint64_t implicit closure #2 in LazyStack<>.boundingRect(at:subviews:context:cache:)()
{
  _StringGuts.grow(_:)(25);
  MEMORY[0x193ABEDD0](0xD000000000000011, 0x800000018DD7AD70);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](544434464, 0xE400000000000000);
  type metadata accessor for CGRect(0);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EstimationCache(unint64_t *a1, uint64_t *a2)
{
  if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ12CoreGraphics7CGFloatV_SiTt1g5(*a1, *a2) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ12CoreGraphics7CGFloatV_SiTt1g5(a1[1], a2[1]))
  {

    JUMPOUT(0x193ABDD70);
  }

  return 0;
}

uint64_t implicit closure #3 in StackPlacement.place(subviews:from:position:stopping:style:)()
{
  _StringGuts.grow(_:)(26);

  strcpy(v3, "placing from #");
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v1 = Double.description.getter();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](544106784, 0xE400000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  return v3[0];
}

uint64_t specialized StackPlacement.log(_:)(double a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Logger?();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v9, static Log.lazyStack);
  outlined init with copy of EstimationCache(v16, v11, type metadata accessor for Logger?);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of EstimationCache(v11, type metadata accessor for Logger?);
  }

  (*(v13 + 32))(v15, v11, v12);
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  strcpy(v31, "placing from #");
  HIBYTE(v31[1]) = -18;
  v27 = a5;
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v18);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v19 = Double.description.getter();
  MEMORY[0x193ABEDD0](v19);

  MEMORY[0x193ABEDD0](544106784, 0xE400000000000000);
  v29 = a3;
  v30 = a2;
  v27 = 0;
  v28 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v27, v28);

  v21 = v31[0];
  v20 = v31[1];
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31[0] = v25;
    *v24 = 136315394;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000047, 0x800000018DD75AD0, v31);
    *(v24 + 12) = 2080;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, v31);

    *(v24 + 14) = v26;
    _os_log_impl(&dword_18D018000, v22, v23, "%s: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v25, -1, -1);
    MEMORY[0x193AC4820](v24, -1, -1);
  }

  else
  {
  }

  return (*(v13 + 8))(v15, v12);
}

{
  type metadata accessor for Logger?();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v9, static Log.lazyStack);
  outlined init with copy of EstimationCache(v16, v11, type metadata accessor for Logger?);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of EstimationCache(v11, type metadata accessor for Logger?);
  }

  (*(v13 + 32))(v15, v11, v12);
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  strcpy(v31, "placing from #");
  HIBYTE(v31[1]) = -18;
  v27 = a5;
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v18);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v19 = Double.description.getter();
  MEMORY[0x193ABEDD0](v19);

  MEMORY[0x193ABEDD0](544106784, 0xE400000000000000);
  v29 = a3;
  v30 = a2;
  v27 = 0;
  v28 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v27, v28);

  v21 = v31[0];
  v20 = v31[1];
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31[0] = v25;
    *v24 = 136315394;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000047, 0x800000018DD75980, v31);
    *(v24 + 12) = 2080;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, v31);

    *(v24 + 14) = v26;
    _os_log_impl(&dword_18D018000, v22, v23, "%s: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v25, -1, -1);
    MEMORY[0x193AC4820](v24, -1, -1);
  }

  else
  {
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t StackPlacement.placeSection(_:from:)(__int128 *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v8 = (v3 + *(a3 + 80));
  outlined destroy of _LazyLayout_Subview?(v8, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  v8[4] = 0u;
  v8[5] = 0u;
  v8[6] = 0u;
  StackPlacement.flushMinorGroup()(a3);
  result = StackPlacement.shouldStop()(a3);
  if (result)
  {
    return result;
  }

  v10 = a1[3];
  v36 = a1[2];
  v37 = v10;
  v38 = *(a1 + 8);
  v39 = 0;
  v11 = a1[1];
  v34 = *a1;
  v35 = v11;
  v12 = _LazyLayout_Section.header.getter(v33);
  MEMORY[0x1EEE9AC00](v12);
  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  v27 = v13;
  v28 = v14;
  v29 = v4;
  v30 = a2;
  v32 = 2;
  _LazyLayout_Subviews.apply(from:style:to:)(&v39, &v32, partial apply for closure #1 in StackPlacement.placeSection(_:from:), v26);
  outlined destroy of _LazyLayout_Subviews(v33);
  result = StackPlacement.shouldStop()(a3);
  if (result)
  {
    return result;
  }

  v15 = a1[3];
  v36 = a1[2];
  v37 = v15;
  v38 = *(a1 + 8);
  v16 = a1[1];
  v34 = *a1;
  v35 = v16;
  _LazyLayout_Section.content.getter(v33);
  MEMORY[0x1EEE9AC00](v17);
  v27 = v13;
  v28 = v14;
  v29 = v4;
  v32 = 2;
  _LazyLayout_Subviews.apply(from:style:to:)(a2, &v32, partial apply for closure #2 in StackPlacement.placeSection(_:from:), v26);
  result = outlined destroy of _LazyLayout_Subviews(v33);
  v18 = *a2;
  if (*a2)
  {
    v19 = *(v4 + *(a3 + 40)) & 0x7FFFFFFFFFFFFFFFLL;
    if (v19 != 1)
    {
      if (v19)
      {
        v20 = v18 % v19;
        v21 = __OFSUB__(v18, v20);
        v22 = v18 - v20;
        if (!v21)
        {
          *a2 = v22;
          goto LABEL_8;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

LABEL_8:
  StackPlacement.flushMinorGroup()(a3);
  result = StackPlacement.shouldStop()(a3);
  if ((result & 1) == 0 || *(v4 + *(a3 + 44)) < *(v4 + *(a3 + 64)) && (*(v4 + *(a3 + 48)) & 2) != 0)
  {
    v32 = 0;
    v23 = a1[3];
    v36 = a1[2];
    v37 = v23;
    v38 = *(a1 + 8);
    v24 = a1[1];
    v34 = *a1;
    v35 = v24;
    _LazyLayout_Section.footer.getter(v33);
    MEMORY[0x1EEE9AC00](v25);
    v27 = v13;
    v28 = v14;
    v29 = v4;
    v30 = a2;
    v31 = 2;
    _LazyLayout_Subviews.apply(from:style:to:)(&v32, &v31, partial apply for closure #3 in StackPlacement.placeSection(_:from:), v26);
    return outlined destroy of _LazyLayout_Subviews(v33);
  }

  return result;
}

void StackPlacement.placeHeaderOrFooter(start:subview:kind:)(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = v4;
  v8 = *a3;
  v9 = *a1;
  if (*a1)
  {
    v10 = *(v4 + *(a4 + 40));
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      *a1 = v12;
      if (v8 == 1)
      {
        v13 = *(a4 + 80);
        v14 = MEMORY[0x1E69E6720];
        outlined init with copy of _LazyLayout_Subview?(v4 + v13, &v77, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
        v15 = v77;
        outlined destroy of _LazyLayout_Subview?(&v77, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, v14, type metadata accessor for [_LazyLayout_Subview]);
        if (!v15)
        {
          outlined destroy of _LazyLayout_Subview?(v4 + v13, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
          outlined init with copy of _LazyLayout_Subview(a2, v4 + v13);
        }
      }

      return;
    }

    __break(1u);
    goto LABEL_65;
  }

  v16 = *(a4 + 60);
  if ((*(v4 + v16) & 1) == 0)
  {
    v18 = *(a4 + 36);
    v19 = *(v4 + v18);
    v20 = v4 + *(a4 + 40);
    if (v19)
    {
      v21 = *(v20 + 8);
    }

    else
    {
      v21 = 0;
    }

    if (*(v4 + v18))
    {
      v22 = 0;
    }

    else
    {
      v22 = *(v20 + 8);
    }

    v23 = *(v4 + *(a4 + 76));
    v66 = v4 + *(a4 + 40);
    v65 = *(a4 + 36);
    v69 = v23;
    v68 = v22;
    v67 = v21;
    if (v23)
    {
      if (!*(v23 + 16))
      {
LABEL_67:
        __break(1u);
        return;
      }

      outlined init with copy of _LazyLayout_Subview(v23 + 32, &v77);
    }

    else
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v77 = 0u;
    }

    v63 = *(a4 + 16);
    v64 = *(a4 + 24);
    (*(v64 + 40))();
    v24 = *(a2 + 8);
    v25 = *(LazyLayoutViewCache.item(data:)((a2 + 16)) + 44);

    v26 = *MEMORY[0x1E698D3F8];
    v74 = v24;
    v75 = v25;
    v76 = v26;
    v70 = v67;
    v71 = v19 ^ 1;
    v72 = v68;
    v73 = v19;
    v27 = LayoutProxy.lengthThatFits(_:in:)(&v70, v19);
    v29 = v28;
    MEMORY[0x1EEE9AC00](v27);
    v30 = COERCE_DOUBLE(_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply));
    v32 = v31;
    outlined destroy of _LazyLayout_Subview?(&v77, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
    if (v32)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v30;
    }

    if (v69)
    {
      v34 = *&v33;
    }

    else
    {
      v34 = 0;
    }

    StackPlacement.addMeasurements(length:spacing:)(v34, v69 == 0, a4, v29);
    v35 = *(a4 + 64);
    v36 = v33 + *(v5 + v35);
    *(v5 + v35) = v36;
    if (StackPlacement.isVisible(length:)(a4, v29))
    {
      StackPlacement.addVisibleSubview(length:spacing:)(a4, v29, v33);
    }

    else
    {
      if ((*(v5 + *(a4 + 48)) & 2) == 0 || v8 != 2)
      {
        if (v8 == 1)
        {
          v46 = *(a4 + 80);
          v47 = MEMORY[0x1E69E6720];
          outlined init with copy of _LazyLayout_Subview?(v5 + v46, &v77, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
          v48 = v77;
          outlined destroy of _LazyLayout_Subview?(&v77, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, v47, type metadata accessor for [_LazyLayout_Subview]);
          if (!v48)
          {
            outlined destroy of _LazyLayout_Subview?(v5 + v46, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
            outlined init with copy of _LazyLayout_Subview(a2, v5 + v46);
          }
        }

        goto LABEL_51;
      }

      if (*(v5 + *(a4 + 88) + 8) < *(v5 + *(a4 + 88)))
      {
LABEL_51:
        *(v5 + v35) = v29 + v36;
        goto LABEL_52;
      }
    }

    StackPlacement.flushPendingHeader()(a4);
    v36 = *(v5 + v35);
    v37 = *(v5 + v65) == 0;
    if (*(v5 + v65))
    {
      v38 = 0.0;
    }

    else
    {
      v38 = *(v5 + v35);
    }

    if (*(v5 + v65))
    {
      v39 = *(v5 + v35);
    }

    else
    {
      v39 = 0.0;
    }

    v40 = *(v66 + 8);
    if (*(v5 + v65))
    {
      v41 = *(v66 + 8);
    }

    else
    {
      v41 = v29;
    }

    *&v77 = v41;
    if (!v37)
    {
      v40 = v29;
    }

    BYTE8(v77) = 0;
    *&v78 = v40;
    BYTE8(v78) = 0;
    if (v8 == 2)
    {
      v44 = (*(v64 + 56))(v63);
    }

    else
    {
      v42 = 0.5;
      v43 = 0.5;
      if (v8 != 1)
      {
LABEL_50:
        StackPlacement.emit(_:at:size:anchor:)(v38, v39, v42, v43, a2, &v77, a4);
        goto LABEL_51;
      }

      (*(v64 + 48))(v63);
    }

    v42 = v44;
    v43 = v45;
    goto LABEL_50;
  }

  *(v4 + v16) = 0;
  if (v8 == 1)
  {
    v17 = *(a4 + 80);
    outlined destroy of _LazyLayout_Subview?(v5 + v17, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
    outlined init with copy of _LazyLayout_Subview(a2, v5 + v17);
  }

LABEL_52:
  v49 = *(v5 + *(a4 + 40));
  v50 = *(a4 + 56);
  v51 = *(v5 + v50);
  v11 = __OFADD__(v51, v49);
  v52 = v51 + v49;
  if (v11)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  *(v5 + v50) = v52;
  if (v49 < 0)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v49)
  {
    v53 = *(a4 + 72);
    v54 = *(v5 + v53);
    do
    {
      outlined init with copy of _LazyLayout_Subview(a2, &v77);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
      }

      v56 = *(v54 + 2);
      v55 = *(v54 + 3);
      if (v56 >= v55 >> 1)
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v54);
      }

      *(v54 + 2) = v56 + 1;
      v57 = &v54[112 * v56];
      v58 = v77;
      v59 = v79;
      *(v57 + 3) = v78;
      *(v57 + 4) = v59;
      *(v57 + 2) = v58;
      v60 = v80;
      v61 = v81;
      v62 = v83;
      *(v57 + 7) = v82;
      *(v57 + 8) = v62;
      *(v57 + 5) = v60;
      *(v57 + 6) = v61;
      --v49;
    }

    while (v49);
    *(v5 + v53) = v54;
  }

  swapSubviews(_:_:)((v5 + *(a4 + 76)), (v5 + *(a4 + 72)));
}